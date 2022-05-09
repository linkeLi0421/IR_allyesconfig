; ModuleID = '/llk/IR_all_yes/net/ipv4/esp4_offload.c_pt.bc'
source_filename = "../net/ipv4/esp4_offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfrm_type_offload = type { ptr, i8, ptr, ptr, ptr }
%struct.net_offload = type { %struct.offload_callbacks, i32 }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.151, i32, i32, i8, i8 }
%struct.anon.151 = type { i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.80, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.81, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.80 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.81 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.ip_esp_hdr = type { i32, i32, [0 x i8] }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.esp_info = type { ptr, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.136, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.136 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.150 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.157, ptr, ptr, ptr, ptr, %union.anon.158, [120 x i8] }
%union.anon.157 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.158 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ip_beet_phdr = type { i8, i8, i8, i8 }

@esp_type_offload = internal constant { %struct.xfrm_type_offload, [44 x i8] } { %struct.xfrm_type_offload { ptr null, i8 50, ptr @esp4_gso_encap, ptr @esp_input_tail, ptr @esp_xmit }, [44 x i8] zeroinitializer }, align 32
@esp4_offload = internal constant { %struct.net_offload, [16 x i8] } { %struct.net_offload { %struct.offload_callbacks { ptr @esp4_gso_segment, ptr @esp4_gro_receive, ptr null }, i32 0 }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_esp4_offload__515_371_esp4_offload_init6 = internal global ptr @esp4_offload_init, section ".initcall6.init", align 4
@__exitcall_esp4_offload_exit = internal global ptr @esp4_offload_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file516 = internal constant [40 x i8] c"esp4_offload.file=net/ipv4/esp4_offload\00", section ".modinfo", align 1
@__UNIQUE_ID_license517 = internal constant [25 x i8] c"esp4_offload.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author518 = internal constant [68 x i8] c"esp4_offload.author=Steffen Klassert <steffen.klassert@secunet.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias519 = internal constant [37 x i8] c"esp4_offload.alias=xfrm-offload-2-50\00", section ".modinfo", align 1
@__UNIQUE_ID_description520 = internal constant [54 x i8] c"esp4_offload.description=IPV4 GSO/GRO offload support\00", section ".modinfo", align 1
@inet_offloads = external dso_local global [256 x ptr], align 4
@xfrm4_transport_gso_segment.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/ipv4/esp4_offload.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@xfrm4_beet_gso_segment.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@esp4_offload_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: can't add xfrm type offload\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"esp4_offload_init\00", [46 x i8] zeroinitializer }, align 32
@esp4_offload_init._entry_ptr = internal global ptr @esp4_offload_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"esp_type_offload\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 347, i32 39 }
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"esp4_offload\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 340, i32 33 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 125, i32 8 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [27 x i8] c"../net/ipv4/esp4_offload.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 358, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_alias519, ptr @__UNIQUE_ID_author518, ptr @__UNIQUE_ID_description520, ptr @__UNIQUE_ID_file516, ptr @__UNIQUE_ID_license517, ptr @__exitcall_esp4_offload_exit, ptr @__initcall__kmod_esp4_offload__515_371_esp4_offload_init6, ptr @esp4_offload_exit, ptr @esp4_offload_init._entry, ptr @esp4_offload_init._entry_ptr, ptr @esp_type_offload, ptr @esp4_offload, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_type_offload to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp4_offload to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp4_offload_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @esp4_offload_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xfrm_unregister_type_offload(ptr noundef nonnull @esp_type_offload, i16 noundef zeroext 2) #5
  %call = tail call i32 @inet_del_offload(ptr noundef nonnull @esp4_offload, i8 noundef zeroext 50) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_unregister_type_offload(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_del_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @esp4_offload_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfrm_register_type_offload(ptr noundef nonnull @esp_type_offload, i16 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @inet_add_offload(ptr noundef nonnull @esp4_offload, i8 noundef zeroext 50) #5
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esp4_gso_encap(ptr nocapture noundef readonly %x, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %4 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not.i.i.i = icmp eq i8 %6, 0
  br i1 %tobool.i.not.i.i.i, label %entry.xfrm_offload.exit_crit_edge, label %skb_sec_path.exit.i

entry.xfrm_offload.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit

skb_sec_path.exit.i:                              ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %7 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %8, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %10 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.xfrm_offload.exit_crit_edge:  ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not.i = icmp eq i32 %12, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.xfrm_offload.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp.not.i = icmp eq i32 %14, %12
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false2.i.xfrm_offload.exit_crit_edge

lor.lhs.false2.i.xfrm_offload.exit_crit_edge:     ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add i32 %12, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  br label %xfrm_offload.exit

xfrm_offload.exit:                                ; preds = %if.end.i, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge, %lor.lhs.false.i.xfrm_offload.exit_crit_edge, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, %entry.xfrm_offload.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.end.i ], [ null, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge ], [ null, %lor.lhs.false.i.xfrm_offload.exit_crit_edge ], [ null, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge ], [ null, %entry.xfrm_offload.exit_crit_edge ]
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %protocol, align 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %call3 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.neg) #5
  %19 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %21 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i21 = zext i16 %22 to i32
  %add.ptr.i.i22 = getelementptr i8, ptr %20, i32 %conv.i.i21
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %23 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %24 to i32
  %add.ptr.i = getelementptr i8, ptr %20, i32 %conv.i
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 50, ptr %add.ptr.i, align 1
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %spi, align 4
  %28 = ptrtoint ptr %add.ptr.i.i22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %add.ptr.i.i22, align 4
  %seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %29 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %seq, align 4
  %seq_no = getelementptr inbounds %struct.ip_esp_hdr, ptr %add.ptr.i.i22, i32 0, i32 1
  %31 = ptrtoint ptr %seq_no to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %seq_no, align 4
  %proto8 = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i, i32 0, i32 3
  %32 = ptrtoint ptr %proto8 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %16, ptr %proto8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp_input_tail(ptr nocapture noundef readonly %x, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %2 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool.i.not.i.i.i, label %entry.xfrm_offload.exit_crit_edge, label %skb_sec_path.exit.i

entry.xfrm_offload.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit

skb_sec_path.exit.i:                              ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %5 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %6, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %8 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.xfrm_offload.exit_crit_edge:  ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not.i = icmp eq i32 %10, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.xfrm_offload.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp.not.i = icmp eq i32 %12, %10
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false2.i.xfrm_offload.exit_crit_edge

lor.lhs.false2.i.xfrm_offload.exit_crit_edge:     ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add i32 %10, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  br label %xfrm_offload.exit

xfrm_offload.exit:                                ; preds = %if.end.i, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge, %lor.lhs.false.i.xfrm_offload.exit_crit_edge, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, %entry.xfrm_offload.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.end.i ], [ null, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge ], [ null, %lor.lhs.false.i.xfrm_offload.exit_crit_edge ], [ null, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge ], [ null, %entry.xfrm_offload.exit_crit_edge ]
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %14, i32 -104
  %15 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ivsize.i.i, align 8
  %add = add i32 %16, 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %18, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i10 = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i10, label %if.end.i11, label %xfrm_offload.exit.if.end_crit_edge, !prof !37

xfrm_offload.exit.if.end_crit_edge:               ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i11:                                       ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add)
  %cmp3.i = icmp ult i32 %18, %add
  br i1 %cmp3.i, label %if.end.i11.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !37

if.end.i11.cleanup_crit_edge:                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i11
  %sub.i12 = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i12) #5
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %xfrm_offload.exit.if.end_crit_edge
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %23 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = tail call i32 @esp_input_done2(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -22, %pskb_may_pull.exit.cleanup_crit_edge ], [ -22, %if.end.i11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp_xmit(ptr noundef %x, ptr noundef %skb, i64 noundef %features) #2 align 64 {
entry:
  %esp = alloca %struct.esp_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %esp) #5
  %0 = call ptr @memset(ptr %esp, i32 255, i32 48)
  %inplace = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 9
  %1 = ptrtoint ptr %inplace to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %inplace, align 1
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %2 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool.i.not.i.i.i, label %entry.cleanup_crit_edge, label %skb_sec_path.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_sec_path.exit.i:                              ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %5 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %6, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %8 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.cleanup_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.cleanup_crit_edge:            ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not.i = icmp eq i32 %10, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp.not.i = icmp eq i32 %12, %10
  br i1 %cmp.not.i, label %xfrm_offload.exit, label %lor.lhs.false2.i.cleanup_crit_edge

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

xfrm_offload.exit:                                ; preds = %lor.lhs.false2.i
  %sub.i = add i32 %10, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %xfrm_offload.exit.cleanup_crit_edge, label %if.end

xfrm_offload.exit.cleanup_crit_edge:              ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %xfrm_offload.exit
  %and = and i64 %features, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.lor.lhs.false_crit_edge

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %13 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %gso_partial_features = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 29
  %16 = ptrtoint ptr %gso_partial_features to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %gso_partial_features, align 64
  %and2 = and i64 %17, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %land.lhs.true.if.then4_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

land.lhs.true.if.then4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %xso = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41
  %18 = ptrtoint ptr %xso to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xso, align 8
  %20 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %cmp.not = icmp eq ptr %19, %22
  br i1 %cmp.not, label %lor.lhs.false.if.end5_crit_edge, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %land.lhs.true.if.then4_crit_edge
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %arrayidx.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %or = or i32 %24, 8
  store i32 %or, ptr %flags, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %lor.lhs.false.if.end5_crit_edge
  %hw_offload.0.off0 = phi i1 [ false, %if.then4 ], [ true, %lor.lhs.false.if.end5_crit_edge ]
  %proto = getelementptr inbounds %struct.xfrm_offload, ptr %arrayidx.i, i32 0, i32 3
  %25 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %proto, align 4
  %proto6 = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 8
  %27 = ptrtoint ptr %proto6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %proto6, align 8
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 128
  %tfclen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 2
  %32 = ptrtoint ptr %tfclen to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %tfclen, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %29, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cra_blocksize.i.i, align 4
  %add = add i32 %36, 3
  %and9 = and i32 %add, -4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %sub = add i32 %38, 1
  %add13 = add i32 %sub, %and9
  %neg = sub i32 0, %and9
  %and15 = and i32 %add13, %neg
  %clen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 5
  %39 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and15, ptr %clen, align 4
  %sub20 = sub i32 %and15, %38
  %plen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 4
  %40 = ptrtoint ptr %plen to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub20, ptr %plen, align 8
  %add24 = add i32 %sub20, %31
  %tailen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 3
  %41 = ptrtoint ptr %tailen to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add24, ptr %tailen, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %42 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %44 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %45 to i32
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 %conv.i.i
  %46 = ptrtoint ptr %esp to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr.i.i, ptr %esp, align 8
  br i1 %hw_offload.0.off0, label %lor.lhs.false28, label %if.end5.if.then30_crit_edge

if.end5.if.then30_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

lor.lhs.false28:                                  ; preds = %if.end5
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %47 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool.i.not = icmp eq i16 %50, 0
  br i1 %tobool.i.not, label %lor.lhs.false28.if.then30_crit_edge, label %lor.lhs.false28.if.end37_crit_edge

lor.lhs.false28.if.end37_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

lor.lhs.false28.if.then30_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false28.if.then30_crit_edge, %if.end5.if.then30_crit_edge
  %call31 = call i32 @esp_output_head(ptr noundef %x, ptr noundef %skb, ptr noundef nonnull %esp) #5
  %nfrags = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 7
  %51 = ptrtoint ptr %nfrags to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call31, ptr %nfrags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp33 = icmp slt i32 %call31, 0
  br i1 %cmp33, label %if.then30.cleanup_crit_edge, label %if.then30.if.end37_crit_edge

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %if.then30.if.end37_crit_edge, %lor.lhs.false28.if.end37_crit_edge
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  %54 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %esp, align 8
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %56 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %spi, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %55, align 4
  %59 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %61 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i129 = zext i16 %62 to i32
  %add.ptr.i.i130 = getelementptr i8, ptr %60, i32 %conv.i.i129
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %63 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i130 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %call43 = call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.neg) #5
  %flags44 = getelementptr inbounds %struct.xfrm_offload, ptr %arrayidx.i, i32 0, i32 1
  %65 = ptrtoint ptr %flags44 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags44, align 4
  %and45 = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end37.if.end57_crit_edge, label %if.then47

