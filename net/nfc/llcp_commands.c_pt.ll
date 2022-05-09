; ModuleID = '/llk/IR_all_yes/net/nfc/llcp_commands.c_pt.bc'
source_filename = "../net/nfc/llcp_commands.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfc_llcp_sdp_tlv = type { ptr, i8, ptr, i8, i8, i32, %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfc_llcp_local = type { %struct.list_head, ptr, %struct.kref, %struct.mutex, %struct.timer_list, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, ptr, %struct.work_struct, i32, i8, i8, i8, i8, i16, i32, i32, i32, [16 x %struct.atomic_t], [48 x i8], i8, [48 x i8], i8, i8, i16, i16, i8, i16, %struct.mutex, %struct.hlist_head, %struct.timer_list, %struct.work_struct, i8, %struct.llcp_sock_list, %struct.llcp_sock_list, %struct.llcp_sock_list }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sk_buff_head = type { %union.anon.80, i32, %struct.spinlock }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llcp_sock_list = type { %struct.hlist_head, %struct.rwlock_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.nfc_llcp_sock = type { %struct.sock, ptr, ptr, i32, i32, i8, i8, ptr, i32, i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, %struct.list_head, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.82, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.83, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.84, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.42, %union.anon.44, %union.anon.45, i16, i8, i8, i32, %union.anon.47, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.74, [0 x i32], %union.anon.75, i16, i16, %union.anon.76, %struct.refcount_struct, [0 x i32], %union.anon.77 }
%union.anon.42 = type { i64 }
%union.anon.44 = type { i32 }
%union.anon.45 = type { i32 }
%union.anon.47 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.73 }
%union.anon.73 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { i32 }
%union.anon.75 = type { %struct.hlist_node }
%union.anon.76 = type { i32 }
%union.anon.77 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.82 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.83 = type { ptr }
%union.anon.84 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.sk_buff = type { %union.anon.52, %union.anon.55, %union.anon.56, [48 x i8], %union.anon.57, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.59, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr, %union.anon.54 }
%union.anon.54 = type { ptr }
%union.anon.55 = type { ptr }
%union.anon.56 = type { i64 }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { i32, ptr }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.61, i32, i32, i32, i16, i16, %union.anon.63, i32, %union.anon.64, %union.anon.65, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.61 = type { i32 }
%union.anon.63 = type { i32 }
%union.anon.64 = type { i32 }
%union.anon.65 = type { i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.51, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.48, %union.anon.49 }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.51 = type { ptr }

@nfc_llcp_build_tlv.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfc_llcp_build_tlv\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/nfc/llcp_commands.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"type %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"llcp: %s: type %d\0A\00", [45 x i8] zeroinitializer }, align 32
@llcp_tlv_length = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\00\01\02\02\01\01\00\01\00\02", [22 x i8] zeroinitializer }, align 32
@nfc_llcp_build_sdreq_tlv.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfc_llcp_build_sdreq_tlv\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uri: %s, len: %zu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"llcp: %s: uri: %s, len: %zu\0A\00", [35 x i8] zeroinitializer }, align 32
@nfc_llcp_build_sdreq_tlv.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nfc_llcp_parse_gb_tlv.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfc_llcp_parse_gb_tlv\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TLV array length %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"llcp: %s: TLV array length %d\0A\00", [33 x i8] zeroinitializer }, align 32
@nfc_llcp_parse_gb_tlv.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"type 0x%x length %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"llcp: %s: type 0x%x length %d\0A\00", [33 x i8] zeroinitializer }, align 32
@nfc_llcp_parse_gb_tlv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013llcp: %s: Invalid gt tlv value 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@nfc_llcp_parse_gb_tlv._entry_ptr = internal global ptr @nfc_llcp_parse_gb_tlv._entry, section ".printk_index", align 4
@nfc_llcp_parse_gb_tlv.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.14, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"version 0x%x miu %d lto %d opt 0x%x wks 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"llcp: %s: version 0x%x miu %d lto %d opt 0x%x wks 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@nfc_llcp_parse_connection_tlv.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.9, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nfc_llcp_parse_connection_tlv\00", [34 x i8] zeroinitializer }, align 32
@nfc_llcp_parse_connection_tlv.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.11, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@nfc_llcp_parse_connection_tlv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.16, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfc_llcp_parse_connection_tlv._entry_ptr = internal global ptr @nfc_llcp_parse_connection_tlv._entry, section ".printk_index", align 4
@nfc_llcp_parse_connection_tlv.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sock %p rw %d miu %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"llcp: %s: sock %p rw %d miu %d\0A\00", [32 x i8] zeroinitializer }, align 32
@nfc_llcp_send_connect.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfc_llcp_send_connect\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SKB size %d SN length %zu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"llcp: %s: SKB size %d SN length %zu\0A\00", [59 x i8] zeroinitializer }, align 32
@nfc_llcp_send_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013llcp: %s: error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfc_llcp_send_connect._entry_ptr = internal global ptr @nfc_llcp_send_connect._entry, section ".printk_index", align 4
@nfc_llcp_send_cc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfc_llcp_send_cc\00", [47 x i8] zeroinitializer }, align 32
@nfc_llcp_send_cc._entry_ptr = internal global ptr @nfc_llcp_send_cc._entry, section ".printk_index", align 4
@nfc_llcp_send_snl_sdreq.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfc_llcp_send_snl_sdreq\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tid %d for %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"llcp: %s: tid %d for %s\0A\00", [39 x i8] zeroinitializer }, align 32
@nfc_llcp_send_dm.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfc_llcp_send_dm\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Sending DM reason 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"llcp: %s: Sending DM reason 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nfc_llcp_send_i_frame.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfc_llcp_send_i_frame\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Send I frame len %zd\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"llcp: %s: Send I frame len %zd\0A\00", [32 x i8] zeroinitializer }, align 32
@nfc_llcp_send_i_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013llcp: %s: Pending queue is full %d frames\0A\00", [51 x i8] zeroinitializer }, align 32
@nfc_llcp_send_i_frame._entry_ptr = internal global ptr @nfc_llcp_send_i_frame._entry, section ".printk_index", align 4
@nfc_llcp_send_i_frame._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013llcp: %s: Tx queue is full %d frames\0A\00", [56 x i8] zeroinitializer }, align 32
@nfc_llcp_send_i_frame._entry_ptr.36 = internal global ptr @nfc_llcp_send_i_frame._entry.34, section ".printk_index", align 4
@nfc_llcp_send_i_frame.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.37, i8 0, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Fragment %zd bytes remaining %zd\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"llcp: %s: Fragment %zd bytes remaining %zd\00", [53 x i8] zeroinitializer }, align 32
@nfc_llcp_send_ui_frame.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfc_llcp_send_ui_frame\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Send UI frame len %zd\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"llcp: %s: Send UI frame len %zd\0A\00", [63 x i8] zeroinitializer }, align 32
@nfc_llcp_send_ui_frame.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.37, i8 0, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@nfc_llcp_send_ui_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013llcp: %s: Could not allocate PDU (error=%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@nfc_llcp_send_ui_frame._entry_ptr = internal global ptr @nfc_llcp_send_ui_frame._entry, section ".printk_index", align 4
@nfc_llcp_send_rr.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfc_llcp_send_rr\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Send rr nr %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"llcp: %s: Send rr nr %d\0A\00", [39 x i8] zeroinitializer }, align 32
@llcp_allocate_pdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013llcp: %s: Could not allocate PDU\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"llcp_allocate_pdu\00", [46 x i8] zeroinitializer }, align 32
@llcp_allocate_pdu._entry_ptr = internal global ptr @llcp_allocate_pdu._entry, section ".printk_index", align 4
@llcp_add_header.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"llcp_add_header\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ptype 0x%x dsap 0x%x ssap 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"llcp: %s: ptype 0x%x dsap 0x%x ssap 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@llcp_add_header.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.51, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"header 0x%x 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"llcp: %s: header 0x%x 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 5, i64 6]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 83, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"llcp_tlv_length\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 18, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 138, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 198, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 207, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 226, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 234, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 248, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 269, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 277, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 434, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 452, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 511, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 590, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 612, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 649, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 659, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 667, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 690, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 732, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 762, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 791, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 325, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 288, i32 2 }
@___asan_gen_.234 = private constant [27 x i8] c"../net/nfc/llcp_commands.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 293, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 230, i32 6 }
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 214, i32 2 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @llcp_allocate_pdu._entry, ptr @llcp_allocate_pdu._entry_ptr, ptr @nfc_llcp_parse_connection_tlv._entry, ptr @nfc_llcp_parse_connection_tlv._entry_ptr, ptr @nfc_llcp_parse_gb_tlv._entry, ptr @nfc_llcp_parse_gb_tlv._entry_ptr, ptr @nfc_llcp_send_cc._entry, ptr @nfc_llcp_send_cc._entry_ptr, ptr @nfc_llcp_send_connect._entry, ptr @nfc_llcp_send_connect._entry_ptr, ptr @nfc_llcp_send_i_frame._entry, ptr @nfc_llcp_send_i_frame._entry.34, ptr @nfc_llcp_send_i_frame._entry_ptr, ptr @nfc_llcp_send_i_frame._entry_ptr.36, ptr @nfc_llcp_send_ui_frame._entry, ptr @nfc_llcp_send_ui_frame._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @llcp_tlv_length, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llcp_tlv_length to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_parse_gb_tlv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_parse_connection_tlv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_send_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_send_cc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_send_i_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_send_i_frame._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_send_ui_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llcp_allocate_pdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfc_llcp_build_tlv(i8 noundef zeroext %type, ptr nocapture noundef readonly %value, i8 noundef zeroext %value_length, ptr nocapture noundef writeonly %tlv_length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_build_tlv.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_build_tlv, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %type to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_build_tlv.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %type)
  %cmp = icmp ugt i8 %type, 9
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %conv3 = zext i8 %type to i32
  %0 = lshr i32 321, %conv3
  %1 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value_length)
  %cmp11 = icmp ne i8 %value_length, 0
  %2 = or i1 %cmp11, %cmp8.not
  br i1 %2, label %if.else, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %arrayidx = getelementptr [10 x i8], ptr @llcp_tlv_length, i32 0, i32 %conv3
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %spec.select = select i1 %cmp8.not, i8 %4, i8 %value_length
  %conv20 = zext i8 %spec.select to i32
  %add = add nuw nsw i32 %conv20, 2
  %conv21 = trunc i32 %add to i8
  %5 = ptrtoint ptr %tlv_length to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv21, ptr %tlv_length, align 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #10
  %cmp25 = icmp eq ptr %call9.i.i, null
  br i1 %cmp25, label %if.else.cleanup_crit_edge, label %if.end28

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %type, ptr %call9.i.i, align 128
  %arrayidx30 = getelementptr i8, ptr %call9.i.i, i32 1
  %7 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.select, ptr %arrayidx30, align 1
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 2
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %value, i32 %conv20)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.else.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.end28 ], [ null, %do.end.cleanup_crit_edge ], [ null, %if.end6.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfc_llcp_build_sdres_tlv(i8 noundef zeroext %tid, i8 noundef zeroext %sap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tlv_len = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call7.i.i, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_build_tlv.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_build_sdres_tlv, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_build_tlv.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 9) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %1 = ptrtoint ptr %tlv_len to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %tlv_len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4) #11
  %cmp25.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp25.i, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end6:                                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 9, ptr %call7.i.i.i, align 8
  %arrayidx30.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %5 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %arrayidx30.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %tid, ptr %add.ptr.i, align 2
  %value.sroa.5.0.add.ptr.i.sroa_idx = getelementptr i8, ptr %call7.i.i.i, i32 3
  %7 = ptrtoint ptr %value.sroa.5.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %sap, ptr %value.sroa.5.0.add.ptr.i.sroa_idx, align 1
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i, ptr %call7.i.i, align 8
  %tid7 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %tid7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %tid, ptr %tid7, align 4
  %sap8 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %sap8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %sap, ptr %sap8, align 1
  %node = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %node, align 4
  %pprev.i = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call7.i.i, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pprev.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then5 ], [ %call7.i.i, %if.end6 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfc_llcp_build_sdreq_tlv(i8 noundef zeroext %tid, ptr noundef %uri, i32 noundef %uri_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_build_sdreq_tlv.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_build_sdreq_tlv, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_build_sdreq_tlv.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, ptr noundef %uri, i32 noundef %uri_len) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 251, i32 %uri_len)
  %cmp = icmp ugt i32 %uri_len, 251
  br i1 %cmp, label %land.rhs, label %if.end54

