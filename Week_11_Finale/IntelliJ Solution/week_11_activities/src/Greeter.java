import javax.swing.*;
import java.awt.event.*;

public class Greeter {
    public static void main(String args[]) {
        // create an instance of JFrame - a swing window
        JFrame f = new JFrame("Greeter");
        f.setSize(300, 200);
        f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        // add an instance of MyPanel
        f.add(new GreeterPanel());

        f.setVisible(true);
    }
}

/*
 * Multiple classes can be in a single .java file - as long as only one is public.
 * That public class must be the same as the file name (e.g. public class Greeter mimics
 * the name of the file - Greeter.java)
 */
class GreeterPanel extends JPanel implements ActionListener {
    JLabel outLabel;
    JTextField inField;
    JLabel inFieldLabel;
    JButton greetButton;
    JButton byeButton;

    GreeterPanel() {
        outLabel = new JLabel("");
        inFieldLabel = new JLabel("Name:");
        inField = new JTextField(20);

        greetButton = new JButton("Greet!");
        greetButton.addActionListener(this);
        byeButton = new JButton("Bye!");
        byeButton.addActionListener(this);

        add(inFieldLabel);
        add(inField);
        add(greetButton);
        add(byeButton);
        add(outLabel);
    }

    boolean IsAlphabetical(String name) {
        boolean allAlphabet = true;
        for (int i = 0; i < name.length(); i++) {
            char c = name.charAt(i);
            if (!((c == ' ') || (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'))) {
                allAlphabet = false;
                break; // quit the loop early - we've seen enough
            }
        }
        return allAlphabet;
    }

    public void actionPerformed(ActionEvent event) {
        if (event.getSource() == greetButton) {
            String name = inField.getText();
            if (IsAlphabetical(name)) {
                outLabel.setText("Hello, " + name);
            } else {
                outLabel.setText("Hello, " + name + ", that's an interesting name");
            }
        } else if (event.getSource() == byeButton) {
            String name = inField.getText();

            outLabel.setText("Bye, " + name);
        }
    }
}


