How to open/run;

1. Open project in Visual Studio 2022
2. Login on the Login endpoint with existing user and password (user:string, password:string) or Register new User on the Register endpoint then continue login.
3. Copy token in the login response if login succeeded.
4. Click "Authorize" button on the top right of the page, go to "Values" input then type "bearer" and paste the token. 
Example: "bearer eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTUxMiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoic3RyaW5nIiwiZXhwIjoxNjk0OTU5MDU0fQ.ju3m09Qy9J2dPLfo4PaZFD3VBL5Ohc8PWOOr0QqAuF1qASPfkqlOXVK14oIZtro_f1ZJbVj0Mw8y9M9n2V-tKA"
5. Finally the endpoints are ready to use.