land.rhs:                                         ; preds = %do.end
  %.b114 = load i1, ptr @nfc_llcp_build_sdreq_tlv.__already_done, align 1
  br i1 %.b114, label %land.rhs.cleanup_crit_edge, label %if.then18, !prof !130

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nfc_llcp_build_sdreq_tlv.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 141, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end54:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #11
  %cmp56 = icmp eq ptr %call7.i.i, null
  br i1 %cmp56, label %if.end54.cleanup_crit_edge, label %if.end58

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end58:                                         ; preds = %if.end54
  %1 = trunc i32 %uri_len to i8
  %conv = add nuw i8 %1, 3
  %tlv_len = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %tlv_len to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %tlv_len, align 4
  %sub = add nsw i32 %uri_len, -1
  %arrayidx = getelementptr i8, ptr %uri, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp60 = icmp eq i8 %4, 0
  br i1 %cmp60, label %if.then62, label %if.end58.if.end8.i.i_crit_edge

if.end58.if.end8.i.i_crit_edge:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add nuw i8 %1, 2
  %5 = ptrtoint ptr %tlv_len to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %dec, ptr %tlv_len, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then62, %if.end58.if.end8.i.i_crit_edge
  %6 = ptrtoint ptr %tlv_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tlv_len, align 4
  %conv66 = zext i8 %7 to i32
  %add67 = add nuw nsw i32 %conv66, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add67, i32 noundef 3520) #10
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i, ptr %call7.i.i, align 8
  %cmp70 = icmp eq ptr %call9.i.i, null
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end73:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %call9.i.i, align 128
  %10 = ptrtoint ptr %tlv_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tlv_len, align 4
  %sub78 = add i8 %11, -2
  %arrayidx81 = getelementptr i8, ptr %call9.i.i, i32 1
  %12 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %sub78, ptr %arrayidx81, align 1
  %arrayidx83 = getelementptr i8, ptr %call9.i.i, i32 2
  %13 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %tid, ptr %arrayidx83, align 2
  %tid84 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %tid84 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %tid, ptr %tid84, align 4
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 3
  %uri86 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %uri86 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %uri86, align 8
  %16 = call ptr @memcpy(ptr %add.ptr, ptr %uri, i32 %uri_len)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %time = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %time, align 8
  %node = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call7.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %node, align 4
  %pprev.i = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call7.i.i, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pprev.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.then72, %if.end54.cleanup_crit_edge, %if.then18, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then72 ], [ %call7.i.i, %if.end73 ], [ null, %if.then18 ], [ null, %if.end54.cleanup_crit_edge ], [ null, %land.rhs.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llcp_free_sdp_tlv(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdp, align 4
  tail call void @kfree(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %sdp) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llcp_free_sdp_tlv_list(ptr nocapture noundef readonly %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -20
  %tobool2.not2426 = icmp eq ptr %add.ptr, null
  %tobool2.not24 = or i1 %tobool.not, %tobool2.not2426
  br i1 %tobool2.not24, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhs:                                         ; preds = %hlist_del.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %sdp.025 = phi ptr [ %add.ptr12, %hlist_del.exit.land.rhs_crit_edge ], [ %add.ptr, %entry.land.rhs_crit_edge ]
  %node = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdp.025, i32 0, i32 6
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %pprev2.i.i = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdp.025, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev2.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %5, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %land.rhs.hlist_del.exit_crit_edge, label %do.body13.i.i

land.rhs.hlist_del.exit_crit_edge:                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %land.rhs.hlist_del.exit_crit_edge
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %9 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %10 = ptrtoint ptr %sdp.025 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdp.025, align 4
  tail call void @kfree(ptr noundef %11) #7
  tail call void @kfree(ptr noundef nonnull %sdp.025) #7
  %add.ptr12 = getelementptr i8, ptr %3, i32 -20
  %tobool2.not27 = icmp eq ptr %add.ptr12, null
  %tobool2.not = or i1 %tobool.not.i.i, %tobool2.not27
  br i1 %tobool2.not, label %hlist_del.exit.for.end_crit_edge, label %hlist_del.exit.land.rhs_crit_edge

hlist_del.exit.land.rhs_crit_edge:                ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

hlist_del.exit.for.end_crit_edge:                 ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %hlist_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_parse_gb_tlv(ptr noundef %local, ptr nocapture noundef readonly %tlv_array, i16 noundef zeroext %tlv_array_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_parse_gb_tlv.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_parse_gb_tlv, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %tlv_array_len to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_parse_gb_tlv.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %local, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %while.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %do.end
  %conv7 = zext i16 %tlv_array_len to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tlv_array_len)
  %cmp8144.not = icmp eq i16 %tlv_array_len, 0
  br i1 %cmp8144.not, label %while.cond.preheader.do.body56_crit_edge, label %while.body.lr.ph

while.cond.preheader.do.body56_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %remote_opt = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 27
  %remote_lto = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 26
  %remote_wks = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 28
  %remote_miu = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 25
  %remote_version = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 24
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %conv6152 = phi i32 [ 0, %while.body.lr.ph ], [ %conv6, %sw.epilog.while.body_crit_edge ]
  %tlv.0145 = phi ptr [ %tlv_array, %while.body.lr.ph ], [ %add.ptr, %sw.epilog.while.body_crit_edge ]
  %0 = ptrtoint ptr %tlv.0145 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tlv.0145, align 1
  %arrayidx10 = getelementptr i8, ptr %tlv.0145, i32 1
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx10, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_parse_gb_tlv.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_parse_gb_tlv, %if.then23)) #7
          to label %do.end28 [label %if.then23], !srcloc !129

if.then23:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv24 = zext i8 %1 to i32
  %conv25 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_parse_gb_tlv.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef %conv24, i32 noundef %conv25) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %while.body
  %4 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.end45 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb31
    i8 3, label %sw.bb35
    i8 4, label %sw.bb37
    i8 7, label %sw.bb41
  ]

sw.bb:                                            ; preds = %do.end28
  %5 = ptrtoint ptr %tlv.0145 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tlv.0145, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not.i.i = icmp eq i8 %6, 1
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %sw.bb.llcp_tlv_version.exit_crit_edge

sw.bb.llcp_tlv_version.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %llcp_tlv_version.exit

lor.lhs.false.i.i:                                ; preds = %sw.bb
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp8.not.i.i = icmp eq i8 %8, 1
  br i1 %cmp8.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.llcp_tlv_version.exit_crit_edge

lor.lhs.false.i.i.llcp_tlv_version.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %llcp_tlv_version.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10.i.i = getelementptr i8, ptr %tlv.0145, i32 2
  %9 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx10.i.i, align 1
  br label %llcp_tlv_version.exit

llcp_tlv_version.exit:                            ; preds = %if.end.i.i, %lor.lhs.false.i.i.llcp_tlv_version.exit_crit_edge, %sw.bb.llcp_tlv_version.exit_crit_edge
  %retval.0.i.i = phi i8 [ %10, %if.end.i.i ], [ 0, %lor.lhs.false.i.i.llcp_tlv_version.exit_crit_edge ], [ 0, %sw.bb.llcp_tlv_version.exit_crit_edge ]
  %11 = ptrtoint ptr %remote_version to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %retval.0.i.i, ptr %remote_version, align 2
  br label %sw.epilog

sw.bb31:                                          ; preds = %do.end28
  %12 = ptrtoint ptr %tlv.0145 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tlv.0145, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp.not.i.i114 = icmp eq i8 %13, 2
  br i1 %cmp.not.i.i114, label %lor.lhs.false.i.i117, label %sw.bb31.llcp_tlv_miux.exit_crit_edge

sw.bb31.llcp_tlv_miux.exit_crit_edge:             ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %llcp_tlv_miux.exit

lor.lhs.false.i.i117:                             ; preds = %sw.bb31
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp8.not.i.i116 = icmp eq i8 %15, 2
  br i1 %cmp8.not.i.i116, label %if.end.i.i118, label %lor.lhs.false.i.i117.llcp_tlv_miux.exit_crit_edge

lor.lhs.false.i.i117.llcp_tlv_miux.exit_crit_edge: ; preds = %lor.lhs.false.i.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %llcp_tlv_miux.exit

