; ModuleID = '/llk/IR_all_yes/drivers/most/core.c_pt.bc'
source_filename = "../drivers/most/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+most_submit_mbo\22, \22a\22\09"
module asm "\09.weak\09__crc_most_submit_mbo\09\09\09\09"
module asm "\09.long\09__crc_most_submit_mbo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_most_submit_mbo:\09\09\09\09\09"
module asm "\09.asciz \09\22most_submit_mbo\22\09\09\09\09\09"
module asm "__kstrtabns_most_submit_mbo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+channel_has_mbo\22, \22a\22\09"
module asm "\09.weak\09__crc_channel_has_mbo\09\09\09\09"
module asm "\09.long\09__crc_channel_has_mbo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_channel_has_mbo:\09\09\09\09\09"
module asm "\09.asciz \09\22channel_has_mbo\22\09\09\09\09\09"
module asm "__kstrtabns_channel_has_mbo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+most_get_mbo\22, \22a\22\09"
module asm "\09.weak\09__crc_most_get_mbo\09\09\09\09"
module asm "\09.long\09__crc_most_get_mbo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_most_get_mbo:\09\09\09\09\09"
module asm "\09.asciz \09\22most_get_mbo\22\09\09\09\09\09"
module asm "__kstrtabns_most_get_mbo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+most_put_mbo\22, \22a\22\09"
module asm "\09.weak\09__crc_most_put_mbo\09\09\09\09"
module asm "\09.long\09__crc_most_put_mbo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_most_put_mbo:\09\09\09\09\09"
module asm "\09.asciz \09\22most_put_mbo\22\09\09\09\09\09"
module asm "__kstrtabns_most_put_mbo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+most_start_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_most_start_channel\09\09\09\09"
module asm "\09.long\09__crc_most_start_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_most_start_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22most_start_channel\22\09\09\09\09\09"
module asm "__kstrtabns_most_start_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+most_stop_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_most_stop_channel\09\09\09\09"
module asm "\09.long\09__crc_most_stop_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_most_stop_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22most_stop_channel\22\09\09\09\09\09"
module asm "__kstrtabns_most_stop_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+most_register_component\22, \22a\22\09"
module asm "\09.weak\09__crc_most_register_component\09\09\09\09"
module asm "\09.long\09__crc_most_register_component\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_most_register_component:\09\09\09\09\09"
module asm "\09.asciz \09\22most_register_component\22\09\09\09\09\09"
module asm "__kstrtabns_most_register_component:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+most_deregister_component\22, \22a\22\09"
module asm "\09.weak\09__crc_most_deregister_component\09\09\09\09"
module asm "\09.long\09__crc_most_deregister_component\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_most_deregister_component:\09\09\09\09\09"
module asm "\09.asciz \09\22most_deregister_component\22\09\09\09\09\09"
module asm "__kstrtabns_most_deregister_component:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+most_register_interface\22, \22a\22\09"
module asm "\09.weak\09__crc_most_register_interface\09\09\09\09"
module asm "\09.long\09__crc_most_register_interface\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_most_register_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22most_register_interface\22\09\09\09\09\09"
module asm "__kstrtabns_most_register_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+most_deregister_interface\22, \22a\22\09"
module asm "\09.weak\09__crc_most_deregister_interface\09\09\09\09"
module asm "\09.long\09__crc_most_deregister_interface\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_most_deregister_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22most_deregister_interface\22\09\09\09\09\09"
module asm "__kstrtabns_most_deregister_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+most_stop_enqueue\22, \22a\22\09"
module asm "\09.weak\09__crc_most_stop_enqueue\09\09\09\09"
module asm "\09.long\09__crc_most_stop_enqueue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_most_stop_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22most_stop_enqueue\22\09\09\09\09\09"
module asm "__kstrtabns_most_stop_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+most_resume_enqueue\22, \22a\22\09"
module asm "\09.weak\09__crc_most_resume_enqueue\09\09\09\09"
module asm "\09.long\09__crc_most_resume_enqueue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_most_resume_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22most_resume_enqueue\22\09\09\09\09\09"
module asm "__kstrtabns_most_resume_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.anon.71 = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.most_interface = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.interface_private = type { i32, [80 x i8], [64 x ptr], %struct.list_head }
%struct.most_component = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.most_channel = type { %struct.device, %struct.completion, %struct.atomic_t, %struct.atomic_t, i16, [80 x i8], i8, %struct.mutex, %struct.mutex, i32, ptr, %struct.most_channel_config, i8, i8, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.pipe, %struct.pipe, %struct.list_head, ptr, %struct.wait_queue_head }
%struct.most_channel_config = type { i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.pipe = type { ptr, i32, i32 }
%struct.mbo = type { ptr, ptr, %struct.list_head, ptr, ptr, i16, ptr, i32, i16, i16, i32, ptr }
%struct.most_channel_capability = type { i16, i16, i16, i16, i16, i16, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.show_links_data = type { i32, ptr }

@ch_data_type = internal constant { [5 x %struct.anon.71], [56 x i8] } { [5 x %struct.anon.71] [%struct.anon.71 { i32 1, ptr @.str.42 }, %struct.anon.71 { i32 2, ptr @.str.43 }, %struct.anon.71 { i32 32, ptr @.str.44 }, %struct.anon.71 { i32 4, ptr @.str.45 }, %struct.anon.71 { i32 4, ptr @.str.46 }], [56 x i8] zeroinitializer }, align 32
@most_set_cfg_datatype._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 631, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid attribute settings\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"most_set_cfg_datatype\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/most/core.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@most_set_cfg_datatype._entry_ptr = internal global ptr @most_set_cfg_datatype._entry, section ".printk_index", align 4
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dir_rx\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dir_tx\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@most_set_cfg_direction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 650, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid direction\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"most_set_cfg_direction\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@most_set_cfg_direction._entry_ptr = internal global ptr @most_set_cfg_direction._entry, section ".printk_index", align 4
@most_submit_mbo.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Bad buffer or missing channel reference\0A\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_most_submit_mbo = external dso_local constant [0 x i8], align 1
@__kstrtabns_most_submit_mbo = external dso_local constant [0 x i8], align 1
@__ksymtab_most_submit_mbo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @most_submit_mbo to i32), ptr @__kstrtab_most_submit_mbo, ptr @__kstrtabns_most_submit_mbo }, section "___ksymtab_gpl+most_submit_mbo", align 4
@__kstrtab_channel_has_mbo = external dso_local constant [0 x i8], align 1
@__kstrtabns_channel_has_mbo = external dso_local constant [0 x i8], align 1
@__ksymtab_channel_has_mbo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @channel_has_mbo to i32), ptr @__kstrtab_channel_has_mbo, ptr @__kstrtabns_channel_has_mbo }, section "___ksymtab_gpl+channel_has_mbo", align 4
@dummy_num_buffers = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_most_get_mbo = external dso_local constant [0 x i8], align 1
@__kstrtabns_most_get_mbo = external dso_local constant [0 x i8], align 1
@__ksymtab_most_get_mbo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @most_get_mbo to i32), ptr @__kstrtab_most_get_mbo, ptr @__kstrtabns_most_get_mbo }, section "___ksymtab_gpl+most_get_mbo", align 4
@__kstrtab_most_put_mbo = external dso_local constant [0 x i8], align 1
@__kstrtabns_most_put_mbo = external dso_local constant [0 x i8], align 1
@__ksymtab_most_put_mbo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @most_put_mbo to i32), ptr @__kstrtab_most_put_mbo, ptr @__kstrtabns_most_put_mbo }, section "___ksymtab_gpl+most_put_mbo", align 4
@most_start_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1105, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to acquire HDM lock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"most_start_channel\00", [45 x i8] zeroinitializer }, align 32
@most_start_channel._entry_ptr = internal global ptr @most_start_channel._entry, section ".printk_index", align 4
@most_start_channel._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 1112, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Channel configuration failed. Go check settings...\0A\00", [44 x i8] zeroinitializer }, align 32
@most_start_channel._entry_ptr.17 = internal global ptr @most_start_channel._entry.15, section ".printk_index", align 4
@most_start_channel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&c->hdm_fifo_wq\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_most_start_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_most_start_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_most_start_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @most_start_channel to i32), ptr @__kstrtab_most_start_channel, ptr @__kstrtabns_most_start_channel }, section "___ksymtab_gpl+most_start_channel", align 4
@most_stop_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Bad interface or index out of range\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"most_stop_channel\00", [46 x i8] zeroinitializer }, align 32
@most_stop_channel._entry_ptr = internal global ptr @most_stop_channel._entry, section ".printk_index", align 4
@most_stop_channel._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 1187, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to stop channel %d of interface %s\0A\00", [53 x i8] zeroinitializer }, align 32
@most_stop_channel._entry_ptr.23 = internal global ptr @most_stop_channel._entry.21, section ".printk_index", align 4
@__kstrtab_most_stop_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_most_stop_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_most_stop_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @most_stop_channel to i32), ptr @__kstrtab_most_stop_channel, ptr @__kstrtabns_most_stop_channel }, section "___ksymtab_gpl+most_stop_channel", align 4
@most_register_component._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013Bad component\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"most_register_component\00", [40 x i8] zeroinitializer }, align 32
@most_register_component._entry_ptr = internal global ptr @most_register_component._entry, section ".printk_index", align 4
@comp_list = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@__kstrtab_most_register_component = external dso_local constant [0 x i8], align 1
@__kstrtabns_most_register_component = external dso_local constant [0 x i8], align 1
@__ksymtab_most_register_component = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @most_register_component to i32), ptr @__kstrtab_most_register_component, ptr @__kstrtabns_most_register_component }, section "___ksymtab_gpl+most_register_component", align 4
@most_deregister_component._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.26, ptr @.str.2, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"most_deregister_component\00", [38 x i8] zeroinitializer }, align 32
@most_deregister_component._entry_ptr = internal global ptr @most_deregister_component._entry, section ".printk_index", align 4
@mostbus = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.52, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @most_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_most_deregister_component = external dso_local constant [0 x i8], align 1
@__kstrtabns_most_deregister_component = external dso_local constant [0 x i8], align 1
@__ksymtab_most_deregister_component = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @most_deregister_component to i32), ptr @__kstrtab_most_deregister_component, ptr @__kstrtabns_most_deregister_component }, section "___ksymtab_gpl+most_deregister_component", align 4
@mdev_id = internal global { %struct.ida, [44 x i8] } zeroinitializer, align 32
@most_register_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1291, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate device ID\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"most_register_interface\00", [40 x i8] zeroinitializer }, align 32
@most_register_interface._entry_ptr = internal global ptr @most_register_interface._entry, section ".printk_index", align 4
@interface_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @interface_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@most_register_interface._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 1308, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register interface device\0A\00", [59 x i8] zeroinitializer }, align 32
@most_register_interface._entry_ptr.31 = internal global ptr @most_register_interface._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ch%d\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@channel_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @channel_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@most_register_interface.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&c->fifo_lock\00", [18 x i8] zeroinitializer }, align 32
@most_register_interface.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&c->start_mutex\00", [16 x i8] zeroinitializer }, align 32
@most_register_interface.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&c->nq_mutex\00", [19 x i8] zeroinitializer }, align 32
@most_register_interface._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.28, ptr @.str.2, i32 1352, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register channel device\0A\00", [61 x i8] zeroinitializer }, align 32
@most_register_interface._entry_ptr.41 = internal global ptr @most_register_interface._entry.39, section ".printk_index", align 4
@__kstrtab_most_register_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_most_register_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_most_register_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @most_register_interface to i32), ptr @__kstrtab_most_register_interface, ptr @__kstrtabns_most_register_interface }, section "___ksymtab_gpl+most_register_interface", align 4
@__kstrtab_most_deregister_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_most_deregister_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_most_deregister_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @most_deregister_interface to i32), ptr @__kstrtab_most_deregister_interface, ptr @__kstrtabns_most_deregister_interface }, section "___ksymtab_gpl+most_deregister_interface", align 4
@__kstrtab_most_stop_enqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_most_stop_enqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_most_stop_enqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @most_stop_enqueue to i32), ptr @__kstrtab_most_stop_enqueue, ptr @__kstrtabns_most_stop_enqueue }, section "___ksymtab_gpl+most_stop_enqueue", align 4
@__kstrtab_most_resume_enqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_most_resume_enqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_most_resume_enqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @most_resume_enqueue to i32), ptr @__kstrtab_most_resume_enqueue, ptr @__kstrtabns_most_resume_enqueue }, section "___ksymtab_gpl+most_resume_enqueue", align 4
@mostbus_driver = internal global { %struct.device_driver, [52 x i8] } { %struct.device_driver { ptr @.str.93, ptr @mostbus, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mc_attr_groups, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_most_core__230_1484_most_init4 = internal global ptr @most_init, section ".initcall4.init", align 4
@__exitcall_most_exit = internal global ptr @most_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file231 = internal constant [38 x i8] c"most_core.file=drivers/most/most_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [22 x i8] c"most_core.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [65 x i8] c"most_core.author=Christian Gromm <christian.gromm@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [63 x i8] c"most_core.description=Core module of stacked MOST Linux driver\00", section ".modinfo", align 1
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"async\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"isoc\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"isoc_avp\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hdm_fifo_%d\00", [20 x i8] zeroinitializer }, align 32
@hdm_enqueue_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 801, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Buffer enqueue failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hdm_enqueue_thread\00", [45 x i8] zeroinitializer }, align 32
@hdm_enqueue_thread._entry_ptr = internal global ptr @hdm_enqueue_thread._entry, section ".printk_index", align 4
@flush_channel_fifos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Channel or trash fifo not empty\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flush_channel_fifos\00", [44 x i8] zeroinitializer }, align 32
@flush_channel_fifos._entry_ptr = internal global ptr @flush_channel_fifos._entry, section ".printk_index", align 4
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"most\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@interface_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @interface_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@interface_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_description, ptr @dev_attr_interface, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_description = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @description_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_interface = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @interface_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"description\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"interface\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"loopback\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tsi\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hbi\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mlb_dim\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlb_dim2\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pcie\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unknown\0A\00", [23 x i8] zeroinitializer }, align 32
@channel_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @channel_attr_is_visible, ptr null, ptr @channel_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@channel_attrs = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @dev_attr_available_directions, ptr @dev_attr_available_datatypes, ptr @dev_attr_number_of_packet_buffers, ptr @dev_attr_number_of_stream_buffers, ptr @dev_attr_size_of_stream_buffer, ptr @dev_attr_size_of_packet_buffer, ptr @dev_attr_channel_starving, ptr @dev_attr_set_buffer_size, ptr @dev_attr_set_number_of_buffers, ptr @dev_attr_set_direction, ptr @dev_attr_set_datatype, ptr @dev_attr_set_subbuffer_size, ptr @dev_attr_set_packets_per_xact, ptr @dev_attr_set_dbr_size, ptr null], [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_dbr_size\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_packets_per_xact\00", [43 x i8] zeroinitializer }, align 32
@dev_attr_available_directions = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @available_directions_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_available_datatypes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @available_datatypes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_number_of_packet_buffers = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @number_of_packet_buffers_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_number_of_stream_buffers = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @number_of_stream_buffers_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_size_of_stream_buffer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @size_of_stream_buffer_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_size_of_packet_buffer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @size_of_packet_buffer_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_channel_starving = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_starving_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_set_buffer_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @set_buffer_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_set_number_of_buffers = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @set_number_of_buffers_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_set_direction = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @set_direction_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_set_datatype = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @set_datatype_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_set_subbuffer_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @set_subbuffer_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_set_packets_per_xact = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @set_packets_per_xact_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_set_dbr_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @set_dbr_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"available_directions\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"available_datatypes\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"control \00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"async \00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sync \00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"isoc \00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"number_of_packet_buffers\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"number_of_stream_buffers\00", [39 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"size_of_stream_buffer\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"size_of_packet_buffer\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"channel_starving\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set_buffer_size\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set_number_of_buffers\00", [42 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_direction\00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unconfigured\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_datatype\00", [19 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_subbuffer_size\00", [45 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"most_core\00", [22 x i8] zeroinitializer }, align 32
@mc_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mc_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@mc_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mc_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @driver_attr_links, ptr @driver_attr_components, ptr null], [20 x i8] zeroinitializer }, align 32
@driver_attr_links = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @links_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@driver_attr_components = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @components_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"links\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s:%s:%s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"components\00", [21 x i8] zeroinitializer }, align 32
@most_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 1461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Failed to register most bus\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"most_init\00", [22 x i8] zeroinitializer }, align 32
@most_init._entry_ptr = internal global ptr @most_init._entry, section ".printk_index", align 4
@most_init._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 1466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Failed to register core driver\0A\00", [62 x i8] zeroinitializer }, align 32
@most_init._entry_ptr.101 = internal global ptr @most_init._entry.99, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.103 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"ch_data_type\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 77, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 631, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 641, i32 19 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 643, i32 26 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 645, i32 26 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 647, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 650, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 927, i32 6 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"dummy_num_buffers\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 29, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1105, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1112, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1117, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1166, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1186, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1222, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [10 x i8] c"comp_list\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 30, i32 25 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1255, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [8 x i8] c"mostbus\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 502, i32 24 }
@___asan_gen_.212 = private unnamed_addr constant [8 x i8] c"mdev_id\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 28, i32 19 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1291, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [22 x i8] c"interface_attr_groups\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 443, i32 38 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1308, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1322, i32 35 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1324, i32 35 }
@___asan_gen_.239 = private unnamed_addr constant [20 x i8] c"channel_attr_groups\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 387, i32 38 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1342, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1348, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1349, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1352, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant [15 x i8] c"mostbus_driver\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 730, i32 29 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 78, i32 21 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 79, i32 19 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 80, i32 18 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 81, i32 18 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 82, i32 18 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 814, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 801, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 145, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 503, i32 10 }
@___asan_gen_.308 = private unnamed_addr constant [21 x i8] c"interface_attr_group\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 439, i32 37 }
@___asan_gen_.311 = private unnamed_addr constant [16 x i8] c"interface_attrs\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 433, i32 26 }
@___asan_gen_.314 = private unnamed_addr constant [21 x i8] c"dev_attr_description\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [19 x i8] c"dev_attr_interface\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 430, i32 8 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 398, i32 34 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 431, i32 8 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 409, i32 35 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 411, i32 35 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 413, i32 35 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 415, i32 35 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 417, i32 35 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 419, i32 35 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 421, i32 35 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 423, i32 35 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 425, i32 35 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 427, i32 34 }
@___asan_gen_.359 = private unnamed_addr constant [19 x i8] c"channel_attr_group\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 382, i32 37 }
@___asan_gen_.362 = private unnamed_addr constant [14 x i8] c"channel_attrs\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 364, i32 26 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 337, i32 35 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 340, i32 35 }
@___asan_gen_.371 = private unnamed_addr constant [30 x i8] c"dev_attr_available_directions\00", align 1
@___asan_gen_.374 = private unnamed_addr constant [29 x i8] c"dev_attr_available_datatypes\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [34 x i8] c"dev_attr_number_of_packet_buffers\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [34 x i8] c"dev_attr_number_of_stream_buffers\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [31 x i8] c"dev_attr_size_of_stream_buffer\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [31 x i8] c"dev_attr_size_of_packet_buffer\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [26 x i8] c"dev_attr_channel_starving\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [25 x i8] c"dev_attr_set_buffer_size\00", align 1
@___asan_gen_.395 = private unnamed_addr constant [31 x i8] c"dev_attr_set_number_of_buffers\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [23 x i8] c"dev_attr_set_direction\00", align 1
@___asan_gen_.401 = private unnamed_addr constant [22 x i8] c"dev_attr_set_datatype\00", align 1
@___asan_gen_.404 = private unnamed_addr constant [28 x i8] c"dev_attr_set_subbuffer_size\00", align 1
@___asan_gen_.407 = private unnamed_addr constant [30 x i8] c"dev_attr_set_packets_per_xact\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 361, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant [22 x i8] c"dev_attr_set_dbr_size\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 362, i32 8 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 349, i32 8 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 350, i32 8 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 193, i32 15 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 195, i32 15 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 197, i32 15 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 199, i32 15 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 351, i32 8 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 211, i32 34 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 352, i32 8 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 353, i32 8 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 354, i32 8 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 355, i32 8 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 356, i32 8 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 357, i32 8 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 358, i32 8 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 285, i32 34 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 359, i32 8 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 360, i32 8 }
@___asan_gen_.471 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 87, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 731, i32 10 }
@___asan_gen_.476 = private unnamed_addr constant [15 x i8] c"mc_attr_groups\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 725, i32 38 }
@___asan_gen_.479 = private unnamed_addr constant [14 x i8] c"mc_attr_group\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 721, i32 37 }
@___asan_gen_.482 = private unnamed_addr constant [9 x i8] c"mc_attrs\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 715, i32 26 }
@___asan_gen_.485 = private unnamed_addr constant [18 x i8] c"driver_attr_links\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [23 x i8] c"driver_attr_components\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 712, i32 8 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 476, i32 7 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 713, i32 8 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1461, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.513 = private constant [23 x i8] c"../drivers/most/core.c\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1466, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 378, i32 2 }
@llvm.compiler.used = appending global [173 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_most_exit, ptr @__initcall__kmod_most_core__230_1484_most_init4, ptr @__ksymtab_channel_has_mbo, ptr @__ksymtab_most_deregister_component, ptr @__ksymtab_most_deregister_interface, ptr @__ksymtab_most_get_mbo, ptr @__ksymtab_most_put_mbo, ptr @__ksymtab_most_register_component, ptr @__ksymtab_most_register_interface, ptr @__ksymtab_most_resume_enqueue, ptr @__ksymtab_most_start_channel, ptr @__ksymtab_most_stop_channel, ptr @__ksymtab_most_stop_enqueue, ptr @__ksymtab_most_submit_mbo, ptr @flush_channel_fifos._entry, ptr @flush_channel_fifos._entry_ptr, ptr @hdm_enqueue_thread._entry, ptr @hdm_enqueue_thread._entry_ptr, ptr @most_deregister_component._entry, ptr @most_deregister_component._entry_ptr, ptr @most_exit, ptr @most_init._entry, ptr @most_init._entry.99, ptr @most_init._entry_ptr, ptr @most_init._entry_ptr.101, ptr @most_register_component._entry, ptr @most_register_component._entry_ptr, ptr @most_register_interface._entry, ptr @most_register_interface._entry.29, ptr @most_register_interface._entry.39, ptr @most_register_interface._entry_ptr, ptr @most_register_interface._entry_ptr.31, ptr @most_register_interface._entry_ptr.41, ptr @most_set_cfg_datatype._entry, ptr @most_set_cfg_datatype._entry_ptr, ptr @most_set_cfg_direction._entry, ptr @most_set_cfg_direction._entry_ptr, ptr @most_start_channel._entry, ptr @most_start_channel._entry.15, ptr @most_start_channel._entry_ptr, ptr @most_start_channel._entry_ptr.17, ptr @most_stop_channel._entry, ptr @most_stop_channel._entry.21, ptr @most_stop_channel._entry_ptr, ptr @most_stop_channel._entry_ptr.23, ptr @ch_data_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @dummy_num_buffers, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @most_start_channel.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @comp_list, ptr @.str.26, ptr @mostbus, ptr @mdev_id, ptr @.str.27, ptr @.str.28, ptr @interface_attr_groups, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @channel_attr_groups, ptr @most_register_interface.__key, ptr @.str.34, ptr @most_register_interface.__key.35, ptr @.str.36, ptr @most_register_interface.__key.37, ptr @.str.38, ptr @.str.40, ptr @mostbus_driver, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @interface_attr_group, ptr @interface_attrs, ptr @dev_attr_description, ptr @dev_attr_interface, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @channel_attr_group, ptr @channel_attrs, ptr @.str.66, ptr @.str.67, ptr @dev_attr_available_directions, ptr @dev_attr_available_datatypes, ptr @dev_attr_number_of_packet_buffers, ptr @dev_attr_number_of_stream_buffers, ptr @dev_attr_size_of_stream_buffer, ptr @dev_attr_size_of_packet_buffer, ptr @dev_attr_channel_starving, ptr @dev_attr_set_buffer_size, ptr @dev_attr_set_number_of_buffers, ptr @dev_attr_set_direction, ptr @dev_attr_set_datatype, ptr @dev_attr_set_subbuffer_size, ptr @dev_attr_set_packets_per_xact, ptr @dev_attr_set_dbr_size, ptr @.str.68, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @init_completion.__key, ptr @.str.92, ptr @.str.93, ptr @mc_attr_groups, ptr @mc_attr_group, ptr @mc_attrs, ptr @driver_attr_links, ptr @driver_attr_components, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @xa_init_flags.__key, ptr @.str.102], section "llvm.metadata"
@0 = internal global [139 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_data_type to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_set_cfg_datatype._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_set_cfg_direction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_num_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_start_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_start_channel._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_start_channel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_stop_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_stop_channel._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_register_component._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_deregister_component._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mostbus to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_id to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_register_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interface_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_register_interface._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_register_interface.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_register_interface.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_register_interface.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_register_interface._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mostbus_driver to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_enqueue_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flush_channel_fifos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interface_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interface_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_description to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_interface to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_attrs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_available_directions to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_available_datatypes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_number_of_packet_buffers to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_number_of_stream_buffers to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_size_of_stream_buffer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_size_of_packet_buffer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_channel_starving to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_set_buffer_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_set_number_of_buffers to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_set_direction to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_set_datatype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_set_subbuffer_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_set_packets_per_xact to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_set_dbr_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_links to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_components to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_init._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @most_set_cfg_buffer_size(ptr noundef %mdev, ptr nocapture noundef readonly %mdev_ch, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @bus_find_device(ptr noundef nonnull @mostbus, ptr noundef null, ptr noundef %mdev, ptr noundef nonnull @device_match_name) #16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @put_device(ptr noundef nonnull %call.i.i) #16
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %p.i = getelementptr inbounds %struct.most_interface, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.i, align 4
  %channel_list.i = getelementptr inbounds %struct.interface_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %channel_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_list.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %dev_name.exit.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %5, %if.end.i ], [ %.pn.i, %dev_name.exit.i.for.cond.i_crit_edge ]
  %c.0.i = getelementptr i8, ptr %.pn.in.i, i32 -1352
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.in.i, %channel_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %init_name.i.i = getelementptr i8, ptr %.pn.in.i, i32 -1208
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.dev_name.exit.i_crit_edge

for.body.i.dev_name.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %c.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c.0.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %for.body.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %for.body.i.dev_name.exit.i_crit_edge ]
  %call12.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef %mdev_ch) #19
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %get_channel.exit, label %dev_name.exit.i.for.cond.i_crit_edge

