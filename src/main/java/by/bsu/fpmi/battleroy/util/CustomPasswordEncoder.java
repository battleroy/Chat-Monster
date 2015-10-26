package by.bsu.fpmi.battleroy.util;

import org.springframework.security.authentication.encoding.MessageDigestPasswordEncoder;

public class CustomPasswordEncoder extends MessageDigestPasswordEncoder {
    public CustomPasswordEncoder(String algorithm) {
        super(algorithm);
    }
}
