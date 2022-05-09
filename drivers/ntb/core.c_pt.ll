; ModuleID = '/llk/IR_all_yes/drivers/ntb/core.c_pt.bc'
source_filename = "../drivers/ntb/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__ntb_register_client\22, \22a\22\09"
module asm "\09.weak\09__crc___ntb_register_client\09\09\09\09"
module asm "\09.long\09__crc___ntb_register_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ntb_register_client:\09\09\09\09\09"
module asm "\09.asciz \09\22__ntb_register_client\22\09\09\09\09\09"
module asm "__kstrtabns___ntb_register_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntb_unregister_client\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_unregister_client\09\09\09\09"
module asm "\09.long\09__crc_ntb_unregister_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_unregister_client:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_unregister_client\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_unregister_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntb_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_register_device\09\09\09\09"
module asm "\09.long\09__crc_ntb_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntb_unregister_device\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_unregister_device\09\09\09\09"
module asm "\09.long\09__crc_ntb_unregister_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntb_set_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_set_ctx\09\09\09\09"
module asm "\09.long\09__crc_ntb_set_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_set_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_set_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_set_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntb_clear_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_clear_ctx\09\09\09\09"
module asm "\09.long\09__crc_ntb_clear_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_clear_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_clear_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_clear_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntb_link_event\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_link_event\09\09\09\09"
module asm "\09.long\09__crc_ntb_link_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_link_event:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_link_event\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_link_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntb_db_event\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_db_event\09\09\09\09"
module asm "\09.long\09__crc_ntb_db_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_db_event:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_db_event\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_db_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntb_msg_event\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_msg_event\09\09\09\09"
module asm "\09.long\09__crc_ntb_msg_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_msg_event:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_msg_event\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_msg_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntb_default_port_number\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_default_port_number\09\09\09\09"
module asm "\09.long\09__crc_ntb_default_port_number\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_default_port_number:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_default_port_number\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_default_port_number:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntb_default_peer_port_count\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_default_peer_port_count\09\09\09\09"
module asm "\09.long\09__crc_ntb_default_peer_port_count\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_default_peer_port_count:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_default_peer_port_count\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_default_peer_port_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntb_default_peer_port_number\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_default_peer_port_number\09\09\09\09"
module asm "\09.long\09__crc_ntb_default_peer_port_number\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_default_peer_port_number:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_default_peer_port_number\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_default_peer_port_number:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntb_default_peer_port_idx\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_default_peer_port_idx\09\09\09\09"
module asm "\09.long\09__crc_ntb_default_peer_port_idx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_default_peer_port_idx:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_default_peer_port_idx\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_default_peer_port_idx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ntb_client = type { %struct.device_driver, %struct.ntb_client_ops }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ntb_client_ops = type { ptr, ptr }
%struct.ntb_dev = type { %struct.device, ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.completion, ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ntb_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.ntb_ctx_ops = type { ptr, ptr, ptr }

@__UNIQUE_ID_file236 = internal constant [25 x i8] c"ntb.file=drivers/ntb/ntb\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [25 x i8] c"ntb.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version238 = internal constant [16 x i8] c"ntb.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ntb\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_author239 = internal constant [45 x i8] c"ntb.author=Allen Hubbe <Allen.Hubbe@emc.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [42 x i8] c"ntb.description=PCIe NTB Driver Framework\00", section ".modinfo", align 1
@ntb_bus = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ntb_probe, ptr null, ptr @ntb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab___ntb_register_client = external dso_local constant [0 x i8], align 1
@__kstrtabns___ntb_register_client = external dso_local constant [0 x i8], align 1
@__ksymtab___ntb_register_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ntb_register_client to i32), ptr @__kstrtab___ntb_register_client, ptr @__kstrtabns___ntb_register_client }, section "___ksymtab+__ntb_register_client", align 4
@__kstrtab_ntb_unregister_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_unregister_client = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_unregister_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_unregister_client to i32), ptr @__kstrtab_ntb_unregister_client, ptr @__kstrtabns_ntb_unregister_client }, section "___ksymtab+ntb_unregister_client", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@ntb_register_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ntb->ctx_lock\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_ntb_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_register_device to i32), ptr @__kstrtab_ntb_register_device, ptr @__kstrtabns_ntb_register_device }, section "___ksymtab+ntb_register_device", align 4
@__kstrtab_ntb_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_unregister_device to i32), ptr @__kstrtab_ntb_unregister_device, ptr @__kstrtabns_ntb_unregister_device }, section "___ksymtab+ntb_unregister_device", align 4
@__kstrtab_ntb_set_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_set_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_set_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_set_ctx to i32), ptr @__kstrtab_ntb_set_ctx, ptr @__kstrtabns_ntb_set_ctx }, section "___ksymtab+ntb_set_ctx", align 4
@__kstrtab_ntb_clear_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_clear_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_clear_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_clear_ctx to i32), ptr @__kstrtab_ntb_clear_ctx, ptr @__kstrtabns_ntb_clear_ctx }, section "___ksymtab+ntb_clear_ctx", align 4
@__kstrtab_ntb_link_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_link_event = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_link_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_link_event to i32), ptr @__kstrtab_ntb_link_event, ptr @__kstrtabns_ntb_link_event }, section "___ksymtab+ntb_link_event", align 4
@__kstrtab_ntb_db_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_db_event = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_db_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_db_event to i32), ptr @__kstrtab_ntb_db_event, ptr @__kstrtabns_ntb_db_event }, section "___ksymtab+ntb_db_event", align 4
@__kstrtab_ntb_msg_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_msg_event = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_msg_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_msg_event to i32), ptr @__kstrtab_ntb_msg_event, ptr @__kstrtabns_ntb_msg_event }, section "___ksymtab+ntb_msg_event", align 4
@__kstrtab_ntb_default_port_number = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_default_port_number = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_default_port_number = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_default_port_number to i32), ptr @__kstrtab_ntb_default_port_number, ptr @__kstrtabns_ntb_default_port_number }, section "___ksymtab+ntb_default_port_number", align 4
@__kstrtab_ntb_default_peer_port_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_default_peer_port_count = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_default_peer_port_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_default_peer_port_count to i32), ptr @__kstrtab_ntb_default_peer_port_count, ptr @__kstrtabns_ntb_default_peer_port_count }, section "___ksymtab+ntb_default_peer_port_count", align 4
@__kstrtab_ntb_default_peer_port_number = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_default_peer_port_number = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_default_peer_port_number = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_default_peer_port_number to i32), ptr @__kstrtab_ntb_default_peer_port_number, ptr @__kstrtabns_ntb_default_peer_port_number }, section "___ksymtab+ntb_default_peer_port_number", align 4
@__kstrtab_ntb_default_peer_port_idx = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_default_peer_port_idx = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_default_peer_port_idx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_default_peer_port_idx to i32), ptr @__kstrtab_ntb_default_peer_port_idx, ptr @__kstrtabns_ntb_default_peer_port_idx }, section "___ksymtab+ntb_default_peer_port_idx", align 4
@__initcall__kmod_ntb__241_305_ntb_driver_init6 = internal global ptr @ntb_driver_init, section ".initcall6.init", align 4
@__exitcall_ntb_driver_exit = internal global ptr @ntb_driver_exit, section ".exitcall.exit", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@switch.table.ntb_default_peer_port_number = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 0, i32 1, i32 0], [16 x i8] zeroinitializer }, align 32
@switch.table.ntb_default_peer_port_idx = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 0, i32 1, i32 0], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 71, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [8 x i8] c"ntb_bus\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 295, i32 24 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 117, i32 26 }
@___asan_gen_.25 = private constant [22 x i8] c"../drivers/ntb/core.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 121, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 87, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [42 x i8] c"switch.table.ntb_default_peer_port_number\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [39 x i8] c"switch.table.ntb_default_peer_port_idx\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__UNIQUE_ID_version238, ptr @__exitcall_ntb_driver_exit, ptr @__initcall__kmod_ntb__241_305_ntb_driver_init6, ptr @__ksymtab___ntb_register_client, ptr @__ksymtab_ntb_clear_ctx, ptr @__ksymtab_ntb_db_event, ptr @__ksymtab_ntb_default_peer_port_count, ptr @__ksymtab_ntb_default_peer_port_idx, ptr @__ksymtab_ntb_default_peer_port_number, ptr @__ksymtab_ntb_default_port_number, ptr @__ksymtab_ntb_link_event, ptr @__ksymtab_ntb_msg_event, ptr @__ksymtab_ntb_register_device, ptr @__ksymtab_ntb_set_ctx, ptr @__ksymtab_ntb_unregister_client, ptr @__ksymtab_ntb_unregister_device, ptr @__modver_attr, ptr @ntb_driver_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ntb_bus, ptr @.str.3, ptr @ntb_register_device.__key, ptr @.str.4, ptr @init_completion.__key, ptr @.str.5, ptr @switch.table.ntb_default_peer_port_number, ptr @switch.table.ntb_default_peer_port_idx], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_bus to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_register_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ntb_default_peer_port_number to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ntb_default_peer_port_idx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ntb_register_client(ptr noundef %client, ptr noundef %mod, ptr noundef %mod_name) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %client, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.ntb_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %ntb_client_ops_is_valid.exit

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

