; ModuleID = '/llk/IR_all_yes/net/ipv4/xfrm4_protocol.c_pt.bc'
source_filename = "../net/ipv4/xfrm4_protocol.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xfrm4_rcv_encap\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm4_rcv_encap\09\09\09\09"
module asm "\09.long\09__crc_xfrm4_rcv_encap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm4_rcv_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm4_rcv_encap\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm4_rcv_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xfrm4_protocol_register\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm4_protocol_register\09\09\09\09"
module asm "\09.long\09__crc_xfrm4_protocol_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm4_protocol_register:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm4_protocol_register\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm4_protocol_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xfrm4_protocol_deregister\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm4_protocol_deregister\09\09\09\09"
module asm "\09.long\09__crc_xfrm4_protocol_deregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm4_protocol_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm4_protocol_deregister\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm4_protocol_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xfrm4_protocol_init\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm4_protocol_init\09\09\09\09"
module asm "\09.long\09__crc_xfrm4_protocol_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm4_protocol_init:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm4_protocol_init\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm4_protocol_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xfrm_input_afinfo = type { i8, i8, ptr }
%struct.net_protocol = type { ptr, ptr, ptr, ptr, i8 }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.xfrm4_protocol = type { ptr, ptr, ptr, ptr, ptr, i32 }

