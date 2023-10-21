import AppScreen from './AppScreen';
import Gestures from '../helpers/Gestures';

class SingupScreen extends AppScreen {
    constructor () {
        super('~Signup-screen');
    }


    private get SingupCadastreButton () {return $('//android.widget.TextView[@text="CADASTRE-SE"]');}

    private get FirstNameXPATH () {return $('/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText');}

    private get LastNameXPATH  () {return $('/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText');}


    private get EmailXPATH  () {return $('/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText');}

    private get Phone  () {return $('//android.widget.EditText[@text="( _ _ ) _ _ _ _ _ - _ _ _ _"]');}
    private get PhoneCLASS  () {return $('android.widget.EditText');}


    private get FlagXPATH() {return $('/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]');}

    private get NextButton () {return $('//android.widget.TextView[@text="Próximo"]');}




    async TapSingupCadastreButton(){

        await this.SingupCadastreButton.click();
    }


    async TapNextButton(){
        await this.NextButton.click();
    }


    async completeFirstName({ firstname }:{firstname:string; }) {
        await this.FirstNameXPATH.setValue(firstname);

    }
    async completeLastName({ lastname }:{lastname:string; }) {
        await this.LastNameXPATH.setValue(lastname);

    }

    async completeEmail({ email }:{email:string; }) {
        await this.EmailXPATH.setValue(email);

    }

    async completePhone({ phone }:{phone:string; }) {
        await this.PhoneCLASS.setValue(phone);

    }

}

export default new SingupScreen();