dev_name.exit.i.for.cond.i_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

get_channel.exit:                                 ; preds = %dev_name.exit.i
  %tobool.not = icmp eq ptr %c.0.i, null
  br i1 %tobool.not, label %get_channel.exit.cleanup_crit_edge, label %if.end

get_channel.exit.cleanup_crit_edge:               ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #18
  %buffer_size = getelementptr i8, ptr %.pn.in.i, i32 -74
  %11 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %val, ptr %buffer_size, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_channel.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %get_channel.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @most_set_cfg_subbuffer_size(ptr noundef %mdev, ptr nocapture noundef readonly %mdev_ch, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @bus_find_device(ptr noundef nonnull @mostbus, ptr noundef null, ptr noundef %mdev, ptr noundef nonnull @device_match_name) #16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @put_device(ptr noundef nonnull %call.i.i) #16
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %p.i = getelementptr inbounds %struct.most_interface, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.i, align 4
  %channel_list.i = getelementptr inbounds %struct.interface_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %channel_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_list.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %dev_name.exit.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %5, %if.end.i ], [ %.pn.i, %dev_name.exit.i.for.cond.i_crit_edge ]
  %c.0.i = getelementptr i8, ptr %.pn.in.i, i32 -1352
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.in.i, %channel_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %init_name.i.i = getelementptr i8, ptr %.pn.in.i, i32 -1208
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.dev_name.exit.i_crit_edge

for.body.i.dev_name.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %c.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c.0.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %for.body.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %for.body.i.dev_name.exit.i_crit_edge ]
  %call12.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef %mdev_ch) #19
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %get_channel.exit, label %dev_name.exit.i.for.cond.i_crit_edge

dev_name.exit.i.for.cond.i_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

get_channel.exit:                                 ; preds = %dev_name.exit.i
  %tobool.not = icmp eq ptr %c.0.i, null
  br i1 %tobool.not, label %get_channel.exit.cleanup_crit_edge, label %if.end

get_channel.exit.cleanup_crit_edge:               ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #18
  %subbuffer_size = getelementptr i8, ptr %.pn.in.i, i32 -70
  %11 = ptrtoint ptr %subbuffer_size to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %val, ptr %subbuffer_size, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_channel.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %get_channel.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @most_set_cfg_dbr_size(ptr noundef %mdev, ptr nocapture noundef readonly %mdev_ch, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @bus_find_device(ptr noundef nonnull @mostbus, ptr noundef null, ptr noundef %mdev, ptr noundef nonnull @device_match_name) #16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @put_device(ptr noundef nonnull %call.i.i) #16
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %p.i = getelementptr inbounds %struct.most_interface, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.i, align 4
  %channel_list.i = getelementptr inbounds %struct.interface_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %channel_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_list.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %dev_name.exit.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %5, %if.end.i ], [ %.pn.i, %dev_name.exit.i.for.cond.i_crit_edge ]
  %c.0.i = getelementptr i8, ptr %.pn.in.i, i32 -1352
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.in.i, %channel_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %init_name.i.i = getelementptr i8, ptr %.pn.in.i, i32 -1208
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.dev_name.exit.i_crit_edge

for.body.i.dev_name.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %c.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c.0.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %for.body.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %for.body.i.dev_name.exit.i_crit_edge ]
  %call12.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef %mdev_ch) #19
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %get_channel.exit, label %dev_name.exit.i.for.cond.i_crit_edge

dev_name.exit.i.for.cond.i_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

get_channel.exit:                                 ; preds = %dev_name.exit.i
  %tobool.not = icmp eq ptr %c.0.i, null
  br i1 %tobool.not, label %get_channel.exit.cleanup_crit_edge, label %if.end

get_channel.exit.cleanup_crit_edge:               ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #18
  %dbr_size = getelementptr i8, ptr %.pn.in.i, i32 -66
  %11 = ptrtoint ptr %dbr_size to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %val, ptr %dbr_size, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_channel.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %get_channel.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @most_set_cfg_num_buffers(ptr noundef %mdev, ptr nocapture noundef readonly %mdev_ch, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @bus_find_device(ptr noundef nonnull @mostbus, ptr noundef null, ptr noundef %mdev, ptr noundef nonnull @device_match_name) #16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @put_device(ptr noundef nonnull %call.i.i) #16
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %p.i = getelementptr inbounds %struct.most_interface, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.i, align 4
  %channel_list.i = getelementptr inbounds %struct.interface_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %channel_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_list.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %dev_name.exit.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %5, %if.end.i ], [ %.pn.i, %dev_name.exit.i.for.cond.i_crit_edge ]
  %c.0.i = getelementptr i8, ptr %.pn.in.i, i32 -1352
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.in.i, %channel_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %init_name.i.i = getelementptr i8, ptr %.pn.in.i, i32 -1208
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.dev_name.exit.i_crit_edge

for.body.i.dev_name.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %c.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c.0.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %for.body.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %for.body.i.dev_name.exit.i_crit_edge ]
  %call12.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef %mdev_ch) #19
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %get_channel.exit, label %dev_name.exit.i.for.cond.i_crit_edge

dev_name.exit.i.for.cond.i_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

get_channel.exit:                                 ; preds = %dev_name.exit.i
  %tobool.not = icmp eq ptr %c.0.i, null
  br i1 %tobool.not, label %get_channel.exit.cleanup_crit_edge, label %if.end

get_channel.exit.cleanup_crit_edge:               ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #18
  %num_buffers = getelementptr i8, ptr %.pn.in.i, i32 -76
  %11 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %val, ptr %num_buffers, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_channel.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %get_channel.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @most_set_cfg_datatype(ptr noundef %mdev, ptr nocapture noundef readonly %mdev_ch, ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @bus_find_device(ptr noundef nonnull @mostbus, ptr noundef null, ptr noundef %mdev, ptr noundef nonnull @device_match_name) #16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @put_device(ptr noundef nonnull %call.i.i) #16
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %p.i = getelementptr inbounds %struct.most_interface, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.i, align 4
  %channel_list.i = getelementptr inbounds %struct.interface_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %channel_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_list.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %dev_name.exit.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %5, %if.end.i ], [ %.pn.i, %dev_name.exit.i.for.cond.i_crit_edge ]
  %c.0.i = getelementptr i8, ptr %.pn.in.i, i32 -1352
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.in.i, %channel_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %init_name.i.i = getelementptr i8, ptr %.pn.in.i, i32 -1208
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.dev_name.exit.i_crit_edge

for.body.i.dev_name.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %c.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c.0.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %for.body.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %for.body.i.dev_name.exit.i_crit_edge ]
  %call12.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef %mdev_ch) #19
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %get_channel.exit, label %dev_name.exit.i.for.cond.i_crit_edge

dev_name.exit.i.for.cond.i_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

get_channel.exit:                                 ; preds = %dev_name.exit.i
  %tobool.not = icmp eq ptr %c.0.i, null
  br i1 %tobool.not, label %get_channel.exit.cleanup_crit_edge, label %for.body.preheader

get_channel.exit.cleanup_crit_edge:               ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.preheader:                               ; preds = %get_channel.exit
  %call1 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(8) @.str.42) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.body.preheader.for.end.thread_crit_edge, label %for.inc

for.body.preheader.for.end.thread_crit_edge:      ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.inc.3.for.end.thread_crit_edge, %for.inc.2.for.end.thread_crit_edge, %for.inc.1.for.end.thread_crit_edge, %for.inc.for.end.thread_crit_edge, %for.body.preheader.for.end.thread_crit_edge
  %i.024.lcssa = phi i32 [ 0, %for.body.preheader.for.end.thread_crit_edge ], [ 1, %for.inc.for.end.thread_crit_edge ], [ 2, %for.inc.1.for.end.thread_crit_edge ], [ 3, %for.inc.2.for.end.thread_crit_edge ], [ 4, %for.inc.3.for.end.thread_crit_edge ]
  %arrayidx = getelementptr [5 x %struct.anon.71], ptr @ch_data_type, i32 0, i32 %i.024.lcssa
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %data_type = getelementptr i8, ptr %.pn.in.i, i32 -80
  %13 = ptrtoint ptr %data_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data_type, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %call1.1 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(6) @.str.43) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %tobool2.not.1 = icmp eq i32 %call1.1, 0
  br i1 %tobool2.not.1, label %for.inc.for.end.thread_crit_edge, label %for.inc.1

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.thread

for.inc.1:                                        ; preds = %for.inc
  %call1.2 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.44) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %tobool2.not.2 = icmp eq i32 %call1.2, 0
  br i1 %tobool2.not.2, label %for.inc.1.for.end.thread_crit_edge, label %for.inc.2

for.inc.1.for.end.thread_crit_edge:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.thread

for.inc.2:                                        ; preds = %for.inc.1
  %call1.3 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.45) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %tobool2.not.3 = icmp eq i32 %call1.3, 0
  br i1 %tobool2.not.3, label %for.inc.2.for.end.thread_crit_edge, label %for.inc.3

for.inc.2.for.end.thread_crit_edge:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.thread

for.inc.3:                                        ; preds = %for.inc.2
  %call1.4 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(9) @.str.46) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4)
  %tobool2.not.4 = icmp eq i32 %call1.4, 0
  br i1 %tobool2.not.4, label %for.inc.3.for.end.thread_crit_edge, label %do.end

for.inc.3.for.end.thread_crit_edge:               ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.thread

do.end:                                           ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %c.0.i, ptr noundef nonnull @.str) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.thread, %get_channel.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %get_channel.exit.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %for.end.thread ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @most_set_cfg_direction(ptr noundef %mdev, ptr nocapture noundef readonly %mdev_ch, ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @bus_find_device(ptr noundef nonnull @mostbus, ptr noundef null, ptr noundef %mdev, ptr noundef nonnull @device_match_name) #16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @put_device(ptr noundef nonnull %call.i.i) #16
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %p.i = getelementptr inbounds %struct.most_interface, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.i, align 4
  %channel_list.i = getelementptr inbounds %struct.interface_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %channel_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_list.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %dev_name.exit.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %5, %if.end.i ], [ %.pn.i, %dev_name.exit.i.for.cond.i_crit_edge ]
  %c.0.i = getelementptr i8, ptr %.pn.in.i, i32 -1352
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.in.i, %channel_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %init_name.i.i = getelementptr i8, ptr %.pn.in.i, i32 -1208
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.dev_name.exit.i_crit_edge

for.body.i.dev_name.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %c.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c.0.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %for.body.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %for.body.i.dev_name.exit.i_crit_edge ]
  %call12.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef %mdev_ch) #19
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %get_channel.exit, label %dev_name.exit.i.for.cond.i_crit_edge

dev_name.exit.i.for.cond.i_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

get_channel.exit:                                 ; preds = %dev_name.exit.i
  %tobool.not = icmp eq ptr %c.0.i, null
  br i1 %tobool.not, label %get_channel.exit.cleanup_crit_edge, label %if.end

get_channel.exit.cleanup_crit_edge:               ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %get_channel.exit
  %call1 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(7) @.str.5) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %cfg = getelementptr i8, ptr %.pn.in.i, i32 -84
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %cfg, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @.str.6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %cfg7 = getelementptr i8, ptr %.pn.in.i, i32 -84
  %12 = ptrtoint ptr %cfg7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %cfg7, align 4
  br label %cleanup

if.else9:                                         ; preds = %if.else
  %call10 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(7) @.str.7) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #18
  %cfg13 = getelementptr i8, ptr %.pn.in.i, i32 -84
  %13 = ptrtoint ptr %cfg13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %cfg13, align 4
  br label %cleanup

if.else15:                                        ; preds = %if.else9
  %call16 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @.str.8) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %do.end

if.then18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #18
  %cfg19 = getelementptr i8, ptr %.pn.in.i, i32 -84
  %14 = ptrtoint ptr %cfg19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %cfg19, align 4
  br label %cleanup