@xfrm4_rcv_encap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/ipv4/xfrm4_protocol.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@xfrm4_rcv_encap.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_xfrm4_rcv_encap = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm4_rcv_encap = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm4_rcv_encap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm4_rcv_encap to i32), ptr @__kstrtab_xfrm4_rcv_encap, ptr @__kstrtabns_xfrm4_rcv_encap }, section "___ksymtab+xfrm4_rcv_encap", align 4
@xfrm4_protocol_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @xfrm4_protocol_mutex, i64 52), ptr getelementptr (i8, ptr @xfrm4_protocol_mutex, i64 52) }, ptr @xfrm4_protocol_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@xfrm4_protocol_register.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@xfrm4_protocol_register.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrm4_protocol_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: can't add protocol\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xfrm4_protocol_register\00", [40 x i8] zeroinitializer }, align 32
@xfrm4_protocol_register._entry_ptr = internal global ptr @xfrm4_protocol_register._entry, section ".printk_index", align 4
@__kstrtab_xfrm4_protocol_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm4_protocol_register = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm4_protocol_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm4_protocol_register to i32), ptr @__kstrtab_xfrm4_protocol_register, ptr @__kstrtabns_xfrm4_protocol_register }, section "___ksymtab+xfrm4_protocol_register", align 4
@xfrm4_protocol_deregister.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrm4_protocol_deregister.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrm4_protocol_deregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: can't remove protocol\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xfrm4_protocol_deregister\00", [38 x i8] zeroinitializer }, align 32
@xfrm4_protocol_deregister._entry_ptr = internal global ptr @xfrm4_protocol_deregister._entry, section ".printk_index", align 4
@__kstrtab_xfrm4_protocol_deregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm4_protocol_deregister = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm4_protocol_deregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm4_protocol_deregister to i32), ptr @__kstrtab_xfrm4_protocol_deregister, ptr @__kstrtabns_xfrm4_protocol_deregister }, section "___ksymtab+xfrm4_protocol_deregister", align 4
@xfrm4_input_afinfo = internal constant { %struct.xfrm_input_afinfo, [24 x i8] } { %struct.xfrm_input_afinfo { i8 2, i8 0, ptr @xfrm4_rcv_cb }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_xfrm4_protocol_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm4_protocol_init = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm4_protocol_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm4_protocol_init to i32), ptr @__kstrtab_xfrm4_protocol_init, ptr @__kstrtabns_xfrm4_protocol_init }, section "___ksymtab+xfrm4_protocol_init", align 4
@esp4_handlers = internal global ptr null, section ".data..read_mostly", align 4
@ah4_handlers = internal global ptr null, section ".data..read_mostly", align 4
@ipcomp4_handlers = internal global ptr null, section ".data..read_mostly", align 4
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@esp4_protocol = internal constant { %struct.net_protocol, [44 x i8] } { %struct.net_protocol { ptr null, ptr null, ptr @xfrm4_esp_rcv, ptr @xfrm4_esp_err, i8 -128 }, [44 x i8] zeroinitializer }, align 32
@ah4_protocol = internal constant { %struct.net_protocol, [44 x i8] } { %struct.net_protocol { ptr null, ptr null, ptr @xfrm4_ah_rcv, ptr @xfrm4_ah_err, i8 -128 }, [44 x i8] zeroinitializer }, align 32
@ipcomp4_protocol = internal constant { %struct.net_protocol, [44 x i8] } { %struct.net_protocol { ptr null, ptr null, ptr @xfrm4_ipcomp_rcv, ptr @xfrm4_ipcomp_err, i8 -128 }, [44 x i8] zeroinitializer }, align 32
@xfrm4_esp_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrm4_esp_rcv.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrm4_esp_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrm4_esp_err.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrm4_ah_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrm4_ah_rcv.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrm4_ah_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrm4_ah_err.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrm4_ipcomp_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrm4_ipcomp_rcv.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrm4_ipcomp_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrm4_ipcomp_err.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"xfrm4_protocol_mutex.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xfrm4_protocol_mutex\00", [43 x i8] zeroinitializer }, align 32
@xfrm4_rcv_cb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrm4_rcv_cb.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 83, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"xfrm4_protocol_mutex\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 231, i32 7 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 255, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 290, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"xfrm4_input_afinfo\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 198, i32 39 }
@___asan_gen_.61 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 1011, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"esp4_protocol\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 180, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"ah4_protocol\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 186, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"ipcomp4_protocol\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 192, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [29 x i8] c"../net/ipv4/xfrm4_protocol.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 24, i32 8 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_xfrm4_protocol_deregister, ptr @__ksymtab_xfrm4_protocol_init, ptr @__ksymtab_xfrm4_protocol_register, ptr @__ksymtab_xfrm4_rcv_encap, ptr @xfrm4_protocol_deregister._entry, ptr @xfrm4_protocol_deregister._entry_ptr, ptr @xfrm4_protocol_register._entry, ptr @xfrm4_protocol_register._entry_ptr, ptr @.str, ptr @.str.1, ptr @xfrm4_protocol_mutex, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @xfrm4_input_afinfo, ptr @.str.10, ptr @esp4_protocol, ptr @ah4_protocol, ptr @ipcomp4_protocol, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm4_protocol_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm4_protocol_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm4_protocol_deregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm4_input_afinfo to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp4_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ah4_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipcomp4_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm4_rcv_encap(ptr noundef %skb, i32 noundef %nexthdr, i32 noundef %spi, i32 noundef %encap_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %nexthdr to i8
  %0 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv, label %proto_handlers.exit [
    i8 50, label %entry.if.end_crit_edge
    i8 51, label %sw.bb1.i
    i8 108, label %sw.bb2.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

proto_handlers.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %tunnel = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %1 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %tunnel, align 8
  %family = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %2 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %family, align 8
  %daddroff = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %3 = ptrtoint ptr %daddroff to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16, ptr %daddroff, align 4
  br label %out

if.end:                                           ; preds = %sw.bb2.i, %sw.bb1.i, %entry.if.end_crit_edge
  %retval.0.i.ph = phi ptr [ @esp4_handlers, %entry.if.end_crit_edge ], [ @ah4_handlers, %sw.bb1.i ], [ @ipcomp4_handlers, %sw.bb2.i ]
  %tunnel71 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %4 = ptrtoint ptr %tunnel71 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tunnel71, align 8
  %family72 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %5 = ptrtoint ptr %family72 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %family72, align 8
  %daddroff73 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %6 = ptrtoint ptr %daddroff73 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %daddroff73, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.end.skb_dst.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call.i = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge

land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_dst.exitthread-pre-split

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, !prof !82

land.rhs.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_dst.exitthread-pre-split

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1013, i32 noundef 9, ptr noundef null) #4
  br label %skb_dst.exitthread-pre-split

skb_dst.exitthread-pre-split:                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %7, align 8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %skb_dst.exitthread-pre-split, %if.end.skb_dst.exit_crit_edge
  %11 = phi i32 [ %.pr, %skb_dst.exitthread-pre-split ], [ %9, %if.end.skb_dst.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %tobool6.not = icmp ult i32 %11, 2
  br i1 %tobool6.not, label %if.then7, label %skb_dst.exit.if.end13_crit_edge

skb_dst.exit.if.end13_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then7:                                         ; preds = %skb_dst.exit
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %daddr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %saddr, align 4
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tos, align 1
  %22 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %call9 = tail call i32 @ip_route_input_noref(ptr noundef %skb, i32 noundef %17, i32 noundef %19, i8 noundef zeroext %21, ptr noundef %24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then7.if.end13_crit_edge, label %if.then7.drop_crit_edge

if.then7.drop_crit_edge:                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %drop

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %skb_dst.exit.if.end13_crit_edge
  %25 = ptrtoint ptr %retval.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %retval.0.i.ph, align 4
  %call15 = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true, label %if.end13.do.end24_crit_edge

if.end13.do.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end24

land.lhs.true:                                    ; preds = %if.end13
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true.do.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true
  %.b69 = load i1, ptr @xfrm4_rcv_encap.__warned, align 1
  br i1 %.b69, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_rcv_encap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 83, ptr noundef nonnull @.str.1) #4
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true.do.end24_crit_edge, %if.end13.do.end24_crit_edge
  %cmp.not76 = icmp eq ptr %26, null
  br i1 %cmp.not76, label %do.end24.out_crit_edge, label %do.end24.for.body_crit_edge

do.end24.for.body_crit_edge:                      ; preds = %do.end24
  br label %for.body

do.end24.out_crit_edge:                           ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

for.body:                                         ; preds = %do.end47.for.body_crit_edge, %do.end24.for.body_crit_edge
  %handler.077 = phi ptr [ %30, %do.end47.for.body_crit_edge ], [ %26, %do.end24.for.body_crit_edge ]
  %input_handler = getelementptr inbounds %struct.xfrm4_protocol, ptr %handler.077, i32 0, i32 1
  %27 = ptrtoint ptr %input_handler to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input_handler, align 4
  %call27 = tail call i32 %28(ptr noundef %skb, i32 noundef %nexthdr, i32 noundef %spi, i32 noundef %encap_type) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, -22
  br i1 %cmp28.not, label %for.inc, label %for.body.cleanup49_crit_edge

for.body.cleanup49_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup49

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.xfrm4_protocol, ptr %handler.077, i32 0, i32 4
  %29 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %next, align 4
  %call37 = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true39, label %for.inc.do.end47_crit_edge

for.inc.do.end47_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end47

land.lhs.true39:                                  ; preds = %for.inc
  %call40 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true39.do.end47_crit_edge, label %land.lhs.true42

land.lhs.true39.do.end47_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end47

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %.b6768 = load i1, ptr @xfrm4_rcv_encap.__warned.2, align 1
  br i1 %.b6768, label %land.lhs.true42.do.end47_crit_edge, label %if.then44

land.lhs.true42.do.end47_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end47

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_rcv_encap.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 83, ptr noundef nonnull @.str.1) #4
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %land.lhs.true42.do.end47_crit_edge, %land.lhs.true39.do.end47_crit_edge, %for.inc.do.end47_crit_edge
  %cmp.not = icmp eq ptr %30, null
  br i1 %cmp.not, label %do.end47.out_crit_edge, label %do.end47.for.body_crit_edge

do.end47.for.body_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end47.out_crit_edge:                           ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

out:                                              ; preds = %do.end47.out_crit_edge, %do.end24.out_crit_edge, %proto_handlers.exit
  %opt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %skb, i32 noundef 3, i32 noundef 3, i32 noundef 0, ptr noundef %opt.i) #4
  br label %drop

