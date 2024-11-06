import 'package:country_picker/country_picker.dart';
import 'package:pakashiyana/exports.dart';

class SignUpController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  var countryData = CountryParser.parseCountryCode('PK').obs;

  bool _isObscure = true;

  bool get isObscure => _isObscure;
  set isObscure(bool value) {
    _isObscure = value;
    update();
  }

  void toggleVisibility() {
    isObscure = !isObscure;
  }

  void navigateToLogin() {
    Get.toNamed(Routes.loginView);
  }

  Future<void> selectCountry(BuildContext context) async {
    showCountryPicker(
        context: context,
        countryListTheme: CountryListThemeData(
          flagSize: 25,
          backgroundColor: Colors.white,
          textStyle: getRegularStyle(
            color: kcTextGrey,
            fontSize: 12,
          ),
          bottomSheetHeight: 500, // Optional. Country list modal height
          //Optional. Sets the border radius for the bottomsheet.
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          //Optional. Styles the search field.
          inputDecoration: InputDecoration(
            labelText: 'Search Country',
            labelStyle: getRegularStyle(color: kcTextGrey, fontSize: 12),
            fillColor: kcLightGrey,
            filled: true,
            hintText: 'Search Country',
            hintStyle: getRegularStyle(color: kcTextGrey, fontSize: 12),
            prefixIcon: const Icon(
              Icons.search,
              color: kcTextGrey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: const BorderSide(color: kcBorderColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: const BorderSide(color: kcBorderColor, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: const BorderSide(color: kcBorderColor, width: 1),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: const BorderSide(
                color: kcRedColor,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: const BorderSide(
                color: kcRedColor,
              ),
            ),
            contentPadding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 13,
              bottom: 13,
            ),
          ),
        ),
        onSelect: (Country country) {
          countryData.value = country;
        });
  }
}
