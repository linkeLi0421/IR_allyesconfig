; ModuleID = '/llk/IR_all_yes/net/ipv6/tunnel6.c_pt.bc'
source_filename = "../net/ipv6/tunnel6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xfrm6_tunnel_register\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm6_tunnel_register\09\09\09\09"
module asm "\09.long\09__crc_xfrm6_tunnel_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_tunnel_register:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_tunnel_register\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_tunnel_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xfrm6_tunnel_deregister\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm6_tunnel_deregister\09\09\09\09"
module asm "\09.long\09__crc_xfrm6_tunnel_deregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_tunnel_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_tunnel_deregister\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_tunnel_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xfrm_input_afinfo = type { i8, i8, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.xfrm6_tunnel = type { ptr, ptr, ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.130, %union.anon.131, [48 x i8], %union.anon.132, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.134, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.130 = type { ptr }
%union.anon.131 = type { i64 }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { i32, ptr }
%union.anon.134 = type { %struct.anon.135 }
%struct.anon.135 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.136, i32, i32, i32, i16, i16, %union.anon.138, i32, %union.anon.139, %union.anon.140, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.136 = type { i32 }
%union.anon.138 = type { i32 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }

@tunnel6_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tunnel6_mutex, i64 52), ptr getelementptr (i8, ptr @tunnel6_mutex, i64 52) }, ptr @tunnel6_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@tunnel6_handlers = internal global ptr null, section ".data..read_mostly", align 4
@tunnel46_handlers = internal global ptr null, section ".data..read_mostly", align 4
@tunnelmpls6_handlers = internal global ptr null, section ".data..read_mostly", align 4
@xfrm6_tunnel_register.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/ipv6/tunnel6.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab_xfrm6_tunnel_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_tunnel_register = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_tunnel_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_tunnel_register to i32), ptr @__kstrtab_xfrm6_tunnel_register, ptr @__kstrtabns_xfrm6_tunnel_register }, section "___ksymtab+xfrm6_tunnel_register", align 4
@xfrm6_tunnel_deregister.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_xfrm6_tunnel_deregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_tunnel_deregister = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_tunnel_deregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_tunnel_deregister to i32), ptr @__kstrtab_xfrm6_tunnel_deregister, ptr @__kstrtabns_xfrm6_tunnel_deregister }, section "___ksymtab+xfrm6_tunnel_deregister", align 4
@tunnel6_input_afinfo = internal constant { %struct.xfrm_input_afinfo, [24 x i8] } { %struct.xfrm_input_afinfo { i8 10, i8 1, ptr @tunnel6_rcv_cb }, [24 x i8] zeroinitializer }, align 32
@tunnel6_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013IPv6: %s: can't remove input afinfo\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tunnel6_fini\00", [19 x i8] zeroinitializer }, align 32
@tunnel6_fini._entry_ptr = internal global ptr @tunnel6_fini._entry, section ".printk_index", align 4
@tunnel46_protocol = internal constant { %struct.inet6_protocol, [44 x i8] } { %struct.inet6_protocol { ptr null, ptr null, ptr @tunnel46_rcv, ptr @tunnel46_err, i32 3 }, [44 x i8] zeroinitializer }, align 32
@tunnel6_fini._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013IPv6: %s: can't remove protocol\0A\00", [61 x i8] zeroinitializer }, align 32
@tunnel6_fini._entry_ptr.6 = internal global ptr @tunnel6_fini._entry.4, section ".printk_index", align 4
@tunnel6_protocol = internal constant { %struct.inet6_protocol, [44 x i8] } { %struct.inet6_protocol { ptr null, ptr null, ptr @tunnel6_rcv, ptr @tunnel6_err, i32 3 }, [44 x i8] zeroinitializer }, align 32
@tunnel6_fini._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tunnel6_fini._entry_ptr.8 = internal global ptr @tunnel6_fini._entry.7, section ".printk_index", align 4
@tunnelmpls6_protocol = internal constant { %struct.inet6_protocol, [44 x i8] } { %struct.inet6_protocol { ptr null, ptr null, ptr @tunnelmpls6_rcv, ptr @tunnelmpls6_err, i32 3 }, [44 x i8] zeroinitializer }, align 32
@tunnel6_fini._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tunnel6_fini._entry_ptr.10 = internal global ptr @tunnel6_fini._entry.9, section ".printk_index", align 4
@__initcall__kmod_tunnel6__539_303_tunnel6_init6 = internal global ptr @tunnel6_init, section ".initcall6.init", align 4
@__exitcall_tunnel6_fini = internal global ptr @tunnel6_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file540 = internal constant [30 x i8] c"tunnel6.file=net/ipv6/tunnel6\00", section ".modinfo", align 1
@__UNIQUE_ID_license541 = internal constant [20 x i8] c"tunnel6.license=GPL\00", section ".modinfo", align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tunnel6_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tunnel6_mutex\00", [18 x i8] zeroinitializer }, align 32
@tunnel6_rcv_cb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@tunnel6_rcv_cb.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnel46_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnel46_rcv.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnel46_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnel46_err.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnel6_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnel6_rcv.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnel6_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnel6_err.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnelmpls6_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnelmpls6_rcv.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnelmpls6_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnelmpls6_err.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnel6_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013IPv6: %s: can't add protocol\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tunnel6_init\00", [19 x i8] zeroinitializer }, align 32
@tunnel6_init._entry_ptr = internal global ptr @tunnel6_init._entry, section ".printk_index", align 4
@tunnel6_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tunnel6_init._entry_ptr.24 = internal global ptr @tunnel6_init._entry.23, section ".printk_index", align 4
@tunnel6_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tunnel6_init._entry_ptr.26 = internal global ptr @tunnel6_init._entry.25, section ".printk_index", align 4
@tunnel6_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.22, ptr @.str, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013IPv6: %s: can't add input afinfo\0A\00", [60 x i8] zeroinitializer }, align 32
@tunnel6_init._entry_ptr.29 = internal global ptr @tunnel6_init._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 10, i64 28]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 10, i64 28]
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"tunnel6_mutex\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 55, i32 14 }
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"tunnel6_input_afinfo\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 178, i32 39 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 292, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"tunnel46_protocol\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 245, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 295, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"tunnel6_protocol\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 239, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 297, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [21 x i8] c"tunnelmpls6_protocol\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 251, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 300, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 25, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 167, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 260, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 264, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 270, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [22 x i8] c"../net/ipv6/tunnel6.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 277, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_file540, ptr @__UNIQUE_ID_license541, ptr @__exitcall_tunnel6_fini, ptr @__initcall__kmod_tunnel6__539_303_tunnel6_init6, ptr @__ksymtab_xfrm6_tunnel_deregister, ptr @__ksymtab_xfrm6_tunnel_register, ptr @tunnel6_fini, ptr @tunnel6_fini._entry, ptr @tunnel6_fini._entry.4, ptr @tunnel6_fini._entry.7, ptr @tunnel6_fini._entry.9, ptr @tunnel6_fini._entry_ptr, ptr @tunnel6_fini._entry_ptr.10, ptr @tunnel6_fini._entry_ptr.6, ptr @tunnel6_fini._entry_ptr.8, ptr @tunnel6_init._entry, ptr @tunnel6_init._entry.23, ptr @tunnel6_init._entry.25, ptr @tunnel6_init._entry.27, ptr @tunnel6_init._entry_ptr, ptr @tunnel6_init._entry_ptr.24, ptr @tunnel6_init._entry_ptr.26, ptr @tunnel6_init._entry_ptr.29, ptr @tunnel6_mutex, ptr @.str, ptr @.str.1, ptr @tunnel6_input_afinfo, ptr @.str.2, ptr @.str.3, ptr @tunnel46_protocol, ptr @.str.5, ptr @tunnel6_protocol, ptr @tunnelmpls6_protocol, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.21, ptr @.str.22, ptr @.str.28], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel6_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel6_input_afinfo to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel6_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel46_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel6_fini._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel6_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel6_fini._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnelmpls6_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel6_fini._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel6_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel6_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel6_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel6_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm6_tunnel_register(ptr noundef %handler, i16 noundef zeroext %family) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priority1 = getelementptr inbounds %struct.xfrm6_tunnel, ptr %handler, i32 0, i32 4
  %0 = ptrtoint ptr %priority1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priority1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @tunnel6_mutex, i32 noundef 0) #5
  %2 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %family, label %entry.err_crit_edge [
    i16 10, label %entry.for.cond.preheader_crit_edge
    i16 2, label %sw.bb2
    i16 28, label %sw.bb3
  ]

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.bb3, %sw.bb2, %entry.for.cond.preheader_crit_edge
  %pprev.1.ph = phi ptr [ @tunnel6_handlers, %entry.for.cond.preheader_crit_edge ], [ @tunnel46_handlers, %sw.bb2 ], [ @tunnelmpls6_handlers, %sw.bb3 ]
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %for.cond.preheader
  %pprev.1 = phi ptr [ %next, %for.inc ], [ %pprev.1.ph, %for.cond.preheader ]
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @tunnel6_mutex, i32 0, i32 5), i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.do.end_crit_edge

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true:                                    ; preds = %for.cond
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b67 = load i1, ptr @xfrm6_tunnel_register.__warned, align 1
  br i1 %.b67, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @xfrm6_tunnel_register.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @.str.1) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.cond.do.end_crit_edge
  %3 = ptrtoint ptr %pprev.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pprev.1, align 4
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %do.end.for.end_crit_edge, label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %do.end
  %priority9 = getelementptr inbounds %struct.xfrm6_tunnel, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %priority9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %priority9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp10 = icmp sgt i32 %6, %1
  br i1 %cmp10, label %for.body.for.end_crit_edge, label %if.end13

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end13:                                         ; preds = %for.body
  %cmp15 = icmp eq i32 %6, %1
  br i1 %cmp15, label %if.end13.err_crit_edge, label %for.inc