do.end:                                           ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %c.0.i, ptr noundef nonnull @.str.9) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then18, %if.then12, %if.then6, %if.then3, %get_channel.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %do.end ], [ -19, %get_channel.exit.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.then18 ], [ 0, %if.then12 ], [ 0, %if.then3 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @most_set_cfg_packets_xact(ptr noundef %mdev, ptr nocapture noundef readonly %mdev_ch, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @bus_find_device(ptr noundef nonnull @mostbus, ptr noundef null, ptr noundef %mdev, ptr noundef nonnull @device_match_name) #16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @put_device(ptr noundef nonnull %call.i.i) #16
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %p.i = getelementptr inbounds %struct.most_interface, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.i, align 4
  %channel_list.i = getelementptr inbounds %struct.interface_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %channel_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_list.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %dev_name.exit.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %5, %if.end.i ], [ %.pn.i, %dev_name.exit.i.for.cond.i_crit_edge ]
  %c.0.i = getelementptr i8, ptr %.pn.in.i, i32 -1352
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.in.i, %channel_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %init_name.i.i = getelementptr i8, ptr %.pn.in.i, i32 -1208
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.dev_name.exit.i_crit_edge

for.body.i.dev_name.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %c.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c.0.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %for.body.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %for.body.i.dev_name.exit.i_crit_edge ]
  %call12.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef %mdev_ch) #19
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %get_channel.exit, label %dev_name.exit.i.for.cond.i_crit_edge

dev_name.exit.i.for.cond.i_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

get_channel.exit:                                 ; preds = %dev_name.exit.i
  %tobool.not = icmp eq ptr %c.0.i, null
  br i1 %tobool.not, label %get_channel.exit.cleanup_crit_edge, label %if.end

get_channel.exit.cleanup_crit_edge:               ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #18
  %packets_per_xact = getelementptr i8, ptr %.pn.in.i, i32 -68
  %11 = ptrtoint ptr %packets_per_xact to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %val, ptr %packets_per_xact, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_channel.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %get_channel.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @most_cfg_complete(ptr nocapture noundef readonly %comp_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %comp.0.in.i = phi ptr [ @comp_list, %entry ], [ %comp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %comp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %comp.0.i = load ptr, ptr %comp.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %comp.0.i, @comp_list
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %name1.i = getelementptr inbounds %struct.most_component, ptr %comp.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name1.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef %comp_name) #19
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %match_component.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

match_component.exit:                             ; preds = %for.body.i
  %tobool.not = icmp eq ptr %comp.0.i, null
  br i1 %tobool.not, label %match_component.exit.cleanup_crit_edge, label %if.end

match_component.exit.cleanup_crit_edge:           ; preds = %match_component.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %match_component.exit
  call void @__sanitizer_cov_trace_pc() #18
  %cfg_complete = getelementptr inbounds %struct.most_component, ptr %comp.0.i, i32 0, i32 7
  %3 = ptrtoint ptr %cfg_complete to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg_complete, align 4
  %call1 = tail call i32 %4() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %match_component.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %match_component.exit.cleanup_crit_edge ], [ -19, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @most_add_link(ptr noundef %mdev, ptr nocapture noundef readonly %mdev_ch, ptr nocapture noundef readonly %comp_name, ptr noundef %link_name, ptr noundef %comp_param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @bus_find_device(ptr noundef nonnull @mostbus, ptr noundef null, ptr noundef %mdev, ptr noundef nonnull @device_match_name) #16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.get_channel.exit_crit_edge, label %if.end.i

entry.get_channel.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_channel.exit

if.end.i:                                         ; preds = %entry
  tail call void @put_device(ptr noundef nonnull %call.i.i) #16
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %p.i = getelementptr inbounds %struct.most_interface, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.i, align 4
  %channel_list.i = getelementptr inbounds %struct.interface_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %channel_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_list.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %dev_name.exit.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %5, %if.end.i ], [ %.pn.i, %dev_name.exit.i.for.cond.i_crit_edge ]
  %c.0.i = getelementptr i8, ptr %.pn.in.i, i32 -1352
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.in.i, %channel_list.i
  br i1 %cmp.not.i, label %for.cond.i.get_channel.exit_crit_edge, label %for.body.i

for.cond.i.get_channel.exit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_channel.exit

for.body.i:                                       ; preds = %for.cond.i
  %init_name.i.i = getelementptr i8, ptr %.pn.in.i, i32 -1208
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.dev_name.exit.i_crit_edge

for.body.i.dev_name.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %c.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c.0.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %for.body.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %for.body.i.dev_name.exit.i_crit_edge ]
  %call12.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef %mdev_ch) #19
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %dev_name.exit.i.get_channel.exit_crit_edge, label %dev_name.exit.i.for.cond.i_crit_edge

dev_name.exit.i.for.cond.i_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

dev_name.exit.i.get_channel.exit_crit_edge:       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_channel.exit

get_channel.exit:                                 ; preds = %dev_name.exit.i.get_channel.exit_crit_edge, %for.cond.i.get_channel.exit_crit_edge, %entry.get_channel.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.get_channel.exit_crit_edge ], [ %c.0.i, %dev_name.exit.i.get_channel.exit_crit_edge ], [ null, %for.cond.i.get_channel.exit_crit_edge ]
  br label %for.cond.i8

for.cond.i8:                                      ; preds = %for.body.i10.for.cond.i8_crit_edge, %get_channel.exit
  %comp.0.in.i = phi ptr [ @comp_list, %get_channel.exit ], [ %comp.0.i, %for.body.i10.for.cond.i8_crit_edge ]
  %11 = ptrtoint ptr %comp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %comp.0.i = load ptr, ptr %comp.0.in.i, align 4
  %cmp.not.i7 = icmp eq ptr %comp.0.i, @comp_list
  br i1 %cmp.not.i7, label %for.cond.i8.cleanup_crit_edge, label %for.body.i10

for.cond.i8.cleanup_crit_edge:                    ; preds = %for.cond.i8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i10:                                     ; preds = %for.cond.i8
  %name1.i = getelementptr inbounds %struct.most_component, ptr %comp.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name1.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef %comp_name) #19
  %tobool.not.i9 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i9, label %match_component.exit, label %for.body.i10.for.cond.i8_crit_edge

for.body.i10.for.cond.i8_crit_edge:               ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i8

match_component.exit:                             ; preds = %for.body.i10
  %tobool.not = icmp eq ptr %retval.0.i, null
  %tobool2.not = icmp eq ptr %comp.0.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %match_component.exit.cleanup_crit_edge, label %if.end

match_component.exit.cleanup_crit_edge:           ; preds = %match_component.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %match_component.exit
  %pipe0.i = getelementptr inbounds %struct.most_channel, ptr %retval.0.i, i32 0, i32 18
  %14 = ptrtoint ptr %pipe0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pipe0.i, align 8
  %tobool.not.i12 = icmp eq ptr %15, null
  br i1 %tobool.not.i12, label %if.end.if.end10.i_crit_edge, label %if.else.i

if.end.if.end10.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end
  %pipe1.i = getelementptr inbounds %struct.most_channel, ptr %retval.0.i, i32 0, i32 19
  %16 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pipe1.i, align 4
  %tobool5.not.i = icmp eq ptr %17, null
  br i1 %tobool5.not.i, label %if.else.i.if.end10.i_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i.if.end10.i_crit_edge, %if.end.if.end10.i_crit_edge
  %comp_ptr.0.i = phi ptr [ %pipe0.i, %if.end.if.end10.i_crit_edge ], [ %pipe1.i, %if.else.i.if.end10.i_crit_edge ]
  %18 = ptrtoint ptr %comp_ptr.0.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %comp.0.i, ptr %comp_ptr.0.i, align 4
  %probe_channel.i = getelementptr inbounds %struct.most_component, ptr %comp.0.i, i32 0, i32 3
  %19 = ptrtoint ptr %probe_channel.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %probe_channel.i, align 4
  %iface.i = getelementptr inbounds %struct.most_channel, ptr %retval.0.i, i32 0, i32 10
  %21 = ptrtoint ptr %iface.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iface.i, align 8
  %channel_id.i = getelementptr inbounds %struct.most_channel, ptr %retval.0.i, i32 0, i32 4
  %23 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %channel_id.i, align 8
  %conv.i = zext i16 %24 to i32
  %cfg.i = getelementptr inbounds %struct.most_channel, ptr %retval.0.i, i32 0, i32 11
  %call.i13 = tail call i32 %20(ptr noundef %22, i32 noundef %conv.i, ptr noundef %cfg.i, ptr noundef %link_name, ptr noundef %comp_param) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool11.not.i = icmp eq i32 %call.i13, 0
  br i1 %tobool11.not.i, label %if.end10.i.cleanup_crit_edge, label %if.then12.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %comp_ptr.0.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %comp_ptr.0.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then12.i, %if.end10.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %match_component.exit.cleanup_crit_edge, %for.cond.i8.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %match_component.exit.cleanup_crit_edge ], [ %call.i13, %if.then12.i ], [ -28, %if.else.i.cleanup_crit_edge ], [ 0, %if.end10.i.cleanup_crit_edge ], [ -19, %for.cond.i8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @most_remove_link(ptr noundef %mdev, ptr nocapture noundef readonly %mdev_ch, ptr nocapture noundef readonly %comp_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %comp.0.in.i = phi ptr [ @comp_list, %entry ], [ %comp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %comp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %comp.0.i = load ptr, ptr %comp.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %comp.0.i, @comp_list
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %name1.i = getelementptr inbounds %struct.most_component, ptr %comp.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name1.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef %comp_name) #19
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %match_component.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

match_component.exit:                             ; preds = %for.body.i
  %tobool.not = icmp eq ptr %comp.0.i, null
  br i1 %tobool.not, label %match_component.exit.cleanup_crit_edge, label %if.end

match_component.exit.cleanup_crit_edge:           ; preds = %match_component.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %match_component.exit
  %call.i.i = tail call ptr @bus_find_device(ptr noundef nonnull @mostbus, ptr noundef null, ptr noundef %mdev, ptr noundef nonnull @device_match_name) #16
  %tobool.not.i32 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i32, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  tail call void @put_device(ptr noundef nonnull %call.i.i) #16
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %p.i = getelementptr inbounds %struct.most_interface, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.i, align 4
  %channel_list.i = getelementptr inbounds %struct.interface_private, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %channel_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %channel_list.i, align 4
  br label %for.cond.i34

for.cond.i34:                                     ; preds = %dev_name.exit.i.for.cond.i34_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %8, %if.end.i ], [ %.pn.i, %dev_name.exit.i.for.cond.i34_crit_edge ]
  %c.0.i = getelementptr i8, ptr %.pn.in.i, i32 -1352
  %9 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i33 = icmp eq ptr %.pn.in.i, %channel_list.i
  br i1 %cmp.not.i33, label %for.cond.i34.cleanup_crit_edge, label %for.body.i35

for.cond.i34.cleanup_crit_edge:                   ; preds = %for.cond.i34
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i35:                                     ; preds = %for.cond.i34
  %init_name.i.i = getelementptr i8, ptr %.pn.in.i, i32 -1208
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i35.dev_name.exit.i_crit_edge

for.body.i35.dev_name.exit.i_crit_edge:           ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %c.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %c.0.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %for.body.i35.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %for.body.i35.dev_name.exit.i_crit_edge ]
  %call12.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef %mdev_ch) #19
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %get_channel.exit, label %dev_name.exit.i.for.cond.i34_crit_edge

dev_name.exit.i.for.cond.i34_crit_edge:           ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i34

get_channel.exit:                                 ; preds = %dev_name.exit.i
  %tobool2.not = icmp eq ptr %c.0.i, null
  br i1 %tobool2.not, label %get_channel.exit.cleanup_crit_edge, label %if.end4

get_channel.exit.cleanup_crit_edge:               ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %get_channel.exit
  %disconnect_channel = getelementptr inbounds %struct.most_component, ptr %comp.0.i, i32 0, i32 4
  %14 = ptrtoint ptr %disconnect_channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disconnect_channel, align 4
  %iface = getelementptr i8, ptr %.pn.in.i, i32 -88
  %16 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iface, align 8
  %channel_id = getelementptr i8, ptr %.pn.in.i, i32 -360
  %18 = ptrtoint ptr %channel_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %channel_id, align 8
  %conv = zext i16 %19 to i32
  %call5 = tail call i32 %15(ptr noundef %17, i32 noundef %conv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %pipe0 = getelementptr i8, ptr %.pn.in.i, i32 8
  %20 = ptrtoint ptr %pipe0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pipe0, align 8
  %cmp = icmp eq ptr %21, %comp.0.i
  br i1 %cmp, label %if.then11, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %pipe0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %pipe0, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %pipe1 = getelementptr i8, ptr %.pn.in.i, i32 20
  %23 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pipe1, align 4
  %cmp16 = icmp eq ptr %24, %comp.0.i
  br i1 %cmp16, label %if.then18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %pipe1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %pipe1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end14.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %get_channel.exit.cleanup_crit_edge, %for.cond.i34.cleanup_crit_edge, %if.end.cleanup_crit_edge, %match_component.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %match_component.exit.cleanup_crit_edge ], [ -19, %get_channel.exit.cleanup_crit_edge ], [ -5, %if.end4.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %if.end14.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %for.cond.i34.cleanup_crit_edge ], [ -19, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @most_submit_mbo(ptr noundef %mbo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mbo, null
  br i1 %tobool.not, label %entry.land.rhs_crit_edge, label %lor.rhs

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

lor.rhs:                                          ; preds = %entry
  %0 = ptrtoint ptr %mbo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbo, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.land.rhs_crit_edge, label %if.end40.critedge

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b45 = load i1, ptr @most_submit_mbo.__already_done, align 1
  br i1 %.b45, label %land.rhs.return_crit_edge, label %if.then, !prof !300

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @most_submit_mbo.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 928, i32 noundef 9, ptr noundef nonnull @.str.12) #16
  br label %return

if.end40.critedge:                                ; preds = %lor.rhs
  %fifo_lock.i = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i) #16
  %list.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2
  %halt_fifo.i = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 16
  %prev.i.i = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %3, ptr noundef %halt_fifo.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end40.critedge.nq_hdm_mbo.exit_crit_edge

if.end40.critedge.nq_hdm_mbo.exit_crit_edge:      ; preds = %if.end40.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %nq_hdm_mbo.exit

if.end.i.i.i:                                     ; preds = %if.end40.critedge
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list.i, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %halt_fifo.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list.i, ptr %3, align 4
  br label %nq_hdm_mbo.exit

nq_hdm_mbo.exit:                                  ; preds = %if.end.i.i.i, %if.end40.critedge.nq_hdm_mbo.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i, i32 noundef %call2.i) #16
  %hdm_fifo_wq.i = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %hdm_fifo_wq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  br label %return

return:                                           ; preds = %nq_hdm_mbo.exit, %if.then, %land.rhs.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @channel_has_mbo(ptr nocapture noundef readonly %iface, i32 noundef %id, ptr noundef readnone %comp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %p = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 14
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %arrayidx = getelementptr %struct.interface_private, ptr %1, i32 0, i32 2, i32 %id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !301

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %pipe0 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 18
  %refs = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end.do.body22_crit_edge, label %land.lhs.true

if.end.do.body22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body22

land.lhs.true:                                    ; preds = %if.end
  %pipe1 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 19
  %refs5 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %refs5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refs5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %land.lhs.true.do.body22_crit_edge, label %land.lhs.true7

land.lhs.true.do.body22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body22

land.lhs.true7:                                   ; preds = %land.lhs.true
  %8 = ptrtoint ptr %pipe0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe0, align 8
  %cmp = icmp eq ptr %9, %comp
  br i1 %cmp, label %land.lhs.true10, label %land.lhs.true7.lor.lhs.false_crit_edge

land.lhs.true7.lor.lhs.false_crit_edge:           ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %num_buffers = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 18, i32 2
  %10 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_buffers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp12 = icmp slt i32 %11, 1
  br i1 %cmp12, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.lor.lhs.false_crit_edge

land.lhs.true10.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true10.lor.lhs.false_crit_edge, %land.lhs.true7.lor.lhs.false_crit_edge
  %12 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pipe1, align 4
  %cmp15 = icmp eq ptr %13, %comp
  br i1 %cmp15, label %land.lhs.true16, label %lor.lhs.false.do.body22_crit_edge

lor.lhs.false.do.body22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body22

land.lhs.true16:                                  ; preds = %lor.lhs.false
  %num_buffers18 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 19, i32 2
  %14 = ptrtoint ptr %num_buffers18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_buffers18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp19 = icmp slt i32 %15, 1
  br i1 %cmp19, label %land.lhs.true16.cleanup_crit_edge, label %land.lhs.true16.do.body22_crit_edge

land.lhs.true16.do.body22_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body22

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body22:                                        ; preds = %land.lhs.true16.do.body22_crit_edge, %lor.lhs.false.do.body22_crit_edge, %land.lhs.true.do.body22_crit_edge, %if.end.do.body22_crit_edge
  %fifo_lock = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 15
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock) #16
  %fifo = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 14
  %16 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %fifo, align 4
  %cmp.i = icmp ne ptr %17, %fifo
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock, i32 noundef %call24) #16
  %lnot.ext31 = zext i1 %cmp.i to i32
  br label %cleanup

cleanup:                                          ; preds = %do.body22, %land.lhs.true16.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext31, %do.body22 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true16.cleanup_crit_edge ], [ 0, %land.lhs.true10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @most_get_mbo(ptr nocapture noundef readonly %iface, i32 noundef %id, ptr noundef readnone %comp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %p = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 14
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %arrayidx = getelementptr %struct.interface_private, ptr %1, i32 0, i32 2, i32 %id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !301

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %pipe0 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 18
  %refs = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end.if.end21_crit_edge, label %land.lhs.true

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end
  %pipe1 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 19
  %refs5 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %refs5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refs5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end21_crit_edge, label %land.lhs.true7

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

land.lhs.true7:                                   ; preds = %land.lhs.true
  %8 = ptrtoint ptr %pipe0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe0, align 8
  %cmp = icmp eq ptr %9, %comp
  br i1 %cmp, label %land.lhs.true10, label %land.lhs.true7.lor.lhs.false_crit_edge

land.lhs.true7.lor.lhs.false_crit_edge:           ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %num_buffers = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 18, i32 2
  %10 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_buffers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp12 = icmp slt i32 %11, 1
  br i1 %cmp12, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.lor.lhs.false_crit_edge

land.lhs.true10.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true10.lor.lhs.false_crit_edge, %land.lhs.true7.lor.lhs.false_crit_edge
  %12 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pipe1, align 4
  %cmp15 = icmp eq ptr %13, %comp
  br i1 %cmp15, label %land.lhs.true16, label %lor.lhs.false.if.end21_crit_edge

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

land.lhs.true16:                                  ; preds = %lor.lhs.false
  %num_buffers18 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 19, i32 2
  %14 = ptrtoint ptr %num_buffers18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_buffers18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp19 = icmp slt i32 %15, 1
  br i1 %cmp19, label %land.lhs.true16.cleanup_crit_edge, label %land.lhs.true16.if.end21_crit_edge

land.lhs.true16.if.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true16.if.end21_crit_edge, %lor.lhs.false.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %16 = ptrtoint ptr %pipe0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pipe0, align 8
  %cmp24 = icmp eq ptr %17, %comp
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %num_buffers27 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 18, i32 2
  br label %do.body37

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %pipe128 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 19
  %18 = ptrtoint ptr %pipe128 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pipe128, align 4
  %cmp30 = icmp eq ptr %19, %comp
  %num_buffers33 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 19, i32 2
  %spec.select = select i1 %cmp30, ptr %num_buffers33, ptr @dummy_num_buffers
  br label %do.body37

do.body37:                                        ; preds = %if.else, %if.then25
  %num_buffers_ptr.0 = phi ptr [ %num_buffers27, %if.then25 ], [ %spec.select, %if.else ]
  %fifo_lock = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 15
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock) #16
  %fifo = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 14
  %20 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %fifo, align 4
  %cmp.i.not = icmp eq ptr %21, %fifo
  br i1 %cmp.i.not, label %if.then44, label %if.end46

if.then44:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock, i32 noundef %call39) #16
  br label %cleanup

