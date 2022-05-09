; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtllib_device = type { ptr, ptr, %struct.rtllib_security, i8, i32, i8, i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, ptr, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, %struct.net_device_stats, %struct.rtllib_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i8, %struct.rt_intel_promisc_mode, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, [6 x i8], i16, i16, %struct.lib80211_crypt_info, [32 x %struct.sw_cam_table], [16 x %struct.rt_pmkid_list], [17 x [4 x %struct.rtllib_frag_entry]], [17 x i32], i16, i16, [6 x i8], %struct.rtllib_network, i32, i32, i32, i32, i16, i16, ptr, i8, [162 x i8], i8, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i8, i16, i16, i32, i32, %struct.tasklet_struct, i64, i8, i16, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i32, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, i8, i8, [5 x ptr], i32, i32, i8, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, i8, %struct.rt_pwr_save_ctrl, %struct.tx_pending, %struct.timer_list, %struct.timer_list, i8, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %union.anon.124, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.rtllib_security = type <{ i16, [4 x i8], [4 x [32 x i8]], i8, i16 }>
%struct.atomic_t = type { i32 }
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %union.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%union.tspec_body = type { %struct.anon.119 }
%struct.anon.119 = type { %union.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%union.qos_tsinfo = type { %struct.anon.120 }
%struct.anon.120 = type { i8, i8, i8, i8 }
%union.qos_tclas = type { %struct._TYPE1_IPV6 }
%struct._TYPE1_IPV6 = type { i8, i8, i8, i8, [16 x i8], [16 x i8], i16, i16, [3 x i8] }
%struct.ba_record = type { %struct.timer_list, i8, i8, %union.ba_param_set, i16, %union.sequence_control }
%union.ba_param_set = type { i16 }
%union.sequence_control = type { i16 }
%struct.rx_ts_record = type { %struct.ts_common_info, i16, i16, %struct.list_head, %struct.timer_list, %struct.ba_record, i16, i8, i8 }
%struct.rx_reorder_entry = type { %struct.list_head, i16, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtllib_softmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rt_intel_promisc_mode = type { i8, i8 }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.sw_cam_table = type { [6 x i8], i8, [16 x i8], i16, i8, i8 }
%struct.rt_pmkid_list = type { [6 x i8], [16 x i8], [33 x i8], i8 }
%struct.rtllib_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.rtllib_network = type { [6 x i8], i8, [33 x i8], i8, [33 x i8], i8, %struct.rtllib_qos_data, i8, i8, i8, [2 x i8], i8, i8, [6 x i8], i8, i8, %struct.rtllib_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i32, [64 x i8], i32, [256 x i8], i32, %struct.rtllib_tim_parameters, i8, i8, i64, i8, [4 x %struct.rtllib_wmm_ac_param], i8, i16, [255 x i8], %struct.bss_ht, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head }
%struct.rtllib_qos_data = type { %struct.rtllib_qos_parameters, i32, i32, i32, i8, i8 }
%struct.rtllib_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.rtllib_rx_stats = type { i64, i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, i16, i16, i16, i16, i8, i8, i16 }
%struct.rtllib_tim_parameters = type { i8, i8 }
%struct.rtllib_wmm_ac_param = type { i8, i8, i16 }
%struct.bss_ht = type { i8, [32 x i8], i16, [32 x i8], i16, i32, i32, i8, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.123, i32 }
%union.anon.123 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.bandwidth_autoswitch = type { i32, i32, i8, i8 }
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i32, i8, i8, i8 }
%struct.rt_pwr_save_ctrl = type { i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8 }
%struct.tx_pending = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd] }
%struct.sw_chnl_cmd = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }

@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@rtl92e_send_cmd_pkt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 24, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017rtl819xE:%s(),buffer_len is %d\0A\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl92e_send_cmd_pkt\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c\00", [46 x i8] zeroinitializer }, align 32
@rtl92e_send_cmd_pkt._entry_ptr = internal global ptr @rtl92e_send_cmd_pkt._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [53 x i8] c"../drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 24, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @rtl92e_send_cmd_pkt._entry, ptr @rtl92e_send_cmd_pkt._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_send_cmd_pkt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92e_send_cmd_pkt(ptr noundef %dev, i32 noundef %type, ptr nocapture noundef readonly %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %0 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %len) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp12 = icmp eq i32 %type, 1
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %conv28 = trunc i32 %type to i8
  %bf.value = shl i8 %conv28, 6
  %bf.value.masked = and i8 %bf.value, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp45 = icmp eq i32 %type, 0
  br label %do.body5

do.body5:                                         ; preds = %if.end64.do.body5_crit_edge, %do.end4
  %frag_offset.0 = phi i32 [ 0, %do.end4 ], [ %add69, %if.end64.do.body5_crit_edge ]
  %data.addr.0 = phi ptr [ %data, %do.end4 ], [ %add.ptr66, %if.end64.do.body5_crit_edge ]
  %conv = and i32 %frag_offset.0, 65535
  %sub = sub i32 %len, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 3192, i32 %sub)
  %cmp = icmp ugt i32 %sub, 3192
  %1 = tail call i32 @llvm.umin.i32(i32 %sub, i32 3192)
  %2 = trunc i32 %1 to i16
  %bLastIniPkt.0 = select i1 %cmp, i8 0, i8 -128
  br i1 %cmp12, label %if.then14, label %if.else18

if.then14:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtllib, align 8
  %tx_headroom = getelementptr inbounds %struct.rtllib_device, ptr %4, i32 0, i32 61
  %5 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_headroom, align 8
  %add = add nuw nsw i32 %1, 4
  %add16 = add i32 %add, %6
  br label %if.end22

if.else18:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %add20 = add nuw nsw i32 %1, 4
  br label %if.end22

if.end22:                                         ; preds = %if.else18, %if.then14
  %add20.sink = phi i32 [ %add20, %if.else18 ], [ %add16, %if.then14 ]
  %call.i.i115 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add20.sink, i32 noundef 2592) #4
  %tobool23.not = icmp eq ptr %call.i.i115, null
  br i1 %tobool23.not, label %if.end22.Failed_crit_edge, label %if.end25

if.end22.Failed_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %Failed

if.end25:                                         ; preds = %if.end22
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i115, i32 0, i32 3
  %7 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %cb, align 8
  %add.ptr = getelementptr %struct.sk_buff, ptr %call.i.i115, i32 0, i32 3, i32 8
  %queue_index = getelementptr %struct.sk_buff, ptr %call.i.i115, i32 0, i32 3, i32 13
  %8 = ptrtoint ptr %queue_index to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %queue_index, align 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %add.ptr, align 2
  %bf.clear = and i8 %bf.load, 63
  %bf.clear32 = or i8 %bLastIniPkt.0, %bf.value.masked
  %bf.set33 = or i8 %bf.clear32, %bf.clear
  store i8 %bf.set33, ptr %add.ptr, align 2
  br i1 %cmp12, label %if.then36, label %if.else40

if.then36:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %pkt_size = getelementptr %struct.sk_buff, ptr %call.i.i115, i32 0, i32 3, i32 26
  %10 = ptrtoint ptr %pkt_size to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %2, ptr %pkt_size, align 2
  %11 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtllib, align 8
  %tx_headroom38 = getelementptr inbounds %struct.rtllib_device, ptr %12, i32 0, i32 61
  %13 = ptrtoint ptr %tx_headroom38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_headroom38, align 8
  %call39 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i115, i32 noundef %14) #4
  %15 = ptrtoint ptr %call39 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 1302123111085380114, ptr %call39, align 4
  br label %if.end41