if.end13.err_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %next = getelementptr inbounds %struct.xfrm6_tunnel, ptr %4, i32 0, i32 3
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %next19 = getelementptr inbounds %struct.xfrm6_tunnel, ptr %handler, i32 0, i32 3
  %7 = ptrtoint ptr %next19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %next19, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !96
  %8 = ptrtoint ptr %pprev.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %handler, ptr %pprev.1, align 4
  br label %err

err:                                              ; preds = %for.end, %if.end13.err_crit_edge, %entry.err_crit_edge
  %ret.0 = phi i32 [ -17, %entry.err_crit_edge ], [ 0, %for.end ], [ -17, %if.end13.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @tunnel6_mutex) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm6_tunnel_deregister(ptr noundef readonly %handler, i16 noundef zeroext %family) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @tunnel6_mutex, i32 noundef 0) #5
  %0 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %family, label %entry.err_crit_edge [
    i16 10, label %entry.for.cond.preheader_crit_edge
    i16 2, label %sw.bb1
    i16 28, label %sw.bb2
  ]

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.bb2, %sw.bb1, %entry.for.cond.preheader_crit_edge
  %pprev.1.ph = phi ptr [ @tunnel6_handlers, %entry.for.cond.preheader_crit_edge ], [ @tunnel46_handlers, %sw.bb1 ], [ @tunnelmpls6_handlers, %sw.bb2 ]
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %pprev.1 = phi ptr [ %next12, %for.body.for.cond_crit_edge ], [ %pprev.1.ph, %for.cond.preheader ]
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @tunnel6_mutex, i32 0, i32 5), i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.do.end_crit_edge

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true:                                    ; preds = %for.cond
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @xfrm6_tunnel_deregister.__warned, align 1
  br i1 %.b16, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @xfrm6_tunnel_deregister.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 99, ptr noundef nonnull @.str.1) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.cond.do.end_crit_edge
  %1 = ptrtoint ptr %pprev.1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pprev.1, align 4
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %do.end.err_crit_edge, label %for.body