if.end46:                                         ; preds = %do.body37
  %add.ptr = getelementptr i8, ptr %21, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end46.list_del.exit_crit_edge

if.end46.list_del.exit_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end46.list_del.exit_crit_edge
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %30 = ptrtoint ptr %num_buffers_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_buffers_ptr.0, align 4
  %dec = add i32 %31, -1
  store i32 %dec, ptr %num_buffers_ptr.0, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock, i32 noundef %call39) #16
  %num_buffers_ptr51 = getelementptr i8, ptr %21, i32 12
  %32 = ptrtoint ptr %num_buffers_ptr51 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %num_buffers_ptr.0, ptr %num_buffers_ptr51, align 4
  %buffer_size = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 11, i32 3
  %33 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %buffer_size, align 2
  %buffer_length = getelementptr i8, ptr %21, i32 28
  %35 = ptrtoint ptr %buffer_length to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %buffer_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then44, %land.lhs.true16.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then44 ], [ %add.ptr, %list_del.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %land.lhs.true16.cleanup_crit_edge ], [ null, %land.lhs.true10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @most_put_mbo(ptr noundef %mbo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mbo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbo, align 4
  %cfg = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @arm_mbo(ptr noundef %mbo)
  br label %cleanup

if.end:                                           ; preds = %entry
  %fifo_lock.i = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i) #16
  %list.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2
  %halt_fifo.i = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 16
  %prev.i.i = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %5, ptr noundef %halt_fifo.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.nq_hdm_mbo.exit_crit_edge

if.end.nq_hdm_mbo.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %nq_hdm_mbo.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list.i, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %halt_fifo.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list.i, ptr %5, align 4
  br label %nq_hdm_mbo.exit

nq_hdm_mbo.exit:                                  ; preds = %if.end.i.i.i, %if.end.nq_hdm_mbo.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i, i32 noundef %call2.i) #16
  %hdm_fifo_wq.i = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %hdm_fifo_wq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  %mbo_nq_level = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mbo_nq_level, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %mbo_nq_level, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mbo_nq_level, ptr %mbo_nq_level, i32 1, ptr elementtype(i32) %mbo_nq_level) #16, !srcloc !302
  br label %cleanup

cleanup:                                          ; preds = %nq_hdm_mbo.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arm_mbo(ptr noundef %mbo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mbo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbo, align 4
  %is_poisoned = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %is_poisoned to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_poisoned, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %fifo_lock = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock) #16
  br i1 %tobool.not, label %do.body1, label %if.then

if.then:                                          ; preds = %entry
  %list.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2
  %trash_fifo.i = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %trash_fifo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trash_fifo.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %trash_fifo.i, ptr noundef %5) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.trash_mbo.exit_crit_edge

if.then.trash_mbo.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %trash_mbo.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %trash_fifo.i, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %trash_fifo.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list.i, ptr %trash_fifo.i, align 4
  br label %trash_mbo.exit

trash_mbo.exit:                                   ; preds = %if.end.i.i.i, %if.then.trash_mbo.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock, i32 noundef %call2) #16
  br label %cleanup

do.body1:                                         ; preds = %entry
  %num_buffers_ptr = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 4
  %10 = ptrtoint ptr %num_buffers_ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %num_buffers_ptr, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %11, align 4
  %list = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2
  %fifo = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 14
  %prev.i = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 14, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %15, ptr noundef %fifo) #16
  br i1 %call.i.i, label %if.end.i.i, label %do.body1.list_add_tail.exit_crit_edge

do.body1.list_add_tail.exit_crit_edge:            ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev.i, align 4
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %fifo, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body1.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock, i32 noundef %call2) #16
  %refs = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool6.not = icmp eq i32 %21, 0
  br i1 %tobool6.not, label %list_add_tail.exit.if.end15_crit_edge, label %land.lhs.true

list_add_tail.exit.if.end15_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

land.lhs.true:                                    ; preds = %list_add_tail.exit
  %pipe0 = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 18
  %22 = ptrtoint ptr %pipe0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pipe0, align 8
  %tx_completion = getelementptr inbounds %struct.most_component, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %tx_completion to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_completion, align 4
  %tobool8.not = icmp eq ptr %25, null
  br i1 %tobool8.not, label %land.lhs.true.if.end15_crit_edge, label %if.then9

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %iface = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iface, align 8
  %channel_id = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %channel_id to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %channel_id, align 8
  %conv13 = zext i16 %29 to i32
  %call14 = tail call i32 %25(ptr noundef %27, i32 noundef %conv13) #16
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %land.lhs.true.if.end15_crit_edge, %list_add_tail.exit.if.end15_crit_edge
  %refs16 = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 19, i32 1
  %30 = ptrtoint ptr %refs16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %refs16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool17.not = icmp eq i32 %31, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %land.lhs.true18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true18:                                  ; preds = %if.end15
  %pipe1 = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 19
  %32 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pipe1, align 4
  %tx_completion21 = getelementptr inbounds %struct.most_component, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %tx_completion21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_completion21, align 4
  %tobool22.not = icmp eq ptr %35, null
  br i1 %tobool22.not, label %land.lhs.true18.cleanup_crit_edge, label %if.then23

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then23:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #18
  %iface27 = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 10
  %36 = ptrtoint ptr %iface27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iface27, align 8
  %channel_id28 = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %channel_id28 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %channel_id28, align 8
  %conv29 = zext i16 %39 to i32
  %call30 = tail call i32 %35(ptr noundef %37, i32 noundef %conv29) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %land.lhs.true18.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %trash_mbo.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @most_start_channel(ptr nocapture noundef readonly %iface, i32 noundef %id, ptr noundef readnone %comp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %p = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 14
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %arrayidx = getelementptr %struct.interface_private, ptr %1, i32 0, i32 2, i32 %id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !301

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %start_mutex = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %start_mutex, i32 noundef 0) #16
  %pipe0 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 18
  %refs = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refs, align 4
  %pipe1 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 19
  %refs4 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %refs4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refs4, align 4
  %add = add i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp = icmp sgt i32 %add, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end6:                                          ; preds = %if.end
  %mod = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 2
  %8 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mod, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %9) #16
  br i1 %call, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %3, ptr noundef nonnull @.str.13) #21
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end6
  %cfg = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 11
  %extra_len = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 11, i32 4
  %10 = ptrtoint ptr %extra_len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %extra_len, align 4
  %iface10 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %iface10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iface10, align 8
  %configure = getelementptr inbounds %struct.most_interface, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %configure to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %configure, align 4
  %channel_id = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %channel_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %channel_id, align 8
  %conv = zext i16 %16 to i32
  %call13 = tail call i32 %14(ptr noundef %12, i32 noundef %conv, ptr noundef %cfg) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body21, label %do.end18

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %3, ptr noundef nonnull @.str.16) #21
  br label %err_put_module

do.body21:                                        ; preds = %if.end9
  %hdm_fifo_wq = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 22
  tail call void @__init_waitqueue_head(ptr noundef %hdm_fifo_wq, ptr noundef nonnull @.str.18, ptr noundef nonnull @most_start_channel.__key) #16
  %17 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp25 = icmp eq i32 %18, 1
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #18
  %call30 = tail call fastcc i32 @arm_mbo_chain(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull @most_read_completion)
  br label %if.end34

if.else:                                          ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #18
  %call33 = tail call fastcc i32 @arm_mbo_chain(ptr noundef nonnull %3, i32 noundef %18, ptr noundef nonnull @most_write_completion)
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then27
  %num_buffer.0 = phi i32 [ %call30, %if.then27 ], [ %call33, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_buffer.0)
  %tobool35.not = icmp eq i32 %num_buffer.0, 0
  br i1 %tobool35.not, label %if.end34.err_put_module_crit_edge, label %if.end45, !prof !301

if.end34.err_put_module_crit_edge:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_put_module

if.end45:                                         ; preds = %if.end34
  %call.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @hdm_enqueue_thread, ptr noundef nonnull %3, i32 noundef -1, ptr noundef nonnull @.str.47, i32 noundef %id) #16
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %run_enqueue_thread.exit, label %run_enqueue_thread.exit.thread

run_enqueue_thread.exit.thread:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  %call2.i = tail call i32 @wake_up_process(ptr noundef %call.i) #16
  %hdm_enqueue_task.i = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 21
  %19 = ptrtoint ptr %hdm_enqueue_task.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %hdm_enqueue_task.i, align 8
  %is_starving = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %is_starving to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %is_starving, align 4
  %num_buffers = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 11, i32 2
  %21 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_buffers, align 4
  %23 = lshr i16 %22, 1
  %div = zext i16 %23 to i32
  %num_buffers53 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 18, i32 2
  %24 = ptrtoint ptr %num_buffers53 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div, ptr %num_buffers53, align 8
  %conv56 = zext i16 %22 to i32
  %sub = sub nsw i32 %conv56, %div
  %num_buffers60 = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 19, i32 2
  %25 = ptrtoint ptr %num_buffers60 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %num_buffers60, align 4
  %mbo_ref = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mbo_ref, i32 noundef 4) #16
  %26 = ptrtoint ptr %mbo_ref to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %num_buffer.0, ptr %mbo_ref, align 4
  br label %out

run_enqueue_thread.exit:                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %call.i to i32
  br label %err_put_module

out:                                              ; preds = %run_enqueue_thread.exit.thread, %if.end.out_crit_edge
  %28 = ptrtoint ptr %pipe0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pipe0, align 8
  %cmp63 = icmp eq ptr %29, %comp
  br i1 %cmp63, label %if.then65, label %out.if.end68_crit_edge

out.if.end68_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68

if.then65:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %refs, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %refs, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %out.if.end68_crit_edge
  %32 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pipe1, align 4
  %cmp71 = icmp eq ptr %33, %comp
  br i1 %cmp71, label %if.then73, label %if.end68.cleanup.sink.split_crit_edge

if.end68.cleanup.sink.split_crit_edge:            ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %refs4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %refs4, align 4
  %inc76 = add i32 %35, 1
  store i32 %inc76, ptr %refs4, align 4
  br label %cleanup.sink.split

err_put_module:                                   ; preds = %run_enqueue_thread.exit, %if.end34.err_put_module_crit_edge, %do.end18
  %ret.0 = phi i32 [ -22, %do.end18 ], [ %27, %run_enqueue_thread.exit ], [ -12, %if.end34.err_put_module_crit_edge ]
  %36 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mod, align 4
  tail call void @module_put(ptr noundef %37) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_put_module, %if.then73, %if.end68.cleanup.sink.split_crit_edge, %do.end
  %retval.0.ph = phi i32 [ -37, %do.end ], [ %ret.0, %err_put_module ], [ 0, %if.then73 ], [ 0, %if.end68.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %start_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arm_mbo_chain(ptr noundef %c, i32 noundef %dir, ptr noundef %compl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_size = getelementptr inbounds %struct.most_channel, ptr %c, i32 0, i32 11, i32 3
  %0 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %buffer_size, align 2
  %conv = zext i16 %1 to i32
  %extra_len = getelementptr inbounds %struct.most_channel, ptr %c, i32 0, i32 11, i32 4
  %2 = ptrtoint ptr %extra_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %extra_len, align 4
  %conv2 = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv2, %conv
  %mbo_nq_level = getelementptr inbounds %struct.most_channel, ptr %c, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mbo_nq_level, i32 noundef 4) #16
  %4 = ptrtoint ptr %mbo_nq_level to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %mbo_nq_level, align 4
  %num_buffers = getelementptr inbounds %struct.most_channel, ptr %c, i32 0, i32 11, i32 2
  %5 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp76.not = icmp eq i16 %6, 0
  br i1 %cmp76.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %iface = getelementptr inbounds %struct.most_channel, ptr %c, i32 0, i32 10
  %channel_id = getelementptr inbounds %struct.most_channel, ptr %c, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp19 = icmp eq i32 %dir, 1
  %fifo_lock = getelementptr inbounds %struct.most_channel, ptr %c, i32 0, i32 15
  %fifo = getelementptr inbounds %struct.most_channel, ptr %c, i32 0, i32 14
  %prev.i = getelementptr inbounds %struct.most_channel, ptr %c, i32 0, i32 14, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 48) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body.flush_fifos_crit_edge, label %if.end

for.body.flush_fifos_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %flush_fifos

if.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %c, ptr %call7.i.i, align 8
  %9 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iface, align 8
  %ifp = getelementptr inbounds %struct.mbo, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %ifp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %ifp, align 8
  %12 = ptrtoint ptr %channel_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %channel_id, align 8
  %hdm_channel_id = getelementptr inbounds %struct.mbo, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %hdm_channel_id to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %hdm_channel_id, align 8
  %dma_alloc = getelementptr inbounds %struct.most_interface, ptr %10, i32 0, i32 7
  %15 = ptrtoint ptr %dma_alloc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_alloc, align 4
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %if.end8.i.i, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call11 = tail call ptr %16(ptr noundef nonnull %call7.i.i, i32 noundef %add) #16
  br label %if.end14

if.end8.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #23
  br label %if.end14

if.end14:                                         ; preds = %if.end8.i.i, %if.then8
  %retval.1.i.i.sink = phi ptr [ %call11, %if.then8 ], [ %call9.i.i, %if.end8.i.i ]
  %virt_address13 = getelementptr inbounds %struct.mbo, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %virt_address13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %retval.1.i.i.sink, ptr %virt_address13, align 4
  %tobool16.not = icmp eq ptr %retval.1.i.i.sink, null
  br i1 %tobool16.not, label %release_mbo, label %if.end18

if.end18:                                         ; preds = %if.end14
  %complete = getelementptr inbounds %struct.mbo, ptr %call7.i.i, i32 0, i32 11
  %18 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %compl, ptr %complete, align 4
  %num_buffers_ptr = getelementptr inbounds %struct.mbo, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %num_buffers_ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @dummy_num_buffers, ptr %num_buffers_ptr, align 4
  br i1 %cmp19, label %if.then21, label %do.body24

if.then21:                                        ; preds = %if.end18
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 8
  %fifo_lock.i = getelementptr inbounds %struct.most_channel, ptr %21, i32 0, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i) #16
  %list.i = getelementptr inbounds %struct.mbo, ptr %call7.i.i, i32 0, i32 2
  %halt_fifo.i = getelementptr inbounds %struct.most_channel, ptr %21, i32 0, i32 16
  %prev.i.i = getelementptr inbounds %struct.most_channel, ptr %21, i32 0, i32 16, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %23, ptr noundef %halt_fifo.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i69, label %if.then21.nq_hdm_mbo.exit_crit_edge

if.then21.nq_hdm_mbo.exit_crit_edge:              ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %nq_hdm_mbo.exit

if.end.i.i.i69:                                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list.i, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %halt_fifo.i, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.mbo, ptr %call7.i.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list.i, ptr %23, align 4
  br label %nq_hdm_mbo.exit

nq_hdm_mbo.exit:                                  ; preds = %if.end.i.i.i69, %if.then21.nq_hdm_mbo.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i, i32 noundef %call2.i) #16
  %hdm_fifo_wq.i = getelementptr inbounds %struct.most_channel, ptr %21, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %hdm_fifo_wq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  %call.i.i67 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mbo_nq_level, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %mbo_nq_level, i32 1, i32 3, i32 1) #16
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mbo_nq_level, ptr %mbo_nq_level, i32 1, ptr elementtype(i32) %mbo_nq_level) #16, !srcloc !302
  br label %for.inc

do.body24:                                        ; preds = %if.end18
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock) #16
  %list = getelementptr inbounds %struct.mbo, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 4
  %call.i.i70 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %30, ptr noundef %fifo) #16
  br i1 %call.i.i70, label %if.end.i.i71, label %do.body24.list_add_tail.exit_crit_edge

do.body24.list_add_tail.exit_crit_edge:           ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i71:                                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list, ptr %prev.i, align 4
  %32 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %fifo, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.mbo, ptr %call7.i.i, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %list, ptr %30, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i71, %do.body24.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock, i32 noundef %call28) #16
  br label %for.inc

for.inc:                                          ; preds = %list_add_tail.exit, %nq_hdm_mbo.exit
  %inc = add nuw nsw i32 %i.077, 1
  %35 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %num_buffers, align 4
  %conv4 = zext i16 %36 to i32
  %cmp = icmp ult i32 %inc, %conv4
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %cleanup.loopexit.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

release_mbo:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %flush_fifos

flush_fifos:                                      ; preds = %release_mbo, %for.body.flush_fifos_crit_edge
  tail call fastcc void @flush_channel_fifos(ptr noundef %c)
  br label %cleanup

cleanup.loopexit.loopexit:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %phi.cast = zext i16 %36 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.loopexit, %flush_fifos, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %flush_fifos ], [ %phi.cast, %cleanup.loopexit.loopexit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @most_read_completion(ptr noundef %mbo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mbo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbo, align 4
  %is_poisoned = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %is_poisoned to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_poisoned, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.if.then_crit_edge, !prof !300

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.rhs:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 10
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end6 [
    i32 2, label %lor.rhs.if.then_crit_edge
    i32 1, label %if.then5
  ], !prof !304

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @trash_mbo(ptr noundef %mbo)
  br label %cleanup

if.then5:                                         ; preds = %lor.rhs
  %fifo_lock.i = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i) #16
  %list.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2
  %halt_fifo.i = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 16
  %prev.i.i = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 16, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %8, ptr noundef %halt_fifo.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then5.nq_hdm_mbo.exit_crit_edge

if.then5.nq_hdm_mbo.exit_crit_edge:               ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %nq_hdm_mbo.exit

if.end.i.i.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list.i, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %halt_fifo.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list.i, ptr %8, align 4
  br label %nq_hdm_mbo.exit

nq_hdm_mbo.exit:                                  ; preds = %if.end.i.i.i, %if.then5.nq_hdm_mbo.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i, i32 noundef %call2.i) #16
  %hdm_fifo_wq.i = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %hdm_fifo_wq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  %mbo_nq_level = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mbo_nq_level, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %mbo_nq_level, i32 1, i32 3, i32 1) #16
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mbo_nq_level, ptr %mbo_nq_level, i32 1, ptr elementtype(i32) %mbo_nq_level) #16, !srcloc !302
  br label %cleanup

if.end6:                                          ; preds = %lor.rhs
  %mbo_nq_level7 = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 3
  %call.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mbo_nq_level7, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr %mbo_nq_level7, i32 1, i32 3, i32 1) #16
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mbo_nq_level7, ptr %mbo_nq_level7, i32 1, ptr elementtype(i32) %mbo_nq_level7) #16, !srcloc !306
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !307
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then8, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %is_starving = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %is_starving to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %is_starving, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %refs = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %if.end9.if.end20_crit_edge, label %land.lhs.true

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end9
  %pipe0 = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 18
  %18 = ptrtoint ptr %pipe0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pipe0, align 8
  %rx_completion = getelementptr inbounds %struct.most_component, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %rx_completion to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_completion, align 4
  %tobool12.not = icmp eq ptr %21, null
  br i1 %tobool12.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true13

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

