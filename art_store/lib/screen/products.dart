import 'package:art_store/constants/constants.dart';
import 'package:art_store/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:art_store/screen/history.dart';
import '../bloc/art_bloc.dart';
import '../bloc/art_state.dart';

class Product_screen extends StatelessWidget {
  const Product_screen({super.key});
  static const id = 'product_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ArtBloc, ArtState>(
        listener: (ArtBloc, ArtState) {
          print(State);
        },
        builder: (context, state) {
          // if (state is ArtInitial) {
          //   return Container(
          //     height: MediaQuery.of(context).size.height,
          //     width: MediaQuery.of(context).size.width,
          //     alignment: Alignment.center,
          //     child: ElevatedButton(
          //         onPressed: () {
          //           BlocProvider.of<ArtBloc>(context)
          //               .add(GetDataButtonPressed());
          //         },
          //         child: const Text('Get Activity')),
          //   );
          //}
          if (state is ArtLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ArtFailState) {
            return Text(state.message);
          } else if (state is ArtSuccessState) {
            return Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.LightGray,
                  AppColors.DarkGray,
                ],
              )),
              margin: const EdgeInsets.only(top: 5),
              height: MediaQuery.of(context).size.height * .92,
              child: ListView(children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, right: 350),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.Gold,
                      ),
                      child: Icon(Icons.list),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.MediumGray,
                      ),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.search)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.product.length,
                        itemBuilder: (BuildContext context, int index) {
                          final productList = state.product[index];
                          return Container(
                            child: Stack(children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        AppColors.LightGray,
                                        AppColors.DarkGray,
                                      ],
                                    )),
                                height: 100,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.contain,
                                                  image: NetworkImage(
                                                      productList.image))),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .2,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .3,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 11, vertical: 5),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .4,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Text(productList.name),
                                              Text(
                                                "${productList.price}\$",
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.only(
                                  //   topRight: Radius.circular(60),
                                  // ),
                                  borderRadius: BorderRadius.circular(50),
                                  color: AppColors.DarkGray,
                                ),
                                height: 40,
                                width: 150,
                                margin: EdgeInsets.only(
                                    left: 280, right: 10, top: 100),
                                child: TextButton(
                                  onPressed: () {
                                    BlocProvider.of<ArtBloc>(context).add(
                                        HistoryEvent(product: productList));
                                  },
                                  child: Text(
                                    'Add to cart ->',
                                    style: TextStyle(color: AppColors.Gold),
                                  ),
                                ),
                              )
                            ]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ]),
            );
          }
          return Container();
        },
      ),
    );
  }
}