drop:                                             ; preds = %out, %if.then7.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %cleanup49

cleanup49:                                        ; preds = %drop, %for.body.cleanup49_crit_edge
  %retval.0 = phi i32 [ 0, %drop ], [ %call27, %for.body.cleanup49_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm4_protocol_register(ptr noundef %handler, i8 noundef zeroext %protocol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priority1 = getelementptr inbounds %struct.xfrm4_protocol, ptr %handler, i32 0, i32 5
  %0 = ptrtoint ptr %priority1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priority1, align 4
  %2 = zext i8 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %protocol, label %entry.cleanup_crit_edge [
    i8 50, label %entry.if.end_crit_edge
    i8 51, label %entry.if.end_crit_edge156
    i8 108, label %entry.if.end_crit_edge157
  ]

entry.if.end_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge156, %entry.if.end_crit_edge157
  tail call void @mutex_lock_nested(ptr noundef nonnull @xfrm4_protocol_mutex, i32 noundef 0) #4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @xfrm4_protocol_mutex, i32 0, i32 5), i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b109 = load i1, ptr @xfrm4_protocol_register.__warned, align 1
  br i1 %.b109, label %land.lhs.true8.do.end_crit_edge, label %if.then10

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_protocol_register.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 232, ptr noundef nonnull @.str.3) #4
  br label %do.end

do.end:                                           ; preds = %if.then10, %land.lhs.true8.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %3 = zext i8 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %protocol, label %proto_handlers.exit118 [
    i8 50, label %do.end.proto_handlers.exit123_crit_edge
    i8 51, label %proto_handlers.exit118.thread136
    i8 108, label %proto_handlers.exit118.thread140
  ]

do.end.proto_handlers.exit123_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %proto_handlers.exit123

proto_handlers.exit118.thread136:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %proto_handlers.exit123

proto_handlers.exit118.thread140:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %proto_handlers.exit123

proto_handlers.exit118:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %proto_handlers.exit123

proto_handlers.exit123:                           ; preds = %proto_handlers.exit118, %proto_handlers.exit118.thread140, %proto_handlers.exit118.thread136, %do.end.proto_handlers.exit123_crit_edge
  %retval.0.i122 = phi ptr [ null, %proto_handlers.exit118 ], [ @ipcomp4_handlers, %proto_handlers.exit118.thread140 ], [ @ah4_handlers, %proto_handlers.exit118.thread136 ], [ @esp4_handlers, %do.end.proto_handlers.exit123_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i122 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tobool13.not135.in = load ptr, ptr %retval.0.i122, align 4
  %tobool13.not135 = icmp eq ptr %tobool13.not135.in, null
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %proto_handlers.exit123
  %pprev.0 = phi ptr [ %retval.0.i122, %proto_handlers.exit123 ], [ %next, %for.inc ]
  %call.i124 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @xfrm4_protocol_mutex, i32 0, i32 5), i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool19.not = icmp eq i32 %call.i124, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %for.cond.do.end28_crit_edge

for.cond.do.end28_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28

land.lhs.true20:                                  ; preds = %for.cond
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b107108 = load i1, ptr @xfrm4_protocol_register.__warned.4, align 1
  br i1 %.b107108, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_protocol_register.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 237, ptr noundef nonnull @.str.3) #4
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %for.cond.do.end28_crit_edge
  %5 = ptrtoint ptr %pprev.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pprev.0, align 4
  %cmp.not = icmp eq ptr %6, null
  br i1 %cmp.not, label %do.end28.for.end_crit_edge, label %for.body

do.end28.for.end_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %do.end28
  %priority30 = getelementptr inbounds %struct.xfrm4_protocol, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %priority30 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %priority30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %1)
  %cmp31 = icmp slt i32 %8, %1
  br i1 %cmp31, label %for.body.for.end_crit_edge, label %if.end33

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end33:                                         ; preds = %for.body
  %cmp35 = icmp eq i32 %8, %1
  br i1 %cmp35, label %if.end33.err_crit_edge, label %for.inc