do.end.err_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.body:                                         ; preds = %do.end
  %cmp8 = icmp eq ptr %2, %handler
  %next12 = getelementptr inbounds %struct.xfrm6_tunnel, ptr %2, i32 0, i32 3
  br i1 %cmp8, label %if.then10, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %next = getelementptr inbounds %struct.xfrm6_tunnel, ptr %handler, i32 0, i32 3
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next, align 4
  %5 = ptrtoint ptr %pprev.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %pprev.1, align 4
  br label %err

err:                                              ; preds = %if.then10, %do.end.err_crit_edge, %entry.err_crit_edge
  %ret.0 = phi i32 [ -2, %entry.err_crit_edge ], [ 0, %if.then10 ], [ -2, %do.end.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @tunnel6_mutex) #5
  tail call void @synchronize_net() #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tunnel6_fini() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @xfrm_input_unregister_afinfo(ptr noundef nonnull @tunnel6_input_afinfo) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @tunnel46_protocol, i8 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %do.end6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #8
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @tunnel6_protocol, i8 noundef zeroext 41) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.if.end17_crit_edge, label %do.end14

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #8
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.end9.if.end17_crit_edge
  %call20 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @tunnelmpls6_protocol, i8 noundef zeroext -119) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end17.if.end27_crit_edge, label %do.end24

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #8
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.end17.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input_unregister_afinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tunnel6_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet6_add_protocol(ptr noundef nonnull @tunnel6_protocol, i8 noundef zeroext 41) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #8
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @tunnel46_protocol, i8 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #8
  %call9 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @tunnel6_protocol, i8 noundef zeroext 41) #5
  br label %return