if.else40:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %txbuf_size = getelementptr %struct.sk_buff, ptr %call.i.i115, i32 0, i32 3, i32 14
  %16 = ptrtoint ptr %txbuf_size to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %2, ptr %txbuf_size, align 2
  br label %if.end41

if.end41:                                         ; preds = %if.else40, %if.then36
  %call43 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i115, i32 noundef %1) #4
  %17 = call ptr @memcpy(ptr %call43, ptr %data.addr.0, i32 %1)
  br i1 %cmp45, label %land.lhs.true, label %if.end41.if.else61_crit_edge

if.end41.if.else61_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else61

land.lhs.true:                                    ; preds = %if.end41
  %18 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rtllib, align 8
  %check_nic_enough_desc = getelementptr inbounds %struct.rtllib_device, ptr %19, i32 0, i32 192
  %20 = ptrtoint ptr %check_nic_enough_desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %check_nic_enough_desc, align 4
  %call48 = tail call signext i16 %21(ptr noundef %dev, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call48)
  %tobool49.not = icmp eq i16 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true.if.then57_crit_edge, label %lor.lhs.false

land.lhs.true.if.then57_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then57

lor.lhs.false:                                    ; preds = %land.lhs.true
  %22 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rtllib, align 8
  %arrayidx = getelementptr %struct.rtllib_device, ptr %23, i32 0, i32 141, i32 5
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %25, %arrayidx
  br i1 %cmp.i.not, label %lor.lhs.false53, label %lor.lhs.false.if.then57_crit_edge

lor.lhs.false.if.then57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then57

lor.lhs.false53:                                  ; preds = %lor.lhs.false
  %queue_stop = getelementptr inbounds %struct.rtllib_device, ptr %23, i32 0, i32 117
  %26 = ptrtoint ptr %queue_stop to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %queue_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool56.not = icmp eq i16 %27, 0
  br i1 %tobool56.not, label %lor.lhs.false53.if.else61_crit_edge, label %lor.lhs.false53.if.then57_crit_edge

lor.lhs.false53.if.then57_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then57

lor.lhs.false53.if.else61_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else61

if.then57:                                        ; preds = %lor.lhs.false53.if.then57_crit_edge, %lor.lhs.false.if.then57_crit_edge, %land.lhs.true.if.then57_crit_edge
  %28 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rtllib, align 8
  %arrayidx60 = getelementptr %struct.rtllib_device, ptr %29, i32 0, i32 141, i32 5
  tail call void @skb_queue_tail(ptr noundef %arrayidx60, ptr noundef nonnull %call.i.i115) #4
  br label %if.end64

if.else61:                                        ; preds = %lor.lhs.false53.if.else61_crit_edge, %if.end41.if.else61_crit_edge
  %30 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rtllib, align 8
  %softmac_hard_start_xmit = getelementptr inbounds %struct.rtllib_device, ptr %31, i32 0, i32 177
  %32 = ptrtoint ptr %softmac_hard_start_xmit to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %softmac_hard_start_xmit, align 8
  %call63 = tail call i32 %33(ptr noundef nonnull %call.i.i115, ptr noundef %dev) #4
  br label %if.end64

if.end64:                                         ; preds = %if.else61, %if.then57
  %add.ptr66 = getelementptr i8, ptr %data.addr.0, i32 %1
  %add69 = add nuw nsw i32 %1, %conv
  %conv72 = and i32 %add69, 65535
  %cmp73 = icmp ult i32 %conv72, %len
  br i1 %cmp73, label %if.end64.do.body5_crit_edge, label %do.end75

if.end64.do.body5_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5

do.end75:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 253, i8 noundef zeroext 32) #4
  br label %Failed

Failed:                                           ; preds = %do.end75, %if.end22.Failed_crit_edge
  %34 = xor i1 %tobool23.not, true
  ret i1 %34
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_writeb(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c", i32 24, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl92e_send_cmd_pkt._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl92e_send_cmd_pkt._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
