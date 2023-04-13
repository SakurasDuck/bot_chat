import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

///这个全局的ref 为了解决没有ref无法获取provider的问题,但是这样做不太好,因为这样做会导致ref的泄露, 但是我暂时还没有想到更好的解决方案,这种方案也有可能是有问题的需要测试
/// idea  from [https://stackoverflow.com/questions/66556027/riverpod-reading-state-in-outside-buildcontext-and-provider]
/// [用在api status handler 中](../http_clinet/proxys/res_status.dart#L13)
typedef GetGlobalPC = ProviderContainer Function();

void registerGLobalPC(ProviderContainer provdier) {
  GetIt.instance.registerSingleton<GetGlobalPC>(() => provdier);
}

ProviderContainer get globalPC => GetIt.instance.get<GetGlobalPC>()();
