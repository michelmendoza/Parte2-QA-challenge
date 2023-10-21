import SingupScreen from '../screenobjects/SingupScreen';

describe('Testes de caminho criticos da feature Signup,', () => {

    beforeEach(async () => {

    });

    it('should be able Signup unsuccessfully', async () => {

        await driver.setImplicitTimeout(10000);

        await SingupScreen.TapSingupCadastreButton();
        await SingupScreen.completeFirstName ({ firstname: 'Jorge'});
        await SingupScreen.TapNextButton();
        await SingupScreen.completeLastName ({ lastname: 'Estevaldo'});
        await SingupScreen.TapNextButton();
        await SingupScreen.completeEmail ({ email: 'Jorge.Estevaldo@gmail.com'});
        await SingupScreen.TapNextButton();
        await SingupScreen.completePhone({ phone: '(48)99898-5566'});
        await SingupScreen.TapNextButton();

    });


});
