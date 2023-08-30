//
//  NavigationListView.swift
//  SwiftUILibrary
//
//  Created by 伊藤 直輝 on 2023/07/23.
//

import SwiftUI

struct NavigationItemListView: View {
  var body: some View {
    NavigationSplitView {
      List {
        // MARK:  Essentials
        Section {
          NavigationLink("Introducing SwiftUI") {
            IntroducingSwiftUIView()
          }
          NavigationLink("Learning SwiftUI") {
            LearningSwiftUIView()
          }
          NavigationLink("Exploring SwiftUI Sample Apps") {
            ExploringSwiftUISampleAppsView()
          }
          NavigationLink("SwiftUI updates") {
            SwiftUIUpdatesView()
          }
        } header: {
          Text("Essentials")
        }
        
        // MARK: App structure
        Section {
          // MARK: App organization
          DisclosureGroup {
            NavigationLink("Creating an app") {
              CreatingAnAppView()
            }
            NavigationLink("Targeting iOS and iPadOS") {
              TargetingiOSAndiPadOSView()
            }
            NavigationLink("Targeting macOS") {
              TargetingmacOSView()
            }
          } label: {
            NavigationLink("App organization") {
              AppOrganizationView()
            }
          }
          
          // MARK: Scenes
          DisclosureGroup {
            NavigationLink("Creating scenes") {
              CreatingScenesView()
            }
            NavigationLink("Monitoring scene life cycle") {
              MonitoringSceneLifeCycleView()
            }
            NavigationLink("Managing a settings window") {
              ManagingASettingsWindowView()
            }
            NavigationLink("Creating a menu bar extra") {
              CreatingAMenuBarExtraView()
            }
          } label: {
            NavigationLink("Scenes") {
              ScenesView()
            }
          }
          
          // MARK: Windows
          DisclosureGroup {
            NavigationLink("Creating windows") {
              CreatingWindowsView()
            }
            NavigationLink("Styling the associated toolbar") {
              StylingTheAssociatedToolbarView()
            }
            NavigationLink("Opening windows") {
              OpeningWindowsView()
            }
            NavigationLink("Closing windows") {
              ClosingWindowsView()
            }
            NavigationLink("Positioning and sizing a window") {
              PositioningAndSizingAWindowView()
            }
          } label: {
            NavigationLink("Windows") {
              WindowsView()
            }
          }
          
          // MARK: Documents
          DisclosureGroup {
            NavigationLink("Creating a document") {
              CreatingADocumentView()
            }
            NavigationLink("Storing document data in a structure instance") {
              StoringDocumentDataInAStructureInstanceView()
            }
            NavigationLink("Storing document data in a class instance") {
              StoringDocumentDataInAClassInstanceView()
            }
            NavigationLink("Accessing document configuration") {
              AccessingDocumentConfigurationView()
            }
            NavigationLink("Opening a document programmatically") {
              OpeningADocumentProgrammaticallyView()
            }
            NavigationLink("Renaming a document") {
              RenamingADocumentView()
            }
          } label: {
            NavigationLink("Documents") {
              DocumentsView()
            }
          }
          
          // MARK: Navigation
          DisclosureGroup {
            NavigationLink("Presenting views in columns") {
              PresentingViewsInColumnsView()
            }
            NavigationLink("Stacking views in one column") {
              StackingViewsInOneColumnView()
            }
            NavigationLink("Managing column collapse") {
              ManagingColumnCollapseView()
            }
            NavigationLink("Setting titles for navigation content") {
              SettingTitlesForNavigationContentView()
            }
            NavigationLink("Configuring the navigation bar") {
              ConfiguringTheNavigationBarView()
            }
            NavigationLink("Configuring the sidebar") {
              ConfiguringTheSidebarView()
            }
            NavigationLink("Presenting views in tabs") {
              PresentingViewsInTabsView()
            }
            NavigationLink("Displaying views in multiple panes") {
              DisplayingViewsInMultiplePanesView()
            }
          } label: {
            NavigationLink("Navigation") {
              NavigationView_()
            }
          }
          
          // MARK: Modal presentations
          DisclosureGroup {
            NavigationLink("Configuring a dialog") {
              // NOTE: Two exactly the same section exists in Apple Developer Documentation
              ConfiguringADialogView()
            }
            NavigationLink("Showing a sheet, cover, or popover") {
              ShowingASheetCoverOrPopoverView()
            }
            NavigationLink("Adapting a presentation to size classes") {
              AdaptingAPresentationToSizeClassesView()
            }
            NavigationLink("Configuring a sheet's height") {
              ConfiguringASheetsHeightView()
            }
            NavigationLink("Presenting an alert") {
              PresentingAnAlertView()
            }
            NavigationLink("Presenting an alert with a message") {
              PresentingAnAlertWithAMessageView()
            }
            NavigationLink("Getting confirmation for an action") {
              GettingConfirmationForAnActionView()
            }
            NavigationLink("Showing a confirmation dialog with a message") {
              ShowingAConfirmationDialogWithAMessageView()
            }
            NavigationLink("Exporting to file") {
              ExportingToFileView()
            }
            NavigationLink("Importing from file") {
              ImportingFromFileView()
            }
            NavigationLink("Moving a file") {
              MovingAFileView()
            }
            NavigationLink("Configuring a file dialog") {
              ConfiguringAFileDialogView()
            }
            NavigationLink("Presenting an inspector") {
              PresentingAnInspectorView()
            }
            NavigationLink("Dismissing a presentation") {
              DismissingAPresentationView()
            }
          } label: {
            NavigationLink("Modal presentations") {
              ModalPresentationsView()
            }
          }
          
          // MARK: Toolbars
          DisclosureGroup {
            NavigationLink("Populating a toolbar") {
              PopulatingAToolbarView()
            }
            NavigationLink("Populating a customizable toolbar") {
              PopulatingACustomizableToolbarView()
            }
            NavigationLink("Setting toolbar visibility") {
              SettingToolbarVisibilityView()
            }
            NavigationLink("Specifying the role of toolbar content") {
              SpecifyingTheRoleOfToolbarContentView()
            }
            NavigationLink("Styling a toolbar") {
              StylingAToolbarView()
            }
            NavigationLink("Configuring the toolbar title display mode") {
              ConfiguringTheToolbarTitleDisplayModeView()
            }
            NavigationLink("Setting the toolbar title menu") {
              SettingTheToolbarTitleMenuView()
            }
          } label: {
            NavigationLink("Toolbars") {
              ToolbarsView()
            }
          }
          
          // MARK: Search
          DisclosureGroup {
            NavigationLink("Searching your app's data model") {
              SearchingYourAppsDataModelView()
            }
            NavigationLink("Making search suggestions") {
              MakingSearchSuggestionsView()
            }
            NavigationLink("Limiting search scope") {
              LimitingSearchScopeView()
            }
            NavigationLink("Detecting, activating, and dismissing search") {
              DetectingActivatingAndDismissingSearchView()
            }
            NavigationLink("Searching for text in a view with find and replace") {
              SearchingForTextInAViewWithFindAndReplaceView()
            }
          } label: {
            NavigationLink("Search") {
              SearchView()
            }
          }
          
          // MARK: App extensions
          DisclosureGroup {
            NavigationLink("Creating widgets") {
              CreatingWidgetsView()
            }
            NavigationLink("Labeling a widget") {
              LabelingAWidgetView()
            }
            NavigationLink("Controlling the accented group") {
              ControllingTheAccentedGroupView()
            }
          } label: {
            NavigationLink("App extensions") {
              AppExtensionsView()
            }
          }
        } header: {
          Text("App Structure")
        }

        // MARK: Data and storage
        Section {
          // MARK: Model data
          DisclosureGroup {
            NavigationLink("Creating and sharing view state") {
              CreatingAndSharingViewStateView()
            }
            NavigationLink("Creating model data") {
              CreatingModelDataView()
            }
            NavigationLink("Responding to data changes") {
              RespondingToDataChangesView()
            }
            NavigationLink("Distributing model data throughout your app") {
              DistributingModelDataThroughoutYourAppView()
            }
            NavigationLink("Managing dynamic data") {
              ManagingDynamicDataView()
            }
          } label: {
            NavigationLink("Modal data") {
              ModelDataView()
            }
          }
          
          // MARK: Environment values
          DisclosureGroup {
            NavigationLink("Accessing environment values") {
              AccessingEnvironmentValuesView()
            }
            NavigationLink("Creating custom environment values") {
              CreatingCustomEnvironmentValuesView()
            }
            NavigationLink("Modifying the environment") {
              ModifyingTheEnvironmentView()
            }
          } label: {
            NavigationLink("Environment values") {
              EnvironmentValuesView()
            }
          }
          
          // MARK: Preferences
          DisclosureGroup {
            NavigationLink("Setting preferences") {
              SettingPreferencesView()
            }
            NavigationLink("Creating custom preferences") {
              CreatingCustomPreferencesView()
            }
            NavigationLink("Setting preferences based on geometry") {
              SettingPreferencesBasedOnGeometryView()
            }
            NavigationLink("Responding to changes in preferences") {
              RespondingToChangesInPreferencesView()
            }
            NavigationLink("Generating backgrounds and overlays from preferences") {
              GeneratingBackgroundsAndOverlaysFromPreferencesView()
            }
          } label: {
            NavigationLink("Preferences") {
              PreferencesView()
            }
          }
          
          // MARK: Persistent storage
          DisclosureGroup {
            NavigationLink("Saving state across app launches") {
              SavingStateAcrossAppLaunchesView()
            }
            NavigationLink("Accessing Core Data") {
              AccessingCoreDataView()
            }
          } label: {
            NavigationLink("Persistent storage") {
              PersistentStorageView()
            }
          }
        } header: {
          Text("Data and storage")
        }

        // MARK: Views
        Section {
          // MARK: View fundamentals
          DisclosureGroup {
            NavigationLink("Creating a view") {
              CreatingAViewView()
            }
            NavigationLink("Modifying a view") {
              ModifyingAViewView()
            }
            NavigationLink("Responding to view life cycle updates") {
              RespondingToViewCycleUpdatesView()
            }
            NavigationLink("Managing the view hierarchy") {
              ManagingTheViewHierarchyView()
            }
            NavigationLink("Supporting view types") {
              SupportingViewTypesView()
            }
          } label: {
            NavigationLink("View fundamentals") {
              ViewFundamentalsView()
            }
          }
          
          // MARK: View configuration
          DisclosureGroup {
            NavigationLink("Hiding views") {
              HidingViewsView()
            }
            NavigationLink("Hiding system elements") {
              HidingSystemElementsView()
            }
            NavigationLink("Managing view interaction") {
              ManagingViewInteractionView()
            }
            NavigationLink("Providing contextual help") {
              ProvidingContextualHelpView()
            }
            NavigationLink("Detecting and requesting the light or dark appearance") {
              DetectingAndRequestingTheLightOrDarkAppearanceView()
            }
            NavigationLink("Getting the color scheme contrast") {
              GettingTheColorSchemeContrastView()
            }
            NavigationLink("Redacting private content") {
              RedactingPrivateContentView()
            }
          } label: {
            NavigationLink("View configuration") {
              ViewConfigurationView()
            }
          }
          
          // MARK: View styles
          DisclosureGroup {
            NavigationLink("Styling buttons") {
              StylingButtonsView()
            }
            NavigationLink("Styling pickers") {
              StylingPickersView()
            }
            NavigationLink("Styling menus") {
              StylingMenusView()
            }
            NavigationLink("Styling toggles") {
              StylingTogglesView()
            }
            NavigationLink("Styling indicators") {
              StylingIndicatorsView()
            }
            NavigationLink("Styling views that display text") {
              StylingViewsThatDisplayTextView()
            }
            NavigationLink("Styling collection views") {
              StylingCollectionViewsView()
            }
            NavigationLink("Styling navigation views") {
              StylingNavigationViewsView()
            }
            NavigationLink("Styling groups") {
              StylingGroupsView()
            }
            NavigationLink("Styling windows from a view inside the window") {
              StylingWindowsFromAViewInsideTheWindowView()
            }
          } label: {
            NavigationLink("View styles") {
              ViewStylesView()
            }
          }
          
          // MARK: Animations
          DisclosureGroup {
            NavigationLink("Adding state-based animation to an action") {
              AddingStateBasedAnimationToAnActionView()
            }
            NavigationLink("Adding state-based animation to a view") {
              AddingStateBasedAnimationToAViewView()
            }
            NavigationLink("Creating phase-based animation") {
              CreatingPhaseBasedAnimationView()
            }
            NavigationLink("Creating keyframe-based animation") {
              CreatingKeyframeBasedAnimationView()
            }
            NavigationLink("Creating custom animations") {
              CreatingCustomAnimationsView()
            }
            NavigationLink("Making data animatable") {
              MakingDataAnimatableView()
            }
            NavigationLink("Updating a view on a schedule") {
              UpdatingAViewOnAScheduleView()
            }
            NavigationLink("Synchronizing geometries") {
              SynchronizingGeometriesView()
            }
            NavigationLink("Defining transitions") {
              DefiningTransitionsView()
            }
            NavigationLink("Moving an animation to another view") {
              MovingAnAnimationToAnotherViewView()
            }
          } label: {
            NavigationLink("Animations") {
              AnimationsView()
            }
          }
          
          // MARK: Text input and output
          DisclosureGroup {
            NavigationLink("Displaying text") {
              DisplayingTextView()
            }
            NavigationLink("Getting text input") {
              GettingTextInputView()
            }
            NavigationLink("Selecting text") {
              SelectingTextView()
            }
            NavigationLink("Setting a font") {
              SettingAFontView()
            }
            NavigationLink("Adjusting text size") {
              AdjustingTextSizeView()
            }
            NavigationLink("Controlling text style") {
              ControllingTextStyleView()
            }
            NavigationLink("Managing text layout") {
              ManagingTextLayoutView()
            }
            NavigationLink("Limiting line count for multiline text") {
              LimitingLineCountForMultilineTextView()
            }
            NavigationLink("Managing text entry") {
              ManagingTextEntryView()
            }
            NavigationLink("Dictating text") {
              DictatingTextView()
            }
            NavigationLink("Localizing text") {
              LocalizingTextView()
            }
          } label: {
            NavigationLink("Text input and output") {
              TextInputAndOutputView()
            }
          }
          
          // MARK: Images
          DisclosureGroup {
            NavigationLink("Creating an image") {
              CreatingAnImageView()
            }
            NavigationLink("Configuring an image") {
              ConfiguringAnImageView()
            }
            NavigationLink("Loading images asynchronously") {
              LoadingImagesAsynchronouslyView()
            }
            NavigationLink("Setting a symbol variant") {
              SettingASymbolVariantView()
            }
            NavigationLink("Managing symbol effects") {
              ManagingSymbolEffectsView()
            }
            NavigationLink("Setting symbol rendering modes") {
              SettingSymbolRenderingModesView()
            }
            NavigationLink("Rendering images from views") {
              RenderingImagesFromViewsView()
            }
          } label: {
            NavigationLink("Images") {
              ImagesView()
            }
          }
          
          // MARK: Controls and indicators
          DisclosureGroup {
            NavigationLink("Creating buttons") {
              CreatingButtonsView()
            }
            NavigationLink("Creating special-purpose buttons") {
              CreatingSpecialPurposeButtonsView()
            }
            NavigationLink("Linking to other content") {
              LinkingToOtherContentView()
            }
            NavigationLink("Getting numeric inputs") {
              GettingNumericInputsView()
            }
            NavigationLink("Choosing from a set of options") {
              ChoosingFromASetOfOptionsView()
            }
            NavigationLink("Choosing dates") {
              ChoosingDatesView()
            }
            NavigationLink("Indicating a value") {
              IndicatingAValueView()
            }
            NavigationLink("Indicating missing content") {
              IndicatingMissingContentView()
            }
            NavigationLink("Providing haptic feedback") {
              ProvidingHapticFeedbackView()
            }
            NavigationLink("Sizing controls") {
              SizingControlsView()
            }
            NavigationLink("Activating controls") {
              ActivatingControlsView()
            }
          } label: {
            NavigationLink("Controls and indicators") {
              ControlsAndIndicatorsView()
            }
          }
          
          // MARK: Menus and commands
          DisclosureGroup {
            NavigationLink("Creating a menu") {
              CreatingAMenuView()
            }
            NavigationLink("Creating context menus") {
              CreatingContextMenusView()
            }
            NavigationLink("Defining commands") {
              DefiningCommandsView()
            }
            NavigationLink("Getting built-in command groups") {
              GettingBuiltInCommandGroupsView()
            }
            NavigationLink("Configuring menu dismissal") {
              ConfiguringMenuDismissalView()
            }
            NavigationLink("Setting a preferred order") {
              SettingAPreferredOrderView()
            }
          } label: {
            NavigationLink("Menus and commands") {
              MenusAndCommandsView()
            }
          }
          
          // MARK: Shapes
          DisclosureGroup {
            NavigationLink("Creating rectangular shapes") {
              CreatingRectangularShapesView()
            }
            NavigationLink("Creating circular shapes") {
              CreatingCircularShapesView()
            }
            NavigationLink("Drawing custom shapes") {
              DrawingCustomShapesView()
            }
            NavigationLink("Defining shape behavior") {
              DefiningShapeBehaviorView()
            }
            NavigationLink("Transforming a shape") {
              TransformingAShapeView()
            }
            NavigationLink("Setting a container shape") {
              SettingAContainerShapeView()
            }
          } label: {
            NavigationLink("Shapes") {
              ShapesView()
            }
          }
          
          // MARK: Drawing and graphics
          DisclosureGroup {
            NavigationLink("Immediate mode drawing") {
              ImmediateModeDrawingView()
            }
            NavigationLink("Setting a color") {
              SettingAColorView()
            }
            NavigationLink("Styling content") {
              StylingContentView()
            }
            NavigationLink("Transforming colors") {
              TransformingColorsView()
            }
            NavigationLink("Scaling, rotating, or transforming a view") {
              ScalingRotatingOrTransformingAView()
            }
            NavigationLink("Masking and clipping") {
              MaskingAndClippingView()
            }
            NavigationLink("Applying blur and shadows") {
              ApplyingBlurAndShadowsView()
            }
            NavigationLink("Applying effects based on geometry") {
              ApplyingEffectsBasedOnGeometryView()
            }
            NavigationLink("Compositing views") {
              CompositingViewsView()
            }
            NavigationLink("Measuring a view") {
              MeasuringAViewView()
            }
            NavigationLink("Accessing Metal shaders") {
              AccessingMetalShadersView()
            }
            NavigationLink("Accessing geometric constructs") {
              AccessingGeometricConstructsView()
            }
          } label: {
            NavigationLink("Drawing and graphics") {
              DrawingAndGraphicsView()
            }
          }
        } header: {
          Text("Views")
        }

        // MARK: View layout
        Section {
          // MARK: Layout fundamentals
          DisclosureGroup {
            NavigationLink("Choosing a layout") {
              ChoosingALayoutView()
            }
            NavigationLink("Statically arranging views in one dimension") {
              StaticallyArrangingViewsInOneDimensionView()
            }
            NavigationLink("Dynamically arranging views in one dimension") {
              DynamicallyArrangingViewsInOneDimensionView()
            }
            NavigationLink("Statically arranging views in two dimensions") {
              StaticallyArrangingViewsInTwoDimensionsView()
            }
            NavigationLink("Dynamically arranging views in two dimensions") {
              DynamicallyArrangingViewsInTwoDimensionsView()
            }
            NavigationLink("Layering views") {
              LayeringViewsView()
            }
            NavigationLink("Automatically choosing the layout that fits") {
              AutomaticallyChoosingTheLayoutThatFitsView()
            }
            NavigationLink("Separators") {
              SeparatorsView()
            }
          } label: {
            NavigationLink("Layout fundamentals") {
              LayoutFundamentalsView()
            }
          }
          
          // MARK: Layout adjustments
          DisclosureGroup {
            NavigationLink("Finetuning a layout") {
              FinetuningALayoutView()
            }
            NavigationLink("Adding padding around a view") {
              AddingPaddingAroundAViewView()
            }
            NavigationLink("Influencing a view's size") {
              InfluencingAViewsSizeView()
            }
            NavigationLink("Adjusting a view's position") {
              AdjustingAViewsPositionView()
            }
            NavigationLink("Aligning views") {
              AligningViewsView()
            }
            NavigationLink("Setting margins") {
              SettingMarginsView()
            }
            NavigationLink("Staying in the safe areas") {
              StayingInTheSafeAreasView()
            }
            NavigationLink("Setting a layout direction") {
              SettingALayoutDirectionView()
            }
            NavigationLink("Reacting to interface characteristics") {
              ReactingToInterfaceCharacteristicsView()
            }
            NavigationLink("Accessing edges and regions") {
              AccessingEdgesAndRegionsView()
            }
          } label: {
            NavigationLink("Layout adjustments") {
              LayoutAdjustmentsView()
            }
          }
          
          // MARK: Custom layout
          DisclosureGroup {
            NavigationLink("Creating a custom layout container") {
              CreatingACustomLayoutContainerView()
            }
            NavigationLink("Configuring a custom layout") {
              ConfiguringACustomLayoutView()
            }
            NavigationLink("Associating values with views in a custom layout") {
              AssociatingValuesWithViewsInACustomLayoutView()
            }
            NavigationLink("Transitioning between layout types") {
              TransitioningBetweenLayoutTypesView()
            }
          } label: {
            NavigationLink("Custom layout") {
              CustomLayoutView()
            }
          }
          
          // MARK: Lists
          DisclosureGroup {
            NavigationLink("Creating a list") {
              CreatingAListView()
            }
            NavigationLink("Iterating over list content") {
              IteratingOverListContentView()
            }
            NavigationLink("Disclosing information progressively") {
              DisclosingInformationProgressivelyView()
            }
            NavigationLink("Configuring rows") {
              ConfiguringRowsView()
            }
            NavigationLink("Configuring separators") {
              ConfiguringSeparatorsView()
            }
            NavigationLink("Configuring headers") {
              ConfiguringHeadersView()
            }
            NavigationLink("Configuring spacing") {
              ConfiguringSpacingView()
            }
            NavigationLink("Configuring backgrounds") {
              ConfiguringBackgroundsView()
            }
            NavigationLink("Displaying a badge on a list item") {
              DisplayingABadgeOnAListItemView()
            }
            NavigationLink("Refreshing a list's content") {
              RefreshingAListsContentView()
            }
            NavigationLink("Editing a list") {
              EditingAListView()
            }
          } label: {
            NavigationLink("Lists") {
              ListsView()
            }
          }
          
          // MARK: Tables
          DisclosureGroup {
            NavigationLink("Creating a table") {
              CreatingATableView()
            }
            NavigationLink("Creating columns") {
              CreatingColumnsView()
            }
            NavigationLink("Customizing columns") {
              CustomizingColumnsView()
            }
            NavigationLink("Creating rows") {
              CreatingRowsView()
            }
            NavigationLink("Adding progressive disclosure") {
              AddingProgressiveDisclosureView()
            }
          } label: {
            NavigationLink("Tables") {
              TablesView()
            }
          }
          
          // MARK: View groupings
          DisclosureGroup {
            NavigationLink("Collecting views into a unit") {
              CollectingViewsIntoAUnitView()
            }
            NavigationLink("Grouping views into a box") {
              GroupingViewsIntoABoxView()
            }
            NavigationLink("Grouping inputs") {
              GroupingInputsView()
            }
            NavigationLink("Presenting a group of controls") {
              PresentingAGroupOfControlsView()
            }
          } label: {
            NavigationLink("View groupings") {
              ViewGroupingsView()
            }
          }
          
          // MARK: Scroll views
          DisclosureGroup {
            NavigationLink("Creating a scroll view") {
              CreatingAScrollViewView()
            }
            NavigationLink("Managing scroll position") {
              ManagingScrollPositionView()
            }
            NavigationLink("Defining scroll targets") {
              DefiningScrollTargetsView()
            }
            NavigationLink("Animating scroll transitions") {
              AnimatingScrollTransitionsView()
            }
            NavigationLink("Showing scroll indicators") {
              ShowingScrollIndicatorsView()
            }
            NavigationLink("Managing content visibility") {
              ManagingContentVisibilityView()
            }
            NavigationLink("Disabling scrolling") {
              DisablingScrollingView()
            }
            NavigationLink("Configuring scroll bounce behavior") {
              ConfiguringScrollBounceBehaviorView()
            }
            NavigationLink("Interacting with a software keyboard") {
              InteractingWithASoftwareKeyboardView()
            }
          } label: {
            NavigationLink("Scroll views") {
              ScrollViewsView()
            }
          }
        } header: {
          Text("View layout")
        }

        // MARK: Event handling
        Section {
          // MARK: Gestures
          DisclosureGroup {
            NavigationLink("Recognizing tap gestures") {
              RecognizingTapGesturesView()
            }
            NavigationLink("Recognizing long press gestures") {
              RecognizingLongPressGesturesView()
            }
            NavigationLink("Recognizing spatial events") {
              RecognizingSpatialEventsView()
            }
            NavigationLink("Recognizing gestures that change over time") {
              RecognizingGesturesThatChangeOverTimeView()
            }
            NavigationLink("Combining gestures") {
              CombiningGesturesView()
            }
            NavigationLink("Defining custom gestures") {
              DefiningCustomGesturesView()
            }
            NavigationLink("Managing gesture state") {
              ManagingGestureStateView()
            }
          } label: {
            NavigationLink("Gestures") {
              GesturesView()
            }
          }
          
          // MARK: Input events
          DisclosureGroup {
            NavigationLink("Responding to keyboard input") {
              RespondingToKeyboardInputView()
            }
            NavigationLink("Creating keyboard shortcuts") {
              CreatingKeyboardShortcutsView()
            }
            NavigationLink("Responding to hover events") {
              RespondingToHoverEventsView()
            }
            NavigationLink("Changing view appearance for hover events") {
              ChangingViewAppearanceForHoverEventsView()
            }
            NavigationLink("Responding to submission events") {
              RespondingToSubmissionEventsView()
            }
            NavigationLink("Labeling a submission event") {
              LabelingASubmissionEventView()
            }
            NavigationLink("Responding to commands") {
              RespondingToCommandsView()
            }
            NavigationLink("Controlling hit testing") {
              ControllingHitTestingView()
            }
            NavigationLink("Managing Touch Bar input") {
              ManagingTouchBarInputView()
            }
          } label: {
            NavigationLink("Input events") {
              InputEventsView()
            }
          }
          
          // MARK: Clipboard
          DisclosureGroup {
            NavigationLink("Copying transferable items") {
              CopyingTransferableItemsView()
            }
            NavigationLink("Copying items using item providers") {
              CopyingItemsUsingItemProvidersView()
            }
          } label: {
            NavigationLink("Clipboard") {
              ClipboardView()
            }
          }
          
          // MARK: Drag and drop
          DisclosureGroup {
            NavigationLink("Moving transferable items") {
              MovingTransferableItemsView()
            }
            NavigationLink("Moving items using item providers") {
              MovingItemsUsingItemProvidersView()
            }
            NavigationLink("Configuring spring loading") {
              ConfiguringSpringLoadingView()
            }
          } label: {
            NavigationLink("Drag and drop") {
              DragAndDropView()
            }
          }
          
          // MARK: Focus
          DisclosureGroup {
            NavigationLink("Indicating that a view can receive focus") {
              IndicatingThatAViewCanReceiveFocusView()
            }
            NavigationLink("Managing focus state") {
              ManagingFocusStateView()
            }
            NavigationLink("Exposing value types to focused views") {
              ExposingValueTypesToFocusedViewsView()
            }
            NavigationLink("Exposing reference types to focused views") {
              ExposingReferenceTypesToFocusedViewsView()
            }
            NavigationLink("Setting focus scope") {
              SettingFocusScopeView()
            }
            NavigationLink("Controlling default focus") {
              ControllingDefaultFocusView()
            }
            NavigationLink("Resetting focus") {
              ResettingFocusView()
            }
            NavigationLink("Configuring effects") {
              ConfiguringEffectsView()
            }
          } label: {
            NavigationLink("Focus") {
              FocusView()
            }
          }
          
          // MARK: System events
          DisclosureGroup {
            NavigationLink("Handling user activities") {
              HandlingUserActivitiesView()
            }
            NavigationLink("Handling background tasks") {
              HandlingBackgroundTasksView()
            }
            NavigationLink("Handling URLs") {
              HandlingURLsView()
            }
            NavigationLink("Importing and exporting transferable items") {
              ImportingAndExportingTransferableItemsView()
            }
            NavigationLink("Importing and exporting using item providers") {
              ImportingAndExportingUsingItemProvidersView()
            }
            NavigationLink("Handling external events") {
              HandlingExternalEventsView()
            }
          } label: {
            NavigationLink("System events") {
              SystemEventsView()
            }
          }
        } header: {
          Text("Event handling")
        }

        // MARK: Accessibility
        Section {
          DisclosureGroup {
            NavigationLink("Creating accessible elements") {
              CreatingAccessibleElementsView()
            }
            NavigationLink("Identifying elements") {
              IdentifyingElementsView()
            }
            NavigationLink("Hiding elements") {
              HidingElementsView()
            }
            NavigationLink("Supporting types") {
              SupportingTypesView()
            }
          } label: {
            NavigationLink("Accessibility fundamentals") {
              AccessibilityFundamentalsView()
            }
          }
          
          // MARK: Accessible appearance
          DisclosureGroup {
            NavigationLink("Managing color") {
              ManagingColorView()
            }
            NavigationLink("Enlarging content") {
              EnlargingContentView()
            }
            NavigationLink("Improving legibility") {
              ImprovingLegibilityView()
            }
            NavigationLink("Minimizing motion") {
              MinimizingMotionView()
            }
          } label: {
            NavigationLink("Accessible appearance") {
              AccessibleAppearanceView()
            }
          }
          
          // MARK: Accessible controls
          DisclosureGroup {
            NavigationLink("Adding actions to views") {
              AddingActionsToViewsView()
            }
            NavigationLink("Making gestures accessible") {
              MakingGesturesAccessibleView()
            }
            NavigationLink("Controlling focus") {
              ControllingFocusView()
            }
            NavigationLink("Managing interactivity") {
              ManagingInteractivityView()
            }
          } label: {
            NavigationLink("Accessible controls") {
              AccessibleControlsView()
            }
          }
          
          // MARK: Accessible descriptions
          DisclosureGroup {
            NavigationLink("Applying labels") {
              ApplyingLabelsView()
            }
            NavigationLink("Describing values") {
              DescribingValuesView()
            }
            NavigationLink("Describing content") {
              DescribingContentView()
            }
            NavigationLink("Describing charts") {
              DescribingChartsView()
            }
            NavigationLink("Adding custom descriptions") {
              AddingCustomDescriptionsView()
            }
            NavigationLink("Assigning traits to content") {
              AssigningTraitsToContentView()
            }
            NavigationLink("Offering hints") {
              OfferingHintsView()
            }
            NavigationLink("Configuring VoiceOver") {
              ConfiguringVoiceOverView()
            }
          } label: {
            NavigationLink("Accessible descriptions") {
              AccessibleDescriptionsView()
            }
          }
          
          // MARK: Accessible navigation
          DisclosureGroup {
            NavigationLink("Creating rotors") {
              CreatingRotorsView()
            }
            NavigationLink("Creating rotors with a label") {
              CreatingRotorsWithALabelView()
            }
            NavigationLink("Creating rotors for text ranges") {
              CreatingRotorsForTextRangesView()
            }
            NavigationLink("Replacing system rotors") {
              ReplacingSystemRotorsView()
            }
            NavigationLink("Configuring rotors") {
              ConfiguringRotorsView()
            }
          } label: {
            NavigationLink("Accessible navigation") {
              AccessibleNavigationView()
            }
          }
        } header: {
          Text("Accessibility")
        }

        // MARK: Framework integration
        Section {
          // MARK: AppKit integration
          DisclosureGroup {
            NavigationLink("Displaying SwiftUI views in AppKit") {
              DisplayingSwiftUIViewsInAppKitView()
            }
            NavigationLink("Adding AppKit views to SwiftUI view hierarchies") {
              AddingAppKitViewsToSwiftUIViewHierarchiesView()
            }
          } label: {
            NavigationLink("AppKit integration") {
              AppKitIntegrationView()
            }
          }
          
          // MARK: UIKit integration
          DisclosureGroup {
            NavigationLink("Displaying SwiftUI views in UIKit") {
              DisplayingSwiftUIViewsInUIKitView()
            }
            NavigationLink("Adding UIKit views to SwiftUI view hierarchies") {
              AddingUIKitViewsToSwiftUIViewHierarchiesView()
            }
            NavigationLink("Sharing configuration information") {
              SharingConfigurationInformationView()
            }
          } label: {
            NavigationLink("UIKit integration") {
              UIKitIntegrationView()
            }
          }
          
          // MARK: Technology-specific views
          DisclosureGroup {
            NavigationLink("Accessing Apple Pay and Wallet") {
              AccessingApplePayAndWalletView()
            }
            NavigationLink("Authorizing and authenticating") {
              AuthorizingAndAuthenticatingView()
            }
            NavigationLink("Configuring Family Sharing") {
              ConfiguringFamilySharingView()
            }
            NavigationLink("Reporting on device activity") {
              ReportingOnDeviceActivityView()
            }
            NavigationLink("Creating graphics") {
              CreatingGraphicsView()
            }
            NavigationLink("Getting location information") {
              GettingLocationInformationView()
            }
            NavigationLink("Displaying media") {
              DisplayingMediaView()
            }
            NavigationLink("Selecting photos") {
              SelectingPhotosView()
            }
            NavigationLink("Previewing content") {
              PreviewingContentView()
            }
            NavigationLink("Interacting with networked devices") {
              InteractingWithNetworkedDevicesView()
            }
            NavigationLink("Interacting with the App Store and Apple Music") {
              InteractingWithTheAppStoreAndAppleMusicView()
            }
            NavigationLink("Accessing health data") {
              AccessingHealthDataView()
            }
          } label: {
            NavigationLink("Technology-specific views") {
              TechnologySpecificViewsView()
            }
          }
        } header: {
          Text("Framework integration")
        }

        // MARK: Tool support
        Section {
          // MARK: Previews in Xcode
          DisclosureGroup {
            NavigationLink("Creating a preview") {
              CreatingAPreviewView()
            }
            NavigationLink("Specifying a scene style for a preview") {
              SpecifyingASceneStyleForAPreviewView()
            }
            NavigationLink("Naming a preview") {
              NamingAPreviewView()
            }
            NavigationLink("Assigning a device") {
              AssigningADeviceView()
            }
            NavigationLink("Customizing preview size and orientation") {
              CustomizingPreviewSizeAndOrientationView()
            }
            NavigationLink("Setting a context") {
              SettingAContextView()
            }
          } label: {
            NavigationLink("Previews in Xcode") {
              PreviewsInXcodeView()
            }
          }
          
          // MARK: Xcode library customization
          DisclosureGroup {
            NavigationLink("Creating library items") {
              CreatingLibraryItemsView()
            }
          } label: {
            NavigationLink("Xcode library customization") {
              XcodeLibraryCustomizationView()
            }
          }
        } header: {
          Text("Tool support")
        }
        
        // MARK: Structures
        Section {
          NavigationLink("Structures") {
            StructuresView()
          }
        } header: {
          Text("Structures")
        }
      }
    } detail: {
      // detail content
    }
    .navigationSplitViewStyle(.balanced)
  }
}

#Preview {
  NavigationItemListView()
}
