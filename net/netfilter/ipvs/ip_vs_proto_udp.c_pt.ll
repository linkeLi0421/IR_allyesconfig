; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_proto_udp.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_proto_udp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ip_vs_protocol = type { ptr, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.netns_ipvs = type { i32, i32, [16 x %struct.hlist_head], %struct.list_head, [32 x ptr], [16 x %struct.list_head], [16 x %struct.list_head], [16 x %struct.list_head], %struct.atomic_t, %struct.ip_vs_stats, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.delayed_work, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.mutex, %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.ip_vs_stats = type { %struct.ip_vs_kstats, %struct.ip_vs_estimator, ptr, %struct.spinlock, %struct.ip_vs_kstats }
%struct.ip_vs_estimator = type { %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ip_vs_kstats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ipvs_sync_daemon_cfg = type { %union.nf_inet_addr, i32, i16, i16, i8, i8, [16 x i8] }
%union.nf_inet_addr = type { [4 x i32] }
%struct.ip_vs_proto_data = type { ptr, ptr, ptr, %struct.atomic_t, ptr }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ip_vs_iphdr = type { i32, i32, i32, i16, i16, i32, %union.nf_inet_addr, %union.nf_inet_addr }
%struct.sk_buff = type { %union.anon.83, %union.anon.117, %union.anon.118, [48 x i8], %union.anon.119, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.121, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { ptr, ptr, %union.anon.85 }
%union.anon.85 = type { ptr }
%union.anon.117 = type { ptr }
%union.anon.118 = type { i64 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32, ptr }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.123, i32, i32, i32, i16, i16, %union.anon.125, i32, %union.anon.126, %union.anon.127, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.123 = type { i32 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ip_vs_conn = type { %struct.hlist_node, i16, i16, i16, i16, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, i32, i16, i16, ptr, %struct.refcount_struct, %struct.timer_list, i32, %struct.spinlock, i16, i16, i32, i32, ptr, %struct.atomic_t, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.ip_vs_seq, %struct.ip_vs_seq, ptr, ptr, i8, %struct.callback_head }
%struct.ip_vs_seq = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ip_vs_app = type { %struct.list_head, i32, ptr, i16, ptr, %struct.list_head, %struct.list_head, ptr, i16, %struct.atomic_t, %struct.callback_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.4 }
%union.anon.4 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UDP\00", [28 x i8] zeroinitializer }, align 32
@ip_vs_protocol_udp = dso_local global { %struct.ip_vs_protocol, [48 x i8] } { %struct.ip_vs_protocol { ptr null, ptr @.str, i16 17, i16 1, i32 0, ptr null, ptr null, ptr @__udp_init, ptr @__udp_exit, ptr @udp_conn_schedule, ptr @ip_vs_conn_in_get_proto, ptr @ip_vs_conn_out_get_proto, ptr @udp_snat_handler, ptr @udp_dnat_handler, ptr @udp_state_name, ptr @udp_state_transition, ptr @udp_register_app, ptr @udp_unregister_app, ptr @udp_app_conn_bind, ptr @ip_vs_tcpudp_debug_packet, ptr null }, [48 x i8] zeroinitializer }, align 32
@udp_timeouts = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 30000, i32 200], [24 x i8] zeroinitializer }, align 32
@udp_snat_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017IPVS: O-pkt: %s O-csum=%d (+%zd)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"udp_snat_handler\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"net/netfilter/ipvs/ip_vs_proto_udp.c\00", [59 x i8] zeroinitializer }, align 32
@udp_snat_handler._entry_ptr = internal global ptr @udp_snat_handler._entry, section ".printk_index", align 4
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed checksum for\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ERR!\00", [27 x i8] zeroinitializer }, align 32
@udp_state_name_table = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str, ptr @.str.7], [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUG!\00", [27 x i8] zeroinitializer }, align 32
@udp_state_transition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013IPVS: UDP no ns data\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"udp_state_transition\00", [43 x i8] zeroinitializer }, align 32
@udp_state_transition._entry_ptr = internal global ptr @udp_state_transition._entry, section ".printk_index", align 4
@udp_app_conn_bind.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@udp_app_conn_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017IPVS: %s(): Binding conn %s:%u->%s:%u to app %s on port %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"udp_app_conn_bind\00", [46 x i8] zeroinitializer }, align 32
@udp_app_conn_bind._entry_ptr = internal global ptr @udp_app_conn_bind._entry, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 483, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"ip_vs_protocol_udp\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 482, i32 23 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"udp_timeouts\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 434, i32 18 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 210, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 330, i32 6 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 447, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant [21 x i8] c"udp_state_name_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 439, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 441, i32 24 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 457, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 409, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private constant [40 x i8] c"../net/netfilter/ipvs/ip_vs_proto_udp.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 414, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 196, i32 46 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [23 x i8] c"../include/net/ip_vs.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 200, i32 46 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @udp_app_conn_bind._entry, ptr @udp_app_conn_bind._entry_ptr, ptr @udp_snat_handler._entry, ptr @udp_snat_handler._entry_ptr, ptr @udp_state_transition._entry, ptr @udp_state_transition._entry_ptr, ptr @.str, ptr @ip_vs_protocol_udp, ptr @udp_timeouts, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @udp_state_name_table, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_protocol_udp to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_timeouts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_snat_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_state_name_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_state_transition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_app_conn_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__udp_init(ptr noundef %ipvs, ptr nocapture noundef writeonly %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %udp_apps = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 6
  tail call void @ip_vs_init_hash_table(ptr noundef %udp_apps, i32 noundef 16) #8
  %call = tail call ptr @ip_vs_create_timeout_table(ptr noundef nonnull @udp_timeouts, i32 noundef 8) #8
  %timeout_table = getelementptr inbounds %struct.ip_vs_proto_data, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %timeout_table to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %timeout_table, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__udp_exit(ptr nocapture noundef readnone %ipvs, ptr nocapture noundef readonly %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout_table = getelementptr inbounds %struct.ip_vs_proto_data, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %timeout_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timeout_table, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_conn_schedule(ptr noundef %ipvs, i32 noundef %af, ptr noundef %skb, ptr noundef %pd, ptr nocapture noundef writeonly %verdict, ptr nocapture noundef writeonly %cpp, ptr noundef %iph) #0 align 64 {
entry:
  %_udph = alloca %struct.udphdr, align 8
  %_ports = alloca [2 x i16], align 2
  %ignored = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_udph) #8
  %0 = ptrtoint ptr %_udph to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %_udph, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ports) #8
  %1 = ptrtoint ptr %_ports to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %_ports, align 2, !annotation !48
  %2 = getelementptr inbounds [2 x i16], ptr %_ports, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %2, align 2, !annotation !48
  %4 = ptrtoint ptr %iph to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iph, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %len = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  br i1 %tobool.i.not, label %if.then, label %if.else, !prof !49

if.then:                                          ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %12 = add i32 %7, %11
  %sub.i4.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 8
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !50

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %7
  br label %if.end8