land.lhs.true13:                                  ; preds = %land.lhs.true
  %call17 = tail call i32 %21(ptr noundef %mbo) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %land.lhs.true13.cleanup_crit_edge, label %land.lhs.true13.if.end20_crit_edge

land.lhs.true13.if.end20_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true13.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %if.end9.if.end20_crit_edge
  %refs21 = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 19, i32 1
  %22 = ptrtoint ptr %refs21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %refs21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool22.not = icmp eq i32 %23, 0
  br i1 %tobool22.not, label %if.end20.if.end35_crit_edge, label %land.lhs.true23

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true23:                                  ; preds = %if.end20
  %pipe1 = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 19
  %24 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pipe1, align 4
  %rx_completion26 = getelementptr inbounds %struct.most_component, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %rx_completion26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_completion26, align 4
  %tobool27.not = icmp eq ptr %27, null
  br i1 %tobool27.not, label %land.lhs.true23.if.end35_crit_edge, label %land.lhs.true28

land.lhs.true23.if.end35_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %call32 = tail call i32 %27(ptr noundef %mbo) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true28.if.end35_crit_edge

land.lhs.true28.if.end35_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true28.if.end35_crit_edge, %land.lhs.true23.if.end35_crit_edge, %if.end20.if.end35_crit_edge
  tail call void @most_put_mbo(ptr noundef %mbo)
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %land.lhs.true28.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %nq_hdm_mbo.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @most_write_completion(ptr noundef %mbo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mbo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbo, align 4
  %is_poisoned = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %is_poisoned to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_poisoned, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.if.then_crit_edge, !prof !300

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.rhs:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 10
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %lor.rhs.if.then_crit_edge, label %if.else, !prof !301

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @trash_mbo(ptr noundef %mbo)
  br label %if.end

if.else:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @arm_mbo(ptr noundef %mbo)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @most_stop_channel(ptr noundef readonly %iface, i32 noundef %id, ptr noundef readnone %comp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iface, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false, !prof !301

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %num_channels = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 5
  %0 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp.not = icmp ule i32 %1, %id
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp1 = icmp slt i32 %id, 0
  %spec.select = or i1 %cmp1, %cmp.not
  br i1 %spec.select, label %lor.lhs.false.do.end_crit_edge, label %if.end, !prof !301

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #21
  br label %cleanup62

if.end:                                           ; preds = %lor.lhs.false
  %p = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 14
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %arrayidx = getelementptr %struct.interface_private, ptr %3, i32 0, i32 2, i32 %id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.cleanup62_crit_edge, label %if.end14, !prof !301

if.end.cleanup62_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup62

if.end14:                                         ; preds = %if.end
  %start_mutex = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %start_mutex, i32 noundef 0) #16
  %pipe0 = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 18
  %refs = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refs, align 4
  %pipe1 = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 19
  %refs15 = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %refs15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %refs15, align 4
  %add = add i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp16 = icmp sgt i32 %add, 1
  br i1 %cmp16, label %if.end14.out_crit_edge, label %if.end18

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end18:                                         ; preds = %if.end14
  %hdm_enqueue_task = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 21
  %10 = ptrtoint ptr %hdm_enqueue_task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdm_enqueue_task, align 8
  %tobool19.not = icmp eq ptr %11, null
  br i1 %tobool19.not, label %if.end18.if.end23_crit_edge, label %if.then20

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %call22 = tail call i32 @kthread_stop(ptr noundef nonnull %11) #16
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18.if.end23_crit_edge
  %12 = ptrtoint ptr %hdm_enqueue_task to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %hdm_enqueue_task, align 8
  %mod = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 2
  %13 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mod, align 4
  %tobool25.not = icmp eq ptr %14, null
  br i1 %tobool25.not, label %if.end23.if.end28_crit_edge, label %if.then26

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @module_put(ptr noundef nonnull %14) #16
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  %is_poisoned = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 6
  %15 = ptrtoint ptr %is_poisoned to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %is_poisoned, align 2
  %iface29 = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 10
  %16 = ptrtoint ptr %iface29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iface29, align 8
  %poison_channel = getelementptr inbounds %struct.most_interface, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %poison_channel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %poison_channel, align 4
  %channel_id = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 4
  %20 = ptrtoint ptr %channel_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %channel_id, align 8
  %conv = zext i16 %21 to i32
  %call31 = tail call i32 %19(ptr noundef %17, i32 noundef %conv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end41, label %do.end36

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %channel_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %channel_id, align 8
  %conv38 = zext i16 %23 to i32
  %24 = ptrtoint ptr %iface29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iface29, align 8
  %description = getelementptr inbounds %struct.most_interface, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %description, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.22, i32 noundef %conv38, ptr noundef %27) #21
  tail call void @mutex_unlock(ptr noundef %start_mutex) #16
  br label %cleanup62

if.end41:                                         ; preds = %if.end28
  %fifo_lock.i = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 15
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i) #16
  %trash_fifo.i = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 20
  %28 = ptrtoint ptr %trash_fifo.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trash_fifo.i, align 8
  %cmp13.not2.i = icmp eq ptr %29, %trash_fifo.i
  br i1 %cmp13.not2.i, label %if.end41.flush_trash_fifo.exit_crit_edge, label %if.end41.for.body.i_crit_edge

if.end41.for.body.i_crit_edge:                    ; preds = %if.end41
  br label %for.body.i

if.end41.flush_trash_fifo.exit_crit_edge:         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %flush_trash_fifo.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end41.for.body.i_crit_edge
  %.pn.in4.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %29, %if.end41.for.body.i_crit_edge ]
  %flags.03.i = phi i32 [ %call26.i, %list_del.exit.i.for.body.i_crit_edge ], [ %call3.i, %if.end41.for.body.i_crit_edge ]
  %mbo.0.i = getelementptr i8, ptr %.pn.in4.i, i32 -8
  %30 = ptrtoint ptr %.pn.in4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i = load ptr, ptr %.pn.in4.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in4.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in4.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %.pn.in4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %.pn.in4.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %37 = ptrtoint ptr %.pn.in4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in4.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i, i32 noundef %flags.03.i) #16
  tail call fastcc void @most_free_mbo_coherent(ptr noundef %mbo.0.i) #16
  %call26.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i) #16
  %cmp13.not.i = icmp eq ptr %.pn.i, %trash_fifo.i
  br i1 %cmp13.not.i, label %list_del.exit.i.flush_trash_fifo.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

list_del.exit.i.flush_trash_fifo.exit_crit_edge:  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %flush_trash_fifo.exit

flush_trash_fifo.exit:                            ; preds = %list_del.exit.i.flush_trash_fifo.exit_crit_edge, %if.end41.flush_trash_fifo.exit_crit_edge
  %flags.0.lcssa.i = phi i32 [ %call3.i, %if.end41.flush_trash_fifo.exit_crit_edge ], [ %call26.i, %list_del.exit.i.flush_trash_fifo.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i, i32 noundef %flags.0.lcssa.i) #16
  tail call fastcc void @flush_channel_fifos(ptr noundef nonnull %5)
  %cleanup = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %cleanup) #16
  %39 = ptrtoint ptr %is_poisoned to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %is_poisoned, align 2
  br label %out

out:                                              ; preds = %flush_trash_fifo.exit, %if.end14.out_crit_edge
  %40 = ptrtoint ptr %pipe0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pipe0, align 8
  %cmp46 = icmp eq ptr %41, %comp
  br i1 %cmp46, label %if.then48, label %out.if.end51_crit_edge

out.if.end51_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

if.then48:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  %42 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %refs, align 4
  %dec = add i32 %43, -1
  store i32 %dec, ptr %refs, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %out.if.end51_crit_edge
  %44 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pipe1, align 4
  %cmp54 = icmp eq ptr %45, %comp
  br i1 %cmp54, label %if.then56, label %if.end51.if.end60_crit_edge

if.end51.if.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  %46 = ptrtoint ptr %refs15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %refs15, align 4
  %dec59 = add i32 %47, -1
  store i32 %dec59, ptr %refs15, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.end51.if.end60_crit_edge
  tail call void @mutex_unlock(ptr noundef %start_mutex) #16
  br label %cleanup62

cleanup62:                                        ; preds = %if.end60, %do.end36, %if.end.cleanup62_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end60 ], [ -11, %do.end36 ], [ -22, %if.end.cleanup62_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_channel_fifos(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo = getelementptr inbounds %struct.most_channel, ptr %c, i32 0, i32 14
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fifo, align 4
  %cmp.i.not = icmp eq ptr %1, %fifo
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body3

land.lhs.true:                                    ; preds = %entry
  %halt_fifo = getelementptr inbounds %struct.most_channel, ptr %c, i32 0, i32 16
  %2 = ptrtoint ptr %halt_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %halt_fifo, align 4
  %cmp.i145.not = icmp eq ptr %3, %halt_fifo
  br i1 %cmp.i145.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body3_crit_edge

land.lhs.true.do.body3_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body3:                                         ; preds = %land.lhs.true.do.body3_crit_edge, %entry.do.body3_crit_edge
  %fifo_lock = getelementptr inbounds %struct.most_channel, ptr %c, i32 0, i32 15
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock) #16
  %4 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo, align 4
  %cmp17.not157 = icmp eq ptr %5, %fifo
  br i1 %cmp17.not157, label %do.body3.for.end_crit_edge, label %do.body3.for.body_crit_edge

do.body3.for.body_crit_edge:                      ; preds = %do.body3
  br label %for.body

do.body3.for.end_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %do.body3.for.body_crit_edge
  %flags.0160 = phi i32 [ %call30, %list_del.exit.for.body_crit_edge ], [ %call6, %do.body3.for.body_crit_edge ]
  %.pn.in158 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %5, %do.body3.for.body_crit_edge ]
  %mbo.0 = getelementptr i8, ptr %.pn.in158, i32 -8
  %6 = ptrtoint ptr %.pn.in158 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in158, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in158) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in158, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in158 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in158, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in158 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in158, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in158, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock, i32 noundef %flags.0160) #16
  tail call fastcc void @most_free_mbo_coherent(ptr noundef %mbo.0)
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock) #16
  %cmp17.not = icmp eq ptr %.pn, %fifo
  br i1 %cmp17.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.body3.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call6, %do.body3.for.end_crit_edge ], [ %call30, %list_del.exit.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock, i32 noundef %flags.0.lcssa) #16
  %call50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock) #16
  %halt_fifo56 = getelementptr inbounds %struct.most_channel, ptr %c, i32 0, i32 16
  %15 = ptrtoint ptr %halt_fifo56 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %halt_fifo56, align 8
  %cmp68.not161 = icmp eq ptr %16, %halt_fifo56
  br i1 %cmp68.not161, label %for.end.for.end94_crit_edge, label %for.end.for.body71_crit_edge

for.end.for.body71_crit_edge:                     ; preds = %for.end
  br label %for.body71

for.end.for.end94_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end94

for.body71:                                       ; preds = %list_del.exit152.for.body71_crit_edge, %for.end.for.body71_crit_edge
  %hf_flags.0164 = phi i32 [ %call83, %list_del.exit152.for.body71_crit_edge ], [ %call50, %for.end.for.body71_crit_edge ]
  %.pn142.in162 = phi ptr [ %.pn142, %list_del.exit152.for.body71_crit_edge ], [ %16, %for.end.for.body71_crit_edge ]
  %mbo.1 = getelementptr i8, ptr %.pn142.in162, i32 -8
  %17 = ptrtoint ptr %.pn142.in162 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn142 = load ptr, ptr %.pn142.in162, align 4
  %call.i.i147 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn142.in162) #16
  br i1 %call.i.i147, label %if.end.i.i150, label %for.body71.list_del.exit152_crit_edge

for.body71.list_del.exit152_crit_edge:            ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit152

if.end.i.i150:                                    ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i148 = getelementptr inbounds %struct.list_head, ptr %.pn142.in162, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i148 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i148, align 4
  %20 = ptrtoint ptr %.pn142.in162 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn142.in162, align 4
  %prev1.i.i.i149 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i149 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i149, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit152

list_del.exit152:                                 ; preds = %if.end.i.i150, %for.body71.list_del.exit152_crit_edge
  %24 = ptrtoint ptr %.pn142.in162 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn142.in162, align 4
  %prev.i151 = getelementptr inbounds %struct.list_head, ptr %.pn142.in162, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i151 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i151, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock, i32 noundef %hf_flags.0164) #16
  tail call fastcc void @most_free_mbo_coherent(ptr noundef %mbo.1)
  %call83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock) #16
  %cmp68.not = icmp eq ptr %.pn142, %halt_fifo56
  br i1 %cmp68.not, label %list_del.exit152.for.end94_crit_edge, label %list_del.exit152.for.body71_crit_edge

list_del.exit152.for.body71_crit_edge:            ; preds = %list_del.exit152
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body71

list_del.exit152.for.end94_crit_edge:             ; preds = %list_del.exit152
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end94

for.end94:                                        ; preds = %list_del.exit152.for.end94_crit_edge, %for.end.for.end94_crit_edge
  %hf_flags.0.lcssa = phi i32 [ %call50, %for.end.for.end94_crit_edge ], [ %call83, %list_del.exit152.for.end94_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock, i32 noundef %hf_flags.0.lcssa) #16
  %26 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %fifo, align 4
  %cmp.i153.not = icmp eq ptr %27, %fifo
  br i1 %cmp.i153.not, label %lor.rhs, label %for.end94.do.end109_crit_edge, !prof !300

for.end94.do.end109_crit_edge:                    ; preds = %for.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end109

lor.rhs:                                          ; preds = %for.end94
  %28 = ptrtoint ptr %halt_fifo56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %halt_fifo56, align 4
  %cmp.i155.not = icmp eq ptr %29, %halt_fifo56
  br i1 %cmp.i155.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.do.end109_crit_edge, !prof !300

lor.rhs.do.end109_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end109

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end109:                                        ; preds = %lor.rhs.do.end109_crit_edge, %for.end94.do.end109_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %c, ptr noundef nonnull @.str.50) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end109, %lor.rhs.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @most_register_component(ptr noundef %comp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %comp, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #21
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @comp_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %comp, ptr noundef %0, ptr noundef nonnull @comp_list) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  store ptr %comp, ptr getelementptr inbounds (%struct.list_head, ptr @comp_list, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @comp_list, ptr %comp, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %comp, i32 0, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %comp, ptr %0, align 4
  br label %return

return:                                           ; preds = %if.end.i.i, %if.end.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end.return_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @most_deregister_component(ptr noundef %comp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %comp, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #21
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @mostbus, ptr noundef null, ptr noundef nonnull %comp, ptr noundef nonnull @disconnect_channels) #16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %comp) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %comp, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comp, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %6 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %comp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %comp, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %return

return:                                           ; preds = %list_del.exit, %do.end
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disconnect_channels(ptr nocapture noundef readonly %dev, ptr noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %p = getelementptr inbounds %struct.most_interface, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %channel_list = getelementptr inbounds %struct.interface_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %channel_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_list, align 4
  %cmp.not54 = icmp eq ptr %5, %channel_list
  br i1 %cmp.not54, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %disconnect_channel = getelementptr inbounds %struct.most_component, ptr %data, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in55 = phi ptr [ %5, %for.body.lr.ph ], [ %.pn57, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %.pn.in55 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn57 = load ptr, ptr %.pn.in55, align 8
  %pipe0 = getelementptr i8, ptr %.pn.in55, i32 8
  %7 = ptrtoint ptr %pipe0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe0, align 8
  %cmp10 = icmp eq ptr %8, %data
  br i1 %cmp10, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %pipe1 = getelementptr i8, ptr %.pn.in55, i32 20
  %9 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pipe1, align 4
  %cmp12 = icmp eq ptr %10, %data
  br i1 %cmp12, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %11 = ptrtoint ptr %disconnect_channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disconnect_channel, align 4
  %iface13 = getelementptr i8, ptr %.pn.in55, i32 -88
  %13 = ptrtoint ptr %iface13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iface13, align 8
  %channel_id = getelementptr i8, ptr %.pn.in55, i32 -360
  %15 = ptrtoint ptr %channel_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %channel_id, align 8
  %conv = zext i16 %16 to i32
  %call14 = tail call i32 %12(ptr noundef %14, i32 noundef %conv) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %17 = ptrtoint ptr %pipe0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pipe0, align 8
  %cmp17 = icmp eq ptr %18, %data
  br i1 %cmp17, label %if.then19, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %pipe0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %pipe0, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end.if.end22_crit_edge
  %pipe123 = getelementptr i8, ptr %.pn.in55, i32 20
  %20 = ptrtoint ptr %pipe123 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pipe123, align 4
  %cmp25 = icmp eq ptr %21, %data
  br i1 %cmp25, label %if.then27, label %if.end22.for.inc_crit_edge

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %pipe123 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %pipe123, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %if.end22.for.inc_crit_edge
  %23 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p, align 4
  %channel_list8 = getelementptr inbounds %struct.interface_private, ptr %24, i32 0, i32 3
  %cmp.not = icmp eq ptr %.pn57, %channel_list8
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @most_register_interface(ptr noundef %iface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iface, null
  br i1 %tobool.not, label %entry.cleanup97_crit_edge, label %lor.lhs.false

entry.cleanup97_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup97

lor.lhs.false:                                    ; preds = %entry
  %enqueue = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 10
  %0 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enqueue, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup97_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup97_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup97

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %configure = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 9
  %2 = ptrtoint ptr %configure to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %configure, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup97_crit_edge, label %lor.lhs.false4

lor.lhs.false2.cleanup97_crit_edge:               ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup97

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %poison_channel = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 11
  %4 = ptrtoint ptr %poison_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %poison_channel, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup97_crit_edge, label %lor.lhs.false6

lor.lhs.false4.cleanup97_crit_edge:               ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup97

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %num_channels = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 5
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp = icmp ugt i32 %7, 64
  br i1 %cmp, label %lor.lhs.false6.cleanup97_crit_edge, label %if.end

lor.lhs.false6.cleanup97_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup97

if.end:                                           ; preds = %lor.lhs.false6
  %call = tail call i32 @ida_alloc_range(ptr noundef nonnull @mdev_id, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iface, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.27) #21
  br label %cleanup97

if.end9:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 348) #22
  %p = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 14
  %11 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %p, align 4
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @ida_free(ptr noundef nonnull @mdev_id, i32 noundef %call) #16
  br label %cleanup97

if.end14:                                         ; preds = %if.end9
  %channel_list = getelementptr inbounds %struct.interface_private, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %channel_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %channel_list, ptr %channel_list, align 4
  %prev.i = getelementptr inbounds %struct.interface_private, ptr %call7.i.i, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %channel_list, ptr %prev.i, align 8
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call, ptr %call7.i.i, align 8
  %name = getelementptr inbounds %struct.interface_private, ptr %call7.i.i, i32 0, i32 1
  %description = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 4
  %15 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %description, align 4
  %call18 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %16, i32 noundef 80) #16
  %17 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iface, align 4
  %bus = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mostbus, ptr %bus, align 8
  %20 = load ptr, ptr %iface, align 4
  %groups = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 34
  %21 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @interface_attr_groups, ptr %groups, align 8
  %22 = load ptr, ptr %iface, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %iface, ptr %driver_data.i, align 4
  %24 = load ptr, ptr %iface, align 4
  %call23 = tail call i32 @device_register(ptr noundef %24) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.cond.preheader, label %do.end28

for.cond.preheader:                               ; preds = %if.end14
  %25 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp34188.not = icmp eq i32 %26, 0
  br i1 %cmp34188.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %channel_vector = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 6
  br label %for.body

do.end28:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iface, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.30) #21
  %29 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p, align 4
  tail call void @kfree(ptr noundef %30) #16
  %31 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iface, align 4
  tail call void @put_device(ptr noundef %32) #16
  tail call void @ida_free(ptr noundef nonnull @mdev_id, i32 noundef %call) #16
  br label %cleanup97

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0189 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %33 = ptrtoint ptr %channel_vector to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %channel_vector, align 4
  %name_suffix35 = getelementptr %struct.most_channel_capability, ptr %34, i32 %i.0189, i32 6
  %35 = ptrtoint ptr %name_suffix35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name_suffix35, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i175 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 1448) #22
  %tobool37.not = icmp eq ptr %call7.i.i175, null
  br i1 %tobool37.not, label %for.body.err_free_resources_crit_edge, label %if.end39

