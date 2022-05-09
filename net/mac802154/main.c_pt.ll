; ModuleID = '/llk/IR_all_yes/net/mac802154/main.c_pt.bc'
source_filename = "../net/mac802154/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ieee802154_alloc_hw\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee802154_alloc_hw\09\09\09\09"
module asm "\09.long\09__crc_ieee802154_alloc_hw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee802154_alloc_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee802154_alloc_hw\22\09\09\09\09\09"
module asm "__kstrtabns_ieee802154_alloc_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee802154_free_hw\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee802154_free_hw\09\09\09\09"
module asm "\09.long\09__crc_ieee802154_free_hw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee802154_free_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee802154_free_hw\22\09\09\09\09\09"
module asm "__kstrtabns_ieee802154_free_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee802154_register_hw\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee802154_register_hw\09\09\09\09"
module asm "\09.long\09__crc_ieee802154_register_hw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee802154_register_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee802154_register_hw\22\09\09\09\09\09"
module asm "__kstrtabns_ieee802154_register_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee802154_unregister_hw\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee802154_unregister_hw\09\09\09\09"
module asm "\09.long\09__crc_ieee802154_unregister_hw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee802154_unregister_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee802154_unregister_hw\22\09\09\09\09\09"
module asm "__kstrtabns_ieee802154_unregister_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cfg802154_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee802154_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wpan_phy = type { ptr, i32, i8, i8, %struct.wpan_phy_supported, i32, %struct.wpan_phy_cca, i64, i32, i8, i16, i16, %struct.device, %struct.possible_net_t, [4 x i8], [0 x i8] }
%struct.wpan_phy_supported = type { [32 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.wpan_phy_cca = type { i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.ieee802154_local = type { %struct.ieee802154_hw, ptr, ptr, i32, %struct.list_head, %struct.mutex, ptr, %struct.hrtimer, i8, i8, %struct.tasklet_struct, %struct.sk_buff_head, ptr, %struct.work_struct }
%struct.ieee802154_hw = type { i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.146, i32 }
%union.anon.146 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/mac802154/main.c\00", [43 x i8] zeroinitializer }, align 32
@mac802154_config_ops = external dso_local constant %struct.cfg802154_ops, align 4
@ieee802154_alloc_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013failure to allocate master IEEE802.15.4 device\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ieee802154_alloc_hw\00", [44 x i8] zeroinitializer }, align 32
@ieee802154_alloc_hw._entry_ptr = internal global ptr @ieee802154_alloc_hw._entry, section ".printk_index", align 4
@mac802154_wpan_phy_privid = external dso_local local_unnamed_addr constant ptr, align 4
@ieee802154_alloc_hw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&local->iflist_mtx\00", [45 x i8] zeroinitializer }, align 32
@ieee802154_alloc_hw.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&local->tx_work)\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_ieee802154_alloc_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee802154_alloc_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee802154_alloc_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee802154_alloc_hw to i32), ptr @__kstrtab_ieee802154_alloc_hw, ptr @__kstrtabns_ieee802154_alloc_hw }, section "___ksymtab+ieee802154_alloc_hw", align 4
@__kstrtab_ieee802154_free_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee802154_free_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee802154_free_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee802154_free_hw to i32), ptr @__kstrtab_ieee802154_free_hw, ptr @__kstrtabns_ieee802154_free_hw }, section "___ksymtab+ieee802154_free_hw", align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wpan%d\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_ieee802154_register_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee802154_register_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee802154_register_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee802154_register_hw to i32), ptr @__kstrtab_ieee802154_register_hw, ptr @__kstrtabns_ieee802154_register_hw }, section "___ksymtab+ieee802154_register_hw", align 4
@__kstrtab_ieee802154_unregister_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee802154_unregister_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee802154_unregister_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee802154_unregister_hw to i32), ptr @__kstrtab_ieee802154_unregister_hw, ptr @__kstrtabns_ieee802154_unregister_hw }, section "___ksymtab+ieee802154_unregister_hw", align 4
@__initcall__kmod_mac802154__485_235_ieee802154_init4 = internal global ptr @ieee802154_init, section ".initcall4.init", align 4
@__exitcall_ieee802154_exit = internal global ptr @ieee802154_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description486 = internal constant [46 x i8] c"mac802154.description=IEEE 802.15.4 subsystem\00", section ".modinfo", align 1
@__UNIQUE_ID_file487 = internal constant [39 x i8] c"mac802154.file=net/mac802154/mac802154\00", section ".modinfo", align 1
@__UNIQUE_ID_license488 = internal constant [25 x i8] c"mac802154.license=GPL v2\00", section ".modinfo", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mac802154: Packet is of unknown type %d\0A\00", [55 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 53, i32 6 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 79, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 92, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 98, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 147, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 183, i32 33 }
@___asan_gen_.41 = private constant [24 x i8] c"../net/mac802154/main.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 38, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 1984, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_description486, ptr @__UNIQUE_ID_file487, ptr @__UNIQUE_ID_license488, ptr @__exitcall_ieee802154_exit, ptr @__initcall__kmod_mac802154__485_235_ieee802154_init4, ptr @__ksymtab_ieee802154_alloc_hw, ptr @__ksymtab_ieee802154_free_hw, ptr @__ksymtab_ieee802154_register_hw, ptr @__ksymtab_ieee802154_unregister_hw, ptr @ieee802154_alloc_hw._entry, ptr @ieee802154_alloc_hw._entry_ptr, ptr @ieee802154_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ieee802154_alloc_hw.__key, ptr @.str.3, ptr @ieee802154_alloc_hw.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @skb_queue_head_init.__key, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154_alloc_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154_alloc_hw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154_alloc_hw.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ieee802154_alloc_hw(i32 noundef %priv_data_len, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ops, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %xmit_async = getelementptr inbounds %struct.ieee802154_ops, ptr %ops, i32 0, i32 4
  %0 = ptrtoint ptr %xmit_async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xmit_async, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.lor.lhs.false4_crit_edge