if.end.i.i:                                       ; preds = %if.then
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then10_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then10_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %7, ptr noundef nonnull %_udph, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then10_crit_edge, label %lor.lhs.false.i.i.if.end11_crit_edge

lor.lhs.false.i.i.if.end11_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

lor.lhs.false.i.i.if.then10_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %7, i32 noundef 4, ptr noundef nonnull %_ports)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then.i.i
  %ports.0 = phi ptr [ %call7, %if.else ], [ %add.ptr.i.i, %if.then.i.i ]
  %tobool9.not = icmp eq ptr %ports.0, null
  br i1 %tobool9.not, label %if.end8.if.then10_crit_edge, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %lor.lhs.false.i.i.if.then10_crit_edge, %if.end.i.i.if.then10_crit_edge
  %15 = ptrtoint ptr %verdict to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %verdict, align 4
  br label %cleanup44

if.end11:                                         ; preds = %if.end8.if.end11_crit_edge, %lor.lhs.false.i.i.if.end11_crit_edge
  %ports.088 = phi ptr [ %ports.0, %if.end8.if.end11_crit_edge ], [ %_udph, %lor.lhs.false.i.i.if.end11_crit_edge ]
  %16 = ptrtoint ptr %iph to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iph, align 4
  %and.i77 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.i78.not = icmp eq i32 %and.i77, 0
  %18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %protocol = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %21 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %protocol, align 2
  br i1 %tobool.i78.not, label %if.then21, label %if.else23, !prof !49

if.then21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %daddr = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %arrayidx = getelementptr i16, ptr %ports.088, i32 1
  br label %if.end27

if.else23:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %saddr = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  br label %if.end27

if.end27:                                         ; preds = %if.else23, %if.then21
  %ports.088.sink = phi ptr [ %ports.088, %if.else23 ], [ %arrayidx, %if.then21 ]
  %saddr.sink = phi ptr [ %saddr, %if.else23 ], [ %daddr, %if.then21 ]
  %23 = ptrtoint ptr %ports.088.sink to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ports.088.sink, align 2
  %call26 = call ptr @ip_vs_service_find(ptr noundef %ipvs, i32 noundef %af, i32 noundef %20, i16 noundef zeroext %22, ptr noundef %saddr.sink, i16 noundef zeroext %24) #8
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %if.end27.cleanup44_crit_edge, label %if.then29

if.end27.cleanup44_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

if.then29:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ignored) #8
  %25 = ptrtoint ptr %ignored to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %ignored, align 4, !annotation !48
  %drop_rate.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 20
  %26 = ptrtoint ptr %drop_rate.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %drop_rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.then29.if.end33_crit_edge, label %ip_vs_todrop.exit

if.then29.if.end33_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

ip_vs_todrop.exit:                                ; preds = %if.then29
  %drop_counter.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 21
  %28 = ptrtoint ptr %drop_counter.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %drop_counter.i, align 4
  %dec.i = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp sgt i32 %dec.i, 0
  %spec.store.select.i = select i1 %cmp.i, i32 %dec.i, i32 %27
  %30 = ptrtoint ptr %drop_counter.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.store.select.i, ptr %drop_counter.i, align 4
  br i1 %cmp.i, label %ip_vs_todrop.exit.if.end33_crit_edge, label %if.then32

ip_vs_todrop.exit.if.end33_crit_edge:             ; preds = %ip_vs_todrop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then32:                                        ; preds = %ip_vs_todrop.exit
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %verdict to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %verdict, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ignored) #8
  br label %cleanup44

if.end33:                                         ; preds = %ip_vs_todrop.exit.if.end33_crit_edge, %if.then29.if.end33_crit_edge
  %call34 = call ptr @ip_vs_schedule(ptr noundef nonnull %call26, ptr noundef %skb, ptr noundef %pd, ptr noundef nonnull %ignored, ptr noundef %iph) #8
  %32 = ptrtoint ptr %cpp to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call34, ptr %cpp, align 4
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %land.lhs.true, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end33
  %33 = ptrtoint ptr %ignored to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ignored, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp = icmp slt i32 %34, 1
  br i1 %cmp, label %if.then36, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool37.not = icmp eq i32 %34, 0
  br i1 %tobool37.not, label %if.then38, label %if.then36.if.end41_crit_edge

if.then36.if.end41_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then38:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = call i32 @ip_vs_leave(ptr noundef nonnull %call26, ptr noundef %skb, ptr noundef %pd, ptr noundef %iph) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.then36.if.end41_crit_edge
  %storemerge = phi i32 [ %call39, %if.then38 ], [ 0, %if.then36.if.end41_crit_edge ]
  %35 = ptrtoint ptr %verdict to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge, ptr %verdict, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ignored) #8
  br label %cleanup44

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %if.end33.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ignored) #8
  br label %cleanup44