if.end.i.i118:                                    ; preds = %lor.lhs.false.i.i117
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %tlv.0145, i32 2
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i, align 2
  %phi.bo.i = and i16 %17, 2047
  br label %llcp_tlv_miux.exit

llcp_tlv_miux.exit:                               ; preds = %if.end.i.i118, %lor.lhs.false.i.i117.llcp_tlv_miux.exit_crit_edge, %sw.bb31.llcp_tlv_miux.exit_crit_edge
  %retval.0.i.i119 = phi i16 [ %phi.bo.i, %if.end.i.i118 ], [ 0, %lor.lhs.false.i.i117.llcp_tlv_miux.exit_crit_edge ], [ 0, %sw.bb31.llcp_tlv_miux.exit_crit_edge ]
  %add = add nuw nsw i16 %retval.0.i.i119, 128
  %18 = ptrtoint ptr %remote_miu to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %add, ptr %remote_miu, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %do.end28
  %19 = ptrtoint ptr %tlv.0145 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tlv.0145, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp.not.i.i120 = icmp eq i8 %20, 3
  br i1 %cmp.not.i.i120, label %lor.lhs.false.i.i123, label %sw.bb35.llcp_tlv_wks.exit_crit_edge

sw.bb35.llcp_tlv_wks.exit_crit_edge:              ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %llcp_tlv_wks.exit

lor.lhs.false.i.i123:                             ; preds = %sw.bb35
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp8.not.i.i122 = icmp eq i8 %22, 2
  br i1 %cmp8.not.i.i122, label %if.end.i.i125, label %lor.lhs.false.i.i123.llcp_tlv_wks.exit_crit_edge

lor.lhs.false.i.i123.llcp_tlv_wks.exit_crit_edge: ; preds = %lor.lhs.false.i.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %llcp_tlv_wks.exit

if.end.i.i125:                                    ; preds = %lor.lhs.false.i.i123
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i124 = getelementptr i8, ptr %tlv.0145, i32 2
  %23 = ptrtoint ptr %add.ptr.i.i124 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i.i124, align 2
  br label %llcp_tlv_wks.exit

llcp_tlv_wks.exit:                                ; preds = %if.end.i.i125, %lor.lhs.false.i.i123.llcp_tlv_wks.exit_crit_edge, %sw.bb35.llcp_tlv_wks.exit_crit_edge
  %retval.0.i.i126 = phi i16 [ %24, %if.end.i.i125 ], [ 0, %lor.lhs.false.i.i123.llcp_tlv_wks.exit_crit_edge ], [ 0, %sw.bb35.llcp_tlv_wks.exit_crit_edge ]
  %25 = ptrtoint ptr %remote_wks to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %retval.0.i.i126, ptr %remote_wks, align 2
  br label %sw.epilog

sw.bb37:                                          ; preds = %do.end28
  %26 = ptrtoint ptr %tlv.0145 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tlv.0145, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %27)
  %cmp.not.i.i127 = icmp eq i8 %27, 4
  br i1 %cmp.not.i.i127, label %lor.lhs.false.i.i130, label %sw.bb37.llcp_tlv_lto.exit_crit_edge

sw.bb37.llcp_tlv_lto.exit_crit_edge:              ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %llcp_tlv_lto.exit

lor.lhs.false.i.i130:                             ; preds = %sw.bb37
  %28 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp8.not.i.i129 = icmp eq i8 %29, 1
  br i1 %cmp8.not.i.i129, label %if.end.i.i132, label %lor.lhs.false.i.i130.llcp_tlv_lto.exit_crit_edge

lor.lhs.false.i.i130.llcp_tlv_lto.exit_crit_edge: ; preds = %lor.lhs.false.i.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %llcp_tlv_lto.exit

if.end.i.i132:                                    ; preds = %lor.lhs.false.i.i130
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10.i.i131 = getelementptr i8, ptr %tlv.0145, i32 2
  %30 = ptrtoint ptr %arrayidx10.i.i131 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx10.i.i131, align 1
  br label %llcp_tlv_lto.exit

llcp_tlv_lto.exit:                                ; preds = %if.end.i.i132, %lor.lhs.false.i.i130.llcp_tlv_lto.exit_crit_edge, %sw.bb37.llcp_tlv_lto.exit_crit_edge
  %retval.0.i.i133 = phi i8 [ %31, %if.end.i.i132 ], [ 0, %lor.lhs.false.i.i130.llcp_tlv_lto.exit_crit_edge ], [ 0, %sw.bb37.llcp_tlv_lto.exit_crit_edge ]
  %conv.i = zext i8 %retval.0.i.i133 to i16
  %mul = mul nuw nsw i16 %conv.i, 10
  %32 = ptrtoint ptr %remote_lto to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %mul, ptr %remote_lto, align 2
  br label %sw.epilog

sw.bb41:                                          ; preds = %do.end28
  %33 = ptrtoint ptr %tlv.0145 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tlv.0145, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %34)
  %cmp.not.i.i134 = icmp eq i8 %34, 7
  br i1 %cmp.not.i.i134, label %lor.lhs.false.i.i137, label %sw.bb41.llcp_tlv_opt.exit_crit_edge

sw.bb41.llcp_tlv_opt.exit_crit_edge:              ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  br label %llcp_tlv_opt.exit

lor.lhs.false.i.i137:                             ; preds = %sw.bb41
  %35 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp8.not.i.i136 = icmp eq i8 %36, 1
  br i1 %cmp8.not.i.i136, label %if.end.i.i139, label %lor.lhs.false.i.i137.llcp_tlv_opt.exit_crit_edge

lor.lhs.false.i.i137.llcp_tlv_opt.exit_crit_edge: ; preds = %lor.lhs.false.i.i137
  call void @__sanitizer_cov_trace_pc() #9
  br label %llcp_tlv_opt.exit

if.end.i.i139:                                    ; preds = %lor.lhs.false.i.i137
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10.i.i138 = getelementptr i8, ptr %tlv.0145, i32 2
  %37 = ptrtoint ptr %arrayidx10.i.i138 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx10.i.i138, align 1
  br label %llcp_tlv_opt.exit

llcp_tlv_opt.exit:                                ; preds = %if.end.i.i139, %lor.lhs.false.i.i137.llcp_tlv_opt.exit_crit_edge, %sw.bb41.llcp_tlv_opt.exit_crit_edge
  %retval.0.i.i140 = phi i8 [ %38, %if.end.i.i139 ], [ 0, %lor.lhs.false.i.i137.llcp_tlv_opt.exit_crit_edge ], [ 0, %sw.bb41.llcp_tlv_opt.exit_crit_edge ]
  %39 = ptrtoint ptr %remote_opt to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %retval.0.i.i140, ptr %remote_opt, align 4
  br label %sw.epilog

do.end45:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  %conv29 = zext i8 %1 to i32
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef %conv29) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end45, %llcp_tlv_opt.exit, %llcp_tlv_lto.exit, %llcp_tlv_wks.exit, %llcp_tlv_miux.exit, %llcp_tlv_version.exit
  %conv49 = zext i8 %3 to i32
  %add50 = add nuw nsw i32 %conv49, 2
  %add52 = add nuw nsw i32 %add50, %conv6152
  %add.ptr = getelementptr i8, ptr %tlv.0145, i32 %add50
  %conv6 = and i32 %add52, 255
  %cmp8 = icmp ult i32 %conv6, %conv7
  br i1 %cmp8, label %sw.epilog.while.body_crit_edge, label %sw.epilog.do.body56_crit_edge

sw.epilog.do.body56_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.body56:                                        ; preds = %sw.epilog.do.body56_crit_edge, %while.cond.preheader.do.body56_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_parse_gb_tlv.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_parse_gb_tlv, %if.then68)) #7
          to label %cleanup [label %if.then68], !srcloc !129

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %remote_version69 = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 24
  %40 = ptrtoint ptr %remote_version69 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %remote_version69, align 2
  %conv70 = zext i8 %41 to i32
  %remote_miu71 = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 25
  %42 = ptrtoint ptr %remote_miu71 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %remote_miu71, align 4
  %conv72 = zext i16 %43 to i32
  %remote_lto73 = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 26
  %44 = ptrtoint ptr %remote_lto73 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %remote_lto73, align 2
  %conv74 = zext i16 %45 to i32
  %remote_opt75 = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 27
  %46 = ptrtoint ptr %remote_opt75 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %remote_opt75, align 4
  %conv76 = zext i8 %47 to i32
  %remote_wks77 = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 28
  %48 = ptrtoint ptr %remote_wks77 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %remote_wks77, align 2
  %conv78 = zext i16 %49 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_parse_gb_tlv.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef %conv70, i32 noundef %conv72, i32 noundef %conv74, i32 noundef %conv76, i32 noundef %conv78) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %do.body56, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end.cleanup_crit_edge ], [ 0, %if.then68 ], [ 0, %do.body56 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_parse_connection_tlv(ptr noundef %sock, ptr nocapture noundef readonly %tlv_array, i16 noundef zeroext %tlv_array_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_parse_connection_tlv.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_parse_connection_tlv, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %tlv_array_len to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_parse_connection_tlv.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.16, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %sock, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %while.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %do.end
  %conv7 = zext i16 %tlv_array_len to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tlv_array_len)
  %cmp8102.not = icmp eq i16 %tlv_array_len, 0
  br i1 %cmp8102.not, label %while.cond.preheader.do.body48_crit_edge, label %while.body.lr.ph

while.cond.preheader.do.body48_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body48

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %remote_rw = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 11
  %remote_miu = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %conv6107 = phi i32 [ 0, %while.body.lr.ph ], [ %conv6, %sw.epilog.while.body_crit_edge ]
  %tlv.0103 = phi ptr [ %tlv_array, %while.body.lr.ph ], [ %add.ptr, %sw.epilog.while.body_crit_edge ]
  %0 = ptrtoint ptr %tlv.0103 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tlv.0103, align 1
  %arrayidx10 = getelementptr i8, ptr %tlv.0103, i32 1
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx10, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_parse_connection_tlv.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_parse_connection_tlv, %if.then23)) #7
          to label %do.end28 [label %if.then23], !srcloc !129

if.then23:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv24 = zext i8 %1 to i32
  %conv25 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_parse_connection_tlv.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.16, i32 noundef %conv24, i32 noundef %conv25) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %while.body
  %4 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %1, label %do.end37 [
    i8 2, label %sw.bb
    i8 5, label %sw.bb33
    i8 6, label %do.end28.sw.epilog_crit_edge
  ]