ntb_client_ops_is_valid.exit:                     ; preds = %if.end
  %remove.i = getelementptr inbounds %struct.ntb_client, ptr %client, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove.i, align 4
  %tobool1.i.not = icmp eq ptr %3, null
  br i1 %tobool1.i.not, label %ntb_client_ops_is_valid.exit.return_crit_edge, label %if.end3

ntb_client_ops_is_valid.exit.return_crit_edge:    ; preds = %ntb_client_ops_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end3:                                          ; preds = %ntb_client_ops_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #7
  %4 = getelementptr inbounds i8, ptr %client, i32 12
  %5 = call ptr @memset(ptr %4, i32 0, i32 64)
  %bus = getelementptr inbounds %struct.device_driver, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ntb_bus, ptr %bus, align 4
  %7 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mod_name, ptr %client, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %client, i32 0, i32 2
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mod, ptr %owner, align 4
  %call8 = tail call i32 @driver_register(ptr noundef nonnull %client) #5
  br label %return

return:                                           ; preds = %if.end3, %ntb_client_ops_is_valid.exit.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %ntb_client_ops_is_valid.exit.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntb_unregister_client(ptr noundef %client) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @driver_unregister(ptr noundef %client) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntb_register_device(ptr noundef %ntb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ntb, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end3:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end3.return_crit_edge, label %if.end6

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end6:                                          ; preds = %if.end3
  %peer_port_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %peer_port_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer_port_count.i, align 4
  %tobool.not.i = icmp ne ptr %5, null
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  %cmp.i = xor i1 %tobool.not.i, %tobool1.not.i
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end6.return_crit_edge

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true.i:                                  ; preds = %if.end6
  %peer_port_number.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %peer_port_number.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer_port_number.i, align 4
  %tobool4.not.i = icmp ne ptr %9, null
  %cmp11.i = xor i1 %tobool1.not.i, %tobool4.not.i
  br i1 %cmp11.i, label %land.lhs.true12.i, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %peer_port_idx.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %peer_port_idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %peer_port_idx.i, align 4
  %tobool13.not.i = icmp ne ptr %11, null
  %cmp20.i = xor i1 %tobool1.not.i, %tobool13.not.i
  br i1 %cmp20.i, label %land.lhs.true21.i, label %land.lhs.true12.i.return_crit_edge

land.lhs.true12.i.return_crit_edge:               ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true21.i:                                ; preds = %land.lhs.true12.i
  %link_is_up.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %link_is_up.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link_is_up.i, align 4
  %tobool22.not.i = icmp eq ptr %13, null
  br i1 %tobool22.not.i, label %land.lhs.true21.i.return_crit_edge, label %land.lhs.true23.i

land.lhs.true21.i.return_crit_edge:               ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true23.i:                                ; preds = %land.lhs.true21.i
  %link_enable.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %link_enable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link_enable.i, align 4
  %tobool24.not.i = icmp eq ptr %15, null
  br i1 %tobool24.not.i, label %land.lhs.true23.i.return_crit_edge, label %land.lhs.true25.i

land.lhs.true23.i.return_crit_edge:               ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true25.i:                                ; preds = %land.lhs.true23.i
  %link_disable.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %link_disable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %link_disable.i, align 4
  %tobool26.not.i = icmp eq ptr %17, null
  br i1 %tobool26.not.i, label %land.lhs.true25.i.return_crit_edge, label %land.lhs.true27.i

land.lhs.true25.i.return_crit_edge:               ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true27.i:                                ; preds = %land.lhs.true25.i
  %mw_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %mw_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mw_count.i, align 4
  %tobool28.not.i = icmp eq ptr %19, null
  br i1 %tobool28.not.i, label %land.lhs.true27.i.return_crit_edge, label %land.lhs.true29.i

land.lhs.true27.i.return_crit_edge:               ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true29.i:                                ; preds = %land.lhs.true27.i
  %mw_get_align.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %mw_get_align.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mw_get_align.i, align 4
  %tobool30.not.i = icmp eq ptr %21, null
  br i1 %tobool30.not.i, label %land.lhs.true29.i.return_crit_edge, label %land.lhs.true31.i

land.lhs.true29.i.return_crit_edge:               ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true31.i:                                ; preds = %land.lhs.true29.i
  %mw_set_trans.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 9
  %22 = ptrtoint ptr %mw_set_trans.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mw_set_trans.i, align 4
  %tobool32.not.i = icmp eq ptr %23, null
  br i1 %tobool32.not.i, label %lor.lhs.false.i, label %land.lhs.true31.i.land.lhs.true34.i_crit_edge

land.lhs.true31.i.land.lhs.true34.i_crit_edge:    ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true34.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true31.i
  %peer_mw_set_trans.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 13
  %24 = ptrtoint ptr %peer_mw_set_trans.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %peer_mw_set_trans.i, align 4
  %tobool33.not.i = icmp eq ptr %25, null
  br i1 %tobool33.not.i, label %lor.lhs.false.i.return_crit_edge, label %lor.lhs.false.i.land.lhs.true34.i_crit_edge

lor.lhs.false.i.land.lhs.true34.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true34.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true34.i:                                ; preds = %lor.lhs.false.i.land.lhs.true34.i_crit_edge, %land.lhs.true31.i.land.lhs.true34.i_crit_edge
  %peer_mw_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 11
  %26 = ptrtoint ptr %peer_mw_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %peer_mw_count.i, align 4
  %tobool35.not.i = icmp eq ptr %27, null
  br i1 %tobool35.not.i, label %land.lhs.true34.i.return_crit_edge, label %land.lhs.true36.i

land.lhs.true34.i.return_crit_edge:               ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true36.i:                                ; preds = %land.lhs.true34.i
  %peer_mw_get_addr.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 12
  %28 = ptrtoint ptr %peer_mw_get_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %peer_mw_get_addr.i, align 4
  %tobool37.not.i = icmp eq ptr %29, null
  br i1 %tobool37.not.i, label %land.lhs.true36.i.return_crit_edge, label %land.lhs.true38.i

land.lhs.true36.i.return_crit_edge:               ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true38.i:                                ; preds = %land.lhs.true36.i
  %db_valid_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 16
  %30 = ptrtoint ptr %db_valid_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %db_valid_mask.i, align 4
  %tobool39.not.i = icmp eq ptr %31, null
  br i1 %tobool39.not.i, label %land.lhs.true38.i.return_crit_edge, label %land.lhs.true40.i

land.lhs.true38.i.return_crit_edge:               ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true40.i:                                ; preds = %land.lhs.true38.i
  %db_vector_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 17
  %32 = ptrtoint ptr %db_vector_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %db_vector_count.i, align 4
  %tobool41.not.i = icmp ne ptr %33, null
  %db_vector_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 18
  %34 = ptrtoint ptr %db_vector_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %db_vector_mask.i, align 4
  %tobool44.not.i = icmp eq ptr %35, null
  %cmp47.i = xor i1 %tobool41.not.i, %tobool44.not.i
  br i1 %cmp47.i, label %land.lhs.true48.i, label %land.lhs.true40.i.return_crit_edge

land.lhs.true40.i.return_crit_edge:               ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true48.i:                                ; preds = %land.lhs.true40.i
  %db_read.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 19
  %36 = ptrtoint ptr %db_read.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %db_read.i, align 4
  %tobool49.not.i = icmp eq ptr %37, null
  br i1 %tobool49.not.i, label %land.lhs.true48.i.return_crit_edge, label %land.lhs.true50.i

land.lhs.true48.i.return_crit_edge:               ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true50.i:                                ; preds = %land.lhs.true48.i
  %db_clear.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 21
  %38 = ptrtoint ptr %db_clear.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %db_clear.i, align 4
  %tobool51.not.i = icmp eq ptr %39, null
  br i1 %tobool51.not.i, label %land.lhs.true50.i.return_crit_edge, label %land.lhs.true52.i

land.lhs.true50.i.return_crit_edge:               ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true52.i:                                ; preds = %land.lhs.true50.i
  %db_set_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 23
  %40 = ptrtoint ptr %db_set_mask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %db_set_mask.i, align 4
  %tobool53.not.i = icmp eq ptr %41, null
  br i1 %tobool53.not.i, label %land.lhs.true52.i.return_crit_edge, label %land.lhs.true54.i

land.lhs.true52.i.return_crit_edge:               ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true54.i:                                ; preds = %land.lhs.true52.i
  %db_clear_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 24
  %42 = ptrtoint ptr %db_clear_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %db_clear_mask.i, align 4
  %tobool55.not.i = icmp eq ptr %43, null
  br i1 %tobool55.not.i, label %land.lhs.true54.i.return_crit_edge, label %land.lhs.true56.i

land.lhs.true54.i.return_crit_edge:               ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true56.i:                                ; preds = %land.lhs.true54.i
  %peer_db_set.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 27
  %44 = ptrtoint ptr %peer_db_set.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %peer_db_set.i, align 4
  %tobool57.not.i = icmp eq ptr %45, null
  br i1 %tobool57.not.i, label %land.lhs.true56.i.return_crit_edge, label %land.lhs.true58.i

land.lhs.true56.i.return_crit_edge:               ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true58.i:                                ; preds = %land.lhs.true56.i
  %spad_read.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 34
  %46 = ptrtoint ptr %spad_read.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %spad_read.i, align 4
  %tobool59.not.i = icmp ne ptr %47, null
  %spad_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 33
  %48 = ptrtoint ptr %spad_count.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %spad_count.i, align 4
  %tobool62.not.i = icmp eq ptr %49, null
  %cmp65.i = xor i1 %tobool59.not.i, %tobool62.not.i
  br i1 %cmp65.i, label %land.lhs.true66.i, label %land.lhs.true58.i.return_crit_edge

land.lhs.true58.i.return_crit_edge:               ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true66.i:                                ; preds = %land.lhs.true58.i
  %spad_write.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 35
  %50 = ptrtoint ptr %spad_write.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %spad_write.i, align 4
  %tobool67.not.i = icmp ne ptr %51, null
  %cmp74.i = xor i1 %tobool62.not.i, %tobool67.not.i
  br i1 %cmp74.i, label %land.lhs.true75.i, label %land.lhs.true66.i.return_crit_edge

land.lhs.true66.i.return_crit_edge:               ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true75.i:                                ; preds = %land.lhs.true66.i
  %peer_spad_write.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 38
  %52 = ptrtoint ptr %peer_spad_write.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %peer_spad_write.i, align 4
  %tobool76.not.i = icmp ne ptr %53, null
  %cmp83.i = xor i1 %tobool62.not.i, %tobool76.not.i
  br i1 %cmp83.i, label %land.lhs.true84.i, label %land.lhs.true75.i.return_crit_edge

land.lhs.true75.i.return_crit_edge:               ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true84.i:                                ; preds = %land.lhs.true75.i
  %msg_inbits.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 40
  %54 = ptrtoint ptr %msg_inbits.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %msg_inbits.i, align 4
  %tobool85.not.i = icmp eq ptr %55, null
  %msg_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 39
  %56 = ptrtoint ptr %msg_count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %msg_count.i, align 4
  %tobool88.i = icmp ne ptr %57, null
  %cmp91.i = xor i1 %tobool85.not.i, %tobool88.i
  br i1 %cmp91.i, label %land.lhs.true92.i, label %land.lhs.true84.i.return_crit_edge

land.lhs.true84.i.return_crit_edge:               ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true92.i:                                ; preds = %land.lhs.true84.i
  %msg_outbits.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 41
  %58 = ptrtoint ptr %msg_outbits.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %msg_outbits.i, align 4
  %tobool93.not.i = icmp eq ptr %59, null
  %cmp100.i = xor i1 %tobool88.i, %tobool93.not.i
  br i1 %cmp100.i, label %land.lhs.true101.i, label %land.lhs.true92.i.return_crit_edge

land.lhs.true92.i.return_crit_edge:               ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true101.i:                               ; preds = %land.lhs.true92.i
  %msg_read_sts.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 42
  %60 = ptrtoint ptr %msg_read_sts.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %msg_read_sts.i, align 4
  %tobool102.not.i = icmp eq ptr %61, null
  %cmp109.i = xor i1 %tobool88.i, %tobool102.not.i
  br i1 %cmp109.i, label %land.lhs.true110.i, label %land.lhs.true101.i.return_crit_edge

land.lhs.true101.i.return_crit_edge:              ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true110.i:                               ; preds = %land.lhs.true101.i
  %msg_clear_sts.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 43
  %62 = ptrtoint ptr %msg_clear_sts.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %msg_clear_sts.i, align 4
  %tobool111.not.i = icmp eq ptr %63, null
  %cmp118.i = xor i1 %tobool88.i, %tobool111.not.i
  br i1 %cmp118.i, label %land.lhs.true119.i, label %land.lhs.true110.i.return_crit_edge

land.lhs.true110.i.return_crit_edge:              ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true119.i:                               ; preds = %land.lhs.true110.i
  %msg_read.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 46
  %64 = ptrtoint ptr %msg_read.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %msg_read.i, align 4
  %tobool120.not.i = icmp eq ptr %65, null
  %cmp127.i = xor i1 %tobool88.i, %tobool120.not.i
  br i1 %cmp127.i, label %ntb_dev_ops_is_valid.exit, label %land.lhs.true119.i.return_crit_edge

land.lhs.true119.i.return_crit_edge:              ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

ntb_dev_ops_is_valid.exit:                        ; preds = %land.lhs.true119.i
  %peer_msg_write.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 47
  %66 = ptrtoint ptr %peer_msg_write.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %peer_msg_write.i, align 4
  %tobool129.i = icmp ne ptr %67, null
  %tobool8.not = xor i1 %tobool88.i, %tobool129.i
  br i1 %tobool8.not, label %ntb_dev_ops_is_valid.exit.return_crit_edge, label %if.end10

ntb_dev_ops_is_valid.exit.return_crit_edge:       ; preds = %ntb_dev_ops_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end10:                                         ; preds = %ntb_dev_ops_is_valid.exit
  %released = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 7
  %68 = ptrtoint ptr %released to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %released, align 4
  %wait.i = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #5
  %bus = getelementptr inbounds %struct.device, ptr %ntb, i32 0, i32 5
  %69 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @ntb_bus, ptr %bus, align 8
  %70 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %parent = getelementptr inbounds %struct.device, ptr %ntb, i32 0, i32 1
  %72 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %dev12, ptr %parent, align 8
  %release = getelementptr inbounds %struct.device, ptr %ntb, i32 0, i32 35
  %73 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @ntb_dev_release, ptr %release, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44, i32 3
  %74 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end10.pci_name.exit_crit_edge

if.end10.pci_name.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev12, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end10.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %77, %if.end.i.i ], [ %75, %if.end10.pci_name.exit_crit_edge ]
  %call18 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %ntb, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i.i) #5
  %ctx = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 4
  %78 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %ctx, align 4
  %ctx_ops = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 5
  %79 = ptrtoint ptr %ctx_ops to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %ctx_ops, align 8
  %ctx_lock = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %ctx_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @ntb_register_device.__key, i16 noundef signext 3) #5
  %call21 = tail call i32 @device_register(ptr noundef nonnull %ntb) #5
  br label %return