if.end33.err_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

for.inc:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %next = getelementptr inbounds %struct.xfrm4_protocol, ptr %6, i32 0, i32 4
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end28.for.end_crit_edge
  %next38 = getelementptr inbounds %struct.xfrm4_protocol, ptr %handler, i32 0, i32 4
  %9 = ptrtoint ptr %next38 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %next38, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !83
  %10 = ptrtoint ptr %pprev.0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %handler, ptr %pprev.0, align 4
  br label %err

err:                                              ; preds = %for.end, %if.end33.err_crit_edge
  %ret.0 = phi i32 [ 0, %for.end ], [ -17, %if.end33.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @xfrm4_protocol_mutex) #4
  br i1 %tobool13.not135, label %if.then77, label %err.cleanup_crit_edge

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then77:                                        ; preds = %err
  %11 = zext i8 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %protocol, label %sw.epilog.i127 [
    i8 50, label %if.then77.netproto.exit129_crit_edge
    i8 51, label %sw.bb1.i125
    i8 108, label %sw.bb2.i126
  ]

if.then77.netproto.exit129_crit_edge:             ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #6
  br label %netproto.exit129

sw.bb1.i125:                                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #6
  br label %netproto.exit129

sw.bb2.i126:                                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #6
  br label %netproto.exit129

sw.epilog.i127:                                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #6
  br label %netproto.exit129

netproto.exit129:                                 ; preds = %sw.epilog.i127, %sw.bb2.i126, %sw.bb1.i125, %if.then77.netproto.exit129_crit_edge
  %retval.0.i128 = phi ptr [ null, %sw.epilog.i127 ], [ @ipcomp4_protocol, %sw.bb2.i126 ], [ @ah4_protocol, %sw.bb1.i125 ], [ @esp4_protocol, %if.then77.netproto.exit129_crit_edge ]
  %call79 = tail call i32 @inet_add_protocol(ptr noundef %retval.0.i128, i8 noundef zeroext %protocol) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %netproto.exit129.cleanup_crit_edge, label %do.end84

netproto.exit129.cleanup_crit_edge:               ; preds = %netproto.exit129
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end84:                                         ; preds = %netproto.exit129
  call void @__sanitizer_cov_trace_pc() #6
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %netproto.exit129.cleanup_crit_edge, %err.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end84 ], [ %ret.0, %netproto.exit129.cleanup_crit_edge ], [ %ret.0, %err.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm4_protocol_deregister(ptr noundef readonly %handler, i8 noundef zeroext %protocol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %protocol, label %entry.cleanup_crit_edge [
    i8 50, label %entry.proto_handlers.exit64_crit_edge
    i8 51, label %sw.bb1.i60
    i8 108, label %sw.bb2.i61
  ]

entry.proto_handlers.exit64_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %proto_handlers.exit64

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1.i60:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %proto_handlers.exit64

sw.bb2.i61:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %proto_handlers.exit64

proto_handlers.exit64:                            ; preds = %sw.bb2.i61, %sw.bb1.i60, %entry.proto_handlers.exit64_crit_edge
  %retval.0.i63 = phi ptr [ @ipcomp4_handlers, %sw.bb2.i61 ], [ @ah4_handlers, %sw.bb1.i60 ], [ @esp4_handlers, %entry.proto_handlers.exit64_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @xfrm4_protocol_mutex, i32 noundef 0) #4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %proto_handlers.exit64
  %pprev.0 = phi ptr [ %retval.0.i63, %proto_handlers.exit64 ], [ %next15, %for.body.for.cond_crit_edge ]
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @xfrm4_protocol_mutex, i32 0, i32 5), i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %land.lhs.true, label %for.cond.do.end_crit_edge

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true:                                    ; preds = %for.cond
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b55 = load i1, ptr @xfrm4_protocol_deregister.__warned, align 1
  br i1 %.b55, label %land.lhs.true8.do.end_crit_edge, label %if.then10

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_protocol_deregister.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 278, ptr noundef nonnull @.str.3) #4
  br label %do.end

do.end:                                           ; preds = %if.then10, %land.lhs.true8.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.cond.do.end_crit_edge
  %1 = ptrtoint ptr %pprev.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pprev.0, align 4
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %do.end.do.body16_crit_edge, label %for.body

do.end.do.body16_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body16

for.body:                                         ; preds = %do.end
  %cmp12 = icmp eq ptr %2, %handler
  %next15 = getelementptr inbounds %struct.xfrm4_protocol, ptr %2, i32 0, i32 4
  br i1 %cmp12, label %if.then13, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %next = getelementptr inbounds %struct.xfrm4_protocol, ptr %handler, i32 0, i32 4
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next, align 4
  %5 = ptrtoint ptr %pprev.0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %pprev.0, align 4
  br label %do.body16

do.body16:                                        ; preds = %if.then13, %do.end.do.body16_crit_edge
  %ret.0 = phi i32 [ 0, %if.then13 ], [ -2, %do.end.do.body16_crit_edge ]
  %call.i65 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @xfrm4_protocol_mutex, i32 0, i32 5), i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool18.not = icmp eq i32 %call.i65, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %do.body16.do.end27_crit_edge

do.body16.do.end27_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end27