cleanup44:                                        ; preds = %cleanup, %if.end41, %if.then32, %if.end27.cleanup44_crit_edge, %if.then10
  %retval.1 = phi i32 [ 0, %if.then10 ], [ 0, %if.end41 ], [ 0, %if.then32 ], [ 1, %cleanup ], [ 1, %if.end27.cleanup44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_udph) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_conn_in_get_proto(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_conn_out_get_proto(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_snat_handler(ptr noundef %skb, ptr noundef %pp, ptr noundef %cp, ptr noundef %iph) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %2 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp = icmp eq i16 %3, 10
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fragoffs = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 3
  %4 = ptrtoint ptr %fragoffs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fragoffs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup119_crit_edge

land.lhs.true.cleanup119_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len3, align 4
  %sub = sub i32 %7, %1
  %add = add i32 %1, 8
  %call = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup119_crit_edge

if.end.cleanup119_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

if.end6:                                          ; preds = %if.end
  %app = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 25
  %8 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %app, align 4
  %cmp7.not = icmp eq ptr %9, null
  br i1 %cmp7.not, label %if.end6.if.end28_crit_edge, label %if.then11, !prof !49

if.end6.if.end28_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then11:                                        ; preds = %if.end6
  %10 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %af, align 2
  %conv13 = zext i16 %11 to i32
  %call14 = tail call fastcc i32 @udp_csum_check(i32 noundef %conv13, ptr noundef %skb, ptr noundef %pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then11.cleanup119_crit_edge, label %if.end17

if.then11.cleanup119_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

if.end17:                                         ; preds = %if.then11
  %call18 = tail call i32 @ip_vs_app_pkt_out(ptr noundef %cp, ptr noundef %skb, ptr noundef %iph) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup119_crit_edge, label %if.end21

if.end17.cleanup119_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp22 = icmp eq i32 %call18, 1
  br i1 %cmp22, label %if.then24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len3, align 4
  %sub26 = sub i32 %13, %1
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end21.cleanup_crit_edge
  %oldlen.0 = phi i32 [ %sub26, %if.then24 ], [ %sub, %if.end21.cleanup_crit_edge ]
  %14 = xor i1 %cmp22, true
  br label %if.end28

if.end28:                                         ; preds = %cleanup, %if.end6.if.end28_crit_edge
  %payload_csum.2.off0 = phi i1 [ %14, %cleanup ], [ false, %if.end6.if.end28_crit_edge ]
  %oldlen.2 = phi i32 [ %oldlen.0, %cleanup ], [ %sub, %if.end6.if.end28_crit_edge ]
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %18 to i32
  %add.ptr.i = getelementptr i8, ptr %16, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %1
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %19 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vport, align 4
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %add.ptr, align 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %22 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %ip_summed, align 8
  %23 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %23)
  %cmp31 = icmp eq i16 %23, 1536
  br i1 %cmp31, label %if.then33, label %if.else40

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %af, align 2
  %conv35 = zext i16 %25 to i32
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  %conv36 = trunc i32 %oldlen.2 to i16
  %26 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len3, align 4
  %sub38 = sub i32 %27, %1
  %conv39 = trunc i32 %sub38 to i16
  tail call fastcc void @udp_partial_csum_update(i32 noundef %conv35, ptr noundef %add.ptr, ptr noundef %daddr, ptr noundef %vaddr, i16 noundef zeroext %conv36, i16 noundef zeroext %conv39)
  br label %cleanup119

if.else40:                                        ; preds = %if.end28
  br i1 %payload_csum.2.off0, label %if.else40.if.else68_crit_edge, label %land.lhs.true42

if.else40.if.else68_crit_edge:                    ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else68

land.lhs.true42:                                  ; preds = %if.else40
  %check = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 3
  %28 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp44.not = icmp eq i16 %29, 0
  br i1 %cmp44.not, label %land.lhs.true42.if.else68_crit_edge, label %if.then46

land.lhs.true42.if.else68_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else68

if.then46:                                        ; preds = %land.lhs.true42
  %30 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %af, align 2
  %conv48 = zext i16 %31 to i32
  %daddr49 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %vaddr50 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 2
  %32 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dport, align 2
  %34 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vport, align 4
  tail call fastcc void @udp_fast_csum_update(i32 noundef %conv48, ptr noundef %add.ptr, ptr noundef %daddr49, ptr noundef %vaddr50, i16 noundef zeroext %33, i16 noundef zeroext %35)
  %36 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load53 = load i16, ptr %ip_summed, align 8
  %37 = and i16 %bf.load53, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %37)
  %cmp58 = icmp eq i16 %37, 1024
  br i1 %cmp58, label %if.then60, label %if.then46.cleanup119_crit_edge

if.then46.cleanup119_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

if.then60:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %app, align 4
  %tobool62.not.not = icmp eq ptr %39, null
  %bf.shl = select i1 %tobool62.not.not, i16 0, i16 512
  %bf.clear66 = and i16 %bf.load53, -1537
  %bf.set = or i16 %bf.shl, %bf.clear66
  %40 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %cleanup119

if.else68:                                        ; preds = %land.lhs.true42.if.else68_crit_edge, %if.else40.if.else68_crit_edge
  %check69 = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 3
  %41 = ptrtoint ptr %check69 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %check69, align 2
  %42 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len3, align 4
  %sub71 = sub i32 %43, %1
  %call72 = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef %1, i32 noundef %sub71, i32 noundef 0) #8
  %44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call72, ptr %44, align 8
  %46 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %47)
  %cmp75 = icmp eq i16 %47, 10
  %vaddr78 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  br i1 %cmp75, label %if.then77, label %if.else.i.i

if.then77:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  %48 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len3, align 4
  %sub80 = sub i32 %49, %1
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %50 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %protocol, align 4
  %52 = and i16 %51, 255
  %conv.i184 = zext i16 %52 to i32
  %call.i = tail call i32 @__csum_ipv6_magic(ptr noundef %vaddr78, ptr noundef %caddr, i32 noundef %sub80, i32 noundef %conv.i184, i32 noundef %call72) #8
  %53 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #11, !srcloc !51
  br label %if.end93

if.else.i.i:                                      ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len3, align 4
  %sub88 = sub i32 %55, %1
  %protocol89 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %56 = ptrtoint ptr %protocol89 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %protocol89, align 4
  %58 = and i16 %57, 255
  %conv.i.i185 = zext i16 %58 to i32
  %add.i.i = add i32 %sub88, %conv.i.i185
  %caddr86 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  %59 = ptrtoint ptr %caddr86 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %caddr86, align 4
  %61 = ptrtoint ptr %vaddr78 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vaddr78, align 4
  %63 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %call72, i32 %60, i32 %62, i32 %add.i.i) #11, !srcloc !52
  %64 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %63) #11, !srcloc !51
  br label %if.end93

if.end93:                                         ; preds = %if.else.i.i, %if.then77
  %storemerge.in.in.in = phi i32 [ %64, %if.else.i.i ], [ %53, %if.then77 ]
  %storemerge.in.in = xor i32 %storemerge.in.in.in, -1
  %storemerge.in = lshr i32 %storemerge.in.in, 16
  %storemerge = trunc i32 %storemerge.in to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %storemerge)
  %cmp96 = icmp eq i16 %storemerge, 0
  %spec.select = select i1 %cmp96, i16 -1, i16 %storemerge
  %65 = ptrtoint ptr %check69 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %spec.select, ptr %check69, align 2
  %66 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load102 = load i16, ptr %ip_summed, align 8
  %bf.clear103 = and i16 %bf.load102, -1537
  %bf.set104 = or i16 %bf.clear103, 512
  store i16 %bf.set104, ptr %ip_summed, align 8
  %call105 = tail call i32 @ip_vs_get_debug_level() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call105)
  %cmp106 = icmp sgt i32 %call105, 10
  br i1 %cmp106, label %do.end, label %if.end93.cleanup119_crit_edge

if.end93.cleanup119_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

do.end:                                           ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 1
  %67 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name, align 4
  %69 = ptrtoint ptr %check69 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %check69, align 2
  %conv111 = zext i16 %70 to i32
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %68, i32 noundef %conv111, i32 noundef 6) #12
  br label %cleanup119

