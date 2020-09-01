# funix-assignment
Funix assignment PRJ321
Đây là assignment 2 môn PRJ321 của Funix.

Detailed requirements
This project requires you to perform the following tasks to have a nice website which uses the layout and processes the user-submitted data. Let's start with each request:

1. Create a template
2. Create page1.jsp and page2.jsp. (empty content)
3. From this website: https://startbootstrap.com/template-categories/all/, select the template you like, then use it in your project.
4. Create a layout for your project, including many files, for example, header.jsp, footer.jsp, righter.jsp, etc. This layout will apply to every page you create for your website.
5. Use that layout for page1.jsp and page2.jsp. Add a few welcome contents to these pages for testing.
*Note: Your website must be a responsive designed website.

Direct or forward
Create a JSP (for example: login.jsp) where you will type in "username" and "password". (You do not need to use layout for login.jsp.)

Create a servlet (eg: ControllerServlet) to check whether the password entered by the user is correct or not. If the username and password entered by the user are correct, your servlet controller will direct the client's request to another page (eg, page1.jsp or page2.jsp), where the welcome message will be displayed. If the password entered is wrong, the request will be forwarded to the login.JSP page, and the message "Wrong username / password" will be displayed.
(set the username "system" and the password "java")

Check the validity of the form
Create a page that allows course registration. Only users logging in with the username "admin" (password: passw0rd) will be redirected to CourseForm.jsp website. The CourseForm.jsp form has the following information:
- Text field full name: cannot be empty and contains no digits.
- Text field age: must be more than 18, and less than 40.
- Country: is a combobox (contains the five following values: Vietnamese, American, English, Chinese, French), it must be selected.
- Courses: is a list view containing 5 values (C #, Java, C ++, Python, Ruby on Rail), it must be selected at least 1
- Checkboxes: the desired language in the learning process (Vietnamese, English, French)
- Submit button: send form values to the "CourseValidation" servlet. Check if all entered values are valid, then display all the information on the current page. In contrast, then forward to the form page and display error messages. If this request is too difficult, you can simply display the error messages on the current page (CourseValidation servlet).
- Cancel button: Go to the welcome page.
