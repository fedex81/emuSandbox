package svp;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

/**
 * Federico Berti
 * <p>
 * Copyright 2020
 */
public class SvpTest {

    static String binFile = "vr.bin";

    public static void main(String[] args) throws IOException {
        Ssp16.cart svpCart = loadCart();
        Ssp16.ssp1601_t sspCtx = new Ssp16.ssp1601_t();
        Ssp16.svp_t svpCtx = new Ssp16.svp_t();
        loadSvpIram(svpCtx, svpCart, 0x800);

        Ssp16Impl ssp16 = Ssp16Impl.createInstance(sspCtx, svpCtx, svpCart);
        svpCtx.ssp1601 = sspCtx;
        ssp16.ssp1601_reset(sspCtx);
        ssp16.ssp1601_run(100);
    }

    private static void loadSvpIram(Ssp16.svp_t svpCtx, Ssp16.cart cart, int startAddr){
        int k = 0;
        for (int i = startAddr; i < 0x1FFF; i+=2) {
            svpCtx.iram_rom[k++] =  (cart.rom[i] << 8 | cart.rom[i+1]) & 0xFFFF;
        }
    }

    private static Ssp16.cart loadCart() throws IOException {
        byte[] data = Files.readAllBytes(Paths.get(binFile));
        int[] idata = new int[data.length];
        Ssp16.cart svpCart = new Ssp16.cart();
        for (int i = 0; i < data.length; i++) {
            idata[i] = data[i] & 0xFF;
        }
        svpCart.rom = idata;
        return svpCart;
    }
}