cleanup119:                                       ; preds = %do.end, %if.end93.cleanup119_crit_edge, %if.then60, %if.then46.cleanup119_crit_edge, %if.then33, %if.end17.cleanup119_crit_edge, %if.then11.cleanup119_crit_edge, %if.end.cleanup119_crit_edge, %land.lhs.true.cleanup119_crit_edge
  %retval.1 = phi i32 [ 1, %land.lhs.true.cleanup119_crit_edge ], [ 0, %if.end.cleanup119_crit_edge ], [ 1, %if.then60 ], [ 1, %if.then46.cleanup119_crit_edge ], [ 1, %do.end ], [ 1, %if.end93.cleanup119_crit_edge ], [ 1, %if.then33 ], [ 0, %if.then11.cleanup119_crit_edge ], [ 0, %if.end17.cleanup119_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_dnat_handler(ptr noundef %skb, ptr noundef %pp, ptr noundef %cp, ptr noundef %iph) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %2 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp = icmp eq i16 %3, 10
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fragoffs = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 3
  %4 = ptrtoint ptr %fragoffs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fragoffs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup107_crit_edge

land.lhs.true.cleanup107_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup107

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len3, align 4
  %sub = sub i32 %7, %1
  %add = add i32 %1, 8
  %call = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup107_crit_edge

if.end.cleanup107_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup107

if.end6:                                          ; preds = %if.end
  %app = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 25
  %8 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %app, align 4
  %cmp7.not = icmp eq ptr %9, null
  br i1 %cmp7.not, label %if.end6.if.end28_crit_edge, label %if.then11, !prof !49

if.end6.if.end28_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then11:                                        ; preds = %if.end6
  %10 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %af, align 2
  %conv13 = zext i16 %11 to i32
  %call14 = tail call fastcc i32 @udp_csum_check(i32 noundef %conv13, ptr noundef %skb, ptr noundef %pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then11.cleanup107_crit_edge, label %if.end17

if.then11.cleanup107_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup107

if.end17:                                         ; preds = %if.then11
  %call18 = tail call i32 @ip_vs_app_pkt_in(ptr noundef %cp, ptr noundef %skb, ptr noundef %iph) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup107_crit_edge, label %if.end21

if.end17.cleanup107_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup107

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp22 = icmp eq i32 %call18, 1
  br i1 %cmp22, label %if.then24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len3, align 4
  %sub26 = sub i32 %13, %1
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end21.cleanup_crit_edge
  %oldlen.0 = phi i32 [ %sub26, %if.then24 ], [ %sub, %if.end21.cleanup_crit_edge ]
  %14 = xor i1 %cmp22, true
  br label %if.end28

if.end28:                                         ; preds = %cleanup, %if.end6.if.end28_crit_edge
  %payload_csum.2.off0 = phi i1 [ %14, %cleanup ], [ false, %if.end6.if.end28_crit_edge ]
  %oldlen.2 = phi i32 [ %oldlen.0, %cleanup ], [ %sub, %if.end6.if.end28_crit_edge ]
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %18 to i32
  %add.ptr.i = getelementptr i8, ptr %16, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %1
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 2
  %19 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dport, align 2
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 1
  %21 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %dest, align 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %22 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %ip_summed, align 8
  %23 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %23)
  %cmp31 = icmp eq i16 %23, 1536
  br i1 %cmp31, label %if.then33, label %if.else40

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %af, align 2
  %conv35 = zext i16 %25 to i32
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %conv36 = trunc i32 %oldlen.2 to i16
  %26 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len3, align 4
  %sub38 = sub i32 %27, %1
  %conv39 = trunc i32 %sub38 to i16
  tail call fastcc void @udp_partial_csum_update(i32 noundef %conv35, ptr noundef %add.ptr, ptr noundef %vaddr, ptr noundef %daddr, i16 noundef zeroext %conv36, i16 noundef zeroext %conv39)
  br label %cleanup107

if.else40:                                        ; preds = %if.end28
  br i1 %payload_csum.2.off0, label %if.else40.if.else68_crit_edge, label %land.lhs.true42

if.else40.if.else68_crit_edge:                    ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else68

land.lhs.true42:                                  ; preds = %if.else40
  %check = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 3
  %28 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp44.not = icmp eq i16 %29, 0
  br i1 %cmp44.not, label %land.lhs.true42.if.else68_crit_edge, label %if.then46

land.lhs.true42.if.else68_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else68

if.then46:                                        ; preds = %land.lhs.true42
  %30 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %af, align 2
  %conv48 = zext i16 %31 to i32
  %vaddr49 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  %daddr50 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %32 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vport, align 4
  %34 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %dport, align 2
  tail call fastcc void @udp_fast_csum_update(i32 noundef %conv48, ptr noundef %add.ptr, ptr noundef %vaddr49, ptr noundef %daddr50, i16 noundef zeroext %33, i16 noundef zeroext %35)
  %36 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load53 = load i16, ptr %ip_summed, align 8
  %37 = and i16 %bf.load53, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %37)
  %cmp58 = icmp eq i16 %37, 1024
  br i1 %cmp58, label %if.then60, label %if.then46.cleanup107_crit_edge

if.then46.cleanup107_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup107

if.then60:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %app, align 4
  %tobool62.not.not = icmp eq ptr %39, null
  %bf.shl = select i1 %tobool62.not.not, i16 0, i16 512
  %bf.clear66 = and i16 %bf.load53, -1537
  %bf.set = or i16 %bf.shl, %bf.clear66
  %40 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %cleanup107

if.else68:                                        ; preds = %land.lhs.true42.if.else68_crit_edge, %if.else40.if.else68_crit_edge
  %check69 = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 3
  %41 = ptrtoint ptr %check69 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %check69, align 2
  %42 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len3, align 4
  %sub71 = sub i32 %43, %1
  %call72 = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef %1, i32 noundef %sub71, i32 noundef 0) #8
  %44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call72, ptr %44, align 8
  %46 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %47)
  %cmp75 = icmp eq i16 %47, 10
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  br i1 %cmp75, label %if.then77, label %if.else.i.i

if.then77:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  %daddr78 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %48 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len3, align 4
  %sub80 = sub i32 %49, %1
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %50 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %protocol, align 4
  %52 = and i16 %51, 255
  %conv.i168 = zext i16 %52 to i32
  %call.i = tail call i32 @__csum_ipv6_magic(ptr noundef %caddr, ptr noundef %daddr78, i32 noundef %sub80, i32 noundef %conv.i168, i32 noundef %call72) #8
  %53 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #11, !srcloc !51
  br label %if.end93

if.else.i.i:                                      ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len3, align 4
  %sub88 = sub i32 %55, %1
  %protocol89 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %56 = ptrtoint ptr %protocol89 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %protocol89, align 4
  %58 = and i16 %57, 255
  %conv.i.i169 = zext i16 %58 to i32
  %add.i.i = add i32 %sub88, %conv.i.i169
  %daddr86 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %59 = ptrtoint ptr %daddr86 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %daddr86, align 4
  %61 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %caddr, align 4
  %63 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %call72, i32 %60, i32 %62, i32 %add.i.i) #11, !srcloc !52
  %64 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %63) #11, !srcloc !51
  br label %if.end93

if.end93:                                         ; preds = %if.else.i.i, %if.then77
  %storemerge.in.in.in = phi i32 [ %64, %if.else.i.i ], [ %53, %if.then77 ]
  %storemerge.in.in = xor i32 %storemerge.in.in.in, -1
  %storemerge.in = lshr i32 %storemerge.in.in, 16
  %storemerge = trunc i32 %storemerge.in to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %storemerge)
  %cmp96 = icmp eq i16 %storemerge, 0
  %spec.select = select i1 %cmp96, i16 -1, i16 %storemerge
  %65 = ptrtoint ptr %check69 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %spec.select, ptr %check69, align 2
  %66 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load102 = load i16, ptr %ip_summed, align 8
  %bf.clear103 = and i16 %bf.load102, -1537
  %bf.set104 = or i16 %bf.clear103, 512
  store i16 %bf.set104, ptr %ip_summed, align 8
  br label %cleanup107