for.body.err_free_resources_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free_resources

if.end39:                                         ; preds = %for.body
  %tobool40.not = icmp eq ptr %36, null
  %name42 = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 5
  br i1 %tobool40.not, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  %call44 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name42, i32 noundef 80, ptr noundef nonnull @.str.32, i32 noundef %i.0189)
  br label %if.end48

if.else:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  %call47 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name42, i32 noundef 80, ptr noundef nonnull @.str.33, ptr noundef nonnull %36)
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then41
  %name49 = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 5
  %init_name = getelementptr inbounds %struct.device, ptr %call7.i.i175, i32 0, i32 3
  %38 = ptrtoint ptr %init_name to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %name49, ptr %init_name, align 8
  %39 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iface, align 4
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i175, i32 0, i32 1
  %41 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %parent, align 8
  %groups55 = getelementptr inbounds %struct.device, ptr %call7.i.i175, i32 0, i32 34
  %42 = ptrtoint ptr %groups55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @channel_attr_groups, ptr %groups55, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i175, i32 0, i32 35
  %43 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @release_channel, ptr %release, align 4
  %44 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %p, align 4
  %arrayidx58 = getelementptr %struct.interface_private, ptr %45, i32 0, i32 2, i32 %i.0189
  %46 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i175, ptr %arrayidx58, align 4
  %is_starving = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 9
  %47 = ptrtoint ptr %is_starving to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %is_starving, align 4
  %iface59 = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 10
  %48 = ptrtoint ptr %iface59 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %iface, ptr %iface59, align 8
  %conv = trunc i32 %i.0189 to i16
  %channel_id = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 4
  %49 = ptrtoint ptr %channel_id to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv, ptr %channel_id, align 8
  %keep_mbo = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 12
  %50 = ptrtoint ptr %keep_mbo to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %keep_mbo, align 8
  %enqueue_halt = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 13
  %51 = ptrtoint ptr %enqueue_halt to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %enqueue_halt, align 1
  %is_poisoned = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 6
  %52 = ptrtoint ptr %is_poisoned to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %is_poisoned, align 2
  %cfg = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 11
  %subbuffer_size = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 11, i32 5
  %53 = ptrtoint ptr %subbuffer_size to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %subbuffer_size, align 2
  %packets_per_xact = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 11, i32 6
  %54 = ptrtoint ptr %packets_per_xact to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %packets_per_xact, align 4
  %fifo_lock = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 15
  %55 = call ptr @memset(ptr %cfg, i32 0, i32 12)
  tail call void @__raw_spin_lock_init(ptr noundef %fifo_lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @most_register_interface.__key, i16 noundef signext 3) #16
  %fifo = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 14
  %56 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %fifo, ptr %fifo, align 4
  %prev.i176 = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 14, i32 1
  %57 = ptrtoint ptr %prev.i176 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %fifo, ptr %prev.i176, align 8
  %trash_fifo = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 20
  %58 = ptrtoint ptr %trash_fifo to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %trash_fifo, ptr %trash_fifo, align 8
  %prev.i177 = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 20, i32 1
  %59 = ptrtoint ptr %prev.i177 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %trash_fifo, ptr %prev.i177, align 4
  %halt_fifo = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 16
  %60 = ptrtoint ptr %halt_fifo to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %halt_fifo, ptr %halt_fifo, align 8
  %prev.i178 = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 16, i32 1
  %61 = ptrtoint ptr %prev.i178 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %halt_fifo, ptr %prev.i178, align 4
  %cleanup = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 1
  %62 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %cleanup, align 8
  %wait.i = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.92, ptr noundef nonnull @init_completion.__key) #16
  %mbo_ref = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mbo_ref, i32 noundef 4) #16
  %63 = ptrtoint ptr %mbo_ref to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 0, ptr %mbo_ref, align 8
  %start_mutex = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %start_mutex, ptr noundef nonnull @.str.36, ptr noundef nonnull @most_register_interface.__key.35) #16
  %nq_mutex = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %nq_mutex, ptr noundef nonnull @.str.38, ptr noundef nonnull @most_register_interface.__key.37) #16
  %list = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 17
  %64 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %p, align 4
  %channel_list76 = getelementptr inbounds %struct.interface_private, ptr %65, i32 0, i32 3
  %prev.i179 = getelementptr inbounds %struct.interface_private, ptr %65, i32 0, i32 3, i32 1
  %66 = ptrtoint ptr %prev.i179 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i179, align 4
  %call.i.i180 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %67, ptr noundef %channel_list76) #16
  br i1 %call.i.i180, label %if.end.i.i, label %if.end48.list_add_tail.exit_crit_edge

if.end48.list_add_tail.exit_crit_edge:            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  %68 = ptrtoint ptr %prev.i179 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %list, ptr %prev.i179, align 4
  %69 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %channel_list76, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.most_channel, ptr %call7.i.i175, i32 0, i32 17, i32 1
  %70 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %list, ptr %67, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end48.list_add_tail.exit_crit_edge
  %call78 = tail call i32 @device_register(ptr noundef nonnull %call7.i.i175) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %for.inc, label %err_free_most_channel

for.inc:                                          ; preds = %list_add_tail.exit
  %inc = add nuw i32 %i.0189, 1
  %72 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_channels, align 4
  %cmp34 = icmp ult i32 %inc, %73
  br i1 %cmp34, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %74 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %description, align 4
  tail call void @most_interface_register_notify(ptr noundef %75) #16
  br label %cleanup97

err_free_most_channel:                            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i175, ptr noundef nonnull @.str.40) #21
  tail call void @put_device(ptr noundef nonnull %call7.i.i175) #16
  br label %err_free_resources

err_free_resources:                               ; preds = %err_free_most_channel, %for.body.err_free_resources_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0189)
  %cmp89.not190 = icmp eq i32 %i.0189, 0
  br i1 %cmp89.not190, label %err_free_resources.while.end_crit_edge, label %err_free_resources.while.body_crit_edge

err_free_resources.while.body_crit_edge:          ; preds = %err_free_resources
  br label %while.body

err_free_resources.while.end_crit_edge:           ; preds = %err_free_resources
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_free_resources.while.body_crit_edge
  %i.1191 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.0189, %err_free_resources.while.body_crit_edge ]
  %76 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %p, align 4
  %dec = add i32 %i.1191, -1
  %arrayidx93 = getelementptr %struct.interface_private, ptr %77, i32 0, i32 2, i32 %dec
  %78 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx93, align 4
  tail call void @device_unregister(ptr noundef %79) #16
  %cmp89.not = icmp eq i32 %dec, 0
  br i1 %cmp89.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %err_free_resources.while.end_crit_edge
  %80 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %p, align 4
  tail call void @kfree(ptr noundef %81) #16
  %82 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %iface, align 4
  tail call void @device_unregister(ptr noundef %83) #16
  tail call void @ida_free(ptr noundef nonnull @mdev_id, i32 noundef %call) #16
  br label %cleanup97

cleanup97:                                        ; preds = %while.end, %for.end, %do.end28, %if.then13, %do.end, %lor.lhs.false6.cleanup97_crit_edge, %lor.lhs.false4.cleanup97_crit_edge, %lor.lhs.false2.cleanup97_crit_edge, %lor.lhs.false.cleanup97_crit_edge, %entry.cleanup97_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ -12, %do.end28 ], [ -12, %while.end ], [ 0, %for.end ], [ -12, %if.then13 ], [ -22, %lor.lhs.false6.cleanup97_crit_edge ], [ -22, %lor.lhs.false4.cleanup97_crit_edge ], [ -22, %lor.lhs.false2.cleanup97_crit_edge ], [ -22, %lor.lhs.false.cleanup97_crit_edge ], [ -22, %entry.cleanup97_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_channel(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_interface_register_notify(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @most_deregister_interface(ptr nocapture noundef readonly %iface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_channels = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 5
  %0 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp40.not = icmp eq i32 %1, 0
  br i1 %cmp40.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %p = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_del.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %arrayidx = getelementptr %struct.interface_private, ptr %3, i32 0, i32 2, i32 %i.041
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %pipe0 = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %pipe0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe0, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %disconnect_channel = getelementptr inbounds %struct.most_component, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %disconnect_channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disconnect_channel, align 4
  %iface3 = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %iface3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iface3, align 8
  %channel_id = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %channel_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %channel_id, align 8
  %conv = zext i16 %13 to i32
  %call = tail call i32 %9(ptr noundef %11, i32 noundef %conv) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %pipe1 = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 19
  %14 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pipe1, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %if.end.if.end14_crit_edge, label %if.then6

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %disconnect_channel9 = getelementptr inbounds %struct.most_component, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %disconnect_channel9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disconnect_channel9, align 4
  %iface10 = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 10
  %18 = ptrtoint ptr %iface10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iface10, align 8
  %channel_id11 = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 4
  %20 = ptrtoint ptr %channel_id11 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %channel_id11, align 8
  %conv12 = zext i16 %21 to i32
  %call13 = tail call i32 %17(ptr noundef %19, i32 noundef %conv12) #16
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %if.end.if.end14_crit_edge
  %22 = ptrtoint ptr %pipe0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %pipe0, align 8
  %23 = ptrtoint ptr %pipe1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %pipe1, align 4
  %list = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_del.exit_crit_edge

if.end14.list_del.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 17, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end14.list_del.exit_crit_edge
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.most_channel, ptr %5, i32 0, i32 17, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @device_unregister(ptr noundef %5) #16
  %inc = add nuw i32 %i.041, 1
  %32 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_channels, align 4
  %cmp = icmp ult i32 %inc, %33
  br i1 %cmp, label %list_del.exit.for.body_crit_edge, label %list_del.exit.for.end_crit_edge

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %p19 = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 14
  %34 = ptrtoint ptr %p19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %p19, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  tail call void @ida_free(ptr noundef nonnull @mdev_id, i32 noundef %37) #16
  %38 = ptrtoint ptr %p19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p19, align 4
  tail call void @kfree(ptr noundef %39) #16
  %40 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iface, align 4
  tail call void @device_unregister(ptr noundef %41) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @most_stop_enqueue(ptr nocapture noundef readonly %iface, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %p = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 14
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %arrayidx = getelementptr %struct.interface_private, ptr %1, i32 0, i32 2, i32 %id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %nq_mutex = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %nq_mutex, i32 noundef 0) #16
  %enqueue_halt = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %enqueue_halt to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %enqueue_halt, align 1
  tail call void @mutex_unlock(ptr noundef %nq_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @most_resume_enqueue(ptr nocapture noundef readonly %iface, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %p = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 14
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %arrayidx = getelementptr %struct.interface_private, ptr %1, i32 0, i32 2, i32 %id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %nq_mutex = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %nq_mutex, i32 noundef 0) #16
  %enqueue_halt = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %enqueue_halt to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enqueue_halt, align 1
  tail call void @mutex_unlock(ptr noundef %nq_mutex) #16
  %hdm_fifo_wq = getelementptr inbounds %struct.most_channel, ptr %3, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %hdm_fifo_wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @most_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @driver_unregister(ptr noundef nonnull @mostbus_driver) #16
  tail call void @bus_unregister(ptr noundef nonnull @mostbus) #16
  tail call void @ida_destroy(ptr noundef nonnull @mdev_id) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @most_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile ptr @comp_list, ptr @comp_list, align 4
  store ptr @comp_list, ptr getelementptr inbounds (%struct.list_head, ptr @comp_list, i32 0, i32 1), align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @mdev_id, ptr noundef nonnull @.str.102, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #16
  store i32 67108869, ptr getelementptr inbounds (%struct.ida, ptr @mdev_id, i32 0, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.ida, ptr @mdev_id, i32 0, i32 0, i32 2), align 4
  %call = tail call i32 @bus_register(ptr noundef nonnull @mostbus) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @driver_register(ptr noundef nonnull @mostbus_driver) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #21
  tail call void @bus_unregister(ptr noundef nonnull @mostbus) #16
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call11 = tail call i32 @configfs_init() #21
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_name(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trash_mbo(ptr noundef %mbo) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %mbo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbo, align 4
  %fifo_lock = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock) #16
  %list = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2
  %trash_fifo = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %trash_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trash_fifo, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %trash_fifo, ptr noundef %3) #16
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %trash_fifo, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %trash_fifo to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %trash_fifo, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock, i32 noundef %call2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdm_enqueue_thread(ptr noundef %data) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %iface = getelementptr inbounds %struct.most_channel, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iface, align 8
  %enqueue1 = getelementptr inbounds %struct.most_interface, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %enqueue1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enqueue1, align 4
  %call101 = call zeroext i1 @kthread_should_stop() #16
  br i1 %call101, label %entry.cleanup55_crit_edge, label %while.body.lr.ph, !prof !301

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup55

while.body.lr.ph:                                 ; preds = %entry
  %enqueue_halt.i = getelementptr inbounds %struct.most_channel, ptr %data, i32 0, i32 13
  %fifo_lock.i = getelementptr inbounds %struct.most_channel, ptr %data, i32 0, i32 15
  %halt_fifo.i = getelementptr inbounds %struct.most_channel, ptr %data, i32 0, i32 16
  %hdm_fifo_wq = getelementptr inbounds %struct.most_channel, ptr %data, i32 0, i32 22
  %nq_mutex = getelementptr inbounds %struct.most_channel, ptr %data, i32 0, i32 8
  %cfg = getelementptr inbounds %struct.most_channel, ptr %data, i32 0, i32 11
  %buffer_size = getelementptr inbounds %struct.most_channel, ptr %data, i32 0, i32 11, i32 3
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 781) #16
  %4 = ptrtoint ptr %enqueue_halt.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enqueue_halt.i, align 1, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %hdm_mbo_ready.exit, label %while.body.lor.lhs.false_crit_edge

while.body.lor.lhs.false_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

hdm_mbo_ready.exit:                               ; preds = %while.body
  call void @_raw_spin_lock_irq(ptr noundef %fifo_lock.i) #16
  %6 = ptrtoint ptr %halt_fifo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %halt_fifo.i, align 4
  %cmp.i.i.not = icmp eq ptr %7, %halt_fifo.i
  call void @_raw_spin_unlock_irq(ptr noundef %fifo_lock.i) #16
  br i1 %cmp.i.i.not, label %hdm_mbo_ready.exit.lor.lhs.false_crit_edge, label %hdm_mbo_ready.exit.if.end19_crit_edge

hdm_mbo_ready.exit.if.end19_crit_edge:            ; preds = %hdm_mbo_ready.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

hdm_mbo_ready.exit.lor.lhs.false_crit_edge:       ; preds = %hdm_mbo_ready.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %hdm_mbo_ready.exit.lor.lhs.false_crit_edge, %while.body.lor.lhs.false_crit_edge
  %call8 = call zeroext i1 @kthread_should_stop() #16
  br i1 %call8, label %lor.lhs.false.if.end19_crit_edge, label %if.then

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then
  %call10 = call i32 @prepare_to_wait_event(ptr noundef %hdm_fifo_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #16
  %9 = ptrtoint ptr %enqueue_halt.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enqueue_halt.i, align 1, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i83 = icmp eq i8 %10, 0
  br i1 %tobool.not.i83, label %hdm_mbo_ready.exit89, label %for.cond.lor.lhs.false12_crit_edge

for.cond.lor.lhs.false12_crit_edge:               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false12

hdm_mbo_ready.exit89:                             ; preds = %for.cond
  call void @_raw_spin_lock_irq(ptr noundef %fifo_lock.i) #16
  %11 = ptrtoint ptr %halt_fifo.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %halt_fifo.i, align 4
  %cmp.i.i86.not = icmp eq ptr %12, %halt_fifo.i
  call void @_raw_spin_unlock_irq(ptr noundef %fifo_lock.i) #16
  br i1 %cmp.i.i86.not, label %hdm_mbo_ready.exit89.lor.lhs.false12_crit_edge, label %hdm_mbo_ready.exit89.for.end_crit_edge

hdm_mbo_ready.exit89.for.end_crit_edge:           ; preds = %hdm_mbo_ready.exit89
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

hdm_mbo_ready.exit89.lor.lhs.false12_crit_edge:   ; preds = %hdm_mbo_ready.exit89
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %hdm_mbo_ready.exit89.lor.lhs.false12_crit_edge, %for.cond.lor.lhs.false12_crit_edge
  %call13 = call zeroext i1 @kthread_should_stop() #16
  br i1 %call13, label %lor.lhs.false12.for.end_crit_edge, label %if.end

lor.lhs.false12.for.end_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false12
  %tobool15.not = icmp eq i32 %call10, 0
  br i1 %tobool15.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @schedule() #16
  br label %for.cond

for.end:                                          ; preds = %lor.lhs.false12.for.end_crit_edge, %hdm_mbo_ready.exit89.for.end_crit_edge
  call void @finish_wait(ptr noundef %hdm_fifo_wq, ptr noundef nonnull %__wq_entry) #16
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %if.end19

if.end19:                                         ; preds = %__out, %lor.lhs.false.if.end19_crit_edge, %hdm_mbo_ready.exit.if.end19_crit_edge
  call void @mutex_lock_nested(ptr noundef %nq_mutex, i32 noundef 0) #16
  call void @_raw_spin_lock_irq(ptr noundef %fifo_lock.i) #16
  %13 = ptrtoint ptr %enqueue_halt.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enqueue_halt.i, align 1, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  br i1 %tobool21.not, label %lor.rhs, label %if.end19.if.then30_crit_edge, !prof !300

if.end19.if.then30_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

lor.rhs:                                          ; preds = %if.end19
  %15 = ptrtoint ptr %halt_fifo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %halt_fifo.i, align 4
  %cmp.i = icmp eq ptr %16, %halt_fifo.i
  br i1 %cmp.i, label %lor.rhs.if.then30_crit_edge, label %if.end33, !prof !301

lor.rhs.if.then30_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

if.then30:                                        ; preds = %lor.rhs.if.then30_crit_edge, %if.end19.if.then30_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %fifo_lock.i) #16
  call void @mutex_unlock(ptr noundef %nq_mutex) #16
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end40.while.cond.backedge_crit_edge, %if.then30
  %call = call zeroext i1 @kthread_should_stop() #16
  br i1 %call, label %while.cond.backedge.cleanup55_crit_edge, label %while.cond.backedge.while.body_crit_edge, !prof !301

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.cond.backedge.cleanup55_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup55

if.end33:                                         ; preds = %lor.rhs
  %add.ptr = getelementptr i8, ptr %16, i32 -8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end33.list_del.exit_crit_edge

if.end33.list_del.exit_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end33.list_del.exit_crit_edge
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  %prev.i = getelementptr %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %fifo_lock.i) #16
  %25 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp = icmp eq i32 %26, 1
  br i1 %cmp, label %if.then38, label %list_del.exit.if.end40_crit_edge

list_del.exit.if.end40_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then38:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %buffer_size, align 2
  %buffer_length = getelementptr i8, ptr %16, i32 28
  %29 = ptrtoint ptr %buffer_length to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %buffer_length, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %list_del.exit.if.end40_crit_edge
  %ifp = getelementptr i8, ptr %16, i32 8
  %30 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ifp, align 4
  %hdm_channel_id = getelementptr i8, ptr %16, i32 16
  %32 = ptrtoint ptr %hdm_channel_id to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %hdm_channel_id, align 4
  %conv = zext i16 %33 to i32
  %call41 = call i32 %3(ptr noundef %31, i32 noundef %conv, ptr noundef %add.ptr) #16
  call void @mutex_unlock(ptr noundef %nq_mutex) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool43.not = icmp eq i32 %call41, 0
  br i1 %tobool43.not, label %if.end40.while.cond.backedge_crit_edge, label %do.end53, !prof !300

if.end40.while.cond.backedge_crit_edge:           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge

do.end53:                                         ; preds = %if.end40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %data, ptr noundef nonnull @.str.48) #21
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  %fifo_lock.i90 = getelementptr inbounds %struct.most_channel, ptr %35, i32 0, i32 15
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i90) #16
  %halt_fifo.i91 = getelementptr inbounds %struct.most_channel, ptr %35, i32 0, i32 16
  %prev.i.i92 = getelementptr inbounds %struct.most_channel, ptr %35, i32 0, i32 16, i32 1
  %36 = ptrtoint ptr %prev.i.i92 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i92, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %16, ptr noundef %37, ptr noundef %halt_fifo.i91) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end53.nq_hdm_mbo.exit_crit_edge