land.lhs.true19:                                  ; preds = %do.body16
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true19.do.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %.b5354 = load i1, ptr @xfrm4_protocol_deregister.__warned.7, align 1
  br i1 %.b5354, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_protocol_deregister.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 288, ptr noundef nonnull @.str.3) #4
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true19.do.end27_crit_edge, %do.body16.do.end27_crit_edge
  %6 = zext i8 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %protocol, label %sw.epilog.i68 [
    i8 50, label %do.end27.proto_handlers.exit70_crit_edge
    i8 51, label %sw.bb1.i66
    i8 108, label %sw.bb2.i67
  ]

do.end27.proto_handlers.exit70_crit_edge:         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %proto_handlers.exit70

sw.bb1.i66:                                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %proto_handlers.exit70

sw.bb2.i67:                                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %proto_handlers.exit70

sw.epilog.i68:                                    ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %proto_handlers.exit70

proto_handlers.exit70:                            ; preds = %sw.epilog.i68, %sw.bb2.i67, %sw.bb1.i66, %do.end27.proto_handlers.exit70_crit_edge
  %retval.0.i69 = phi ptr [ null, %sw.epilog.i68 ], [ @ipcomp4_handlers, %sw.bb2.i67 ], [ @ah4_handlers, %sw.bb1.i66 ], [ @esp4_handlers, %do.end27.proto_handlers.exit70_crit_edge ]
  %7 = ptrtoint ptr %retval.0.i69 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %retval.0.i69, align 4
  %tobool30.not = icmp eq ptr %8, null
  br i1 %tobool30.not, label %if.then31, label %proto_handlers.exit70.if.end42_crit_edge

proto_handlers.exit70.if.end42_crit_edge:         ; preds = %proto_handlers.exit70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then31:                                        ; preds = %proto_handlers.exit70
  %9 = zext i8 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %protocol, label %sw.epilog.i73 [
    i8 50, label %if.then31.netproto.exit75_crit_edge
    i8 51, label %sw.bb1.i71
    i8 108, label %sw.bb2.i72
  ]

if.then31.netproto.exit75_crit_edge:              ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %netproto.exit75

sw.bb1.i71:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %netproto.exit75

sw.bb2.i72:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %netproto.exit75

sw.epilog.i73:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %netproto.exit75

netproto.exit75:                                  ; preds = %sw.epilog.i73, %sw.bb2.i72, %sw.bb1.i71, %if.then31.netproto.exit75_crit_edge
  %retval.0.i74 = phi ptr [ null, %sw.epilog.i73 ], [ @ipcomp4_protocol, %sw.bb2.i72 ], [ @ah4_protocol, %sw.bb1.i71 ], [ @esp4_protocol, %if.then31.netproto.exit75_crit_edge ]
  %call33 = tail call i32 @inet_del_protocol(ptr noundef %retval.0.i74, i8 noundef zeroext %protocol) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end38, label %netproto.exit75.if.end42_crit_edge

netproto.exit75.if.end42_crit_edge:               ; preds = %netproto.exit75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

do.end38:                                         ; preds = %netproto.exit75
  call void @__sanitizer_cov_trace_pc() #6
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #7
  br label %if.end42

if.end42:                                         ; preds = %do.end38, %netproto.exit75.if.end42_crit_edge, %proto_handlers.exit70.if.end42_crit_edge
  %ret.1 = phi i32 [ %ret.0, %proto_handlers.exit70.if.end42_crit_edge ], [ -11, %do.end38 ], [ %ret.0, %netproto.exit75.if.end42_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @xfrm4_protocol_mutex) #4
  tail call void @synchronize_net() #4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end42 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @xfrm4_protocol_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfrm_input_register_afinfo(ptr noundef nonnull @xfrm4_input_afinfo) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input_register_afinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm4_esp_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tunnel = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tunnel, align 8
  %1 = load volatile ptr, ptr @esp4_handlers, align 4
  %call = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b39 = load i1, ptr @xfrm4_esp_rcv.__warned, align 1
  br i1 %.b39, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_esp_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 103, ptr noundef nonnull @.str.1) #4
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %cmp.not40 = icmp eq ptr %1, null
  br i1 %cmp.not40, label %do.end7.for.end_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.for.end_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %do.end29.for.body_crit_edge, %do.end7.for.body_crit_edge
  %handler.041 = phi ptr [ %5, %do.end29.for.body_crit_edge ], [ %1, %do.end7.for.body_crit_edge ]
  %2 = ptrtoint ptr %handler.041 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler.041, align 4
  %call10 = tail call i32 %3(ptr noundef %skb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, -22
  br i1 %cmp11.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.xfrm4_protocol, ptr %handler.041, i32 0, i32 4
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %next, align 4
  %call19 = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %for.inc.do.end29_crit_edge

for.inc.do.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29

land.lhs.true21:                                  ; preds = %for.inc
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true21.do.end29_crit_edge, label %land.lhs.true24

land.lhs.true21.do.end29_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %.b3738 = load i1, ptr @xfrm4_esp_rcv.__warned.11, align 1
  br i1 %.b3738, label %land.lhs.true24.do.end29_crit_edge, label %if.then26

land.lhs.true24.do.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_esp_rcv.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 103, ptr noundef nonnull @.str.1) #4
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %land.lhs.true24.do.end29_crit_edge, %land.lhs.true21.do.end29_crit_edge, %for.inc.do.end29_crit_edge
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %do.end29.for.end_crit_edge, label %do.end29.for.body_crit_edge