cleanup107:                                       ; preds = %if.end93, %if.then60, %if.then46.cleanup107_crit_edge, %if.then33, %if.end17.cleanup107_crit_edge, %if.then11.cleanup107_crit_edge, %if.end.cleanup107_crit_edge, %land.lhs.true.cleanup107_crit_edge
  %retval.1 = phi i32 [ 1, %land.lhs.true.cleanup107_crit_edge ], [ 0, %if.end.cleanup107_crit_edge ], [ 1, %if.end93 ], [ 1, %if.then60 ], [ 1, %if.then46.cleanup107_crit_edge ], [ 1, %if.then33 ], [ 0, %if.then11.cleanup107_crit_edge ], [ 0, %if.end17.cleanup107_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @udp_state_name(i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp sgt i32 %state, 0
  br i1 %cmp, label %entry.return_crit_edge, label %cond.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [2 x ptr], ptr @udp_state_name_table, i32 0, i32 %state
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %cond.true, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %cond.true ], [ @.str.5, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udp_state_transition(ptr noundef %cp, i32 noundef %direction, ptr nocapture noundef readnone %skb, ptr noundef readonly %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pd, null
  br i1 %tobool.not, label %do.end, label %if.end, !prof !50

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %if.end5

if.end:                                           ; preds = %entry
  %timeout_table = getelementptr inbounds %struct.ip_vs_proto_data, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %timeout_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timeout_table, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %timeout = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 14
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %3, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %control.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 20
  %5 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %control.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then4.if.end5_crit_edge, label %land.lhs.true.i

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true.i:                                  ; preds = %if.then4
  %state.i = getelementptr inbounds %struct.ip_vs_conn, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load volatile i16, ptr %state.i, align 4
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool1.not.i = icmp eq i16 %9, 0
  br i1 %tobool1.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.end5_crit_edge

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %flags.i = getelementptr inbounds %struct.ip_vs_conn, ptr %6, i32 0, i32 8
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %and3.i = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.if.end5_crit_edge, label %if.then.i

land.lhs.true2.i.if.end5_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load volatile i16, ptr %state.i, align 4
  %14 = or i16 %13, 1
  store volatile i16 %14, ptr %state.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then.i, %land.lhs.true2.i.if.end5_crit_edge, %land.lhs.true.i.if.end5_crit_edge, %if.then4.if.end5_crit_edge, %if.end.if.end5_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_register_app(ptr noundef %ipvs, ptr noundef %inc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 8
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %port1, align 4
  %call = tail call ptr @ip_vs_proto_data_get(ptr noundef %ipvs, i16 noundef zeroext 17) #8
  %2 = lshr i16 %1, 4
  %xor.i = xor i16 %2, %1
  %and.i = and i16 %xor.i, 15
  %idxprom = zext i16 %and.i to i32
  %arrayidx = getelementptr %struct.netns_ipvs, ptr %ipvs, i32 0, i32 6, i32 %idxprom
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %arrayidx, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %port6 = getelementptr i8, ptr %.pn, i32 12
  %4 = ptrtoint ptr %port6 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %port6, align 4
  %cmp8 = icmp eq i16 %5, %1
  br i1 %cmp8, label %for.body.out_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.end:                                          ; preds = %for.cond
  %p_list15 = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i.i28 = tail call zeroext i1 @__list_add_valid(ptr noundef %p_list15, ptr noundef %arrayidx, ptr noundef %7) #8
  br i1 %call.i.i28, label %if.end.i.i, label %for.end.list_add_rcu.exit_crit_edge

for.end.list_add_rcu.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %p_list15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %p_list15, align 4
  %prev2.i.i = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %p_list15, ptr %arrayidx, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %p_list15, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %for.end.list_add_rcu.exit_crit_edge
  %appcnt = getelementptr inbounds %struct.ip_vs_proto_data, ptr %call, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %appcnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %appcnt, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %appcnt, ptr %appcnt, i32 1, ptr elementtype(i32) %appcnt) #8, !srcloc !54
  br label %out

out:                                              ; preds = %list_add_rcu.exit, %for.body.out_crit_edge
  %ret.0 = phi i32 [ 0, %list_add_rcu.exit ], [ -17, %for.body.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udp_unregister_app(ptr noundef %ipvs, ptr noundef %inc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ip_vs_proto_data_get(ptr noundef %ipvs, i16 noundef zeroext 17) #8
  %appcnt = getelementptr inbounds %struct.ip_vs_proto_data, ptr %call, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %appcnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %appcnt, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %appcnt, ptr %appcnt, i32 1, ptr elementtype(i32) %appcnt) #8, !srcloc !55
  %p_list = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 6
  %call.i.i1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p_list) #8
  br i1 %call.i.i1, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 6, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %p_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_app_conn_bind(ptr noundef %cp) #0 align 64 {
entry:
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ipvs1 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %0 = ptrtoint ptr %ipvs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs1, align 4
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %4 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vport, align 4
  %6 = lshr i16 %5, 4
  %xor.i = xor i16 %6, %5
  %and.i = and i16 %xor.i, 15
  %conv = zext i16 %and.i to i32
  %call2 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b94 = load i1, ptr @udp_app_conn_bind.__warned, align 1
  br i1 %.b94, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @udp_app_conn_bind.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 409, ptr noundef nonnull @.str.10) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %arrayidx = getelementptr %struct.netns_ipvs, ptr %1, i32 0, i32 6, i32 %conv
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %arrayidx, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp15.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp15.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %port = getelementptr i8, ptr %.pn, i32 12
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %port, align 4
  %10 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vport, align 4
  %cmp20 = icmp eq i16 %9, %11
  br i1 %cmp20, label %if.then22, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then22:                                        ; preds = %for.body
  %port.le = getelementptr i8, ptr %.pn, i32 12
  %inc.0.le = getelementptr i8, ptr %.pn, i32 -32
  %call23 = tail call i32 @ip_vs_app_inc_get(ptr noundef %inc.0.le) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %do.body30, !prof !50

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body30:                                        ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #8
  %12 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call31 = tail call i32 @ip_vs_get_debug_level() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call31)
  %cmp32 = icmp sgt i32 %call31, 8
  br i1 %cmp32, label %do.end37, label %do.body30.if.end51_crit_edge

do.body30.if.end51_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end37:                                         ; preds = %do.body30
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %13 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %af, align 2
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %14)
  %cmp.i = icmp eq i16 %14, 10
  %.str.13..str.14.i = select i1 %cmp.i, ptr @.str.13, ptr @.str.14
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.13..str.14.i, ptr noundef %caddr) #8
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !50

