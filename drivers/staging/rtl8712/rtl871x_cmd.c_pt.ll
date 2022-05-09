; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl871x_cmd.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl871x_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.evt_priv = type { %struct.__queue, i8, ptr, ptr, i32, %struct.tasklet_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.99, i32 }
%struct.atomic_t = type { i32 }
%union.anon.99 = type { ptr }
%struct._adapter = type { %struct.dvobj_priv, %struct.mlme_priv, %struct.cmd_priv, %struct.evt_priv, ptr, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.wlan_acl_pool, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.hal_priv, %struct.led_priv, %struct.mp_priv, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.net_device_stats, %struct.iw_statistics, i32, %struct.work_struct, i8, %struct.spinlock, ptr, ptr, %struct.mutex, %struct.completion }
%struct.dvobj_priv = type { ptr, i32, i8, ptr, ptr, ptr }
%struct.mlme_priv = type { %struct.spinlock, %struct.spinlock, i32, i8, ptr, ptr, %struct.__queue, %struct.__queue, ptr, i32, i8, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, %struct.sitesurvey_ctrl, %struct.timer_list, i32, i32, %struct.timer_list, %struct.timer_list, %struct.qos_priv, %struct.ht_priv, %struct.timer_list }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.NDIS_802_11_CONFIGURATION, i32, [16 x i8], i32, [768 x i8] }
%struct.NDIS_802_11_CONFIGURATION = type { i32, i32, i32, i32, %struct.NDIS_802_11_CONFIGURATION_FH }
%struct.NDIS_802_11_CONFIGURATION_FH = type { i32, i32, i32, i32 }
%struct.sitesurvey_ctrl = type { i64, i32, i32, %struct.timer_list }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i32, i32, [16 x i8], i32, i32, i32, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xmit_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, i32, i32, %struct.__queue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, i32, ptr, i8, i8, i8, i16, i32, i64, i32, ptr, i8, i8, %struct.tasklet_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32 }
%struct.hw_txqueue = type { i32, i32, i32, i32, [8 x i32], i32, i32, i32 }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, %struct.smooth_rssi_data, %struct.smooth_rssi_data }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.smooth_rssi_data = type { [100 x i32], i32, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i32, i32, [2 x %union.Keytype], [2 x %union.Keytype], [2 x %union.Keytype], %union.pn48, %union.pn48, i8, i8, [512 x i8], i32, i8, i8, %struct.timer_list, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.NDIS_802_11_WEP, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.RT_PMKID_LIST], i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.NDIS_802_11_WEP = type { i32, i32, i32, [16 x i8] }
%struct.RT_PMKID_LIST = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.registry_priv = type { i8, i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8 }
%struct.wlan_acl_pool = type { [64 x %struct.wlan_acl_node] }
%struct.wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.work_struct, %struct.work_struct, %struct.timer_list, i8, i32, %struct.spinlock, i32, i8, i8 }
%struct.eeprom_priv = type { i8, i8, i8, [6 x i8], i8, i16, [3 x i8], [15 x i8], [15 x i8], [201 x i8], [256 x i8], i32 }
%struct.hal_priv = type { [10 x ptr], ptr }
%struct.led_priv = type { %struct.LED_871x, %struct.LED_871x, i32, i8, ptr }
%struct.LED_871x = type { ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.timer_list, %struct.work_struct }
%struct.mp_priv = type { ptr, %struct.mp_wiparam, i8, i8, i32, i32, i32, i32, %struct.recv_stat, i32, i32, i8, i8, i8, i32, i16, i16, i8, i8, i32, %struct.wlan_network, [6 x i8], i32, i32, ptr, ptr, %struct.__queue, i32 }
%struct.mp_wiparam = type { i32, i32, i32, i32 }
%struct.recv_stat = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cmd_obj = type { i16, i8, ptr, i32, ptr, i32, %struct.list_head }
%struct.sitesurvey_parm = type { i32, i32, i32, [33 x i8] }
%struct.setdatarate_parm = type { i8, [13 x i8] }
%struct.writeRF_parm = type { i32, i32 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, %struct.stainfo_stats, [16 x %struct.recv_reorder_ctrl], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i32 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16], i32, i64, i32 }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache, i32, i32, i32 }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i32, i32, i64, i32 }
%struct.recv_reorder_ctrl = type { ptr, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.set_stakey_parm = type { [6 x i8], i8, [16 x i8] }
%struct.drvint_cmd_parm = type { i32, i32, ptr }
%struct.set_stakey_rsp = type { [6 x i8], i8, i8 }
%struct.DisconnectCtrlEx_param = type { i8, i8, i8, i8, i32 }

@r8712_init_cmd_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&((&(pcmdpriv->cmd_queue))->lock)\00", [62 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@___asan_gen_.15 = private constant [41 x i8] c"../drivers/staging/rtl8712/rtl871x_cmd.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 51, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 87, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @r8712_init_cmd_priv.__key, ptr @.str, ptr @init_completion.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_cmd_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_init_cmd_priv(ptr noundef %pcmdpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcmdpriv to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pcmdpriv, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %pcmdpriv, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #4
  %terminate_cmdthread_comp = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 1
  %1 = ptrtoint ptr %terminate_cmdthread_comp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %terminate_cmdthread_comp, align 4
  %wait.i42 = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i42, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #4
  %cmd_queue = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2
  %2 = ptrtoint ptr %cmd_queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %cmd_queue, ptr %cmd_queue, align 4
  %prev.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cmd_queue, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @r8712_init_cmd_priv.__key, i16 noundef signext 3) #4
  %cmd_seq = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 3
  %4 = ptrtoint ptr %cmd_seq to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %cmd_seq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2592, i32 noundef 1024) #7
  %cmd_allocated_buf = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 5
  %6 = ptrtoint ptr %cmd_allocated_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %cmd_allocated_buf, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call7.i, i32 512
  %7 = ptrtoint ptr %call7.i to i32
  %and = and i32 %7, 504
  %idx.neg = sub nsw i32 0, %and
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %cmd_buf = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 4
  %8 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr8, ptr %cmd_buf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2592, i32 noundef 516) #7
  %rsp_allocated_buf = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 7
  %10 = ptrtoint ptr %rsp_allocated_buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i41, ptr %rsp_allocated_buf, align 4
  %tobool11.not = icmp eq ptr %call7.i41, null
  br i1 %tobool11.not, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %cmd_allocated_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd_allocated_buf, align 4
  tail call void @kfree(ptr noundef %12) #4
  %13 = ptrtoint ptr %cmd_allocated_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %cmd_allocated_buf, align 4
  br label %return

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr17 = getelementptr i8, ptr %call7.i41, i32 4
  %rsp_buf = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 6
  %14 = ptrtoint ptr %rsp_buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr17, ptr %rsp_buf, align 4
  %cmd_issued_cnt = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 8
  %15 = ptrtoint ptr %cmd_issued_cnt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %cmd_issued_cnt, align 4
  %cmd_done_cnt = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 9
  %16 = ptrtoint ptr %cmd_done_cnt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %cmd_done_cnt, align 4
  %rsp_cnt = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 10
  %17 = ptrtoint ptr %rsp_cnt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rsp_cnt, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then12, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -12, %if.then12 ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_init_evt_priv(ptr nocapture noundef writeonly %pevtpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %event_seq = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 1
  %0 = ptrtoint ptr %event_seq to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %event_seq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 1028) #7
  %evt_allocated_buf = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 3
  %2 = ptrtoint ptr %evt_allocated_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %evt_allocated_buf, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %call7.i, i32 4
  %evt_buf = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 2
  %3 = ptrtoint ptr %evt_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %evt_buf, align 4
  %evt_done_cnt = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 4
  %4 = ptrtoint ptr %evt_done_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %evt_done_cnt, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_evt_priv(ptr nocapture noundef readonly %pevtpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %evt_allocated_buf = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 3
  %0 = ptrtoint ptr %evt_allocated_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %evt_allocated_buf, align 4
  tail call void @kfree(ptr noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_cmd_priv(ptr noundef readonly %pcmdpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pcmdpriv, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cmd_allocated_buf = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 5
  %0 = ptrtoint ptr %cmd_allocated_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_allocated_buf, align 4
  tail call void @kfree(ptr noundef %1) #4
  %rsp_allocated_buf = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 7
  %2 = ptrtoint ptr %rsp_allocated_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsp_allocated_buf, align 4
  tail call void @kfree(ptr noundef %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_enqueue_cmd(ptr noundef %pcmdpriv, ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %padapter = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 11
  %0 = ptrtoint ptr %padapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %padapter, align 4
  %eeprompriv = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %eeprompriv to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eeprompriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  %tobool1.not = icmp eq ptr %obj, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %entry
  %cmd_queue = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2
  %lock = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %obj, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %cmd_queue) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end3.list_add_tail.exit_crit_edge

if.end3.list_add_tail.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cmd_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cmd_obj, ptr %obj, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end3.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #4
  tail call void @complete(ptr noundef %pcmdpriv) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r8712_dequeue_cmd(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.__queue, ptr %queue, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp11.not = icmp eq ptr %1, %queue
  %add.ptr = getelementptr i8, ptr %1, i32 -20
  %spec.select = select i1 %cmp11.not, ptr null, ptr %add.ptr
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %list = getelementptr inbounds %struct.cmd_obj, ptr %spec.select, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.cmd_obj, ptr %spec.select, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.cmd_obj, ptr %spec.select, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_enqueue_cmd_ex(ptr noundef %pcmdpriv, ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %obj, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %padapter = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 11
  %0 = ptrtoint ptr %padapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %padapter, align 4
  %eeprompriv = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %eeprompriv to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eeprompriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cmd_queue = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2
  %lock = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %obj, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %cmd_queue) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end3.list_add_tail.exit_crit_edge

if.end3.list_add_tail.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cmd_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cmd_obj, ptr %obj, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end3.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #4
  tail call void @complete(ptr noundef %pcmdpriv) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_cmd_obj(ptr noundef %pcmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcmd to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pcmd, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %if.then [
    i16 14, label %entry.if.end_crit_edge
    i16 16, label %entry.if.end_crit_edge19
  ]

entry.if.end_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %3 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parmbuf, align 4
  tail call void @kfree(ptr noundef %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge19
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 4
  %5 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rsp, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then6:                                         ; preds = %if.end
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %7 = ptrtoint ptr %rspsz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rspsz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7.not = icmp eq i32 %8, 0
  br i1 %cmp7.not, label %if.then6.if.end12_crit_edge, label %if.then9

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %6) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then6.if.end12_crit_edge, %if.end.if.end12_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @r8712_sitesurvey_cmd(ptr noundef %padapter, ptr noundef readonly %pssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i48 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 48) #7
  %tobool2.not = icmp eq ptr %call7.i48, null
  br i1 %tobool2.not, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

do.body:                                          ; preds = %if.end
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 8
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 18, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i48, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 48, ptr %cmdsz, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %8 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rspsz, align 8
  %bsslimit = getelementptr inbounds %struct.sitesurvey_parm, ptr %call7.i48, i32 0, i32 1
  %9 = ptrtoint ptr %bsslimit to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 805306368, ptr %bsslimit, align 4
  %passive_mode = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 10
  %10 = ptrtoint ptr %passive_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %passive_mode, align 8
  %conv = zext i8 %11 to i32
  %12 = shl nuw i32 %conv, 24
  %13 = ptrtoint ptr %call7.i48 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call7.i48, align 8
  %ss_ssidlen = getelementptr inbounds %struct.sitesurvey_parm, ptr %call7.i48, i32 0, i32 2
  %ss_ssid = getelementptr inbounds %struct.sitesurvey_parm, ptr %call7.i48, i32 0, i32 3
  %tobool6.not = icmp eq ptr %pssid, null
  %14 = call ptr @memset(ptr %ss_ssidlen, i32 0, i32 37)
  br i1 %tobool6.not, label %do.body.if.end15_crit_edge, label %land.lhs.true

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

land.lhs.true:                                    ; preds = %do.body
  %15 = ptrtoint ptr %pssid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pssid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not = icmp eq i32 %16, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end15_crit_edge, label %if.then8

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 32)
  %Ssid = getelementptr inbounds %struct.ndis_802_11_ssid, ptr %pssid, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %ss_ssid, ptr %Ssid, i32 %17)
  %19 = tail call i32 @llvm.bswap.i32(i32 %17)
  %20 = ptrtoint ptr %ss_ssidlen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ss_ssidlen, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %land.lhs.true.if.end15_crit_edge, %do.body.if.end15_crit_edge
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_state.i, align 8
  %or.i = or i32 %22, 2048
  store i32 %or.i, ptr %fw_state.i, align 8
  %padapter.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 11
  %23 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %padapter.i, align 4
  %eeprompriv.i = getelementptr inbounds %struct._adapter, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %eeprompriv.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %eeprompriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.not = icmp eq i8 %26, 0
  br i1 %tobool.not.i.not, label %if.end3.i, label %if.end15.r8712_enqueue_cmd.exit_crit_edge

if.end15.r8712_enqueue_cmd.exit_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %r8712_enqueue_cmd.exit

if.end3.i:                                        ; preds = %if.end15
  %cmd_queue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2
  %lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %28, ptr noundef %cmd_queue.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cmd_queue.i, ptr %list, align 4
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev.i, align 8
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list, ptr %28, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #4
  tail call void @complete(ptr noundef %cmdpriv) #4
  br label %r8712_enqueue_cmd.exit

r8712_enqueue_cmd.exit:                           ; preds = %list_add_tail.exit.i, %if.end15.r8712_enqueue_cmd.exit_crit_edge
  %scan_to_timer = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %33, 450
  %call17 = tail call i32 @mod_timer(ptr noundef %scan_to_timer, i32 noundef %add) #4
  %LedControlHandler = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 4
  %34 = ptrtoint ptr %LedControlHandler to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %LedControlHandler, align 4
  tail call void %35(ptr noundef %padapter, i32 noundef 6) #4
  %blnEnableRxFF0Filter = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 30
  %36 = ptrtoint ptr %blnEnableRxFF0Filter to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %blnEnableRxFF0Filter, align 4
  br label %cleanup

cleanup:                                          ; preds = %r8712_enqueue_cmd.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %r8712_enqueue_cmd.exit ], [ 0, %if.then3 ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_setdatarate_cmd(ptr noundef %padapter, ptr nocapture noundef readonly %rateset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 14) #7
  %tobool2.not = icmp eq ptr %call7.i18, null
  br i1 %tobool2.not, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

do.body:                                          ; preds = %if.end
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 8
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 27, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i18, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 14, ptr %cmdsz, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %8 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rspsz, align 8
  %9 = ptrtoint ptr %call7.i18 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 5, ptr %call7.i18, align 8
  %datarates = getelementptr inbounds %struct.setdatarate_parm, ptr %call7.i18, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %datarates, ptr %rateset, i32 13)
  %padapter.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 11
  %11 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %padapter.i, align 4
  %eeprompriv.i = getelementptr inbounds %struct._adapter, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %eeprompriv.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %eeprompriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.not = icmp eq i8 %14, 0
  br i1 %tobool.not.i.not, label %if.end3.i, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %do.body
  %cmd_queue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2
  %lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %16, ptr noundef %cmd_queue.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cmd_queue.i, ptr %list, align 4
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev.i, align 8
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list, ptr %16, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #4
  tail call void @complete(ptr noundef %cmdpriv) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %do.body.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %list_add_tail.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_set_chplan_cmd(ptr noundef %padapter, i32 noundef %chplan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 4) #7
  %tobool2.not = icmp eq ptr %call7.i17, null
  br i1 %tobool2.not, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

do.body:                                          ; preds = %if.end
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 8
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 60, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i17, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %cmdsz, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %8 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rspsz, align 8
  %9 = ptrtoint ptr %call7.i17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %chplan, ptr %call7.i17, align 8
  %padapter.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 11
  %10 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %padapter.i, align 4
  %eeprompriv.i = getelementptr inbounds %struct._adapter, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %eeprompriv.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %eeprompriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.not = icmp eq i8 %13, 0
  br i1 %tobool.not.i.not, label %if.end3.i, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %do.body
  %cmd_queue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2
  %lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %15, ptr noundef %cmd_queue.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cmd_queue.i, ptr %list, align 4
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev.i, align 8
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list, ptr %15, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #4
  tail call void @complete(ptr noundef %cmdpriv) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %do.body.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_setrfreg_cmd(ptr noundef %padapter, i8 noundef zeroext %offset, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 8) #7
  %tobool2.not = icmp eq ptr %call7.i19, null
  br i1 %tobool2.not, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

do.body:                                          ; preds = %if.end
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 8
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 5, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i19, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %cmdsz, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %8 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rspsz, align 8
  %conv = zext i8 %offset to i32
  %9 = ptrtoint ptr %call7.i19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %call7.i19, align 8
  %value = getelementptr inbounds %struct.writeRF_parm, ptr %call7.i19, i32 0, i32 1
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %val, ptr %value, align 4
  %padapter.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 11
  %11 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %padapter.i, align 4
  %eeprompriv.i = getelementptr inbounds %struct._adapter, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %eeprompriv.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %eeprompriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.not = icmp eq i8 %14, 0
  br i1 %tobool.not.i.not, label %if.end3.i, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %do.body
  %cmd_queue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2
  %lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %16, ptr noundef %cmd_queue.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cmd_queue.i, ptr %list, align 4
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev.i, align 8
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list, ptr %16, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #4
  tail call void @complete(ptr noundef %cmdpriv) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %do.body.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %list_add_tail.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_getrfreg_cmd(ptr noundef %padapter, i8 noundef zeroext %offset, ptr noundef %pval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 1) #7
  %tobool2.not = icmp eq ptr %call7.i18, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 8
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i18, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %cmdsz, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pval, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %8 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %rspsz, align 8
  %9 = ptrtoint ptr %call7.i18 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %offset, ptr %call7.i18, align 8
  %padapter.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 11
  %10 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %padapter.i, align 4
  %eeprompriv.i = getelementptr inbounds %struct._adapter, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %eeprompriv.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %eeprompriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.not = icmp eq i8 %13, 0
  br i1 %tobool.not.i.not, label %if.end3.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %if.end4
  %cmd_queue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2
  %lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %15, ptr noundef %cmd_queue.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cmd_queue.i, ptr %list, align 4
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev.i, align 8
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list, ptr %15, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #4
  tail call void @complete(ptr noundef %cmdpriv) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %if.end4.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %list_add_tail.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_getbbrfreg_cmdrsp_callback(ptr nocapture noundef writeonly %padapter, ptr noundef %pcmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %0 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parmbuf, align 4
  tail call void @kfree(ptr noundef %1) #4
  tail call void @kfree(ptr noundef %pcmd) #4
  %workparam = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %workparam to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %workparam, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_readtssi_cmdrsp_callback(ptr nocapture noundef writeonly %padapter, ptr noundef %pcmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %0 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parmbuf, align 4
  tail call void @kfree(ptr noundef %1) #4
  tail call void @kfree(ptr noundef %pcmd) #4
  %workparam = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %workparam to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %workparam, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_createbss_cmd(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %LedControlHandler = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 4
  %0 = ptrtoint ptr %LedControlHandler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %LedControlHandler, align 4
  tail call void %1(ptr noundef %padapter, i32 noundef 8) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_network = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 33
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 8
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 16, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev_network, ptr %parmbuf, align 4
  %call1 = tail call i32 @r8712_get_wlan_bssid_ex_sz(ptr noundef %dev_network) #4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %7 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call1, ptr %cmdsz, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %8 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %9 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rspsz, align 8
  %10 = ptrtoint ptr %dev_network to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call1, ptr %dev_network, align 4
  %padapter.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 11
  %11 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %padapter.i, align 4
  %eeprompriv.i = getelementptr inbounds %struct._adapter, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %eeprompriv.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %eeprompriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.not = icmp eq i8 %14, 0
  br i1 %tobool.not.i.not, label %if.end3.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %if.end
  %cmd_queue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2
  %lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %16, ptr noundef %cmd_queue.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cmd_queue.i, ptr %list, align 4
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev.i, align 8
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list, ptr %16, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #4
  tail call void @complete(ptr noundef %cmdpriv) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %list_add_tail.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_get_wlan_bssid_ex_sz(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_joinbss_cmd(ptr noundef %padapter, ptr noundef %pnetwork) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  %qospriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 20
  %network = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6
  %InfrastructureMode = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %InfrastructureMode, align 4
  %LedControlHandler = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %LedControlHandler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %LedControlHandler, align 4
  tail call void %3(ptr noundef %padapter, i32 noundef 8) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2592, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i, align 8
  %and.i = and i32 %6, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %7 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %1, label %if.then3.if.end8_crit_edge [
    i32 0, label %if.then3.if.end8.sink.split_crit_edge
    i32 1, label %sw.bb4
  ]

if.then3.if.end8.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.sink.split

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

sw.bb4:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.sink.split

if.end8.sink.split:                               ; preds = %sw.bb4, %if.then3.if.end8.sink.split_crit_edge
  %.sink244 = phi i32 [ 8, %sw.bb4 ], [ 32, %if.then3.if.end8.sink.split_crit_edge ]
  %8 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_state.i, align 8
  %or = or i32 %9, %.sink244
  store i32 %or, ptr %fw_state.i, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %sec_bss = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26
  %10 = call ptr @memcpy(ptr %sec_bss, ptr %network, i32 884)
  %IELength = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26, i32 10
  %11 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %IELength, align 4
  %conv10 = trunc i32 %12 to i8
  %authenticator_ie = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 31
  %13 = ptrtoint ptr %authenticator_ie to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10, ptr %authenticator_ie, align 4
  %sub = add i32 %12, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub)
  %cmp12 = icmp ult i32 %sub, 255
  %arrayidx16 = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 8, i32 31, i32 1
  %arrayidx17 = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26, i32 11, i32 12
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %14 = call ptr @memcpy(ptr %arrayidx16, ptr %arrayidx17, i32 %sub)
  br label %if.end24

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %15 = call ptr @memcpy(ptr %arrayidx16, ptr %arrayidx17, i32 255)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then14
  %16 = ptrtoint ptr %IELength to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %IELength, align 4
  %assoc_by_bssid = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 16
  %17 = ptrtoint ptr %assoc_by_bssid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %assoc_by_bssid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool26.not = icmp eq i32 %18, 0
  br i1 %tobool26.not, label %if.then27, label %if.end24.if.end31_crit_edge

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %assoc_bssid = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 12
  %MacAddress = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %MacAddress to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %MacAddress, align 4
  %21 = ptrtoint ptr %assoc_bssid to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %assoc_bssid, align 4
  %add.ptr.i = getelementptr %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 1, i32 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 1, i32 12, i32 4
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr1.i, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end24.if.end31_crit_edge
  %IEs33 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 11
  %IEs35 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26, i32 11
  %IELength38 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 10
  %25 = ptrtoint ptr %IELength38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %IELength38, align 4
  %call39 = tail call i32 @r8712_restruct_sec_ie(ptr noundef %padapter, ptr noundef %IEs33, ptr noundef %IEs35, i32 noundef %26) #4
  %27 = ptrtoint ptr %IELength to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call39, ptr %IELength, align 4
  %28 = ptrtoint ptr %qospriv to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %qospriv, align 4
  %wmm_enable = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 26
  %29 = ptrtoint ptr %wmm_enable to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %wmm_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool41.not = icmp eq i8 %30, 0
  br i1 %tobool41.not, label %if.end31.if.end61_crit_edge, label %if.then42

if.end31.if.end61_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.then42:                                        ; preds = %if.end31
  %31 = ptrtoint ptr %IELength38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %IELength38, align 4
  %call51 = tail call i32 @r8712_restruct_wmm_ie(ptr noundef %padapter, ptr noundef %IEs33, ptr noundef %IEs35, i32 noundef %32, i32 noundef %call39) #4
  %33 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %IELength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %call51)
  %cmp53.not = icmp eq i32 %34, %call51
  br i1 %cmp53.not, label %if.then42.if.end60_crit_edge, label %if.then55

if.then42.if.end60_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then55:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %IELength to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call51, ptr %IELength, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.then42.if.end60_crit_edge
  %storemerge = phi i32 [ 1, %if.then55 ], [ 0, %if.then42.if.end60_crit_edge ]
  %36 = ptrtoint ptr %qospriv to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %storemerge, ptr %qospriv, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end31.if.end61_crit_edge
  %ht_enable = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 34
  %37 = ptrtoint ptr %ht_enable to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ht_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool62.not = icmp eq i8 %38, 0
  br i1 %tobool62.not, label %if.end61.if.end82_crit_edge, label %if.then63

if.end61.if.end82_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

if.then63:                                        ; preds = %if.end61
  %PrivacyAlgrthm = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %PrivacyAlgrthm, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %40, label %if.then71 [
    i32 1, label %if.then63.if.end82_crit_edge
    i32 5, label %if.then63.if.end82_crit_edge245
  ]

if.then63.if.end82_crit_edge245:                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

if.then63.if.end82_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

if.then71:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %IELength38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %IELength38, align 4
  %call80 = tail call i32 @r8712_restructure_ht_ie(ptr noundef %padapter, ptr noundef %IEs33, ptr noundef %IEs35, i32 noundef %43, ptr noundef %IELength) #4
  br label %if.end82

if.end82:                                         ; preds = %if.then71, %if.then63.if.end82_crit_edge, %if.then63.if.end82_crit_edge245, %if.end61.if.end82_crit_edge
  %44 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %IELength, align 4
  %conv84 = trunc i32 %45 to i8
  %supplicant_ie = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 32
  %46 = ptrtoint ptr %supplicant_ie to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv84, ptr %supplicant_ie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %45)
  %cmp87 = icmp ult i32 %45, 255
  %arrayidx91 = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 8, i32 32, i32 1
  br i1 %cmp87, label %if.then89, label %if.else95

if.then89:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  %47 = call ptr @memcpy(ptr %arrayidx91, ptr %IEs35, i32 %45)
  br label %if.end100

if.else95:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  %48 = call ptr @memcpy(ptr %arrayidx91, ptr %IEs35, i32 255)
  br label %if.end100

if.end100:                                        ; preds = %if.else95, %if.then89
  %call101 = tail call i32 @r8712_get_wlan_bssid_ex_sz(ptr noundef %sec_bss) #4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %49 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call101, ptr %cmdsz, align 8
  %50 = ptrtoint ptr %sec_bss to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sec_bss, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %53 = ptrtoint ptr %sec_bss to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %sec_bss, align 4
  %Ssid = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26, i32 3
  %54 = ptrtoint ptr %Ssid to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %Ssid, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = ptrtoint ptr %Ssid to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %Ssid, align 4
  %Privacy = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26, i32 4
  %58 = ptrtoint ptr %Privacy to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %Privacy, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %61 = ptrtoint ptr %Privacy to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %Privacy, align 4
  %Rssi = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26, i32 5
  %62 = ptrtoint ptr %Rssi to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %Rssi, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %65 = ptrtoint ptr %Rssi to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %Rssi, align 4
  %NetworkTypeInUse = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26, i32 6
  %66 = ptrtoint ptr %NetworkTypeInUse to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %NetworkTypeInUse, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %69 = ptrtoint ptr %NetworkTypeInUse to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %NetworkTypeInUse, align 4
  %Configuration = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26, i32 7
  %ATIMWindow = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26, i32 7, i32 2
  %70 = ptrtoint ptr %ATIMWindow to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ATIMWindow, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %73 = ptrtoint ptr %ATIMWindow to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %ATIMWindow, align 4
  %BeaconPeriod = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26, i32 7, i32 1
  %74 = ptrtoint ptr %BeaconPeriod to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %BeaconPeriod, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %77 = ptrtoint ptr %BeaconPeriod to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %BeaconPeriod, align 4
  %DSConfig = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26, i32 7, i32 3
  %78 = ptrtoint ptr %DSConfig to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %DSConfig, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %81 = ptrtoint ptr %DSConfig to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %DSConfig, align 4
  %FHConfig = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26, i32 7, i32 4
  %DwellTime = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26, i32 7, i32 4, i32 3
  %82 = ptrtoint ptr %DwellTime to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %DwellTime, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %85 = ptrtoint ptr %DwellTime to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %DwellTime, align 4
  %HopPattern = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26, i32 7, i32 4, i32 1
  %86 = ptrtoint ptr %HopPattern to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %HopPattern, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %89 = ptrtoint ptr %HopPattern to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %HopPattern, align 4
  %HopSet = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26, i32 7, i32 4, i32 2
  %90 = ptrtoint ptr %HopSet to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %HopSet, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  %93 = ptrtoint ptr %HopSet to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %HopSet, align 4
  %94 = ptrtoint ptr %FHConfig to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %FHConfig, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  %97 = ptrtoint ptr %FHConfig to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %FHConfig, align 4
  %98 = ptrtoint ptr %Configuration to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %Configuration, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  %101 = ptrtoint ptr %Configuration to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %Configuration, align 4
  %InfrastructureMode140 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 26, i32 8
  %102 = ptrtoint ptr %InfrastructureMode140 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %InfrastructureMode140, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  %105 = ptrtoint ptr %InfrastructureMode140 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %InfrastructureMode140, align 4
  %106 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %IELength, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  %109 = ptrtoint ptr %IELength to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %IELength, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %110 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %111 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %list, ptr %prev.i, align 8
  %112 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 14, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %113 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %sec_bss, ptr %parmbuf, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %114 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %115 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %rspsz, align 8
  %padapter.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 11
  %116 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %padapter.i, align 4
  %eeprompriv.i = getelementptr inbounds %struct._adapter, ptr %117, i32 0, i32 12
  %118 = ptrtoint ptr %eeprompriv.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %eeprompriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i243.not = icmp eq i8 %119, 0
  br i1 %tobool.not.i243.not, label %if.end3.i, label %if.end100.cleanup_crit_edge

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %if.end100
  %cmd_queue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2
  %lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %121, ptr noundef %cmd_queue.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %122 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %list, ptr %prev.i.i, align 4
  %123 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %cmd_queue.i, ptr %list, align 4
  %124 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev.i, align 8
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %list, ptr %121, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #4
  tail call void @complete(ptr noundef %cmdpriv) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %if.end100.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end100.cleanup_crit_edge ], [ 0, %list_add_tail.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_restruct_sec_ie(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_restruct_wmm_ie(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_restructure_ht_ie(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_disassoc_cmd(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 4) #7
  %tobool2.not = icmp eq ptr %call7.i16, null
  br i1 %tobool2.not, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

do.body:                                          ; preds = %if.end
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 8
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 15, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i16, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %cmdsz, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %8 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rspsz, align 8
  %padapter.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 11
  %9 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %padapter.i, align 4
  %eeprompriv.i = getelementptr inbounds %struct._adapter, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %eeprompriv.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %eeprompriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.not = icmp eq i8 %12, 0
  br i1 %tobool.not.i.not, label %if.end3.i, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %do.body
  %cmd_queue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2
  %lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %14, ptr noundef %cmd_queue.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cmd_queue.i, ptr %list, align 4
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev.i, align 8
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list, ptr %14, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #4
  tail call void @complete(ptr noundef %cmdpriv) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %do.body.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_setopmode_cmd(ptr noundef %padapter, i32 noundef %networktype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 4) #7
  %tobool2.not = icmp eq ptr %call7.i17, null
  br i1 %tobool2.not, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

do.body:                                          ; preds = %if.end
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 8
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 17, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i17, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %cmdsz, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %8 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rspsz, align 8
  %conv = trunc i32 %networktype to i8
  %9 = ptrtoint ptr %call7.i17 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %call7.i17, align 8
  %padapter.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 11
  %10 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %padapter.i, align 4
  %eeprompriv.i = getelementptr inbounds %struct._adapter, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %eeprompriv.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %eeprompriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.not = icmp eq i8 %13, 0
  br i1 %tobool.not.i.not, label %if.end3.i, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %do.body
  %cmd_queue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2
  %lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %15, ptr noundef %cmd_queue.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cmd_queue.i, ptr %list, align 4
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev.i, align 8
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list, ptr %15, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #4
  tail call void @complete(ptr noundef %cmdpriv) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %do.body.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_setstakey_cmd(ptr noundef %padapter, ptr nocapture noundef readonly %psta, i8 noundef zeroext %unicast_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  %securitypriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i64 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 23) #7
  %tobool2.not = icmp eq ptr %call7.i64, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 8) #7
  %tobool6.not = icmp eq ptr %call7.i65, null
  br i1 %tobool6.not, label %if.then7, label %do.body

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  tail call void @kfree(ptr noundef nonnull %call7.i64) #4
  br label %cleanup

do.body:                                          ; preds = %if.end4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 8
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 21, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i64, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %7 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 23, ptr %cmdsz, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %8 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i65, ptr %rsp, align 4
  %9 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %rspsz, align 8
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 9
  %10 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwaddr, align 4
  %12 = ptrtoint ptr %call7.i64 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call7.i64, align 8
  %add.ptr.i = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 9, i32 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7.i64, i32 4
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr1.i, align 4
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_state.i, align 8
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.not = icmp eq i32 %18, 0
  br i1 %tobool13.not, label %do.body15, label %if.then14

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %PrivacyAlgrthm = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 1
  br label %if.end24.sink.split

do.body15:                                        ; preds = %do.body
  %19 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %securitypriv, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %20, label %do.body15.if.end24_crit_edge [
    i32 0, label %do.body15.sw.bb_crit_edge
    i32 1, label %do.body15.sw.bb_crit_edge67
    i32 3, label %do.body15.sw.bb_crit_edge68
    i32 2, label %sw.bb19
  ]

do.body15.sw.bb_crit_edge68:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

do.body15.sw.bb_crit_edge67:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

do.body15.sw.bb_crit_edge:                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

do.body15.if.end24_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

sw.bb:                                            ; preds = %do.body15.sw.bb_crit_edge, %do.body15.sw.bb_crit_edge67, %do.body15.sw.bb_crit_edge68
  %PrivacyAlgrthm16 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 1
  br label %if.end24.sink.split

sw.bb19:                                          ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  %XPrivacy = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 11
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %sw.bb19, %sw.bb, %if.then14
  %PrivacyAlgrthm16.sink = phi ptr [ %PrivacyAlgrthm16, %sw.bb ], [ %XPrivacy, %sw.bb19 ], [ %PrivacyAlgrthm, %if.then14 ]
  %22 = ptrtoint ptr %PrivacyAlgrthm16.sink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %PrivacyAlgrthm16.sink, align 4
  %conv17 = trunc i32 %23 to i8
  %algorithm18 = getelementptr inbounds %struct.set_stakey_parm, ptr %call7.i64, i32 0, i32 1
  %24 = ptrtoint ptr %algorithm18 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv17, ptr %algorithm18, align 2
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %do.body15.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %unicast_key)
  %tobool25.not = icmp eq i8 %unicast_key, 0
  %key28 = getelementptr inbounds %struct.set_stakey_parm, ptr %call7.i64, i32 0, i32 2
  br i1 %tobool25.not, label %if.else27, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %x_UncstKey = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 14
  %25 = call ptr @memcpy(ptr %key28, ptr %x_UncstKey, i32 16)
  br label %if.end29

if.else27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %XGrpKeyid = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 6
  %26 = ptrtoint ptr %XGrpKeyid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %XGrpKeyid, align 8
  %sub = add i32 %27, -1
  %arrayidx = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 8, i32 7, i32 %sub
  %28 = call ptr @memcpy(ptr %key28, ptr %arrayidx, i32 16)
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then26
  %padapter.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 11
  %29 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %padapter.i, align 4
  %eeprompriv.i = getelementptr inbounds %struct._adapter, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %eeprompriv.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %eeprompriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i66.not = icmp eq i8 %32, 0
  br i1 %tobool.not.i66.not, label %if.end3.i, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %if.end29
  %cmd_queue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2
  %lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %34, ptr noundef %cmd_queue.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %cmd_queue.i, ptr %list, align 4
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i, align 8
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %list, ptr %34, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #4
  tail call void @complete(ptr noundef %cmdpriv) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %if.end29.cleanup_crit_edge, %if.then7, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_setMacAddr_cmd(ptr noundef %padapter, ptr nocapture noundef readonly %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 6) #7
  %tobool2.not = icmp eq ptr %call7.i17, null
  br i1 %tobool2.not, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

do.body:                                          ; preds = %if.end
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 8
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 58, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i17, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %cmdsz, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %8 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rspsz, align 8
  %9 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mac_addr, align 4
  %11 = ptrtoint ptr %call7.i17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call7.i17, align 8
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7.i17, i32 4
  %14 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %add.ptr1.i, align 4
  %padapter.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 11
  %15 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %padapter.i, align 4
  %eeprompriv.i = getelementptr inbounds %struct._adapter, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %eeprompriv.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %eeprompriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.not = icmp eq i8 %18, 0
  br i1 %tobool.not.i.not, label %if.end3.i, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %do.body
  %cmd_queue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2
  %lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %20, ptr noundef %cmd_queue.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cmd_queue.i, ptr %list, align 4
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev.i, align 8
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list, ptr %20, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #4
  tail call void @complete(ptr noundef %cmdpriv) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %do.body.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_addbareq_cmd(ptr noundef %padapter, i8 noundef zeroext %tid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 4) #7
  %tobool2.not = icmp eq ptr %call7.i18, null
  br i1 %tobool2.not, label %if.then3, label %if.end.i

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %conv = zext i8 %tid to i32
  %2 = ptrtoint ptr %call7.i18 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %call7.i18, align 8
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 8
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 45, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i18, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %7 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %cmdsz, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %8 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %9 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rspsz, align 8
  %padapter.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 11
  %10 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %padapter.i, align 4
  %eeprompriv.i = getelementptr inbounds %struct._adapter, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %eeprompriv.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %eeprompriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %cmd_queue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2
  %lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %15, ptr noundef %cmd_queue.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cmd_queue.i, ptr %list, align 4
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev.i, align 8
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list, ptr %15, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #4
  tail call void @complete(ptr noundef %cmdpriv) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %if.end.i.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_wdg_wk_cmd(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 12) #7
  %tobool2.not = icmp eq ptr %call7.i19, null
  br i1 %tobool2.not, label %if.then3, label %if.end.i

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %2 = ptrtoint ptr %call7.i19 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %call7.i19, align 8
  %sz = getelementptr inbounds %struct.drvint_cmd_parm, ptr %call7.i19, i32 0, i32 1
  %3 = ptrtoint ptr %sz to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sz, align 4
  %pbuf = getelementptr inbounds %struct.drvint_cmd_parm, ptr %call7.i19, i32 0, i32 2
  %4 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pbuf, align 8
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 8
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 78, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i19, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %9 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %cmdsz, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %10 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %11 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rspsz, align 8
  %padapter.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 11
  %12 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %padapter.i, align 4
  %eeprompriv.i = getelementptr inbounds %struct._adapter, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %eeprompriv.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %eeprompriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not.i = icmp eq i8 %15, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %cmd_queue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2
  %lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %17, ptr noundef %cmd_queue.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cmd_queue.i, ptr %list, align 4
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev.i, align 8
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %list, ptr %17, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #4
  tail call void @complete(ptr noundef %cmdpriv) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %if.end.i.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_survey_cmd_callback(ptr noundef %padapter, ptr noundef %pcmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %res, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #4
  %fw_state.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i.i, align 8
  %4 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.clr_fwstate.exit_crit_edge, label %if.then.i

if.then.clr_fwstate.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %clr_fwstate.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %xor.i = xor i32 %3, 2048
  %5 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %xor.i, ptr %fw_state.i.i, align 8
  br label %clr_fwstate.exit

clr_fwstate.exit:                                 ; preds = %if.then.i, %if.then.clr_fwstate.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call2.i) #4
  br label %if.end

if.end:                                           ; preds = %clr_fwstate.exit, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %pcmd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pcmd, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %7, label %if.then.i3 [
    i16 14, label %if.end.if.end.i_crit_edge
    i16 16, label %if.end.if.end.i_crit_edge5
  ]

if.end.if.end.i_crit_edge5:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i3:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %9 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parmbuf.i, align 4
  tail call void @kfree(ptr noundef %10) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i3, %if.end.if.end.i_crit_edge, %if.end.if.end.i_crit_edge5
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 4
  %11 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rsp.i, align 4
  %tobool.not.i4 = icmp eq ptr %12, null
  br i1 %tobool.not.i4, label %if.end.i.r8712_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.r8712_free_cmd_obj.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %r8712_free_cmd_obj.exit

if.then6.i:                                       ; preds = %if.end.i
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %13 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rspsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp7.not.i = icmp eq i32 %14, 0
  br i1 %cmp7.not.i, label %if.then6.i.r8712_free_cmd_obj.exit_crit_edge, label %if.then9.i

if.then6.i.r8712_free_cmd_obj.exit_crit_edge:     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %r8712_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %12) #4
  br label %r8712_free_cmd_obj.exit

r8712_free_cmd_obj.exit:                          ; preds = %if.then9.i, %if.then6.i.r8712_free_cmd_obj.exit_crit_edge, %if.end.i.r8712_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_disassoc_cmd_callback(ptr noundef %padapter, ptr noundef %pcmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %res, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #4
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 8
  %or.i = or i32 %3, 1
  store i32 %or.i, ptr %fw_state.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call5) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %pcmd to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pcmd, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %5, label %if.then.i [
    i16 14, label %if.end.if.end.i_crit_edge
    i16 16, label %if.end.if.end.i_crit_edge13
  ]

if.end.if.end.i_crit_edge13:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %7 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parmbuf.i, align 4
  tail call void @kfree(ptr noundef %8) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge, %if.end.if.end.i_crit_edge13
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 4
  %9 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rsp.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i.r8712_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.r8712_free_cmd_obj.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %r8712_free_cmd_obj.exit

if.then6.i:                                       ; preds = %if.end.i
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %11 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rspsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7.not.i = icmp eq i32 %12, 0
  br i1 %cmp7.not.i, label %if.then6.i.r8712_free_cmd_obj.exit_crit_edge, label %if.then9.i

if.then6.i.r8712_free_cmd_obj.exit_crit_edge:     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %r8712_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %10) #4
  br label %r8712_free_cmd_obj.exit

r8712_free_cmd_obj.exit:                          ; preds = %if.then9.i, %if.then6.i.r8712_free_cmd_obj.exit_crit_edge, %if.end.i.r8712_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #4
  br label %cleanup

cleanup:                                          ; preds = %r8712_free_cmd_obj.exit, %do.body2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_joinbss_cmd_callback(ptr noundef %padapter, ptr noundef %pcmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %res, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %assoc_timer = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 1
  %call2 = tail call i32 @mod_timer(ptr noundef %assoc_timer, i32 noundef %add) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %pcmd to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pcmd, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %4, label %if.then.i [
    i16 14, label %if.end.if.end.i_crit_edge
    i16 16, label %if.end.if.end.i_crit_edge4
  ]

if.end.if.end.i_crit_edge4:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %6 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parmbuf.i, align 4
  tail call void @kfree(ptr noundef %7) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge, %if.end.if.end.i_crit_edge4
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 4
  %8 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rsp.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i.r8712_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.r8712_free_cmd_obj.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %r8712_free_cmd_obj.exit

if.then6.i:                                       ; preds = %if.end.i
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %10 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rspsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7.not.i = icmp eq i32 %11, 0
  br i1 %cmp7.not.i, label %if.then6.i.r8712_free_cmd_obj.exit_crit_edge, label %if.then9.i

if.then6.i.r8712_free_cmd_obj.exit_crit_edge:     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %r8712_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %9) #4
  br label %r8712_free_cmd_obj.exit

r8712_free_cmd_obj.exit:                          ; preds = %if.then9.i, %if.then6.i.r8712_free_cmd_obj.exit_crit_edge, %if.end.i.r8712_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_createbss_cmd_callback(ptr noundef %padapter, ptr noundef %pcmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %0 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parmbuf, align 4
  %res = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %res, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %assoc_timer = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 1
  %call2 = tail call i32 @mod_timer(ptr noundef %assoc_timer, i32 noundef %add) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %assoc_timer3 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 15
  %call4 = tail call i32 @del_timer(ptr noundef %assoc_timer3) #4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  %Ssid = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %Ssid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %Ssid, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %Ssid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %Ssid, align 4
  %Privacy = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %Privacy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %Privacy, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %Privacy to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %Privacy, align 4
  %Rssi = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %Rssi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %Rssi, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %Rssi to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %Rssi, align 4
  %NetworkTypeInUse = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %NetworkTypeInUse to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %NetworkTypeInUse, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %NetworkTypeInUse to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %NetworkTypeInUse, align 4
  %Configuration = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 7
  %ATIMWindow = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 7, i32 2
  %25 = ptrtoint ptr %ATIMWindow to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ATIMWindow, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %ATIMWindow to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %ATIMWindow, align 4
  %DSConfig = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 7, i32 3
  %29 = ptrtoint ptr %DSConfig to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %DSConfig, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %DSConfig to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %DSConfig, align 4
  %FHConfig = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 7, i32 4
  %DwellTime = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 7, i32 4, i32 3
  %33 = ptrtoint ptr %DwellTime to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %DwellTime, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %DwellTime to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %DwellTime, align 4
  %HopPattern = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 7, i32 4, i32 1
  %37 = ptrtoint ptr %HopPattern to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %HopPattern, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %HopPattern to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %HopPattern, align 4
  %HopSet = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 7, i32 4, i32 2
  %41 = ptrtoint ptr %HopSet to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %HopSet, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %44 = ptrtoint ptr %HopSet to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %HopSet, align 4
  %45 = ptrtoint ptr %FHConfig to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %FHConfig, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %FHConfig to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %FHConfig, align 4
  %49 = ptrtoint ptr %Configuration to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %Configuration, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %Configuration to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %Configuration, align 4
  %InfrastructureMode = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 8
  %53 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %InfrastructureMode, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %56 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %InfrastructureMode, align 4
  %IELength = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 10
  %57 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %IELength, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %IELength to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %IELength, align 4
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #4
  %fw_state = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %61 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fw_state, align 8
  %and = and i32 %62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.end
  %stapriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7
  %MacAddress = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 1
  %call50 = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress) #4
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.then52, label %if.then49.if.end60_crit_edge

if.then49.if.end60_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then52:                                        ; preds = %if.then49
  %call56 = tail call ptr @r8712_alloc_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress) #4
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.then52.createbss_cmd_fail_crit_edge, label %if.then52.if.end60_crit_edge

if.then52.if.end60_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then52.createbss_cmd_fail_crit_edge:           ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %createbss_cmd_fail

if.end60:                                         ; preds = %if.then52.if.end60_crit_edge, %if.then49.if.end60_crit_edge
  tail call void @r8712_indicate_connect(ptr noundef %padapter) #4
  br label %createbss_cmd_fail

if.else:                                          ; preds = %if.end
  %call61 = tail call ptr @_r8712_alloc_network(ptr noundef %mlmepriv) #4
  %tobool62.not = icmp eq ptr %call61, null
  %scanned_queue = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 7
  br i1 %tobool62.not, label %if.then63, label %if.else68

if.then63:                                        ; preds = %if.else
  %call64 = tail call ptr @r8712_get_oldest_wlan_network(ptr noundef %scanned_queue) #4
  %tobool65.not = icmp eq ptr %call64, null
  br i1 %tobool65.not, label %if.then63.createbss_cmd_fail_crit_edge, label %if.end67

if.then63.createbss_cmd_fail_crit_edge:           ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #6
  br label %createbss_cmd_fail

if.end67:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %last_scanned = getelementptr inbounds %struct.wlan_network, ptr %call64, i32 0, i32 3
  %64 = ptrtoint ptr %last_scanned to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %last_scanned, align 4
  br label %if.end70

if.else68:                                        ; preds = %if.else
  %prev.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 7, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call61, ptr noundef %66, ptr noundef %scanned_queue) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.else68.if.end70_crit_edge

if.else68.if.end70_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.end.i.i:                                       ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call61, ptr %prev.i, align 4
  %68 = ptrtoint ptr %call61 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %scanned_queue, ptr %call61, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call61, i32 0, i32 1
  %69 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %call61, ptr %66, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end.i.i, %if.else68.if.end70_crit_edge, %if.end67
  %pwlan.0 = phi ptr [ %call64, %if.end67 ], [ %call61, %if.else68.if.end70_crit_edge ], [ %call61, %if.end.i.i ]
  %call71 = tail call i32 @r8712_get_wlan_bssid_ex_sz(ptr noundef %1) #4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call71, ptr %1, align 4
  %network = getelementptr inbounds %struct.wlan_network, ptr %pwlan.0, i32 0, i32 6
  %72 = call ptr @memcpy(ptr %network, ptr %1, i32 %call71)
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %pwlan.0, i32 0, i32 2
  %73 = ptrtoint ptr %fixed to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %fixed, align 4
  %network74 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6
  %call75 = tail call i32 @r8712_get_wlan_bssid_ex_sz(ptr noundef %1) #4
  %74 = call ptr @memcpy(ptr %network74, ptr %1, i32 %call75)
  %75 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fw_state, align 8
  %and77 = and i32 %76, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end70.createbss_cmd_fail_crit_edge, label %if.then79

if.end70.createbss_cmd_fail_crit_edge:            ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %createbss_cmd_fail

if.then79:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  %xor = xor i32 %76, 128
  %77 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %xor, ptr %fw_state, align 8
  br label %createbss_cmd_fail

createbss_cmd_fail:                               ; preds = %if.then79, %if.end70.createbss_cmd_fail_crit_edge, %if.then63.createbss_cmd_fail_crit_edge, %if.end60, %if.then52.createbss_cmd_fail_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call46) #4
  %78 = ptrtoint ptr %pcmd to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %pcmd, align 4
  %80 = zext i16 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %79, label %if.then.i [
    i16 14, label %createbss_cmd_fail.if.end.i_crit_edge
    i16 16, label %createbss_cmd_fail.if.end.i_crit_edge140
  ]