lor.lhs.false.lor.lhs.false4_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false4

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %xmit_sync = getelementptr inbounds %struct.ieee802154_ops, ptr %ops, i32 0, i32 3
  %2 = ptrtoint ptr %xmit_sync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xmit_sync, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.do.end_crit_edge, label %lor.lhs.false2.lor.lhs.false4_crit_edge

lor.lhs.false2.lor.lhs.false4_crit_edge:          ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false4

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false2.lor.lhs.false4_crit_edge, %lor.lhs.false.lor.lhs.false4_crit_edge
  %ed = getelementptr inbounds %struct.ieee802154_ops, ptr %ops, i32 0, i32 5
  %4 = ptrtoint ptr %ed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ed, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false4.do.end_crit_edge, label %lor.lhs.false6

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %start = getelementptr inbounds %struct.ieee802154_ops, ptr %ops, i32 0, i32 1
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %start, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %lor.lhs.false6.do.end_crit_edge, label %lor.lhs.false8

lor.lhs.false6.do.end_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %stop = getelementptr inbounds %struct.ieee802154_ops, ptr %ops, i32 0, i32 2
  %8 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stop, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %lor.lhs.false8.do.end_crit_edge, label %lor.rhs

lor.lhs.false8.do.end_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.rhs:                                          ; preds = %lor.lhs.false8
  %set_channel = getelementptr inbounds %struct.ieee802154_ops, ptr %ops, i32 0, i32 6
  %10 = ptrtoint ptr %set_channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_channel, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %lor.rhs.do.end_crit_edge, label %if.end33, !prof !48

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %lor.lhs.false8.do.end_crit_edge, %lor.lhs.false6.do.end_crit_edge, %lor.lhs.false4.do.end_crit_edge, %lor.lhs.false2.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end33:                                         ; preds = %lor.rhs
  %add = add i32 %priv_data_len, 320
  %call = tail call ptr @wpan_phy_new(ptr noundef nonnull @mac802154_config_ops, i32 noundef %add) #4
  %tobool34.not = icmp eq ptr %call, null
  br i1 %tobool34.not, label %do.end38, label %wpan_phy_priv.exit

