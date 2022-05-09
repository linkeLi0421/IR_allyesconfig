; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6655/dpc.c_pt.bc'
source_filename = "../drivers/staging/vt6655/dpc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.vnt_rx_desc = type { %struct.vnt_rdes0, %struct.vnt_rdes1, i32, i32, ptr, [4 x i8], ptr, [4 x i8] }
%struct.vnt_rdes0 = type { i16, %union.anon.131 }
%union.anon.131 = type { i16 }
%struct.vnt_rdes1 = type { i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.vnt_rd_info = type { ptr, i32 }
%struct.vnt_private = type { ptr, ptr, ptr, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.spinlock, [2 x i32], [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, [2 x ptr], %struct.vnt_options, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i32, i8, i32, i32, i8, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i32, i8, i16, i8, i8, i8, i32, i8, i8, [4 x i8], [4 x i32], i8, i8, i32, i8, i8, i8, i8, i8, [15 x i8], [57 x i8], [15 x i8], [57 x i8], [57 x i8], [57 x i8], i8, i8, i8, i8, [256 x i8], i16, i16, %struct.work_struct, %struct.ieee80211_low_level_stats }
%struct.vnt_options = type { i32, i32, [2 x i32], i32, i32, i32, i32, i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.125, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.125 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@vnt_receive_frame.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt6655_stage\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vnt_receive_frame\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/staging/vt6655/dpc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Wrong frame size %d\0A\00", [43 x i8] zeroinitializer }, align 32
@vnt_rx_data.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vnt_rx_data\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"------- WRONG Length 1\0A\00", [40 x i8] zeroinitializer }, align 32
@vnt_rx_data.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Wrong RxRate %x\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 8, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 134, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 44, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [32 x i8] c"../drivers/staging/vt6655/dpc.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 69, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @vnt_receive_frame(ptr noundef %priv, ptr noundef %curr_rd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_info1 = getelementptr inbounds %struct.vnt_rx_desc, ptr %curr_rd, i32 0, i32 6
  %0 = ptrtoint ptr %rd_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rd_info1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %skb_dma = getelementptr inbounds %struct.vnt_rd_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skb_dma, align 4
  %rx_buf_sz = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 33
  %8 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %7, i32 noundef %9, i32 noundef 2, i32 noundef 0) #4
  %rd1 = getelementptr inbounds %struct.vnt_rx_desc, ptr %curr_rd, i32 0, i32 1
  %10 = ptrtoint ptr %rd1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load volatile i16, ptr %rd1, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %curr_rd to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load volatile i16, ptr %curr_rd, align 8
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %sub = sub i16 %12, %15
  %conv5 = zext i16 %sub to i32
  %16 = add i16 %sub, -2365
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2332, i16 %16)
  %17 = icmp ult i16 %16, -2332
  br i1 %17, label %do.body, label %if.end16

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_receive_frame.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_receive_frame, %if.then12)) #4
          to label %cleanup.sink.split [label %if.then12], !srcloc !22

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_receive_frame.__UNIQUE_ID_ddebug352, ptr noundef %dev14, ptr noundef nonnull @.str.3, i32 noundef %conv5) #4
  br label %cleanup.sink.split

if.end16:                                         ; preds = %entry
  %call17 = tail call fastcc zeroext i1 @vnt_rx_data(ptr noundef %priv, ptr noundef %3, i16 noundef zeroext %sub)
  br i1 %call17, label %if.end16.cleanup_crit_edge, label %if.end16.cleanup.sink.split_crit_edge

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end16.cleanup.sink.split_crit_edge, %if.then12, %do.body
  tail call void @__dev_kfree_skb_irq(ptr noundef %3, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end16.cleanup_crit_edge
  ret i1 true
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @vnt_rx_data(ptr noundef %priv, ptr noundef %skb, i16 noundef zeroext %bytes_received) unnamed_addr #0 align 64 {
entry:
  %rx_dbm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_dbm) #4
  %2 = ptrtoint ptr %rx_dbm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rx_dbm, align 4, !annotation !23
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 2
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %7 to i32
  %8 = add i16 %7, -2347
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2333, i16 %8)
  %9 = icmp ult i16 %8, -2333
  br i1 %9, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_rx_data.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_rx_data, %if.then8)) #4
          to label %cleanup [label %if.then8], !srcloc !22

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_rx_data.__UNIQUE_ID_ddebug350, ptr noundef %dev, ptr noundef nonnull @.str.5) #4
  br label %cleanup