if.end37.if.end57_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then47:                                        ; preds = %if.end37
  %seq_no = getelementptr inbounds %struct.ip_esp_hdr, ptr %55, i32 0, i32 1
  %67 = ptrtoint ptr %seq_no to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %53, ptr %seq_no, align 4
  %end.i.i131 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %68 = ptrtoint ptr %end.i.i131 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %end.i.i131, align 4
  %gso_size.i132 = getelementptr inbounds %struct.skb_shared_info, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %gso_size.i132 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %gso_size.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool.i133.not = icmp eq i16 %71, 0
  br i1 %tobool.i133.not, label %if.then47.if.end57.sink.split_crit_edge, label %if.else

if.then47.if.end57.sink.split_crit_edge:          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.sink.split

if.else:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %69, i32 0, i32 5
  %72 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %gso_segs, align 2
  %conv = zext i16 %73 to i32
  br label %if.end57.sink.split

if.end57.sink.split:                              ; preds = %if.else, %if.then47.if.end57.sink.split_crit_edge
  %.sink167 = phi i32 [ %conv, %if.else ], [ 1, %if.then47.if.end57.sink.split_crit_edge ]
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i, align 4
  %inc = add i32 %75, %.sink167
  store i32 %inc, ptr %arrayidx.i, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %if.end37.if.end57_crit_edge
  %conv58 = zext i32 %53 to i64
  %hi = getelementptr inbounds %struct.anon.151, ptr %arrayidx.i, i32 0, i32 1
  %76 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hi, align 4
  %conv60 = zext i32 %77 to i64
  %shl = shl nuw i64 %conv60, 32
  %add61 = or i64 %shl, %conv58
  %seqno = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 1
  %78 = ptrtoint ptr %seqno to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %add61, ptr %seqno, align 8
  %79 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len, align 4
  %conv63 = trunc i32 %80 to i16
  %81 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %head.i.i, align 8
  %83 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i136 = zext i16 %84 to i32
  %add.ptr.i.i137 = getelementptr i8, ptr %82, i32 %conv.i.i136
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i137, i32 0, i32 2
  %85 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv63, ptr %tot_len, align 2
  %86 = load ptr, ptr %head.i.i, align 8
  %87 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i140 = zext i16 %87 to i32
  %add.ptr.i.i141 = getelementptr i8, ptr %86, i32 %conv.i.i140
  call void @ip_send_check(ptr noundef %add.ptr.i.i141) #5
  br i1 %hw_offload.0.off0, label %if.then67, label %if.end78

