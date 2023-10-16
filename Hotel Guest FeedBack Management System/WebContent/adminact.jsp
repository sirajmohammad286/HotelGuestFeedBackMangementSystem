

<%

                        try {

                            String username = request.getParameter("name");
                            String password = request.getParameter("pass");

                            System.out.println("the username is " + username);
                            System.out.println("the password is " + password);

                            if ((username.equals("admin") ) && (password.equals("admin"))) {

                                response.sendRedirect("adminhome.jsp?m1=success");

                            } else {

                    %>

                    User Details Given for Username : "<%=username%>" is Not Registered/Valid
                    <br>

                        <a href="admin.jsp">Please Try Again</a>

                        <%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>