if.end9:                                          ; preds = %entry
  %add.ptr11 = getelementptr i8, ptr %4, i32 1
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chandef, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %13, i32 0, i32 53, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr11, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %for.inc.11 [
    i8 2, label %if.end9.for.end_crit_edge
    i8 4, label %for.end.fold.split
    i8 11, label %for.end.fold.split200
    i8 22, label %for.end.fold.split201
    i8 12, label %for.end.fold.split202
    i8 18, label %for.end.fold.split203
    i8 24, label %for.end.fold.split204
    i8 36, label %for.end.fold.split205
    i8 48, label %for.end.fold.split206
    i8 72, label %for.end.fold.split207
    i8 96, label %for.end.fold.split208
    i8 108, label %for.end.fold.split209
  ]

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.11:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end.fold.split:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end.fold.split200:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end.fold.split201:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end.fold.split202:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end.fold.split203:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end.fold.split204:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end.fold.split205:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end.fold.split206:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end.fold.split207:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end.fold.split208:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end.fold.split209:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split209, %for.end.fold.split208, %for.end.fold.split207, %for.end.fold.split206, %for.end.fold.split205, %for.end.fold.split204, %for.end.fold.split203, %for.end.fold.split202, %for.end.fold.split201, %for.end.fold.split200, %for.end.fold.split, %for.inc.11, %if.end9.for.end_crit_edge
  %r.0.lcssa = phi i32 [ 0, %if.end9.for.end_crit_edge ], [ 12, %for.inc.11 ], [ 1, %for.end.fold.split ], [ 2, %for.end.fold.split200 ], [ 3, %for.end.fold.split201 ], [ 4, %for.end.fold.split202 ], [ 5, %for.end.fold.split203 ], [ 6, %for.end.fold.split204 ], [ 7, %for.end.fold.split205 ], [ 8, %for.end.fold.split206 ], [ 9, %for.end.fold.split207 ], [ 10, %for.end.fold.split208 ], [ 11, %for.end.fold.split209 ]
  %conv21 = trunc i32 %r.0.lcssa to i8
  %rx_rate22 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 34
  %23 = ptrtoint ptr %rx_rate22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv21, ptr %rx_rate22, align 4
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %19, i32 0, i32 4
  %24 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp24192 = icmp sgt i32 %25, 0
  br i1 %cmp24192, label %for.body26.lr.ph, label %for.end.for.end36_crit_edge

for.end.for.end36_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end36

for.body26.lr.ph:                                 ; preds = %for.end
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %19, i32 0, i32 1
  %26 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bitrates, align 4
  br label %for.body26

for.body26:                                       ; preds = %for.inc34.for.body26_crit_edge, %for.body26.lr.ph
  %ii.0193 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc35, %for.inc34.for.body26_crit_edge ]
  %hw_value = getelementptr %struct.ieee80211_rate, ptr %27, i32 %ii.0193, i32 2
  %28 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hw_value, align 2
  %conv28 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %r.0.lcssa, i32 %conv28)
  %cmp29 = icmp eq i32 %r.0.lcssa, %conv28
  br i1 %cmp29, label %if.then31, label %for.inc34

if.then31:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #6
  %conv32 = trunc i32 %ii.0193 to i8
  br label %for.end36

for.inc34:                                        ; preds = %for.body26
  %inc35 = add nuw nsw i32 %ii.0193, 1
  %exitcond.not = icmp eq i32 %inc35, %25
  br i1 %exitcond.not, label %for.inc34.do.body41_crit_edge, label %for.inc34.for.body26_crit_edge