do.end29.for.body_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end29.for.end_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %do.end29.for.end_crit_edge, %do.end7.for.end_crit_edge
  %opt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %skb, i32 noundef 3, i32 noundef 3, i32 noundef 0, ptr noundef %opt.i) #4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call10, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm4_esp_err(ptr noundef %skb, i32 noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @esp4_handlers, align 4
  %call = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @xfrm4_esp_err.__warned, align 1
  br i1 %.b34, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_esp_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 117, ptr noundef nonnull @.str.1) #4
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %cmp.not35 = icmp eq ptr %0, null
  br i1 %cmp.not35, label %do.end7.cleanup_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %do.end28.for.body_crit_edge, %do.end7.for.body_crit_edge
  %handler.036 = phi ptr [ %4, %do.end28.for.body_crit_edge ], [ %0, %do.end7.for.body_crit_edge ]
  %err_handler = getelementptr inbounds %struct.xfrm4_protocol, ptr %handler.036, i32 0, i32 3
  %1 = ptrtoint ptr %err_handler to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %err_handler, align 4
  %call9 = tail call i32 %2(ptr noundef %skb, i32 noundef %info) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.xfrm4_protocol, ptr %handler.036, i32 0, i32 4
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %next, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %for.inc.do.end28_crit_edge

for.inc.do.end28_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28

land.lhs.true20:                                  ; preds = %for.inc
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b3233 = load i1, ptr @xfrm4_esp_err.__warned.12, align 1
  br i1 %.b3233, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_esp_err.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 117, ptr noundef nonnull @.str.1) #4
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %for.inc.do.end28_crit_edge
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %do.end28.cleanup_crit_edge, label %do.end28.for.body_crit_edge

do.end28.for.body_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %do.end28.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end7.cleanup_crit_edge ], [ -2, %do.end28.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm4_ah_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tunnel = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tunnel, align 8
  %1 = load volatile ptr, ptr @ah4_handlers, align 4
  %call = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b39 = load i1, ptr @xfrm4_ah_rcv.__warned, align 1
  br i1 %.b39, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_ah_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 131, ptr noundef nonnull @.str.1) #4
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %cmp.not40 = icmp eq ptr %1, null
  br i1 %cmp.not40, label %do.end7.for.end_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.for.end_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %do.end29.for.body_crit_edge, %do.end7.for.body_crit_edge
  %handler.041 = phi ptr [ %5, %do.end29.for.body_crit_edge ], [ %1, %do.end7.for.body_crit_edge ]
  %2 = ptrtoint ptr %handler.041 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler.041, align 4
  %call10 = tail call i32 %3(ptr noundef %skb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, -22
  br i1 %cmp11.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.xfrm4_protocol, ptr %handler.041, i32 0, i32 4
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %next, align 4
  %call19 = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %for.inc.do.end29_crit_edge

for.inc.do.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29

land.lhs.true21:                                  ; preds = %for.inc
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true21.do.end29_crit_edge, label %land.lhs.true24

land.lhs.true21.do.end29_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %.b3738 = load i1, ptr @xfrm4_ah_rcv.__warned.13, align 1
  br i1 %.b3738, label %land.lhs.true24.do.end29_crit_edge, label %if.then26

land.lhs.true24.do.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_ah_rcv.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 131, ptr noundef nonnull @.str.1) #4
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %land.lhs.true24.do.end29_crit_edge, %land.lhs.true21.do.end29_crit_edge, %for.inc.do.end29_crit_edge
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %do.end29.for.end_crit_edge, label %do.end29.for.body_crit_edge

do.end29.for.body_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end29.for.end_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %do.end29.for.end_crit_edge, %do.end7.for.end_crit_edge
  %opt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %skb, i32 noundef 3, i32 noundef 3, i32 noundef 0, ptr noundef %opt.i) #4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call10, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm4_ah_err(ptr noundef %skb, i32 noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @ah4_handlers, align 4
  %call = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @xfrm4_ah_err.__warned, align 1
  br i1 %.b34, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_ah_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 145, ptr noundef nonnull @.str.1) #4
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %cmp.not35 = icmp eq ptr %0, null
  br i1 %cmp.not35, label %do.end7.cleanup_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %do.end28.for.body_crit_edge, %do.end7.for.body_crit_edge
  %handler.036 = phi ptr [ %4, %do.end28.for.body_crit_edge ], [ %0, %do.end7.for.body_crit_edge ]
  %err_handler = getelementptr inbounds %struct.xfrm4_protocol, ptr %handler.036, i32 0, i32 3
  %1 = ptrtoint ptr %err_handler to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %err_handler, align 4
  %call9 = tail call i32 %2(ptr noundef %skb, i32 noundef %info) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.xfrm4_protocol, ptr %handler.036, i32 0, i32 4
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %next, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %for.inc.do.end28_crit_edge

for.inc.do.end28_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28

land.lhs.true20:                                  ; preds = %for.inc
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b3233 = load i1, ptr @xfrm4_ah_err.__warned.14, align 1
  br i1 %.b3233, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_ah_err.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 145, ptr noundef nonnull @.str.1) #4
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %for.inc.do.end28_crit_edge
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %do.end28.cleanup_crit_edge, label %do.end28.for.body_crit_edge

