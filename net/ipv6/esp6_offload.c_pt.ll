; ModuleID = '/llk/IR_all_yes/net/ipv6/esp6_offload.c_pt.bc'
source_filename = "../net/ipv6/esp6_offload.c"
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
%struct.xfrm_offload = type { %struct.anon.156, i32, i32, i8, i8 }
%struct.anon.156 = type { i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
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
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.162, ptr, ptr, ptr, ptr, %union.anon.163, [120 x i8] }
%union.anon.162 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.163 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ip_beet_phdr = type { i8, i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.141, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.155, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.141 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.155 = type { ptr }
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
%struct.ipv6_opt_hdr = type { i8, i8 }

@esp6_type_offload = internal constant { %struct.xfrm_type_offload, [44 x i8] } { %struct.xfrm_type_offload { ptr null, i8 50, ptr @esp6_gso_encap, ptr @esp6_input_tail, ptr @esp6_xmit }, [44 x i8] zeroinitializer }, align 32
@esp6_offload = internal constant { %struct.net_offload, [16 x i8] } { %struct.net_offload { %struct.offload_callbacks { ptr @esp6_gso_segment, ptr @esp6_gro_receive, ptr null }, i32 0 }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_esp6_offload__574_406_esp6_offload_init6 = internal global ptr @esp6_offload_init, section ".initcall6.init", align 4
@__exitcall_esp6_offload_exit = internal global ptr @esp6_offload_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file575 = internal constant [40 x i8] c"esp6_offload.file=net/ipv6/esp6_offload\00", section ".modinfo", align 1
@__UNIQUE_ID_license576 = internal constant [25 x i8] c"esp6_offload.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author577 = internal constant [68 x i8] c"esp6_offload.author=Steffen Klassert <steffen.klassert@secunet.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias578 = internal constant [38 x i8] c"esp6_offload.alias=xfrm-offload-10-50\00", section ".modinfo", align 1
@__UNIQUE_ID_description579 = internal constant [54 x i8] c"esp6_offload.description=IPV6 GSO/GRO offload support\00", section ".modinfo", align 1
@inet6_offloads = external dso_local global [256 x ptr], align 4
@xfrm6_transport_gso_segment.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/ipv6/esp6_offload.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@xfrm6_beet_gso_segment.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@esp6_offload_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: can't add xfrm type offload\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"esp6_offload_init\00", [46 x i8] zeroinitializer }, align 32
@esp6_offload_init._entry_ptr = internal global ptr @esp6_offload_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"esp6_type_offload\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 382, i32 39 }
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"esp6_offload\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 375, i32 33 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 160, i32 8 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [27 x i8] c"../net/ipv6/esp6_offload.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 393, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_alias578, ptr @__UNIQUE_ID_author577, ptr @__UNIQUE_ID_description579, ptr @__UNIQUE_ID_file575, ptr @__UNIQUE_ID_license576, ptr @__exitcall_esp6_offload_exit, ptr @__initcall__kmod_esp6_offload__574_406_esp6_offload_init6, ptr @esp6_offload_exit, ptr @esp6_offload_init._entry, ptr @esp6_offload_init._entry_ptr, ptr @esp6_type_offload, ptr @esp6_offload, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp6_type_offload to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp6_offload to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp6_offload_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @esp6_offload_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xfrm_unregister_type_offload(ptr noundef nonnull @esp6_type_offload, i16 noundef zeroext 10) #5
  %call = tail call i32 @inet6_del_offload(ptr noundef nonnull @esp6_offload, i8 noundef zeroext 50) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_unregister_type_offload(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @esp6_offload_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfrm_register_type_offload(ptr noundef nonnull @esp6_type_offload, i16 noundef zeroext 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @inet6_add_offload(ptr noundef nonnull @esp6_offload, i8 noundef zeroext 50) #5
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esp6_gso_encap(ptr nocapture noundef readonly %x, ptr noundef %skb) #2 align 64 {
entry:
  %proto = alloca i8, align 1
  %frag = alloca i16, align 2
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
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %proto) #5
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nexthdr, align 2
  %17 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %proto, align 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %call3 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.neg) #5
  %outer_mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 48
  %20 = ptrtoint ptr %outer_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %outer_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  br i1 %cmp, label %if.then, label %xfrm_offload.exit.if.end_crit_edge

xfrm_offload.exit.if.end_crit_edge:               ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag) #5
  %22 = ptrtoint ptr %frag to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %frag, align 2, !annotation !37
  %call5 = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef 40, ptr noundef nonnull %proto, ptr noundef nonnull %frag) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %xfrm_offload.exit.if.end_crit_edge
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %25 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i24 = zext i16 %26 to i32
  %add.ptr.i.i25 = getelementptr i8, ptr %24, i32 %conv.i.i24
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %27 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %28 to i32
  %add.ptr.i = getelementptr i8, ptr %24, i32 %conv.i
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 50, ptr %add.ptr.i, align 1
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %spi, align 4
  %32 = ptrtoint ptr %add.ptr.i.i25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %add.ptr.i.i25, align 4
  %seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %33 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %seq, align 4
  %seq_no = getelementptr inbounds %struct.ip_esp_hdr, ptr %add.ptr.i.i25, i32 0, i32 1
  %35 = ptrtoint ptr %seq_no to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %seq_no, align 4
  %36 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %proto, align 1
  %proto9 = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i, i32 0, i32 3
  %38 = ptrtoint ptr %proto9 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %proto9, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %proto) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp6_input_tail(ptr nocapture noundef readonly %x, ptr noundef %skb) #2 align 64 {
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
  br i1 %cmp.not.i10, label %if.end.i11, label %xfrm_offload.exit.if.end_crit_edge, !prof !38