for.inc34.for.body26_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body26

for.inc34.do.body41_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body41

for.end36:                                        ; preds = %if.then31, %for.end.for.end36_crit_edge
  %ii.0190 = phi i32 [ %ii.0193, %if.then31 ], [ 0, %for.end.for.end36_crit_edge ]
  %rate_idx.0 = phi i8 [ %conv32, %if.then31 ], [ 0, %for.end.for.end36_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ii.0190, i32 %25)
  %cmp38 = icmp eq i32 %ii.0190, %25
  br i1 %cmp38, label %for.end36.do.body41_crit_edge, label %if.end60

for.end36.do.body41_crit_edge:                    ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body41

do.body41:                                        ; preds = %for.end36.do.body41_crit_edge, %for.inc34.do.body41_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_rx_data.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_rx_data, %if.then53)) #4
          to label %cleanup [label %if.then53], !srcloc !22

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  %dev55 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr11, align 1
  %conv56 = zext i8 %33 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_rx_data.__UNIQUE_ID_ddebug351, ptr noundef %dev55, ptr noundef nonnull @.str.6, i32 noundef %conv56) #4
  br label %cleanup

if.end60:                                         ; preds = %for.end36
  %conv61 = zext i16 %bytes_received to i32
  %add.ptr62 = getelementptr i8, ptr %4, i32 %conv61
  %add.ptr66 = getelementptr i8, ptr %add.ptr62, i32 -3
  %add.ptr72 = getelementptr i8, ptr %add.ptr62, i32 -1
  %34 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr72, align 1
  %36 = and i8 %35, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool74.not = icmp eq i8 %36, 0
  br i1 %tobool74.not, label %if.end76, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end76:                                         ; preds = %if.end60
  %add.ptr69 = getelementptr i8, ptr %add.ptr62, i32 -2
  %add.ptr63 = getelementptr i8, ptr %add.ptr62, i32 -12
  %37 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr69, align 1
  call void @RFvRSSITodBm(ptr noundef %priv, i8 noundef zeroext %38, ptr noundef nonnull %rx_dbm) #4
  %39 = ptrtoint ptr %rx_dbm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_dbm, align 4
  %41 = trunc i32 %40 to i8
  %conv79 = add i8 %41, 1
  %byBBPreEDRSSI = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 112
  %42 = ptrtoint ptr %byBBPreEDRSSI to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv79, ptr %byBBPreEDRSSI, align 4
  %43 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr69, align 1
  %conv80 = zext i8 %44 to i32
  %current_rssi = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 44
  %45 = ptrtoint ptr %current_rssi to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv80, ptr %current_rssi, align 4
  %call81 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #4
  call void @skb_trim(ptr noundef %skb, i32 noundef %conv) #4
  %46 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr63, align 8
  %48 = call i64 @llvm.bswap.i64(i64 %47)
  %49 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chandef, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %conv87 = trunc i32 %52 to i8
  %53 = ptrtoint ptr %rx_dbm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_dbm, align 4
  %conv89 = trunc i32 %54 to i8
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %center_freq, align 4
  %conv93 = trunc i32 %56 to i16
  %bf.shl = shl i16 %conv93, 3
  %57 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %add.ptr72, align 1
  %59 = shl i8 %58, 3
  %60 = and i8 %59, 32
  %61 = xor i8 %60, 32
  %62 = zext i8 %61 to i32
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %64, align 2
  %67 = and i16 %66, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp.i.not = icmp eq i16 %67, 0
  br i1 %cmp.i.not, label %if.end76.if.end116_crit_edge, label %if.then103

if.end76.if.end116_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end116