if.then67:                                        ; preds = %if.end57
  %call68 = call ptr @skb_ext_add(ptr noundef %skb, i32 noundef 1) #5
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %if.then67.cleanup_crit_edge, label %if.end71

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end71:                                         ; preds = %if.then67
  %88 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %90 = and i8 %89, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.i.not.i.i.i143 = icmp eq i8 %90, 0
  br i1 %tobool.i.not.i.i.i143, label %if.end71.cleanup_crit_edge, label %skb_sec_path.exit.i150

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_sec_path.exit.i150:                           ; preds = %if.end71
  %91 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i145 = getelementptr %struct.skb_ext, ptr %92, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %arrayidx.i.i.i145 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i.i.i145, align 1
  %conv.i.i.i146 = zext i8 %94 to i32
  %shl.i.i.i147 = shl nuw nsw i32 %conv.i.i.i146, 3
  %add.ptr.i.i.i148 = getelementptr i8, ptr %92, i32 %shl.i.i.i147
  %tobool.not.i149 = icmp eq ptr %add.ptr.i.i.i148, null
  br i1 %tobool.not.i149, label %skb_sec_path.exit.i150.cleanup_crit_edge, label %lor.lhs.false.i153

skb_sec_path.exit.i150.cleanup_crit_edge:         ; preds = %skb_sec_path.exit.i150
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i153:                               ; preds = %skb_sec_path.exit.i150
  %olen.i151 = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i148, i32 0, i32 1
  %95 = ptrtoint ptr %olen.i151 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %olen.i151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool1.not.i152 = icmp eq i32 %96, 0
  br i1 %tobool1.not.i152, label %lor.lhs.false.i153.cleanup_crit_edge, label %lor.lhs.false2.i155

lor.lhs.false.i153.cleanup_crit_edge:             ; preds = %lor.lhs.false.i153
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i155:                              ; preds = %lor.lhs.false.i153
  %97 = ptrtoint ptr %add.ptr.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr.i.i.i148, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %96)
  %cmp.not.i154 = icmp eq i32 %98, %96
  br i1 %cmp.not.i154, label %xfrm_offload.exit160, label %lor.lhs.false2.i155.cleanup_crit_edge

lor.lhs.false2.i155.cleanup_crit_edge:            ; preds = %lor.lhs.false2.i155
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

xfrm_offload.exit160:                             ; preds = %lor.lhs.false2.i155
  %sub.i156 = add i32 %96, -1
  %arrayidx.i157 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i148, i32 0, i32 3, i32 %sub.i156
  %tobool73.not = icmp eq ptr %arrayidx.i157, null
  br i1 %tobool73.not, label %xfrm_offload.exit160.cleanup_crit_edge, label %if.end75

xfrm_offload.exit160.cleanup_crit_edge:           ; preds = %xfrm_offload.exit160
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end75:                                         ; preds = %xfrm_offload.exit160
  call void @__sanitizer_cov_trace_pc() #7
  %flags76 = getelementptr inbounds %struct.xfrm_offload, ptr %arrayidx.i157, i32 0, i32 1
  %99 = ptrtoint ptr %flags76 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags76, align 4
  %or77 = or i32 %100, 256
  store i32 %or77, ptr %flags76, align 4
  br label %cleanup

if.end78:                                         ; preds = %if.end57
  %call79 = call i32 @esp_output_tail(ptr noundef %x, ptr noundef %skb, ptr noundef nonnull %esp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end82:                                         ; preds = %if.end78
  %101 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %103 = and i8 %102, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.i.not.i.i = icmp eq i8 %103, 0
  br i1 %tobool.i.not.i.i, label %if.end82.cleanup_crit_edge, label %if.then.i.i

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  call void @__skb_ext_del(ptr noundef %skb, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.end82.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.end75, %xfrm_offload.exit160.cleanup_crit_edge, %lor.lhs.false2.i155.cleanup_crit_edge, %lor.lhs.false.i153.cleanup_crit_edge, %skb_sec_path.exit.i150.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.then67.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %xfrm_offload.exit.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %skb_sec_path.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end75 ], [ -22, %xfrm_offload.exit.cleanup_crit_edge ], [ %call31, %if.then30.cleanup_crit_edge ], [ -12, %if.then67.cleanup_crit_edge ], [ -22, %xfrm_offload.exit160.cleanup_crit_edge ], [ %call79, %if.end78.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ -22, %lor.lhs.false2.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %skb_sec_path.exit.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false2.i155.cleanup_crit_edge ], [ -22, %lor.lhs.false.i153.cleanup_crit_edge ], [ -22, %skb_sec_path.exit.i150.cleanup_crit_edge ], [ -22, %if.end71.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %esp) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esp_input_done2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esp_output_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_ext_add(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esp_output_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_del(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @esp4_gso_segment(ptr noundef %skb, i64 noundef %features) #2 align 64 {
entry:
  %proto.i13.i = alloca i8, align 1
  %frag.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i.i, label %entry.cleanup_crit_edge, label %skb_sec_path.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_sec_path.exit.i:                              ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %6 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.cleanup_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.cleanup_crit_edge:            ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i, label %xfrm_offload.exit, label %lor.lhs.false2.i.cleanup_crit_edge

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

xfrm_offload.exit:                                ; preds = %lor.lhs.false2.i
  %sub.i = add i32 %8, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %xfrm_offload.exit.cleanup_crit_edge, label %if.end

xfrm_offload.exit.cleanup_crit_edge:              ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %xfrm_offload.exit
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gso_type, align 8
  %and = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %skb_sec_path.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_sec_path.exit:                                ; preds = %if.end
  %15 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %16, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %18 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %shl.i.i
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i, align 4
  %sub = add i32 %20, -1
  %arrayidx = getelementptr %struct.sec_path, ptr %add.ptr.i.i, i32 0, i32 2, i32 %sub
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %25 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i64 = zext i16 %26 to i32
  %add.ptr.i.i65 = getelementptr i8, ptr %24, i32 %conv.i.i64
  %27 = ptrtoint ptr %add.ptr.i.i65 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i65, align 4
  %spi9 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %spi9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %spi9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.not = icmp eq i32 %28, %30
  br i1 %cmp.not, label %if.end12, label %skb_sec_path.exit.cleanup_crit_edge

skb_sec_path.exit.cleanup_crit_edge:              ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %skb_sec_path.exit
  %data = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 51
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %32, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %34, i32 -104
  %35 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ivsize.i.i, align 8
  %add = add i32 %36, 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %37 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %39 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %38, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i66 = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i66, label %if.end.i67, label %if.end12.if.end17_crit_edge, !prof !37

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.end.i67:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add)
  %cmp3.i = icmp ult i32 %38, %add
  br i1 %cmp3.i, label %if.end.i67.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !37

if.end.i67.cleanup_crit_edge:                     ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i67
  %sub.i68 = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i68) #5
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end17_crit_edge

pskb_may_pull.exit.if.end17_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %pskb_may_pull.exit.if.end17_crit_edge, %if.end12.if.end17_crit_edge
  %41 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i71 = getelementptr i8, ptr %42, i32 -104
  %43 = ptrtoint ptr %ivsize.i.i71 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ivsize.i.i71, align 8
  %add19 = add i32 %44, 8
  %45 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i.i, align 4
  %sub.i72 = sub i32 %46, %add19
  store i32 %sub.i72, ptr %len.i.i, align 4
  %47 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i72, i32 %48)
  %cmp.i = icmp ult i32 %sub.i72, %48
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !37