xfrm_offload.exit.if.end_crit_edge:               ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i11:                                       ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add)
  %cmp3.i = icmp ult i32 %18, %add
  br i1 %cmp3.i, label %if.end.i11.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !38

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
  %call5 = tail call i32 @esp6_input_done2(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -22, %pskb_may_pull.exit.cleanup_crit_edge ], [ -22, %if.end.i11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp6_xmit(ptr noundef %x, ptr noundef %skb, i64 noundef %features) #2 align 64 {
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
  br i1 %tobool1.not, label %if.end.if.then2_crit_edge, label %lor.lhs.false

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %xso = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41
  %13 = ptrtoint ptr %xso to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xso, align 8
  %15 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %cmp.not = icmp eq ptr %14, %17
  br i1 %cmp.not, label %lor.lhs.false.if.end3_crit_edge, label %lor.lhs.false.if.then2_crit_edge

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

lor.lhs.false.if.end3_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %arrayidx.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %or = or i32 %19, 8
  store i32 %or, ptr %flags, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %lor.lhs.false.if.end3_crit_edge
  %hw_offload.0.off0 = phi i1 [ false, %if.then2 ], [ true, %lor.lhs.false.if.end3_crit_edge ]
  %proto = getelementptr inbounds %struct.xfrm_offload, ptr %arrayidx.i, i32 0, i32 3
  %20 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %proto, align 4
  %proto4 = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 8
  %22 = ptrtoint ptr %proto4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %proto4, align 8
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 128
  %tfclen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 2
  %27 = ptrtoint ptr %tfclen to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %tfclen, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %24, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cra_blocksize.i.i, align 4
  %add = add i32 %31, 3
  %and7 = and i32 %add, -4
  %len8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %32 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len8, align 4
  %sub = add i32 %33, 1
  %add12 = add i32 %sub, %and7
  %neg = sub i32 0, %and7
  %and14 = and i32 %add12, %neg
  %clen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 5
  %34 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and14, ptr %clen, align 4
  %sub19 = sub i32 %and14, %33
  %plen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 4
  %35 = ptrtoint ptr %plen to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub19, ptr %plen, align 8
  %add23 = add i32 %sub19, %26
  %tailen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 3
  %36 = ptrtoint ptr %tailen to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add23, ptr %tailen, align 4
  br i1 %hw_offload.0.off0, label %lor.lhs.false25, label %if.end3.if.then27_crit_edge

if.end3.if.then27_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27

lor.lhs.false25:                                  ; preds = %if.end3
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %37 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.i.not = icmp eq i16 %40, 0
  br i1 %tobool.i.not, label %lor.lhs.false25.if.then27_crit_edge, label %lor.lhs.false25.if.end34_crit_edge

lor.lhs.false25.if.end34_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

lor.lhs.false25.if.then27_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false25.if.then27_crit_edge, %if.end3.if.then27_crit_edge
  %call28 = call i32 @esp6_output_head(ptr noundef %x, ptr noundef %skb, ptr noundef nonnull %esp) #5
  %nfrags = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 7
  %41 = ptrtoint ptr %nfrags to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call28, ptr %nfrags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp30 = icmp slt i32 %call28, 0
  br i1 %cmp30, label %if.then27.cleanup_crit_edge, label %if.then27.if.end34_crit_edge

if.then27.if.end34_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.then27.if.end34_crit_edge, %lor.lhs.false25.if.end34_crit_edge
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %44 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %46 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %47 to i32
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 %conv.i.i
  %48 = ptrtoint ptr %esp to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i.i, ptr %esp, align 8
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %49 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %spi, align 4
  %51 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %add.ptr.i.i, align 4
  %52 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %53 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i132 = zext i16 %54 to i32
  %add.ptr.i.i133 = getelementptr i8, ptr %52, i32 %conv.i.i132
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %55 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i133 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %call41 = call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.neg) #5
  %flags42 = getelementptr inbounds %struct.xfrm_offload, ptr %arrayidx.i, i32 0, i32 1
  %57 = ptrtoint ptr %flags42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags42, align 4
  %and43 = and i32 %58, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end34.if.end56_crit_edge, label %if.then45

if.end34.if.end56_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then45:                                        ; preds = %if.end34
  %59 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %esp, align 8
  %seq_no = getelementptr inbounds %struct.ip_esp_hdr, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %seq_no to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %43, ptr %seq_no, align 4
  %end.i.i134 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %62 = ptrtoint ptr %end.i.i134 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i.i134, align 4
  %gso_size.i135 = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %gso_size.i135 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %gso_size.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool.i136.not = icmp eq i16 %65, 0
  br i1 %tobool.i136.not, label %if.then45.if.end56.sink.split_crit_edge, label %if.else

if.then45.if.end56.sink.split_crit_edge:          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.sink.split

if.else:                                          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 5
  %66 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %gso_segs, align 2
  %conv = zext i16 %67 to i32
  br label %if.end56.sink.split

if.end56.sink.split:                              ; preds = %if.else, %if.then45.if.end56.sink.split_crit_edge
  %.sink166 = phi i32 [ %conv, %if.else ], [ 1, %if.then45.if.end56.sink.split_crit_edge ]
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i, align 4
  %inc = add i32 %69, %.sink166
  store i32 %inc, ptr %arrayidx.i, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end56.sink.split, %if.end34.if.end56_crit_edge
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i, align 4
  %conv59 = zext i32 %71 to i64
  %hi = getelementptr inbounds %struct.anon.156, ptr %arrayidx.i, i32 0, i32 1
  %72 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hi, align 4
  %conv61 = zext i32 %73 to i64
  %shl = shl nuw i64 %conv61, 32
  %add62 = or i64 %shl, %conv59
  %seqno = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 1
  %74 = ptrtoint ptr %seqno to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %add62, ptr %seqno, align 8
  %75 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len8, align 4
  %sub64 = add i32 %76, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub64)
  %cmp65 = icmp sgt i32 %sub64, 65535
  %77 = trunc i32 %sub64 to i16
  %conv69 = select i1 %cmp65, i16 0, i16 %77
  %78 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %head.i.i, align 8
  %80 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i139 = zext i16 %81 to i32
  %add.ptr.i.i140 = getelementptr i8, ptr %79, i32 %conv.i.i139
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i140, i32 0, i32 2
  %82 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv69, ptr %payload_len, align 4
  br i1 %hw_offload.0.off0, label %if.then72, label %if.end83