return:                                           ; preds = %pci_name.exit, %ntb_dev_ops_is_valid.exit.return_crit_edge, %land.lhs.true119.i.return_crit_edge, %land.lhs.true110.i.return_crit_edge, %land.lhs.true101.i.return_crit_edge, %land.lhs.true92.i.return_crit_edge, %land.lhs.true84.i.return_crit_edge, %land.lhs.true75.i.return_crit_edge, %land.lhs.true66.i.return_crit_edge, %land.lhs.true58.i.return_crit_edge, %land.lhs.true56.i.return_crit_edge, %land.lhs.true54.i.return_crit_edge, %land.lhs.true52.i.return_crit_edge, %land.lhs.true50.i.return_crit_edge, %land.lhs.true48.i.return_crit_edge, %land.lhs.true40.i.return_crit_edge, %land.lhs.true38.i.return_crit_edge, %land.lhs.true36.i.return_crit_edge, %land.lhs.true34.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %land.lhs.true29.i.return_crit_edge, %land.lhs.true27.i.return_crit_edge, %land.lhs.true25.i.return_crit_edge, %land.lhs.true23.i.return_crit_edge, %land.lhs.true21.i.return_crit_edge, %land.lhs.true12.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %if.end6.return_crit_edge, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call21, %pci_name.exit ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %if.end3.return_crit_edge ], [ -22, %ntb_dev_ops_is_valid.exit.return_crit_edge ], [ -22, %land.lhs.true119.i.return_crit_edge ], [ -22, %land.lhs.true110.i.return_crit_edge ], [ -22, %land.lhs.true101.i.return_crit_edge ], [ -22, %land.lhs.true92.i.return_crit_edge ], [ -22, %land.lhs.true84.i.return_crit_edge ], [ -22, %land.lhs.true75.i.return_crit_edge ], [ -22, %land.lhs.true66.i.return_crit_edge ], [ -22, %land.lhs.true58.i.return_crit_edge ], [ -22, %land.lhs.true56.i.return_crit_edge ], [ -22, %land.lhs.true54.i.return_crit_edge ], [ -22, %land.lhs.true52.i.return_crit_edge ], [ -22, %land.lhs.true50.i.return_crit_edge ], [ -22, %land.lhs.true48.i.return_crit_edge ], [ -22, %land.lhs.true40.i.return_crit_edge ], [ -22, %land.lhs.true38.i.return_crit_edge ], [ -22, %land.lhs.true36.i.return_crit_edge ], [ -22, %land.lhs.true34.i.return_crit_edge ], [ -22, %lor.lhs.false.i.return_crit_edge ], [ -22, %land.lhs.true29.i.return_crit_edge ], [ -22, %land.lhs.true27.i.return_crit_edge ], [ -22, %land.lhs.true25.i.return_crit_edge ], [ -22, %land.lhs.true23.i.return_crit_edge ], [ -22, %land.lhs.true21.i.return_crit_edge ], [ -22, %land.lhs.true12.i.return_crit_edge ], [ -22, %land.lhs.true.i.return_crit_edge ], [ -22, %if.end6.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntb_dev_release(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %released = getelementptr inbounds %struct.ntb_dev, ptr %dev, i32 0, i32 7
  tail call void @complete(ptr noundef %released) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntb_unregister_device(ptr noundef %ntb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_unregister(ptr noundef %ntb) #5
  %released = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 7
  tail call void @wait_for_completion(ptr noundef %released) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntb_set_ctx(ptr noundef %ntb, ptr noundef %ctx, ptr noundef %ctx_ops) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_ops1 = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 5
  %0 = ptrtoint ptr %ctx_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_ops1, align 8
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %do.body5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx_lock = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 6
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctx_lock) #5
  %ctx10 = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 4
  %2 = ptrtoint ptr %ctx10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctx, ptr %ctx10, align 4
  %3 = ptrtoint ptr %ctx_ops1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctx_ops, ptr %ctx_ops1, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call7) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntb_clear_ctx(ptr noundef %ntb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_lock = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctx_lock) #5
  %ctx_ops = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 5
  %0 = ptrtoint ptr %ctx_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ctx_ops, align 8
  %ctx = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 4
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %ctx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntb_link_event(ptr noundef %ntb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_lock = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctx_lock) #5
  %ctx_ops = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 5
  %0 = ptrtoint ptr %ctx_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  tail call void %3(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntb_db_event(ptr noundef %ntb, i32 noundef %vector) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_lock = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctx_lock) #5
  %ctx_ops = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 5
  %0 = ptrtoint ptr %ctx_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %db_event = getelementptr inbounds %struct.ntb_ctx_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %db_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db_event, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  tail call void %3(ptr noundef %5, i32 noundef %vector) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntb_msg_event(ptr noundef %ntb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_lock = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctx_lock) #5
  %ctx_ops = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 5
  %0 = ptrtoint ptr %ctx_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %msg_event = getelementptr inbounds %struct.ntb_ctx_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msg_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg_event, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  tail call void %3(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ntb_default_port_number(ptr nocapture noundef readonly %ntb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %topo = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 2
  %0 = ptrtoint ptr %topo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %topo, align 4
  %2 = add i32 %1, -1
  %switch.and = and i32 %2, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %3 = zext i1 %switch.selectcmp to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ntb_default_peer_port_count(ptr nocapture readnone %ntb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ntb_default_peer_port_number(ptr nocapture noundef readonly %ntb, i32 noundef %pidx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp.not = icmp eq i32 %pidx, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %topo = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 2
  %0 = ptrtoint ptr %topo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %topo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %2 = icmp ult i32 %1, 4
  br i1 %2, label %switch.lookup, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ntb_default_peer_port_number, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ntb_default_peer_port_idx(ptr nocapture noundef readonly %ntb, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %topo.i = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 2
  %0 = ptrtoint ptr %topo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %topo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %2 = icmp ult i32 %1, 4
  br i1 %2, label %switch.lookup, label %entry.ntb_default_peer_port_number.exit_crit_edge

entry.ntb_default_peer_port_number.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ntb_default_peer_port_number.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ntb_default_peer_port_idx, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ntb_default_peer_port_number.exit

ntb_default_peer_port_number.exit:                ; preds = %switch.lookup, %entry.ntb_default_peer_port_number.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.ntb_default_peer_port_number.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %port)
  %cmp1.not = icmp eq i32 %retval.0.i, %port
  %retval.0 = select i1 %cmp1.not, i32 0, i32 -22
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @ntb_bus) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ntb_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bus_unregister(ptr noundef nonnull @ntb_bus) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_probe(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_device(ptr noundef %dev) #5
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %ops = getelementptr inbounds %struct.ntb_client, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %call4 = tail call i32 %3(ptr noundef %1, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @put_device(ptr noundef %dev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntb_remove(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %remove = getelementptr inbounds %struct.ntb_client, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  tail call void %3(ptr noundef nonnull %1, ptr noundef %dev) #5
  tail call void @put_device(ptr noundef %dev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__UNIQUE_ID_file236, !1, !"__UNIQUE_ID_file236", i1 false, i1 false}
!1 = !{!"../drivers/ntb/core.c", i32 70, i32 1}
!2 = !{ptr @__UNIQUE_ID_license237, !1, !"__UNIQUE_ID_license237", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_version238, !4, !"__UNIQUE_ID_version238", i1 false, i1 false}
!4 = !{!"../drivers/ntb/core.c", i32 71, i32 1}
!5 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__modver_attr, !4, !"__modver_attr", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author239, !10, !"__UNIQUE_ID_author239", i1 false, i1 false}
!10 = !{!"../drivers/ntb/core.c", i32 72, i32 1}
!11 = !{ptr @__UNIQUE_ID_description240, !12, !"__UNIQUE_ID_description240", i1 false, i1 false}
!12 = !{!"../drivers/ntb/core.c", i32 73, i32 1}
!13 = !{ptr @__ksymtab___ntb_register_client, !14, !"__ksymtab___ntb_register_client", i1 false, i1 false}
!14 = !{!"../drivers/ntb/core.c", i32 93, i32 1}
!15 = !{ptr @__ksymtab_ntb_unregister_client, !16, !"__ksymtab_ntb_unregister_client", i1 false, i1 false}
!16 = !{!"../drivers/ntb/core.c", i32 99, i32 1}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/ntb/core.c", i32 117, i32 26}
!19 = !{ptr @ntb_register_device.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/ntb/core.c", i32 121, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__ksymtab_ntb_register_device, !23, !"__ksymtab_ntb_register_device", i1 false, i1 false}
!23 = !{!"../drivers/ntb/core.c", i32 125, i32 1}
!24 = !{ptr @__ksymtab_ntb_unregister_device, !25, !"__ksymtab_ntb_unregister_device", i1 false, i1 false}
!25 = !{!"../drivers/ntb/core.c", i32 132, i32 1}
!26 = !{ptr @__ksymtab_ntb_set_ctx, !27, !"__ksymtab_ntb_set_ctx", i1 false, i1 false}
!27 = !{!"../drivers/ntb/core.c", i32 153, i32 1}
!28 = !{ptr @__ksymtab_ntb_clear_ctx, !29, !"__ksymtab_ntb_clear_ctx", i1 false, i1 false}
!29 = !{!"../drivers/ntb/core.c", i32 166, i32 1}
!30 = !{ptr @__ksymtab_ntb_link_event, !31, !"__ksymtab_ntb_link_event", i1 false, i1 false}
!31 = !{!"../drivers/ntb/core.c", i32 179, i32 1}
!32 = !{ptr @__ksymtab_ntb_db_event, !33, !"__ksymtab_ntb_db_event", i1 false, i1 false}
!33 = !{!"../drivers/ntb/core.c", i32 192, i32 1}
!34 = !{ptr @__ksymtab_ntb_msg_event, !35, !"__ksymtab_ntb_msg_event", i1 false, i1 false}
!35 = !{!"../drivers/ntb/core.c", i32 205, i32 1}
!36 = !{ptr @__ksymtab_ntb_default_port_number, !37, !"__ksymtab_ntb_default_port_number", i1 false, i1 false}
!37 = !{!"../drivers/ntb/core.c", i32 220, i32 1}
!38 = !{ptr @__ksymtab_ntb_default_peer_port_count, !39, !"__ksymtab_ntb_default_peer_port_count", i1 false, i1 false}
!39 = !{!"../drivers/ntb/core.c", i32 226, i32 1}
!40 = !{ptr @__ksymtab_ntb_default_peer_port_number, !41, !"__ksymtab_ntb_default_peer_port_number", i1 false, i1 false}
!41 = !{!"../drivers/ntb/core.c", i32 244, i32 1}
!42 = !{ptr @__ksymtab_ntb_default_peer_port_idx, !43, !"__ksymtab_ntb_default_peer_port_idx", i1 false, i1 false}
!43 = !{!"../drivers/ntb/core.c", i32 255, i32 1}
!44 = !{ptr @__initcall__kmod_ntb__241_305_ntb_driver_init6, !45, !"__initcall__kmod_ntb__241_305_ntb_driver_init6", i1 false, i1 false}
!45 = !{!"../drivers/ntb/core.c", i32 305, i32 1}
!46 = !{ptr @__exitcall_ntb_driver_exit, !47, !"__exitcall_ntb_driver_exit", i1 false, i1 false}
!47 = !{!"../drivers/ntb/core.c", i32 311, i32 1}
!48 = !{ptr @init_completion.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../include/linux/completion.h", i32 87, i32 2}
!50 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ntb_bus, !52, !"ntb_bus", i1 false, i1 false}
!52 = !{!"../drivers/ntb/core.c", i32 295, i32 24}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