do.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %cleanup

wpan_phy_priv.exit:                               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mac802154_wpan_phy_privid to i32))
  %12 = load ptr, ptr @mac802154_wpan_phy_privid, align 4
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %call, align 32
  %priv.i = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 0, i32 15
  %phy43 = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 1, i32 4, i32 0, i32 3
  %14 = ptrtoint ptr %phy43 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %phy43, align 8
  %phy45 = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 1, i32 4, i32 0, i32 1
  %15 = ptrtoint ptr %phy45 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %phy45, align 8
  %add.ptr = getelementptr %struct.wpan_phy, ptr %call, i32 1, i32 12, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %priv = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 1, i32 4
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr, ptr %priv, align 4
  %ops47 = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 1, i32 4, i32 0, i32 2
  %17 = ptrtoint ptr %ops47 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ops, ptr %ops47, align 4
  %interfaces = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 1, i32 4, i32 0, i32 5
  %18 = ptrtoint ptr %interfaces to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %interfaces, ptr %interfaces, align 4
  %prev.i = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 1, i32 4, i32 0, i32 6
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %interfaces, ptr %prev.i, align 4
  %iflist_mtx = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 1, i32 4, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %iflist_mtx, ptr noundef nonnull @.str.3, ptr noundef nonnull @ieee802154_alloc_hw.__key) #4
  %tasklet = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 1, i32 6, i32 1
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @ieee802154_tasklet_handler) #4
  %skb_queue = getelementptr inbounds %struct.ieee802154_local, ptr %priv.i, i32 0, i32 11
  %lock.i = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 1, i32 12, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #4
  %20 = ptrtoint ptr %skb_queue to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %skb_queue, ptr %skb_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 1, i32 12
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %skb_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 1, i32 12, i32 0, i32 1
  %22 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %qlen.i.i, align 4
  %tx_work = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 1, i32 12, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #4
  %23 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %tx_work, align 8
  %lockdep_map = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 1, i32 12, i32 0, i32 7, i32 0, i32 3, i32 7
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @ieee802154_alloc_hw.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry55 = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 1, i32 12, i32 0, i32 7, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %entry55 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry55, ptr %entry55, align 4
  %prev.i107 = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 1, i32 12, i32 0, i32 7, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %prev.i107 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry55, ptr %prev.i107, align 4
  %func = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 1, i32 12, i32 0, i32 7, i32 0, i32 3, i32 6
  %26 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ieee802154_xmit_worker, ptr %func, align 4
  %max_minbe = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 0, i32 4, i32 6
  %27 = ptrtoint ptr %max_minbe to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 8, ptr %max_minbe, align 1
  %min_maxbe = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 0, i32 4, i32 7
  %28 = ptrtoint ptr %min_maxbe to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %min_maxbe, align 2
  %max_maxbe = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 0, i32 4, i32 8
  %29 = ptrtoint ptr %max_maxbe to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %max_maxbe, align 1
  %min_frame_retries = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 0, i32 4, i32 11
  %30 = ptrtoint ptr %min_frame_retries to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %min_frame_retries, align 2
  %max_frame_retries = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 0, i32 4, i32 12
  %31 = ptrtoint ptr %max_frame_retries to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 7, ptr %max_frame_retries, align 1
  %max_csma_backoffs = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 0, i32 4, i32 10
  %32 = ptrtoint ptr %max_csma_backoffs to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 5, ptr %max_csma_backoffs, align 1
  %lbt = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 0, i32 4, i32 4
  %33 = ptrtoint ptr %lbt to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %lbt, align 4
  %iftypes = getelementptr inbounds %struct.wpan_phy, ptr %call, i32 0, i32 4, i32 3
  %34 = ptrtoint ptr %iftypes to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %iftypes, align 4
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_priv.exit, %do.end38, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %priv.i, %wpan_phy_priv.exit ], [ null, %do.end38 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wpan_phy_new(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee802154_tasklet_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -188
  %skb_queue = getelementptr i8, ptr %t, i32 24
  %call30 = tail call ptr @skb_dequeue(ptr noundef %skb_queue) #4
  %tobool.not31 = icmp eq ptr %call30, null
  br i1 %tobool.not31, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %entry.while.body_crit_edge
  %call32 = phi ptr [ %call, %sw.epilog.while.body_crit_edge ], [ %call30, %entry.while.body_crit_edge ]
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %call32, i32 0, i32 15
  %0 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr = lshr i16 %bf.load, 13
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %bf.lshr)
  %cond = icmp eq i16 %bf.lshr, 1
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear = and i16 %bf.load, 8191
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %bf.clear, ptr %pkt_type, align 8
  tail call void @ieee802154_rx(ptr noundef %add.ptr, ptr noundef nonnull %call32) #4
  br label %sw.epilog

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %bf.cast = zext i16 %bf.lshr to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %bf.cast) #4
  tail call void @kfree_skb_reason(ptr noundef nonnull %call32, i32 noundef 0) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  %call = tail call ptr @skb_dequeue(ptr noundef %skb_queue) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_xmit_worker(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee802154_free_hw(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %interfaces = getelementptr inbounds %struct.ieee802154_local, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %interfaces to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %interfaces, align 4
  %cmp.i.not = icmp eq ptr %1, %interfaces
  br i1 %cmp.i.not, label %do.end10, label %do.body5, !prof !49

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/mac802154/main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #4, !srcloc !50
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %iflist_mtx = getelementptr inbounds %struct.ieee802154_local, ptr %hw, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %iflist_mtx) #4
  %phy = getelementptr inbounds %struct.ieee802154_local, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 8
  tail call void @wpan_phy_free(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wpan_phy_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_register_hw(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.ieee802154_local, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %1, i32 0, i32 12, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.wpan_phy_name.exit_crit_edge

entry.wpan_phy_name.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %entry.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.wpan_phy_name.exit_crit_edge ]
  %call2 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.6, i32 noundef 917514, i32 noundef 1, ptr noundef %retval.0.i.i) #4
  %workqueue = getelementptr inbounds %struct.ieee802154_local, ptr %hw, i32 0, i32 6
  %6 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %workqueue, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %wpan_phy_name.exit.cleanup_crit_edge, label %if.end

wpan_phy_name.exit.cleanup_crit_edge:             ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %wpan_phy_name.exit
  %ifs_timer = getelementptr inbounds %struct.ieee802154_local, ptr %hw, i32 0, i32 7
  tail call void @hrtimer_init(ptr noundef %ifs_timer, i32 noundef 1, i32 noundef 1) #4
  %function = getelementptr inbounds %struct.ieee802154_local, ptr %hw, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ieee802154_xmit_ifs_timer, ptr %function, align 8
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 8
  %parent = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 2
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %parent.i = getelementptr inbounds %struct.wpan_phy, ptr %9, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %parent.i, align 8
  %13 = load ptr, ptr %phy, align 8
  %symbol_duration.i = getelementptr inbounds %struct.wpan_phy, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %symbol_duration.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %symbol_duration.i, align 4
  %conv.i = zext i8 %15 to i16
  %mul.i = mul nuw nsw i16 %conv.i, 40
  %lifs_period.i = getelementptr inbounds %struct.wpan_phy, ptr %13, i32 0, i32 10
  %16 = ptrtoint ptr %lifs_period.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %mul.i, ptr %lifs_period.i, align 2
  %mul4.i = mul nuw nsw i16 %conv.i, 12
  %sifs_period.i = getelementptr inbounds %struct.wpan_phy, ptr %13, i32 0, i32 11
  %17 = ptrtoint ptr %sifs_period.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %mul4.i, ptr %sifs_period.i, align 16
  %flags = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 1
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy, align 8
  %min_csma_backoffs = getelementptr inbounds %struct.wpan_phy, ptr %21, i32 0, i32 4, i32 9
  %22 = ptrtoint ptr %min_csma_backoffs to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %min_csma_backoffs, align 4
  %23 = load ptr, ptr %phy, align 8
  %max_csma_backoffs = getelementptr inbounds %struct.wpan_phy, ptr %23, i32 0, i32 4, i32 10
  %24 = ptrtoint ptr %max_csma_backoffs to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %max_csma_backoffs, align 1
  %25 = load ptr, ptr %phy, align 8
  %min_maxbe = getelementptr inbounds %struct.wpan_phy, ptr %25, i32 0, i32 4, i32 7
  %26 = ptrtoint ptr %min_maxbe to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %min_maxbe, align 2
  %27 = load ptr, ptr %phy, align 8
  %max_maxbe = getelementptr inbounds %struct.wpan_phy, ptr %27, i32 0, i32 4, i32 8
  %28 = ptrtoint ptr %max_maxbe to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 5, ptr %max_maxbe, align 1
  %29 = load ptr, ptr %phy, align 8
  %min_minbe = getelementptr inbounds %struct.wpan_phy, ptr %29, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %min_minbe to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %min_minbe, align 4
  %31 = load ptr, ptr %phy, align 8
  %max_minbe = getelementptr inbounds %struct.wpan_phy, ptr %31, i32 0, i32 4, i32 6
  %32 = ptrtoint ptr %max_minbe to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %max_minbe, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then9, %if.end.if.end21_crit_edge
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %and23 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy, align 8
  %min_frame_retries = getelementptr inbounds %struct.wpan_phy, ptr %36, i32 0, i32 4, i32 11
  %37 = ptrtoint ptr %min_frame_retries to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %min_frame_retries, align 2
  %38 = load ptr, ptr %phy, align 8
  %max_frame_retries = getelementptr inbounds %struct.wpan_phy, ptr %38, i32 0, i32 4, i32 12
  %39 = ptrtoint ptr %max_frame_retries to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %max_frame_retries, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end21.if.end30_crit_edge
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %and32 = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end37_crit_edge, label %if.then34

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy, align 8
  %iftypes = getelementptr inbounds %struct.wpan_phy, ptr %43, i32 0, i32 4, i32 3
  %44 = ptrtoint ptr %iftypes to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iftypes, align 4
  %or = or i32 %45, 2
  store i32 %or, ptr %iftypes, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end30.if.end37_crit_edge
  %46 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy, align 8
  %call39 = tail call i32 @wpan_phy_register(ptr noundef %47) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %if.end37.out_wq_crit_edge, label %if.end41

if.end37.out_wq_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_wq

if.end41:                                         ; preds = %if.end37
  tail call void @rtnl_lock() #4
  %call42 = tail call ptr @ieee802154_if_add(ptr noundef %hw, ptr noundef nonnull @.str.7, i8 noundef zeroext 1, i32 noundef 0, i64 noundef 0) #4
  %cmp.i = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  tail call void @rtnl_unlock() #4
  br i1 %cmp.i, label %if.then44, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %call42 to i32
  %49 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy, align 8
  tail call void @wpan_phy_unregister(ptr noundef %50) #4
  br label %out_wq

out_wq:                                           ; preds = %if.then44, %if.end37.out_wq_crit_edge
  %rc.0 = phi i32 [ %call39, %if.end37.out_wq_crit_edge ], [ %48, %if.then44 ]
  %51 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %52) #4
  br label %cleanup

