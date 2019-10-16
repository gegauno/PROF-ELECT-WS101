from flask import render_template,session,redirect,url_for,request,session,jsonify
from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session,sessionmaker
import json
# MySQL Database
engine = create_engine('mysql+mysqldb://root:admin_1234@localhost:3306/db_queuing',pool_size=100, max_overflow=0)
db = scoped_session(sessionmaker(bind=engine))

class View:
    def addUA():
        uname = request.form['uname']
        passwd = request.form['passwd']
        staffid = request.form['staffid']
        utype = request.form['utype']
        query = db.execute(f"INSERT INTO tbl_login (user_info_id,uname,passwd,utype) VALUES ('{staffid}','{uname}','{passwd}','{utype}')")
        db.commit()
        return redirect("/admin_users")
    def admin_purp():
        query = db.execute("SELECT * FROM tbl_purpose").fetchall()
        return render_template('admin_purp.html',data=query)
    def admin_win():
        query = db.execute("SELECT tbl_window.win_no,tbl_window.win_name,tbl_department.dept_desc,tbl_window.date_added,tbl_window.dept_id FROM tbl_window INNER JOIN tbl_department ON tbl_department.dept_id=tbl_window.dept_id").fetchall()
        return render_template('admin_win.html',data=query)
    def admin_dept():
        query = db.execute("SELECT * FROM tbl_department").fetchall()
        return render_template('admin_dept.html',data=query)
    def windash():
        query = db.execute("SELECT * FROM view_queDetails").fetchall()
        query2 = db.execute("SELECT view_nextPrint.numb,view_nextPrint.win_no,view_nextPrint.purp_id,tbl_purpose.purpose_name,tbl_purpose.purpose_desc FROM view_nextPrint INNER JOIN tbl_purpose ON tbl_purpose.purp_id=view_nextPrint.purp_id").fetchall()
        return render_template("window_dashboard.html",data=query,data2=query2)
    def serveNext():
        data = request.get_json(silent=True)
        qnumb = data['qnumb']
        qpurp = data['qpurp']
        qwin = data['qwin']
        uid = data['quid']
        if qnumb:
            if qwin:
                check = db.execute(f"SELECT que_number,win_no FROM tbl_printed WHERE que_number={qnumb} AND win_no={qwin}").fetchall()
                if not check:
                    datas = {'status':'n/a'}
                    return f'''{json.dumps(dict(datas))}'''
                else:
                    query = db.execute(f"DELETE FROM tbl_printed WHERE win_no={qwin} AND que_number={qnumb}")
                    query2 = db.execute(f"DELETE FROM tbl_queues WHERE win_no={qwin} AND numb={qnumb}")
                    query4 = db.execute(f"INSERT INTO tbl_queues (numb,win_no) VALUES ({int(qnumb)+1},{qwin})")
                    query3 = db.execute(f"INSERT INTO queue_logs (numb,purp_id,win_no,user_info_id) VALUES ({qnumb},{qpurp},{qwin},{uid})")
                    db.commit()
                    datas = {'status':'ok'}
                    return f'''{json.dumps(dict(datas))}'''
            else:
                datas = {'status':'n/a'}
                return f'''{json.dumps(dict(datas))}'''
        else:
            datas = {'status':'n/a'}
            return f'''{json.dumps(dict(datas))}'''
    def nextPrint():
        data = request.get_json(silent=True)
        win_no = data['winNo']
        query = db.execute(f"SELECT view_nextPrint.numb, view_nextPrint.win_no,view_nextPrint.purp_id,view_purpDetails.purpose_name,view_purpDetails.purpose_desc FROM view_nextPrint INNER JOIN view_purpDetails ON view_nextPrint.purp_id=view_purpDetails.purp_id WHERE view_nextPrint.win_no={win_no} GROUP BY view_nextPrint.win_no")
        result = query.fetchone()
        if not result:
            datas = {'status':'n/a'}
            return f'''{json.dumps(dict(datas))}'''
        else:
            return f'''{json.dumps(dict(result))}'''
        # return f'''{result}'''
    def user():
        if 'user' in session:
            win_no = session['winNo']
            query = db.execute(f"SELECT * FROM tbl_printed INNER JOIN view_purpDetails ON tbl_printed.purp_id=view_purpDetails.purp_id WHERE view_purpDetails.wwin_no={win_no}").fetchall()
            return render_template('registrar_dashboard.html',data=query)
        else:
                return redirect('/')

    def que():
        query = db.execute("SELECT * FROM view_queDetails")
        query2 = db.execute("SELECT * FROM view_purpDetails")
        data2 = query2.fetchall()
        data = query.fetchall()
        return render_template("print_no.html",data=data,data2 = data2)
    def admin_staff():
        if 'admin' in session:
            query = db.execute("SELECT tbl_user_info.user_info_id,tbl_department.dept_desc,tbl_user_info.user_fname,tbl_user_info.user_mname,tbl_user_info.user_lname FROM tbl_user_info INNER JOIN tbl_department ON tbl_user_info.dept_id=tbl_department.dept_id").fetchall()
            return render_template("admin_staffaccounts.html",data=query)
        else:
                return redirect('/')
    def admin_users():
        if 'admin' in session:
            dept = db.execute("SELECT * FROM tbl_department").fetchall()
            staff = db.execute("SELECT * FROM tbl_user_info").fetchall()
            query = db.execute("SELECT tbl_login.log_id,tbl_login.uname,tbl_login.passwd,tbl_login.utype,tbl_department.dept_desc,tbl_login.date_added,tbl_login.user_info_id,tbl_user_info.user_fname,tbl_user_info.user_lname FROM tbl_login INNER JOIN tbl_user_info ON tbl_user_info.user_info_id=tbl_login.user_info_id LEFT JOIN tbl_department ON tbl_department.dept_id=tbl_user_info.dept_id")
            data = query.fetchall()
            return render_template('admin_useraccounts.html',data=data,dept=dept,staff=staff)
        else:
            return redirect("/")
    def admin():
        if 'admin' in session:
            query2 = db.execute("SELECT qMonth,qYear FROM view_queWinMonth GROUP BY qMonth ORDER BY qMonthNum ASC").fetchall()
            query = db.execute("SELECT qTotal,qMonth,qYear FROM view_queMonthly").fetchall()
            data = []
            for i in range(len(query)):
                data.append(dict(query[i]))
            return render_template('admin_dashboard.html',data=json.dumps(data),months=query2)
        else:
            return redirect("/")
    def chartData():
        data = request.get_json(silent=True)
        month = data['qMonth']
        year = data['qYear']
        query = db.execute(f"SELECT * FROM view_queWinMonth WHERE qMonth='{month}' AND qYear='{year}'").fetchall()
        data = []
        for i in range(len(query)):
            data.append(dict(query[i]))
        return f'''{json.dumps(data)}'''
    def login():
        uname = request.form['uname']
        passwd = request.form['passwd']
        query = db.execute(f"SELECT tbl_login.user_info_id,tbl_login.utype,view_userInfoDetails.win_no FROM tbl_login INNER JOIN view_userInfoDetails ON tbl_login.user_info_id=view_userInfoDetails.user_info_id WHERE uname='{uname}' AND passwd='{passwd}' ")
        result = query.fetchall()
        if not result:
            status = "Invalid Username/Password!"
            return render_template('index.html',status=status)
        else:
            if result[0][1] == 1:
                winNo = result[0][2]
                uid = result[0][0]
                session['user'] = True
                session['winNo'] = winNo
                session['uid'] = uid
                return redirect("/user",)
            else:
                session['admin'] = True
                return redirect('/admin')
    
    def print_num():
        win_no = request.form['win_no']
        purp_id = request.form['purp_id']
        numb = request.form['number']
        query = db.execute(f"SELECT * FROM view_purpDetails WHERE wwin_no={win_no} AND purp_id={purp_id}").fetchone()
        try:
            with open("/dev/usb/lp0","w") as printer:
                printer.write("--------------------------------\n")
                printer.write("\tGingoog City Colleges\n")
                printer.write(f"Window No.: {win_no}\n")
                printer.write(f"Window Name.: {query[4]}\n")
                printer.write(f"Priority No: {numb}\n")
                printer.write(f"Purpose: {query[5]}\n")
                printer.write("Brought to you by: GCC{ITExpo\}\n")
                printer.write("--------------------------------\n")
            result = db.execute(f"INSERT INTO tbl_printed (win_no,que_number,purp_id) VALUES ({int(win_no)},{int(numb)},{purp_id})")
            result2 = db.execute(f"INSERT INTO tbl_queues (win_no,numb,purp_id) VALUES ({win_no},{int(numb)+1},{purp_id})")
            db.commit()
            return redirect("/que")
        except FileNotFoundError:
            return f'''<span>Printer Not Found!</span>'''
        except PermissionError:
            return f'''<span>Run the App As: <code>sudo python3 main</code></span>'''
    def index():
        # return f'''{status}'''
        return render_template('index.html')
    def logout():
        session.clear()
        return redirect("/")