if.end10:                                         ; preds = %if.end
  %call13 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @tunnelmpls6_protocol, i8 noundef zeroext -119) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end22, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #8
  %call20 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @tunnel6_protocol, i8 noundef zeroext 41) #5
  %call21 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @tunnel46_protocol, i8 noundef zeroext 4) #5
  br label %return

if.end22:                                         ; preds = %if.end10
  %call23 = tail call i32 @xfrm_input_register_afinfo(ptr noundef nonnull @tunnel6_input_afinfo) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.return_crit_edge, label %do.end27

if.end22.return_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.22) #8
  %call30 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @tunnel6_protocol, i8 noundef zeroext 41) #5
  %call31 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @tunnel46_protocol, i8 noundef zeroext 4) #5
  %call35 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @tunnelmpls6_protocol, i8 noundef zeroext -119) #5
  br label %return

return:                                           ; preds = %do.end27, %if.end22.return_crit_edge, %do.end17, %do.end6, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ -11, %do.end6 ], [ -11, %do.end17 ], [ -11, %do.end27 ], [ 0, %if.end22.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tunnel6_rcv_cb(ptr noundef %skb, i8 noundef zeroext %proto, i32 noundef %err) #0 align 64 {
entry:
  %head = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %head)
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %proto)
  %cmp = icmp eq i8 %proto, 41
  %tunnel6_handlers.val = load ptr, ptr @tunnel6_handlers, align 4
  %tunnel46_handlers.val = load ptr, ptr @tunnel46_handlers, align 4
  %cond = select i1 %cmp, ptr %tunnel6_handlers.val, ptr %tunnel46_handlers.val
  %0 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cond, ptr %head, align 4
  %head.0.head.0.head.0. = load volatile ptr, ptr %head, align 4
  %call = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b46 = load i1, ptr @tunnel6_rcv_cb.__warned, align 1
  br i1 %.b46, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @tunnel6_rcv_cb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 167, ptr noundef nonnull @.str.13) #5
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %cmp10.not47 = icmp eq ptr %head.0.head.0.head.0., null
  br i1 %cmp10.not47, label %do.end8.cleanup_crit_edge, label %do.end8.for.body_crit_edge

do.end8.for.body_crit_edge:                       ; preds = %do.end8
  br label %for.body

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %do.end36.for.body_crit_edge, %do.end8.for.body_crit_edge
  %handler.048 = phi ptr [ %4, %do.end36.for.body_crit_edge ], [ %head.0.head.0.head.0., %do.end8.for.body_crit_edge ]
  %cb_handler = getelementptr inbounds %struct.xfrm6_tunnel, ptr %handler.048, i32 0, i32 1
  %1 = ptrtoint ptr %cb_handler to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cb_handler, align 4
  %tobool12.not = icmp eq ptr %2, null
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %if.then13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then13:                                        ; preds = %for.body
  %call15 = tail call i32 %2(ptr noundef %skb, i32 noundef %err) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %if.then13.cleanup_crit_edge, label %if.then13.for.inc_crit_edge

if.then13.for.inc_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %if.then13.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.xfrm6_tunnel, ptr %handler.048, i32 0, i32 3
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %next, align 4
  %call26 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %for.inc.do.end36_crit_edge

for.inc.do.end36_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

