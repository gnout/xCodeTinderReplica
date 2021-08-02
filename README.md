# xCodeTinderReplica
SwiftUI course building a Tinder replica

## Comments
The new Xamarin MAUI C# markup looks exactly the same as SwiftUI

The specs and the implementation so far is very similar to the way that SwiftUI design pages and handles pages state.

It's not the final form, but until now is amazingly similar

The specs for Xamarin MAUI C# markup can be found [here](https://github.com/dotnet/maui/discussions/119)

An video from Microsoft Build 2020 introducing Xamarin Maui (in the 45th minute) can be found [here](https://channel9.msdn.com/Events/Build/2020/BOD107?ocid=AID3012654&WT.mc_id=build2020-azuredevtips-micrum)

## Guide to read the code

The starting point of the app is the [replicaApp.swift](https://github.com/gnout/xCodeTinderReplica/blob/main/replica/replicaApp.swift) which initialize the app and calls the first view of the app.

In SwiftUI, there are no AppDelegates, nor StoryBoards. The UI is created by code. Xamarin Maui follows exactly that way