if.then72:                                        ; preds = %if.end56
  %call73 = call ptr @skb_ext_add(ptr noundef %skb, i32 noundef 1) #5
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.then72.cleanup_crit_edge, label %if.end76

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end76:                                         ; preds = %if.then72
  %83 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %85 = and i8 %84, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.i.not.i.i.i142 = icmp eq i8 %85, 0
  br i1 %tobool.i.not.i.i.i142, label %if.end76.cleanup_crit_edge, label %skb_sec_path.exit.i149

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_sec_path.exit.i149:                           ; preds = %if.end76
  %86 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i144 = getelementptr %struct.skb_ext, ptr %87, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %arrayidx.i.i.i144 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i.i.i144, align 1
  %conv.i.i.i145 = zext i8 %89 to i32
  %shl.i.i.i146 = shl nuw nsw i32 %conv.i.i.i145, 3
  %add.ptr.i.i.i147 = getelementptr i8, ptr %87, i32 %shl.i.i.i146
  %tobool.not.i148 = icmp eq ptr %add.ptr.i.i.i147, null
  br i1 %tobool.not.i148, label %skb_sec_path.exit.i149.cleanup_crit_edge, label %lor.lhs.false.i152

skb_sec_path.exit.i149.cleanup_crit_edge:         ; preds = %skb_sec_path.exit.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i152:                               ; preds = %skb_sec_path.exit.i149
  %olen.i150 = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i147, i32 0, i32 1
  %90 = ptrtoint ptr %olen.i150 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %olen.i150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool1.not.i151 = icmp eq i32 %91, 0
  br i1 %tobool1.not.i151, label %lor.lhs.false.i152.cleanup_crit_edge, label %lor.lhs.false2.i154

lor.lhs.false.i152.cleanup_crit_edge:             ; preds = %lor.lhs.false.i152
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i154:                              ; preds = %lor.lhs.false.i152
  %92 = ptrtoint ptr %add.ptr.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i.i.i147, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %91)
  %cmp.not.i153 = icmp eq i32 %93, %91
  br i1 %cmp.not.i153, label %xfrm_offload.exit159, label %lor.lhs.false2.i154.cleanup_crit_edge

lor.lhs.false2.i154.cleanup_crit_edge:            ; preds = %lor.lhs.false2.i154
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

xfrm_offload.exit159:                             ; preds = %lor.lhs.false2.i154
  %sub.i155 = add i32 %91, -1
  %arrayidx.i156 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i147, i32 0, i32 3, i32 %sub.i155
  %tobool78.not = icmp eq ptr %arrayidx.i156, null
  br i1 %tobool78.not, label %xfrm_offload.exit159.cleanup_crit_edge, label %if.end80

xfrm_offload.exit159.cleanup_crit_edge:           ; preds = %xfrm_offload.exit159
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end80:                                         ; preds = %xfrm_offload.exit159
  call void @__sanitizer_cov_trace_pc() #7
  %flags81 = getelementptr inbounds %struct.xfrm_offload, ptr %arrayidx.i156, i32 0, i32 1
  %94 = ptrtoint ptr %flags81 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags81, align 4
  %or82 = or i32 %95, 256
  store i32 %or82, ptr %flags81, align 4
  br label %cleanup

if.end83:                                         ; preds = %if.end56
  %call84 = call i32 @esp6_output_tail(ptr noundef %x, ptr noundef %skb, ptr noundef nonnull %esp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end87:                                         ; preds = %if.end83
  %96 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %98 = and i8 %97, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.i.not.i.i = icmp eq i8 %98, 0
  br i1 %tobool.i.not.i.i, label %if.end87.cleanup_crit_edge, label %if.then.i.i

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  call void @__skb_ext_del(ptr noundef %skb, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.end87.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.end80, %xfrm_offload.exit159.cleanup_crit_edge, %lor.lhs.false2.i154.cleanup_crit_edge, %lor.lhs.false.i152.cleanup_crit_edge, %skb_sec_path.exit.i149.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.then72.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %xfrm_offload.exit.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %skb_sec_path.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end80 ], [ -22, %xfrm_offload.exit.cleanup_crit_edge ], [ %call28, %if.then27.cleanup_crit_edge ], [ -12, %if.then72.cleanup_crit_edge ], [ -22, %xfrm_offload.exit159.cleanup_crit_edge ], [ %call84, %if.end83.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ -22, %lor.lhs.false2.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %skb_sec_path.exit.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false2.i154.cleanup_crit_edge ], [ -22, %lor.lhs.false.i152.cleanup_crit_edge ], [ -22, %skb_sec_path.exit.i149.cleanup_crit_edge ], [ -22, %if.end76.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %esp) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esp6_input_done2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esp6_output_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_ext_add(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esp6_output_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_del(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @esp6_gso_segment(ptr noundef %skb, i64 noundef %features) #2 align 64 {
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
  %conv.i.i56 = zext i16 %26 to i32
  %add.ptr.i.i57 = getelementptr i8, ptr %24, i32 %conv.i.i56
  %27 = ptrtoint ptr %add.ptr.i.i57 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i57, align 4
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
  %cmp.not.i58 = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i58, label %if.end.i59, label %if.end12.if.end17_crit_edge, !prof !38

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.end.i59:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add)
  %cmp3.i = icmp ult i32 %38, %add
  br i1 %cmp3.i, label %if.end.i59.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !38

if.end.i59.cleanup_crit_edge:                     ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i59
  %sub.i60 = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i60) #5
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
  %ivsize.i.i63 = getelementptr i8, ptr %42, i32 -104
  %43 = ptrtoint ptr %ivsize.i.i63 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ivsize.i.i63, align 8
  %add19 = add i32 %44, 8
  %45 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i.i, align 4
  %sub.i64 = sub i32 %46, %add19
  store i32 %sub.i64, ptr %len.i.i, align 4
  %47 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i64, i32 %48)
  %cmp.i = icmp ult i32 %sub.i64, %48
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !38

do.body4.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #5, !srcloc !39
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
  %and21 = and i64 %features, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %__skb_pull.exit.if.then24_crit_edge, label %lor.lhs.false

__skb_pull.exit.if.then24_crit_edge:              ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

