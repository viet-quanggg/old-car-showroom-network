/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Controllers;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.GeneralSecurityException;
import java.util.Base64;
import java.util.Collections;
import java.util.List;
import java.util.Properties;

/**
 *
 * @author Admin
 */

public class SendEmail {
//   private static final String APPLICATION_NAME = "My Application";
//    private static final String USER_ID = "me";
//    private static final List<String> SCOPES = Collections.singletonList(GmailScopes.GMAIL_SEND);
//    private static final JsonFactory JSON_FACTORY = JacksonFactory.getDefaultInstance();
//    private static final HttpTransport HTTP_TRANSPORT = new NetHttpTransport();
//
//    private Credential getCredential() throws IOException, GeneralSecurityException {
//        InputStream inputStream = getClass().getResourceAsStream("/credentials.json");
//        GoogleClientSecrets clientSecrets = GoogleClientSecrets.load(JSON_FACTORY, new InputStreamReader(inputStream));
//
//        GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(
//                HTTP_TRANSPORT, JSON_FACTORY, clientSecrets, SCOPES)
//                .setDataStoreFactory(new FileDataStoreFactory(new java.io.File("tokens")))
//                .build();
//        LocalServerReceiver receiver = new LocalServerReceiver.Builder().setPort(8888).build();
//        Credential credential = new AuthorizationCodeInstalledApp(flow, receiver).authorize("user");
//
//        return credential;
//    }
//
//    public void send(String recipient, String subject, String body) throws IOException, GeneralSecurityException {
//        Gmail service = new Gmail.Builder(HTTP_TRANSPORT, JSON_FACTORY, getCredential())
//                .setApplicationName(APPLICATION_NAME)
//                .build();
//
//        MimeMessage emailMessage = createEmail(recipient, subject, body);
//        Message message = createMessageWithEmail(emailMessage);
//        service.users().messages().send(USER_ID, message).execute();
//    }
//
//    private MimeMessage createEmail(String recipient, String subject, String body) throws MessagingException {
//        Properties props = new Properties();
//        Session session = Session.getDefaultInstance(props, null);
//
//        MimeMessage email = new MimeMessage(session);
//        email.setFrom(new InternetAddress("me@example.com"));
//        email.addRecipient(javax.mail.Message.RecipientType.TO, new InternetAddress(recipient));
//        email.setSubject(subject);
//        email.setText(body);
//        return email;
//    }
//
//    private Message createMessageWithEmail(MimeMessage emailMessage) throws IOException, MessagingException {
//        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
//        emailMessage.writeTo(buffer);
//        byte[] bytes = buffer.toByteArray();
//        String encodedEmail = Base64.getUrlEncoder().encodeToString(bytes);
//        Message message = new Message();
//        message.setRaw(encodedEmail);
//        return message;
//    }
}