land.lhs.true28:                                  ; preds = %for.inc
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true28.do.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %.b4445 = load i1, ptr @tunnel6_rcv_cb.__warned.14, align 1
  br i1 %.b4445, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @tunnel6_rcv_cb.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 167, ptr noundef nonnull @.str.13) #5
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true28.do.end36_crit_edge, %for.inc.do.end36_crit_edge
  %cmp10.not = icmp eq ptr %4, null
  br i1 %cmp10.not, label %do.end36.cleanup_crit_edge, label %do.end36.for.body_crit_edge

do.end36.for.body_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %do.end36.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end8.cleanup_crit_edge ], [ 0, %do.end36.cleanup_crit_edge ], [ %call15, %if.then13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tunnel46_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 20
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !97

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp3.i = icmp ult i32 %1, 20
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !97

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 20, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #5
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %drop

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = load volatile ptr, ptr @tunnel46_handlers, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end10_crit_edge

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true5

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b41 = load i1, ptr @tunnel46_rcv.__warned, align 1
  br i1 %.b41, label %land.lhs.true5.do.end10_crit_edge, label %if.then7

land.lhs.true5.do.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @tunnel46_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 192, ptr noundef nonnull @.str.13) #5
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %land.lhs.true5.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %if.end.do.end10_crit_edge
  %cmp.not45 = icmp eq ptr %4, null
  br i1 %cmp.not45, label %do.end10.for.end_crit_edge, label %do.end10.for.body_crit_edge

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  br label %for.body

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %do.end32.for.body_crit_edge, %do.end10.for.body_crit_edge
  %handler.046 = phi ptr [ %8, %do.end32.for.body_crit_edge ], [ %4, %do.end10.for.body_crit_edge ]
  %5 = ptrtoint ptr %handler.046 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %handler.046, align 4
  %call13 = tail call i32 %6(ptr noundef %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.xfrm6_tunnel, ptr %handler.046, i32 0, i32 3
  %7 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %next, align 4
  %call22 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %for.inc.do.end32_crit_edge

for.inc.do.end32_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

land.lhs.true24:                                  ; preds = %for.inc
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true24.do.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %.b3940 = load i1, ptr @tunnel46_rcv.__warned.15, align 1
  br i1 %.b3940, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @tunnel46_rcv.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 192, ptr noundef nonnull @.str.13) #5
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true24.do.end32_crit_edge, %for.inc.do.end32_crit_edge
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %do.end32.for.end_crit_edge, label %do.end32.for.body_crit_edge

do.end32.for.body_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end32.for.end_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %do.end32.for.end_crit_edge, %do.end10.for.end_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 1, i8 noundef zeroext 4, i32 noundef 0, ptr noundef null, ptr noundef %cb.i) #5
  br label %drop

drop:                                             ; preds = %for.end, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %drop, %for.body.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tunnel46_err(ptr noundef %skb, ptr noundef %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @tunnel46_handlers, align 4
  %call = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @tunnel46_err.__warned, align 1
  br i1 %.b34, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @tunnel46_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 220, ptr noundef nonnull @.str.13) #5
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %cmp.not35 = icmp eq ptr %0, null
  br i1 %cmp.not35, label %do.end7.cleanup_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %do.end28.for.body_crit_edge, %do.end7.for.body_crit_edge
  %handler.036 = phi ptr [ %4, %do.end28.for.body_crit_edge ], [ %0, %do.end7.for.body_crit_edge ]
  %err_handler = getelementptr inbounds %struct.xfrm6_tunnel, ptr %handler.036, i32 0, i32 2
  %1 = ptrtoint ptr %err_handler to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %err_handler, align 4
  %call9 = tail call i32 %2(ptr noundef %skb, ptr noundef %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.xfrm6_tunnel, ptr %handler.036, i32 0, i32 3
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %next, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %for.inc.do.end28_crit_edge

for.inc.do.end28_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

land.lhs.true20:                                  ; preds = %for.inc
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b3233 = load i1, ptr @tunnel46_err.__warned.16, align 1
  br i1 %.b3233, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @tunnel46_err.__warned.16, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 220, ptr noundef nonnull @.str.13) #5
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %for.inc.do.end28_crit_edge
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %do.end28.cleanup_crit_edge, label %do.end28.for.body_crit_edge