do.end28.sw.epilog_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end28
  %5 = ptrtoint ptr %tlv.0103 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tlv.0103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp.not.i.i = icmp eq i8 %6, 2
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %sw.bb.llcp_tlv_miux.exit_crit_edge

sw.bb.llcp_tlv_miux.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %llcp_tlv_miux.exit

lor.lhs.false.i.i:                                ; preds = %sw.bb
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp8.not.i.i = icmp eq i8 %8, 2
  br i1 %cmp8.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.llcp_tlv_miux.exit_crit_edge

lor.lhs.false.i.i.llcp_tlv_miux.exit_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %llcp_tlv_miux.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %tlv.0103, i32 2
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %phi.bo.i = and i16 %10, 2047
  br label %llcp_tlv_miux.exit

llcp_tlv_miux.exit:                               ; preds = %if.end.i.i, %lor.lhs.false.i.i.llcp_tlv_miux.exit_crit_edge, %sw.bb.llcp_tlv_miux.exit_crit_edge
  %retval.0.i.i = phi i16 [ %phi.bo.i, %if.end.i.i ], [ 0, %lor.lhs.false.i.i.llcp_tlv_miux.exit_crit_edge ], [ 0, %sw.bb.llcp_tlv_miux.exit_crit_edge ]
  %add = add nuw nsw i16 %retval.0.i.i, 128
  %11 = ptrtoint ptr %remote_miu to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %add, ptr %remote_miu, align 2
  br label %sw.epilog

sw.bb33:                                          ; preds = %do.end28
  %12 = ptrtoint ptr %tlv.0103 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tlv.0103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %13)
  %cmp.not.i.i92 = icmp eq i8 %13, 5
  br i1 %cmp.not.i.i92, label %lor.lhs.false.i.i95, label %sw.bb33.llcp_tlv_rw.exit_crit_edge

sw.bb33.llcp_tlv_rw.exit_crit_edge:               ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  br label %llcp_tlv_rw.exit

lor.lhs.false.i.i95:                              ; preds = %sw.bb33
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp8.not.i.i94 = icmp eq i8 %15, 1
  br i1 %cmp8.not.i.i94, label %if.end.i.i97, label %lor.lhs.false.i.i95.llcp_tlv_rw.exit_crit_edge

lor.lhs.false.i.i95.llcp_tlv_rw.exit_crit_edge:   ; preds = %lor.lhs.false.i.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %llcp_tlv_rw.exit

if.end.i.i97:                                     ; preds = %lor.lhs.false.i.i95
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10.i.i = getelementptr i8, ptr %tlv.0103, i32 2
  %16 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx10.i.i, align 1
  %phi.bo.i96 = and i8 %17, 15
  br label %llcp_tlv_rw.exit

llcp_tlv_rw.exit:                                 ; preds = %if.end.i.i97, %lor.lhs.false.i.i95.llcp_tlv_rw.exit_crit_edge, %sw.bb33.llcp_tlv_rw.exit_crit_edge
  %retval.0.i.i98 = phi i8 [ %phi.bo.i96, %if.end.i.i97 ], [ 0, %lor.lhs.false.i.i95.llcp_tlv_rw.exit_crit_edge ], [ 0, %sw.bb33.llcp_tlv_rw.exit_crit_edge ]
  %18 = ptrtoint ptr %remote_rw to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %retval.0.i.i98, ptr %remote_rw, align 8
  br label %sw.epilog

do.end37:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  %conv29 = zext i8 %1 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16, i32 noundef %conv29) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end37, %llcp_tlv_rw.exit, %llcp_tlv_miux.exit, %do.end28.sw.epilog_crit_edge
  %conv41 = zext i8 %3 to i32
  %add42 = add nuw nsw i32 %conv41, 2
  %add44 = add nuw nsw i32 %add42, %conv6107
  %add.ptr = getelementptr i8, ptr %tlv.0103, i32 %add42
  %conv6 = and i32 %add44, 255
  %cmp8 = icmp ult i32 %conv6, %conv7
  br i1 %cmp8, label %sw.epilog.while.body_crit_edge, label %sw.epilog.do.body48_crit_edge

sw.epilog.do.body48_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body48

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.body48:                                        ; preds = %sw.epilog.do.body48_crit_edge, %while.cond.preheader.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_parse_connection_tlv.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_parse_connection_tlv, %if.then60)) #7
          to label %cleanup [label %if.then60], !srcloc !129

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  %remote_rw61 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 11
  %19 = ptrtoint ptr %remote_rw61 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %remote_rw61, align 8
  %conv62 = zext i8 %20 to i32
  %remote_miu63 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 12
  %21 = ptrtoint ptr %remote_miu63 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %remote_miu63, align 2
  %conv64 = zext i16 %22 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_parse_connection_tlv.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, ptr noundef nonnull %sock, i32 noundef %conv62, i32 noundef %conv64) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %do.body48, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %do.end.cleanup_crit_edge ], [ 0, %if.then60 ], [ 0, %do.body48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_disconnect(ptr noundef %sock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 2
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call = tail call fastcc ptr @llcp_allocate_pdu(ptr noundef %sock, i8 noundef zeroext 5, i16 noundef zeroext 0)
  %cmp6 = icmp eq ptr %call, null
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %tx_queue = getelementptr inbounds %struct.nfc_llcp_local, ptr %1, i32 0, i32 5
  tail call void @skb_queue_tail(ptr noundef %tx_queue, ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @llcp_allocate_pdu(ptr noundef %sock, i8 noundef zeroext %cmd, i16 noundef zeroext %size) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #7
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !131
  %ssap = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 5
  %1 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ssap, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %conv2 = zext i16 %size to i32
  %add = add nuw nsw i32 %conv2, 2
  %call = call ptr @nfc_alloc_send_skb(ptr noundef %4, ptr noundef %sock, i32 noundef 64, i32 noundef %add, ptr noundef nonnull %err) #7
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dsap = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 6
  %5 = ptrtoint ptr %dsap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dsap, align 1
  %7 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ssap, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_add_header.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_allocate_pdu, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %cmd to i32
  %conv3.i = zext i8 %6 to i32
  %conv4.i = zext i8 %8 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_add_header.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %conv4.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end7
  %shl.i = shl i8 %6, 2
  %9 = lshr i8 %cmd, 2
  %or.i = or i8 %shl.i, %9
  %shl9.i = shl i8 %cmd, 6
  %or11.i = or i8 %8, %shl9.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_add_header.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_allocate_pdu, %if.then26.i)) #7
          to label %llcp_add_header.exit [label %if.then26.i], !srcloc !129

if.then26.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv28.i = zext i8 %or.i to i32
  %conv30.i = zext i8 %or11.i to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_add_header.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.48, i32 noundef %conv28.i, i32 noundef %conv30.i) #7
  br label %llcp_add_header.exit

llcp_add_header.exit:                             ; preds = %if.then26.i, %do.end.i
  %call.i.i = call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 2) #7
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or.i, ptr %call.i.i, align 1
  %header.sroa.6.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %11 = ptrtoint ptr %header.sroa.6.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %or11.i, ptr %header.sroa.6.0.call.i.sroa_idx.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %llcp_add_header.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %llcp_add_header.exit ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_symm(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_llcp_find_local(ptr noundef %dev) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_headroom = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_headroom, align 8
  %tx_tailroom = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %tx_tailroom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_tailroom, align 4
  %add2 = add i32 %1, 3
  %conv6 = add i32 %add2, %3
  %conv7 = and i32 %conv6, 65535
  %call.i = tail call ptr @__alloc_skb(i32 noundef %conv7, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %cmp9 = icmp eq ptr %call.i, null
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %4 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_headroom, align 8
  %add14 = add i32 %5, 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add14
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 %add14
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_add_header.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_symm, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_add_header.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_add_header.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_symm, %if.then26.i)) #7
          to label %llcp_add_header.exit [label %if.then26.i], !srcloc !129

if.then26.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_add_header.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef 0) #7
  br label %llcp_add_header.exit

llcp_add_header.exit:                             ; preds = %if.then26.i, %do.end.i
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #7
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %call.i.i, align 1
  %header.sroa.6.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %11 = ptrtoint ptr %header.sroa.6.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %header.sroa.6.0.call.i.sroa_idx.i, align 1
  %call.i.i33 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #7
  %12 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call.i.i33, ptr %12, align 8
  tail call void @nfc_llcp_send_to_raw_sock(ptr noundef nonnull %call, ptr noundef nonnull %call.i, i8 noundef zeroext 1) #7
  %target_idx = getelementptr inbounds %struct.nfc_llcp_local, ptr %call, i32 0, i32 10
  %14 = ptrtoint ptr %target_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %target_idx, align 4
  %call16 = tail call i32 @nfc_data_exchange(ptr noundef %dev, i32 noundef %15, ptr noundef nonnull %call.i, ptr noundef nonnull @nfc_llcp_recv, ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %llcp_add_header.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %llcp_add_header.exit ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_find_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_send_to_raw_sock(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_data_exchange(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_recv(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_connect(ptr noundef %sock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 2
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %service_name = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 7
  %2 = ptrtoint ptr %service_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %service_name, align 4
  %cmp2.not = icmp eq ptr %3, null
  br i1 %cmp2.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %service_name_len = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 8
  %4 = ptrtoint ptr %service_name_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %service_name_len, align 8
  %conv = trunc i32 %5 to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_build_tlv.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_connect, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_build_tlv.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 6) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp11.i.not = icmp eq i8 %conv, 0
  br i1 %cmp11.i.not, label %do.end.i.do.end69_crit_edge, label %if.else.i

do.end.i.do.end69_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

if.else.i:                                        ; preds = %do.end.i
  %conv20.i = and i32 %5, 255
  %add.i = add nuw nsw i32 %conv20.i, 2
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #10
  %cmp25.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp25.i, label %if.else.i.do.end69_crit_edge, label %if.end6

if.else.i.do.end69_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

if.end6:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %call9.i.i.i, align 128
  %arrayidx30.i = getelementptr i8, ptr %call9.i.i.i, i32 1
  %7 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %arrayidx30.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 2
  %8 = call ptr @memcpy(ptr %add.ptr.i, ptr %3, i32 %conv20.i)
  %9 = trunc i32 %add.i to i16
  %conv7 = and i16 %9, 255
  %phi.bo176 = add nuw nsw i16 %conv7, 7
  %phi.cast = and i32 %add.i, 255
  br label %if.end10

if.end10:                                         ; preds = %if.end6, %if.end.if.end10_crit_edge
  %service_name_tlv_length.1 = phi i32 [ 255, %if.end.if.end10_crit_edge ], [ %phi.cast, %if.end6 ]
  %service_name_tlv.0 = phi ptr [ null, %if.end.if.end10_crit_edge ], [ %call9.i.i.i, %if.end6 ]
  %size.0 = phi i16 [ 7, %if.end.if.end10_crit_edge ], [ %phi.bo176, %if.end6 ]
  %miux11 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 10
  %10 = ptrtoint ptr %miux11 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %miux11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %11)
  %cmp13 = icmp ugt i16 %11, 2047
  br i1 %cmp13, label %cond.true, label %if.end10.cond.end_crit_edge

if.end10.cond.end_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %miux15 = getelementptr inbounds %struct.nfc_llcp_local, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %miux15 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %miux15, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end10.cond.end_crit_edge
  %cond.in = phi i16 [ %13, %cond.true ], [ %11, %if.end10.cond.end_crit_edge ]
  %rw20 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 9
  %14 = ptrtoint ptr %rw20 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rw20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %15)
  %cmp22 = icmp ugt i8 %15, 15
  br i1 %cmp22, label %cond.true24, label %cond.end.cond.end30_crit_edge

cond.end.cond.end30_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end30

cond.true24:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %rw25 = getelementptr inbounds %struct.nfc_llcp_local, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %rw25 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rw25, align 1
  br label %cond.end30

cond.end30:                                       ; preds = %cond.true24, %cond.end.cond.end30_crit_edge
  %cond31.in = phi i8 [ %17, %cond.true24 ], [ %15, %cond.end.cond.end30_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_build_tlv.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_connect, %if.then.i114)) #7
          to label %do.end.i115 [label %if.then.i114], !srcloc !129

if.then.i114:                                     ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_build_tlv.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 2) #7
  br label %do.end.i115