do.body10.i:                                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #8, !srcloc !56
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end37
  %cport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 1
  %15 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cport, align 4
  %17 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %af, align 2
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %18)
  %cmp.i95 = icmp eq i16 %18, 10
  %arrayidx.i96 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i97 = sub nsw i32 159, %call3.i
  %.str.13..str.14.i98 = select i1 %cmp.i95, ptr @.str.13, ptr @.str.14
  %call3.i99 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i96, i32 noundef %sub.i97, ptr noundef nonnull %.str.13..str.14.i98, ptr noundef %vaddr) #8
  %len.0.i100 = add nsw i32 %call3.i, 2
  %add5.i101 = add i32 %len.0.i100, %call3.i99
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i101)
  %cmp7.i102 = icmp ugt i32 %add5.i101, 161
  br i1 %cmp7.i102, label %do.body10.i103, label %ip_vs_dbg_addr.exit105, !prof !50

do.body10.i103:                                   ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #8, !srcloc !56
  unreachable

ip_vs_dbg_addr.exit105:                           ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv41 = zext i16 %16 to i32
  %19 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vport, align 4
  %conv47 = zext i16 %20 to i32
  %name = getelementptr i8, ptr %.pn, i32 -20
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  %23 = ptrtoint ptr %port.le to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %port.le, align 4
  %conv49 = zext i16 %24 to i32
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv41, ptr noundef %arrayidx.i96, i32 noundef %conv47, ptr noundef %22, i32 noundef %conv49) #12
  br label %if.end51

if.end51:                                         ; preds = %ip_vs_dbg_addr.exit105, %do.body30.if.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #8
  %app = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 25
  %25 = ptrtoint ptr %app to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %inc.0.le, ptr %app, align 4
  %init_conn = getelementptr i8, ptr %.pn, i32 36
  %26 = ptrtoint ptr %init_conn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_conn, align 4
  %tobool54.not = icmp eq ptr %27, null
  br i1 %tobool54.not, label %if.end51.cleanup_crit_edge, label %if.then55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %call57 = call i32 %27(ptr noundef %inc.0.le, ptr noundef %cp) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end51.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then22.cleanup_crit_edge ], [ %call57, %if.then55 ], [ 0, %if.end51.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_tcpudp_debug_packet(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_init_hash_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_create_timeout_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %offset, i32 noundef %len, ptr noundef %buffer) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %4 = add i32 %3, %offset
  %sub.i4 = sub i32 %1, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4, i32 %len)
  %cmp.not.i = icmp slt i32 %sub.i4, %len
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !50

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %offset
  br label %__skb_header_pointer.exit

if.end.i:                                         ; preds = %entry
  %tobool2.not.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i, label %if.end.i.__skb_header_pointer.exit_crit_edge, label %lor.lhs.false.i

if.end.i.__skb_header_pointer.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_header_pointer.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef %buffer, i32 noundef %len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp3.i, ptr null, ptr %buffer, !prof !50
  br label %__skb_header_pointer.exit

__skb_header_pointer.exit:                        ; preds = %lor.lhs.false.i, %if.end.i.__skb_header_pointer.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end.i.__skb_header_pointer.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_service_find(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_schedule(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_leave(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udp_csum_check(i32 noundef %af, ptr noundef %skb, ptr noundef %pp) unnamed_addr #0 align 64 {
entry:
  %_udph = alloca %struct.udphdr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_udph) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %af)
  %cmp = icmp eq i32 %af, 10
  %0 = ptrtoint ptr %_udph to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %_udph, align 8
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %3 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %4 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 %conv.i.i.i
  %5 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %6 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %6 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %udphoff.0 = phi i32 [ %mul.i, %if.else ], [ 40, %entry.if.end_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %11 = add i32 %udphoff.0, %10
  %sub.i4.i = sub i32 %8, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 8
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !50

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %udphoff.0, ptr noundef nonnull %_udph, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end4_crit_edge

lor.lhs.false.i.i.if.end4_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %udphoff.0
  %cmp2 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp2, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end4_crit_edge

skb_header_pointer.exit.if.end4_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %skb_header_pointer.exit.if.end4_crit_edge, %lor.lhs.false.i.i.if.end4_crit_edge
  %retval.0.i.i116 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end4_crit_edge ], [ %_udph, %lor.lhs.false.i.i.if.end4_crit_edge ]
  %check = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i116, i32 0, i32 3
  %14 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp5.not = icmp eq i16 %15, 0
  br i1 %cmp5.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %16 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.lshr = lshr i16 %bf.load, 9
  %17 = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %17 to i32
  %18 = zext i32 %bf.cast to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.cast, label %if.then7.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %if.then7.sw.bb10_crit_edge
  ]

if.then7.sw.bb10_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i, align 4
  %sub = sub i32 %20, %udphoff.0
  %call9 = call i32 @skb_checksum(ptr noundef %skb, i32 noundef %udphoff.0, i32 noundef %sub, i32 noundef 0) #8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call9, ptr %21, align 8
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb, %if.then7.sw.bb10_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %25 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %26 to i32
  %add.ptr.i.i85 = getelementptr i8, ptr %24, i32 %conv.i.i
  br i1 %cmp, label %if.then13, label %if.else.i.i

if.then13:                                        ; preds = %sw.bb10
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i85, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i85, i32 0, i32 6
  %27 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i, align 4
  %sub17 = sub i32 %28, %udphoff.0
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i85, i32 0, i32 3
  %29 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nexthdr, align 2
  %31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %conv.i = zext i8 %30 to i32
  %call.i = call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %sub17, i32 noundef %conv.i, i32 noundef %33) #8
  %34 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #11, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %34)
  %tobool.not = icmp ugt i32 %34, -65537
  br i1 %tobool.not, label %if.then13.cleanup_crit_edge, label %do.body

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.then13
  %call21 = call i32 @ip_vs_get_debug_level() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21)
  %cmp22 = icmp sgt i32 %call21, -1
  br i1 %cmp22, label %land.lhs.true, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %do.body
  %call24 = call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i.i:                                      ; preds = %sw.bb10
  %35 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i.i, align 4
  %sub35 = sub i32 %36, %udphoff.0
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i85, i32 0, i32 6
  %37 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %protocol, align 1
  %conv.i.i107 = zext i8 %38 to i32
  %add.i.i = add i32 %sub35, %conv.i.i107
  %39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %daddr33 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i85, i32 0, i32 9
  %42 = ptrtoint ptr %daddr33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %daddr33, align 4
  %saddr31 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i85, i32 0, i32 8
  %44 = ptrtoint ptr %saddr31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %saddr31, align 4
  %46 = call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %41, i32 %43, i32 %45, i32 %add.i.i) #11, !srcloc !52
  %47 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %46) #11, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %47)
  %tobool38.not = icmp ugt i32 %47, -65537
  br i1 %tobool38.not, label %if.else.i.i.cleanup_crit_edge, label %do.body40

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body40:                                        ; preds = %if.else.i.i
  %call41 = call i32 @ip_vs_get_debug_level() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41)
  %cmp42 = icmp sgt i32 %call41, -1
  br i1 %cmp42, label %land.lhs.true44, label %do.body40.cleanup_crit_edge

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true44:                                  ; preds = %do.body40
  %call45 = call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true44.cleanup_crit_edge, label %land.lhs.true44.cleanup.sink.split_crit_edge