createbss_cmd_fail.if.end.i_crit_edge140:         ; preds = %createbss_cmd_fail
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

createbss_cmd_fail.if.end.i_crit_edge:            ; preds = %createbss_cmd_fail
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %createbss_cmd_fail
  call void @__sanitizer_cov_trace_pc() #6
  %81 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %parmbuf, align 4
  tail call void @kfree(ptr noundef %82) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %createbss_cmd_fail.if.end.i_crit_edge, %createbss_cmd_fail.if.end.i_crit_edge140
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 4
  %83 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rsp.i, align 4
  %tobool.not.i = icmp eq ptr %84, null
  br i1 %tobool.not.i, label %if.end.i.r8712_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.r8712_free_cmd_obj.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %r8712_free_cmd_obj.exit

if.then6.i:                                       ; preds = %if.end.i
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %85 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rspsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp7.not.i = icmp eq i32 %86, 0
  br i1 %cmp7.not.i, label %if.then6.i.r8712_free_cmd_obj.exit_crit_edge, label %if.then9.i

if.then6.i.r8712_free_cmd_obj.exit_crit_edge:     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %r8712_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %84) #4
  br label %r8712_free_cmd_obj.exit

r8712_free_cmd_obj.exit:                          ; preds = %if.then9.i, %if.then6.i.r8712_free_cmd_obj.exit_crit_edge, %if.end.i.r8712_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_alloc_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_indicate_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_r8712_alloc_network(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_oldest_wlan_network(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_setstaKey_cmdrsp_callback(ptr noundef %padapter, ptr noundef %pcmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 4
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsp, align 4
  %call = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %keyid = getelementptr inbounds %struct.set_stakey_rsp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %keyid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %keyid, align 1
  %conv = zext i8 %3 to i32
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %mac_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %mac_id, align 8
  %aid = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %aid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %aid, align 4
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %6 = ptrtoint ptr %pcmd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pcmd, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %7, label %if.then.i [
    i16 14, label %exit.if.end.i_crit_edge
    i16 16, label %exit.if.end.i_crit_edge5
  ]

exit.if.end.i_crit_edge5:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

exit.if.end.i_crit_edge:                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #6
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %9 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parmbuf.i, align 4
  tail call void @kfree(ptr noundef %10) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %exit.if.end.i_crit_edge, %exit.if.end.i_crit_edge5
  %11 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rsp, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i.r8712_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.r8712_free_cmd_obj.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %r8712_free_cmd_obj.exit

if.then6.i:                                       ; preds = %if.end.i
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %13 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rspsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp7.not.i = icmp eq i32 %14, 0
  br i1 %cmp7.not.i, label %if.then6.i.r8712_free_cmd_obj.exit_crit_edge, label %if.then9.i

if.then6.i.r8712_free_cmd_obj.exit_crit_edge:     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %r8712_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %12) #4
  br label %r8712_free_cmd_obj.exit

r8712_free_cmd_obj.exit:                          ; preds = %if.then9.i, %if.then6.i.r8712_free_cmd_obj.exit_crit_edge, %if.end.i.r8712_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_setassocsta_cmdrsp_callback(ptr noundef %padapter, ptr noundef %pcmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %0 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parmbuf, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 4
  %2 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsp, align 4
  %call = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %mac_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %mac_id, align 8
  %aid = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %aid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %aid, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #4
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_state.i, align 8
  %10 = and i32 %9, 65664
  call void @__sanitizer_cov_trace_const_cmp4(i32 65664, i32 %10)
  %.not = icmp eq i32 %10, 65664
  br i1 %.not, label %if.then13, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fw_state.i, align 8
  %xor = xor i32 %12, 128
  store i32 %xor, ptr %fw_state.i, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  %13 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_state.i, align 8
  %or.i = or i32 %14, 1
  store i32 %or.i, ptr %fw_state.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call4) #4
  %15 = ptrtoint ptr %pcmd to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pcmd, align 4
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %16, label %if.then.i [
    i16 14, label %if.end14.if.end.i_crit_edge
    i16 16, label %if.end14.if.end.i_crit_edge37
  ]

if.end14.if.end.i_crit_edge37:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end14.if.end.i_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parmbuf, align 4
  tail call void @kfree(ptr noundef %19) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end14.if.end.i_crit_edge, %if.end14.if.end.i_crit_edge37
  %20 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rsp, align 4
  %tobool.not.i36 = icmp eq ptr %21, null
  br i1 %tobool.not.i36, label %if.end.i.r8712_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.r8712_free_cmd_obj.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %r8712_free_cmd_obj.exit

if.then6.i:                                       ; preds = %if.end.i
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %22 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rspsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp7.not.i = icmp eq i32 %23, 0
  br i1 %cmp7.not.i, label %if.then6.i.r8712_free_cmd_obj.exit_crit_edge, label %if.then9.i

if.then6.i.r8712_free_cmd_obj.exit_crit_edge:     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %r8712_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %21) #4
  br label %r8712_free_cmd_obj.exit

r8712_free_cmd_obj.exit:                          ; preds = %if.then9.i, %if.then6.i.r8712_free_cmd_obj.exit_crit_edge, %if.end.i.r8712_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #4
  br label %cleanup

cleanup:                                          ; preds = %r8712_free_cmd_obj.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_disconnectCtrlEx_cmd(ptr noundef %adapter, i32 noundef %enableDrvCtrl, i32 noundef %tryPktCnt, i32 noundef %tryPktInterval, i32 noundef %firstStageTO) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 8) #7
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv = trunc i32 %enableDrvCtrl to i8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %call7.i.i, align 8
  %conv5 = trunc i32 %tryPktCnt to i8
  %TryPktCnt = getelementptr inbounds %struct.DisconnectCtrlEx_param, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %TryPktCnt to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv5, ptr %TryPktCnt, align 1
  %conv6 = trunc i32 %tryPktInterval to i8
  %TryPktInterval = getelementptr inbounds %struct.DisconnectCtrlEx_param, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %TryPktInterval to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv6, ptr %TryPktInterval, align 2
  %FirstStageTO = getelementptr inbounds %struct.DisconnectCtrlEx_param, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %FirstStageTO to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %firstStageTO, ptr %FirstStageTO, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i, align 8
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 61, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %9 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %10 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %cmdsz, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %11 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %12 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rspsz, align 8
  %padapter.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 2, i32 11
  %13 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %padapter.i, align 4
  %eeprompriv.i = getelementptr inbounds %struct._adapter, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %eeprompriv.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %eeprompriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.not = icmp eq i8 %16, 0
  br i1 %tobool.not.i.not, label %if.end3.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %if.end4
  %cmd_queue.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 2, i32 2
  %lock.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 2, i32 2, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 2, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %18, ptr noundef %cmd_queue.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cmd_queue.i, ptr %list, align 4
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev.i, align 8
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %list, ptr %18, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #4
  tail call void @complete(ptr noundef %cmdpriv) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %if.end4.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @r8712_init_cmd_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/rtl871x_cmd.c", i32 51, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @init_completion.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../include/linux/completion.h", i32 87, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