do.body4.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #5, !srcloc !38
  unreachable

__skb_pull.exit:                                  ; preds = %if.end17
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 %add19
  store ptr %add.ptr.i, ptr %data.i, align 4
  %encap_hdr_csum = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %51 = ptrtoint ptr %encap_hdr_csum to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load = load i16, ptr %encap_hdr_csum, align 8
  %bf.set = or i16 %bf.load, 2
  store i16 %bf.set, ptr %encap_hdr_csum, align 8
  %52 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %gso_partial_features = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 29
  %55 = ptrtoint ptr %gso_partial_features to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %gso_partial_features, align 64
  %57 = or i64 %56, %features
  %58 = and i64 %57, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %58)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %__skb_pull.exit.if.then26_crit_edge, label %lor.lhs.false

__skb_pull.exit.if.then26_crit_edge:              ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

lor.lhs.false:                                    ; preds = %__skb_pull.exit
  %xso = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 41
  %60 = ptrtoint ptr %xso to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %xso, align 8
  %cmp25.not = icmp eq ptr %61, %54
  br i1 %cmp25.not, label %if.else, label %lor.lhs.false.if.then26_crit_edge

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %__skb_pull.exit.if.then26_crit_edge
  %and27 = and i64 %features, -68719476764
  br label %if.end37

if.else:                                          ; preds = %lor.lhs.false
  %and28 = and i64 %features, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and28)
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

land.lhs.true30:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %and32 = and i64 %56, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32)
  %tobool33.not = icmp eq i64 %and32, 0
  %and35 = and i64 %features, -68719476763
  %spec.select = select i1 %tobool33.not, i64 %and35, i64 %features
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true30, %if.else.if.end37_crit_edge, %if.then26
  %esp_features.0 = phi i64 [ %and27, %if.then26 ], [ %features, %if.else.if.end37_crit_edge ], [ %spec.select, %land.lhs.true30 ]
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %arrayidx.i, i32 0, i32 1
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 4
  %or = or i32 %63, 16
  store i32 %or, ptr %flags, align 4
  %outer_mode.i = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 48
  %64 = ptrtoint ptr %outer_mode.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %outer_mode.i, align 2
  %66 = zext i8 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values)
  switch i8 %65, label %if.end37.cleanup_crit_edge [
    i8 1, label %sw.bb.i
    i8 0, label %sw.bb1.i
    i8 4, label %sw.bb3.i
  ]

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call ptr @skb_eth_gso_segment(ptr noundef %skb, i64 noundef %esp_features.0, i16 noundef zeroext 2048) #5
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end37
  %67 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %69 = and i8 %68, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.i.not.i.i.i.i.i = icmp eq i8 %69, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %sw.bb1.i.xfrm_offload.exit.i.i_crit_edge, label %skb_sec_path.exit.i.i.i

sw.bb1.i.xfrm_offload.exit.i.i_crit_edge:         ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit.i.i

skb_sec_path.exit.i.i.i:                          ; preds = %sw.bb1.i
  %70 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.skb_ext, ptr %71, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %73 to i32
  %shl.i.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i.i, 3
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %71, i32 %shl.i.i.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %skb_sec_path.exit.i.i.i.xfrm_offload.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

skb_sec_path.exit.i.i.i.xfrm_offload.exit.i.i_crit_edge: ; preds = %skb_sec_path.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %skb_sec_path.exit.i.i.i
  %olen.i.i.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %olen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %olen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool1.not.i.i.i = icmp eq i32 %75, 0
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.xfrm_offload.exit.i.i_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.i.xfrm_offload.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit.i.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %76 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %75)
  %cmp.not.i.i.i = icmp eq i32 %77, %75
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %lor.lhs.false2.i.i.i.xfrm_offload.exit.i.i_crit_edge

lor.lhs.false2.i.i.i.xfrm_offload.exit.i.i_crit_edge: ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i.i = add i32 %75, -1
  %arrayidx.i.i.i73 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i.i.i, i32 0, i32 3, i32 %sub.i.i.i
  br label %xfrm_offload.exit.i.i

xfrm_offload.exit.i.i:                            ; preds = %if.end.i.i.i, %lor.lhs.false2.i.i.i.xfrm_offload.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.xfrm_offload.exit.i.i_crit_edge, %skb_sec_path.exit.i.i.i.xfrm_offload.exit.i.i_crit_edge, %sw.bb1.i.xfrm_offload.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %arrayidx.i.i.i73, %if.end.i.i.i ], [ null, %lor.lhs.false2.i.i.i.xfrm_offload.exit.i.i_crit_edge ], [ null, %lor.lhs.false.i.i.i.xfrm_offload.exit.i.i_crit_edge ], [ null, %skb_sec_path.exit.i.i.i.xfrm_offload.exit.i.i_crit_edge ], [ null, %sw.bb1.i.xfrm_offload.exit.i.i_crit_edge ]
  %header_len.i.i = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 14, i32 9
  %78 = ptrtoint ptr %header_len.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %header_len.i.i, align 4
  %80 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %transport_header.i.i, align 2
  %82 = trunc i32 %79 to i16
  %conv2.i.i = add i16 %81, %82
  store i16 %conv2.i.i, ptr %transport_header.i.i, align 2
  %proto.i.i = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i.i.i, i32 0, i32 3
  %83 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %proto.i.i, align 4
  %idxprom.i.i = zext i8 %84 to i32
  %arrayidx.i.i75 = getelementptr [256 x ptr], ptr @inet_offloads, i32 0, i32 %idxprom.i.i
  %85 = ptrtoint ptr %arrayidx.i.i75 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %arrayidx.i.i75, align 4
  %call4.i.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %xfrm_offload.exit.i.i.do.end10.i.i_crit_edge

xfrm_offload.exit.i.i.do.end10.i.i_crit_edge:     ; preds = %xfrm_offload.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %xfrm_offload.exit.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b25.i.i = load i1, ptr @xfrm4_transport_gso_segment.__warned, align 1
  br i1 %.b25.i.i, label %land.lhs.true7.i.i.do.end10.i.i_crit_edge, label %if.then.i.i76

land.lhs.true7.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i.i