do.end28.for.body_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %do.end28.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end7.cleanup_crit_edge ], [ -2, %do.end28.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tunnel6_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 40
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !97

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %1)
  %cmp3.i = icmp ult i32 %1, 40
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !97

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 40, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #5
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %drop

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = load volatile ptr, ptr @tunnel6_handlers, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end10_crit_edge

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true5

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b41 = load i1, ptr @tunnel6_rcv.__warned, align 1
  br i1 %.b41, label %land.lhs.true5.do.end10_crit_edge, label %if.then7

land.lhs.true5.do.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @tunnel6_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 147, ptr noundef nonnull @.str.13) #5
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %land.lhs.true5.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %if.end.do.end10_crit_edge
  %cmp.not45 = icmp eq ptr %4, null
  br i1 %cmp.not45, label %do.end10.for.end_crit_edge, label %do.end10.for.body_crit_edge

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  br label %for.body

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %do.end32.for.body_crit_edge, %do.end10.for.body_crit_edge
  %handler.046 = phi ptr [ %8, %do.end32.for.body_crit_edge ], [ %4, %do.end10.for.body_crit_edge ]
  %5 = ptrtoint ptr %handler.046 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %handler.046, align 4
  %call13 = tail call i32 %6(ptr noundef %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.xfrm6_tunnel, ptr %handler.046, i32 0, i32 3
  %7 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %next, align 4
  %call22 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %for.inc.do.end32_crit_edge

for.inc.do.end32_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

land.lhs.true24:                                  ; preds = %for.inc
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true24.do.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %.b3940 = load i1, ptr @tunnel6_rcv.__warned.17, align 1
  br i1 %.b3940, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @tunnel6_rcv.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 147, ptr noundef nonnull @.str.13) #5
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true24.do.end32_crit_edge, %for.inc.do.end32_crit_edge
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %do.end32.for.end_crit_edge, label %do.end32.for.body_crit_edge

do.end32.for.body_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end32.for.end_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %do.end32.for.end_crit_edge, %do.end10.for.end_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 1, i8 noundef zeroext 4, i32 noundef 0, ptr noundef null, ptr noundef %cb.i) #5
  br label %drop

drop:                                             ; preds = %for.end, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %drop, %for.body.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tunnel6_err(ptr noundef %skb, ptr noundef %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @tunnel6_handlers, align 4
  %call = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @tunnel6_err.__warned, align 1
  br i1 %.b34, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @tunnel6_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 208, ptr noundef nonnull @.str.13) #5
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %cmp.not35 = icmp eq ptr %0, null
  br i1 %cmp.not35, label %do.end7.cleanup_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %do.end28.for.body_crit_edge, %do.end7.for.body_crit_edge
  %handler.036 = phi ptr [ %4, %do.end28.for.body_crit_edge ], [ %0, %do.end7.for.body_crit_edge ]
  %err_handler = getelementptr inbounds %struct.xfrm6_tunnel, ptr %handler.036, i32 0, i32 2
  %1 = ptrtoint ptr %err_handler to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %err_handler, align 4
  %call9 = tail call i32 %2(ptr noundef %skb, ptr noundef %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.xfrm6_tunnel, ptr %handler.036, i32 0, i32 3
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %next, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %for.inc.do.end28_crit_edge

for.inc.do.end28_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

land.lhs.true20:                                  ; preds = %for.inc
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b3233 = load i1, ptr @tunnel6_err.__warned.18, align 1
  br i1 %.b3233, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @tunnel6_err.__warned.18, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 208, ptr noundef nonnull @.str.13) #5
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %for.inc.do.end28_crit_edge
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %do.end28.cleanup_crit_edge, label %do.end28.for.body_crit_edge

do.end28.for.body_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %do.end28.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end7.cleanup_crit_edge ], [ -2, %do.end28.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tunnelmpls6_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 40
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !97

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %1)
  %cmp3.i = icmp ult i32 %1, 40
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !97

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 40, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #5
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %drop

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = load volatile ptr, ptr @tunnelmpls6_handlers, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end10_crit_edge

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true5

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b41 = load i1, ptr @tunnelmpls6_rcv.__warned, align 1
  br i1 %.b41, label %land.lhs.true5.do.end10_crit_edge, label %if.then7