do.end28.for.body_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %do.end28.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end7.cleanup_crit_edge ], [ -2, %do.end28.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm4_ipcomp_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tunnel = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tunnel, align 8
  %1 = load volatile ptr, ptr @ipcomp4_handlers, align 4
  %call = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b39 = load i1, ptr @xfrm4_ipcomp_rcv.__warned, align 1
  br i1 %.b39, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_ipcomp_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 159, ptr noundef nonnull @.str.1) #4
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %cmp.not40 = icmp eq ptr %1, null
  br i1 %cmp.not40, label %do.end7.for.end_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.for.end_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %do.end29.for.body_crit_edge, %do.end7.for.body_crit_edge
  %handler.041 = phi ptr [ %5, %do.end29.for.body_crit_edge ], [ %1, %do.end7.for.body_crit_edge ]
  %2 = ptrtoint ptr %handler.041 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler.041, align 4
  %call10 = tail call i32 %3(ptr noundef %skb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, -22
  br i1 %cmp11.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.xfrm4_protocol, ptr %handler.041, i32 0, i32 4
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %next, align 4
  %call19 = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %for.inc.do.end29_crit_edge

for.inc.do.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29

land.lhs.true21:                                  ; preds = %for.inc
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true21.do.end29_crit_edge, label %land.lhs.true24

land.lhs.true21.do.end29_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %.b3738 = load i1, ptr @xfrm4_ipcomp_rcv.__warned.15, align 1
  br i1 %.b3738, label %land.lhs.true24.do.end29_crit_edge, label %if.then26

land.lhs.true24.do.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_ipcomp_rcv.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 159, ptr noundef nonnull @.str.1) #4
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %land.lhs.true24.do.end29_crit_edge, %land.lhs.true21.do.end29_crit_edge, %for.inc.do.end29_crit_edge
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %do.end29.for.end_crit_edge, label %do.end29.for.body_crit_edge

do.end29.for.body_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end29.for.end_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %do.end29.for.end_crit_edge, %do.end7.for.end_crit_edge
  %opt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %skb, i32 noundef 3, i32 noundef 3, i32 noundef 0, ptr noundef %opt.i) #4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call10, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm4_ipcomp_err(ptr noundef %skb, i32 noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @ipcomp4_handlers, align 4
  %call = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @xfrm4_ipcomp_err.__warned, align 1
  br i1 %.b34, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_ipcomp_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 173, ptr noundef nonnull @.str.1) #4
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %cmp.not35 = icmp eq ptr %0, null
  br i1 %cmp.not35, label %do.end7.cleanup_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %do.end28.for.body_crit_edge, %do.end7.for.body_crit_edge
  %handler.036 = phi ptr [ %4, %do.end28.for.body_crit_edge ], [ %0, %do.end7.for.body_crit_edge ]
  %err_handler = getelementptr inbounds %struct.xfrm4_protocol, ptr %handler.036, i32 0, i32 3
  %1 = ptrtoint ptr %err_handler to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %err_handler, align 4
  %call9 = tail call i32 %2(ptr noundef %skb, i32 noundef %info) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.xfrm4_protocol, ptr %handler.036, i32 0, i32 4
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %next, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %for.inc.do.end28_crit_edge

for.inc.do.end28_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28

land.lhs.true20:                                  ; preds = %for.inc
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b3233 = load i1, ptr @xfrm4_ipcomp_err.__warned.16, align 1
  br i1 %.b3233, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_ipcomp_err.__warned.16, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 173, ptr noundef nonnull @.str.1) #4
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %for.inc.do.end28_crit_edge
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %do.end28.cleanup_crit_edge, label %do.end28.for.body_crit_edge