if.then.i.i76:                                    ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @xfrm4_transport_gso_segment.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 125, ptr noundef nonnull @.str.1) #5
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then.i.i76, %land.lhs.true7.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %xfrm_offload.exit.i.i.do.end10.i.i_crit_edge
  %tobool12.not.i.i = icmp eq ptr %86, null
  br i1 %tobool12.not.i.i, label %do.end10.i.i.cleanup_crit_edge, label %land.rhs.i.i, !prof !37

do.end10.i.i.cleanup_crit_edge:                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs.i.i:                                     ; preds = %do.end10.i.i
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %tobool13.not.i.i = icmp eq ptr %88, null
  br i1 %tobool13.not.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then16.i.i, !prof !37

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call19.i.i = tail call ptr %88(ptr noundef %skb, i64 noundef %esp_features.0) #5
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end37
  %89 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %91 = and i8 %90, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.i.not.i.i.i.i15.i = icmp eq i8 %91, 0
  br i1 %tobool.i.not.i.i.i.i15.i, label %sw.bb3.i.xfrm_offload.exit.i34.i_crit_edge, label %skb_sec_path.exit.i.i22.i

sw.bb3.i.xfrm_offload.exit.i34.i_crit_edge:       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit.i34.i

skb_sec_path.exit.i.i22.i:                        ; preds = %sw.bb3.i
  %92 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i.i17.i = getelementptr %struct.skb_ext, ptr %93, i32 0, i32 1, i32 1
  %94 = ptrtoint ptr %arrayidx.i.i.i.i17.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.i.i.i.i17.i, align 1
  %conv.i.i.i.i18.i = zext i8 %95 to i32
  %shl.i.i.i.i19.i = shl nuw nsw i32 %conv.i.i.i.i18.i, 3
  %add.ptr.i.i.i.i20.i = getelementptr i8, ptr %93, i32 %shl.i.i.i.i19.i
  %tobool.not.i.i21.i = icmp eq ptr %add.ptr.i.i.i.i20.i, null
  br i1 %tobool.not.i.i21.i, label %skb_sec_path.exit.i.i22.i.xfrm_offload.exit.i34.i_crit_edge, label %lor.lhs.false.i.i25.i

skb_sec_path.exit.i.i22.i.xfrm_offload.exit.i34.i_crit_edge: ; preds = %skb_sec_path.exit.i.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit.i34.i

lor.lhs.false.i.i25.i:                            ; preds = %skb_sec_path.exit.i.i22.i
  %olen.i.i23.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i.i20.i, i32 0, i32 1
  %96 = ptrtoint ptr %olen.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %olen.i.i23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool1.not.i.i24.i = icmp eq i32 %97, 0
  br i1 %tobool1.not.i.i24.i, label %lor.lhs.false.i.i25.i.xfrm_offload.exit.i34.i_crit_edge, label %lor.lhs.false2.i.i27.i

lor.lhs.false.i.i25.i.xfrm_offload.exit.i34.i_crit_edge: ; preds = %lor.lhs.false.i.i25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit.i34.i

lor.lhs.false2.i.i27.i:                           ; preds = %lor.lhs.false.i.i25.i
  %98 = ptrtoint ptr %add.ptr.i.i.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr.i.i.i.i20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %97)
  %cmp.not.i.i26.i = icmp eq i32 %99, %97
  br i1 %cmp.not.i.i26.i, label %if.end.i.i30.i, label %lor.lhs.false2.i.i27.i.xfrm_offload.exit.i34.i_crit_edge

lor.lhs.false2.i.i27.i.xfrm_offload.exit.i34.i_crit_edge: ; preds = %lor.lhs.false2.i.i27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit.i34.i

if.end.i.i30.i:                                   ; preds = %lor.lhs.false2.i.i27.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i28.i = add i32 %97, -1
  %arrayidx.i.i29.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i.i20.i, i32 0, i32 3, i32 %sub.i.i28.i
  br label %xfrm_offload.exit.i34.i

xfrm_offload.exit.i34.i:                          ; preds = %if.end.i.i30.i, %lor.lhs.false2.i.i27.i.xfrm_offload.exit.i34.i_crit_edge, %lor.lhs.false.i.i25.i.xfrm_offload.exit.i34.i_crit_edge, %skb_sec_path.exit.i.i22.i.xfrm_offload.exit.i34.i_crit_edge, %sw.bb3.i.xfrm_offload.exit.i34.i_crit_edge
  %retval.0.i.i31.i = phi ptr [ %arrayidx.i.i29.i, %if.end.i.i30.i ], [ null, %lor.lhs.false2.i.i27.i.xfrm_offload.exit.i34.i_crit_edge ], [ null, %lor.lhs.false.i.i25.i.xfrm_offload.exit.i34.i_crit_edge ], [ null, %skb_sec_path.exit.i.i22.i.xfrm_offload.exit.i34.i_crit_edge ], [ null, %sw.bb3.i.xfrm_offload.exit.i34.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %proto.i13.i) #5
  %proto2.i.i = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i.i31.i, i32 0, i32 3
  %100 = ptrtoint ptr %proto2.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %proto2.i.i, align 4
  %102 = ptrtoint ptr %proto.i13.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %proto.i13.i, align 1
  %header_len.i32.i = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 14, i32 9
  %103 = ptrtoint ptr %header_len.i32.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %header_len.i32.i, align 4
  %105 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %transport_header.i.i, align 2
  %107 = trunc i32 %104 to i16
  %conv3.i.i = add i16 %106, %107
  store i16 %conv3.i.i, ptr %transport_header.i.i, align 2
  %family.i.i = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 8, i32 6
  %108 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %109)
  %cmp.not.i.i = icmp eq i16 %109, 10
  br i1 %cmp.not.i.i, label %if.else18.i.i, label %if.then.i35.i

if.then.i35.i:                                    ; preds = %xfrm_offload.exit.i34.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %101)
  %cmp7.i.i = icmp eq i8 %101, 94
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.else.i.i

if.then9.i.i:                                     ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  %110 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data.i, align 4
  %hdrlen.i.i = getelementptr inbounds %struct.ip_beet_phdr, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %hdrlen.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %hdrlen.i.i, align 1
  %conv10.i.i = zext i8 %113 to i16
  %mul.i.i = shl nuw nsw i16 %conv10.i.i, 3
  %add13.i.i = add i16 %mul.i.i, %conv3.i.i
  %114 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %add13.i.i, ptr %transport_header.i.i, align 2
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %111, align 1
  %117 = ptrtoint ptr %proto.i13.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %proto.i13.i, align 1
  br label %if.end30.i.i

if.else.i.i:                                      ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i77 = add i16 %conv3.i.i, -8
  %118 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %sub.i.i77, ptr %transport_header.i.i, align 2
  br label %if.end30thread-pre-split.i.i

if.else18.i.i:                                    ; preds = %xfrm_offload.exit.i34.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag.i.i) #5
  %119 = ptrtoint ptr %frag.i.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 -1, ptr %frag.i.i, align 2, !annotation !39
  %call19.i36.i = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef 0, ptr noundef nonnull %proto.i13.i, ptr noundef nonnull %frag.i.i) #5
  %120 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %transport_header.i.i, align 2
  %122 = trunc i32 %call19.i36.i to i16
  %conv23.i.i = add i16 %121, %122
  store i16 %conv23.i.i, ptr %transport_header.i.i, align 2
  %123 = ptrtoint ptr %proto.i13.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %proto.i13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %124)
  %cmp25.i.i = icmp eq i8 %124, 6
  br i1 %cmp25.i.i, label %if.then27.i.i, label %if.else18.i.i.if.end29.i.i_crit_edge

