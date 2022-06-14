# Brew Crew

### Course Repo

## Steps

### Userful Resources

## Packages

Email validator:  
A simple (but correct) Dart class for validating email addresses without
using RegEx. Can also be used to validate emails within Flutter apps
(see Flutter email validation).  
https://pub.dev/packages/email_validator

## Code Snippets

**Code 1**

```
TextField(
  controller: emailController,
  cursorColor: Colors.white,
  textInputAction: TextInputAction.next,
  decoration: InputDecoration(labelText: 'Email'),
),
```

```
// fireStore Security rules
allow read, write: if true; change it to
// Only if user is verified he can read and write
allow read, write: if request.auth.token.email_verified;
```