lor.lhs.false:                                    ; preds = %__skb_pull.exit
  %xso = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 41
  %52 = ptrtoint ptr %xso to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %xso, align 8
  %54 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %cmp23.not = icmp eq ptr %53, %56
  br i1 %cmp23.not, label %if.else, label %lor.lhs.false.if.then24_crit_edge

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %__skb_pull.exit.if.then24_crit_edge
  %and25 = and i64 %features, -68719476764
  br label %if.end31

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %and26 = and i64 %features, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26)
  %tobool27.not = icmp eq i64 %and26, 0
  %and29 = and i64 %features, -68719476763
  %spec.select = select i1 %tobool27.not, i64 %and29, i64 %features
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then24
  %esp_features.0 = phi i64 [ %and25, %if.then24 ], [ %spec.select, %if.else ]
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %arrayidx.i, i32 0, i32 1
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags, align 4
  %or = or i32 %58, 16
  store i32 %or, ptr %flags, align 4
  %outer_mode.i = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 48
  %59 = ptrtoint ptr %outer_mode.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %outer_mode.i, align 2
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values)
  switch i8 %60, label %if.end31.cleanup_crit_edge [
    i8 1, label %sw.bb.i
    i8 0, label %sw.bb1.i
    i8 4, label %sw.bb3.i
  ]

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call ptr @skb_eth_gso_segment(ptr noundef %skb, i64 noundef %esp_features.0, i16 noundef zeroext -31011) #5
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end31
  %62 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %64 = and i8 %63, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.i.not.i.i.i.i.i = icmp eq i8 %64, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %sw.bb1.i.xfrm_offload.exit.i.i_crit_edge, label %skb_sec_path.exit.i.i.i

sw.bb1.i.xfrm_offload.exit.i.i_crit_edge:         ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit.i.i

skb_sec_path.exit.i.i.i:                          ; preds = %sw.bb1.i
  %65 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.skb_ext, ptr %66, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %68 to i32
  %shl.i.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i.i, 3
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %66, i32 %shl.i.i.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %skb_sec_path.exit.i.i.i.xfrm_offload.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

skb_sec_path.exit.i.i.i.xfrm_offload.exit.i.i_crit_edge: ; preds = %skb_sec_path.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %skb_sec_path.exit.i.i.i
  %olen.i.i.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %olen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %olen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool1.not.i.i.i = icmp eq i32 %70, 0
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.xfrm_offload.exit.i.i_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.i.xfrm_offload.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit.i.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %71 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %70)
  %cmp.not.i.i.i = icmp eq i32 %72, %70
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %lor.lhs.false2.i.i.i.xfrm_offload.exit.i.i_crit_edge

lor.lhs.false2.i.i.i.xfrm_offload.exit.i.i_crit_edge: ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i.i = add i32 %70, -1
  %arrayidx.i.i.i65 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i.i.i, i32 0, i32 3, i32 %sub.i.i.i
  br label %xfrm_offload.exit.i.i

xfrm_offload.exit.i.i:                            ; preds = %if.end.i.i.i, %lor.lhs.false2.i.i.i.xfrm_offload.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.xfrm_offload.exit.i.i_crit_edge, %skb_sec_path.exit.i.i.i.xfrm_offload.exit.i.i_crit_edge, %sw.bb1.i.xfrm_offload.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %arrayidx.i.i.i65, %if.end.i.i.i ], [ null, %lor.lhs.false2.i.i.i.xfrm_offload.exit.i.i_crit_edge ], [ null, %lor.lhs.false.i.i.i.xfrm_offload.exit.i.i_crit_edge ], [ null, %skb_sec_path.exit.i.i.i.xfrm_offload.exit.i.i_crit_edge ], [ null, %sw.bb1.i.xfrm_offload.exit.i.i_crit_edge ]
  %header_len.i.i = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 14, i32 9
  %73 = ptrtoint ptr %header_len.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %header_len.i.i, align 4
  %75 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %transport_header.i.i, align 2
  %77 = trunc i32 %74 to i16
  %conv2.i.i = add i16 %76, %77
  store i16 %conv2.i.i, ptr %transport_header.i.i, align 2
  %proto.i.i = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i.i.i, i32 0, i32 3
  %78 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %proto.i.i, align 4
  %idxprom.i.i = zext i8 %79 to i32
  %arrayidx.i.i67 = getelementptr [256 x ptr], ptr @inet6_offloads, i32 0, i32 %idxprom.i.i
  %80 = ptrtoint ptr %arrayidx.i.i67 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %arrayidx.i.i67, align 4
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
  %.b25.i.i = load i1, ptr @xfrm6_transport_gso_segment.__warned, align 1
  br i1 %.b25.i.i, label %land.lhs.true7.i.i.do.end10.i.i_crit_edge, label %if.then.i.i68

land.lhs.true7.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i.i

if.then.i.i68:                                    ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @xfrm6_transport_gso_segment.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 160, ptr noundef nonnull @.str.1) #5
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then.i.i68, %land.lhs.true7.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %xfrm_offload.exit.i.i.do.end10.i.i_crit_edge
  %tobool12.not.i.i = icmp eq ptr %81, null
  br i1 %tobool12.not.i.i, label %do.end10.i.i.cleanup_crit_edge, label %land.rhs.i.i, !prof !38

do.end10.i.i.cleanup_crit_edge:                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs.i.i:                                     ; preds = %do.end10.i.i
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %tobool13.not.i.i = icmp eq ptr %83, null
  br i1 %tobool13.not.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then16.i.i, !prof !38

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call19.i.i = tail call ptr %83(ptr noundef %skb, i64 noundef %esp_features.0) #5
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end31
  %84 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %86 = and i8 %85, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.i.not.i.i.i.i15.i = icmp eq i8 %86, 0
  br i1 %tobool.i.not.i.i.i.i15.i, label %sw.bb3.i.xfrm_offload.exit.i34.i_crit_edge, label %skb_sec_path.exit.i.i22.i

sw.bb3.i.xfrm_offload.exit.i34.i_crit_edge:       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit.i34.i

skb_sec_path.exit.i.i22.i:                        ; preds = %sw.bb3.i
  %87 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i.i17.i = getelementptr %struct.skb_ext, ptr %88, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %arrayidx.i.i.i.i17.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i.i.i.i17.i, align 1
  %conv.i.i.i.i18.i = zext i8 %90 to i32
  %shl.i.i.i.i19.i = shl nuw nsw i32 %conv.i.i.i.i18.i, 3
  %add.ptr.i.i.i.i20.i = getelementptr i8, ptr %88, i32 %shl.i.i.i.i19.i
  %tobool.not.i.i21.i = icmp eq ptr %add.ptr.i.i.i.i20.i, null
  br i1 %tobool.not.i.i21.i, label %skb_sec_path.exit.i.i22.i.xfrm_offload.exit.i34.i_crit_edge, label %lor.lhs.false.i.i25.i