do.end.i115:                                      ; preds = %if.then.i114, %cond.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i117 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 4) #11
  %cmp25.i120 = icmp eq ptr %call7.i.i.i117, null
  br i1 %cmp25.i120, label %do.end.i115.do.end69_crit_edge, label %if.end36

do.end.i115.do.end69_crit_edge:                   ; preds = %do.end.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

if.end36:                                         ; preds = %do.end.i115
  %19 = ptrtoint ptr %call7.i.i.i117 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %call7.i.i.i117, align 8
  %arrayidx30.i122 = getelementptr i8, ptr %call7.i.i.i117, i32 1
  %20 = ptrtoint ptr %arrayidx30.i122 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %arrayidx30.i122, align 1
  %add.ptr.i123 = getelementptr i8, ptr %call7.i.i.i117, i32 2
  %21 = ptrtoint ptr %add.ptr.i123 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %cond.in, ptr %add.ptr.i123, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_build_tlv.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_connect, %if.then.i127)) #7
          to label %do.end.i128 [label %if.then.i127], !srcloc !129

if.then.i127:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_build_tlv.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 5) #7
  br label %do.end.i128

do.end.i128:                                      ; preds = %if.then.i127, %if.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i130 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 3) #11
  %cmp25.i133 = icmp eq ptr %call7.i.i.i130, null
  br i1 %cmp25.i133, label %do.end.i128.do.end69_crit_edge, label %if.end44

do.end.i128.do.end69_crit_edge:                   ; preds = %do.end.i128
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

if.end44:                                         ; preds = %do.end.i128
  %23 = ptrtoint ptr %call7.i.i.i130 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 5, ptr %call7.i.i.i130, align 8
  %arrayidx30.i135 = getelementptr i8, ptr %call7.i.i.i130, i32 1
  %24 = ptrtoint ptr %arrayidx30.i135 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %arrayidx30.i135, align 1
  %add.ptr.i136 = getelementptr i8, ptr %call7.i.i.i130, i32 2
  %25 = ptrtoint ptr %add.ptr.i136 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %cond31.in, ptr %add.ptr.i136, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_send_connect.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_connect, %if.then53)) #7
          to label %do.end [label %if.then53], !srcloc !129

if.then53:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %conv54 = zext i16 %size.0 to i32
  %service_name_len55 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 8
  %26 = ptrtoint ptr %service_name_len55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %service_name_len55, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_send_connect.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef %conv54, i32 noundef %27) #7
  br label %do.end

do.end:                                           ; preds = %if.then53, %if.end44
  %call57 = tail call fastcc ptr @llcp_allocate_pdu(ptr noundef %sock, i8 noundef zeroext 4, i16 noundef zeroext %size.0)
  %cmp58 = icmp eq ptr %call57, null
  br i1 %cmp58, label %do.end.do.end69_crit_edge, label %if.end61

do.end.do.end69_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

if.end61:                                         ; preds = %do.end
  %cmp.i = icmp eq ptr %service_name_tlv.0, null
  br i1 %cmp.i, label %if.end61.error_tlv_crit_edge, label %if.end.i

if.end61.error_tlv_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_tlv

if.end.i:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call57, i32 noundef %service_name_tlv_length.1) #7
  %28 = call ptr @memcpy(ptr %call.i.i, ptr %service_name_tlv.0, i32 %service_name_tlv_length.1)
  br label %error_tlv

error_tlv:                                        ; preds = %if.end.i, %if.end61.error_tlv_crit_edge
  %call.i.i142 = tail call ptr @skb_put(ptr noundef nonnull %call57, i32 noundef 4) #7
  %29 = ptrtoint ptr %call7.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call7.i.i.i117, align 8
  %31 = ptrtoint ptr %call.i.i142 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %call.i.i142, align 1
  %call.i.i147 = tail call ptr @skb_put(ptr noundef nonnull %call57, i32 noundef 3) #7
  %32 = call ptr @memcpy(ptr %call.i.i147, ptr %call7.i.i.i130, i32 3)
  %tx_queue = getelementptr inbounds %struct.nfc_llcp_local, ptr %1, i32 0, i32 5
  tail call void @skb_queue_tail(ptr noundef %tx_queue, ptr noundef nonnull %call57) #7
  br label %if.end72

do.end69:                                         ; preds = %do.end.do.end69_crit_edge, %do.end.i128.do.end69_crit_edge, %do.end.i115.do.end69_crit_edge, %if.else.i.do.end69_crit_edge, %do.end.i.do.end69_crit_edge
  %service_name_tlv.1.ph = phi ptr [ %service_name_tlv.0, %do.end.do.end69_crit_edge ], [ null, %do.end.i.do.end69_crit_edge ], [ null, %if.else.i.do.end69_crit_edge ], [ %service_name_tlv.0, %do.end.i115.do.end69_crit_edge ], [ %service_name_tlv.0, %do.end.i128.do.end69_crit_edge ]
  %miux_tlv.0.ph = phi ptr [ %call7.i.i.i117, %do.end.do.end69_crit_edge ], [ null, %do.end.i.do.end69_crit_edge ], [ null, %if.else.i.do.end69_crit_edge ], [ null, %do.end.i115.do.end69_crit_edge ], [ %call7.i.i.i117, %do.end.i128.do.end69_crit_edge ]
  %rw_tlv.0.ph = phi ptr [ %call7.i.i.i130, %do.end.do.end69_crit_edge ], [ null, %do.end.i.do.end69_crit_edge ], [ null, %if.else.i.do.end69_crit_edge ], [ null, %do.end.i115.do.end69_crit_edge ], [ null, %do.end.i128.do.end69_crit_edge ]
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19, i32 noundef -12) #12
  br label %if.end72

if.end72:                                         ; preds = %do.end69, %error_tlv
  %err.0175 = phi i32 [ -12, %do.end69 ], [ 0, %error_tlv ]
  %rw_tlv.0173 = phi ptr [ %rw_tlv.0.ph, %do.end69 ], [ %call7.i.i.i130, %error_tlv ]
  %miux_tlv.0171 = phi ptr [ %miux_tlv.0.ph, %do.end69 ], [ %call7.i.i.i117, %error_tlv ]
  %service_name_tlv.1169 = phi ptr [ %service_name_tlv.1.ph, %do.end69 ], [ %service_name_tlv.0, %error_tlv ]
  tail call void @kfree(ptr noundef %service_name_tlv.1169) #7
  tail call void @kfree(ptr noundef %miux_tlv.0171) #7
  tail call void @kfree(ptr noundef %rw_tlv.0173) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0175, %if.end72 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_cc(ptr noundef %sock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 2
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %miux2 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 10
  %2 = ptrtoint ptr %miux2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %miux2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %3)
  %cmp3 = icmp ugt i16 %3, 2047
  br i1 %cmp3, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %miux5 = getelementptr inbounds %struct.nfc_llcp_local, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %miux5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %miux5, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond.in = phi i16 [ %5, %cond.true ], [ %3, %if.end.cond.end_crit_edge ]
  %rw10 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 9
  %6 = ptrtoint ptr %rw10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rw10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %7)
  %cmp12 = icmp ugt i8 %7, 15
  br i1 %cmp12, label %cond.true14, label %cond.end.cond.end20_crit_edge

cond.end.cond.end20_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end20

cond.true14:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %rw15 = getelementptr inbounds %struct.nfc_llcp_local, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %rw15 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rw15, align 1
  br label %cond.end20

cond.end20:                                       ; preds = %cond.true14, %cond.end.cond.end20_crit_edge
  %cond21.in = phi i8 [ %9, %cond.true14 ], [ %7, %cond.end.cond.end20_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_build_tlv.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_cc, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_build_tlv.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 2) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %cond.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 4) #11
  %cmp25.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp25.i, label %do.end.i.do.end_crit_edge, label %if.end24

do.end.i.do.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end24:                                         ; preds = %do.end.i
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %call7.i.i.i, align 8
  %arrayidx30.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %12 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %arrayidx30.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %cond.in, ptr %add.ptr.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_build_tlv.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_cc, %if.then.i75)) #7
          to label %do.end.i76 [label %if.then.i75], !srcloc !129

if.then.i75:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_build_tlv.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 5) #7
  br label %do.end.i76

do.end.i76:                                       ; preds = %if.then.i75, %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i77 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 3) #11
  %cmp25.i78 = icmp eq ptr %call7.i.i.i77, null
  br i1 %cmp25.i78, label %do.end.i76.do.end_crit_edge, label %if.end31

