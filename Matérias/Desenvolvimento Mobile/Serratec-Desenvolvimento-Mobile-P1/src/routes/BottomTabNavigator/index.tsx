import { News } from '../../screens/News';
import { Home } from '../../screens/Home';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import { Menu, Bell, Tag, Shield } from "react-native-feather";
import { MaterialCommunityIcons } from '@expo/vector-icons'; 

const Tab = createBottomTabNavigator<RootTabParamList>();

export type RootTabParamList = {
	Home: {};
	News: {};
    Shield: {};
    Bell: {};
    Menu: {};
}

export function BottomTabRoutes() {
	return (
		<Tab.Navigator
			screenOptions={{
				headerShown: false,
				tabBarStyle: { backgroundColor: '#1f2127', padding: 5, height: 60 },
				tabBarInactiveTintColor: '#7e868c',
				tabBarActiveTintColor: '#009dfe',
				tabBarShowLabel:false,
			}}
		>
			<Tab.Screen
				options={{
					tabBarIcon: ({ color }) => (
						<Tag stroke={color} fill={color} width={24} height={24}></Tag>
					)
				}}
				name="Home"
				component={Home}
			/>
			<Tab.Screen
				options={{
					tabBarIcon: ({ color }) => (
						<MaterialCommunityIcons name="newspaper-variant-outline" size={24} color={color}/>
					)
				}}
				name="News"
				component={News}
			/>
			<Tab.Screen
				options={{
					tabBarIcon: ({ color }) => (
						<Shield stroke={color} fill={color} width={24} height={24}></Shield>
					)
				}}
				name="Shield"
				component={Home}
			/>
            <Tab.Screen
				options={{
					tabBarIcon: ({ color }) => (
						<Bell stroke={color} fill={color} width={24} height={24}></Bell>
					)
				}}
				name="Bell"
				component={Home}
			/>
            <Tab.Screen
				options={{
					tabBarIcon: ({ color }) => (
						<Menu stroke={color} fill={color} width={24} height={24}></Menu>
					)
				}}
				name="Menu"
				component={Home}
			/>
		</Tab.Navigator>
	);
}