do.end53.nq_hdm_mbo.exit_crit_edge:               ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %nq_hdm_mbo.exit

if.end.i.i.i:                                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.le = getelementptr %struct.list_head, ptr %16, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i92 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %16, ptr %prev.i.i92, align 4
  %39 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %halt_fifo.i91, ptr %16, align 4
  %40 = ptrtoint ptr %prev.i.le to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev.i.le, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %16, ptr %37, align 4
  br label %nq_hdm_mbo.exit

nq_hdm_mbo.exit:                                  ; preds = %if.end.i.i.i, %do.end53.nq_hdm_mbo.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i90, i32 noundef %call2.i) #16
  %hdm_fifo_wq.i = getelementptr inbounds %struct.most_channel, ptr %35, i32 0, i32 22
  call void @__wake_up(ptr noundef %hdm_fifo_wq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  %hdm_enqueue_task = getelementptr inbounds %struct.most_channel, ptr %data, i32 0, i32 21
  %42 = ptrtoint ptr %hdm_enqueue_task to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %hdm_enqueue_task, align 8
  br label %cleanup55

cleanup55:                                        ; preds = %nq_hdm_mbo.exit, %while.cond.backedge.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @most_free_mbo_coherent(ptr noundef %mbo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mbo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbo, align 4
  %iface = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface, align 8
  %dma_free = getelementptr inbounds %struct.most_interface, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %dma_free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_free, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %extra_len = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 11, i32 4
  %6 = ptrtoint ptr %extra_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %extra_len, align 4
  %buffer_size = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 11, i32 3
  %8 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %buffer_size, align 2
  %add = add i16 %9, %7
  %conv6 = zext i16 %add to i32
  tail call void %5(ptr noundef %mbo, i32 noundef %conv6) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %virt_address = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 6
  %10 = ptrtoint ptr %virt_address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt_address, align 4
  tail call void @kfree(ptr noundef %11) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @kfree(ptr noundef %mbo) #16
  %mbo_ref = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mbo_ref, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr %mbo_ref, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mbo_ref, ptr %mbo_ref, i32 1, ptr elementtype(i32) %mbo_ref) #16, !srcloc !306
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !307
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %cleanup = getelementptr inbounds %struct.most_channel, ptr %1, i32 0, i32 1
  tail call void @complete(ptr noundef %cleanup) #16
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @most_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %drv) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call i32 @strcmp(ptr noundef %retval.0.i, ptr noundef nonnull dereferenceable(5) @.str.52) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp ne i32 %call1, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @description_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %description = getelementptr inbounds %struct.most_interface, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %description, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.54, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @interface_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %interface = getelementptr inbounds %struct.most_interface, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interface, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %3, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 4, label %sw.bb6
    i32 5, label %sw.bb8
    i32 6, label %sw.bb10
    i32 7, label %sw.bb12
    i32 8, label %sw.bb14
    i32 9, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.56, i32 10)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %6 = call ptr @memcpy(ptr %buf, ptr @.str.57, i32 5)
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.58, i32 5)
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.59, i32 5)
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.60, i32 5)
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %10 = call ptr @memcpy(ptr %buf, ptr @.str.61, i32 9)
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %11 = call ptr @memcpy(ptr %buf, ptr @.str.62, i32 10)
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %12 = call ptr @memcpy(ptr %buf, ptr @.str.63, i32 5)
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %13 = call ptr @memcpy(ptr %buf, ptr @.str.64, i32 6)
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %14 = call ptr @memcpy(ptr %buf, ptr @.str.65, i32 9)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ 8, %sw.epilog ], [ 5, %sw.bb16 ], [ 4, %sw.bb14 ], [ 9, %sw.bb12 ], [ 8, %sw.bb10 ], [ 4, %sw.bb8 ], [ 4, %sw.bb6 ], [ 4, %sw.bb4 ], [ 4, %sw.bb2 ], [ 9, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @channel_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(13) @.str.66) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %iface = getelementptr inbounds %struct.most_channel, ptr %kobj, i32 0, i32 10
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface, align 8
  %interface = getelementptr inbounds %struct.most_interface, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp.not = icmp eq i32 %5, 7
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call8 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(21) @.str.67) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

land.lhs.true10:                                  ; preds = %if.end
  %iface11 = getelementptr inbounds %struct.most_channel, ptr %kobj, i32 0, i32 10
  %6 = ptrtoint ptr %iface11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iface11, align 8
  %interface12 = getelementptr inbounds %struct.most_interface, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %interface12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %interface12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp13.not = icmp eq i32 %9, 8
  br i1 %cmp13.not, label %land.lhs.true10.if.end15_crit_edge, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true10.if.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true10.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %land.lhs.true10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %11, %if.end15 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true10.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @available_directions_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_id = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %channel_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channel_id, align 8
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %buf, align 1
  %iface = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 10
  %3 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iface, align 8
  %channel_vector = getelementptr inbounds %struct.most_interface, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %channel_vector to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channel_vector, align 4
  %arrayidx = getelementptr %struct.most_channel_capability, ptr %6, i32 %conv
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 4
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %strlen24 = tail call i32 @strlen(ptr %buf) #20
  %endptr25 = getelementptr i8, ptr %buf, i32 %strlen24
  %10 = ptrtoint ptr %endptr25 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 1920475136, ptr %endptr25, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iface, align 8
  %channel_vector4 = getelementptr inbounds %struct.most_interface, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %channel_vector4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channel_vector4, align 4
  %arrayidx5 = getelementptr %struct.most_channel_capability, ptr %14, i32 %conv
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx5, align 4
  %17 = and i16 %16, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool9.not = icmp eq i16 %17, 0
  br i1 %tobool9.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %strlen22 = tail call i32 @strlen(ptr %buf) #20
  %endptr23 = getelementptr i8, ptr %buf, i32 %strlen22
  %18 = ptrtoint ptr %endptr23 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 1954029568, ptr %endptr23, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %strlen = tail call i32 @strlen(ptr %buf) #20
  %endptr = getelementptr i8, ptr %buf, i32 %strlen
  %19 = ptrtoint ptr %endptr to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 2560, ptr %endptr, align 1
  %call14 = tail call i32 @strlen(ptr noundef %buf) #20
  ret i32 %call14
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @available_datatypes_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_id = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %channel_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channel_id, align 8
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %buf, align 1
  %iface = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 10
  %3 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iface, align 8
  %channel_vector = getelementptr inbounds %struct.most_interface, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %channel_vector to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channel_vector, align 4
  %data_type = getelementptr %struct.most_channel_capability, ptr %6, i32 %conv, i32 1
  %7 = ptrtoint ptr %data_type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %data_type, align 2
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %strlen54 = tail call i32 @strlen(ptr %buf) #20
  %endptr55 = getelementptr i8, ptr %buf, i32 %strlen54
  %10 = call ptr @memcpy(ptr %endptr55, ptr @.str.74, i32 9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iface, align 8
  %channel_vector4 = getelementptr inbounds %struct.most_interface, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %channel_vector4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channel_vector4, align 4
  %data_type6 = getelementptr %struct.most_channel_capability, ptr %14, i32 %conv, i32 1
  %15 = ptrtoint ptr %data_type6 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %data_type6, align 2
  %17 = and i16 %16, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool9.not = icmp eq i16 %17, 0
  br i1 %tobool9.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %strlen52 = tail call i32 @strlen(ptr %buf) #20
  %endptr53 = getelementptr i8, ptr %buf, i32 %strlen52
  %18 = call ptr @memcpy(ptr %endptr53, ptr @.str.75, i32 7)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %19 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iface, align 8
  %channel_vector14 = getelementptr inbounds %struct.most_interface, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %channel_vector14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channel_vector14, align 4
  %data_type16 = getelementptr %struct.most_channel_capability, ptr %22, i32 %conv, i32 1
  %23 = ptrtoint ptr %data_type16 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %data_type16, align 2
  %25 = and i16 %24, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool19.not = icmp eq i16 %25, 0
  br i1 %tobool19.not, label %if.end12.if.end22_crit_edge, label %if.then20

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %strlen50 = tail call i32 @strlen(ptr %buf) #20
  %endptr51 = getelementptr i8, ptr %buf, i32 %strlen50
  %26 = call ptr @memcpy(ptr %endptr51, ptr @.str.76, i32 6)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end12.if.end22_crit_edge
  %27 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iface, align 8
  %channel_vector24 = getelementptr inbounds %struct.most_interface, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %channel_vector24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %channel_vector24, align 4
  %data_type26 = getelementptr %struct.most_channel_capability, ptr %30, i32 %conv, i32 1
  %31 = ptrtoint ptr %data_type26 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %data_type26, align 2
  %33 = and i16 %32, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool29.not = icmp eq i16 %33, 0
  br i1 %tobool29.not, label %if.end22.if.end32_crit_edge, label %if.then30

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.then30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %strlen48 = tail call i32 @strlen(ptr %buf) #20
  %endptr49 = getelementptr i8, ptr %buf, i32 %strlen48
  %34 = call ptr @memcpy(ptr %endptr49, ptr @.str.77, i32 6)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end22.if.end32_crit_edge
  %strlen = tail call i32 @strlen(ptr %buf) #20
  %endptr = getelementptr i8, ptr %buf, i32 %strlen
  %35 = ptrtoint ptr %endptr to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 2560, ptr %endptr, align 1
  %call34 = tail call i32 @strlen(ptr noundef %buf) #20
  ret i32 %call34
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @number_of_packet_buffers_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_id = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %channel_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channel_id, align 8
  %conv = zext i16 %1 to i32
  %iface = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface, align 8
  %channel_vector = getelementptr inbounds %struct.most_interface, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %channel_vector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_vector, align 4
  %num_buffers_packet = getelementptr %struct.most_channel_capability, ptr %5, i32 %conv, i32 2
  %6 = ptrtoint ptr %num_buffers_packet to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_buffers_packet, align 4
  %conv1 = zext i16 %7 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.79, i32 noundef %conv1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @number_of_stream_buffers_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_id = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %channel_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channel_id, align 8
  %conv = zext i16 %1 to i32
  %iface = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface, align 8
  %channel_vector = getelementptr inbounds %struct.most_interface, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %channel_vector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_vector, align 4
  %num_buffers_streaming = getelementptr %struct.most_channel_capability, ptr %5, i32 %conv, i32 4
  %6 = ptrtoint ptr %num_buffers_streaming to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_buffers_streaming, align 4
  %conv1 = zext i16 %7 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.79, i32 noundef %conv1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @size_of_stream_buffer_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_id = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %channel_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channel_id, align 8
  %conv = zext i16 %1 to i32
  %iface = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface, align 8
  %channel_vector = getelementptr inbounds %struct.most_interface, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %channel_vector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_vector, align 4
  %buffer_size_streaming = getelementptr %struct.most_channel_capability, ptr %5, i32 %conv, i32 5
  %6 = ptrtoint ptr %buffer_size_streaming to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buffer_size_streaming, align 2
  %conv1 = zext i16 %7 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.79, i32 noundef %conv1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @size_of_packet_buffer_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_id = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %channel_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channel_id, align 8
  %conv = zext i16 %1 to i32
  %iface = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface, align 8
  %channel_vector = getelementptr inbounds %struct.most_interface, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %channel_vector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_vector, align 4
  %buffer_size_packet = getelementptr %struct.most_channel_capability, ptr %5, i32 %conv, i32 3
  %6 = ptrtoint ptr %buffer_size_packet to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buffer_size_packet, align 2
  %conv1 = zext i16 %7 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.79, i32 noundef %conv1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @channel_starving_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %is_starving = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %is_starving to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_starving, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.79, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_buffer_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_size = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 11, i32 3
  %0 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %buffer_size, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.79, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_number_of_buffers_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_buffers = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 11, i32 2
  %0 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_buffers, align 4
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.79, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @set_direction_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 1954023936, ptr %buf, align 1
  br label %cleanup

if.else:                                          ; preds = %entry
  %and3 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 1920469504, ptr %buf, align 1
  br label %cleanup

if.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.89, i32 14)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  %retval.0 = phi i32 [ 3, %if.then ], [ 3, %if.then5 ], [ 13, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_datatype_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data_type = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_type, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.09.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ]
  %name = getelementptr [5 x %struct.anon.71], ptr @ch_data_type, i32 0, i32 %i.09.lcssa, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.33, ptr noundef %3)
  br label %cleanup

for.inc:                                          ; preds = %entry
  %and.1 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.if.then_crit_edge

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.if.then_crit_edge

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %and.3 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.4, label %for.inc.2.if.then_crit_edge

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.89, i32 14)
  br label %cleanup

cleanup:                                          ; preds = %for.inc.4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 13, %for.inc.4 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_subbuffer_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %subbuffer_size = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 11, i32 5
  %0 = ptrtoint ptr %subbuffer_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %subbuffer_size, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.79, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_packets_per_xact_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %packets_per_xact = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 11, i32 6
  %0 = ptrtoint ptr %packets_per_xact to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %packets_per_xact, align 4
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.79, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_dbr_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dbr_size = getelementptr inbounds %struct.most_channel, ptr %dev, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %dbr_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dbr_size, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.79, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @links_show(ptr nocapture noundef readnone %drv, ptr noundef %buf) #0 align 64 {
entry:
  %d = alloca %struct.show_links_data, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %d) #16
  %0 = getelementptr inbounds %struct.show_links_data, ptr %d, i32 0, i32 1
  %1 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %d, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buf, ptr %0, align 4
  %call = call i32 @bus_for_each_dev(ptr noundef nonnull @mostbus, ptr noundef null, ptr noundef nonnull %d, ptr noundef nonnull @print_links) #16
  %3 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %d, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d) #16
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @print_links(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %buf2 = getelementptr inbounds %struct.show_links_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf2, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %p = getelementptr inbounds %struct.most_interface, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p, align 4
  %channel_list = getelementptr inbounds %struct.interface_private, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %channel_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn69 = load ptr, ptr %channel_list, align 4
  %cmp.not72 = icmp eq ptr %.pn69, %channel_list
  br i1 %cmp.not72, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn74 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn69, %entry.for.body_crit_edge ]
  %offs.073 = phi i32 [ %offs.2, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %c.075 = getelementptr i8, ptr %.pn74, i32 -1352
  %pipe0 = getelementptr i8, ptr %.pn74, i32 8
  %9 = ptrtoint ptr %pipe0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pipe0, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %for.body
  %add.ptr5 = getelementptr i8, ptr %3, i32 %offs.073
  %sub = sub i32 4096, %offs.073
  %name = getelementptr inbounds %struct.most_component, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %if.then.dev_name.exit_crit_edge ]
  %init_name.i54 = getelementptr i8, ptr %.pn74, i32 -1208
  %19 = ptrtoint ptr %init_name.i54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i54, align 8
  %tobool.not.i55 = icmp eq ptr %20, null
  br i1 %tobool.not.i55, label %if.end.i56, label %dev_name.exit.dev_name.exit58_crit_edge

dev_name.exit.dev_name.exit58_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit58

if.end.i56:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %c.075 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %c.075, align 4
  br label %dev_name.exit58

dev_name.exit58:                                  ; preds = %if.end.i56, %dev_name.exit.dev_name.exit58_crit_edge
  %retval.0.i57 = phi ptr [ %22, %if.end.i56 ], [ %20, %dev_name.exit.dev_name.exit58_crit_edge ]
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr5, i32 noundef %sub, ptr noundef nonnull @.str.95, ptr noundef %12, ptr noundef %retval.0.i, ptr noundef %retval.0.i57) #16
  %add = add i32 %call12, %offs.073
  br label %if.end

if.end:                                           ; preds = %dev_name.exit58, %for.body.if.end_crit_edge
  %offs.1 = phi i32 [ %add, %dev_name.exit58 ], [ %offs.073, %for.body.if.end_crit_edge ]
  %pipe1 = getelementptr i8, ptr %.pn74, i32 20
  %23 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pipe1, align 4
  %tobool14.not = icmp eq ptr %24, null
  br i1 %tobool14.not, label %if.end.for.inc_crit_edge, label %if.then15

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then15:                                        ; preds = %if.end
  %add.ptr16 = getelementptr i8, ptr %3, i32 %offs.1
  %sub17 = sub i32 4096, %offs.1
  %name20 = getelementptr inbounds %struct.most_component, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %name20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name20, align 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %init_name.i59 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %init_name.i59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i59, align 8
  %tobool.not.i60 = icmp eq ptr %30, null
  br i1 %tobool.not.i60, label %if.end.i61, label %if.then15.dev_name.exit63_crit_edge

if.then15.dev_name.exit63_crit_edge:              ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit63

if.end.i61:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  br label %dev_name.exit63

dev_name.exit63:                                  ; preds = %if.end.i61, %if.then15.dev_name.exit63_crit_edge
  %retval.0.i62 = phi ptr [ %32, %if.end.i61 ], [ %30, %if.then15.dev_name.exit63_crit_edge ]
  %init_name.i64 = getelementptr i8, ptr %.pn74, i32 -1208
  %33 = ptrtoint ptr %init_name.i64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i64, align 8
  %tobool.not.i65 = icmp eq ptr %34, null
  br i1 %tobool.not.i65, label %if.end.i66, label %dev_name.exit63.dev_name.exit68_crit_edge

