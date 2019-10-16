from flask import Flask
from view import View
import netifaces as ni

app = Flask(__name__)

# Network Interface
ip = ni.ifaddresses('eth0')[ni.AF_INET][0]['addr']
# Views
app.add_url_rule('/login','login',View.login,methods=['POST'])
app.add_url_rule('/','index',View.index) # Main Page
app.add_url_rule('/admin','admin',View.admin)
app.add_url_rule('/admin_users','admin_users',View.admin_users)
app.add_url_rule('/admin_staff','admin_staff',View.admin_staff)
app.add_url_rule('/logout','logout',View.logout)
app.add_url_rule('/que','que',View.que) 
app.add_url_rule('/print_num','print_num',View.print_num,methods=['POST'])
app.add_url_rule('/serveNext','serveNext',View.serveNext,methods=['POST'])
app.add_url_rule('/user','user',View.user)
app.add_url_rule('/admin_win','admin_win',View.admin_win)
app.add_url_rule('/admin_purp','admin_purp',View.admin_purp)
app.add_url_rule('/admin_dept','admin_dept',View.admin_dept)
app.add_url_rule('/windash','windash',View.windash)
app.add_url_rule('/nextPrint','nextPrint',View.nextPrint,methods=['POST'])
app.add_url_rule('/addUA','addUA',View.addUA,methods=['POST'])
app.add_url_rule('/chartData','chartData',View.chartData,methods=['POST'])
app.add_url_rule('/addSA','addSA',View.addSA,methods=['POST'])
app.config['SECRET_KEY'] = 'fs0ci3ty'
if __name__ == "__main__":
    # Flask
    FLASK_APP="main"
    Flask.run(app,debug=True,host=ip,port=5000)
    