land.lhs.true5.do.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @tunnelmpls6_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 129, ptr noundef nonnull @.str.13) #5
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %land.lhs.true5.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %if.end.do.end10_crit_edge
  %cmp.not45 = icmp eq ptr %4, null
  br i1 %cmp.not45, label %do.end10.for.end_crit_edge, label %do.end10.for.body_crit_edge

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  br label %for.body

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %do.end32.for.body_crit_edge, %do.end10.for.body_crit_edge
  %handler.046 = phi ptr [ %8, %do.end32.for.body_crit_edge ], [ %4, %do.end10.for.body_crit_edge ]
  %5 = ptrtoint ptr %handler.046 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %handler.046, align 4
  %call13 = tail call i32 %6(ptr noundef %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.xfrm6_tunnel, ptr %handler.046, i32 0, i32 3
  %7 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %next, align 4
  %call22 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %for.inc.do.end32_crit_edge

for.inc.do.end32_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

land.lhs.true24:                                  ; preds = %for.inc
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true24.do.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %.b3940 = load i1, ptr @tunnelmpls6_rcv.__warned.19, align 1
  br i1 %.b3940, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @tunnelmpls6_rcv.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 129, ptr noundef nonnull @.str.13) #5
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true24.do.end32_crit_edge, %for.inc.do.end32_crit_edge
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %do.end32.for.end_crit_edge, label %do.end32.for.body_crit_edge

do.end32.for.body_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end32.for.end_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %do.end32.for.end_crit_edge, %do.end10.for.end_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 1, i8 noundef zeroext 4, i32 noundef 0, ptr noundef null, ptr noundef %cb.i) #5
  br label %drop

drop:                                             ; preds = %for.end, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %drop, %for.body.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tunnelmpls6_err(ptr noundef %skb, ptr noundef %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @tunnelmpls6_handlers, align 4
  %call = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @tunnelmpls6_err.__warned, align 1
  br i1 %.b34, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @tunnelmpls6_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 232, ptr noundef nonnull @.str.13) #5
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %cmp.not35 = icmp eq ptr %0, null
  br i1 %cmp.not35, label %do.end7.cleanup_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %do.end28.for.body_crit_edge, %do.end7.for.body_crit_edge
  %handler.036 = phi ptr [ %4, %do.end28.for.body_crit_edge ], [ %0, %do.end7.for.body_crit_edge ]
  %err_handler = getelementptr inbounds %struct.xfrm6_tunnel, ptr %handler.036, i32 0, i32 2
  %1 = ptrtoint ptr %err_handler to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %err_handler, align 4
  %call9 = tail call i32 %2(ptr noundef %skb, ptr noundef %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.xfrm6_tunnel, ptr %handler.036, i32 0, i32 3
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %next, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %for.inc.do.end28_crit_edge

for.inc.do.end28_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

land.lhs.true20:                                  ; preds = %for.inc
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b3233 = load i1, ptr @tunnelmpls6_err.__warned.20, align 1
  br i1 %.b3233, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @tunnelmpls6_err.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 232, ptr noundef nonnull @.str.13) #5
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %for.inc.do.end28_crit_edge
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %do.end28.cleanup_crit_edge, label %do.end28.for.body_crit_edge