skb_sec_path.exit.i.i22.i.xfrm_offload.exit.i34.i_crit_edge: ; preds = %skb_sec_path.exit.i.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit.i34.i

lor.lhs.false.i.i25.i:                            ; preds = %skb_sec_path.exit.i.i22.i
  %olen.i.i23.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i.i20.i, i32 0, i32 1
  %91 = ptrtoint ptr %olen.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %olen.i.i23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool1.not.i.i24.i = icmp eq i32 %92, 0
  br i1 %tobool1.not.i.i24.i, label %lor.lhs.false.i.i25.i.xfrm_offload.exit.i34.i_crit_edge, label %lor.lhs.false2.i.i27.i

lor.lhs.false.i.i25.i.xfrm_offload.exit.i34.i_crit_edge: ; preds = %lor.lhs.false.i.i25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit.i34.i

lor.lhs.false2.i.i27.i:                           ; preds = %lor.lhs.false.i.i25.i
  %93 = ptrtoint ptr %add.ptr.i.i.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr.i.i.i.i20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %92)
  %cmp.not.i.i26.i = icmp eq i32 %94, %92
  br i1 %cmp.not.i.i26.i, label %if.end.i.i30.i, label %lor.lhs.false2.i.i27.i.xfrm_offload.exit.i34.i_crit_edge

lor.lhs.false2.i.i27.i.xfrm_offload.exit.i34.i_crit_edge: ; preds = %lor.lhs.false2.i.i27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm_offload.exit.i34.i

if.end.i.i30.i:                                   ; preds = %lor.lhs.false2.i.i27.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i28.i = add i32 %92, -1
  %arrayidx.i.i29.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i.i20.i, i32 0, i32 3, i32 %sub.i.i28.i
  br label %xfrm_offload.exit.i34.i

xfrm_offload.exit.i34.i:                          ; preds = %if.end.i.i30.i, %lor.lhs.false2.i.i27.i.xfrm_offload.exit.i34.i_crit_edge, %lor.lhs.false.i.i25.i.xfrm_offload.exit.i34.i_crit_edge, %skb_sec_path.exit.i.i22.i.xfrm_offload.exit.i34.i_crit_edge, %sw.bb3.i.xfrm_offload.exit.i34.i_crit_edge
  %retval.0.i.i31.i = phi ptr [ %arrayidx.i.i29.i, %if.end.i.i30.i ], [ null, %lor.lhs.false2.i.i27.i.xfrm_offload.exit.i34.i_crit_edge ], [ null, %lor.lhs.false.i.i25.i.xfrm_offload.exit.i34.i_crit_edge ], [ null, %skb_sec_path.exit.i.i22.i.xfrm_offload.exit.i34.i_crit_edge ], [ null, %sw.bb3.i.xfrm_offload.exit.i34.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %proto.i13.i) #5
  %proto2.i.i = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i.i31.i, i32 0, i32 3
  %95 = ptrtoint ptr %proto2.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %proto2.i.i, align 4
  %97 = ptrtoint ptr %proto.i13.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %proto.i13.i, align 1
  %header_len.i32.i = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 14, i32 9
  %98 = ptrtoint ptr %header_len.i32.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %header_len.i32.i, align 4
  %100 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %transport_header.i.i, align 2
  %102 = trunc i32 %99 to i16
  %conv3.i.i = add i16 %101, %102
  store i16 %conv3.i.i, ptr %transport_header.i.i, align 2
  %family.i.i = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 8, i32 6
  %103 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %104)
  %cmp.not.i.i = icmp eq i16 %104, 10
  br i1 %cmp.not.i.i, label %if.else28.i.i, label %if.then.i35.i

if.then.i35.i:                                    ; preds = %xfrm_offload.exit.i34.i
  %sub.i.i69 = add i16 %conv3.i.i, -20
  %105 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %sub.i.i69, ptr %transport_header.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %96)
  %cmp10.i.i = icmp eq i8 %96, 94
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.else.i.i

if.then12.i.i:                                    ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i, align 4
  %hdrlen.i.i = getelementptr inbounds %struct.ip_beet_phdr, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %hdrlen.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %hdrlen.i.i, align 1
  %conv13.i.i = zext i8 %109 to i16
  %mul.i.i = shl nuw nsw i16 %conv13.i.i, 3
  %add16.i.i = add i16 %mul.i.i, %sub.i.i69
  %110 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %add16.i.i, ptr %transport_header.i.i, align 2
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %107, align 1
  %113 = ptrtoint ptr %proto.i13.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %proto.i13.i, align 1
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub20.i.i = add i16 %conv3.i.i, -28
  %114 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %sub20.i.i, ptr %transport_header.i.i, align 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then12.i.i
  %115 = phi i8 [ %96, %if.else.i.i ], [ %112, %if.then12.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %115)
  %cmp23.i.i = icmp eq i8 %115, 6
  br i1 %cmp23.i.i, label %if.then25.i.i, label %if.end.i.i.if.end34.i.i_crit_edge

if.end.i.i.if.end34.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.i.i

if.then25.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %116 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %end.i, align 4
  %gso_type.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %117, i32 0, i32 8
  %118 = ptrtoint ptr %gso_type.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %gso_type.i.i, align 8
  %or.i.i = or i32 %119, 16
  store i32 %or.i.i, ptr %gso_type.i.i, align 8
  br label %if.end34.i.i

if.else28.i.i:                                    ; preds = %xfrm_offload.exit.i34.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag.i.i) #5
  %120 = ptrtoint ptr %frag.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 -1, ptr %frag.i.i, align 2, !annotation !37
  %call29.i.i = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef 0, ptr noundef nonnull %proto.i13.i, ptr noundef nonnull %frag.i.i) #5
  %121 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %transport_header.i.i, align 2
  %123 = trunc i32 %call29.i.i to i16
  %conv33.i.i = add i16 %122, %123
  store i16 %conv33.i.i, ptr %transport_header.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag.i.i) #5
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.else28.i.i, %if.then25.i.i, %if.end.i.i.if.end34.i.i_crit_edge
  %124 = ptrtoint ptr %proto.i13.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %proto.i13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %125)
  %cmp36.i.i = icmp eq i8 %125, 4
  br i1 %cmp36.i.i, label %if.then38.i.i, label %if.end34.i.i.if.end42.i.i_crit_edge

