import { Ionicons } from '@expo/vector-icons';
import * as WebBrowser from 'expo-web-browser';
import * as React from 'react';
import { StyleSheet, Text, View } from 'react-native';
import { RectButton, ScrollView } from 'react-native-gesture-handler';

export default function LinksScreen() {
  return (
    <ScrollView style={styles.container} contentContainerStyle={styles.contentContainer}>
      <OptionButton
        icon="md-desktop"
        label="Nuestra Web"
        onPress={() => WebBrowser.openBrowserAsync('http://www.bierlife.com/')}
      />
      <OptionButton
        icon="ios-list-box"
        label="Menu"
        onPress={() => WebBrowser.openBrowserAsync('https://www.facebook.com/pg/bierlife/menu/')}
      />
      <OptionButton
        icon="md-easel"
        label="Prensa"
        onPress={() => WebBrowser.openBrowserAsync('http://www.bierlife.com/prensa/')}
      />
      <OptionButton
        icon="md-map"
        label="Encontranos en San Telmo"
        onPress={() => WebBrowser.openBrowserAsync('https://www.google.com.ar/maps/place/Humberto+1%C2%BA+670,+C1103+ACN,+Buenos+Aires/@-34.6210978,-58.377449,17z/data=!3m1!4b1!4m5!3m4!1s0x95bccb2c79fde47d:0x37e0e0b90caf2720!8m2!3d-34.620844!4d-58.375252')}
      />
      <OptionButton
        icon="md-map"
        label="Encontranos en Avellaneda"
        onPress={() => WebBrowser.openBrowserAsync('https://www.google.com.ar/maps/place/French+78,+B1870+BXB,+Buenos+Aires/@-34.660328,-58.3678923,17z/data=!3m1!4b1!4m5!3m4!1s0x95a33351817276dd:0x545ba5ff68ba15ed!8m2!3d-34.660328!4d-58.3657036')}
      />
      <OptionButton
        icon="md-calendar"
        label="Reservas San Telmo"
        onPress={() => WebBrowser.openBrowserAsync('http://www.bierlife.com/reservas-bierlife-san-telmo-2/')}
      />
      <OptionButton
        icon="md-calendar"
        label="Reservas Avellaneda"
        onPress={() => WebBrowser.openBrowserAsync('http://www.bierlife.com/reservas-bierlife-avellaneda/')}
      />
      <OptionButton
        icon="ios-beer"
        label="¿Queres ser Sommelier de Cerveza?"
        onPress={() => WebBrowser.openBrowserAsync('http://centrodecatadecerveza.com/contacto-7')}
      />
      
      <View style={[styles.option, { flexDirection: 'row' }]}>
        <View style={styles.optionIconContainer}>
          <Ionicons name="md-at" size={22} color="rgba(0,0,0,0.35)" />
        </View>
        <View style={styles.optionTextContainer}>
            <Text style={styles.optionText}>bierlife@gmail.com</Text>
        </View>
      </View>
    </ScrollView>
  );
}

function OptionButton({ icon, label, onPress}) {
  return (
    <RectButton style={styles.option} onPress={onPress}>
      <View style={{ flexDirection: 'row' }}>
        <View style={styles.optionIconContainer}>
          <Ionicons name={icon} size={22} color="rgba(0,0,0,0.35)" />
        </View>
        <View style={styles.optionTextContainer}>
          <Text style={styles.optionText}>{label}</Text>
        </View>
      </View>
    </RectButton>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fafafa',
  },
  contentContainer: {
    paddingTop: 15,
  },
  optionIconContainer: {
    marginRight: 12,
  },
  option: {
    backgroundColor: '#fdfdfd',
    paddingHorizontal: 15,
    paddingVertical: 15,
    borderWidth: StyleSheet.hairlineWidth,
    borderBottomWidth: 0,
    borderColor: '#ededed',
  },
  optionText: {
    fontSize: 15,
    alignSelf: 'flex-start',
    marginTop: 1,
  },
});