do.end28.for.body_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %do.end28.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end7.cleanup_crit_edge ], [ -2, %do.end28.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm4_rcv_cb(ptr noundef %skb, i8 noundef zeroext %protocol, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %protocol, label %entry.cleanup_crit_edge [
    i8 50, label %entry.if.end_crit_edge
    i8 51, label %sw.bb1.i
    i8 108, label %sw.bb2.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %sw.bb2.i, %sw.bb1.i, %entry.if.end_crit_edge
  %retval.0.i.ph = phi ptr [ @esp4_handlers, %entry.if.end_crit_edge ], [ @ah4_handlers, %sw.bb1.i ], [ @ipcomp4_handlers, %sw.bb2.i ]
  %1 = ptrtoint ptr %retval.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %retval.0.i.ph, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.do.end11_crit_edge

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b41 = load i1, ptr @xfrm4_rcv_cb.__warned, align 1
  br i1 %.b41, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_rcv_cb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 54, ptr noundef nonnull @.str.1) #4
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %if.end.do.end11_crit_edge
  %cmp.not45 = icmp eq ptr %2, null
  br i1 %cmp.not45, label %do.end11.cleanup_crit_edge, label %do.end11.for.body_crit_edge

do.end11.for.body_crit_edge:                      ; preds = %do.end11
  br label %for.body

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %do.end32.for.body_crit_edge, %do.end11.for.body_crit_edge
  %handler.046 = phi ptr [ %6, %do.end32.for.body_crit_edge ], [ %2, %do.end11.for.body_crit_edge ]
  %cb_handler = getelementptr inbounds %struct.xfrm4_protocol, ptr %handler.046, i32 0, i32 2
  %3 = ptrtoint ptr %cb_handler to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cb_handler, align 4
  %call13 = tail call i32 %4(ptr noundef %skb, i32 noundef %err) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.xfrm4_protocol, ptr %handler.046, i32 0, i32 4
  %5 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %next, align 4
  %call22 = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %for.inc.do.end32_crit_edge

for.inc.do.end32_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end32

land.lhs.true24:                                  ; preds = %for.inc
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true24.do.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %.b3940 = load i1, ptr @xfrm4_rcv_cb.__warned.19, align 1
  br i1 %.b3940, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xfrm4_rcv_cb.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 54, ptr noundef nonnull @.str.1) #4
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true24.do.end32_crit_edge, %for.inc.do.end32_crit_edge
  %cmp.not = icmp eq ptr %6, null
  br i1 %cmp.not, label %do.end32.cleanup_crit_edge, label %do.end32.for.body_crit_edge

do.end32.for.body_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %do.end32.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end11.cleanup_crit_edge ], [ %call13, %for.body.cleanup_crit_edge ], [ 0, %do.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !9, !10, !12, !14, !15, !16, !17, !19, !21, !23, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !47, !48, !50, !52, !53, !55, !56, !58, !60, !61, !63, !64, !66, !67, !68, !70, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/ipv4/xfrm4_protocol.c", i32 83, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!5 = !{ptr @__ksymtab_xfrm4_rcv_encap, !6, !"__ksymtab_xfrm4_rcv_encap", i1 false, i1 false}
!6 = !{!"../net/ipv4/xfrm4_protocol.c", i32 94, i32 1}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../net/ipv4/xfrm4_protocol.c", i32 231, i32 7}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/ipv4/xfrm4_protocol.c", i32 236, i32 12}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ipv4/xfrm4_protocol.c", i32 255, i32 4}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @xfrm4_protocol_register._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @xfrm4_protocol_register._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_xfrm4_protocol_register, !18, !"__ksymtab_xfrm4_protocol_register", i1 false, i1 false}
!18 = !{!"../net/ipv4/xfrm4_protocol.c", i32 262, i32 1}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/ipv4/xfrm4_protocol.c", i32 277, i32 12}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/ipv4/xfrm4_protocol.c", i32 287, i32 7}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/ipv4/xfrm4_protocol.c", i32 290, i32 4}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @xfrm4_protocol_deregister._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @xfrm4_protocol_deregister._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__ksymtab_xfrm4_protocol_deregister, !29, !"__ksymtab_xfrm4_protocol_deregister", i1 false, i1 false}
!29 = !{!"../net/ipv4/xfrm4_protocol.c", i32 301, i32 1}
!30 = !{ptr @__ksymtab_xfrm4_protocol_init, !31, !"__ksymtab_xfrm4_protocol_init", i1 false, i1 false}
!31 = !{!"../net/ipv4/xfrm4_protocol.c", i32 307, i32 1}
!32 = !{ptr @esp4_handlers, !33, !"esp4_handlers", i1 false, i1 false}
!33 = !{!"../net/ipv4/xfrm4_protocol.c", i32 21, i32 37}
!34 = !{ptr @ah4_handlers, !35, !"ah4_handlers", i1 false, i1 false}
!35 = !{!"../net/ipv4/xfrm4_protocol.c", i32 22, i32 37}
!36 = !{ptr @ipcomp4_handlers, !37, !"ipcomp4_handlers", i1 false, i1 false}
!37 = !{!"../net/ipv4/xfrm4_protocol.c", i32 23, i32 37}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!40 = !{ptr @esp4_protocol, !41, !"esp4_protocol", i1 false, i1 false}
!41 = !{!"../net/ipv4/xfrm4_protocol.c", i32 180, i32 34}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../net/ipv4/xfrm4_protocol.c", i32 103, i32 2}
!44 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../net/ipv4/xfrm4_protocol.c", i32 117, i32 2}
!47 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!48 = !{ptr @ah4_protocol, !49, !"ah4_protocol", i1 false, i1 false}
!49 = !{!"../net/ipv4/xfrm4_protocol.c", i32 186, i32 34}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/ipv4/xfrm4_protocol.c", i32 131, i32 2}
!52 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../net/ipv4/xfrm4_protocol.c", i32 145, i32 2}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = !{ptr @ipcomp4_protocol, !57, !"ipcomp4_protocol", i1 false, i1 false}
!57 = !{!"../net/ipv4/xfrm4_protocol.c", i32 192, i32 34}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../net/ipv4/xfrm4_protocol.c", i32 159, i32 2}
!60 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../net/ipv4/xfrm4_protocol.c", i32 173, i32 2}
!63 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/ipv4/xfrm4_protocol.c", i32 24, i32 8}
!66 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @xfrm4_protocol_mutex, !65, !"xfrm4_protocol_mutex", i1 false, i1 false}
!68 = !{ptr @xfrm4_input_afinfo, !69, !"xfrm4_input_afinfo", i1 false, i1 false}
!69 = !{!"../net/ipv4/xfrm4_protocol.c", i32 198, i32 39}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../net/ipv4/xfrm4_protocol.c", i32 54, i32 2}
!72 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i64 2157878159}