if.end34.i.i.if.end42.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i.i

if.then38.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %126 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %end.i, align 4
  %gso_type40.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %127, i32 0, i32 8
  %128 = ptrtoint ptr %gso_type40.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %gso_type40.i.i, align 8
  %or41.i.i = or i32 %129, 512
  store i32 %or41.i.i, ptr %gso_type40.i.i, align 8
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then38.i.i, %if.end34.i.i.if.end42.i.i_crit_edge
  %130 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %head.i.i, align 8
  %132 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i.i.i = zext i16 %133 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %131, i32 %conv.i.i.i.i
  %134 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %135 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %136 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %len.i.i, align 4
  %sub.i83.i.i = sub i32 %137, %sub.ptr.sub.i.i.i
  store i32 %sub.i83.i.i, ptr %len.i.i, align 4
  %138 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i83.i.i, i32 %139)
  %cmp.i.i.i = icmp ult i32 %sub.i83.i.i, %139
  br i1 %cmp.i.i.i, label %do.body4.i.i.i, label %__skb_pull.exit.i.i, !prof !38

do.body4.i.i.i:                                   ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #5, !srcloc !39
  unreachable

__skb_pull.exit.i.i:                              ; preds = %if.end42.i.i
  %add.ptr.i.i.i70 = getelementptr i8, ptr %135, i32 %sub.ptr.sub.i.i.i
  %140 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %add.ptr.i.i.i70, ptr %data.i, align 4
  %idxprom.i36.i = zext i8 %125 to i32
  %arrayidx.i37.i = getelementptr [256 x ptr], ptr @inet6_offloads, i32 0, i32 %idxprom.i36.i
  %141 = ptrtoint ptr %arrayidx.i37.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile ptr, ptr %arrayidx.i37.i, align 4
  %call46.i.i = call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %tobool.not.i38.i = icmp eq i32 %call46.i.i, 0
  br i1 %tobool.not.i38.i, label %land.lhs.true.i39.i, label %__skb_pull.exit.i.i.do.end54.i.i_crit_edge

__skb_pull.exit.i.i.do.end54.i.i_crit_edge:       ; preds = %__skb_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54.i.i

land.lhs.true.i39.i:                              ; preds = %__skb_pull.exit.i.i
  %call47.i.i = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %land.lhs.true.i39.i.do.end54.i.i_crit_edge, label %land.lhs.true49.i.i

land.lhs.true.i39.i.do.end54.i.i_crit_edge:       ; preds = %land.lhs.true.i39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54.i.i

land.lhs.true49.i.i:                              ; preds = %land.lhs.true.i39.i
  %.b81.i.i = load i1, ptr @xfrm6_beet_gso_segment.__warned, align 1
  br i1 %.b81.i.i, label %land.lhs.true49.i.i.do.end54.i.i_crit_edge, label %if.then51.i.i

land.lhs.true49.i.i.do.end54.i.i_crit_edge:       ; preds = %land.lhs.true49.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54.i.i

if.then51.i.i:                                    ; preds = %land.lhs.true49.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @xfrm6_beet_gso_segment.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 205, ptr noundef nonnull @.str.1) #5
  br label %do.end54.i.i

do.end54.i.i:                                     ; preds = %if.then51.i.i, %land.lhs.true49.i.i.do.end54.i.i_crit_edge, %land.lhs.true.i39.i.do.end54.i.i_crit_edge, %__skb_pull.exit.i.i.do.end54.i.i_crit_edge
  %tobool56.not.i.i = icmp eq ptr %142, null
  br i1 %tobool56.not.i.i, label %do.end54.i.i.xfrm6_beet_gso_segment.exit.i_crit_edge, label %land.rhs.i40.i, !prof !38

do.end54.i.i.xfrm6_beet_gso_segment.exit.i_crit_edge: ; preds = %do.end54.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm6_beet_gso_segment.exit.i

land.rhs.i40.i:                                   ; preds = %do.end54.i.i
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %tobool57.not.i.i = icmp eq ptr %144, null
  br i1 %tobool57.not.i.i, label %land.rhs.i40.i.xfrm6_beet_gso_segment.exit.i_crit_edge, label %if.then60.i.i, !prof !38

land.rhs.i40.i.xfrm6_beet_gso_segment.exit.i_crit_edge: ; preds = %land.rhs.i40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm6_beet_gso_segment.exit.i

if.then60.i.i:                                    ; preds = %land.rhs.i40.i
  call void @__sanitizer_cov_trace_pc() #7
  %call63.i.i = call ptr %144(ptr noundef %skb, i64 noundef %esp_features.0) #5
  br label %xfrm6_beet_gso_segment.exit.i

xfrm6_beet_gso_segment.exit.i:                    ; preds = %if.then60.i.i, %land.rhs.i40.i.xfrm6_beet_gso_segment.exit.i_crit_edge, %do.end54.i.i.xfrm6_beet_gso_segment.exit.i_crit_edge
  %segs.0.i41.i = phi ptr [ %call63.i.i, %if.then60.i.i ], [ inttoptr (i32 -22 to ptr), %land.rhs.i40.i.xfrm6_beet_gso_segment.exit.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end54.i.i.xfrm6_beet_gso_segment.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %proto.i13.i) #5
  br label %cleanup

cleanup:                                          ; preds = %xfrm6_beet_gso_segment.exit.i, %if.then16.i.i, %land.rhs.i.i.cleanup_crit_edge, %do.end10.i.i.cleanup_crit_edge, %sw.bb.i, %if.end31.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i59.cleanup_crit_edge, %skb_sec_path.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %xfrm_offload.exit.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %skb_sec_path.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %xfrm_offload.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %skb_sec_path.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %pskb_may_pull.exit.cleanup_crit_edge ], [ %segs.0.i41.i, %xfrm6_beet_gso_segment.exit.i ], [ %call.i.i, %sw.bb.i ], [ %call19.i.i, %if.then16.i.i ], [ inttoptr (i32 -22 to ptr), %land.rhs.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end10.i.i.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end31.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false2.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %skb_sec_path.exit.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i59.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @esp6_gro_receive(ptr nocapture noundef readnone %head, ptr noundef %skb) #2 align 64 {
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
  store i32 -1, ptr %seq, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spi) #5
  %3 = ptrtoint ptr %spi to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %spi, align 4, !annotation !37
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp.i = icmp ult i32 %5, %1
  br i1 %cmp.i, label %entry.cleanup54_crit_edge, label %cond.false.i, !prof !38

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

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
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.cleanup54_crit_edge, label %land.lhs.true.i.i.pskb_pull.exit_crit_edge