land.lhs.true44.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true44.cleanup_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true44.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %af.sink = phi i32 [ 10, %land.lhs.true.cleanup.sink.split_crit_edge ], [ %af, %land.lhs.true44.cleanup.sink.split_crit_edge ]
  %debug_packet48 = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 19
  %48 = ptrtoint ptr %debug_packet48 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %debug_packet48, align 4
  call void %49(i32 noundef %af.sink, ptr noundef %pp, ptr noundef %skb, i32 noundef 0, ptr noundef nonnull @.str.4) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true44.cleanup_crit_edge, %do.body40.cleanup_crit_edge, %if.else.i.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %skb_header_pointer.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %land.lhs.true44.cleanup_crit_edge ], [ 0, %do.body40.cleanup_crit_edge ], [ 1, %if.else.i.i.cleanup_crit_edge ], [ 1, %if.then13.cleanup_crit_edge ], [ 1, %if.then7.cleanup_crit_edge ], [ 1, %if.end4.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_udph) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_app_pkt_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udp_partial_csum_update(i32 noundef %af, ptr nocapture noundef %uhdr, ptr nocapture noundef readonly %oldip, ptr nocapture noundef readonly %newip, i16 noundef zeroext %oldlen, i16 noundef zeroext %newlen) unnamed_addr #4 align 64 {