dev_name.exit63.dev_name.exit68_crit_edge:        ; preds = %dev_name.exit63
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit68

if.end.i66:                                       ; preds = %dev_name.exit63
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %c.075 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %c.075, align 4
  br label %dev_name.exit68

dev_name.exit68:                                  ; preds = %if.end.i66, %dev_name.exit63.dev_name.exit68_crit_edge
  %retval.0.i67 = phi ptr [ %36, %if.end.i66 ], [ %34, %dev_name.exit63.dev_name.exit68_crit_edge ]
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub17, ptr noundef nonnull @.str.95, ptr noundef %26, ptr noundef %retval.0.i62, ptr noundef %retval.0.i67) #16
  %add26 = add i32 %call25, %offs.1
  br label %for.inc

for.inc:                                          ; preds = %dev_name.exit68, %if.end.for.inc_crit_edge
  %offs.2 = phi i32 [ %add26, %dev_name.exit68 ], [ %offs.1, %if.end.for.inc_crit_edge ]
  %37 = ptrtoint ptr %.pn74 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn74, align 4
  %38 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p, align 4
  %channel_list4 = getelementptr inbounds %struct.interface_private, ptr %39, i32 0, i32 3
  %cmp.not = icmp eq ptr %.pn, %channel_list4
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %offs.0.lcssa = phi i32 [ %1, %entry.for.end_crit_edge ], [ %offs.2, %for.inc.for.end_crit_edge ]
  %40 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %offs.0.lcssa, ptr %data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @components_show(ptr nocapture noundef readnone %drv, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %comp.011 = load ptr, ptr @comp_list, align 4
  %cmp.not12 = icmp eq ptr %comp.011, @comp_list
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %comp.014 = phi ptr [ %comp.0, %for.body.for.body_crit_edge ], [ %comp.011, %entry.for.body_crit_edge ]
  %offs.013 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr1 = getelementptr i8, ptr %buf, i32 %offs.013
  %sub = sub i32 4096, %offs.013
  %name = getelementptr inbounds %struct.most_component, ptr %comp.014, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1, i32 noundef %sub, ptr noundef nonnull @.str.54, ptr noundef %1) #16
  %add = add i32 %call, %offs.013
  %2 = ptrtoint ptr %comp.014 to i32
  call void @__asan_load4_noabort(i32 %2)
  %comp.0 = load ptr, ptr %comp.014, align 4
  %cmp.not = icmp eq ptr %comp.0, @comp_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %offs.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  ret i32 %offs.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @configfs_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 139)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 139)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nobuiltin }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !67, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !84, !86, !87, !89, !90, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !109, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !150, !152, !154, !156, !158, !159, !161, !163, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !197, !199, !201, !203, !205, !207, !208, !210, !212, !214, !216, !218, !219, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !246, !248, !250, !251, !253, !254, !256, !258, !260, !261, !263, !265, !267, !269, !271, !273, !274, !276, !278, !279, !281, !282, !283, !284, !286, !287, !288, !290}
!llvm.module.flags = !{!291, !292, !293, !294, !295, !296, !297, !298}
!llvm.ident = !{!299}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/most/core.c", i32 631, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @most_set_cfg_datatype._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @most_set_cfg_datatype._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/most/core.c", i32 641, i32 19}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/most/core.c", i32 643, i32 26}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/most/core.c", i32 645, i32 26}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/most/core.c", i32 647, i32 26}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/most/core.c", i32 650, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @most_set_cfg_direction._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @most_set_cfg_direction._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/most/core.c", i32 927, i32 6}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__ksymtab_most_submit_mbo, !26, !"__ksymtab_most_submit_mbo", i1 false, i1 false}
!26 = !{!"../drivers/most/core.c", i32 933, i32 1}
!27 = !{ptr @__ksymtab_channel_has_mbo, !28, !"__ksymtab_channel_has_mbo", i1 false, i1 false}
!28 = !{!"../drivers/most/core.c", i32 973, i32 1}
!29 = !{ptr @__ksymtab_most_get_mbo, !30, !"__ksymtab_most_get_mbo", i1 false, i1 false}
!30 = !{!"../drivers/most/core.c", i32 1021, i32 1}
!31 = !{ptr @__ksymtab_most_put_mbo, !32, !"__ksymtab_most_put_mbo", i1 false, i1 false}
!32 = !{!"../drivers/most/core.c", i32 1038, i32 1}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/most/core.c", i32 1105, i32 3}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @most_start_channel._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @most_start_channel._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/most/core.c", i32 1112, i32 3}
!40 = !{ptr @most_start_channel._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @most_start_channel._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @most_start_channel.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/most/core.c", i32 1117, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @__ksymtab_most_start_channel, !46, !"__ksymtab_most_start_channel", i1 false, i1 false}
!46 = !{!"../drivers/most/core.c", i32 1152, i32 1}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/most/core.c", i32 1166, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @most_stop_channel._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @most_stop_channel._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/most/core.c", i32 1186, i32 3}
!54 = !{ptr @most_stop_channel._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @most_stop_channel._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @__ksymtab_most_stop_channel, !57, !"__ksymtab_most_stop_channel", i1 false, i1 false}
!57 = !{!"../drivers/most/core.c", i32 1213, i32 1}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/most/core.c", i32 1222, i32 3}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @most_register_component._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @most_register_component._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @__ksymtab_most_register_component, !64, !"__ksymtab_most_register_component", i1 false, i1 false}
!64 = !{!"../drivers/most/core.c", i32 1228, i32 1}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/most/core.c", i32 1255, i32 3}
!67 = !{ptr @most_deregister_component._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @most_deregister_component._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @__ksymtab_most_deregister_component, !70, !"__ksymtab_most_deregister_component", i1 false, i1 false}
!70 = !{!"../drivers/most/core.c", i32 1263, i32 1}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/most/core.c", i32 1291, i32 3}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @most_register_interface._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @most_register_interface._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/most/core.c", i32 1308, i32 3}
!78 = !{ptr @most_register_interface._entry.29, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @most_register_interface._entry_ptr.31, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/most/core.c", i32 1322, i32 35}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/most/core.c", i32 1324, i32 35}
!84 = !{ptr @most_register_interface.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/most/core.c", i32 1342, i32 3}
!86 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @most_register_interface.__key.35, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/most/core.c", i32 1348, i32 3}
!89 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @most_register_interface.__key.37, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/most/core.c", i32 1349, i32 3}
!92 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/most/core.c", i32 1352, i32 4}
!95 = !{ptr @most_register_interface._entry.39, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @most_register_interface._entry_ptr.41, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @__ksymtab_most_register_interface, !98, !"__ksymtab_most_register_interface", i1 false, i1 false}
!98 = !{!"../drivers/most/core.c", i32 1372, i32 1}
!99 = !{ptr @__ksymtab_most_deregister_interface, !100, !"__ksymtab_most_deregister_interface", i1 false, i1 false}
!100 = !{!"../drivers/most/core.c", i32 1404, i32 1}
!101 = !{ptr @__ksymtab_most_stop_enqueue, !102, !"__ksymtab_most_stop_enqueue", i1 false, i1 false}
!102 = !{!"../drivers/most/core.c", i32 1427, i32 1}
!103 = !{ptr @__ksymtab_most_resume_enqueue, !104, !"__ksymtab_most_resume_enqueue", i1 false, i1 false}
!104 = !{!"../drivers/most/core.c", i32 1450, i32 1}
!105 = !{ptr @__initcall__kmod_most_core__230_1484_most_init4, !106, !"__initcall__kmod_most_core__230_1484_most_init4", i1 false, i1 false}
!106 = !{!"../drivers/most/core.c", i32 1484, i32 1}
!107 = !{ptr @__exitcall_most_exit, !108, !"__exitcall_most_exit", i1 false, i1 false}
!108 = !{!"../drivers/most/core.c", i32 1485, i32 1}
!109 = !{ptr @__UNIQUE_ID_file231, !110, !"__UNIQUE_ID_file231", i1 false, i1 false}
!110 = !{!"../drivers/most/core.c", i32 1486, i32 1}
!111 = !{ptr @__UNIQUE_ID_license232, !110, !"__UNIQUE_ID_license232", i1 false, i1 false}
!112 = !{ptr @__UNIQUE_ID_author233, !113, !"__UNIQUE_ID_author233", i1 false, i1 false}
!113 = !{!"../drivers/most/core.c", i32 1487, i32 1}
!114 = !{ptr @__UNIQUE_ID_description234, !115, !"__UNIQUE_ID_description234", i1 false, i1 false}
!115 = !{!"../drivers/most/core.c", i32 1488, i32 1}
!116 = !{ptr @mdev_id, !117, !"mdev_id", i1 false, i1 false}
!117 = !{!"../drivers/most/core.c", i32 28, i32 19}
!118 = !{ptr @dummy_num_buffers, !119, !"dummy_num_buffers", i1 false, i1 false}
!119 = !{!"../drivers/most/core.c", i32 29, i32 12}
!120 = !{ptr @comp_list, !121, !"comp_list", i1 false, i1 false}
!121 = !{!"../drivers/most/core.c", i32 30, i32 25}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/most/core.c", i32 78, i32 21}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/most/core.c", i32 79, i32 19}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/most/core.c", i32 80, i32 18}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/most/core.c", i32 81, i32 18}
!130 = !{ptr @.str.46, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/most/core.c", i32 82, i32 18}
!132 = !{ptr @ch_data_type, !133, !"ch_data_type", i1 false, i1 false}
!133 = !{!"../drivers/most/core.c", i32 77, i32 3}
!134 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/most/core.c", i32 814, i32 3}
!136 = !{ptr @.str.48, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/most/core.c", i32 801, i32 4}
!138 = !{ptr @.str.49, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @hdm_enqueue_thread._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @hdm_enqueue_thread._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/most/core.c", i32 145, i32 3}
!143 = !{ptr @.str.51, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @flush_channel_fifos._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @flush_channel_fifos._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/most/core.c", i32 503, i32 10}
!148 = !{ptr @mostbus, !149, !"mostbus", i1 false, i1 false}
!149 = !{!"../drivers/most/core.c", i32 502, i32 24}
!150 = !{ptr @interface_attr_groups, !151, !"interface_attr_groups", i1 false, i1 false}
!151 = !{!"../drivers/most/core.c", i32 443, i32 38}
!152 = !{ptr @interface_attr_group, !153, !"interface_attr_group", i1 false, i1 false}
!153 = !{!"../drivers/most/core.c", i32 439, i32 37}
!154 = !{ptr @interface_attrs, !155, !"interface_attrs", i1 false, i1 false}
!155 = !{!"../drivers/most/core.c", i32 433, i32 26}
!156 = !{ptr @.str.53, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/most/core.c", i32 430, i32 8}
!158 = !{ptr @dev_attr_description, !157, !"dev_attr_description", i1 false, i1 false}
!159 = !{ptr @.str.54, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/most/core.c", i32 398, i32 34}
!161 = !{ptr @.str.55, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/most/core.c", i32 431, i32 8}
!163 = !{ptr @dev_attr_interface, !162, !"dev_attr_interface", i1 false, i1 false}
!164 = !{ptr @.str.56, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/most/core.c", i32 409, i32 35}
!166 = !{ptr @.str.57, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/most/core.c", i32 411, i32 35}
!168 = !{ptr @.str.58, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/most/core.c", i32 413, i32 35}
!170 = !{ptr @.str.59, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/most/core.c", i32 415, i32 35}
!172 = !{ptr @.str.60, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/most/core.c", i32 417, i32 35}
!174 = !{ptr @.str.61, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/most/core.c", i32 419, i32 35}
!176 = !{ptr @.str.62, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/most/core.c", i32 421, i32 35}
!178 = !{ptr @.str.63, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/most/core.c", i32 423, i32 35}
!180 = !{ptr @.str.64, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/most/core.c", i32 425, i32 35}
!182 = !{ptr @.str.65, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/most/core.c", i32 427, i32 34}
!184 = !{ptr @channel_attr_groups, !185, !"channel_attr_groups", i1 false, i1 false}
!185 = !{!"../drivers/most/core.c", i32 387, i32 38}
!186 = !{ptr @channel_attr_group, !187, !"channel_attr_group", i1 false, i1 false}
!187 = !{!"../drivers/most/core.c", i32 382, i32 37}
!188 = !{ptr @.str.66, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/most/core.c", i32 337, i32 35}
!190 = !{ptr @.str.67, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/most/core.c", i32 340, i32 35}
!192 = !{ptr @channel_attrs, !193, !"channel_attrs", i1 false, i1 false}
!193 = !{!"../drivers/most/core.c", i32 364, i32 26}
!194 = !{ptr @.str.68, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/most/core.c", i32 349, i32 8}
!196 = !{ptr @dev_attr_available_directions, !195, !"dev_attr_available_directions", i1 false, i1 false}
!197 = distinct !{null, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/most/core.c", i32 175, i32 14}
!199 = distinct !{null, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/most/core.c", i32 177, i32 15}
!201 = distinct !{null, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/most/core.c", i32 179, i32 15}
!203 = distinct !{null, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/most/core.c", i32 180, i32 14}
!205 = !{ptr @.str.73, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/most/core.c", i32 350, i32 8}
!207 = !{ptr @dev_attr_available_datatypes, !206, !"dev_attr_available_datatypes", i1 false, i1 false}
!208 = !{ptr @.str.74, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/most/core.c", i32 193, i32 15}
!210 = !{ptr @.str.75, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/most/core.c", i32 195, i32 15}
!212 = !{ptr @.str.76, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/most/core.c", i32 197, i32 15}
!214 = !{ptr @.str.77, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/most/core.c", i32 199, i32 15}
!216 = !{ptr @.str.78, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/most/core.c", i32 351, i32 8}
!218 = !{ptr @dev_attr_number_of_packet_buffers, !217, !"dev_attr_number_of_packet_buffers", i1 false, i1 false}
!219 = !{ptr @.str.79, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/most/core.c", i32 211, i32 34}
!221 = !{ptr @.str.80, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/most/core.c", i32 352, i32 8}
!223 = !{ptr @dev_attr_number_of_stream_buffers, !222, !"dev_attr_number_of_stream_buffers", i1 false, i1 false}
!224 = !{ptr @.str.81, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/most/core.c", i32 353, i32 8}
!226 = !{ptr @dev_attr_size_of_stream_buffer, !225, !"dev_attr_size_of_stream_buffer", i1 false, i1 false}
!227 = !{ptr @.str.82, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/most/core.c", i32 354, i32 8}
!229 = !{ptr @dev_attr_size_of_packet_buffer, !228, !"dev_attr_size_of_packet_buffer", i1 false, i1 false}
!230 = !{ptr @.str.83, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/most/core.c", i32 355, i32 8}
!232 = !{ptr @dev_attr_channel_starving, !231, !"dev_attr_channel_starving", i1 false, i1 false}
!233 = !{ptr @.str.84, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/most/core.c", i32 356, i32 8}
!235 = !{ptr @dev_attr_set_buffer_size, !234, !"dev_attr_set_buffer_size", i1 false, i1 false}
!236 = !{ptr @.str.85, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/most/core.c", i32 357, i32 8}
!238 = !{ptr @dev_attr_set_number_of_buffers, !237, !"dev_attr_set_number_of_buffers", i1 false, i1 false}
!239 = !{ptr @.str.86, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/most/core.c", i32 358, i32 8}
!241 = !{ptr @dev_attr_set_direction, !240, !"dev_attr_set_direction", i1 false, i1 false}
!242 = distinct !{null, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/most/core.c", i32 282, i32 35}
!244 = distinct !{null, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/most/core.c", i32 284, i32 35}
!246 = !{ptr @.str.89, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/most/core.c", i32 285, i32 34}
!248 = !{ptr @.str.90, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/most/core.c", i32 359, i32 8}
!250 = !{ptr @dev_attr_set_datatype, !249, !"dev_attr_set_datatype", i1 false, i1 false}
!251 = !{ptr @.str.91, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/most/core.c", i32 360, i32 8}
!253 = !{ptr @dev_attr_set_subbuffer_size, !252, !"dev_attr_set_subbuffer_size", i1 false, i1 false}
!254 = !{ptr @dev_attr_set_packets_per_xact, !255, !"dev_attr_set_packets_per_xact", i1 false, i1 false}
!255 = !{!"../drivers/most/core.c", i32 361, i32 8}
!256 = !{ptr @dev_attr_set_dbr_size, !257, !"dev_attr_set_dbr_size", i1 false, i1 false}
!257 = !{!"../drivers/most/core.c", i32 362, i32 8}
!258 = !{ptr @init_completion.__key, !259, !"__key", i1 false, i1 false}
!259 = !{!"../include/linux/completion.h", i32 87, i32 2}
!260 = !{ptr @.str.92, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.93, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/most/core.c", i32 731, i32 10}
!263 = !{ptr @mostbus_driver, !264, !"mostbus_driver", i1 false, i1 false}
!264 = !{!"../drivers/most/core.c", i32 730, i32 29}
!265 = !{ptr @mc_attr_groups, !266, !"mc_attr_groups", i1 false, i1 false}
!266 = !{!"../drivers/most/core.c", i32 725, i32 38}
!267 = !{ptr @mc_attr_group, !268, !"mc_attr_group", i1 false, i1 false}
!268 = !{!"../drivers/most/core.c", i32 721, i32 37}
!269 = !{ptr @mc_attrs, !270, !"mc_attrs", i1 false, i1 false}
!270 = !{!"../drivers/most/core.c", i32 715, i32 26}
!271 = !{ptr @.str.94, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/most/core.c", i32 712, i32 8}
!273 = !{ptr @driver_attr_links, !272, !"driver_attr_links", i1 false, i1 false}
!274 = !{ptr @.str.95, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/most/core.c", i32 476, i32 7}
!276 = !{ptr @.str.96, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/most/core.c", i32 713, i32 8}
!278 = !{ptr @driver_attr_components, !277, !"driver_attr_components", i1 false, i1 false}
!279 = !{ptr @.str.97, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/most/core.c", i32 1461, i32 3}
!281 = !{ptr @.str.98, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @most_init._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @most_init._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.100, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/most/core.c", i32 1466, i32 3}
!286 = !{ptr @most_init._entry.99, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @most_init._entry_ptr.101, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @xa_init_flags.__key, !289, !"__key", i1 false, i1 false}
!289 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!290 = !{ptr @.str.102, !289, !"<string literal>", i1 false, i1 false}
!291 = !{i32 1, !"wchar_size", i32 2}
!292 = !{i32 1, !"min_enum_size", i32 4}
!293 = !{i32 8, !"branch-target-enforcement", i32 0}
!294 = !{i32 8, !"sign-return-address", i32 0}
!295 = !{i32 8, !"sign-return-address-all", i32 0}
!296 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!297 = !{i32 7, !"uwtable", i32 1}
!298 = !{i32 7, !"frame-pointer", i32 2}
!299 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!300 = !{!"branch_weights", i32 2000, i32 1}
!301 = !{!"branch_weights", i32 1, i32 2000}
!302 = !{i64 2148374123, i64 2148374149, i64 2148374178, i64 2148374212, i64 2148374243, i64 2148374266}
!303 = !{i8 0, i8 2}
!304 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!305 = !{i64 2148462599}
!306 = !{i64 2148377308, i64 2148377340, i64 2148377369, i64 2148377403, i64 2148377434, i64 2148377457}
!307 = !{i64 2148462828}