land.lhs.true.i.i.pskb_pull.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pskb_pull.exit

land.lhs.true.i.i.cleanup54_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

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
  br i1 %tobool.not, label %pskb_pull.exit.cleanup54_crit_edge, label %if.end

pskb_pull.exit.cleanup54_crit_edge:               ; preds = %pskb_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

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
  %add.ptr.i.i94 = getelementptr i8, ptr %36, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i94, i32 0, i32 6
  %39 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %spi, align 4
  %call18 = call ptr @xfrm_state_lookup(ptr noundef %31, i32 noundef %34, ptr noundef %daddr, i32 noundef %40, i8 noundef zeroext 50, i16 noundef zeroext 10) #5
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
  %tobool.i.not.i.i.i96 = icmp eq i8 %54, 0
  br i1 %tobool.i.not.i.i.i96, label %if.end21.out_reset_crit_edge, label %skb_sec_path.exit.i103

if.end21.out_reset_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_reset

skb_sec_path.exit.i103:                           ; preds = %if.end21
  %extensions.i.i.i97 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %55 = ptrtoint ptr %extensions.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %extensions.i.i.i97, align 8
  %arrayidx.i.i.i98 = getelementptr %struct.skb_ext, ptr %56, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %arrayidx.i.i.i98 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.i.i98, align 1
  %conv.i.i.i99 = zext i8 %58 to i32
  %shl.i.i.i100 = shl nuw nsw i32 %conv.i.i.i99, 3
  %add.ptr.i.i.i101 = getelementptr i8, ptr %56, i32 %shl.i.i.i100
  %tobool.not.i102 = icmp eq ptr %add.ptr.i.i.i101, null
  br i1 %tobool.not.i102, label %skb_sec_path.exit.i103.out_reset_crit_edge, label %lor.lhs.false.i106

skb_sec_path.exit.i103.out_reset_crit_edge:       ; preds = %skb_sec_path.exit.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_reset

lor.lhs.false.i106:                               ; preds = %skb_sec_path.exit.i103
  %olen.i104 = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i101, i32 0, i32 1
  %59 = ptrtoint ptr %olen.i104 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %olen.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool1.not.i105 = icmp eq i32 %60, 0
  br i1 %tobool1.not.i105, label %lor.lhs.false.i106.out_reset_crit_edge, label %lor.lhs.false2.i108

lor.lhs.false.i106.out_reset_crit_edge:           ; preds = %lor.lhs.false.i106
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_reset

lor.lhs.false2.i108:                              ; preds = %lor.lhs.false.i106
  %61 = ptrtoint ptr %add.ptr.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i.i.i101, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %60)
  %cmp.not.i107 = icmp eq i32 %62, %60
  br i1 %cmp.not.i107, label %xfrm_offload.exit113, label %lor.lhs.false2.i108.out_reset_crit_edge

lor.lhs.false2.i108.out_reset_crit_edge:          ; preds = %lor.lhs.false2.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_reset

xfrm_offload.exit113:                             ; preds = %lor.lhs.false2.i108
  %sub.i109 = add i32 %60, -1
  %arrayidx.i110 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i101, i32 0, i32 3, i32 %sub.i109
  %tobool26.not = icmp eq ptr %arrayidx.i110, null
  br i1 %tobool26.not, label %xfrm_offload.exit113.out_reset_crit_edge, label %xfrm_offload.exit113.if.end29_crit_edge

xfrm_offload.exit113.if.end29_crit_edge:          ; preds = %xfrm_offload.exit113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

xfrm_offload.exit113.out_reset_crit_edge:         ; preds = %xfrm_offload.exit113
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_reset

if.end29:                                         ; preds = %xfrm_offload.exit113.if.end29_crit_edge, %lor.lhs.false.if.end29_crit_edge
  %xo.1 = phi ptr [ %arrayidx.i, %lor.lhs.false.if.end29_crit_edge ], [ %arrayidx.i110, %xfrm_offload.exit113.if.end29_crit_edge ]
  %flags30 = getelementptr inbounds %struct.xfrm_offload, ptr %xo.1, i32 0, i32 1
  %63 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags30, align 4
  %or = or i32 %64, 32
  store i32 %or, ptr %flags30, align 4
  %head.i.i114 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %65 = ptrtoint ptr %head.i.i114 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i.i114, align 8
  %network_header.i.i115 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %67 = ptrtoint ptr %network_header.i.i115 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %network_header.i.i115, align 4
  %conv.i.i116 = zext i16 %68 to i32
  %add.ptr.i.i117 = getelementptr i8, ptr %66, i32 %conv.i.i116
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i117, i32 0, i32 3
  %69 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %nexthdr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %70)
  %cmp.i118 = icmp eq i8 %70, 50
  br i1 %cmp.i118, label %if.end29.if.end35_crit_edge, label %while.cond.preheader.i, !prof !40

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

while.cond.preheader.i:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %1)
  %cmp321.i = icmp sgt i32 %1, 40
  br i1 %cmp321.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.out_crit_edge

while.cond.preheader.i.out_crit_edge:             ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end11.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %off.022.i = phi i32 [ %add13.i, %if.end11.i.while.body.i_crit_edge ], [ 40, %while.cond.preheader.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i117, i32 %off.022.i
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %72)
  %cmp7.i = icmp eq i8 %72, 50
  br i1 %cmp7.i, label %esp6_nexthdr_esp_offset.exit, label %if.end11.i

if.end11.i:                                       ; preds = %while.body.i
  %hdrlen.i = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %add.ptr.i, i32 0, i32 1
  %73 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %hdrlen.i, align 1
  %conv12.i = zext i8 %74 to i32
  %add.i = shl nuw nsw i32 %conv12.i, 3
  %shl.i = add i32 %off.022.i, 8
  %add13.i = add i32 %shl.i, %add.i
  %cmp3.i = icmp slt i32 %add13.i, %1
  br i1 %cmp3.i, label %if.end11.i.while.body.i_crit_edge, label %if.end11.i.out_crit_edge