cleanup:                                          ; preds = %out_wq, %if.end41.cleanup_crit_edge, %wpan_phy_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_wq ], [ -12, %wpan_phy_name.exit.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_xmit_ifs_timer(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wpan_phy_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802154_if_add(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wpan_phy_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee802154_unregister_hw(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tasklet = getelementptr inbounds %struct.ieee802154_local, ptr %hw, i32 0, i32 10
  tail call void @tasklet_kill(ptr noundef %tasklet) #4
  %workqueue = getelementptr inbounds %struct.ieee802154_local, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %1) #4
  tail call void @rtnl_lock() #4
  tail call void @ieee802154_remove_interfaces(ptr noundef %hw) #4
  tail call void @rtnl_unlock() #4
  %2 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #4
  %phy = getelementptr inbounds %struct.ieee802154_local, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 8
  tail call void @wpan_phy_unregister(ptr noundef %5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_remove_interfaces(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ieee802154_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ieee802154_iface_exit() #4
  tail call void @rcu_barrier() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_iface_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee802154_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ieee802154_iface_init() #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_rx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_iface_init() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !36, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac802154/main.c", i32 53, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/mac802154/main.c", i32 79, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ieee802154_alloc_hw._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @ieee802154_alloc_hw._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @ieee802154_alloc_hw.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../net/mac802154/main.c", i32 92, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ieee802154_alloc_hw.__key.4, !11, !"__key", i1 false, i1 false}
!11 = !{!"../net/mac802154/main.c", i32 98, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__ksymtab_ieee802154_alloc_hw, !14, !"__ksymtab_ieee802154_alloc_hw", i1 false, i1 false}
!14 = !{!"../net/mac802154/main.c", i32 114, i32 1}
!15 = !{ptr @__ksymtab_ieee802154_free_hw, !16, !"__ksymtab_ieee802154_free_hw", i1 false, i1 false}
!16 = !{!"../net/mac802154/main.c", i32 126, i32 1}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/mac802154/main.c", i32 147, i32 3}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/mac802154/main.c", i32 183, i32 33}
!21 = !{ptr @__ksymtab_ieee802154_register_hw, !22, !"__ksymtab_ieee802154_register_hw", i1 false, i1 false}
!22 = !{!"../net/mac802154/main.c", i32 203, i32 1}
!23 = !{ptr @__ksymtab_ieee802154_unregister_hw, !24, !"__ksymtab_ieee802154_unregister_hw", i1 false, i1 false}
!24 = !{!"../net/mac802154/main.c", i32 221, i32 1}
!25 = !{ptr @__initcall__kmod_mac802154__485_235_ieee802154_init4, !26, !"__initcall__kmod_mac802154__485_235_ieee802154_init4", i1 false, i1 false}
!26 = !{!"../net/mac802154/main.c", i32 235, i32 1}
!27 = !{ptr @__exitcall_ieee802154_exit, !28, !"__exitcall_ieee802154_exit", i1 false, i1 false}
!28 = !{!"../net/mac802154/main.c", i32 236, i32 1}
!29 = !{ptr @__UNIQUE_ID_description486, !30, !"__UNIQUE_ID_description486", i1 false, i1 false}
!30 = !{!"../net/mac802154/main.c", i32 238, i32 1}
!31 = !{ptr @__UNIQUE_ID_file487, !32, !"__UNIQUE_ID_file487", i1 false, i1 false}
!32 = !{!"../net/mac802154/main.c", i32 239, i32 1}
!33 = !{ptr @__UNIQUE_ID_license488, !32, !"__UNIQUE_ID_license488", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/mac802154/main.c", i32 38, i32 4}
!36 = !{ptr @skb_queue_head_init.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2157248466, i64 2157248951, i64 2157248503, i64 2157248559, i64 2157248593, i64 2157248617, i64 2157248658, i64 2157248679, i64 2157248707, i64 2157248741}