if.then103:                                       ; preds = %if.end76
  %local_id = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 36
  %68 = ptrtoint ptr %local_id to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %local_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp105 = icmp ugt i8 %69, 1
  %or109 = or i32 %62, 2
  %spec.select182 = select i1 %cmp105, i32 %or109, i32 %62
  %70 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %add.ptr66, align 1
  %72 = and i8 %71, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool113.not = icmp eq i8 %72, 0
  br i1 %tobool113.not, label %if.then103.cleanup_crit_edge, label %if.then103.if.end116_crit_edge

if.then103.if.end116_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end116

if.then103.cleanup_crit_edge:                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end116:                                        ; preds = %if.then103.if.end116_crit_edge, %if.end76.if.end116_crit_edge
  %rx_status.sroa.5152.2 = phi i32 [ %spec.select182, %if.then103.if.end116_crit_edge ], [ %62, %if.end76.if.end116_crit_edge ]
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %73 = ptrtoint ptr %cb.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %48, ptr %cb.i, align 8
  %rx_status.sroa.5.0.call117.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %74 = call ptr @memset(ptr %rx_status.sroa.5.0.call117.sroa_idx, i32 0, i32 16)
  %rx_status.sroa.5152.0.call117.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %75 = ptrtoint ptr %rx_status.sroa.5152.0.call117.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %rx_status.sroa.5152.2, ptr %rx_status.sroa.5152.0.call117.sroa_idx, align 8
  %rx_status.sroa.10.0.call117.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %76 = ptrtoint ptr %rx_status.sroa.10.0.call117.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %bf.shl, ptr %rx_status.sroa.10.0.call117.sroa_idx, align 4
  %rx_status.sroa.12.0.call117.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %77 = call ptr @memset(ptr %rx_status.sroa.12.0.call117.sroa_idx, i32 0, i32 3)
  %rx_status.sroa.12154.0.call117.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %78 = ptrtoint ptr %rx_status.sroa.12154.0.call117.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %rate_idx.0, ptr %rx_status.sroa.12154.0.call117.sroa_idx, align 1
  %rx_status.sroa.13.0.call117.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 34
  %79 = ptrtoint ptr %rx_status.sroa.13.0.call117.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %rx_status.sroa.13.0.call117.sroa_idx, align 2
  %rx_status.sroa.13155.0.call117.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %80 = ptrtoint ptr %rx_status.sroa.13155.0.call117.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv87, ptr %rx_status.sroa.13155.0.call117.sroa_idx, align 4
  %rx_status.sroa.14.0.call117.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %81 = ptrtoint ptr %rx_status.sroa.14.0.call117.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %rx_status.sroa.14.0.call117.sroa_idx, align 1
  %rx_status.sroa.14156.0.call117.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %82 = ptrtoint ptr %rx_status.sroa.14156.0.call117.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv89, ptr %rx_status.sroa.14156.0.call117.sroa_idx, align 2
  %rx_status.sroa.15.0.call117.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 39
  %83 = call ptr @memset(ptr %rx_status.sroa.15.0.call117.sroa_idx, i32 0, i32 9)
  %84 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw1, align 4
  call void @ieee80211_rx_irqsafe(ptr noundef %85, ptr noundef %skb) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %if.then103.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.then53, %do.body41, %if.then8, %do.body
  %retval.0 = phi i1 [ true, %if.end116 ], [ false, %if.then8 ], [ false, %if.then53 ], [ false, %if.end60.cleanup_crit_edge ], [ false, %if.then103.cleanup_crit_edge ], [ false, %do.body ], [ false, %do.body41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_dbm) #4
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @RFvRSSITodBm(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6655/dpc.c", i32 134, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @vnt_receive_frame.__UNIQUE_ID_ddebug352, !1, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/vt6655/dpc.c", i32 44, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @vnt_rx_data.__UNIQUE_ID_ddebug350, !7, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/vt6655/dpc.c", i32 69, i32 3}
!12 = !{ptr @vnt_rx_data.__UNIQUE_ID_ddebug351, !11, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2148961156, i64 2148961161, i64 2148961174, i64 2148961218, i64 2148961252, i64 2148961273}
!23 = !{!"auto-init"}