if.else18.i.i.if.end29.i.i_crit_edge:             ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i.i

if.then27.i.i:                                    ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %125 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %end.i, align 4
  %gso_type.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %126, i32 0, i32 8
  %127 = ptrtoint ptr %gso_type.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %gso_type.i.i, align 8
  %or.i.i = or i32 %128, 1
  store i32 %or.i.i, ptr %gso_type.i.i, align 8
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then27.i.i, %if.else18.i.i.if.end29.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag.i.i) #5
  br label %if.end30thread-pre-split.i.i

if.end30thread-pre-split.i.i:                     ; preds = %if.end29.i.i, %if.else.i.i
  %129 = ptrtoint ptr %proto.i13.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %.pr.i.i = load i8, ptr %proto.i13.i, align 1
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.end30thread-pre-split.i.i, %if.then9.i.i
  %130 = phi i8 [ %.pr.i.i, %if.end30thread-pre-split.i.i ], [ %116, %if.then9.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %130)
  %cmp32.i.i = icmp eq i8 %130, 41
  br i1 %cmp32.i.i, label %if.then34.i.i, label %if.end30.i.i.if.end38.i.i_crit_edge

if.end30.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i.i

if.then34.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %131 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %end.i, align 4
  %gso_type36.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %132, i32 0, i32 8
  %133 = ptrtoint ptr %gso_type36.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %gso_type36.i.i, align 8
  %or37.i.i = or i32 %134, 256
  store i32 %or37.i.i, ptr %gso_type36.i.i, align 8
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then34.i.i, %if.end30.i.i.if.end38.i.i_crit_edge
  %135 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %head.i.i, align 8
  %137 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i.i.i = zext i16 %138 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %136, i32 %conv.i.i.i.i
  %139 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %140 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %141 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %len.i.i, align 4
  %sub.i78.i.i = sub i32 %142, %sub.ptr.sub.i.i.i
  store i32 %sub.i78.i.i, ptr %len.i.i, align 4
  %143 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i78.i.i, i32 %144)
  %cmp.i.i.i = icmp ult i32 %sub.i78.i.i, %144
  br i1 %cmp.i.i.i, label %do.body4.i.i.i, label %__skb_pull.exit.i.i, !prof !37

do.body4.i.i.i:                                   ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #5, !srcloc !38
  unreachable

__skb_pull.exit.i.i:                              ; preds = %if.end38.i.i
  %add.ptr.i.i.i78 = getelementptr i8, ptr %140, i32 %sub.ptr.sub.i.i.i
  %145 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %add.ptr.i.i.i78, ptr %data.i, align 4
  %idxprom.i37.i = zext i8 %130 to i32
  %arrayidx.i38.i = getelementptr [256 x ptr], ptr @inet_offloads, i32 0, i32 %idxprom.i37.i
  %146 = ptrtoint ptr %arrayidx.i38.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile ptr, ptr %arrayidx.i38.i, align 4
  %call42.i.i = call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool.not.i39.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool.not.i39.i, label %land.lhs.true.i40.i, label %__skb_pull.exit.i.i.do.end50.i.i_crit_edge

__skb_pull.exit.i.i.do.end50.i.i_crit_edge:       ; preds = %__skb_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50.i.i

land.lhs.true.i40.i:                              ; preds = %__skb_pull.exit.i.i
  %call43.i.i = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %tobool44.not.i.i = icmp eq i32 %call43.i.i, 0
  br i1 %tobool44.not.i.i, label %land.lhs.true.i40.i.do.end50.i.i_crit_edge, label %land.lhs.true45.i.i

land.lhs.true.i40.i.do.end50.i.i_crit_edge:       ; preds = %land.lhs.true.i40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50.i.i

land.lhs.true45.i.i:                              ; preds = %land.lhs.true.i40.i
  %.b76.i.i = load i1, ptr @xfrm4_beet_gso_segment.__warned, align 1
  br i1 %.b76.i.i, label %land.lhs.true45.i.i.do.end50.i.i_crit_edge, label %if.then47.i.i

land.lhs.true45.i.i.do.end50.i.i_crit_edge:       ; preds = %land.lhs.true45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50.i.i

if.then47.i.i:                                    ; preds = %land.lhs.true45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @xfrm4_beet_gso_segment.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 166, ptr noundef nonnull @.str.1) #5
  br label %do.end50.i.i

do.end50.i.i:                                     ; preds = %if.then47.i.i, %land.lhs.true45.i.i.do.end50.i.i_crit_edge, %land.lhs.true.i40.i.do.end50.i.i_crit_edge, %__skb_pull.exit.i.i.do.end50.i.i_crit_edge
  %tobool52.not.i.i = icmp eq ptr %147, null
  br i1 %tobool52.not.i.i, label %do.end50.i.i.xfrm4_beet_gso_segment.exit.i_crit_edge, label %land.rhs.i41.i, !prof !37

do.end50.i.i.xfrm4_beet_gso_segment.exit.i_crit_edge: ; preds = %do.end50.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm4_beet_gso_segment.exit.i

land.rhs.i41.i:                                   ; preds = %do.end50.i.i
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %tobool53.not.i.i = icmp eq ptr %149, null
  br i1 %tobool53.not.i.i, label %land.rhs.i41.i.xfrm4_beet_gso_segment.exit.i_crit_edge, label %if.then56.i.i, !prof !37

land.rhs.i41.i.xfrm4_beet_gso_segment.exit.i_crit_edge: ; preds = %land.rhs.i41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm4_beet_gso_segment.exit.i

if.then56.i.i:                                    ; preds = %land.rhs.i41.i
  call void @__sanitizer_cov_trace_pc() #7
  %call59.i.i = call ptr %149(ptr noundef %skb, i64 noundef %esp_features.0) #5
  br label %xfrm4_beet_gso_segment.exit.i

xfrm4_beet_gso_segment.exit.i:                    ; preds = %if.then56.i.i, %land.rhs.i41.i.xfrm4_beet_gso_segment.exit.i_crit_edge, %do.end50.i.i.xfrm4_beet_gso_segment.exit.i_crit_edge
  %segs.0.i42.i = phi ptr [ %call59.i.i, %if.then56.i.i ], [ inttoptr (i32 -22 to ptr), %land.rhs.i41.i.xfrm4_beet_gso_segment.exit.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end50.i.i.xfrm4_beet_gso_segment.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %proto.i13.i) #5
  br label %cleanup