entry:
  %diff.i32 = alloca [2 x i32], align 4
  %diff.i29 = alloca [2 x i16], align 2
  %diff.i24 = alloca [8 x i32], align 4
  %diff.i = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %af)
  %cmp = icmp eq i32 %af, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %check = getelementptr inbounds %struct.udphdr, ptr %uhdr, i32 0, i32 3
  %0 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %check, align 2
  %conv.i = zext i16 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff.i) #8
  %2 = getelementptr inbounds [2 x i16], ptr %diff.i, i32 0, i32 1
  %neg.i = xor i16 %oldlen, -1
  %3 = ptrtoint ptr %diff.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %neg.i, ptr %diff.i, align 2
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %newlen, ptr %2, align 2
  %call.i = call i32 @csum_partial(ptr noundef nonnull %diff.i, i32 noundef 4, i32 noundef %conv.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff.i) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %diff.i24) #8
  %5 = getelementptr inbounds [8 x i32], ptr %diff.i24, i32 0, i32 1
  %6 = getelementptr inbounds [8 x i32], ptr %diff.i24, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i32], ptr %diff.i24, i32 0, i32 3
  %8 = getelementptr inbounds [8 x i32], ptr %diff.i24, i32 0, i32 4
  %9 = getelementptr inbounds [8 x i32], ptr %diff.i24, i32 0, i32 5
  %10 = getelementptr inbounds [8 x i32], ptr %diff.i24, i32 0, i32 6
  %11 = getelementptr inbounds [8 x i32], ptr %diff.i24, i32 0, i32 7
  %arrayidx.i = getelementptr i32, ptr %oldip, i32 3
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %neg.i25 = xor i32 %13, -1
  %14 = ptrtoint ptr %diff.i24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %neg.i25, ptr %diff.i24, align 4
  %arrayidx1.i = getelementptr i32, ptr %oldip, i32 2
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx1.i, align 4
  %neg2.i = xor i32 %16, -1
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %neg2.i, ptr %5, align 4
  %arrayidx4.i = getelementptr i32, ptr %oldip, i32 1
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i, align 4
  %neg5.i = xor i32 %19, -1
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %neg5.i, ptr %6, align 4
  %21 = ptrtoint ptr %oldip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oldip, align 4
  %neg8.i = xor i32 %22, -1
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %neg8.i, ptr %7, align 4
  %arrayidx10.i = getelementptr i32, ptr %newip, i32 3
  %24 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx10.i, align 4
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %8, align 4
  %arrayidx12.i = getelementptr i32, ptr %newip, i32 2
  %27 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx12.i, align 4
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %9, align 4
  %arrayidx14.i = getelementptr i32, ptr %newip, i32 1
  %30 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx14.i, align 4
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %10, align 4
  %33 = ptrtoint ptr %newip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %newip, align 4
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %11, align 4
  %call.i26 = call i32 @csum_partial(ptr noundef nonnull %diff.i24, i32 noundef 32, i32 noundef %call.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %diff.i24) #8
  %36 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i26) #11, !srcloc !51
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %oldip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %oldip, align 4
  %39 = ptrtoint ptr %newip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %newip, align 4
  %check7 = getelementptr inbounds %struct.udphdr, ptr %uhdr, i32 0, i32 3
  %41 = ptrtoint ptr %check7 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %check7, align 2
  %conv.i23 = zext i16 %42 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff.i29) #8
  %43 = getelementptr inbounds [2 x i16], ptr %diff.i29, i32 0, i32 1
  %neg.i30 = xor i16 %oldlen, -1
  %44 = ptrtoint ptr %diff.i29 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %neg.i30, ptr %diff.i29, align 2
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %newlen, ptr %43, align 2
  %call.i31 = call i32 @csum_partial(ptr noundef nonnull %diff.i29, i32 noundef 4, i32 noundef %conv.i23) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff.i29) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %diff.i32) #8
  %46 = getelementptr inbounds [2 x i32], ptr %diff.i32, i32 0, i32 1
  %neg.i33 = xor i32 %38, -1
  %47 = ptrtoint ptr %diff.i32 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %neg.i33, ptr %diff.i32, align 4
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %40, ptr %46, align 4
  %call.i34 = call i32 @csum_partial(ptr noundef nonnull %diff.i32, i32 noundef 8, i32 noundef %call.i31) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %diff.i32) #8
  %49 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i34) #11, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %49, %if.else ], [ %36, %if.then ]
  %check7.sink = phi ptr [ %check7, %if.else ], [ %check, %if.then ]
  %neg.i35 = xor i32 %.sink, -1
  %shr.i36 = lshr i32 %neg.i35, 16
  %conv.i37 = trunc i32 %shr.i36 to i16
  %neg13 = xor i16 %conv.i37, -1
  %50 = ptrtoint ptr %check7.sink to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %neg13, ptr %check7.sink, align 2
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udp_fast_csum_update(i32 noundef %af, ptr nocapture noundef %uhdr, ptr nocapture noundef readonly %oldip, ptr nocapture noundef readonly %newip, i16 noundef zeroext %oldport, i16 noundef zeroext %newport) unnamed_addr #4 align 64 {
entry:
  %diff.i35 = alloca [2 x i32], align 4
  %diff.i32 = alloca [2 x i16], align 2
  %diff.i27 = alloca [8 x i32], align 4
  %diff.i = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %af)
  %cmp = icmp eq i32 %af, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %check = getelementptr inbounds %struct.udphdr, ptr %uhdr, i32 0, i32 3
  %0 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %check, align 2
  %conv.i = zext i16 %1 to i32
  %neg = xor i32 %conv.i, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff.i) #8
  %2 = getelementptr inbounds [2 x i16], ptr %diff.i, i32 0, i32 1
  %neg.i = xor i16 %oldport, -1
  %3 = ptrtoint ptr %diff.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %neg.i, ptr %diff.i, align 2
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %newport, ptr %2, align 2
  %call.i = call i32 @csum_partial(ptr noundef nonnull %diff.i, i32 noundef 4, i32 noundef %neg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff.i) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %diff.i27) #8
  %5 = getelementptr inbounds [8 x i32], ptr %diff.i27, i32 0, i32 1
  %6 = getelementptr inbounds [8 x i32], ptr %diff.i27, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i32], ptr %diff.i27, i32 0, i32 3
  %8 = getelementptr inbounds [8 x i32], ptr %diff.i27, i32 0, i32 4
  %9 = getelementptr inbounds [8 x i32], ptr %diff.i27, i32 0, i32 5
  %10 = getelementptr inbounds [8 x i32], ptr %diff.i27, i32 0, i32 6
  %11 = getelementptr inbounds [8 x i32], ptr %diff.i27, i32 0, i32 7
  %arrayidx.i = getelementptr i32, ptr %oldip, i32 3
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %neg.i28 = xor i32 %13, -1
  %14 = ptrtoint ptr %diff.i27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %neg.i28, ptr %diff.i27, align 4
  %arrayidx1.i = getelementptr i32, ptr %oldip, i32 2
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx1.i, align 4
  %neg2.i = xor i32 %16, -1
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %neg2.i, ptr %5, align 4
  %arrayidx4.i = getelementptr i32, ptr %oldip, i32 1
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i, align 4
  %neg5.i = xor i32 %19, -1
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %neg5.i, ptr %6, align 4
  %21 = ptrtoint ptr %oldip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oldip, align 4
  %neg8.i = xor i32 %22, -1
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %neg8.i, ptr %7, align 4
  %arrayidx10.i = getelementptr i32, ptr %newip, i32 3
  %24 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx10.i, align 4
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %8, align 4
  %arrayidx12.i = getelementptr i32, ptr %newip, i32 2
  %27 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx12.i, align 4
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %9, align 4
  %arrayidx14.i = getelementptr i32, ptr %newip, i32 1
  %30 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx14.i, align 4
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %10, align 4
  %33 = ptrtoint ptr %newip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %newip, align 4
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %11, align 4
  %call.i29 = call i32 @csum_partial(ptr noundef nonnull %diff.i27, i32 noundef 32, i32 noundef %call.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %diff.i27) #8
  %36 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i29) #11, !srcloc !51
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %oldip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %oldip, align 4
  %39 = ptrtoint ptr %newip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %newip, align 4
  %check6 = getelementptr inbounds %struct.udphdr, ptr %uhdr, i32 0, i32 3
  %41 = ptrtoint ptr %check6 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %check6, align 2
  %conv.i26 = zext i16 %42 to i32
  %neg8 = xor i32 %conv.i26, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff.i32) #8
  %43 = getelementptr inbounds [2 x i16], ptr %diff.i32, i32 0, i32 1
  %neg.i33 = xor i16 %oldport, -1
  %44 = ptrtoint ptr %diff.i32 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %neg.i33, ptr %diff.i32, align 2
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %newport, ptr %43, align 2
  %call.i34 = call i32 @csum_partial(ptr noundef nonnull %diff.i32, i32 noundef 4, i32 noundef %neg8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff.i32) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %diff.i35) #8
  %46 = getelementptr inbounds [2 x i32], ptr %diff.i35, i32 0, i32 1
  %neg.i36 = xor i32 %38, -1
  %47 = ptrtoint ptr %diff.i35 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %neg.i36, ptr %diff.i35, align 4
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %40, ptr %46, align 4
  %call.i37 = call i32 @csum_partial(ptr noundef nonnull %diff.i35, i32 noundef 8, i32 noundef %call.i34) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %diff.i35) #8
  %49 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i37) #11, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %49, %if.else ], [ %36, %if.then ]
  %check6.sink = phi ptr [ %check6, %if.else ], [ %check, %if.then ]
  %neg.i38 = xor i32 %.sink, -1
  %shr.i39 = lshr i32 %neg.i38, 16
  %conv.i40 = trunc i32 %shr.i39 to i16
  %50 = ptrtoint ptr %check6.sink to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i40, ptr %check6.sink, align 2
  %check13 = getelementptr inbounds %struct.udphdr, ptr %uhdr, i32 0, i32 3
  %51 = ptrtoint ptr %check13 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %check13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool.not = icmp eq i16 %52, 0
  br i1 %tobool.not, label %if.then14, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %check13 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 -1, ptr %check13, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_app_pkt_in(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_proto_data_get(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_app_inc_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_proto_udp.c", i32 483, i32 12}
!2 = !{ptr @ip_vs_protocol_udp, !3, !"ip_vs_protocol_udp", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipvs/ip_vs_proto_udp.c", i32 482, i32 23}
!4 = !{ptr @udp_timeouts, !5, !"udp_timeouts", i1 false, i1 false}
!5 = !{!"../net/netfilter/ipvs/ip_vs_proto_udp.c", i32 434, i32 18}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/netfilter/ipvs/ip_vs_proto_udp.c", i32 210, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @udp_snat_handler._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @udp_snat_handler._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/netfilter/ipvs/ip_vs_proto_udp.c", i32 330, i32 6}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/netfilter/ipvs/ip_vs_proto_udp.c", i32 447, i32 10}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/netfilter/ipvs/ip_vs_proto_udp.c", i32 448, i32 69}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/netfilter/ipvs/ip_vs_proto_udp.c", i32 441, i32 24}
!20 = !{ptr @udp_state_name_table, !21, !"udp_state_name_table", i1 false, i1 false}
!21 = !{!"../net/netfilter/ipvs/ip_vs_proto_udp.c", i32 439, i32 26}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/netfilter/ipvs/ip_vs_proto_udp.c", i32 457, i32 3}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @udp_state_transition._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @udp_state_transition._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/netfilter/ipvs/ip_vs_proto_udp.c", i32 409, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/netfilter/ipvs/ip_vs_proto_udp.c", i32 414, i32 4}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @udp_app_conn_bind._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @udp_app_conn_bind._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/net/ip_vs.h", i32 196, i32 46}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/net/ip_vs.h", i32 200, i32 46}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 6487265}
!52 = !{i64 6488618, i64 6488658, i64 6488686, i64 6488731}
!53 = !{i64 2150396257}
!54 = !{i64 2148278805, i64 2148278831, i64 2148278860, i64 2148278894, i64 2148278925, i64 2148278948}
!55 = !{i64 2148281270, i64 2148281296, i64 2148281325, i64 2148281359, i64 2148281390, i64 2148281413}
!56 = !{i64 2158041397, i64 2158041881, i64 2158041434, i64 2158041490, i64 2158041524, i64 2158041548, i64 2158041589, i64 2158041610, i64 2158041638, i64 2158041672}