do.end.i76.do.end_crit_edge:                      ; preds = %do.end.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end31:                                         ; preds = %do.end.i76
  %15 = ptrtoint ptr %call7.i.i.i77 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 5, ptr %call7.i.i.i77, align 8
  %arrayidx30.i79 = getelementptr i8, ptr %call7.i.i.i77, i32 1
  %16 = ptrtoint ptr %arrayidx30.i79 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx30.i79, align 1
  %add.ptr.i80 = getelementptr i8, ptr %call7.i.i.i77, i32 2
  %17 = ptrtoint ptr %add.ptr.i80 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %cond21.in, ptr %add.ptr.i80, align 2
  %call36 = tail call fastcc ptr @llcp_allocate_pdu(ptr noundef %sock, i8 noundef zeroext 6, i16 noundef zeroext 7)
  %cmp37 = icmp eq ptr %call36, null
  br i1 %cmp37, label %if.end31.do.end_crit_edge, label %error_tlv

if.end31.do.end_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

error_tlv:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call36, i32 noundef 4) #7
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call7.i.i.i, align 8
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %call.i.i, align 1
  %call.i.i86 = tail call ptr @skb_put(ptr noundef nonnull %call36, i32 noundef 3) #7
  %21 = call ptr @memcpy(ptr %call.i.i86, ptr %call7.i.i.i77, i32 3)
  %tx_queue = getelementptr inbounds %struct.nfc_llcp_local, ptr %1, i32 0, i32 5
  tail call void @skb_queue_tail(ptr noundef %tx_queue, ptr noundef nonnull %call36) #7
  br label %if.end46

do.end:                                           ; preds = %if.end31.do.end_crit_edge, %do.end.i76.do.end_crit_edge, %do.end.i.do.end_crit_edge
  %rw_tlv.0.ph = phi ptr [ %call7.i.i.i77, %if.end31.do.end_crit_edge ], [ null, %do.end.i.do.end_crit_edge ], [ null, %do.end.i76.do.end_crit_edge ]
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef -12) #12
  br label %if.end46

if.end46:                                         ; preds = %do.end, %error_tlv
  %err.0106 = phi i32 [ -12, %do.end ], [ 0, %error_tlv ]
  %rw_tlv.0104 = phi ptr [ %rw_tlv.0.ph, %do.end ], [ %call7.i.i.i77, %error_tlv ]
  tail call void @kfree(ptr noundef %call7.i.i.i) #7
  tail call void @kfree(ptr noundef %rw_tlv.0104) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0106, %if.end46 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_snl_sdres(ptr noundef %local, ptr nocapture noundef readonly %tlv_list, i32 noundef %tlvs_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfc_llcp_allocate_snl(ptr noundef %local, i32 noundef %tlvs_len)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tlv_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tlv_list, align 4
  %tobool.not = icmp eq ptr %2, null
  %add.ptr = getelementptr i8, ptr %2, i32 -20
  %tobool4.not3537 = icmp eq ptr %add.ptr, null
  %tobool4.not35 = or i1 %tobool.not, %tobool4.not3537
  br i1 %tobool4.not35, label %if.end.for.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhs:                                         ; preds = %hlist_del.exit.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %sdp.036 = phi ptr [ %add.ptr15, %hlist_del.exit.land.rhs_crit_edge ], [ %add.ptr, %if.end.land.rhs_crit_edge ]
  %node = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdp.036, i32 0, i32 6
  %3 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %node, align 4
  %5 = ptrtoint ptr %sdp.036 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdp.036, align 4
  %tlv_len = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdp.036, i32 0, i32 1
  %7 = ptrtoint ptr %tlv_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tlv_len, align 4
  %conv = zext i8 %8 to i32
  %call.i = tail call ptr @skb_put(ptr noundef %call, i32 noundef %conv) #7
  %9 = call ptr @memcpy(ptr %call.i, ptr %6, i32 %conv)
  %10 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %node, align 4
  %pprev2.i.i = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdp.036, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev2.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %11, ptr %13, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %land.rhs.hlist_del.exit_crit_edge, label %do.body13.i.i

land.rhs.hlist_del.exit_crit_edge:                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %land.rhs.hlist_del.exit_crit_edge
  %16 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %17 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %18 = ptrtoint ptr %sdp.036 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdp.036, align 4
  tail call void @kfree(ptr noundef %19) #7
  tail call void @kfree(ptr noundef nonnull %sdp.036) #7
  %tobool11.not = icmp eq ptr %4, null
  %add.ptr15 = getelementptr i8, ptr %4, i32 -20
  %tobool4.not38 = icmp eq ptr %add.ptr15, null
  %tobool4.not = or i1 %tobool11.not, %tobool4.not38
  br i1 %tobool4.not, label %hlist_del.exit.for.end_crit_edge, label %hlist_del.exit.land.rhs_crit_edge

hlist_del.exit.land.rhs_crit_edge:                ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

hlist_del.exit.for.end_crit_edge:                 ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %hlist_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %tx_queue = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 5
  tail call void @skb_queue_tail(ptr noundef %tx_queue, ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfc_llcp_allocate_snl(ptr noundef readonly %local, i32 noundef %tlv_length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %local, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tx_headroom = getelementptr inbounds %struct.nfc_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_headroom, align 8
  %tx_tailroom = getelementptr inbounds %struct.nfc_dev, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %tx_tailroom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_tailroom, align 4
  %add7 = add i32 %tlv_length, 3
  %conv11 = add i32 %add7, %3
  %add13 = add i32 %conv11, %5
  %conv15 = and i32 %add13, 65535
  %call.i = tail call ptr @__alloc_skb(i32 noundef %conv15, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %cmp17 = icmp eq ptr %call.i, null
  br i1 %cmp17, label %if.end5.cleanup_crit_edge, label %if.end21

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_headroom, align 8
  %add23 = add i32 %7, 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add23
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 %add23
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_add_header.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_allocate_snl, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_add_header.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef 9, i32 noundef 1, i32 noundef 1) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_add_header.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_allocate_snl, %if.then26.i)) #7
          to label %llcp_add_header.exit [label %if.then26.i], !srcloc !129

if.then26.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_add_header.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.48, i32 noundef 6, i32 noundef 65) #7
  br label %llcp_add_header.exit

llcp_add_header.exit:                             ; preds = %if.then26.i, %do.end.i
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #7
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 6, ptr %call.i.i, align 1
  %header.sroa.6.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %13 = ptrtoint ptr %header.sroa.6.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 65, ptr %header.sroa.6.0.call.i.sroa_idx.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %llcp_add_header.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %llcp_add_header.exit ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_snl_sdreq(ptr noundef %local, ptr nocapture noundef readonly %tlv_list, i32 noundef %tlvs_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfc_llcp_allocate_snl(ptr noundef %local, i32 noundef %tlvs_len)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %sdreq_lock = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %sdreq_lock, i32 noundef 0) #7
  %pending_sdreqs = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 30
  %1 = ptrtoint ptr %pending_sdreqs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %pending_sdreqs, align 4
  %tobool.not.i.not = icmp eq ptr %2, null
  br i1 %tobool.not.i.not, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sdreq_timer = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %remote_lto = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 26
  %4 = ptrtoint ptr %remote_lto to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %remote_lto, align 2
  %conv = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv, 3
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #7
  %add = add i32 %call2.i, %3
  %call6 = tail call i32 @mod_timer(ptr noundef %sdreq_timer, i32 noundef %add) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %6 = ptrtoint ptr %tlv_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tlv_list, align 4
  %tobool8.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -20
  %tobool10.not6567 = icmp eq ptr %add.ptr, null
  %tobool10.not65 = or i1 %tobool8.not, %tobool10.not6567
  br i1 %tobool10.not65, label %if.end7.for.end_crit_edge, label %if.end7.land.rhs_crit_edge

if.end7.land.rhs_crit_edge:                       ; preds = %if.end7
  br label %land.rhs

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhs:                                         ; preds = %hlist_add_head.exit.land.rhs_crit_edge, %if.end7.land.rhs_crit_edge
  %sdreq.066 = phi ptr [ %add.ptr32, %hlist_add_head.exit.land.rhs_crit_edge ], [ %add.ptr, %if.end7.land.rhs_crit_edge ]
  %node = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdreq.066, i32 0, i32 6
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_send_snl_sdreq.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_snl_sdreq, %if.then18)) #7
          to label %do.end [label %if.then18], !srcloc !129

if.then18:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %tid = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdreq.066, i32 0, i32 3
  %10 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tid, align 4
  %conv19 = zext i8 %11 to i32
  %uri = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdreq.066, i32 0, i32 2
  %12 = ptrtoint ptr %uri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %uri, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_send_snl_sdreq.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %conv19, ptr noundef %13) #7
  br label %do.end

do.end:                                           ; preds = %if.then18, %land.rhs
  %14 = ptrtoint ptr %sdreq.066 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdreq.066, align 4
  %tlv_len = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdreq.066, i32 0, i32 1
  %16 = ptrtoint ptr %tlv_len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tlv_len, align 4
  %conv21 = zext i8 %17 to i32
  %call.i = tail call ptr @skb_put(ptr noundef %call, i32 noundef %conv21) #7
  %18 = call ptr @memcpy(ptr %call.i, ptr %15, i32 %conv21)
  %19 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %node, align 4
  %pprev2.i.i = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdreq.066, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pprev2.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %20, ptr %22, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %do.end.hlist_del.exit_crit_edge, label %do.body13.i.i

do.end.hlist_del.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %do.end.hlist_del.exit_crit_edge
  %25 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %26 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %27 = ptrtoint ptr %pending_sdreqs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pending_sdreqs, align 4
  store volatile ptr %28, ptr %node, align 4
  %tobool.not.i61 = icmp eq ptr %28, null
  br i1 %tobool.not.i61, label %hlist_del.exit.hlist_add_head.exit_crit_edge, label %do.body12.i

hlist_del.exit.hlist_add_head.exit_crit_edge:     ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %node, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %hlist_del.exit.hlist_add_head.exit_crit_edge
  %30 = ptrtoint ptr %pending_sdreqs to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %node, ptr %pending_sdreqs, align 4
  %31 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %pending_sdreqs, ptr %pprev2.i.i, align 4
  %tobool28.not = icmp eq ptr %9, null
  %add.ptr32 = getelementptr i8, ptr %9, i32 -20
  %tobool10.not68 = icmp eq ptr %add.ptr32, null
  %tobool10.not = or i1 %tobool28.not, %tobool10.not68
  br i1 %tobool10.not, label %hlist_add_head.exit.for.end_crit_edge, label %hlist_add_head.exit.land.rhs_crit_edge