cleanup:                                          ; preds = %xfrm4_beet_gso_segment.exit.i, %if.then16.i.i, %land.rhs.i.i.cleanup_crit_edge, %do.end10.i.i.cleanup_crit_edge, %sw.bb.i, %if.end37.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i67.cleanup_crit_edge, %skb_sec_path.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %xfrm_offload.exit.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %skb_sec_path.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %xfrm_offload.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %skb_sec_path.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %pskb_may_pull.exit.cleanup_crit_edge ], [ %segs.0.i42.i, %xfrm4_beet_gso_segment.exit.i ], [ %call.i.i, %sw.bb.i ], [ %call19.i.i, %if.then16.i.i ], [ inttoptr (i32 -22 to ptr), %land.rhs.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end10.i.i.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end37.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false2.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %skb_sec_path.exit.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i67.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @esp4_gro_receive(ptr nocapture noundef readnone %head, ptr noundef %skb) #2 align 64 {
entry:
  %seq = alloca i32, align 4
  %spi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data_offset.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_offset.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seq) #5
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %seq, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spi) #5
  %3 = ptrtoint ptr %spi to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %spi, align 4, !annotation !39
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp.i = icmp ult i32 %5, %1
  br i1 %cmp.i, label %entry.cleanup45_crit_edge, label %cond.false.i, !prof !37

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

cond.false.i:                                     ; preds = %entry
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub.i.i.i)
  %cmp.i.i = icmp ugt i32 %1, %sub.i.i.i
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cond.false.i.pskb_pull.exit_crit_edge

cond.false.i.pskb_pull.exit_crit_edge:            ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pskb_pull.exit

land.lhs.true.i.i:                                ; preds = %cond.false.i
  %sub.i.i = sub i32 %1, %sub.i.i.i
  %call2.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #5
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.cleanup45_crit_edge, label %land.lhs.true.i.i.pskb_pull.exit_crit_edge

land.lhs.true.i.i.pskb_pull.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pskb_pull.exit

land.lhs.true.i.i.cleanup45_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

pskb_pull.exit:                                   ; preds = %land.lhs.true.i.i.pskb_pull.exit_crit_edge, %cond.false.i.pskb_pull.exit_crit_edge
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len1.i, align 4
  %sub4.i.i = sub i32 %9, %1
  store i32 %sub4.i.i, ptr %len1.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %1
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %pskb_pull.exit.cleanup45_crit_edge, label %if.end

pskb_pull.exit.cleanup45_crit_edge:               ; preds = %pskb_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

if.end:                                           ; preds = %pskb_pull.exit
  %call2 = call i32 @xfrm_parse_spi(ptr noundef %skb, i8 noundef zeroext 50, ptr noundef nonnull %spi, ptr noundef nonnull %seq) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end4:                                          ; preds = %if.end
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %12 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i.not.i.i.i = icmp eq i8 %14, 0
  br i1 %tobool.i.not.i.i.i, label %if.end4.if.then8_crit_edge, label %skb_sec_path.exit.i

if.end4.if.then8_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

skb_sec_path.exit.i:                              ; preds = %if.end4
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %15 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %16, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %18 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.if.then8_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.if.then8_crit_edge:           ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool1.not.i = icmp eq i32 %20, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then8_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.then8_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp.not.i = icmp eq i32 %22, %20
  br i1 %cmp.not.i, label %xfrm_offload.exit, label %lor.lhs.false2.i.if.then8_crit_edge

lor.lhs.false2.i.if.then8_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

xfrm_offload.exit:                                ; preds = %lor.lhs.false2.i
  %sub.i = add i32 %20, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  %tobool6.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool6.not, label %xfrm_offload.exit.if.then8_crit_edge, label %lor.lhs.false

xfrm_offload.exit.if.then8_crit_edge:             ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

lor.lhs.false:                                    ; preds = %xfrm_offload.exit
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %arrayidx.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.then8_crit_edge, label %lor.lhs.false.if.end29_crit_edge

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %xfrm_offload.exit.if.then8_crit_edge, %lor.lhs.false2.i.if.then8_crit_edge, %lor.lhs.false.i.if.then8_crit_edge, %skb_sec_path.exit.i.if.then8_crit_edge, %if.end4.if.then8_crit_edge
  %call9 = call ptr @secpath_set(ptr noundef %skb) #5
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then8.out_crit_edge, label %if.end12

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end12:                                         ; preds = %if.then8
  %25 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp13 = icmp eq i32 %26, 6
  br i1 %cmp13, label %if.end12.out_reset_crit_edge, label %if.end15

if.end12.out_reset_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_reset

if.end15:                                         ; preds = %if.end12
  %27 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 127
  %30 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nd_net.i, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %35 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %37 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %38 to i32
  %add.ptr.i.i79 = getelementptr i8, ptr %36, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i79, i32 0, i32 9
  %39 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %spi, align 4
  %call18 = call ptr @xfrm_state_lookup(ptr noundef %31, i32 noundef %34, ptr noundef %daddr, i32 noundef %40, i8 noundef zeroext 50, i16 noundef zeroext 2) #5
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end15.out_reset_crit_edge, label %if.end21

if.end15.out_reset_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_reset

if.end21:                                         ; preds = %if.end15
  %41 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %32, align 4
  %smark.i = getelementptr inbounds %struct.xfrm_state, ptr %call18, i32 0, i32 14, i32 12
  %43 = ptrtoint ptr %smark.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %smark.i, align 4
  %m1.i = getelementptr inbounds %struct.xfrm_state, ptr %call18, i32 0, i32 14, i32 12, i32 1
  %45 = ptrtoint ptr %m1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %m1.i, align 4
  %and.i = and i32 %46, %44
  %neg.i = xor i32 %46, -1
  %and3.i = and i32 %42, %neg.i
  %or.i = or i32 %and.i, %and3.i
  store i32 %or.i, ptr %32, align 4
  %47 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call9, align 4
  %inc = add i32 %48, 1
  store i32 %inc, ptr %call9, align 4
  %arrayidx = getelementptr %struct.sec_path, ptr %call9, i32 0, i32 2, i32 %48
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call18, ptr %arrayidx, align 4
  %olen = getelementptr inbounds %struct.sec_path, ptr %call9, i32 0, i32 1
  %50 = ptrtoint ptr %olen to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %olen, align 4
  %inc24 = add i32 %51, 1
  store i32 %inc24, ptr %olen, align 4
  %52 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %54 = and i8 %53, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.i.not.i.i.i81 = icmp eq i8 %54, 0
  br i1 %tobool.i.not.i.i.i81, label %if.end21.out_reset_crit_edge, label %skb_sec_path.exit.i88

if.end21.out_reset_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_reset

skb_sec_path.exit.i88:                            ; preds = %if.end21
  %extensions.i.i.i82 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %55 = ptrtoint ptr %extensions.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %extensions.i.i.i82, align 8
  %arrayidx.i.i.i83 = getelementptr %struct.skb_ext, ptr %56, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.i.i83, align 1
  %conv.i.i.i84 = zext i8 %58 to i32
  %shl.i.i.i85 = shl nuw nsw i32 %conv.i.i.i84, 3
  %add.ptr.i.i.i86 = getelementptr i8, ptr %56, i32 %shl.i.i.i85
  %tobool.not.i87 = icmp eq ptr %add.ptr.i.i.i86, null
  br i1 %tobool.not.i87, label %skb_sec_path.exit.i88.out_reset_crit_edge, label %lor.lhs.false.i91

skb_sec_path.exit.i88.out_reset_crit_edge:        ; preds = %skb_sec_path.exit.i88
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_reset