do.end28.for.body_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %do.end28.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end7.cleanup_crit_edge ], [ -2, %do.end28.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input_register_afinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !27, !29, !31, !32, !34, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !52, !53, !55, !56, !58, !60, !61, !63, !64, !66, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !82, !83, !85, !86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/ipv6/tunnel6.c", i32 55, i32 14}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_xfrm6_tunnel_register, !5, !"__ksymtab_xfrm6_tunnel_register", i1 false, i1 false}
!5 = !{!"../net/ipv6/tunnel6.c", i32 74, i32 1}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/ipv6/tunnel6.c", i32 98, i32 14}
!8 = !{ptr @__ksymtab_xfrm6_tunnel_deregister, !9, !"__ksymtab_xfrm6_tunnel_deregister", i1 false, i1 false}
!9 = !{!"../net/ipv6/tunnel6.c", i32 115, i32 1}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ipv6/tunnel6.c", i32 292, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tunnel6_fini._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @tunnel6_fini._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv6/tunnel6.c", i32 295, i32 3}
!17 = !{ptr @tunnel6_fini._entry.4, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @tunnel6_fini._entry_ptr.6, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @tunnel6_fini._entry.7, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../net/ipv6/tunnel6.c", i32 297, i32 3}
!21 = !{ptr @tunnel6_fini._entry_ptr.8, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @tunnel6_fini._entry.9, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../net/ipv6/tunnel6.c", i32 300, i32 3}
!24 = !{ptr @tunnel6_fini._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__initcall__kmod_tunnel6__539_303_tunnel6_init6, !26, !"__initcall__kmod_tunnel6__539_303_tunnel6_init6", i1 false, i1 false}
!26 = !{!"../net/ipv6/tunnel6.c", i32 303, i32 1}
!27 = !{ptr @__exitcall_tunnel6_fini, !28, !"__exitcall_tunnel6_fini", i1 false, i1 false}
!28 = !{!"../net/ipv6/tunnel6.c", i32 304, i32 1}
!29 = !{ptr @__UNIQUE_ID_file540, !30, !"__UNIQUE_ID_file540", i1 false, i1 false}
!30 = !{!"../net/ipv6/tunnel6.c", i32 305, i32 1}
!31 = !{ptr @__UNIQUE_ID_license541, !30, !"__UNIQUE_ID_license541", i1 false, i1 false}
!32 = !{ptr @tunnel6_handlers, !33, !"tunnel6_handlers", i1 false, i1 false}
!33 = !{!"../net/ipv6/tunnel6.c", i32 22, i32 35}
!34 = !{ptr @tunnel46_handlers, !35, !"tunnel46_handlers", i1 false, i1 false}
!35 = !{!"../net/ipv6/tunnel6.c", i32 23, i32 35}
!36 = !{ptr @tunnelmpls6_handlers, !37, !"tunnelmpls6_handlers", i1 false, i1 false}
!37 = !{!"../net/ipv6/tunnel6.c", i32 24, i32 35}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ipv6/tunnel6.c", i32 25, i32 8}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @tunnel6_mutex, !39, !"tunnel6_mutex", i1 false, i1 false}
!42 = !{ptr @tunnel6_input_afinfo, !43, !"tunnel6_input_afinfo", i1 false, i1 false}
!43 = !{!"../net/ipv6/tunnel6.c", i32 178, i32 39}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../net/ipv6/tunnel6.c", i32 167, i32 2}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!48 = !{ptr @tunnel46_protocol, !49, !"tunnel46_protocol", i1 false, i1 false}
!49 = !{!"../net/ipv6/tunnel6.c", i32 245, i32 36}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/ipv6/tunnel6.c", i32 192, i32 2}
!52 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../net/ipv6/tunnel6.c", i32 220, i32 2}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = !{ptr @tunnel6_protocol, !57, !"tunnel6_protocol", i1 false, i1 false}
!57 = !{!"../net/ipv6/tunnel6.c", i32 239, i32 36}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../net/ipv6/tunnel6.c", i32 147, i32 2}
!60 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../net/ipv6/tunnel6.c", i32 208, i32 2}
!63 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!64 = !{ptr @tunnelmpls6_protocol, !65, !"tunnelmpls6_protocol", i1 false, i1 false}
!65 = !{!"../net/ipv6/tunnel6.c", i32 251, i32 36}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../net/ipv6/tunnel6.c", i32 129, i32 2}
!68 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../net/ipv6/tunnel6.c", i32 232, i32 2}
!71 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/ipv6/tunnel6.c", i32 260, i32 3}
!74 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @tunnel6_init._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @tunnel6_init._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @tunnel6_init._entry.23, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../net/ipv6/tunnel6.c", i32 264, i32 3}
!79 = !{ptr @tunnel6_init._entry_ptr.24, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @tunnel6_init._entry.25, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../net/ipv6/tunnel6.c", i32 270, i32 3}
!82 = !{ptr @tunnel6_init._entry_ptr.26, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/ipv6/tunnel6.c", i32 277, i32 3}
!85 = !{ptr @tunnel6_init._entry.27, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @tunnel6_init._entry_ptr.29, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 2157798137}
!97 = !{!"branch_weights", i32 1, i32 2000}