hlist_add_head.exit.land.rhs_crit_edge:           ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

hlist_add_head.exit.for.end_crit_edge:            ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %hlist_add_head.exit.for.end_crit_edge, %if.end7.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %sdreq_lock) #7
  %tx_queue = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 5
  tail call void @skb_queue_tail(ptr noundef %tx_queue, ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_dm(ptr noundef %local, i8 noundef zeroext %ssap, i8 noundef zeroext %dsap, i8 noundef zeroext %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_send_dm.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_dm, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %reason to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_send_dm.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %local, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %dev6 = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 1
  %0 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev6, align 4
  %cmp7 = icmp eq ptr %1, null
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %tx_headroom = getelementptr inbounds %struct.nfc_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_headroom, align 8
  %tx_tailroom = getelementptr inbounds %struct.nfc_dev, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %tx_tailroom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_tailroom, align 4
  %add13 = add i32 %3, 4
  %conv17 = add i32 %add13, %5
  %conv18 = and i32 %conv17, 65535
  %call.i = tail call ptr @__alloc_skb(i32 noundef %conv18, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %cmp20 = icmp eq ptr %call.i, null
  br i1 %cmp20, label %if.end10.cleanup_crit_edge, label %if.end23

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end10
  %6 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_headroom, align 8
  %add25 = add i32 %7, 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add25
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 %add25
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_add_header.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_dm, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i = zext i8 %dsap to i32
  %conv4.i = zext i8 %ssap to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_add_header.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef 7, i32 noundef %conv3.i, i32 noundef %conv4.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end23
  %shl.i = shl i8 %dsap, 2
  %or.i = or i8 %shl.i, 1
  %or11.i = or i8 %ssap, -64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_add_header.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_dm, %if.then26.i)) #7
          to label %llcp_add_header.exit [label %if.then26.i], !srcloc !129

if.then26.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv28.i = zext i8 %or.i to i32
  %conv30.i = zext i8 %or11.i to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_add_header.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.48, i32 noundef %conv28.i, i32 noundef %conv30.i) #7
  br label %llcp_add_header.exit

llcp_add_header.exit:                             ; preds = %if.then26.i, %do.end.i
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #7
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %or.i, ptr %call.i.i, align 1
  %header.sroa.6.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %13 = ptrtoint ptr %header.sroa.6.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or11.i, ptr %header.sroa.6.0.call.i.sroa_idx.i, align 1
  %call.i41 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #7
  %14 = ptrtoint ptr %call.i41 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %reason, ptr %call.i41, align 1
  %tx_queue = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 5
  tail call void @skb_queue_head(ptr noundef %tx_queue, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %llcp_add_header.exit, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %llcp_add_header.exit ], [ -19, %do.end.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_i_frame(ptr noundef %sock, ptr noundef %msg, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_send_i_frame.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_i_frame, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_send_i_frame.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %len) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %local4 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 2
  %0 = ptrtoint ptr %local4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local4, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %remote_ready = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 17
  %2 = ptrtoint ptr %remote_ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %remote_ready, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  br i1 %tobool7.not, label %land.lhs.true29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %qlen.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 20, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i, align 4
  %remote_rw = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 11
  %6 = ptrtoint ptr %remote_rw to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %remote_rw, align 8
  %conv9 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv9)
  %cmp10.not = icmp ult i32 %5, %conv9
  br i1 %cmp10.not, label %land.lhs.true.if.end8.i_crit_edge, label %land.lhs.true12

land.lhs.true.if.end8.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

land.lhs.true12:                                  ; preds = %land.lhs.true
  %qlen.i161 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %qlen.i161 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i161, align 4
  %mul = shl nuw nsw i32 %conv9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mul)
  %cmp16.not = icmp ult i32 %9, %mul
  br i1 %cmp16.not, label %land.lhs.true12.if.end8.i_crit_edge, label %do.end21

land.lhs.true12.if.end8.i_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

do.end21:                                         ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30, i32 noundef %5) #12
  br label %cleanup

land.lhs.true29:                                  ; preds = %if.end6
  %qlen.i163 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 19, i32 1
  %10 = ptrtoint ptr %qlen.i163 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i163, align 4
  %remote_rw32 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 11
  %12 = ptrtoint ptr %remote_rw32 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %remote_rw32, align 8
  %conv33 = zext i8 %13 to i32
  %mul34 = shl nuw nsw i32 %conv33, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mul34)
  %cmp35.not = icmp ult i32 %11, %mul34
  br i1 %cmp35.not, label %land.lhs.true29.if.end8.i_crit_edge, label %do.end40

land.lhs.true29.if.end8.i_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

do.end40:                                         ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.30, i32 noundef %11) #12
  br label %cleanup

if.end8.i:                                        ; preds = %land.lhs.true29.if.end8.i_crit_edge, %land.lhs.true12.if.end8.i_crit_edge, %land.lhs.true.if.end8.i_crit_edge
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len, i32 noundef 1060032) #10
  %cmp47 = icmp eq ptr %call9.i, null
  br i1 %cmp47, label %if.end8.i.cleanup_crit_edge, label %if.end50

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %if.end8.i
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end50
  %.b1.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !130

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %len, i1 noundef zeroext false) #7
  %call3.i.i.i = tail call i32 @_copy_from_iter(ptr noundef nonnull %call9.i, i32 noundef %len, ptr noundef %msg_iter.i) #7
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %len)
  %cmp.i.i165 = icmp eq i32 %retval.0.i.i.i, %len
  br i1 %cmp.i.i165, label %do.body55.preheader, label %if.then53, !prof !130

do.body55.preheader:                              ; preds = %copy_from_iter.exit.i.i
  %remote_miu56 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 12
  %tx_queue105 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 19
  br label %do.body55

if.then53:                                        ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

do.body55:                                        ; preds = %if.end104.do.body55_crit_edge, %do.body55.preheader
  %msg_ptr.0 = phi ptr [ %add.ptr, %if.end104.do.body55_crit_edge ], [ %call9.i, %do.body55.preheader ]
  %remaining_len.0 = phi i32 [ %sub, %if.end104.do.body55_crit_edge ], [ %len, %do.body55.preheader ]
  %14 = ptrtoint ptr %remote_miu56 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %remote_miu56, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2175, i16 %15)
  %cmp58 = icmp ugt i16 %15, 2175
  %spec.select = select i1 %cmp58, i16 128, i16 %15
  %conv63 = zext i16 %spec.select to i32
  %16 = tail call i32 @llvm.umin.i32(i32 %remaining_len.0, i32 %conv63)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_send_i_frame.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_i_frame, %if.then83)) #7
          to label %do.end86 [label %if.then83], !srcloc !129

if.then83:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_send_i_frame.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.30, i32 noundef %16, i32 noundef %remaining_len.0) #7
  br label %do.end86

do.end86:                                         ; preds = %if.then83, %do.body55
  %17 = trunc i32 %16 to i16
  %conv87 = add nuw nsw i16 %17, 1
  %call88 = tail call fastcc ptr @llcp_allocate_pdu(ptr noundef %sock, i8 noundef zeroext 12, i16 noundef zeroext %conv87)
  %cmp89 = icmp eq ptr %call88, null
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

if.end92:                                         ; preds = %do.end86
  %call93 = tail call ptr @skb_put(ptr noundef nonnull %call88, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp94.not = icmp eq i32 %16, 0
  br i1 %cmp94.not, label %if.end92.if.end104_crit_edge, label %if.then102, !prof !132

if.end92.if.end104_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then102:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call88, i32 noundef %16) #7
  %18 = call ptr @memcpy(ptr %call.i, ptr %msg_ptr.0, i32 %16)
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end92.if.end104_crit_edge
  tail call void @skb_queue_tail(ptr noundef %tx_queue105, ptr noundef nonnull %call88) #7
  tail call void @lock_sock_nested(ptr noundef %sock, i32 noundef 0) #7
  %call106 = tail call i32 @nfc_llcp_queue_i_frames(ptr noundef %sock) #7
  tail call void @release_sock(ptr noundef %sock) #7
  %sub = sub i32 %remaining_len.0, %16
  %add.ptr = getelementptr i8, ptr %msg_ptr.0, i32 %16
  %cmp108.not = icmp eq i32 %sub, 0
  br i1 %cmp108.not, label %do.end110, label %if.end104.do.body55_crit_edge

if.end104.do.body55_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

do.end110:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end110, %if.then91, %if.then53, %if.end8.i.cleanup_crit_edge, %do.end40, %do.end21, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %do.end21 ], [ -14, %if.then53 ], [ -12, %if.then91 ], [ %len, %do.end110 ], [ -105, %do.end40 ], [ -19, %do.end.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_queue_i_frames(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_ui_frame(ptr noundef %sock, i8 noundef zeroext %ssap, i8 noundef zeroext %dsap, ptr noundef %msg, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #7
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !131
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_send_ui_frame.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_ui_frame, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_send_ui_frame.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %len) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %local3 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 2
  %1 = ptrtoint ptr %local3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local3, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end8.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %do.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len, i32 noundef 1060032) #10
  %cmp7 = icmp eq ptr %call9.i, null
  br i1 %cmp7, label %if.end8.i.cleanup_crit_edge, label %if.end9

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end8.i
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end9
  %.b1.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !130

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %len, i1 noundef zeroext false) #7
  %call3.i.i.i = tail call i32 @_copy_from_iter(ptr noundef nonnull %call9.i, i32 noundef %len, ptr noundef %msg_iter.i) #7
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %len)
  %cmp.i.i119 = icmp eq i32 %retval.0.i.i.i, %len
  br i1 %cmp.i.i119, label %do.body14.preheader, label %if.then12, !prof !130

do.body14.preheader:                              ; preds = %copy_from_iter.exit.i.i
  %remote_miu15 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 12
  %remote_miu18 = getelementptr inbounds %struct.nfc_llcp_local, ptr %2, i32 0, i32 25
  %dev = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 1
  %conv3.i = zext i8 %dsap to i32
  %conv4.i = zext i8 %ssap to i32
  %shl.i = shl i8 %dsap, 2
  %or11.i = or i8 %ssap, -64
  %conv28.i = zext i8 %shl.i to i32
  %conv30.i = zext i8 %or11.i to i32
  %tx_queue = getelementptr inbounds %struct.nfc_llcp_local, ptr %2, i32 0, i32 5
  br label %do.body14