if.end11.i.out_crit_edge:                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end11.i.while.body.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

esp6_nexthdr_esp_offset.exit:                     ; preds = %while.body.i
  %conv10.i = trunc i32 %off.022.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv10.i)
  %tobool33.not = icmp eq i16 %conv10.i, 0
  br i1 %tobool33.not, label %esp6_nexthdr_esp_offset.exit.out_crit_edge, label %esp6_nexthdr_esp_offset.exit.if.end35_crit_edge

esp6_nexthdr_esp_offset.exit.if.end35_crit_edge:  ; preds = %esp6_nexthdr_esp_offset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

esp6_nexthdr_esp_offset.exit.out_crit_edge:       ; preds = %esp6_nexthdr_esp_offset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end35:                                         ; preds = %esp6_nexthdr_esp_offset.exit.if.end35_crit_edge, %if.end29.if.end35_crit_edge
  %retval.0.i119135 = phi i16 [ %conv10.i, %esp6_nexthdr_esp_offset.exit.if.end35_crit_edge ], [ 6, %if.end29.if.end35_crit_edge ]
  %nhoff37 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %75 = ptrtoint ptr %nhoff37 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %retval.0.i119135, ptr %nhoff37, align 2
  %tunnel = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %76 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %tunnel, align 8
  %family = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %77 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 10, ptr %family, align 8
  %daddroff = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %78 = ptrtoint ptr %daddroff to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 24, ptr %daddroff, align 4
  %79 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %seq, align 4
  %seq46 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %81 = ptrtoint ptr %seq46 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %seq46, align 4
  %82 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %spi, align 4
  %call47 = call i32 @xfrm_input(ptr noundef %skb, i32 noundef 50, i32 noundef %83, i32 noundef -2) #5
  br label %cleanup54

out_reset:                                        ; preds = %xfrm_offload.exit113.out_reset_crit_edge, %lor.lhs.false2.i108.out_reset_crit_edge, %lor.lhs.false.i106.out_reset_crit_edge, %skb_sec_path.exit.i103.out_reset_crit_edge, %if.end21.out_reset_crit_edge, %if.end15.out_reset_crit_edge, %if.end12.out_reset_crit_edge
  %84 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %86 = and i8 %85, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.i.not.i.i = icmp eq i8 %86, 0
  br i1 %tobool.i.not.i.i, label %out_reset.out_crit_edge, label %if.then.i.i

out_reset.out_crit_edge:                          ; preds = %out_reset
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then.i.i:                                      ; preds = %out_reset
  call void @__sanitizer_cov_trace_pc() #7
  call void @__skb_ext_del(ptr noundef %skb, i32 noundef 1) #5
  br label %out

out:                                              ; preds = %if.then.i.i, %out_reset.out_crit_edge, %esp6_nexthdr_esp_offset.exit.out_crit_edge, %if.end11.i.out_crit_edge, %while.cond.preheader.i.out_crit_edge, %if.then8.out_crit_edge, %if.end.out_crit_edge
  %call49 = call ptr @skb_push(ptr noundef %skb, i32 noundef %1) #5
  %same_flow = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %87 = ptrtoint ptr %same_flow to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load = load i16, ptr %same_flow, align 2
  %bf.clear = and i16 %bf.load, 32767
  store i16 %bf.clear, ptr %same_flow, align 2
  %flush = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %88 = ptrtoint ptr %flush to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 1, ptr %flush, align 4
  br label %cleanup54

cleanup54:                                        ; preds = %out, %if.end35, %pskb_pull.exit.cleanup54_crit_edge, %land.lhs.true.i.i.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  %retval.0 = phi ptr [ null, %out ], [ inttoptr (i32 -115 to ptr), %if.end35 ], [ null, %pskb_pull.exit.cleanup54_crit_edge ], [ null, %entry.cleanup54_crit_edge ], [ null, %land.lhs.true.i.i.cleanup54_crit_edge ]
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
declare dso_local i32 @inet6_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

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

!0 = !{ptr @__initcall__kmod_esp6_offload__574_406_esp6_offload_init6, !1, !"__initcall__kmod_esp6_offload__574_406_esp6_offload_init6", i1 false, i1 false}
!1 = !{!"../net/ipv6/esp6_offload.c", i32 406, i32 1}
!2 = !{ptr @__exitcall_esp6_offload_exit, !3, !"__exitcall_esp6_offload_exit", i1 false, i1 false}
!3 = !{!"../net/ipv6/esp6_offload.c", i32 407, i32 1}
!4 = !{ptr @__UNIQUE_ID_file575, !5, !"__UNIQUE_ID_file575", i1 false, i1 false}
!5 = !{!"../net/ipv6/esp6_offload.c", i32 408, i32 1}
!6 = !{ptr @__UNIQUE_ID_license576, !5, !"__UNIQUE_ID_license576", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author577, !8, !"__UNIQUE_ID_author577", i1 false, i1 false}
!8 = !{!"../net/ipv6/esp6_offload.c", i32 409, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias578, !10, !"__UNIQUE_ID_alias578", i1 false, i1 false}
!10 = !{!"../net/ipv6/esp6_offload.c", i32 410, i32 1}
!11 = !{ptr @__UNIQUE_ID_description579, !12, !"__UNIQUE_ID_description579", i1 false, i1 false}
!12 = !{!"../net/ipv6/esp6_offload.c", i32 411, i32 1}
!13 = !{ptr @esp6_type_offload, !14, !"esp6_type_offload", i1 false, i1 false}
!14 = !{!"../net/ipv6/esp6_offload.c", i32 382, i32 39}
!15 = !{ptr @esp6_offload, !16, !"esp6_offload", i1 false, i1 false}
!16 = !{!"../net/ipv6/esp6_offload.c", i32 375, i32 33}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/ipv6/esp6_offload.c", i32 160, i32 8}
!19 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/ipv6/esp6_offload.c", i32 205, i32 8}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/ipv6/esp6_offload.c", i32 393, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @esp6_offload_init._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @esp6_offload_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2154572202, i64 2154572690, i64 2154572239, i64 2154572295, i64 2154572329, i64 2154572353, i64 2154572394, i64 2154572415, i64 2154572443, i64 2154572477}
!40 = !{!"branch_weights", i32 2000, i32 1}
