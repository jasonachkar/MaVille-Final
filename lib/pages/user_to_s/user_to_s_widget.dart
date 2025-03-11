import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_to_s_model.dart';
export 'user_to_s_model.dart';

class UserToSWidget extends StatefulWidget {
  const UserToSWidget({super.key});

  @override
  State<UserToSWidget> createState() => _UserToSWidgetState();
}

class _UserToSWidgetState extends State<UserToSWidget> {
  late UserToSModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserToSModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Conditions de Service',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Poppins',
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
                  child: SelectionArea(
                      child: Text(
                    '1. Introduction\n\nBienvenue sur MaVille ! Ces Conditions Générales d\'Utilisation régissent votre utilisation de notre application et de nos services. En accédant à MaVille ou en l\'utilisant, vous acceptez de respecter ces Conditions Générales d\'Utilisation.\n\n2. Informations sur l\'entité\n\nNom de l\'application : MaVille\nNom de l\'entreprise : communilinkservices\nAdresse de l\'entreprise : 1400 Rue Lucien-Paiement, Laval, QC, H7N0E3, Canada\nPays : Canada\nProvince : Québec\n\n3. Comptes d\'utilisateur\n\nCréation de compte : Les utilisateurs peuvent créer des comptes sur MaVille.\nContenu des utilisateurs : Les utilisateurs peuvent créer et/ou télécharger du contenu (par exemple, textes, images). Pour toute notification de violation de droits d\'auteur, veuillez nous contacter à l\'adresse legal@communilink.ca.\n\n4. Achats intégrés et biens\n\nAchats intégrés : MaVille ne propose pas des achats intégrés.\nBiens : Les utilisateurs ne peuvent pas acheter des biens, des articles ou des services.\n\n5. Abonnements\n\nMaVille ne propose pas des plans d\'abonnement.\n\n6. Contenu et Marques Déposées\n\nPropriété exclusive : Tout le contenu (logo, design visuel, marques déposées, etc.) sur MaVille est la propriété exclusive de CommunilinkServices.\n\n7. Commentaires des Utilisateurs\n\nMise en œuvre des commentaires : Nous pouvons mettre en œuvre tout commentaire ou suggestion fournis par les utilisateurs sans compensation ni crédits.\n\n8. Promotions, Concours et Tirages au Sort\n\nOffres : MaVille peut proposer des promotions, des concours ou des tirages au sort.\n\n9. Informations de Contact\n\nPour toute question concernant ces Conditions Générales d\'Utilisation, les utilisateurs peuvent nous contacter :\n\nPar email : legal@communilink.ca\nEn visitant une page sur notre site web : https://www.communilink.ca\n\n10. Modifications des Conditions Générales d\'Utilisation\n\nNous nous réservons le droit de modifier ces Conditions Générales d\'Utilisation à tout moment. Toute modification sera publiée sur cette page et nous informerons les utilisateurs de tout changement important.\n\n11. Loi Applicable\n\nCes Conditions Générales d\'Utilisation sont régies par les lois du Québec, Canada.',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