lor.lhs.false.i91:                                ; preds = %skb_sec_path.exit.i88
  %olen.i89 = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i86, i32 0, i32 1
  %59 = ptrtoint ptr %olen.i89 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %olen.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool1.not.i90 = icmp eq i32 %60, 0
  br i1 %tobool1.not.i90, label %lor.lhs.false.i91.out_reset_crit_edge, label %lor.lhs.false2.i93

lor.lhs.false.i91.out_reset_crit_edge:            ; preds = %lor.lhs.false.i91
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_reset

lor.lhs.false2.i93:                               ; preds = %lor.lhs.false.i91
  %61 = ptrtoint ptr %add.ptr.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i.i.i86, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %60)
  %cmp.not.i92 = icmp eq i32 %62, %60
  br i1 %cmp.not.i92, label %xfrm_offload.exit98, label %lor.lhs.false2.i93.out_reset_crit_edge

lor.lhs.false2.i93.out_reset_crit_edge:           ; preds = %lor.lhs.false2.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_reset

xfrm_offload.exit98:                              ; preds = %lor.lhs.false2.i93
  %sub.i94 = add i32 %60, -1
  %arrayidx.i95 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i86, i32 0, i32 3, i32 %sub.i94
  %tobool26.not = icmp eq ptr %arrayidx.i95, null
  br i1 %tobool26.not, label %xfrm_offload.exit98.out_reset_crit_edge, label %xfrm_offload.exit98.if.end29_crit_edge

xfrm_offload.exit98.if.end29_crit_edge:           ; preds = %xfrm_offload.exit98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

xfrm_offload.exit98.out_reset_crit_edge:          ; preds = %xfrm_offload.exit98
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_reset

if.end29:                                         ; preds = %xfrm_offload.exit98.if.end29_crit_edge, %lor.lhs.false.if.end29_crit_edge
  %xo.1 = phi ptr [ %arrayidx.i, %lor.lhs.false.if.end29_crit_edge ], [ %arrayidx.i95, %xfrm_offload.exit98.if.end29_crit_edge ]
  %flags30 = getelementptr inbounds %struct.xfrm_offload, ptr %xo.1, i32 0, i32 1
  %63 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags30, align 4
  %or = or i32 %64, 32
  store i32 %or, ptr %flags30, align 4
  %tunnel = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %65 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %tunnel, align 8
  %family = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %66 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %family, align 8
  %daddroff = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %67 = ptrtoint ptr %daddroff to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 16, ptr %daddroff, align 4
  %68 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %seq, align 4
  %seq38 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %70 = ptrtoint ptr %seq38 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %seq38, align 4
  %71 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %spi, align 4
  %call39 = call i32 @xfrm_input(ptr noundef %skb, i32 noundef 50, i32 noundef %72, i32 noundef -2) #5
  br label %cleanup45

out_reset:                                        ; preds = %xfrm_offload.exit98.out_reset_crit_edge, %lor.lhs.false2.i93.out_reset_crit_edge, %lor.lhs.false.i91.out_reset_crit_edge, %skb_sec_path.exit.i88.out_reset_crit_edge, %if.end21.out_reset_crit_edge, %if.end15.out_reset_crit_edge, %if.end12.out_reset_crit_edge
  %73 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %75 = and i8 %74, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.i.not.i.i = icmp eq i8 %75, 0
  br i1 %tobool.i.not.i.i, label %out_reset.out_crit_edge, label %if.then.i.i

out_reset.out_crit_edge:                          ; preds = %out_reset
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then.i.i:                                      ; preds = %out_reset
  call void @__sanitizer_cov_trace_pc() #7
  call void @__skb_ext_del(ptr noundef %skb, i32 noundef 1) #5
  br label %out

out:                                              ; preds = %if.then.i.i, %out_reset.out_crit_edge, %if.then8.out_crit_edge, %if.end.out_crit_edge
  %call41 = call ptr @skb_push(ptr noundef %skb, i32 noundef %1) #5
  %same_flow = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %76 = ptrtoint ptr %same_flow to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load = load i16, ptr %same_flow, align 2
  %bf.clear = and i16 %bf.load, 32767
  store i16 %bf.clear, ptr %same_flow, align 2
  %flush = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %77 = ptrtoint ptr %flush to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %flush, align 4
  br label %cleanup45

cleanup45:                                        ; preds = %out, %if.end29, %pskb_pull.exit.cleanup45_crit_edge, %land.lhs.true.i.i.cleanup45_crit_edge, %entry.cleanup45_crit_edge
  %retval.0 = phi ptr [ null, %out ], [ inttoptr (i32 -115 to ptr), %if.end29 ], [ null, %pskb_pull.exit.cleanup45_crit_edge ], [ null, %entry.cleanup45_crit_edge ], [ null, %land.lhs.true.i.i.cleanup45_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_eth_gso_segment(ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_parse_spi(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @secpath_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_lookup(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_register_type_offload(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !23, !25, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_esp4_offload__515_371_esp4_offload_init6, !1, !"__initcall__kmod_esp4_offload__515_371_esp4_offload_init6", i1 false, i1 false}
!1 = !{!"../net/ipv4/esp4_offload.c", i32 371, i32 1}
!2 = !{ptr @__exitcall_esp4_offload_exit, !3, !"__exitcall_esp4_offload_exit", i1 false, i1 false}
!3 = !{!"../net/ipv4/esp4_offload.c", i32 372, i32 1}
!4 = !{ptr @__UNIQUE_ID_file516, !5, !"__UNIQUE_ID_file516", i1 false, i1 false}
!5 = !{!"../net/ipv4/esp4_offload.c", i32 373, i32 1}
!6 = !{ptr @__UNIQUE_ID_license517, !5, !"__UNIQUE_ID_license517", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author518, !8, !"__UNIQUE_ID_author518", i1 false, i1 false}
!8 = !{!"../net/ipv4/esp4_offload.c", i32 374, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias519, !10, !"__UNIQUE_ID_alias519", i1 false, i1 false}
!10 = !{!"../net/ipv4/esp4_offload.c", i32 375, i32 1}
!11 = !{ptr @__UNIQUE_ID_description520, !12, !"__UNIQUE_ID_description520", i1 false, i1 false}
!12 = !{!"../net/ipv4/esp4_offload.c", i32 376, i32 1}
!13 = !{ptr @esp_type_offload, !14, !"esp_type_offload", i1 false, i1 false}
!14 = !{!"../net/ipv4/esp4_offload.c", i32 347, i32 39}
!15 = !{ptr @esp4_offload, !16, !"esp4_offload", i1 false, i1 false}
!16 = !{!"../net/ipv4/esp4_offload.c", i32 340, i32 33}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/ipv4/esp4_offload.c", i32 125, i32 8}
!19 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/ipv4/esp4_offload.c", i32 166, i32 8}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/ipv4/esp4_offload.c", i32 358, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @esp4_offload_init._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @esp4_offload_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2154571532, i64 2154572020, i64 2154571569, i64 2154571625, i64 2154571659, i64 2154571683, i64 2154571724, i64 2154571745, i64 2154571773, i64 2154571807}
!39 = !{!"auto-init"}