if.then12:                                        ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

do.body14:                                        ; preds = %if.end72.do.body14_crit_edge, %do.body14.preheader
  %msg_ptr.0 = phi ptr [ %add.ptr, %if.end72.do.body14_crit_edge ], [ %call9.i, %do.body14.preheader ]
  %remaining_len.0 = phi i32 [ %sub73, %if.end72.do.body14_crit_edge ], [ %len, %do.body14.preheader ]
  %3 = ptrtoint ptr %remote_miu15 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %remote_miu15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2175, i16 %4)
  %cmp16 = icmp ugt i16 %4, 2175
  br i1 %cmp16, label %cond.true, label %do.body14.cond.end_crit_edge

do.body14.cond.end_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %remote_miu18 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %remote_miu18, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.body14.cond.end_crit_edge
  %cond.in = phi i16 [ %6, %cond.true ], [ %4, %do.body14.cond.end_crit_edge ]
  %conv23 = zext i16 %cond.in to i32
  %7 = call i32 @llvm.umin.i32(i32 %remaining_len.0, i32 %conv23)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_send_ui_frame.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_ui_frame, %if.then43)) #7
          to label %do.end46 [label %if.then43], !srcloc !129

if.then43:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_send_ui_frame.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %7, i32 noundef %remaining_len.0) #7
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %cond.end
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %add = add nuw nsw i32 %7, 2
  %call47 = call ptr @nfc_alloc_send_skb(ptr noundef %9, ptr noundef %sock, i32 noundef 0, i32 noundef %add, ptr noundef nonnull %err) #7
  %cmp48 = icmp eq ptr %call47, null
  br i1 %cmp48, label %do.end53, label %if.end60

do.end53:                                         ; preds = %do.end46
  %10 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err, align 4
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.39, i32 noundef %11) #12
  %sub = sub i32 %len, %remaining_len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp56 = icmp eq i32 %sub, 0
  br i1 %cmp56, label %if.then58, label %do.end53.do.end77_crit_edge

do.end53.do.end77_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77

if.then58:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err, align 4
  br label %do.end77

if.end60:                                         ; preds = %do.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_add_header.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_ui_frame, %if.then.i121)) #7
          to label %do.end.i [label %if.then.i121], !srcloc !129

if.then.i121:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_add_header.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef 3, i32 noundef %conv3.i, i32 noundef %conv4.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i121, %if.end60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_add_header.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_ui_frame, %if.then26.i)) #7
          to label %llcp_add_header.exit [label %if.then26.i], !srcloc !129

if.then26.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_add_header.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.48, i32 noundef %conv28.i, i32 noundef %conv30.i) #7
  br label %llcp_add_header.exit

llcp_add_header.exit:                             ; preds = %if.then26.i, %do.end.i
  %call.i.i = call ptr @skb_put(ptr noundef nonnull %call47, i32 noundef 2) #7
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %shl.i, ptr %call.i.i, align 1
  %header.sroa.6.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %15 = ptrtoint ptr %header.sroa.6.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or11.i, ptr %header.sroa.6.0.call.i.sroa_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp62.not = icmp eq i32 %7, 0
  br i1 %cmp62.not, label %llcp_add_header.exit.if.end72_crit_edge, label %if.then70, !prof !132

llcp_add_header.exit.if.end72_crit_edge:          ; preds = %llcp_add_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then70:                                        ; preds = %llcp_add_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call ptr @skb_put(ptr noundef nonnull %call47, i32 noundef %7) #7
  %16 = call ptr @memcpy(ptr %call.i, ptr %msg_ptr.0, i32 %7)
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %llcp_add_header.exit.if.end72_crit_edge
  call void @skb_queue_tail(ptr noundef %tx_queue, ptr noundef nonnull %call47) #7
  %sub73 = sub i32 %remaining_len.0, %7
  %add.ptr = getelementptr i8, ptr %msg_ptr.0, i32 %7
  %cmp75.not = icmp eq i32 %sub73, 0
  br i1 %cmp75.not, label %if.end72.do.end77_crit_edge, label %if.end72.do.body14_crit_edge

if.end72.do.body14_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

if.end72.do.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77

do.end77:                                         ; preds = %if.end72.do.end77_crit_edge, %if.then58, %do.end53.do.end77_crit_edge
  %len.addr.0 = phi i32 [ %13, %if.then58 ], [ %sub, %do.end53.do.end77_crit_edge ], [ %len, %if.end72.do.end77_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %if.then12, %if.end8.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then12 ], [ %len.addr.0, %do.end77 ], [ -19, %do.end.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_alloc_send_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_rr(ptr noundef %sock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_send_rr.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_send_rr, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %recv_n = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 15
  %0 = ptrtoint ptr %recv_n to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %recv_n, align 2
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_send_rr.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %local3 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 2
  %2 = ptrtoint ptr %local3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local3, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call fastcc ptr @llcp_allocate_pdu(ptr noundef %sock, i8 noundef zeroext 13, i16 noundef zeroext 1)
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call ptr @skb_put(ptr noundef nonnull %call7, i32 noundef 1) #7
  %recv_n13 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 15
  %4 = ptrtoint ptr %recv_n13 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %recv_n13, align 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %arrayidx, align 1
  %tx_queue = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 5
  tail call void @skb_queue_head(ptr noundef %tx_queue, ptr noundef nonnull %call7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -19, %do.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !92, !93, !94, !96, !97, !98, !99, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/nfc/llcp_commands.c", i32 83, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nfc_llcp_build_tlv.__UNIQUE_ID_ddebug457, !1, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/nfc/llcp_commands.c", i32 138, i32 2}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nfc_llcp_build_sdreq_tlv.__UNIQUE_ID_ddebug458, !8, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../net/nfc/llcp_commands.c", i32 141, i32 6}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/nfc/llcp_commands.c", i32 198, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nfc_llcp_parse_gb_tlv.__UNIQUE_ID_ddebug459, !15, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!18 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/nfc/llcp_commands.c", i32 207, i32 3}
!21 = !{ptr @nfc_llcp_parse_gb_tlv.__UNIQUE_ID_ddebug460, !20, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!22 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/nfc/llcp_commands.c", i32 226, i32 4}
!25 = !{ptr @nfc_llcp_parse_gb_tlv._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @nfc_llcp_parse_gb_tlv._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/nfc/llcp_commands.c", i32 234, i32 2}
!29 = !{ptr @nfc_llcp_parse_gb_tlv.__UNIQUE_ID_ddebug461, !28, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!30 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/nfc/llcp_commands.c", i32 248, i32 2}
!33 = !{ptr @nfc_llcp_parse_connection_tlv.__UNIQUE_ID_ddebug462, !32, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!34 = !{ptr @nfc_llcp_parse_connection_tlv.__UNIQUE_ID_ddebug463, !35, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!35 = !{!"../net/nfc/llcp_commands.c", i32 257, i32 3}
!36 = !{ptr @nfc_llcp_parse_connection_tlv._entry, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../net/nfc/llcp_commands.c", i32 269, i32 4}
!38 = !{ptr @nfc_llcp_parse_connection_tlv._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/nfc/llcp_commands.c", i32 277, i32 2}
!41 = !{ptr @nfc_llcp_parse_connection_tlv.__UNIQUE_ID_ddebug464, !40, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!42 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/nfc/llcp_commands.c", i32 434, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @nfc_llcp_send_connect.__UNIQUE_ID_ddebug467, !44, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!47 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/nfc/llcp_commands.c", i32 452, i32 3}
!50 = !{ptr @nfc_llcp_send_connect._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @nfc_llcp_send_connect._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/nfc/llcp_commands.c", i32 511, i32 3}
!54 = !{ptr @nfc_llcp_send_cc._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @nfc_llcp_send_cc._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/nfc/llcp_commands.c", i32 590, i32 3}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @nfc_llcp_send_snl_sdreq.__UNIQUE_ID_ddebug468, !57, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!60 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/nfc/llcp_commands.c", i32 612, i32 2}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @nfc_llcp_send_dm.__UNIQUE_ID_ddebug469, !62, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!65 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/nfc/llcp_commands.c", i32 649, i32 2}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @nfc_llcp_send_i_frame.__UNIQUE_ID_ddebug470, !67, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!70 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/nfc/llcp_commands.c", i32 659, i32 3}
!73 = !{ptr @nfc_llcp_send_i_frame._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @nfc_llcp_send_i_frame._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/nfc/llcp_commands.c", i32 667, i32 3}
!77 = !{ptr @nfc_llcp_send_i_frame._entry.34, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @nfc_llcp_send_i_frame._entry_ptr.36, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/nfc/llcp_commands.c", i32 690, i32 3}
!81 = !{ptr @nfc_llcp_send_i_frame.__UNIQUE_ID_ddebug473, !80, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!82 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/nfc/llcp_commands.c", i32 732, i32 2}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @nfc_llcp_send_ui_frame.__UNIQUE_ID_ddebug474, !84, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!87 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @nfc_llcp_send_ui_frame.__UNIQUE_ID_ddebug477, !89, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!89 = !{!"../net/nfc/llcp_commands.c", i32 756, i32 3}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/nfc/llcp_commands.c", i32 762, i32 4}
!92 = !{ptr @nfc_llcp_send_ui_frame._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @nfc_llcp_send_ui_frame._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/nfc/llcp_commands.c", i32 791, i32 2}
!96 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @nfc_llcp_send_rr.__UNIQUE_ID_ddebug478, !95, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!98 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @llcp_tlv_length, !100, !"llcp_tlv_length", i1 false, i1 false}
!100 = !{!"../net/nfc/llcp_commands.c", i32 18, i32 17}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/nfc/llcp_commands.c", i32 325, i32 3}
!103 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @llcp_allocate_pdu._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @llcp_allocate_pdu._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/nfc/llcp_commands.c", i32 288, i32 2}
!108 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @llcp_add_header.__UNIQUE_ID_ddebug465, !107, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!110 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/nfc/llcp_commands.c", i32 293, i32 2}
!113 = !{ptr @llcp_add_header.__UNIQUE_ID_ddebug466, !112, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!114 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!117 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 2148706186, i64 2148706191, i64 2148706204, i64 2148706248, i64 2148706282, i64 2148706303}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{!"auto-init"}
!132 = !{!"branch_weights", i32 1, i32 2000}
