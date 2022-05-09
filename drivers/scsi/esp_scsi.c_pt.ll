; ModuleID = '/llk/IR_all_yes/drivers/scsi/esp_scsi.c_pt.bc'
source_filename = "../drivers/scsi/esp_scsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+scsi_esp_cmd\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_esp_cmd\09\09\09\09"
module asm "\09.long\09__crc_scsi_esp_cmd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_esp_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_esp_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_esp_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_esp_intr\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_esp_intr\09\09\09\09"
module asm "\09.long\09__crc_scsi_esp_intr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_esp_intr:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_esp_intr\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_esp_intr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_esp_register\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_esp_register\09\09\09\09"
module asm "\09.long\09__crc_scsi_esp_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_esp_register:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_esp_register\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_esp_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_esp_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_esp_unregister\09\09\09\09"
module asm "\09.long\09__crc_scsi_esp_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_esp_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_esp_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_esp_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_esp_template\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_esp_template\09\09\09\09"
module asm "\09.long\09__crc_scsi_esp_template\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_esp_template:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_esp_template\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_esp_template:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.17 }
%union.anon.17 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.esp = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.list_head, [16 x %struct.esp_target_data], i32, [16 x i8], [32 x %struct.esp_event_ent], i32, [8 x i8], i32, [8 x i8], i32, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.esp_target_data = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.esp_event_ent = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.esp_driver_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.esp_lun_data = type { ptr, i32, i32, [256 x ptr] }
%struct.esp_cmd_entry = type { %struct.list_head, ptr, i32, ptr, ptr, i32, i8, [2 x i8], [2 x i8], i8, i8, ptr, ptr, i32, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.page = type { i32, %union.anon.9, %union.anon.55, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.55 = type { %struct.atomic_t }

@esp_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@scsi_esp_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 142, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cmd[%02x]\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scsi_esp_cmd\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/scsi/esp_scsi.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scsi_esp_cmd._entry_ptr = internal global ptr @scsi_esp_cmd._entry, section ".printk_index", align 4
@__kstrtab_scsi_esp_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_esp_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_esp_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_esp_cmd to i32), ptr @__kstrtab_scsi_esp_cmd, ptr @__kstrtabns_scsi_esp_cmd }, section "___ksymtab+scsi_esp_cmd", align 4
@__kstrtab_scsi_esp_intr = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_esp_intr = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_esp_intr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_esp_intr to i32), ptr @__kstrtab_scsi_esp_intr, ptr @__kstrtabns_scsi_esp_intr }, section "___ksymtab+scsi_esp_intr", align 4
@scsi_esp_register.instance = internal global { i32, [28 x i8] } zeroinitializer, align 32
@esp_transport_template = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@scsi_esp_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 2399, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"esp%u: regs[%1p:%1p] irq[%u]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scsi_esp_register\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@scsi_esp_register._entry_ptr = internal global ptr @scsi_esp_register._entry, section ".printk_index", align 4
@scsi_esp_register._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 2403, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"esp%u: is a %s, %u MHz (ccf=%u), SCSI ID %u\0A\00", [51 x i8] zeroinitializer }, align 32
@scsi_esp_register._entry_ptr.10 = internal global ptr @scsi_esp_register._entry.8, section ".printk_index", align 4
@esp_chip_names = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161], [60 x i8] zeroinitializer }, align 32
@esp_bus_reset_settle = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__kstrtab_scsi_esp_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_esp_register = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_esp_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_esp_register to i32), ptr @__kstrtab_scsi_esp_register, ptr @__kstrtabns_scsi_esp_register }, section "___ksymtab+scsi_esp_register", align 4
@__kstrtab_scsi_esp_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_esp_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_esp_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_esp_unregister to i32), ptr @__kstrtab_scsi_esp_unregister, ptr @__kstrtabns_scsi_esp_unregister }, section "___ksymtab+scsi_esp_unregister", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"esp\00", [28 x i8] zeroinitializer }, align 32
@scsi_esp_template = dso_local global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @esp_queuecommand, ptr null, ptr null, ptr @.str.11, ptr @esp_info, ptr null, ptr null, ptr null, ptr @esp_eh_abort_handler, ptr null, ptr null, ptr @esp_eh_bus_reset_handler, ptr @esp_eh_host_reset_handler, ptr @esp_slave_alloc, ptr @esp_slave_configure, ptr @esp_slave_destroy, ptr @esp_target_alloc, ptr @esp_target_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 7, i32 7, i16 128, i16 0, i32 65535, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 8, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_scsi_esp_template = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_esp_template = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_esp_template = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_esp_template to i32), ptr @__kstrtab_scsi_esp_template, ptr @__kstrtabns_scsi_esp_template }, section "___ksymtab+scsi_esp_template", align 4
@__UNIQUE_ID_description282 = internal constant [42 x i8] c"esp_scsi.description=ESP SCSI driver core\00", section ".modinfo", align 1
@__UNIQUE_ID_author283 = internal constant [54 x i8] c"esp_scsi.author=David S. Miller (davem@davemloft.net)\00", section ".modinfo", align 1
@__UNIQUE_ID_file284 = internal constant [36 x i8] c"esp_scsi.file=drivers/scsi/esp_scsi\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [21 x i8] c"esp_scsi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version286 = internal constant [23 x i8] c"esp_scsi.version=2.000\00", section ".modinfo", align 1
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"esp_scsi\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.000\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.13, ptr @.str.14 }, section "__modver", align 4
@__param_str_esp_bus_reset_settle = internal constant [30 x i8] c"esp_scsi.esp_bus_reset_settle\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_esp_bus_reset_settle = internal constant %struct.kernel_param { ptr @__param_str_esp_bus_reset_settle, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.17 { ptr @esp_bus_reset_settle } }, section "__param", align 4
@__UNIQUE_ID_esp_bus_reset_settletype287 = internal constant [43 x i8] c"esp_scsi.parmtype=esp_bus_reset_settle:int\00", section ".modinfo", align 1
@__UNIQUE_ID_esp_bus_reset_settle288 = internal constant [71 x i8] c"esp_scsi.parm=esp_bus_reset_settle:ESP scsi bus reset delay in seconds\00", section ".modinfo", align 1
@__param_str_esp_debug = internal constant [19 x i8] c"esp_scsi.esp_debug\00", align 1
@__param_esp_debug = internal constant %struct.kernel_param { ptr @__param_str_esp_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.17 { ptr @esp_debug } }, section "__param", align 4
@__UNIQUE_ID_esp_debugtype289 = internal constant [32 x i8] c"esp_scsi.parmtype=esp_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_esp_debug290 = internal constant [401 x i8] c"esp_scsi.parm=esp_debug:ESP bitmapped debugging message enable value:\0A\090x00000001\09Log interrupt events\0A\090x00000002\09Log scsi commands\0A\090x00000004\09Log resets\0A\090x00000008\09Log message in events\0A\090x00000010\09Log message out events\0A\090x00000020\09Log command completion\0A\090x00000040\09Log disconnects\0A\090x00000080\09Log data start\0A\090x00000100\09Log data done\0A\090x00000200\09Log reconnects\0A\090x00000400\09Log auto-sense data\0A\00", section ".modinfo", align 1
@__initcall__kmod_esp_scsi__291_2782_esp_init6 = internal global ptr @esp_init, section ".initcall6.init", align 4
@__exitcall_esp_exit = internal global ptr @esp_exit, section ".exitcall.exit", align 4
@__esp_interrupt._entry = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 2145, ptr @.str.3, ptr @.str.4 }, align 1
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"intr sreg[%02x] seqreg[%02x] sreg2[%02x] ireg[%02x]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__esp_interrupt\00", [16 x i8] zeroinitializer }, align 32
@__esp_interrupt._entry_ptr = internal global ptr @__esp_interrupt._entry, section ".printk_index", align 4
@__esp_interrupt._entry.17 = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 2151, ptr @.str.7, ptr @.str.4 }, align 1
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unexpected IREG %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@__esp_interrupt._entry_ptr.19 = internal global ptr @__esp_interrupt._entry.17, section ".printk_index", align 4
@esp_check_gross_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 990, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Gross error sreg[%02x]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"esp_check_gross_error\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@esp_check_gross_error._entry_ptr = internal global ptr @esp_check_gross_error._entry, section ".printk_index", align 4
@esp_check_spur_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1019, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Spurious irq, sreg=%02x.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"esp_check_spur_intr\00", [44 x i8] zeroinitializer }, align 32
@esp_check_spur_intr._entry_ptr = internal global ptr @esp_check_spur_intr._entry, section ".printk_index", align 4
@esp_check_spur_intr._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 1023, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DMA error\0A\00", [21 x i8] zeroinitializer }, align 32
@esp_check_spur_intr._entry_ptr.27 = internal global ptr @esp_check_spur_intr._entry.25, section ".printk_index", align 4
@esp_dump_cmd_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 185, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Dumping command log\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"esp_dump_cmd_log\00", [47 x i8] zeroinitializer }, align 32
@esp_dump_cmd_log._entry_ptr = internal global ptr @esp_dump_cmd_log._entry, section ".printk_index", align 4
@esp_dump_cmd_log._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 195, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"ent[%d] %s val[%02x] sreg[%02x] seqreg[%02x] sreg2[%02x] ireg[%02x] ss[%02x] event[%02x]\0A\00", [38 x i8] zeroinitializer }, align 32
@esp_dump_cmd_log._entry_ptr.32 = internal global ptr @esp_dump_cmd_log._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CMD\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EVENT\00", [26 x i8] zeroinitializer }, align 32
@esp_schedule_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1037, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"esp_schedule_reset() from %ps\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"esp_schedule_reset\00", [45 x i8] zeroinitializer }, align 32
@esp_schedule_reset._entry_ptr = internal global ptr @esp_schedule_reset._entry, section ".printk_index", align 4
@esp_finish_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1311, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unexpected selection completion ireg[%x]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"esp_finish_select\00", [46 x i8] zeroinitializer }, align 32
@esp_finish_select._entry_ptr = internal global ptr @esp_finish_select._entry, section ".printk_index", align 4
@esp_cmd_is_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"esp%d: tgt[%d] lun[%d] AUTO SENSE[ \00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"esp_cmd_is_done\00", [16 x i8] zeroinitializer }, align 32
@esp_cmd_is_done._entry_ptr = internal global ptr @esp_cmd_is_done._entry, section ".printk_index", align 4
@esp_cmd_is_done._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@esp_cmd_is_done._entry_ptr.43 = internal global ptr @esp_cmd_is_done._entry.41, section ".printk_index", align 4
@esp_cmd_is_done._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@esp_cmd_is_done._entry_ptr.46 = internal global ptr @esp_cmd_is_done._entry.44, section ".printk_index", align 4
@esp_maybe_execute_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ESP: tgt[%d] lun[%d] scsi_cmd [ \00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"esp_maybe_execute_command\00", [38 x i8] zeroinitializer }, align 32
@esp_maybe_execute_command._entry_ptr = internal global ptr @esp_maybe_execute_command._entry, section ".printk_index", align 4
@esp_maybe_execute_command._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.48, ptr @.str.2, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@esp_maybe_execute_command._entry_ptr.50 = internal global ptr @esp_maybe_execute_command._entry.49, section ".printk_index", align 4
@esp_maybe_execute_command._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.48, ptr @.str.2, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@esp_maybe_execute_command._entry_ptr.52 = internal global ptr @esp_maybe_execute_command._entry.51, section ".printk_index", align 4
@esp_autosense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 670, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Doing auto-sense for tgt[%d] lun[%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"esp_autosense\00", [18 x i8] zeroinitializer }, align 32
@esp_autosense._entry_ptr = internal global ptr @esp_autosense._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@esp_flush_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 210, ptr @.str.59, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ESP_FF_BYTES will not clear!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"esp_flush_fifo\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@esp_flush_fifo._entry_ptr = internal global ptr @esp_flush_fifo._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@esp_reconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 1198, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Reconnect, no lp tgt[%u] lun[%u]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"esp_reconnect\00", [18 x i8] zeroinitializer }, align 32
@esp_reconnect._entry_ptr = internal global ptr @esp_reconnect._entry, section ".printk_index", align 4
@esp_reconnect_with_tag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1054, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Reconnect w/num_tagged==0\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"esp_reconnect_with_tag\00", [41 x i8] zeroinitializer }, align 32
@esp_reconnect_with_tag._entry_ptr = internal global ptr @esp_reconnect_with_tag._entry, section ".printk_index", align 4
@esp_reconnect_with_tag._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 1058, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reconnect tag, \00", [16 x i8] zeroinitializer }, align 32
@esp_reconnect_with_tag._entry_ptr.66 = internal global ptr @esp_reconnect_with_tag._entry.64, section ".printk_index", align 4
@esp_reconnect_with_tag._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 1066, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Reconnect IRQ1 timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@esp_reconnect_with_tag._entry_ptr.69 = internal global ptr @esp_reconnect_with_tag._entry.67, section ".printk_index", align 4
@esp_reconnect_with_tag._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.63, ptr @.str.2, i32 1074, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IRQ(%d:%x:%x), \00", [16 x i8] zeroinitializer }, align 32
@esp_reconnect_with_tag._entry_ptr.72 = internal global ptr @esp_reconnect_with_tag._entry.70, section ".printk_index", align 4
@esp_reconnect_with_tag._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.63, ptr @.str.2, i32 1078, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Reconnect, got disconnect.\0A\00", [36 x i8] zeroinitializer }, align 32
@esp_reconnect_with_tag._entry_ptr.75 = internal global ptr @esp_reconnect_with_tag._entry.73, section ".printk_index", align 4
@esp_reconnect_with_tag._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.63, ptr @.str.2, i32 1084, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Reconnect, not MIP sreg[%02x].\0A\00", [32 x i8] zeroinitializer }, align 32
@esp_reconnect_with_tag._entry_ptr.78 = internal global ptr @esp_reconnect_with_tag._entry.76, section ".printk_index", align 4
@esp_reconnect_with_tag._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.63, ptr @.str.2, i32 1107, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Reconnect IRQ2 timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@esp_reconnect_with_tag._entry_ptr.81 = internal global ptr @esp_reconnect_with_tag._entry.79, section ".printk_index", align 4
@esp_reconnect_with_tag._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.63, ptr @.str.2, i32 1116, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IRQ2(%d:%x:%x) tag[%x:%x]\0A\00", [37 x i8] zeroinitializer }, align 32
@esp_reconnect_with_tag._entry_ptr.84 = internal global ptr @esp_reconnect_with_tag._entry.82, section ".printk_index", align 4
@esp_reconnect_with_tag._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.63, ptr @.str.2, i32 1122, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Reconnect, bad tag type %02x.\0A\00", [33 x i8] zeroinitializer }, align 32
@esp_reconnect_with_tag._entry_ptr.87 = internal global ptr @esp_reconnect_with_tag._entry.85, section ".printk_index", align 4
@esp_reconnect_with_tag._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.63, ptr @.str.2, i32 1130, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Reconnect, no entry for tag %02x.\0A\00", [61 x i8] zeroinitializer }, align 32
@esp_reconnect_with_tag._entry_ptr.90 = internal global ptr @esp_reconnect_with_tag._entry.88, section ".printk_index", align 4
@esp_process_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 1696, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"process event %d phase %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"esp_process_event\00", [46 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr = internal global ptr @esp_process_event._entry, section ".printk_index", align 4
@esp_process_event._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.2, i32 1728, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unexpected phase, sreg=%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.95 = internal global ptr @esp_process_event._entry.93, section ".printk_index", align 4
@esp_process_event._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str.2, i32 1762, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DMA length is zero!\0A\00", [43 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.98 = internal global ptr @esp_process_event._entry.96, section ".printk_index", align 4
@esp_process_event._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.92, ptr @.str.2, i32 1766, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cur adr[%08llx] len[%08x]\0A\00", [37 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.101 = internal global ptr @esp_process_event._entry.99, section ".printk_index", align 4
@esp_process_event._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.92, ptr @.str.2, i32 1772, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"start data addr[%08llx] len[%u] write(%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.104 = internal global ptr @esp_process_event._entry.102, section ".printk_index", align 4
@esp_process_event._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.92, ptr @.str.2, i32 1786, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"data done, DMA error, resetting\0A\00", [63 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.107 = internal global ptr @esp_process_event._entry.105, section ".printk_index", align 4
@esp_process_event._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.92, ptr @.str.2, i32 1803, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"data done, not BSERV, resetting\0A\00", [63 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.110 = internal global ptr @esp_process_event._entry.108, section ".printk_index", align 4
@esp_process_event._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.92, ptr @.str.2, i32 1811, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"data done flgs[%x] sent[%d]\0A\00", [35 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.113 = internal global ptr @esp_process_event._entry.111, section ".printk_index", align 4
@esp_process_event._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.92, ptr @.str.2, i32 1841, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unexpected message %x in status\0A\00", [63 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.116 = internal global ptr @esp_process_event._entry.114, section ".printk_index", align 4
@esp_process_event._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.92, ptr @.str.2, i32 1860, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Command done status[%x] message[%x]\0A\00", [59 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.119 = internal global ptr @esp_process_event._entry.117, section ".printk_index", align 4
@esp_process_event._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.92, ptr @.str.2, i32 1874, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Disconnecting tgt[%d] tag[%x:%x]\0A\00", [62 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.122 = internal global ptr @esp_process_event._entry.120, section ".printk_index", align 4
@esp_process_event._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.92, ptr @.str.2, i32 1881, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unexpected message %x in freebus\0A\00", [62 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.125 = internal global ptr @esp_process_event._entry.123, section ".printk_index", align 4
@esp_process_event._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.92, ptr @.str.2, i32 1894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ESP: Sending message [ \00", [40 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.128 = internal global ptr @esp_process_event._entry.126, section ".printk_index", align 4
@esp_process_event._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.92, ptr @.str.2, i32 1896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.130 = internal global ptr @esp_process_event._entry.129, section ".printk_index", align 4
@esp_process_event._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.92, ptr @.str.2, i32 1897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.132 = internal global ptr @esp_process_event._entry.131, section ".printk_index", align 4
@esp_process_event._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.92, ptr @.str.2, i32 1976, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Got msgin byte %x\0A\00", [45 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.135 = internal global ptr @esp_process_event._entry.133, section ".printk_index", align 4
@esp_process_event._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.92, ptr @.str.2, i32 1994, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MSGIN neither BSERV not FDON, resetting\00", [56 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.138 = internal global ptr @esp_process_event._entry.136, section ".printk_index", align 4
@esp_process_event._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.92, ptr @.str.2, i32 2021, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unexpected event %x, resetting\0A\00", [32 x i8] zeroinitializer }, align 32
@esp_process_event._entry_ptr.141 = internal global ptr @esp_process_event._entry.139, section ".printk_index", align 4
@esp_advance_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 445, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Data transfer overflow.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"esp_advance_dma\00", [16 x i8] zeroinitializer }, align 32
@esp_advance_dma._entry_ptr = internal global ptr @esp_advance_dma._entry, section ".printk_index", align 4
@esp_advance_dma._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.2, i32 448, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cur_residue[%d] tot_residue[%d] len[%u]\0A\00", [55 x i8] zeroinitializer }, align 32
@esp_advance_dma._entry_ptr.146 = internal global ptr @esp_advance_dma._entry.144, section ".printk_index", align 4
@esp_msgin_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 1625, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unexpected msgin identify\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"esp_msgin_process\00", [46 x i8] zeroinitializer }, align 32
@esp_msgin_process._entry_ptr = internal global ptr @esp_msgin_process._entry, section ".printk_index", align 4
@esp_msgin_extended._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.2, i32 1607, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unexpected extended msg type %x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"esp_msgin_extended\00", [45 x i8] zeroinitializer }, align 32
@esp_msgin_extended._entry_ptr = internal global ptr @esp_msgin_extended._entry, section ".printk_index", align 4
@esp_msgin_reject._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.2, i32 1485, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unexpected MESSAGE REJECT\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"esp_msgin_reject\00", [47 x i8] zeroinitializer }, align 32
@esp_msgin_reject._entry_ptr = internal global ptr @esp_msgin_reject._entry, section ".printk_index", align 4
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ESP100\00", [25 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ESP100A\00", [24 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ESP236\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FAS236\00", [25 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AM53C974\00", [23 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"53CF9x-2\00", [23 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FAS100A\00", [24 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FAST\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FASHME\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@esp_eh_abort_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.2, i32 2502, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Aborting command [%p:%02x]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"esp_eh_abort_handler\00", [43 x i8] zeroinitializer }, align 32
@esp_eh_abort_handler._entry_ptr = internal global ptr @esp_eh_abort_handler._entry, section ".printk_index", align 4
@esp_eh_abort_handler._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.163, ptr @.str.2, i32 2507, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Current command [%p:%02x]\0A\00", [37 x i8] zeroinitializer }, align 32
@esp_eh_abort_handler._entry_ptr.166 = internal global ptr @esp_eh_abort_handler._entry.164, section ".printk_index", align 4
@esp_eh_abort_handler._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.163, ptr @.str.2, i32 2510, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Queued command [%p:%02x]\0A\00", [38 x i8] zeroinitializer }, align 32
@esp_eh_abort_handler._entry_ptr.169 = internal global ptr @esp_eh_abort_handler._entry.167, section ".printk_index", align 4
@esp_eh_abort_handler._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.163, ptr @.str.2, i32 2514, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" Active command [%p:%02x]\0A\00", [37 x i8] zeroinitializer }, align 32
@esp_eh_abort_handler._entry_ptr.172 = internal global ptr @esp_eh_abort_handler._entry.170, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@esp_transport_ops = internal global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }, [56 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 } { ptr null, ptr @esp_set_period, ptr null, ptr @esp_set_offset, ptr null, ptr @esp_set_width, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @esp_get_signalling, ptr null, ptr null, i8 -32, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 11]
@__sancov_gen_cov_switch_values.175 = internal global [14 x i64] [i64 12, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 9, i64 10, i64 11, i64 12, i64 13, i64 16]
@__sancov_gen_cov_switch_values.176 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 4]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 4]
@__sancov_gen_cov_switch_values.179 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 7, i64 8, i64 35]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.182 = internal global [5 x i64] [i64 3, i64 5, i64 2, i64 10, i64 20]
@__sancov_gen_cov_switch_values.183 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.184 = internal global [5 x i64] [i64 3, i64 8, i64 12, i64 24, i64 32]
@___asan_gen_.185 = private unnamed_addr constant [10 x i8] c"esp_debug\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 41, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 142, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [9 x i8] c"instance\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2379, i32 13 }
@___asan_gen_.209 = private unnamed_addr constant [23 x i8] c"esp_transport_template\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2375, i32 40 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2397, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2400, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [15 x i8] c"esp_chip_names\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2363, i32 20 }
@___asan_gen_.233 = private unnamed_addr constant [21 x i8] c"esp_bus_reset_settle\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 39, i32 12 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2665, i32 12 }
@___asan_gen_.239 = private unnamed_addr constant [18 x i8] c"scsi_esp_template\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2663, i32 27 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2760, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2143, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2150, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 989, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1017, i32 5 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1023, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 185, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 189, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1036, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1310, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 931, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 934, i32 5 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 935, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 869, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 871, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 872, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 669, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 326, i32 6 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 209, i32 5 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1196, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1053, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1058, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1065, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1073, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1077, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1083, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1107, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1113, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1120, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1128, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1695, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1726, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1761, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1763, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1771, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1785, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1802, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1810, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1839, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1859, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1872, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1879, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1894, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1896, i32 5 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1897, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1976, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1993, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2020, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 444, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 446, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1624, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1606, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1485, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2364, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2365, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2366, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2367, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2368, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2369, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2370, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2371, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2372, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2501, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2505, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2509, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2513, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.665 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.666 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 87, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant [18 x i8] c"esp_transport_ops\00", align 1
@___asan_gen_.669 = private constant [27 x i8] c"../drivers/scsi/esp_scsi.c\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 2730, i32 37 }
@llvm.compiler.used = appending global [242 x ptr] [ptr @__UNIQUE_ID_author283, ptr @__UNIQUE_ID_description282, ptr @__UNIQUE_ID_esp_bus_reset_settle288, ptr @__UNIQUE_ID_esp_bus_reset_settletype287, ptr @__UNIQUE_ID_esp_debug290, ptr @__UNIQUE_ID_esp_debugtype289, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_license285, ptr @__UNIQUE_ID_version286, ptr @__esp_interrupt._entry, ptr @__esp_interrupt._entry.17, ptr @__esp_interrupt._entry_ptr, ptr @__esp_interrupt._entry_ptr.19, ptr @__exitcall_esp_exit, ptr @__initcall__kmod_esp_scsi__291_2782_esp_init6, ptr @__ksymtab_scsi_esp_cmd, ptr @__ksymtab_scsi_esp_intr, ptr @__ksymtab_scsi_esp_register, ptr @__ksymtab_scsi_esp_template, ptr @__ksymtab_scsi_esp_unregister, ptr @__modver_attr, ptr @__param_esp_bus_reset_settle, ptr @__param_esp_debug, ptr @esp_advance_dma._entry, ptr @esp_advance_dma._entry.144, ptr @esp_advance_dma._entry_ptr, ptr @esp_advance_dma._entry_ptr.146, ptr @esp_autosense._entry, ptr @esp_autosense._entry_ptr, ptr @esp_check_gross_error._entry, ptr @esp_check_gross_error._entry_ptr, ptr @esp_check_spur_intr._entry, ptr @esp_check_spur_intr._entry.25, ptr @esp_check_spur_intr._entry_ptr, ptr @esp_check_spur_intr._entry_ptr.27, ptr @esp_cmd_is_done._entry, ptr @esp_cmd_is_done._entry.41, ptr @esp_cmd_is_done._entry.44, ptr @esp_cmd_is_done._entry_ptr, ptr @esp_cmd_is_done._entry_ptr.43, ptr @esp_cmd_is_done._entry_ptr.46, ptr @esp_dump_cmd_log._entry, ptr @esp_dump_cmd_log._entry.30, ptr @esp_dump_cmd_log._entry_ptr, ptr @esp_dump_cmd_log._entry_ptr.32, ptr @esp_eh_abort_handler._entry, ptr @esp_eh_abort_handler._entry.164, ptr @esp_eh_abort_handler._entry.167, ptr @esp_eh_abort_handler._entry.170, ptr @esp_eh_abort_handler._entry_ptr, ptr @esp_eh_abort_handler._entry_ptr.166, ptr @esp_eh_abort_handler._entry_ptr.169, ptr @esp_eh_abort_handler._entry_ptr.172, ptr @esp_exit, ptr @esp_finish_select._entry, ptr @esp_finish_select._entry_ptr, ptr @esp_flush_fifo._entry, ptr @esp_flush_fifo._entry_ptr, ptr @esp_maybe_execute_command._entry, ptr @esp_maybe_execute_command._entry.49, ptr @esp_maybe_execute_command._entry.51, ptr @esp_maybe_execute_command._entry_ptr, ptr @esp_maybe_execute_command._entry_ptr.50, ptr @esp_maybe_execute_command._entry_ptr.52, ptr @esp_msgin_extended._entry, ptr @esp_msgin_extended._entry_ptr, ptr @esp_msgin_process._entry, ptr @esp_msgin_process._entry_ptr, ptr @esp_msgin_reject._entry, ptr @esp_msgin_reject._entry_ptr, ptr @esp_process_event._entry, ptr @esp_process_event._entry.102, ptr @esp_process_event._entry.105, ptr @esp_process_event._entry.108, ptr @esp_process_event._entry.111, ptr @esp_process_event._entry.114, ptr @esp_process_event._entry.117, ptr @esp_process_event._entry.120, ptr @esp_process_event._entry.123, ptr @esp_process_event._entry.126, ptr @esp_process_event._entry.129, ptr @esp_process_event._entry.131, ptr @esp_process_event._entry.133, ptr @esp_process_event._entry.136, ptr @esp_process_event._entry.139, ptr @esp_process_event._entry.93, ptr @esp_process_event._entry.96, ptr @esp_process_event._entry.99, ptr @esp_process_event._entry_ptr, ptr @esp_process_event._entry_ptr.101, ptr @esp_process_event._entry_ptr.104, ptr @esp_process_event._entry_ptr.107, ptr @esp_process_event._entry_ptr.110, ptr @esp_process_event._entry_ptr.113, ptr @esp_process_event._entry_ptr.116, ptr @esp_process_event._entry_ptr.119, ptr @esp_process_event._entry_ptr.122, ptr @esp_process_event._entry_ptr.125, ptr @esp_process_event._entry_ptr.128, ptr @esp_process_event._entry_ptr.130, ptr @esp_process_event._entry_ptr.132, ptr @esp_process_event._entry_ptr.135, ptr @esp_process_event._entry_ptr.138, ptr @esp_process_event._entry_ptr.141, ptr @esp_process_event._entry_ptr.95, ptr @esp_process_event._entry_ptr.98, ptr @esp_reconnect._entry, ptr @esp_reconnect._entry_ptr, ptr @esp_reconnect_with_tag._entry, ptr @esp_reconnect_with_tag._entry.64, ptr @esp_reconnect_with_tag._entry.67, ptr @esp_reconnect_with_tag._entry.70, ptr @esp_reconnect_with_tag._entry.73, ptr @esp_reconnect_with_tag._entry.76, ptr @esp_reconnect_with_tag._entry.79, ptr @esp_reconnect_with_tag._entry.82, ptr @esp_reconnect_with_tag._entry.85, ptr @esp_reconnect_with_tag._entry.88, ptr @esp_reconnect_with_tag._entry_ptr, ptr @esp_reconnect_with_tag._entry_ptr.66, ptr @esp_reconnect_with_tag._entry_ptr.69, ptr @esp_reconnect_with_tag._entry_ptr.72, ptr @esp_reconnect_with_tag._entry_ptr.75, ptr @esp_reconnect_with_tag._entry_ptr.78, ptr @esp_reconnect_with_tag._entry_ptr.81, ptr @esp_reconnect_with_tag._entry_ptr.84, ptr @esp_reconnect_with_tag._entry_ptr.87, ptr @esp_reconnect_with_tag._entry_ptr.90, ptr @esp_schedule_reset._entry, ptr @esp_schedule_reset._entry_ptr, ptr @scsi_esp_cmd._entry, ptr @scsi_esp_cmd._entry_ptr, ptr @scsi_esp_register._entry, ptr @scsi_esp_register._entry.8, ptr @scsi_esp_register._entry_ptr, ptr @scsi_esp_register._entry_ptr.10, ptr @esp_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @scsi_esp_register.instance, ptr @esp_transport_template, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @esp_chip_names, ptr @esp_bus_reset_settle, ptr @.str.11, ptr @scsi_esp_template, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @init_completion.__key, ptr @.str.173, ptr @esp_transport_ops], section "llvm.metadata"
@0 = internal global [162 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_esp_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_esp_register.instance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_transport_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_esp_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_esp_register._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_chip_names to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_bus_reset_settle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_esp_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_check_gross_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_check_spur_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_check_spur_intr._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_dump_cmd_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_dump_cmd_log._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_schedule_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_finish_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_cmd_is_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_cmd_is_done._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_cmd_is_done._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_maybe_execute_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_maybe_execute_command._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_maybe_execute_command._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_autosense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_flush_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_reconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_reconnect_with_tag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_reconnect_with_tag._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_reconnect_with_tag._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_reconnect_with_tag._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_reconnect_with_tag._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_reconnect_with_tag._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_reconnect_with_tag._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_reconnect_with_tag._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_reconnect_with_tag._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_reconnect_with_tag._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_process_event._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_advance_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_advance_dma._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_msgin_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_msgin_extended._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_msgin_reject._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_eh_abort_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_eh_abort_handler._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_eh_abort_handler._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_eh_abort_handler._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_transport_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_esp_cmd(ptr noundef %esp, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %esp_event_cur = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 25
  %0 = ptrtoint ptr %esp_event_cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %esp_event_cur, align 4
  %arrayidx = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %arrayidx, align 1
  %val1 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1, i32 1
  %3 = ptrtoint ptr %val1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %val, ptr %val1, align 1
  %sreg.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 11
  %4 = ptrtoint ptr %sreg.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sreg.i, align 4
  %sreg1.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1, i32 2
  %6 = ptrtoint ptr %sreg1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %sreg1.i, align 1
  %seqreg.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 12
  %7 = ptrtoint ptr %seqreg.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %seqreg.i, align 1
  %seqreg2.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1, i32 3
  %9 = ptrtoint ptr %seqreg2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %seqreg2.i, align 1
  %sreg2.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 13
  %10 = ptrtoint ptr %sreg2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sreg2.i, align 2
  %sreg23.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1, i32 4
  %12 = ptrtoint ptr %sreg23.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %sreg23.i, align 1
  %ireg.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 14
  %13 = ptrtoint ptr %ireg.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ireg.i, align 1
  %ireg4.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1, i32 5
  %15 = ptrtoint ptr %ireg4.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ireg4.i, align 1
  %select_state.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 38
  %16 = ptrtoint ptr %select_state.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %select_state.i, align 4
  %select_state5.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1, i32 6
  %18 = ptrtoint ptr %select_state5.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %select_state5.i, align 1
  %event.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 39
  %19 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %event.i, align 1
  %event6.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1, i32 7
  %21 = ptrtoint ptr %event6.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %event6.i, align 1
  %add = add i32 %1, 1
  %and = and i32 %add, 31
  store i32 %and, ptr %esp_event_cur, align 4
  %22 = load i32, ptr @esp_debug, align 4
  %and3 = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %host = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %23 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 0, i32 49
  %conv = zext i8 %val to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str, i32 noundef %conv) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %ops = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 2
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  tail call void %28(ptr noundef %esp, i8 noundef zeroext %val, i32 noundef 3) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_esp_intr(i32 %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.esp, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %ops = getelementptr inbounds %struct.esp, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %irq_pending = getelementptr inbounds %struct.esp_driver_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %irq_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_pending, align 4
  %call5 = tail call i32 %7(ptr noundef %dev_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %for.cond.preheader

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

for.cond.preheader:                               ; preds = %entry
  tail call fastcc void @__esp_interrupt(ptr noundef %dev_id)
  %flags6 = getelementptr inbounds %struct.esp, ptr %dev_id, i32 0, i32 37
  %8 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags6, align 4
  %and46 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool7.not47 = icmp eq i32 %and46, 0
  br i1 %tobool7.not47, label %for.cond.preheader.if.end25_crit_edge, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  br label %if.end

for.cond.preheader.if.end25_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  %10 = phi i32 [ %17, %cleanup.if.end_crit_edge ], [ %9, %for.cond.preheader.if.end_crit_edge ]
  %and10 = and i32 %10, -17
  %11 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and10, ptr %flags6, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.045 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %irq_pending15 = getelementptr inbounds %struct.esp_driver_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %irq_pending15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_pending15, align 4
  %call16 = tail call i32 %15(ptr noundef %dev_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.inc.if.end25_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end25_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

cleanup:                                          ; preds = %for.body
  tail call fastcc void @__esp_interrupt(ptr noundef %dev_id)
  %16 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags6, align 4
  %and = and i32 %17, 16
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %cleanup.if.end25_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.if.end25_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end25:                                         ; preds = %cleanup.if.end25_crit_edge, %for.inc.if.end25_crit_edge, %for.cond.preheader.if.end25_crit_edge, %entry.if.end25_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end25_crit_edge ], [ 1, %for.cond.preheader.if.end25_crit_edge ], [ 1, %for.inc.if.end25_crit_edge ], [ 1, %cleanup.if.end25_crit_edge ]
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host, align 4
  %host_lock27 = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %host_lock27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host_lock27, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call2) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__esp_interrupt(ptr noundef %esp) unnamed_addr #0 align 64 {
entry:
  %count.i.i = alloca i32, align 4
  %offset.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %esp_read8 = getelementptr inbounds %struct.esp_driver_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %esp_read8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %esp_read8, align 4
  %call = tail call zeroext i8 %3(ptr noundef %esp, i32 noundef 4) #10
  %sreg = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 11
  %4 = ptrtoint ptr %sreg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call, ptr %sreg, align 4
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %esp_read82 = getelementptr inbounds %struct.esp_driver_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %esp_read82 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esp_read82, align 4
  %call3 = tail call zeroext i8 %8(ptr noundef %esp, i32 noundef 6) #10
  %seqreg = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 12
  %9 = ptrtoint ptr %seqreg to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call3, ptr %seqreg, align 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %esp_read85 = getelementptr inbounds %struct.esp_driver_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %esp_read85 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %esp_read85, align 4
  %call6 = tail call zeroext i8 %13(ptr noundef %esp, i32 noundef 5) #10
  %ireg = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 14
  %14 = ptrtoint ptr %ireg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call6, ptr %ireg, align 1
  %flags = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 37
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.then20_crit_edge

entry.if.then20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.else:                                          ; preds = %entry
  %17 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sreg, align 4
  %conv.i = zext i8 %18 to i32
  %and.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %esp_check_gross_error.exit

esp_check_gross_error.exit:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %host.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %19 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.20, i32 noundef %conv.i) #13
  br label %cleanup

if.end:                                           ; preds = %if.else
  %rev.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 36
  %21 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %switch.i = icmp ult i32 %22, 2
  %23 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sreg, align 4
  br i1 %switch.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = and i8 %24, 127
  %26 = ptrtoint ptr %sreg to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %sreg, align 4
  br label %if.end13

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool.not.i181 = icmp sgt i8 %24, -1
  br i1 %tobool.not.i181, label %if.then.i, label %sw.default.i.if.end13_crit_edge

sw.default.i.if.end13_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then.i:                                        ; preds = %sw.default.i
  %27 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ireg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %tobool7.not.i = icmp sgt i8 %28, -1
  br i1 %tobool7.not.i, label %if.end.i, label %if.then.i.if.then20_crit_edge

if.then.i.if.then20_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end.i:                                         ; preds = %if.then.i
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %dma_error.i = getelementptr inbounds %struct.esp_driver_ops, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %dma_error.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_error.i, align 4
  %call.i = tail call i32 %32(ptr noundef %esp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  %host.i182 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %33 = ptrtoint ptr %host.i182 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host.i182, align 4
  %shost_gendev.i183 = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 49
  br i1 %tobool9.not.i, label %do.end.i184, label %do.end15.i

do.end.i184:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sreg, align 4
  %conv12.i = zext i8 %36 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev.i183, ptr noundef nonnull @.str.23, i32 noundef %conv12.i) #13
  br label %cleanup

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev.i183, ptr noundef nonnull @.str.26) #13
  br label %cleanup

if.end13:                                         ; preds = %sw.default.i.if.end13_crit_edge, %sw.bb.i
  %37 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ireg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %38)
  %tobool16.not = icmp sgt i8 %38, -1
  br i1 %tobool16.not, label %if.end26, label %if.end13.if.then20_crit_edge

if.end13.if.then20_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %if.end13.if.then20_crit_edge, %if.then.i.if.then20_crit_edge, %entry.if.then20_crit_edge
  tail call fastcc void @esp_reset_cleanup(ptr noundef %esp)
  %eh_reset = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 51
  %39 = ptrtoint ptr %eh_reset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %eh_reset, align 4
  %tobool21.not = icmp eq ptr %40, null
  br i1 %tobool21.not, label %if.then20.cleanup_crit_edge, label %if.then22

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @complete(ptr noundef nonnull %40) #10
  %41 = ptrtoint ptr %eh_reset to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %eh_reset, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end13
  %rev = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 36
  %42 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %43)
  %cmp31 = icmp eq i32 %43, 8
  br i1 %cmp31, label %if.then33, label %if.end26.do.body_crit_edge

if.end26.do.body_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then33:                                        ; preds = %if.end26
  %44 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %sreg, align 4
  %46 = and i8 %45, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %switch = icmp eq i8 %46, 0
  br i1 %switch, label %if.then33.lor.lhs.false_crit_edge, label %land.lhs.true40

if.then33.lor.lhs.false_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true40:                                  ; preds = %if.then33
  %select_state = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 38
  %47 = ptrtoint ptr %select_state to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %select_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp42 = icmp eq i8 %48, 0
  br i1 %cmp42, label %land.lhs.true44, label %land.lhs.true40.lor.lhs.false_crit_edge

land.lhs.true40.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %event = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 39
  %49 = ptrtoint ptr %event to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %event, align 1
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i8 %50, label %land.lhs.true44.if.then57_crit_edge [
    i8 11, label %land.lhs.true44.lor.lhs.false_crit_edge
    i8 5, label %land.lhs.true44.lor.lhs.false_crit_edge662
  ]

land.lhs.true44.lor.lhs.false_crit_edge662:       ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true44.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true44.if.then57_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

lor.lhs.false:                                    ; preds = %land.lhs.true44.lor.lhs.false_crit_edge, %land.lhs.true44.lor.lhs.false_crit_edge662, %land.lhs.true40.lor.lhs.false_crit_edge, %if.then33.lor.lhs.false_crit_edge
  %52 = and i8 %38, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool56.not = icmp eq i8 %52, 0
  br i1 %tobool56.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.then57_crit_edge

lor.lhs.false.if.then57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then57:                                        ; preds = %lor.lhs.false.if.then57_crit_edge, %land.lhs.true44.if.then57_crit_edge
  %53 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops, align 4
  %esp_read859 = getelementptr inbounds %struct.esp_driver_ops, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %esp_read859 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %esp_read859, align 4
  %call60 = tail call zeroext i8 %56(ptr noundef %esp, i32 noundef 9) #10
  %sreg2 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 13
  %57 = ptrtoint ptr %sreg2 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %call60, ptr %sreg2, align 2
  %58 = and i8 %call60, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %58)
  %59 = icmp eq i8 %58, -128
  br i1 %59, label %if.then57.do.body_crit_edge, label %if.then70

if.then57.do.body_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then70:                                        ; preds = %if.then57
  %60 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops, align 4
  %esp_read8.i = getelementptr inbounds %struct.esp_driver_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %esp_read8.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %esp_read8.i, align 4
  %call.i187 = tail call zeroext i8 %63(ptr noundef %esp, i32 noundef 7) #10
  %64 = and i8 %call.i187, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not38.i = icmp eq i8 %64, 0
  br i1 %tobool.not38.i, label %if.then70.while.end.i_crit_edge, label %while.body.preheader.i

if.then70.while.end.i_crit_edge:                  ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.then70
  %and.i188 = zext i8 %64 to i32
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %idx.040.i = phi i32 [ %inc8.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %fcnt.039.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %and.i188, %while.body.preheader.i ]
  %dec.i = add nsw i32 %fcnt.039.i, -1
  %65 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops, align 4
  %esp_read82.i = getelementptr inbounds %struct.esp_driver_ops, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %esp_read82.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %esp_read82.i, align 4
  %call3.i = tail call zeroext i8 %68(ptr noundef %esp, i32 noundef 2) #10
  %inc.i = or i32 %idx.040.i, 1
  %arrayidx.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 23, i32 %idx.040.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %call3.i, ptr %arrayidx.i, align 1
  %70 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops, align 4
  %esp_read85.i = getelementptr inbounds %struct.esp_driver_ops, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %esp_read85.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %esp_read85.i, align 4
  %call6.i = tail call zeroext i8 %73(ptr noundef %esp, i32 noundef 2) #10
  %inc8.i = add nuw nsw i32 %idx.040.i, 2
  %arrayidx9.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 23, i32 %inc.i
  %74 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %call6.i, ptr %arrayidx9.i, align 1
  %tobool.not.i189 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i189, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then70.while.end.i_crit_edge
  %idx.0.lcssa.i = phi i32 [ 0, %if.then70.while.end.i_crit_edge ], [ %inc8.i, %while.body.i.while.end.i_crit_edge ]
  %75 = ptrtoint ptr %sreg2 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %sreg2, align 2
  %77 = and i8 %76, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool12.not.i = icmp eq i8 %77, 0
  br i1 %tobool12.not.i, label %while.end.i.hme_read_fifo.exit_crit_edge, label %if.then.i190

while.end.i.hme_read_fifo.exit_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hme_read_fifo.exit

if.then.i190:                                     ; preds = %while.end.i
  %78 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  tail call void %81(ptr noundef %esp, i8 noundef zeroext 0, i32 noundef 2) #10
  %82 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops, align 4
  %esp_read815.i = getelementptr inbounds %struct.esp_driver_ops, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %esp_read815.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %esp_read815.i, align 4
  %call16.i = tail call zeroext i8 %85(ptr noundef %esp, i32 noundef 2) #10
  %inc18.i = or i32 %idx.0.lcssa.i, 1
  %arrayidx19.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 23, i32 %idx.0.lcssa.i
  %86 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %call16.i, ptr %arrayidx19.i, align 1
  %esp_event_cur.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 25
  %87 = ptrtoint ptr %esp_event_cur.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %esp_event_cur.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %88
  %89 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 2, ptr %arrayidx.i.i, align 1
  %val1.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %88, i32 1
  %90 = ptrtoint ptr %val1.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %val1.i.i, align 1
  %91 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %88, i32 2
  %93 = ptrtoint ptr %sreg1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %sreg1.i.i.i, align 1
  %94 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %88, i32 3
  %96 = ptrtoint ptr %seqreg2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %seqreg2.i.i.i, align 1
  %97 = ptrtoint ptr %sreg2 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %sreg2, align 2
  %sreg23.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %88, i32 4
  %99 = ptrtoint ptr %sreg23.i.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %sreg23.i.i.i, align 1
  %100 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %88, i32 5
  %102 = ptrtoint ptr %ireg4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %ireg4.i.i.i, align 1
  %select_state.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 38
  %103 = ptrtoint ptr %select_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %select_state.i.i.i, align 4
  %select_state5.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %88, i32 6
  %105 = ptrtoint ptr %select_state5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %select_state5.i.i.i, align 1
  %event.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 39
  %106 = ptrtoint ptr %event.i.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %event.i.i.i, align 1
  %event6.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %88, i32 7
  %108 = ptrtoint ptr %event6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %event6.i.i.i, align 1
  %add.i.i = add i32 %88, 1
  %and.i.i = and i32 %add.i.i, 31
  store i32 %and.i.i, ptr %esp_event_cur.i.i, align 4
  %109 = load i32, ptr @esp_debug, align 4
  %and3.i.i = and i32 %109, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i190.scsi_esp_cmd.exit.i_crit_edge, label %do.end.i.i

if.then.i190.scsi_esp_cmd.exit.i_crit_edge:       ; preds = %if.then.i190
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit.i

do.end.i.i:                                       ; preds = %if.then.i190
  call void @__sanitizer_cov_trace_pc() #12
  %host.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %110 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %host.i.i, align 4
  %shost_gendev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %111, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i.i, ptr noundef nonnull @.str, i32 noundef 1) #13
  br label %scsi_esp_cmd.exit.i

scsi_esp_cmd.exit.i:                              ; preds = %do.end.i.i, %if.then.i190.scsi_esp_cmd.exit.i_crit_edge
  %112 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  tail call void %115(ptr noundef %esp, i8 noundef zeroext 1, i32 noundef 3) #10
  br label %hme_read_fifo.exit

hme_read_fifo.exit:                               ; preds = %scsi_esp_cmd.exit.i, %while.end.i.hme_read_fifo.exit_crit_edge
  %idx.1.i = phi i32 [ %inc18.i, %scsi_esp_cmd.exit.i ], [ %idx.0.lcssa.i, %while.end.i.hme_read_fifo.exit_crit_edge ]
  %fifo_cnt.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 22
  %116 = ptrtoint ptr %fifo_cnt.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %idx.1.i, ptr %fifo_cnt.i, align 4
  br label %do.body

do.body:                                          ; preds = %hme_read_fifo.exit, %if.then57.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.end26.do.body_crit_edge
  %117 = load i32, ptr @esp_debug, align 4
  %and74 = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body.do.end88_crit_edge, label %do.end

do.body.do.end88_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end88

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %host = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %118 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %119, i32 0, i32 49
  %120 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %sreg, align 4
  %conv79 = zext i8 %121 to i32
  %122 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %seqreg, align 1
  %conv81 = zext i8 %123 to i32
  %sreg282 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 13
  %124 = ptrtoint ptr %sreg282 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %sreg282, align 2
  %conv83 = zext i8 %125 to i32
  %126 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %ireg, align 1
  %conv85 = zext i8 %127 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.15, i32 noundef %conv79, i32 noundef %conv81, i32 noundef %conv83, i32 noundef %conv85) #13
  br label %do.end88

do.end88:                                         ; preds = %do.end, %do.body.do.end88_crit_edge
  %128 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %ireg, align 1
  %conv90 = zext i8 %129 to i32
  %and91 = and i32 %conv90, 67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.else107, label %do.end96

do.end96:                                         ; preds = %do.end88
  %host97 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %130 = ptrtoint ptr %host97 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %host97, align 4
  %shost_gendev98 = getelementptr inbounds %struct.Scsi_Host, ptr %131, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %shost_gendev98, ptr noundef nonnull @.str.18, i32 noundef %conv90) #13
  %132 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %ireg, align 1
  %134 = and i8 %133, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool104.not = icmp eq i8 %134, 0
  br i1 %tobool104.not, label %do.end96.if.end106_crit_edge, label %if.then105

do.end96.if.end106_crit_edge:                     ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then105:                                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @esp_dump_cmd_log(ptr noundef %esp)
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %do.end96.if.end106_crit_edge
  tail call fastcc void @esp_schedule_reset(ptr noundef %esp)
  br label %while.body.lr.ph

if.else107:                                       ; preds = %do.end88
  %and110 = and i32 %conv90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.else118, label %if.then112

if.then112:                                       ; preds = %if.else107
  %active_cmd = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 5
  %135 = ptrtoint ptr %active_cmd to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %active_cmd, align 4
  %tobool113.not = icmp eq ptr %136, null
  br i1 %tobool113.not, label %if.then112.do.end8.i_crit_edge, label %if.end116

if.then112.do.end8.i_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

if.end116:                                        ; preds = %if.then112
  %call115 = tail call fastcc i32 @esp_finish_select(ptr noundef %esp)
  %137 = ptrtoint ptr %active_cmd to i32
  call void @__asan_load4_noabort(i32 %137)
  %.pr = load ptr, ptr %active_cmd, align 4
  %tobool.not.i192 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i192, label %if.end116.do.end8.i_crit_edge, label %do.body3.i, !prof !345

if.end116.do.end8.i_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

do.body3.i:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/esp_scsi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1145, 0\0A.popsection", ""() #10, !srcloc !346
  unreachable

do.end8.i:                                        ; preds = %if.end116.do.end8.i_crit_edge, %if.then112.do.end8.i_crit_edge
  %138 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %139)
  %cmp.i = icmp eq i32 %139, 8
  br i1 %cmp.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %fifo.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 23
  %140 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %fifo.i, align 4
  %conv.i194 = zext i8 %141 to i32
  %arrayidx11.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 23, i32 1
  %142 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx11.i, align 1
  br label %if.end52.i

if.else.i:                                        ; preds = %do.end8.i
  %144 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ops, align 4
  %esp_read8.i196 = getelementptr inbounds %struct.esp_driver_ops, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %esp_read8.i196 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %esp_read8.i196, align 4
  %call.i197 = tail call zeroext i8 %147(ptr noundef %esp, i32 noundef 2) #10
  %conv13.i = zext i8 %call.i197 to i32
  %scsi_id_mask.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 35
  %148 = ptrtoint ptr %scsi_id_mask.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %scsi_id_mask.i, align 4
  %and14.i = and i32 %149, %conv13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else.i.do_reset.i_crit_edge, label %if.end17.i

if.else.i.do_reset.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_reset.i

if.end17.i:                                       ; preds = %if.else.i
  %150 = trunc i32 %149 to i8
  %151 = xor i8 %150, -1
  %conv21.i = and i8 %call.i197, %151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv21.i)
  %tobool22.not.i = icmp eq i8 %conv21.i, 0
  br i1 %tobool22.not.i, label %if.end17.i.do_reset.i_crit_edge, label %lor.lhs.false.i

if.end17.i.do_reset.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_reset.i

lor.lhs.false.i:                                  ; preds = %if.end17.i
  %conv23.i = zext i8 %conv21.i to i32
  %sub.i = add nuw nsw i32 %conv23.i, 255
  %and25.i = and i32 %sub.i, %conv23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %lor.lhs.false.i.do_reset.i_crit_edge

lor.lhs.false.i.do_reset.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_reset.i

if.end28.i:                                       ; preds = %lor.lhs.false.i
  %152 = tail call i32 @llvm.cttz.i32(i32 %conv23.i, i1 true) #10, !range !347
  %153 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ops, align 4
  %esp_read832.i = getelementptr inbounds %struct.esp_driver_ops, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %esp_read832.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %esp_read832.i, align 4
  %call33.i = tail call zeroext i8 %156(ptr noundef %esp, i32 noundef 2) #10
  %esp_event_cur.i.i198 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 25
  %157 = ptrtoint ptr %esp_event_cur.i.i198 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %esp_event_cur.i.i198, align 4
  %arrayidx.i.i199 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %158
  %159 = ptrtoint ptr %arrayidx.i.i199 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 2, ptr %arrayidx.i.i199, align 1
  %val1.i.i200 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %158, i32 1
  %160 = ptrtoint ptr %val1.i.i200 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %val1.i.i200, align 1
  %161 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i202 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %158, i32 2
  %163 = ptrtoint ptr %sreg1.i.i.i202 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %sreg1.i.i.i202, align 1
  %164 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i204 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %158, i32 3
  %166 = ptrtoint ptr %seqreg2.i.i.i204 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %seqreg2.i.i.i204, align 1
  %sreg2.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 13
  %167 = ptrtoint ptr %sreg2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %sreg2.i.i.i, align 2
  %sreg23.i.i.i205 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %158, i32 4
  %169 = ptrtoint ptr %sreg23.i.i.i205 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %sreg23.i.i.i205, align 1
  %170 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i207 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %158, i32 5
  %172 = ptrtoint ptr %ireg4.i.i.i207 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %ireg4.i.i.i207, align 1
  %select_state.i.i.i208 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 38
  %173 = ptrtoint ptr %select_state.i.i.i208 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %select_state.i.i.i208, align 4
  %select_state5.i.i.i209 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %158, i32 6
  %175 = ptrtoint ptr %select_state5.i.i.i209 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %select_state5.i.i.i209, align 1
  %event.i.i.i210 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 39
  %176 = ptrtoint ptr %event.i.i.i210 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %event.i.i.i210, align 1
  %event6.i.i.i211 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %158, i32 7
  %178 = ptrtoint ptr %event6.i.i.i211 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %event6.i.i.i211, align 1
  %add.i.i212 = add i32 %158, 1
  %and.i.i213 = and i32 %add.i.i212, 31
  store i32 %and.i.i213, ptr %esp_event_cur.i.i198, align 4
  %179 = load i32, ptr @esp_debug, align 4
  %and3.i.i214 = and i32 %179, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i214)
  %tobool.not.i.i215 = icmp eq i32 %and3.i.i214, 0
  br i1 %tobool.not.i.i215, label %if.end28.i.scsi_esp_cmd.exit.i219_crit_edge, label %do.end.i.i218

if.end28.i.scsi_esp_cmd.exit.i219_crit_edge:      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit.i219

do.end.i.i218:                                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  %host.i.i216 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %180 = ptrtoint ptr %host.i.i216 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %host.i.i216, align 4
  %shost_gendev.i.i217 = getelementptr inbounds %struct.Scsi_Host, ptr %181, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i.i217, ptr noundef nonnull @.str, i32 noundef 1) #13
  br label %scsi_esp_cmd.exit.i219

scsi_esp_cmd.exit.i219:                           ; preds = %do.end.i.i218, %if.end28.i.scsi_esp_cmd.exit.i219_crit_edge
  %182 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ops, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  tail call void %185(ptr noundef %esp, i8 noundef zeroext 1, i32 noundef 3) #10
  %186 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp37.i = icmp eq i32 %187, 0
  br i1 %cmp37.i, label %if.then39.i, label %scsi_esp_cmd.exit.i219.if.end48.i_crit_edge

scsi_esp_cmd.exit.i219.if.end48.i_crit_edge:      ; preds = %scsi_esp_cmd.exit.i219
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.then39.i:                                      ; preds = %scsi_esp_cmd.exit.i219
  %188 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ops, align 4
  %esp_read841.i = getelementptr inbounds %struct.esp_driver_ops, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %esp_read841.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %esp_read841.i, align 4
  %call42.i = tail call zeroext i8 %191(ptr noundef %esp, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call42.i)
  %tobool45.not.i = icmp sgt i8 %call42.i, -1
  br i1 %tobool45.not.i, label %if.then39.i.if.end48.i_crit_edge, label %if.then39.i.do_reset.i_crit_edge

if.then39.i.do_reset.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_reset.i

if.then39.i.if.end48.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then39.i.if.end48.i_crit_edge, %scsi_esp_cmd.exit.i219.if.end48.i_crit_edge
  %192 = ptrtoint ptr %esp_event_cur.i.i198 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %esp_event_cur.i.i198, align 4
  %arrayidx.i132.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %193
  %194 = ptrtoint ptr %arrayidx.i132.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 2, ptr %arrayidx.i132.i, align 1
  %val1.i133.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %193, i32 1
  %195 = ptrtoint ptr %val1.i133.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %val1.i133.i, align 1
  %196 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %sreg, align 4
  %sreg1.i.i135.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %193, i32 2
  %198 = ptrtoint ptr %sreg1.i.i135.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %sreg1.i.i135.i, align 1
  %199 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i137.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %193, i32 3
  %201 = ptrtoint ptr %seqreg2.i.i137.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %seqreg2.i.i137.i, align 1
  %202 = ptrtoint ptr %sreg2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %sreg2.i.i.i, align 2
  %sreg23.i.i139.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %193, i32 4
  %204 = ptrtoint ptr %sreg23.i.i139.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %sreg23.i.i139.i, align 1
  %205 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %ireg, align 1
  %ireg4.i.i141.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %193, i32 5
  %207 = ptrtoint ptr %ireg4.i.i141.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %ireg4.i.i141.i, align 1
  %208 = ptrtoint ptr %select_state.i.i.i208 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %select_state.i.i.i208, align 4
  %select_state5.i.i143.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %193, i32 6
  %210 = ptrtoint ptr %select_state5.i.i143.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %select_state5.i.i143.i, align 1
  %211 = ptrtoint ptr %event.i.i.i210 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %event.i.i.i210, align 1
  %event6.i.i145.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %193, i32 7
  %213 = ptrtoint ptr %event6.i.i145.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %212, ptr %event6.i.i145.i, align 1
  %add.i146.i = add i32 %193, 1
  %and.i147.i = and i32 %add.i146.i, 31
  store i32 %and.i147.i, ptr %esp_event_cur.i.i198, align 4
  %214 = load i32, ptr @esp_debug, align 4
  %and3.i148.i = and i32 %214, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i148.i)
  %tobool.not.i149.i = icmp eq i32 %and3.i148.i, 0
  br i1 %tobool.not.i149.i, label %if.end48.i.cleanup49.thread234.i_crit_edge, label %do.end.i152.i

if.end48.i.cleanup49.thread234.i_crit_edge:       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49.thread234.i

do.end.i152.i:                                    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  %host.i150.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %215 = ptrtoint ptr %host.i150.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %host.i150.i, align 4
  %shost_gendev.i151.i = getelementptr inbounds %struct.Scsi_Host, ptr %216, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i151.i, ptr noundef nonnull @.str, i32 noundef 0) #13
  br label %cleanup49.thread234.i

cleanup49.thread234.i:                            ; preds = %do.end.i152.i, %if.end48.i.cleanup49.thread234.i_crit_edge
  %217 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ops, align 4
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %218, align 4
  tail call void %220(ptr noundef %esp, i8 noundef zeroext 0, i32 noundef 3) #10
  br label %if.end52.i

if.end52.i:                                       ; preds = %cleanup49.thread234.i, %if.then9.i
  %target.1.i = phi i32 [ %conv.i194, %if.then9.i ], [ %152, %cleanup49.thread234.i ]
  %lun.1.in.in.i = phi i8 [ %143, %if.then9.i ], [ %call33.i, %cleanup49.thread234.i ]
  %lun.1.in.i = and i8 %lun.1.in.in.i, 7
  %lun.1.i = zext i8 %lun.1.in.i to i32
  %arrayidx.i155.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %target.1.i
  %esp_offset.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %target.1.i, i32 1
  %221 = ptrtoint ptr %esp_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %esp_offset.i.i, align 1
  %223 = ptrtoint ptr %arrayidx.i155.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx.i155.i, align 4
  %prev_soff.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 16
  %225 = ptrtoint ptr %prev_soff.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %prev_soff.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %222, i8 %226)
  %cmp.not.i.i = icmp eq i8 %222, %226
  br i1 %cmp.not.i.i, label %if.end52.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end52.i.if.end.i.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  %227 = ptrtoint ptr %prev_soff.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %222, ptr %prev_soff.i.i, align 4
  %228 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ops, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %229, align 4
  tail call void %231(ptr noundef %esp, i8 noundef zeroext %222, i32 noundef 7) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end52.i.if.end.i.i_crit_edge
  %prev_stp.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 17
  %232 = ptrtoint ptr %prev_stp.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %prev_stp.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %224, i8 %233)
  %cmp8.not.i.i = icmp eq i8 %224, %233
  br i1 %cmp8.not.i.i, label %if.end.i.i.esp_write_tgt_sync.exit.i_crit_edge, label %if.then10.i.i

if.end.i.i.esp_write_tgt_sync.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_write_tgt_sync.exit.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %234 = ptrtoint ptr %prev_stp.i.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %224, ptr %prev_stp.i.i, align 1
  %235 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %ops, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %236, align 4
  tail call void %238(ptr noundef %esp, i8 noundef zeroext %224, i32 noundef 6) #10
  br label %esp_write_tgt_sync.exit.i

esp_write_tgt_sync.exit.i:                        ; preds = %if.then10.i.i, %if.end.i.i.esp_write_tgt_sync.exit.i_crit_edge
  %239 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %240)
  %cmp.i.i = icmp ugt i32 %240, 1
  br i1 %cmp.i.i, label %if.then.i157.i, label %esp_write_tgt_sync.exit.i.esp_write_tgt_config3.exit.i_crit_edge

esp_write_tgt_sync.exit.i.esp_write_tgt_config3.exit.i_crit_edge: ; preds = %esp_write_tgt_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_write_tgt_config3.exit.i

if.then.i157.i:                                   ; preds = %esp_write_tgt_sync.exit.i
  %esp_config3.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %target.1.i, i32 2
  %241 = ptrtoint ptr %esp_config3.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %esp_config3.i.i, align 2
  %prev_cfg3.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 18
  %243 = ptrtoint ptr %prev_cfg3.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %prev_cfg3.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %242, i8 %244)
  %cmp2.not.i.i = icmp eq i8 %242, %244
  br i1 %cmp2.not.i.i, label %if.then.i157.i.esp_write_tgt_config3.exit.i_crit_edge, label %if.then4.i.i

if.then.i157.i.esp_write_tgt_config3.exit.i_crit_edge: ; preds = %if.then.i157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_write_tgt_config3.exit.i

if.then4.i.i:                                     ; preds = %if.then.i157.i
  call void @__sanitizer_cov_trace_pc() #12
  %245 = ptrtoint ptr %prev_cfg3.i.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %242, ptr %prev_cfg3.i.i, align 2
  %246 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ops, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %247, align 4
  tail call void %249(ptr noundef %esp, i8 noundef zeroext %242, i32 noundef 12) #10
  br label %esp_write_tgt_config3.exit.i

esp_write_tgt_config3.exit.i:                     ; preds = %if.then4.i.i, %if.then.i157.i.esp_write_tgt_config3.exit.i_crit_edge, %esp_write_tgt_sync.exit.i.esp_write_tgt_config3.exit.i_crit_edge
  %esp_event_cur.i159.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 25
  %250 = ptrtoint ptr %esp_event_cur.i159.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %esp_event_cur.i159.i, align 4
  %arrayidx.i160.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %251
  %252 = ptrtoint ptr %arrayidx.i160.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 2, ptr %arrayidx.i160.i, align 1
  %val1.i161.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %251, i32 1
  %253 = ptrtoint ptr %val1.i161.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 18, ptr %val1.i161.i, align 1
  %254 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %sreg, align 4
  %sreg1.i.i163.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %251, i32 2
  %256 = ptrtoint ptr %sreg1.i.i163.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %255, ptr %sreg1.i.i163.i, align 1
  %257 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i165.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %251, i32 3
  %259 = ptrtoint ptr %seqreg2.i.i165.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %258, ptr %seqreg2.i.i165.i, align 1
  %sreg2.i.i166.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 13
  %260 = ptrtoint ptr %sreg2.i.i166.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %sreg2.i.i166.i, align 2
  %sreg23.i.i167.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %251, i32 4
  %262 = ptrtoint ptr %sreg23.i.i167.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %261, ptr %sreg23.i.i167.i, align 1
  %263 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %ireg, align 1
  %ireg4.i.i169.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %251, i32 5
  %265 = ptrtoint ptr %ireg4.i.i169.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %264, ptr %ireg4.i.i169.i, align 1
  %select_state.i.i170.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 38
  %266 = ptrtoint ptr %select_state.i.i170.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %select_state.i.i170.i, align 4
  %select_state5.i.i171.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %251, i32 6
  %268 = ptrtoint ptr %select_state5.i.i171.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %267, ptr %select_state5.i.i171.i, align 1
  %event.i.i172.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 39
  %269 = ptrtoint ptr %event.i.i172.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %event.i.i172.i, align 1
  %event6.i.i173.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %251, i32 7
  %271 = ptrtoint ptr %event6.i.i173.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %270, ptr %event6.i.i173.i, align 1
  %add.i174.i = add i32 %251, 1
  %and.i175.i = and i32 %add.i174.i, 31
  store i32 %and.i175.i, ptr %esp_event_cur.i159.i, align 4
  %272 = load i32, ptr @esp_debug, align 4
  %and3.i176.i = and i32 %272, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i176.i)
  %tobool.not.i177.i = icmp eq i32 %and3.i176.i, 0
  br i1 %tobool.not.i177.i, label %esp_write_tgt_config3.exit.i.scsi_esp_cmd.exit182.i_crit_edge, label %do.end.i180.i

esp_write_tgt_config3.exit.i.scsi_esp_cmd.exit182.i_crit_edge: ; preds = %esp_write_tgt_config3.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit182.i

do.end.i180.i:                                    ; preds = %esp_write_tgt_config3.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %host.i178.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %273 = ptrtoint ptr %host.i178.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %host.i178.i, align 4
  %shost_gendev.i179.i = getelementptr inbounds %struct.Scsi_Host, ptr %274, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i179.i, ptr noundef nonnull @.str, i32 noundef 18) #13
  br label %scsi_esp_cmd.exit182.i

scsi_esp_cmd.exit182.i:                           ; preds = %do.end.i180.i, %esp_write_tgt_config3.exit.i.scsi_esp_cmd.exit182.i_crit_edge
  %275 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %ops, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %276, align 4
  tail call void %278(ptr noundef %esp, i8 noundef zeroext 18, i32 noundef 3) #10
  %279 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %280)
  %cmp54.i = icmp eq i32 %280, 8
  br i1 %cmp54.i, label %if.then56.i, label %scsi_esp_cmd.exit182.i.if.end60.i_crit_edge

scsi_esp_cmd.exit182.i.if.end60.i_crit_edge:      ; preds = %scsi_esp_cmd.exit182.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

if.then56.i:                                      ; preds = %scsi_esp_cmd.exit182.i
  call void @__sanitizer_cov_trace_pc() #12
  %281 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %ops, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %282, align 4
  %285 = trunc i32 %target.1.i to i8
  %conv59.i = or i8 %285, 80
  tail call void %284(ptr noundef %esp, i8 noundef zeroext %conv59.i, i32 noundef 4) #10
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then56.i, %scsi_esp_cmd.exit182.i.if.end60.i_crit_edge
  %starget.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %target.1.i, i32 8
  %286 = ptrtoint ptr %starget.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %starget.i, align 4
  %conv63241.i = zext i8 %lun.1.in.i to i64
  %call64.i = tail call ptr @__scsi_device_lookup_by_target(ptr noundef %287, i64 noundef %conv63241.i) #10
  %tobool65.not.i = icmp eq ptr %call64.i, null
  br i1 %tobool65.not.i, label %do.end69.i, label %if.end70.i

do.end69.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  %host.i220 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %288 = ptrtoint ptr %host.i220 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %host.i220, align 4
  %shost_gendev.i221 = getelementptr inbounds %struct.Scsi_Host, ptr %289, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev.i221, ptr noundef nonnull @.str.60, i32 noundef %target.1.i, i32 noundef %lun.1.i) #13
  br label %do_reset.i

if.end70.i:                                       ; preds = %if.end60.i
  %hostdata.i = getelementptr inbounds %struct.scsi_device, ptr %call64.i, i32 0, i32 21
  %290 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %hostdata.i, align 8
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %291, align 4
  %tobool71.not.i = icmp eq ptr %293, null
  br i1 %tobool71.not.i, label %if.then72.i, label %if.end70.i.if.end77.i_crit_edge

if.end70.i.if.end77.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i

if.then72.i:                                      ; preds = %if.end70.i
  %num_tagged.i.i = getelementptr inbounds %struct.esp_lun_data, ptr %291, i32 0, i32 1
  %294 = ptrtoint ptr %num_tagged.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %num_tagged.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %tobool.not.i183.i = icmp eq i32 %295, 0
  br i1 %tobool.not.i183.i, label %do.end.i186.i, label %do.body1.i.i

do.end.i186.i:                                    ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #12
  %host.i184.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %296 = ptrtoint ptr %host.i184.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %host.i184.i, align 4
  %shost_gendev.i185.i = getelementptr inbounds %struct.Scsi_Host, ptr %297, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev.i185.i, ptr noundef nonnull @.str.62) #13
  br label %do_reset.i

do.body1.i.i:                                     ; preds = %if.then72.i
  %298 = load i32, ptr @esp_debug, align 4
  %and.i187.i = and i32 %298, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i187.i)
  %tobool2.not.i.i = icmp eq i32 %and.i187.i, 0
  br i1 %tobool2.not.i.i, label %do.body1.i.i.for.body.i.i.preheader_crit_edge, label %do.end6.i.i

do.body1.i.i.for.body.i.i.preheader_crit_edge:    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.preheader

do.end6.i.i:                                      ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %host7.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %299 = ptrtoint ptr %host7.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %host7.i.i, align 4
  %shost_gendev8.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %300, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev8.i.i, ptr noundef nonnull @.str.65) #13
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %do.end6.i.i, %do.body1.i.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.0231.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %301 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %ops, align 4
  %irq_pending.i.i = getelementptr inbounds %struct.esp_driver_ops, ptr %302, i32 0, i32 2
  %303 = ptrtoint ptr %irq_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %irq_pending.i.i, align 4
  %call.i.i = tail call i32 %304(ptr noundef %esp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i.i, label %for.inc.i.i, label %if.end22.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.0231.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %do.end19.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

do.end19.i.i:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %host20.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %305 = ptrtoint ptr %host20.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %host20.i.i, align 4
  %shost_gendev21.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %306, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev21.i.i, ptr noundef nonnull @.str.68) #13
  br label %do_reset.i

if.end22.i.i:                                     ; preds = %for.body.i.i
  %307 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %ops, align 4
  %esp_read8.i.i = getelementptr inbounds %struct.esp_driver_ops, ptr %308, i32 0, i32 1
  %309 = ptrtoint ptr %esp_read8.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %esp_read8.i.i, align 4
  %call24.i.i = tail call zeroext i8 %310(ptr noundef %esp, i32 noundef 4) #10
  %311 = ptrtoint ptr %sreg to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %call24.i.i, ptr %sreg, align 4
  %312 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %ops, align 4
  %esp_read826.i.i = getelementptr inbounds %struct.esp_driver_ops, ptr %313, i32 0, i32 1
  %314 = ptrtoint ptr %esp_read826.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %esp_read826.i.i, align 4
  %call27.i.i = tail call zeroext i8 %315(ptr noundef %esp, i32 noundef 5) #10
  %316 = ptrtoint ptr %ireg to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 %call27.i.i, ptr %ireg, align 1
  %317 = load i32, ptr @esp_debug, align 4
  %and29.i.i = and i32 %317, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.end22.i.i.do.end42.i.i_crit_edge, label %do.end34.i.i

if.end22.i.i.do.end42.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42.i.i

do.end34.i.i:                                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %host35.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %318 = ptrtoint ptr %host35.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %host35.i.i, align 4
  %shost_gendev36.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %319, i32 0, i32 49
  %conv.i.i = zext i8 %call27.i.i to i32
  %320 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %sreg, align 4
  %conv39.i.i = zext i8 %321 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev36.i.i, ptr noundef nonnull @.str.71, i32 noundef %i.0231.i.i, i32 noundef %conv.i.i, i32 noundef %conv39.i.i) #13
  br label %do.end42.i.i

do.end42.i.i:                                     ; preds = %do.end34.i.i, %if.end22.i.i.do.end42.i.i_crit_edge
  %322 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %ireg, align 1
  %324 = and i8 %323, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %324)
  %tobool46.not.i.i = icmp eq i8 %324, 0
  br i1 %tobool46.not.i.i, label %if.end53.i.i, label %do.end50.i.i

do.end50.i.i:                                     ; preds = %do.end42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %host51.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %325 = ptrtoint ptr %host51.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %host51.i.i, align 4
  %shost_gendev52.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %326, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev52.i.i, ptr noundef nonnull @.str.74) #13
  br label %do_reset.i

if.end53.i.i:                                     ; preds = %do.end42.i.i
  %327 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %sreg, align 4
  %conv55.i.i = zext i8 %328 to i32
  %and56.i.i = and i32 %conv55.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and56.i.i)
  %cmp57.not.i.i = icmp eq i32 %and56.i.i, 7
  br i1 %cmp57.not.i.i, label %if.end67.i.i, label %do.end62.i.i

do.end62.i.i:                                     ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %host63.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %329 = ptrtoint ptr %host63.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %host63.i.i, align 4
  %shost_gendev64.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %330, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev64.i.i, ptr noundef nonnull @.str.77, i32 noundef %conv55.i.i) #13
  br label %do_reset.i

if.end67.i.i:                                     ; preds = %if.end53.i.i
  %command_block.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 8
  %331 = ptrtoint ptr %command_block.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %command_block.i.i, align 4
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 -1, ptr %332, align 1
  %334 = load ptr, ptr %command_block.i.i, align 4
  %arrayidx69.i.i = getelementptr i8, ptr %334, i32 1
  %335 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 -1, ptr %arrayidx69.i.i, align 1
  %336 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %ops, align 4
  %send_dma_cmd.i.i = getelementptr inbounds %struct.esp_driver_ops, ptr %337, i32 0, i32 7
  %338 = ptrtoint ptr %send_dma_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %send_dma_cmd.i.i, align 4
  %command_block_dma.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 9
  %340 = ptrtoint ptr %command_block_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %command_block_dma.i.i, align 4
  tail call void %339(ptr noundef %esp, i32 noundef %341, i32 noundef 2, i32 noundef 2, i32 noundef 1, i8 noundef zeroext -112) #10
  %342 = ptrtoint ptr %esp_event_cur.i159.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %esp_event_cur.i159.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %343
  %344 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 2, ptr %arrayidx.i.i.i, align 1
  %val1.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %343, i32 1
  %345 = ptrtoint ptr %val1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 18, ptr %val1.i.i.i, align 1
  %346 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %343, i32 2
  %348 = ptrtoint ptr %sreg1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %347, ptr %sreg1.i.i.i.i, align 1
  %349 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %343, i32 3
  %351 = ptrtoint ptr %seqreg2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %350, ptr %seqreg2.i.i.i.i, align 1
  %352 = ptrtoint ptr %sreg2.i.i166.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %sreg2.i.i166.i, align 2
  %sreg23.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %343, i32 4
  %354 = ptrtoint ptr %sreg23.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %353, ptr %sreg23.i.i.i.i, align 1
  %355 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %343, i32 5
  %357 = ptrtoint ptr %ireg4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 %356, ptr %ireg4.i.i.i.i, align 1
  %358 = ptrtoint ptr %select_state.i.i170.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %select_state.i.i170.i, align 4
  %select_state5.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %343, i32 6
  %360 = ptrtoint ptr %select_state5.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 %359, ptr %select_state5.i.i.i.i, align 1
  %361 = ptrtoint ptr %event.i.i172.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %event.i.i172.i, align 1
  %event6.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %343, i32 7
  %363 = ptrtoint ptr %event6.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %362, ptr %event6.i.i.i.i, align 1
  %add.i.i.i = add i32 %343, 1
  %and.i.i.i = and i32 %add.i.i.i, 31
  store i32 %and.i.i.i, ptr %esp_event_cur.i159.i, align 4
  %364 = load i32, ptr @esp_debug, align 4
  %and3.i.i.i = and i32 %364, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and3.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end67.i.i.scsi_esp_cmd.exit.i.i_crit_edge, label %do.end.i.i.i

if.end67.i.i.scsi_esp_cmd.exit.i.i_crit_edge:     ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %host.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %365 = ptrtoint ptr %host.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %host.i.i.i, align 4
  %shost_gendev.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %366, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i.i.i, ptr noundef nonnull @.str, i32 noundef 18) #13
  br label %scsi_esp_cmd.exit.i.i

scsi_esp_cmd.exit.i.i:                            ; preds = %do.end.i.i.i, %if.end67.i.i.scsi_esp_cmd.exit.i.i_crit_edge
  %367 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %ops, align 4
  %369 = ptrtoint ptr %368 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %368, align 4
  tail call void %370(ptr noundef %esp, i8 noundef zeroext 18, i32 noundef 3) #10
  br label %for.body74.i.i

for.body74.i.i:                                   ; preds = %if.end94.i.i.for.body74.i.i_crit_edge, %scsi_esp_cmd.exit.i.i
  %i.1232.i.i = phi i32 [ 0, %scsi_esp_cmd.exit.i.i ], [ %inc96.i.i, %if.end94.i.i.for.body74.i.i_crit_edge ]
  %371 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %ops, align 4
  %irq_pending76.i.i = getelementptr inbounds %struct.esp_driver_ops, ptr %372, i32 0, i32 2
  %373 = ptrtoint ptr %irq_pending76.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %irq_pending76.i.i, align 4
  %call77.i.i = tail call i32 %374(ptr noundef %esp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i.i)
  %tobool78.not.i.i = icmp eq i32 %call77.i.i, 0
  br i1 %tobool78.not.i.i, label %for.body74.i.i.if.end94.i.i_crit_edge, label %if.then79.i.i

for.body74.i.i.if.end94.i.i_crit_edge:            ; preds = %for.body74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94.i.i

if.then79.i.i:                                    ; preds = %for.body74.i.i
  %375 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %ops, align 4
  %esp_read881.i.i = getelementptr inbounds %struct.esp_driver_ops, ptr %376, i32 0, i32 1
  %377 = ptrtoint ptr %esp_read881.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %esp_read881.i.i, align 4
  %call82.i.i = tail call zeroext i8 %378(ptr noundef %esp, i32 noundef 4) #10
  %379 = ptrtoint ptr %sreg to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 %call82.i.i, ptr %sreg, align 4
  %380 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %ops, align 4
  %esp_read885.i.i = getelementptr inbounds %struct.esp_driver_ops, ptr %381, i32 0, i32 1
  %382 = ptrtoint ptr %esp_read885.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %esp_read885.i.i, align 4
  %call86.i.i = tail call zeroext i8 %383(ptr noundef %esp, i32 noundef 5) #10
  %384 = ptrtoint ptr %ireg to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 %call86.i.i, ptr %ireg, align 1
  %385 = and i8 %call86.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %385)
  %tobool91.not.i.i = icmp eq i8 %385, 0
  br i1 %tobool91.not.i.i, label %if.then79.i.i.if.end94.i.i_crit_edge, label %if.end106.i.i

if.then79.i.i.if.end94.i.i_crit_edge:             ; preds = %if.then79.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94.i.i

if.end94.i.i:                                     ; preds = %if.then79.i.i.if.end94.i.i_crit_edge, %for.body74.i.i.if.end94.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %386 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %386(i32 noundef 214748) #10
  %inc96.i.i = add nuw nsw i32 %i.1232.i.i, 1
  %exitcond236.not.i.i = icmp eq i32 %inc96.i.i, 2500
  br i1 %exitcond236.not.i.i, label %do.end103.i.i, label %if.end94.i.i.for.body74.i.i_crit_edge

if.end94.i.i.for.body74.i.i_crit_edge:            ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body74.i.i

do.end103.i.i:                                    ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %host104.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %387 = ptrtoint ptr %host104.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %host104.i.i, align 4
  %shost_gendev105.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %388, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev105.i.i, ptr noundef nonnull @.str.80) #13
  br label %do_reset.i

if.end106.i.i:                                    ; preds = %if.then79.i.i
  %389 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %ops, align 4
  %dma_drain.i.i = getelementptr inbounds %struct.esp_driver_ops, ptr %390, i32 0, i32 5
  %391 = ptrtoint ptr %dma_drain.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %dma_drain.i.i, align 4
  tail call void %392(ptr noundef %esp) #10
  %393 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %ops, align 4
  %dma_invalidate.i.i = getelementptr inbounds %struct.esp_driver_ops, ptr %394, i32 0, i32 6
  %395 = ptrtoint ptr %dma_invalidate.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %dma_invalidate.i.i, align 4
  tail call void %396(ptr noundef %esp) #10
  %397 = load i32, ptr @esp_debug, align 4
  %and110.i.i = and i32 %397, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.i.i)
  %tobool111.not.i.i = icmp eq i32 %and110.i.i, 0
  br i1 %tobool111.not.i.i, label %if.end106.i.i.do.end130.i.i_crit_edge, label %do.end115.i.i

if.end106.i.i.do.end130.i.i_crit_edge:            ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end130.i.i

do.end115.i.i:                                    ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %host116.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %398 = ptrtoint ptr %host116.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %host116.i.i, align 4
  %shost_gendev117.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %399, i32 0, i32 49
  %400 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %ireg, align 1
  %conv119.i.i = zext i8 %401 to i32
  %402 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %sreg, align 4
  %conv121.i.i = zext i8 %403 to i32
  %404 = ptrtoint ptr %command_block.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %command_block.i.i, align 4
  %406 = ptrtoint ptr %405 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %405, align 1
  %conv124.i.i = zext i8 %407 to i32
  %arrayidx126.i.i = getelementptr i8, ptr %405, i32 1
  %408 = ptrtoint ptr %arrayidx126.i.i to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %arrayidx126.i.i, align 1
  %conv127.i.i = zext i8 %409 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev117.i.i, ptr noundef nonnull @.str.83, i32 noundef %i.1232.i.i, i32 noundef %conv119.i.i, i32 noundef %conv121.i.i, i32 noundef %conv124.i.i, i32 noundef %conv127.i.i) #13
  br label %do.end130.i.i

do.end130.i.i:                                    ; preds = %do.end115.i.i, %if.end106.i.i.do.end130.i.i_crit_edge
  %410 = ptrtoint ptr %command_block.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %command_block.i.i, align 4
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %411, align 1
  %414 = add i8 %413, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %414)
  %415 = icmp ult i8 %414, -3
  br i1 %415, label %do.end144.i.i, label %if.end150.i.i

do.end144.i.i:                                    ; preds = %do.end130.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %host145.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %416 = ptrtoint ptr %host145.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %host145.i.i, align 4
  %shost_gendev146.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %417, i32 0, i32 49
  %conv149.i.i = zext i8 %413 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev146.i.i, ptr noundef nonnull @.str.86, i32 noundef %conv149.i.i) #13
  br label %do_reset.i

if.end150.i.i:                                    ; preds = %do.end130.i.i
  %arrayidx152.i.i = getelementptr i8, ptr %411, i32 1
  %418 = ptrtoint ptr %arrayidx152.i.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %arrayidx152.i.i, align 1
  %idxprom.i.i = zext i8 %419 to i32
  %arrayidx153.i.i = getelementptr %struct.esp_lun_data, ptr %291, i32 0, i32 3, i32 %idxprom.i.i
  %420 = ptrtoint ptr %arrayidx153.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %arrayidx153.i.i, align 4
  %tobool154.not.i.i = icmp eq ptr %421, null
  br i1 %tobool154.not.i.i, label %do.end158.i.i, label %if.end150.i.i.if.end77.i_crit_edge

if.end150.i.i.if.end77.i_crit_edge:               ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i

do.end158.i.i:                                    ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %host159.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %422 = ptrtoint ptr %host159.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %host159.i.i, align 4
  %shost_gendev160.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %423, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev160.i.i, ptr noundef nonnull @.str.89, i32 noundef %idxprom.i.i) #13
  br label %do_reset.i

if.end77.i:                                       ; preds = %if.end150.i.i.if.end77.i_crit_edge, %if.end70.i.if.end77.i_crit_edge
  %ent.0.i = phi ptr [ %293, %if.end70.i.if.end77.i_crit_edge ], [ %421, %if.end150.i.i.if.end77.i_crit_edge ]
  %424 = ptrtoint ptr %active_cmd to i32
  call void @__asan_store4_noabort(i32 %424)
  store ptr %ent.0.i, ptr %active_cmd, align 4
  %425 = ptrtoint ptr %esp_event_cur.i159.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %esp_event_cur.i159.i, align 4
  %arrayidx.i190.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %426
  %427 = ptrtoint ptr %arrayidx.i190.i to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 1, ptr %arrayidx.i190.i, align 1
  %val1.i191.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %426, i32 1
  %428 = ptrtoint ptr %val1.i191.i to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 13, ptr %val1.i191.i, align 1
  %429 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %sreg, align 4
  %sreg1.i.i193.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %426, i32 2
  %431 = ptrtoint ptr %sreg1.i.i193.i to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 %430, ptr %sreg1.i.i193.i, align 1
  %432 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i195.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %426, i32 3
  %434 = ptrtoint ptr %seqreg2.i.i195.i to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 %433, ptr %seqreg2.i.i195.i, align 1
  %435 = ptrtoint ptr %sreg2.i.i166.i to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %sreg2.i.i166.i, align 2
  %sreg23.i.i197.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %426, i32 4
  %437 = ptrtoint ptr %sreg23.i.i197.i to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 %436, ptr %sreg23.i.i197.i, align 1
  %438 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %ireg, align 1
  %ireg4.i.i199.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %426, i32 5
  %440 = ptrtoint ptr %ireg4.i.i199.i to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 %439, ptr %ireg4.i.i199.i, align 1
  %441 = ptrtoint ptr %select_state.i.i170.i to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %select_state.i.i170.i, align 4
  %select_state5.i.i201.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %426, i32 6
  %443 = ptrtoint ptr %select_state5.i.i201.i to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 %442, ptr %select_state5.i.i201.i, align 1
  %444 = ptrtoint ptr %event.i.i172.i to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %event.i.i172.i, align 1
  %event6.i.i203.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %426, i32 7
  %446 = ptrtoint ptr %event6.i.i203.i to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 %445, ptr %event6.i.i203.i, align 1
  %add.i204.i = add i32 %426, 1
  %and.i205.i = and i32 %add.i204.i, 31
  store i32 %and.i205.i, ptr %esp_event_cur.i159.i, align 4
  store i8 13, ptr %event.i.i172.i, align 1
  %flags.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.0.i, i32 0, i32 6
  %447 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %flags.i.i, align 4
  %449 = and i8 %448, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %449)
  %tobool.not.i206.i = icmp eq i8 %449, 0
  br i1 %tobool.not.i206.i, label %if.end.i208.i, label %if.then.i207.i

if.then.i207.i:                                   ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  %saved_sense_ptr.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.0.i, i32 0, i32 12
  %450 = ptrtoint ptr %saved_sense_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %saved_sense_ptr.i.i, align 4
  %sense_ptr.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.0.i, i32 0, i32 11
  %452 = ptrtoint ptr %sense_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store ptr %451, ptr %sense_ptr.i.i, align 4
  br label %if.end127.thread602

if.end.i208.i:                                    ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  %cmd1.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.0.i, i32 0, i32 1
  %453 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %cmd1.i.i, align 4
  %saved_cur_residue.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.0.i, i32 0, i32 2
  %455 = ptrtoint ptr %saved_cur_residue.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %saved_cur_residue.i.i, align 4
  %cur_residue.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %454, i32 0, i32 22, i32 1
  %457 = ptrtoint ptr %cur_residue.i.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 %456, ptr %cur_residue.i.i, align 4
  %saved_prv_sg.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.0.i, i32 0, i32 3
  %458 = ptrtoint ptr %saved_prv_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %saved_prv_sg.i.i, align 4
  %prv_sg.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %454, i32 0, i32 22, i32 2
  %460 = ptrtoint ptr %prv_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store ptr %459, ptr %prv_sg.i.i, align 4
  %saved_cur_sg.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.0.i, i32 0, i32 4
  %461 = ptrtoint ptr %saved_cur_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %saved_cur_sg.i.i, align 4
  %cur_sg.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %454, i32 0, i32 22, i32 3
  %463 = ptrtoint ptr %cur_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %463)
  store ptr %462, ptr %cur_sg.i.i, align 4
  %saved_tot_residue.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.0.i, i32 0, i32 5
  %464 = ptrtoint ptr %saved_tot_residue.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %saved_tot_residue.i.i, align 4
  %tot_residue.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %454, i32 0, i32 22, i32 4
  %466 = ptrtoint ptr %tot_residue.i.i to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %465, ptr %tot_residue.i.i, align 4
  br label %if.end127.thread602

if.end127.thread602:                              ; preds = %if.end.i208.i, %if.then.i207.i
  %467 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %flags, align 4
  %or79.i = or i32 %468, 16
  store i32 %or79.i, ptr %flags, align 4
  br label %cleanup

do_reset.i:                                       ; preds = %do.end158.i.i, %do.end144.i.i, %do.end103.i.i, %do.end62.i.i, %do.end50.i.i, %do.end19.i.i, %do.end.i186.i, %do.end69.i, %if.then39.i.do_reset.i_crit_edge, %lor.lhs.false.i.do_reset.i_crit_edge, %if.end17.i.do_reset.i_crit_edge, %if.else.i.do_reset.i_crit_edge
  %469 = load i32, ptr @esp_debug, align 4
  %and.i209.i = and i32 %469, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i209.i)
  %tobool.not.i210.i = icmp eq i32 %and.i209.i, 0
  br i1 %tobool.not.i210.i, label %do_reset.i.esp_schedule_reset.exit.i_crit_edge, label %do.end.i213.i

do_reset.i.esp_schedule_reset.exit.i_crit_edge:   ; preds = %do_reset.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_schedule_reset.exit.i

do.end.i213.i:                                    ; preds = %do_reset.i
  call void @__sanitizer_cov_trace_pc() #12
  %host.i211.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %470 = ptrtoint ptr %host.i211.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %host.i211.i, align 4
  %shost_gendev.i212.i = getelementptr inbounds %struct.Scsi_Host, ptr %471, i32 0, i32 49
  %472 = tail call ptr @llvm.returnaddress(i32 0) #10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i212.i, ptr noundef nonnull @.str.35, ptr noundef %472) #13
  br label %esp_schedule_reset.exit.i

esp_schedule_reset.exit.i:                        ; preds = %do.end.i213.i, %do_reset.i.esp_schedule_reset.exit.i_crit_edge
  %473 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %flags, align 4
  %or.i.i = or i32 %474, 2
  store i32 %or.i.i, ptr %flags, align 4
  %esp_event_cur.i.i215.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 25
  %475 = ptrtoint ptr %esp_event_cur.i.i215.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %esp_event_cur.i.i215.i, align 4
  %arrayidx.i.i216.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %476
  %477 = ptrtoint ptr %arrayidx.i.i216.i to i32
  call void @__asan_store1_noabort(i32 %477)
  store i8 1, ptr %arrayidx.i.i216.i, align 1
  %val1.i.i217.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %476, i32 1
  %478 = ptrtoint ptr %val1.i.i217.i to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 16, ptr %val1.i.i217.i, align 1
  %479 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i218.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %476, i32 2
  %481 = ptrtoint ptr %sreg1.i.i.i218.i to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 %480, ptr %sreg1.i.i.i218.i, align 1
  %482 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i220.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %476, i32 3
  %484 = ptrtoint ptr %seqreg2.i.i.i220.i to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 %483, ptr %seqreg2.i.i.i220.i, align 1
  %sreg2.i.i.i221.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 13
  %485 = ptrtoint ptr %sreg2.i.i.i221.i to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %sreg2.i.i.i221.i, align 2
  %sreg23.i.i.i222.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %476, i32 4
  %487 = ptrtoint ptr %sreg23.i.i.i222.i to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 %486, ptr %sreg23.i.i.i222.i, align 1
  %488 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i223.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %476, i32 5
  %490 = ptrtoint ptr %ireg4.i.i.i223.i to i32
  call void @__asan_store1_noabort(i32 %490)
  store i8 %489, ptr %ireg4.i.i.i223.i, align 1
  %select_state.i.i.i224.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 38
  %491 = ptrtoint ptr %select_state.i.i.i224.i to i32
  call void @__asan_load1_noabort(i32 %491)
  %492 = load i8, ptr %select_state.i.i.i224.i, align 4
  %select_state5.i.i.i225.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %476, i32 6
  %493 = ptrtoint ptr %select_state5.i.i.i225.i to i32
  call void @__asan_store1_noabort(i32 %493)
  store i8 %492, ptr %select_state5.i.i.i225.i, align 1
  %event.i.i.i226.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 39
  %494 = ptrtoint ptr %event.i.i.i226.i to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %event.i.i.i226.i, align 1
  %event6.i.i.i227.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %476, i32 7
  %496 = ptrtoint ptr %event6.i.i.i227.i to i32
  call void @__asan_store1_noabort(i32 %496)
  store i8 %495, ptr %event6.i.i.i227.i, align 1
  %add.i.i228.i = add i32 %476, 1
  %and.i.i229.i = and i32 %add.i.i228.i, 31
  store i32 %and.i.i229.i, ptr %esp_event_cur.i.i215.i, align 4
  store i8 16, ptr %event.i.i.i226.i, align 1
  br label %while.body.lr.ph

if.else118:                                       ; preds = %if.else107
  %select_state119 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 38
  %497 = ptrtoint ptr %select_state119 to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %select_state119, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %498)
  %cmp121.not = icmp eq i8 %498, 0
  br i1 %cmp121.not, label %if.else118.while.body.lr.ph_crit_edge, label %if.end127

if.else118.while.body.lr.ph_crit_edge:            ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

if.end127:                                        ; preds = %if.else118
  %call124 = tail call fastcc i32 @esp_finish_select(ptr noundef %esp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %phi.cmp = icmp eq i32 %call124, 0
  br i1 %phi.cmp, label %if.end127.while.body.lr.ph_crit_edge, label %if.end127.cleanup_crit_edge

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end127.while.body.lr.ph_crit_edge:             ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end127.while.body.lr.ph_crit_edge, %if.else118.while.body.lr.ph_crit_edge, %esp_schedule_reset.exit.i, %if.end106
  %host.i223 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %event.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 39
  %esp_event_cur.i1312.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 25
  %sreg2.i.i1319.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 13
  %select_state.i.i1323.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 38
  %msg_out_len365.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 27
  %active_cmd85.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 5
  %prev_cfg3.i.i225 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 18
  %config2.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 32
  %data_dma_len.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 10
  %send_cmd_residual.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 56
  %prev_soff.i.i226 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 16
  %command_block470.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 8
  %cmd_bytes_ptr.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 49
  %cmd_bytes_left.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 50
  %fifo.i279 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 23
  %msg_in_len.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 29
  %msg_in.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 28
  %msg_out.i132.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 26
  %prev_stp.i.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 17
  %arrayidx18.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 28, i32 1
  %arrayidx2.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 28, i32 2
  %arrayidx.i29.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 28, i32 3
  %arrayidx2.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 28, i32 4
  %max_period.i.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 46
  %min_period.i.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 47
  %ccycle.i.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 42
  %command_block_dma.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 9
  br label %again.i

again.i:                                          ; preds = %again.i.backedge, %while.body.lr.ph
  %499 = load i32, ptr @esp_debug, align 4
  %and.i227 = and i32 %499, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i227)
  %tobool.not.i228 = icmp eq i32 %and.i227, 0
  br i1 %tobool.not.i228, label %again.i.do.end5.i_crit_edge, label %do.end.i231

again.i.do.end5.i_crit_edge:                      ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5.i

do.end.i231:                                      ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #12
  %500 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i229 = getelementptr inbounds %struct.Scsi_Host, ptr %501, i32 0, i32 49
  %502 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %event.i, align 1
  %conv.i230 = zext i8 %503 to i32
  %504 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %504)
  %505 = load i8, ptr %sreg, align 4
  %506 = and i8 %505, 7
  %and3.i = zext i8 %506 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i229, ptr noundef nonnull @.str.91, i32 noundef %conv.i230, i32 noundef %and3.i) #13
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i231, %again.i.do.end5.i_crit_edge
  %507 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %event.i, align 1
  %509 = zext i8 %508 to i64
  call void @__sanitizer_cov_trace_switch(i64 %509, ptr @__sancov_gen_cov_switch_values.175)
  switch i8 %508, label %do.end487.i [
    i8 13, label %sw.bb.i232
    i8 3, label %do.end5.i.sw.bb25.i_crit_edge
    i8 4, label %sw.bb25.i.loopexit629
    i8 5, label %sw.bb83.i
    i8 11, label %sw.bb139.i
    i8 12, label %sw.bb182.i
    i8 9, label %sw.bb281.i
    i8 10, label %sw.bb359.i
    i8 6, label %sw.bb380.i
    i8 1, label %sw.bb469.i
    i8 2, label %sw.bb474.i
    i8 16, label %sw.bb483.i
  ]

do.end5.i.sw.bb25.i_crit_edge:                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb25.i

sw.bb.i232:                                       ; preds = %do.end5.i
  %510 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %sreg, align 4
  %512 = and i8 %511, 7
  %and10.i = zext i8 %512 to i32
  %513 = zext i32 %and10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %513, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %and10.i, label %do.end19.i [
    i32 0, label %sw.bb.i232.again.backedge.i_crit_edge
    i32 1, label %sw.bb12.i
    i32 3, label %sw.bb13.i
    i32 6, label %sw.bb14.i
    i32 7, label %sw.bb15.i
    i32 2, label %sw.bb16.i
  ]

sw.bb.i232.again.backedge.i_crit_edge:            ; preds = %sw.bb.i232
  call void @__sanitizer_cov_trace_pc() #12
  br label %again.backedge.i

sw.bb12.i:                                        ; preds = %sw.bb.i232
  call void @__sanitizer_cov_trace_pc() #12
  br label %again.backedge.i

sw.bb13.i:                                        ; preds = %sw.bb.i232
  call fastcc void @esp_flush_fifo(ptr noundef %esp) #10
  %514 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i528 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %515
  %516 = ptrtoint ptr %arrayidx.i528 to i32
  call void @__asan_store1_noabort(i32 %516)
  store i8 2, ptr %arrayidx.i528, align 1
  %val1.i529 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %515, i32 1
  %517 = ptrtoint ptr %val1.i529 to i32
  call void @__asan_store1_noabort(i32 %517)
  store i8 17, ptr %val1.i529, align 1
  %518 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %518)
  %519 = load i8, ptr %sreg, align 4
  %sreg1.i.i531 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %515, i32 2
  %520 = ptrtoint ptr %sreg1.i.i531 to i32
  call void @__asan_store1_noabort(i32 %520)
  store i8 %519, ptr %sreg1.i.i531, align 1
  %521 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i533 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %515, i32 3
  %523 = ptrtoint ptr %seqreg2.i.i533 to i32
  call void @__asan_store1_noabort(i32 %523)
  store i8 %522, ptr %seqreg2.i.i533, align 1
  %524 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i535 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %515, i32 4
  %526 = ptrtoint ptr %sreg23.i.i535 to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 %525, ptr %sreg23.i.i535, align 1
  %527 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %ireg, align 1
  %ireg4.i.i537 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %515, i32 5
  %529 = ptrtoint ptr %ireg4.i.i537 to i32
  call void @__asan_store1_noabort(i32 %529)
  store i8 %528, ptr %ireg4.i.i537, align 1
  %530 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i539 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %515, i32 6
  %532 = ptrtoint ptr %select_state5.i.i539 to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 %531, ptr %select_state5.i.i539, align 1
  %533 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %event.i, align 1
  %event6.i.i541 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %515, i32 7
  %535 = ptrtoint ptr %event6.i.i541 to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 %534, ptr %event6.i.i541, align 1
  %add.i542 = add i32 %515, 1
  %and.i543 = and i32 %add.i542, 31
  store i32 %and.i543, ptr %esp_event_cur.i1312.i, align 4
  %536 = load i32, ptr @esp_debug, align 4
  %and3.i544 = and i32 %536, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i544)
  %tobool.not.i545 = icmp eq i32 %and3.i544, 0
  br i1 %tobool.not.i545, label %sw.bb13.i.scsi_esp_cmd.exit550_crit_edge, label %do.end.i548

sw.bb13.i.scsi_esp_cmd.exit550_crit_edge:         ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit550

do.end.i548:                                      ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #12
  %537 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i547 = getelementptr inbounds %struct.Scsi_Host, ptr %538, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i547, ptr noundef nonnull @.str, i32 noundef 17) #13
  br label %scsi_esp_cmd.exit550

scsi_esp_cmd.exit550:                             ; preds = %do.end.i548, %sw.bb13.i.scsi_esp_cmd.exit550_crit_edge
  %539 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %ops, align 4
  %541 = ptrtoint ptr %540 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %540, align 4
  call void %542(ptr noundef %esp, i8 noundef zeroext 17, i32 noundef 3) #10
  %543 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i511 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %544
  %545 = ptrtoint ptr %arrayidx.i511 to i32
  call void @__asan_store1_noabort(i32 %545)
  store i8 1, ptr %arrayidx.i511, align 1
  %val1.i512 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %544, i32 1
  %546 = ptrtoint ptr %val1.i512 to i32
  call void @__asan_store1_noabort(i32 %546)
  store i8 11, ptr %val1.i512, align 1
  %547 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %547)
  %548 = load i8, ptr %sreg, align 4
  %sreg1.i.i514 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %544, i32 2
  %549 = ptrtoint ptr %sreg1.i.i514 to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 %548, ptr %sreg1.i.i514, align 1
  %550 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i516 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %544, i32 3
  %552 = ptrtoint ptr %seqreg2.i.i516 to i32
  call void @__asan_store1_noabort(i32 %552)
  store i8 %551, ptr %seqreg2.i.i516, align 1
  %553 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %553)
  %554 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i518 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %544, i32 4
  %555 = ptrtoint ptr %sreg23.i.i518 to i32
  call void @__asan_store1_noabort(i32 %555)
  store i8 %554, ptr %sreg23.i.i518, align 1
  %556 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %ireg, align 1
  %ireg4.i.i520 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %544, i32 5
  %558 = ptrtoint ptr %ireg4.i.i520 to i32
  call void @__asan_store1_noabort(i32 %558)
  store i8 %557, ptr %ireg4.i.i520, align 1
  %559 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i522 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %544, i32 6
  %561 = ptrtoint ptr %select_state5.i.i522 to i32
  call void @__asan_store1_noabort(i32 %561)
  store i8 %560, ptr %select_state5.i.i522, align 1
  %562 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %562)
  %563 = load i8, ptr %event.i, align 1
  %event6.i.i524 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %544, i32 7
  %564 = ptrtoint ptr %event6.i.i524 to i32
  call void @__asan_store1_noabort(i32 %564)
  store i8 %563, ptr %event6.i.i524, align 1
  %add.i525 = add i32 %544, 1
  %and.i526 = and i32 %add.i525, 31
  store i32 %and.i526, ptr %esp_event_cur.i1312.i, align 4
  store i8 11, ptr %event.i, align 1
  %565 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %flags, align 4
  %or.i = or i32 %566, 16
  store i32 %or.i, ptr %flags, align 4
  br label %cleanup

sw.bb14.i:                                        ; preds = %sw.bb.i232
  call void @__sanitizer_cov_trace_pc() #12
  br label %again.backedge.i

sw.bb15.i:                                        ; preds = %sw.bb.i232
  call void @__sanitizer_cov_trace_pc() #12
  br label %again.backedge.i

sw.bb16.i:                                        ; preds = %sw.bb.i232
  call void @__sanitizer_cov_trace_pc() #12
  br label %again.backedge.i

do.end19.i:                                       ; preds = %sw.bb.i232
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.le.i = zext i8 %511 to i32
  %567 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %host.i223, align 4
  %shost_gendev21.i = getelementptr inbounds %struct.Scsi_Host, ptr %568, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %shost_gendev21.i, ptr noundef nonnull @.str.94, i32 noundef %conv9.le.i) #13
  call fastcc void @esp_schedule_reset(ptr noundef %esp) #10
  br label %again.i.backedge

again.backedge.i:                                 ; preds = %sw.bb474.i.again.backedge.i_crit_edge, %if.end378.i, %if.then22.i.i, %if.end17.i.i.again.backedge.i_crit_edge, %land.lhs.true.thread.i.i, %if.then.i897.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb12.i, %sw.bb.i232.again.backedge.i_crit_edge
  %.sink1478.i = phi i8 [ 3, %sw.bb12.i ], [ 9, %sw.bb14.i ], [ 6, %sw.bb15.i ], [ 1, %sw.bb16.i ], [ 13, %if.end378.i ], [ 13, %if.then.i897.i ], [ 13, %land.lhs.true.thread.i.i ], [ 13, %if.end17.i.i.again.backedge.i_crit_edge ], [ 13, %if.then22.i.i ], [ 13, %sw.bb474.i.again.backedge.i_crit_edge ], [ 4, %sw.bb.i232.again.backedge.i_crit_edge ]
  %569 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i.i234 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %570
  %571 = ptrtoint ptr %arrayidx.i.i234 to i32
  call void @__asan_store1_noabort(i32 %571)
  store i8 1, ptr %arrayidx.i.i234, align 1
  %val1.i.i235 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %570, i32 1
  %572 = ptrtoint ptr %val1.i.i235 to i32
  call void @__asan_store1_noabort(i32 %572)
  store i8 %.sink1478.i, ptr %val1.i.i235, align 1
  %573 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %573)
  %574 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i236 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %570, i32 2
  %575 = ptrtoint ptr %sreg1.i.i.i236 to i32
  call void @__asan_store1_noabort(i32 %575)
  store i8 %574, ptr %sreg1.i.i.i236, align 1
  %576 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i237 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %570, i32 3
  %578 = ptrtoint ptr %seqreg2.i.i.i237 to i32
  call void @__asan_store1_noabort(i32 %578)
  store i8 %577, ptr %seqreg2.i.i.i237, align 1
  %579 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i.i238 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %570, i32 4
  %581 = ptrtoint ptr %sreg23.i.i.i238 to i32
  call void @__asan_store1_noabort(i32 %581)
  store i8 %580, ptr %sreg23.i.i.i238, align 1
  %582 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %582)
  %583 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i239 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %570, i32 5
  %584 = ptrtoint ptr %ireg4.i.i.i239 to i32
  call void @__asan_store1_noabort(i32 %584)
  store i8 %583, ptr %ireg4.i.i.i239, align 1
  %585 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %585)
  %586 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i.i240 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %570, i32 6
  %587 = ptrtoint ptr %select_state5.i.i.i240 to i32
  call void @__asan_store1_noabort(i32 %587)
  store i8 %586, ptr %select_state5.i.i.i240, align 1
  %588 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %588)
  %589 = load i8, ptr %event.i, align 1
  %event6.i.i.i241 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %570, i32 7
  %590 = ptrtoint ptr %event6.i.i.i241 to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 %589, ptr %event6.i.i.i241, align 1
  %add.i.i242 = add i32 %570, 1
  %and.i.i243 = and i32 %add.i.i242, 31
  store i32 %and.i.i243, ptr %esp_event_cur.i1312.i, align 4
  store i8 %.sink1478.i, ptr %event.i, align 1
  br label %again.i.backedge

again.i.backedge:                                 ; preds = %esp_schedule_reset.exit, %esp_schedule_reset.exit1353.i, %esp_schedule_reset.exit334, %scsi_esp_cmd.exit1294.i.again.i.backedge_crit_edge, %esp_schedule_reset.exit409, %esp_schedule_reset.exit434, %if.then157.i, %esp_schedule_reset.exit.i273, %esp_schedule_reset.exit459, %esp_schedule_reset.exit484, %esp_schedule_reset.exit509, %again.backedge.i, %do.end19.i
  br label %again.i

sw.bb25.i.loopexit629:                            ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb25.i

sw.bb25.i:                                        ; preds = %sw.bb25.i.loopexit629, %do.end5.i.sw.bb25.i_crit_edge
  %tobool31.not.i = phi i1 [ false, %sw.bb25.i.loopexit629 ], [ true, %do.end5.i.sw.bb25.i_crit_edge ]
  %write.0.i = phi i32 [ 0, %sw.bb25.i.loopexit629 ], [ 1, %do.end5.i.sw.bb25.i_crit_edge ]
  %591 = ptrtoint ptr %active_cmd85.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %active_cmd85.i, align 4
  %cmd26.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %592, i32 0, i32 1
  %593 = ptrtoint ptr %cmd26.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %cmd26.i, align 4
  %flags.i.i244 = getelementptr inbounds %struct.esp_cmd_entry, ptr %592, i32 0, i32 6
  %595 = ptrtoint ptr %flags.i.i244 to i32
  call void @__asan_load1_noabort(i32 %595)
  %596 = load i8, ptr %flags.i.i244, align 4
  %597 = and i8 %596, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %597)
  %tobool.not.i.i245 = icmp eq i8 %597, 0
  br i1 %tobool.not.i.i245, label %if.end.i803.i, label %if.then.i801.i

if.then.i801.i:                                   ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #12
  %sense_dma.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %592, i32 0, i32 13
  %598 = ptrtoint ptr %sense_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %sense_dma.i.i, align 4
  %sense_ptr.i.i246 = getelementptr inbounds %struct.esp_cmd_entry, ptr %592, i32 0, i32 11
  %600 = ptrtoint ptr %sense_ptr.i.i246 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %sense_ptr.i.i246, align 4
  %sense_buffer.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %594, i32 0, i32 21
  %602 = ptrtoint ptr %sense_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %sense_buffer.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %601 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %603 to i32
  %sub.ptr.sub.i.i = add i32 %599, %sub.ptr.lhs.cast.i.i
  %add.i793.i = sub i32 %sub.ptr.sub.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.sub.neg.i.i = sub i32 96, %sub.ptr.lhs.cast.i.i
  %sub.i800.i = add i32 %sub.ptr.sub.neg.i.i, %sub.ptr.rhs.cast.i.i
  br label %esp_cur_dma_len.exit.i

if.end.i803.i:                                    ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #12
  %cur_sg.i.i247 = getelementptr inbounds %struct.scsi_cmnd, ptr %594, i32 0, i32 22, i32 3
  %604 = ptrtoint ptr %cur_sg.i.i247 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %cur_sg.i.i247, align 4
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %605, i32 0, i32 3
  %606 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %dma_address.i.i, align 4
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %605, i32 0, i32 4
  %608 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %dma_length.i.i, align 4
  %cur_residue.i.i248 = getelementptr inbounds %struct.scsi_cmnd, ptr %594, i32 0, i32 22, i32 1
  %610 = ptrtoint ptr %cur_residue.i.i248 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %cur_residue.i.i248, align 4
  %sub.i.i = add i32 %609, %607
  %add2.i.i = sub i32 %sub.i.i, %611
  br label %esp_cur_dma_len.exit.i

esp_cur_dma_len.exit.i:                           ; preds = %if.end.i803.i, %if.then.i801.i
  %retval.0.i1379.i = phi i32 [ %add.i793.i, %if.then.i801.i ], [ %add2.i.i, %if.end.i803.i ]
  %retval.0.i804.i = phi i32 [ %sub.i800.i, %if.then.i801.i ], [ %611, %if.end.i803.i ]
  %612 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %613)
  %cmp.i249 = icmp eq i32 %613, 0
  br i1 %cmp.i249, label %if.then29.i, label %esp_cur_dma_len.exit.i.if.end30.i_crit_edge

esp_cur_dma_len.exit.i.if.end30.i_crit_edge:      ; preds = %esp_cur_dma_len.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then29.i:                                      ; preds = %esp_cur_dma_len.exit.i
  %614 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i806.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %615
  %616 = ptrtoint ptr %arrayidx.i806.i to i32
  call void @__asan_store1_noabort(i32 %616)
  store i8 2, ptr %arrayidx.i806.i, align 1
  %val1.i807.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %615, i32 1
  %617 = ptrtoint ptr %val1.i807.i to i32
  call void @__asan_store1_noabort(i32 %617)
  store i8 0, ptr %val1.i807.i, align 1
  %618 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %618)
  %619 = load i8, ptr %sreg, align 4
  %sreg1.i.i809.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %615, i32 2
  %620 = ptrtoint ptr %sreg1.i.i809.i to i32
  call void @__asan_store1_noabort(i32 %620)
  store i8 %619, ptr %sreg1.i.i809.i, align 1
  %621 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %621)
  %622 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i811.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %615, i32 3
  %623 = ptrtoint ptr %seqreg2.i.i811.i to i32
  call void @__asan_store1_noabort(i32 %623)
  store i8 %622, ptr %seqreg2.i.i811.i, align 1
  %624 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %624)
  %625 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i813.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %615, i32 4
  %626 = ptrtoint ptr %sreg23.i.i813.i to i32
  call void @__asan_store1_noabort(i32 %626)
  store i8 %625, ptr %sreg23.i.i813.i, align 1
  %627 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %627)
  %628 = load i8, ptr %ireg, align 1
  %ireg4.i.i815.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %615, i32 5
  %629 = ptrtoint ptr %ireg4.i.i815.i to i32
  call void @__asan_store1_noabort(i32 %629)
  store i8 %628, ptr %ireg4.i.i815.i, align 1
  %630 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %630)
  %631 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i817.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %615, i32 6
  %632 = ptrtoint ptr %select_state5.i.i817.i to i32
  call void @__asan_store1_noabort(i32 %632)
  store i8 %631, ptr %select_state5.i.i817.i, align 1
  %633 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %633)
  %634 = load i8, ptr %event.i, align 1
  %event6.i.i819.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %615, i32 7
  %635 = ptrtoint ptr %event6.i.i819.i to i32
  call void @__asan_store1_noabort(i32 %635)
  store i8 %634, ptr %event6.i.i819.i, align 1
  %add.i820.i = add i32 %615, 1
  %and.i821.i = and i32 %add.i820.i, 31
  store i32 %and.i821.i, ptr %esp_event_cur.i1312.i, align 4
  %636 = load i32, ptr @esp_debug, align 4
  %and3.i.i250 = and i32 %636, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i250)
  %tobool.not.i822.i = icmp eq i32 %and3.i.i250, 0
  br i1 %tobool.not.i822.i, label %if.then29.i.scsi_esp_cmd.exit.i253_crit_edge, label %do.end.i.i252

if.then29.i.scsi_esp_cmd.exit.i253_crit_edge:     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit.i253

do.end.i.i252:                                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  %637 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i.i251 = getelementptr inbounds %struct.Scsi_Host, ptr %638, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i.i251, ptr noundef nonnull @.str, i32 noundef 0) #13
  br label %scsi_esp_cmd.exit.i253

scsi_esp_cmd.exit.i253:                           ; preds = %do.end.i.i252, %if.then29.i.scsi_esp_cmd.exit.i253_crit_edge
  %639 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %ops, align 4
  %641 = ptrtoint ptr %640 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %640, align 4
  call void %642(ptr noundef %esp, i8 noundef zeroext 0, i32 noundef 3) #10
  br label %if.end30.i

if.end30.i:                                       ; preds = %scsi_esp_cmd.exit.i253, %esp_cur_dma_len.exit.i.if.end30.i_crit_edge
  %643 = ptrtoint ptr %flags.i.i244 to i32
  call void @__asan_load1_noabort(i32 %643)
  %644 = load i8, ptr %flags.i.i244, align 4
  %645 = and i8 %644, -2
  %masksel.i = zext i1 %tobool31.not.i to i8
  %storemerge.i = or i8 %645, %masksel.i
  store i8 %storemerge.i, ptr %flags.i.i244, align 4
  %646 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %ops, align 4
  %dma_length_limit.i = getelementptr inbounds %struct.esp_driver_ops, ptr %647, i32 0, i32 3
  %648 = ptrtoint ptr %dma_length_limit.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %dma_length_limit.i, align 4
  %tobool42.not.i = icmp eq ptr %649, null
  br i1 %tobool42.not.i, label %if.else47.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  %call46.i = call i32 %649(ptr noundef %esp, i32 noundef %retval.0.i1379.i, i32 noundef %retval.0.i804.i) #10
  br label %if.end49.i

if.else47.i:                                      ; preds = %if.end30.i
  %650 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %651)
  %cmp.i.i254 = icmp eq i32 %651, 8
  br i1 %cmp.i.i254, label %if.then.i823.i, label %if.else.i.i

if.then.i823.i:                                   ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #12
  %652 = call i32 @llvm.umin.i32(i32 %retval.0.i804.i, i32 16777216) #10
  br label %if.end49.i

if.else.i.i:                                      ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #12
  %653 = call i32 @llvm.umin.i32(i32 %retval.0.i804.i, i32 65536) #10
  %and.i824.i = and i32 %retval.0.i1379.i, 16777215
  %add.i825.i = add nuw nsw i32 %653, %and.i824.i
  %654 = call i32 @llvm.umin.i32(i32 %add.i825.i, i32 16777216) #10
  %sub.i826.i = sub nsw i32 %654, %and.i824.i
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else.i.i, %if.then.i823.i, %if.then43.i
  %dma_len.0.i = phi i32 [ %call46.i, %if.then43.i ], [ %652, %if.then.i823.i ], [ %sub.i826.i, %if.else.i.i ]
  %655 = ptrtoint ptr %data_dma_len.i.i to i32
  call void @__asan_store4_noabort(i32 %655)
  store i32 %dma_len.0.i, ptr %data_dma_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dma_len.0.i)
  %tobool50.not.i = icmp eq i32 %dma_len.0.i, 0
  br i1 %tobool50.not.i, label %do.end54.i, label %do.body66.i

do.end54.i:                                       ; preds = %if.end49.i
  %656 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %host.i223, align 4
  %shost_gendev56.i = getelementptr inbounds %struct.Scsi_Host, ptr %657, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev56.i, ptr noundef nonnull @.str.97) #13
  %658 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %host.i223, align 4
  %shost_gendev61.i = getelementptr inbounds %struct.Scsi_Host, ptr %659, i32 0, i32 49
  %660 = ptrtoint ptr %flags.i.i244 to i32
  call void @__asan_load1_noabort(i32 %660)
  %661 = load i8, ptr %flags.i.i244, align 4
  %662 = and i8 %661, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %662)
  %tobool.not.i828.i = icmp eq i8 %662, 0
  br i1 %tobool.not.i828.i, label %if.end.i856.i, label %if.then.i854.i

if.then.i854.i:                                   ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  %sense_dma.i829.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %592, i32 0, i32 13
  %663 = ptrtoint ptr %sense_dma.i829.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %sense_dma.i829.i, align 4
  %sense_ptr.i830.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %592, i32 0, i32 11
  %665 = ptrtoint ptr %sense_ptr.i830.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %sense_ptr.i830.i, align 4
  %sense_buffer.i831.i = getelementptr inbounds %struct.scsi_cmnd, ptr %594, i32 0, i32 21
  %667 = ptrtoint ptr %sense_buffer.i831.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %sense_buffer.i831.i, align 4
  %sub.ptr.lhs.cast.i832.i = ptrtoint ptr %666 to i32
  %sub.ptr.rhs.cast.i833.i = ptrtoint ptr %668 to i32
  %sub.ptr.sub.i834.i = add i32 %664, %sub.ptr.lhs.cast.i832.i
  %add.i835.i = sub i32 %sub.ptr.sub.i834.i, %sub.ptr.rhs.cast.i833.i
  %sub.ptr.sub.neg.i852.i = sub i32 96, %sub.ptr.lhs.cast.i832.i
  %sub.i853.i = add i32 %sub.ptr.sub.neg.i852.i, %sub.ptr.rhs.cast.i833.i
  br label %esp_cur_dma_len.exit858.i

if.end.i856.i:                                    ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  %cur_sg.i837.i = getelementptr inbounds %struct.scsi_cmnd, ptr %594, i32 0, i32 22, i32 3
  %669 = ptrtoint ptr %cur_sg.i837.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %cur_sg.i837.i, align 4
  %dma_address.i838.i = getelementptr inbounds %struct.scatterlist, ptr %670, i32 0, i32 3
  %671 = ptrtoint ptr %dma_address.i838.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load i32, ptr %dma_address.i838.i, align 4
  %dma_length.i839.i = getelementptr inbounds %struct.scatterlist, ptr %670, i32 0, i32 4
  %673 = ptrtoint ptr %dma_length.i839.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %dma_length.i839.i, align 4
  %cur_residue.i840.i = getelementptr inbounds %struct.scsi_cmnd, ptr %594, i32 0, i32 22, i32 1
  %675 = ptrtoint ptr %cur_residue.i840.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %cur_residue.i840.i, align 4
  %sub.i841.i = add i32 %674, %672
  %add2.i842.i = sub i32 %sub.i841.i, %676
  br label %esp_cur_dma_len.exit858.i

esp_cur_dma_len.exit858.i:                        ; preds = %if.end.i856.i, %if.then.i854.i
  %conv631383.in.i = phi i32 [ %add.i835.i, %if.then.i854.i ], [ %add2.i842.i, %if.end.i856.i ]
  %retval.0.i857.i = phi i32 [ %sub.i853.i, %if.then.i854.i ], [ %676, %if.end.i856.i ]
  %conv631383.i = zext i32 %conv631383.in.i to i64
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev61.i, ptr noundef nonnull @.str.100, i64 noundef %conv631383.i, i32 noundef %retval.0.i857.i) #13
  %677 = load i32, ptr @esp_debug, align 4
  %and.i485 = and i32 %677, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i485)
  %tobool.not.i486 = icmp eq i32 %and.i485, 0
  br i1 %tobool.not.i486, label %esp_cur_dma_len.exit858.i.esp_schedule_reset.exit509_crit_edge, label %do.end.i489

esp_cur_dma_len.exit858.i.esp_schedule_reset.exit509_crit_edge: ; preds = %esp_cur_dma_len.exit858.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_schedule_reset.exit509

do.end.i489:                                      ; preds = %esp_cur_dma_len.exit858.i
  call void @__sanitizer_cov_trace_pc() #12
  %678 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i488 = getelementptr inbounds %struct.Scsi_Host, ptr %679, i32 0, i32 49
  %680 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i488, ptr noundef nonnull @.str.35, ptr noundef %680) #13
  br label %esp_schedule_reset.exit509

esp_schedule_reset.exit509:                       ; preds = %do.end.i489, %esp_cur_dma_len.exit858.i.esp_schedule_reset.exit509_crit_edge
  %681 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %flags, align 4
  %or.i491 = or i32 %682, 2
  store i32 %or.i491, ptr %flags, align 4
  %683 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i.i493 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %684
  %685 = ptrtoint ptr %arrayidx.i.i493 to i32
  call void @__asan_store1_noabort(i32 %685)
  store i8 1, ptr %arrayidx.i.i493, align 1
  %val1.i.i494 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %684, i32 1
  %686 = ptrtoint ptr %val1.i.i494 to i32
  call void @__asan_store1_noabort(i32 %686)
  store i8 16, ptr %val1.i.i494, align 1
  %687 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %687)
  %688 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i496 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %684, i32 2
  %689 = ptrtoint ptr %sreg1.i.i.i496 to i32
  call void @__asan_store1_noabort(i32 %689)
  store i8 %688, ptr %sreg1.i.i.i496, align 1
  %690 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %690)
  %691 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i498 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %684, i32 3
  %692 = ptrtoint ptr %seqreg2.i.i.i498 to i32
  call void @__asan_store1_noabort(i32 %692)
  store i8 %691, ptr %seqreg2.i.i.i498, align 1
  %693 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %693)
  %694 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i.i500 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %684, i32 4
  %695 = ptrtoint ptr %sreg23.i.i.i500 to i32
  call void @__asan_store1_noabort(i32 %695)
  store i8 %694, ptr %sreg23.i.i.i500, align 1
  %696 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %696)
  %697 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i502 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %684, i32 5
  %698 = ptrtoint ptr %ireg4.i.i.i502 to i32
  call void @__asan_store1_noabort(i32 %698)
  store i8 %697, ptr %ireg4.i.i.i502, align 1
  %699 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %699)
  %700 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i.i504 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %684, i32 6
  %701 = ptrtoint ptr %select_state5.i.i.i504 to i32
  call void @__asan_store1_noabort(i32 %701)
  store i8 %700, ptr %select_state5.i.i.i504, align 1
  %702 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %702)
  %703 = load i8, ptr %event.i, align 1
  %event6.i.i.i506 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %684, i32 7
  %704 = ptrtoint ptr %event6.i.i.i506 to i32
  call void @__asan_store1_noabort(i32 %704)
  store i8 %703, ptr %event6.i.i.i506, align 1
  %add.i.i507 = add i32 %684, 1
  %and.i.i508 = and i32 %add.i.i507, 31
  store i32 %and.i.i508, ptr %esp_event_cur.i1312.i, align 4
  store i8 16, ptr %event.i, align 1
  br label %again.i.backedge

do.body66.i:                                      ; preds = %if.end49.i
  %705 = load i32, ptr @esp_debug, align 4
  %and67.i = and i32 %705, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %do.body66.i.do.end78.i_crit_edge, label %do.end72.i

do.body66.i.do.end78.i_crit_edge:                 ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end78.i

do.end72.i:                                       ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #12
  %706 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %host.i223, align 4
  %shost_gendev74.i = getelementptr inbounds %struct.Scsi_Host, ptr %707, i32 0, i32 49
  %conv75.i = zext i32 %retval.0.i1379.i to i64
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev74.i, ptr noundef nonnull @.str.103, i64 noundef %conv75.i, i32 noundef %dma_len.0.i, i32 noundef %write.0.i) #13
  br label %do.end78.i

do.end78.i:                                       ; preds = %do.end72.i, %do.body66.i.do.end78.i_crit_edge
  %708 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %ops, align 4
  %send_dma_cmd.i = getelementptr inbounds %struct.esp_driver_ops, ptr %709, i32 0, i32 7
  %710 = ptrtoint ptr %send_dma_cmd.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %send_dma_cmd.i, align 4
  call void %711(ptr noundef %esp, i32 noundef %retval.0.i1379.i, i32 noundef %dma_len.0.i, i32 noundef %dma_len.0.i, i32 noundef %write.0.i, i8 noundef zeroext -112) #10
  %712 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i860.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %713
  %714 = ptrtoint ptr %arrayidx.i860.i to i32
  call void @__asan_store1_noabort(i32 %714)
  store i8 1, ptr %arrayidx.i860.i, align 1
  %val1.i861.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %713, i32 1
  %715 = ptrtoint ptr %val1.i861.i to i32
  call void @__asan_store1_noabort(i32 %715)
  store i8 5, ptr %val1.i861.i, align 1
  %716 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %716)
  %717 = load i8, ptr %sreg, align 4
  %sreg1.i.i863.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %713, i32 2
  %718 = ptrtoint ptr %sreg1.i.i863.i to i32
  call void @__asan_store1_noabort(i32 %718)
  store i8 %717, ptr %sreg1.i.i863.i, align 1
  %719 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %719)
  %720 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i865.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %713, i32 3
  %721 = ptrtoint ptr %seqreg2.i.i865.i to i32
  call void @__asan_store1_noabort(i32 %721)
  store i8 %720, ptr %seqreg2.i.i865.i, align 1
  %722 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %722)
  %723 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i867.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %713, i32 4
  %724 = ptrtoint ptr %sreg23.i.i867.i to i32
  call void @__asan_store1_noabort(i32 %724)
  store i8 %723, ptr %sreg23.i.i867.i, align 1
  %725 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %725)
  %726 = load i8, ptr %ireg, align 1
  %ireg4.i.i869.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %713, i32 5
  %727 = ptrtoint ptr %ireg4.i.i869.i to i32
  call void @__asan_store1_noabort(i32 %727)
  store i8 %726, ptr %ireg4.i.i869.i, align 1
  %728 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %728)
  %729 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i871.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %713, i32 6
  %730 = ptrtoint ptr %select_state5.i.i871.i to i32
  call void @__asan_store1_noabort(i32 %730)
  store i8 %729, ptr %select_state5.i.i871.i, align 1
  %731 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %731)
  %732 = load i8, ptr %event.i, align 1
  %event6.i.i873.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %713, i32 7
  %733 = ptrtoint ptr %event6.i.i873.i to i32
  call void @__asan_store1_noabort(i32 %733)
  store i8 %732, ptr %event6.i.i873.i, align 1
  %add.i874.i = add i32 %713, 1
  %and.i875.i = and i32 %add.i874.i, 31
  store i32 %and.i875.i, ptr %esp_event_cur.i1312.i, align 4
  store i8 5, ptr %event.i, align 1
  br label %cleanup

sw.bb83.i:                                        ; preds = %do.end5.i
  %734 = ptrtoint ptr %active_cmd85.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %active_cmd85.i, align 4
  %cmd87.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %735, i32 0, i32 1
  %736 = ptrtoint ptr %cmd87.i to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %cmd87.i, align 4
  %738 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %ops, align 4
  %dma_error.i255 = getelementptr inbounds %struct.esp_driver_ops, ptr %739, i32 0, i32 8
  %740 = ptrtoint ptr %dma_error.i255 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %dma_error.i255, align 4
  %call89.i = call i32 %741(ptr noundef %esp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %if.end97.i, label %do.end94.i

do.end94.i:                                       ; preds = %sw.bb83.i
  %742 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %host.i223, align 4
  %shost_gendev96.i = getelementptr inbounds %struct.Scsi_Host, ptr %743, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %shost_gendev96.i, ptr noundef nonnull @.str.106) #13
  %744 = load i32, ptr @esp_debug, align 4
  %and.i460 = and i32 %744, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i460)
  %tobool.not.i461 = icmp eq i32 %and.i460, 0
  br i1 %tobool.not.i461, label %do.end94.i.esp_schedule_reset.exit484_crit_edge, label %do.end.i464

do.end94.i.esp_schedule_reset.exit484_crit_edge:  ; preds = %do.end94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_schedule_reset.exit484

do.end.i464:                                      ; preds = %do.end94.i
  call void @__sanitizer_cov_trace_pc() #12
  %745 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i463 = getelementptr inbounds %struct.Scsi_Host, ptr %746, i32 0, i32 49
  %747 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i463, ptr noundef nonnull @.str.35, ptr noundef %747) #13
  br label %esp_schedule_reset.exit484

esp_schedule_reset.exit484:                       ; preds = %do.end.i464, %do.end94.i.esp_schedule_reset.exit484_crit_edge
  %748 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load i32, ptr %flags, align 4
  %or.i466 = or i32 %749, 2
  store i32 %or.i466, ptr %flags, align 4
  %750 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i.i468 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %751
  %752 = ptrtoint ptr %arrayidx.i.i468 to i32
  call void @__asan_store1_noabort(i32 %752)
  store i8 1, ptr %arrayidx.i.i468, align 1
  %val1.i.i469 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %751, i32 1
  %753 = ptrtoint ptr %val1.i.i469 to i32
  call void @__asan_store1_noabort(i32 %753)
  store i8 16, ptr %val1.i.i469, align 1
  %754 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %754)
  %755 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i471 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %751, i32 2
  %756 = ptrtoint ptr %sreg1.i.i.i471 to i32
  call void @__asan_store1_noabort(i32 %756)
  store i8 %755, ptr %sreg1.i.i.i471, align 1
  %757 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %757)
  %758 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i473 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %751, i32 3
  %759 = ptrtoint ptr %seqreg2.i.i.i473 to i32
  call void @__asan_store1_noabort(i32 %759)
  store i8 %758, ptr %seqreg2.i.i.i473, align 1
  %760 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %760)
  %761 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i.i475 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %751, i32 4
  %762 = ptrtoint ptr %sreg23.i.i.i475 to i32
  call void @__asan_store1_noabort(i32 %762)
  store i8 %761, ptr %sreg23.i.i.i475, align 1
  %763 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %763)
  %764 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i477 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %751, i32 5
  %765 = ptrtoint ptr %ireg4.i.i.i477 to i32
  call void @__asan_store1_noabort(i32 %765)
  store i8 %764, ptr %ireg4.i.i.i477, align 1
  %766 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %766)
  %767 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i.i479 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %751, i32 6
  %768 = ptrtoint ptr %select_state5.i.i.i479 to i32
  call void @__asan_store1_noabort(i32 %768)
  store i8 %767, ptr %select_state5.i.i.i479, align 1
  %769 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %769)
  %770 = load i8, ptr %event.i, align 1
  %event6.i.i.i481 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %751, i32 7
  %771 = ptrtoint ptr %event6.i.i.i481 to i32
  call void @__asan_store1_noabort(i32 %771)
  store i8 %770, ptr %event6.i.i.i481, align 1
  %add.i.i482 = add i32 %751, 1
  %and.i.i483 = and i32 %add.i.i482, 31
  store i32 %and.i.i483, ptr %esp_event_cur.i1312.i, align 4
  store i8 16, ptr %event.i, align 1
  br label %again.i.backedge

if.end97.i:                                       ; preds = %sw.bb83.i
  %flags98.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %735, i32 0, i32 6
  %772 = ptrtoint ptr %flags98.i to i32
  call void @__asan_load1_noabort(i32 %772)
  %773 = load i8, ptr %flags98.i, align 4
  %774 = and i8 %773, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %774)
  %tobool101.not.i = icmp eq i8 %774, 0
  br i1 %tobool101.not.i, label %if.end97.i.if.end104.i_crit_edge, label %if.then102.i

if.end97.i.if.end104.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104.i

if.then102.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  %775 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %ops, align 4
  %dma_drain.i = getelementptr inbounds %struct.esp_driver_ops, ptr %776, i32 0, i32 5
  %777 = ptrtoint ptr %dma_drain.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %dma_drain.i, align 4
  call void %778(ptr noundef %esp) #10
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then102.i, %if.end97.i.if.end104.i_crit_edge
  %779 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %ops, align 4
  %dma_invalidate.i = getelementptr inbounds %struct.esp_driver_ops, ptr %780, i32 0, i32 6
  %781 = ptrtoint ptr %dma_invalidate.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %dma_invalidate.i, align 4
  call void %782(ptr noundef %esp) #10
  %783 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %783)
  %784 = load i8, ptr %ireg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %784)
  %cmp107.not.i = icmp eq i8 %784, 16
  br i1 %cmp107.not.i, label %if.end115.i, label %do.end112.i

do.end112.i:                                      ; preds = %if.end104.i
  %785 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %host.i223, align 4
  %shost_gendev114.i = getelementptr inbounds %struct.Scsi_Host, ptr %786, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %shost_gendev114.i, ptr noundef nonnull @.str.109) #13
  %787 = load i32, ptr @esp_debug, align 4
  %and.i435 = and i32 %787, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i435)
  %tobool.not.i436 = icmp eq i32 %and.i435, 0
  br i1 %tobool.not.i436, label %do.end112.i.esp_schedule_reset.exit459_crit_edge, label %do.end.i439

do.end112.i.esp_schedule_reset.exit459_crit_edge: ; preds = %do.end112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_schedule_reset.exit459

do.end.i439:                                      ; preds = %do.end112.i
  call void @__sanitizer_cov_trace_pc() #12
  %788 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i438 = getelementptr inbounds %struct.Scsi_Host, ptr %789, i32 0, i32 49
  %790 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i438, ptr noundef nonnull @.str.35, ptr noundef %790) #13
  br label %esp_schedule_reset.exit459

esp_schedule_reset.exit459:                       ; preds = %do.end.i439, %do.end112.i.esp_schedule_reset.exit459_crit_edge
  %791 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load i32, ptr %flags, align 4
  %or.i441 = or i32 %792, 2
  store i32 %or.i441, ptr %flags, align 4
  %793 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i.i443 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %794
  %795 = ptrtoint ptr %arrayidx.i.i443 to i32
  call void @__asan_store1_noabort(i32 %795)
  store i8 1, ptr %arrayidx.i.i443, align 1
  %val1.i.i444 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %794, i32 1
  %796 = ptrtoint ptr %val1.i.i444 to i32
  call void @__asan_store1_noabort(i32 %796)
  store i8 16, ptr %val1.i.i444, align 1
  %797 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %797)
  %798 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i446 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %794, i32 2
  %799 = ptrtoint ptr %sreg1.i.i.i446 to i32
  call void @__asan_store1_noabort(i32 %799)
  store i8 %798, ptr %sreg1.i.i.i446, align 1
  %800 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %800)
  %801 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i448 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %794, i32 3
  %802 = ptrtoint ptr %seqreg2.i.i.i448 to i32
  call void @__asan_store1_noabort(i32 %802)
  store i8 %801, ptr %seqreg2.i.i.i448, align 1
  %803 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %803)
  %804 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i.i450 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %794, i32 4
  %805 = ptrtoint ptr %sreg23.i.i.i450 to i32
  call void @__asan_store1_noabort(i32 %805)
  store i8 %804, ptr %sreg23.i.i.i450, align 1
  %806 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %806)
  %807 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i452 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %794, i32 5
  %808 = ptrtoint ptr %ireg4.i.i.i452 to i32
  call void @__asan_store1_noabort(i32 %808)
  store i8 %807, ptr %ireg4.i.i.i452, align 1
  %809 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %809)
  %810 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i.i454 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %794, i32 6
  %811 = ptrtoint ptr %select_state5.i.i.i454 to i32
  call void @__asan_store1_noabort(i32 %811)
  store i8 %810, ptr %select_state5.i.i.i454, align 1
  %812 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %812)
  %813 = load i8, ptr %event.i, align 1
  %event6.i.i.i456 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %794, i32 7
  %814 = ptrtoint ptr %event6.i.i.i456 to i32
  call void @__asan_store1_noabort(i32 %814)
  store i8 %813, ptr %event6.i.i.i456, align 1
  %add.i.i457 = add i32 %794, 1
  %and.i.i458 = and i32 %add.i.i457, 31
  store i32 %and.i.i458, ptr %esp_event_cur.i1312.i, align 4
  store i8 16, ptr %event.i, align 1
  br label %again.i.backedge

if.end115.i:                                      ; preds = %if.end104.i
  %815 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %ops, align 4
  %esp_read8.i.i256 = getelementptr inbounds %struct.esp_driver_ops, ptr %816, i32 0, i32 1
  %817 = ptrtoint ptr %esp_read8.i.i256 to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %esp_read8.i.i256, align 4
  %call.i.i257 = call zeroext i8 %818(ptr noundef %esp, i32 noundef 7) #10
  %819 = and i8 %call.i.i257, 31
  %and.i877.i = zext i8 %819 to i32
  %820 = ptrtoint ptr %prev_cfg3.i.i225 to i32
  call void @__asan_load1_noabort(i32 %820)
  %821 = load i8, ptr %prev_cfg3.i.i225, align 2
  %822 = lshr i8 %821, 6
  %.lobit.i.i = and i8 %822, 1
  %823 = zext i8 %.lobit.i.i to i32
  %spec.select.i.i = shl nuw nsw i32 %and.i877.i, %823
  %824 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %824)
  %825 = load i8, ptr %sreg, align 4
  %826 = and i8 %825, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %826)
  %tobool5.not.i.i = icmp eq i8 %826, 0
  br i1 %tobool5.not.i.i, label %if.then6.i.i, label %if.end115.i.if.end39.i.i_crit_edge

if.end115.i.if.end39.i.i_crit_edge:               ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i.i

if.then6.i.i:                                     ; preds = %if.end115.i
  %827 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load ptr, ptr %ops, align 4
  %esp_read88.i.i = getelementptr inbounds %struct.esp_driver_ops, ptr %828, i32 0, i32 1
  %829 = ptrtoint ptr %esp_read88.i.i to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load ptr, ptr %esp_read88.i.i, align 4
  %call9.i.i = call zeroext i8 %830(ptr noundef %esp, i32 noundef 0) #10
  %conv10.i.i = zext i8 %call9.i.i to i32
  %831 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load ptr, ptr %ops, align 4
  %esp_read812.i.i = getelementptr inbounds %struct.esp_driver_ops, ptr %832, i32 0, i32 1
  %833 = ptrtoint ptr %esp_read812.i.i to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %esp_read812.i.i, align 4
  %call13.i.i = call zeroext i8 %834(ptr noundef %esp, i32 noundef 1) #10
  %conv14.i.i = zext i8 %call13.i.i to i32
  %shl15.i.i = shl nuw nsw i32 %conv14.i.i, 8
  %or.i.i258 = or i32 %shl15.i.i, %conv10.i.i
  %835 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %836)
  %cmp.i879.i = icmp eq i32 %836, 8
  br i1 %cmp.i879.i, label %if.then17.i.i, label %if.then6.i.i.if.end24.i.i_crit_edge

if.then6.i.i.if.end24.i.i_crit_edge:              ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i.i

if.then17.i.i:                                    ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %837 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load ptr, ptr %ops, align 4
  %esp_read819.i.i = getelementptr inbounds %struct.esp_driver_ops, ptr %838, i32 0, i32 1
  %839 = ptrtoint ptr %esp_read819.i.i to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %esp_read819.i.i, align 4
  %call20.i.i = call zeroext i8 %840(ptr noundef %esp, i32 noundef 14) #10
  %conv21.i.i = zext i8 %call20.i.i to i32
  %shl22.i.i = shl nuw nsw i32 %conv21.i.i, 16
  %or23.i.i = or i32 %shl22.i.i, %or.i.i258
  %841 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %841)
  %.pr.i.i = load i32, ptr %rev, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then17.i.i, %if.then6.i.i.if.end24.i.i_crit_edge
  %842 = phi i32 [ %.pr.i.i, %if.then17.i.i ], [ %836, %if.then6.i.i.if.end24.i.i_crit_edge ]
  %ecount.0.i.i = phi i32 [ %or23.i.i, %if.then17.i.i ], [ %or.i.i258, %if.then6.i.i.if.end24.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %842)
  %cmp26.i.i = icmp eq i32 %842, 4
  br i1 %cmp26.i.i, label %land.lhs.true.i.i, label %if.end24.i.i.if.end39.i.i_crit_edge

if.end24.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i.i

land.lhs.true.i.i:                                ; preds = %if.end24.i.i
  %843 = ptrtoint ptr %config2.i.i to i32
  call void @__asan_load1_noabort(i32 %843)
  %844 = load i8, ptr %config2.i.i, align 2
  %845 = and i8 %844, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %845)
  %tobool30.not.i.i259 = icmp eq i8 %845, 0
  br i1 %tobool30.not.i.i259, label %land.lhs.true.i.i.if.end39.i.i_crit_edge, label %if.then31.i.i

land.lhs.true.i.i.if.end39.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i.i

if.then31.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %846 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %ops, align 4
  %esp_read833.i.i = getelementptr inbounds %struct.esp_driver_ops, ptr %847, i32 0, i32 1
  %848 = ptrtoint ptr %esp_read833.i.i to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %esp_read833.i.i, align 4
  %call34.i.i = call zeroext i8 %849(ptr noundef %esp, i32 noundef 14) #10
  %conv35.i.i = zext i8 %call34.i.i to i32
  %shl36.i.i = shl nuw nsw i32 %conv35.i.i, 16
  %or37.i.i = or i32 %shl36.i.i, %ecount.0.i.i
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then31.i.i, %land.lhs.true.i.i.if.end39.i.i_crit_edge, %if.end24.i.i.if.end39.i.i_crit_edge, %if.end115.i.if.end39.i.i_crit_edge
  %ecount.1.i.i = phi i32 [ 0, %if.end115.i.if.end39.i.i_crit_edge ], [ %or37.i.i, %if.then31.i.i ], [ %ecount.0.i.i, %land.lhs.true.i.i.if.end39.i.i_crit_edge ], [ %ecount.0.i.i, %if.end24.i.i.if.end39.i.i_crit_edge ]
  %850 = ptrtoint ptr %data_dma_len.i.i to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load i32, ptr %data_dma_len.i.i, align 4
  %852 = ptrtoint ptr %send_cmd_residual.i.i to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load i32, ptr %send_cmd_residual.i.i, align 4
  %854 = add i32 %ecount.1.i.i, %853
  %sub40.i.i = sub i32 %851, %854
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i.i)
  %cmp41.i.i = icmp eq i32 %spec.select.i.i, 1
  br i1 %cmp41.i.i, label %land.lhs.true43.i.i, label %if.end39.i.i.if.end67.i.i261_crit_edge

if.end39.i.i.if.end67.i.i261_crit_edge:           ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i.i261

land.lhs.true43.i.i:                              ; preds = %if.end39.i.i
  %855 = ptrtoint ptr %flags98.i to i32
  call void @__asan_load1_noabort(i32 %855)
  %856 = load i8, ptr %flags98.i, align 4
  %857 = and i8 %856, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %857)
  %tobool46.not.i.i260 = icmp eq i8 %857, 0
  br i1 %tobool46.not.i.i260, label %land.lhs.true43.i.i.if.end67.i.i261_crit_edge, label %if.then47.i.i

land.lhs.true43.i.i.if.end67.i.i261_crit_edge:    ; preds = %land.lhs.true43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i.i261

if.then47.i.i:                                    ; preds = %land.lhs.true43.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i.i) #10
  %858 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %858)
  store i32 1, ptr %count.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i.i) #10
  %859 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %859)
  store i32 %sub40.i.i, ptr %offset.i.i, align 4
  %860 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %ops, align 4
  %esp_read849.i.i = getelementptr inbounds %struct.esp_driver_ops, ptr %861, i32 0, i32 1
  %862 = ptrtoint ptr %esp_read849.i.i to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %esp_read849.i.i, align 4
  %call50.i.i = call zeroext i8 %863(ptr noundef %esp, i32 noundef 2) #10
  %864 = ptrtoint ptr %flags98.i to i32
  call void @__asan_load1_noabort(i32 %864)
  %865 = load i8, ptr %flags98.i, align 4
  %866 = and i8 %865, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %866)
  %tobool54.not.i.i = icmp eq i8 %866, 0
  br i1 %tobool54.not.i.i, label %if.else.i884.i, label %if.then55.i.i

if.then55.i.i:                                    ; preds = %if.then47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sense_ptr.i881.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %735, i32 0, i32 11
  %867 = ptrtoint ptr %sense_ptr.i881.i to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load ptr, ptr %sense_ptr.i881.i, align 4
  %arrayidx.i882.i = getelementptr i8, ptr %868, i32 %sub40.i.i
  %869 = ptrtoint ptr %arrayidx.i882.i to i32
  call void @__asan_store1_noabort(i32 %869)
  store i8 %call50.i.i, ptr %arrayidx.i882.i, align 1
  br label %if.end62.i.i

if.else.i884.i:                                   ; preds = %if.then47.i.i
  %SCp.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %737, i32 0, i32 22
  %cur_sg.i883.i = getelementptr inbounds %struct.scsi_cmnd, ptr %737, i32 0, i32 22, i32 3
  %870 = ptrtoint ptr %cur_sg.i883.i to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load ptr, ptr %cur_sg.i883.i, align 4
  %872 = ptrtoint ptr %SCp.i.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load i32, ptr %SCp.i.i, align 4
  %call56.i.i = call ptr @scsi_kmap_atomic_sg(ptr noundef %871, i32 noundef %873, ptr noundef nonnull %offset.i.i, ptr noundef nonnull %count.i.i) #10
  %tobool57.not.i.i = icmp eq ptr %call56.i.i, null
  br i1 %tobool57.not.i.i, label %if.else.i884.i.if.end62.i.i_crit_edge, label %if.then60.i.i, !prof !348

if.else.i884.i.if.end62.i.i_crit_edge:            ; preds = %if.else.i884.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i.i

if.then60.i.i:                                    ; preds = %if.else.i884.i
  call void @__sanitizer_cov_trace_pc() #12
  %874 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call56.i.i, i32 %875
  %876 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %876)
  store i8 %call50.i.i, ptr %add.ptr.i.i, align 1
  call void @scsi_kunmap_atomic_sg(ptr noundef nonnull %call56.i.i) #10
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %if.then60.i.i, %if.else.i884.i.if.end62.i.i_crit_edge, %if.then55.i.i
  %add.i885.i = add i32 %sub40.i.i, 1
  %877 = ptrtoint ptr %flags98.i to i32
  call void @__asan_load1_noabort(i32 %877)
  %878 = load i8, ptr %flags98.i, align 4
  %879 = and i8 %878, -9
  store i8 %879, ptr %flags98.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i.i) #10
  br label %if.end67.i.i261

if.end67.i.i261:                                  ; preds = %if.end62.i.i, %land.lhs.true43.i.i.if.end67.i.i261_crit_edge, %if.end39.i.i.if.end67.i.i261_crit_edge
  %bytes_sent.0.i.i = phi i32 [ %add.i885.i, %if.end62.i.i ], [ %sub40.i.i, %land.lhs.true43.i.i.if.end67.i.i261_crit_edge ], [ %sub40.i.i, %if.end39.i.i.if.end67.i.i261_crit_edge ]
  %880 = ptrtoint ptr %flags98.i to i32
  call void @__asan_load1_noabort(i32 %880)
  %881 = load i8, ptr %flags98.i, align 4
  %882 = and i8 %881, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %882)
  %tobool71.not.i.i = icmp eq i8 %882, 0
  %sub73.i.i = select i1 %tobool71.not.i.i, i32 %spec.select.i.i, i32 0
  %spec.select170.i.i = sub i32 %bytes_sent.0.i.i, %sub73.i.i
  %883 = ptrtoint ptr %prev_soff.i.i226 to i32
  call void @__asan_load1_noabort(i32 %883)
  %884 = load i8, ptr %prev_soff.i.i226, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %884)
  %tobool75.not.i.i = icmp eq i8 %884, 0
  br i1 %tobool75.not.i.i, label %if.end67.i.i261.if.then115.i.i_crit_edge, label %if.else77.i.i

if.end67.i.i261.if.then115.i.i_crit_edge:         ; preds = %if.end67.i.i261
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then115.i.i

if.else77.i.i:                                    ; preds = %if.end67.i.i261
  %885 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %886)
  %cmp79.i.i = icmp eq i32 %886, 0
  br i1 %cmp79.i.i, label %if.then81.i.i, label %if.else77.i.i.if.end106.i.i262_crit_edge

if.else77.i.i.if.end106.i.i262_crit_edge:         ; preds = %if.else77.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106.i.i262

if.then81.i.i:                                    ; preds = %if.else77.i.i
  %887 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %ops, align 4
  %esp_read883.i.i = getelementptr inbounds %struct.esp_driver_ops, ptr %888, i32 0, i32 1
  %889 = ptrtoint ptr %esp_read883.i.i to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load ptr, ptr %esp_read883.i.i, align 4
  %call84.i.i = call zeroext i8 %890(ptr noundef %esp, i32 noundef 4) #10
  %891 = ptrtoint ptr %sreg to i32
  call void @__asan_store1_noabort(i32 %891)
  store i8 %call84.i.i, ptr %sreg, align 4
  %892 = and i8 %call84.i.i, 7
  %893 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load ptr, ptr %ops, align 4
  %esp_read890.i.i = getelementptr inbounds %struct.esp_driver_ops, ptr %894, i32 0, i32 1
  %895 = ptrtoint ptr %esp_read890.i.i to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load ptr, ptr %esp_read890.i.i, align 4
  %call91.i.i = call zeroext i8 %896(ptr noundef %esp, i32 noundef 7) #10
  %conv92.i.i = zext i8 %call91.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %892)
  %cmp93.i.i = icmp ne i8 %892, 0
  %and96.i.i = and i32 %conv92.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i.i)
  %tobool97.not.i.i = icmp eq i32 %and96.i.i, 0
  %or.cond.i.i = select i1 %cmp93.i.i, i1 true, i1 %tobool97.not.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false.i.i, label %if.then81.i.i.esp_data_bytes_sent.exit.i_crit_edge

if.then81.i.i.esp_data_bytes_sent.exit.i_crit_edge: ; preds = %if.then81.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_data_bytes_sent.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then81.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %892)
  %cmp98.i.i = icmp ne i8 %892, 1
  %and101.i.i = and i32 %conv92.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i.i)
  %tobool102.not.i.i = icmp eq i32 %and101.i.i, 0
  %or.cond171.i.i = select i1 %cmp98.i.i, i1 true, i1 %tobool102.not.i.i
  br i1 %or.cond171.i.i, label %lor.lhs.false.i.i.if.end106.i.i262_crit_edge, label %lor.lhs.false.i.i.esp_data_bytes_sent.exit.i_crit_edge

lor.lhs.false.i.i.esp_data_bytes_sent.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_data_bytes_sent.exit.i

lor.lhs.false.i.i.if.end106.i.i262_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106.i.i262

if.end106.i.i262:                                 ; preds = %lor.lhs.false.i.i.if.end106.i.i262_crit_edge, %if.else77.i.i.if.end106.i.i262_crit_edge
  %897 = ptrtoint ptr %flags98.i to i32
  call void @__asan_load1_noabort(i32 %897)
  %898 = load i8, ptr %flags98.i, align 4
  %899 = and i8 %898, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %899)
  %tobool110.not.not.i.i = icmp eq i8 %899, 0
  br i1 %tobool110.not.not.i.i, label %if.end106.i.i262.if.then115.i.i_crit_edge, label %if.end106.i.i262.esp_data_bytes_sent.exit.i_crit_edge

if.end106.i.i262.esp_data_bytes_sent.exit.i_crit_edge: ; preds = %if.end106.i.i262
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_data_bytes_sent.exit.i

if.end106.i.i262.if.then115.i.i_crit_edge:        ; preds = %if.end106.i.i262
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then115.i.i

if.then115.i.i:                                   ; preds = %if.end106.i.i262.if.then115.i.i_crit_edge, %if.end67.i.i261.if.then115.i.i_crit_edge
  call fastcc void @esp_flush_fifo(ptr noundef %esp) #10
  br label %esp_data_bytes_sent.exit.i

esp_data_bytes_sent.exit.i:                       ; preds = %if.then115.i.i, %if.end106.i.i262.esp_data_bytes_sent.exit.i_crit_edge, %lor.lhs.false.i.i.esp_data_bytes_sent.exit.i_crit_edge, %if.then81.i.i.esp_data_bytes_sent.exit.i_crit_edge
  %retval.1.i.i = phi i32 [ -1, %if.then81.i.i.esp_data_bytes_sent.exit.i_crit_edge ], [ -1, %lor.lhs.false.i.i.esp_data_bytes_sent.exit.i_crit_edge ], [ %spec.select170.i.i, %if.then115.i.i ], [ %spec.select170.i.i, %if.end106.i.i262.esp_data_bytes_sent.exit.i_crit_edge ]
  %900 = load i32, ptr @esp_debug, align 4
  %and118.i = and i32 %900, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.i)
  %tobool119.not.i = icmp eq i32 %and118.i, 0
  br i1 %tobool119.not.i, label %esp_data_bytes_sent.exit.i.do.end130.i_crit_edge, label %do.end123.i

esp_data_bytes_sent.exit.i.do.end130.i_crit_edge: ; preds = %esp_data_bytes_sent.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end130.i

do.end123.i:                                      ; preds = %esp_data_bytes_sent.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %901 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load ptr, ptr %host.i223, align 4
  %shost_gendev125.i = getelementptr inbounds %struct.Scsi_Host, ptr %902, i32 0, i32 49
  %903 = ptrtoint ptr %flags98.i to i32
  call void @__asan_load1_noabort(i32 %903)
  %904 = load i8, ptr %flags98.i, align 4
  %conv127.i = zext i8 %904 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev125.i, ptr noundef nonnull @.str.112, i32 noundef %conv127.i, i32 noundef %retval.1.i.i) #13
  br label %do.end130.i

do.end130.i:                                      ; preds = %do.end123.i, %esp_data_bytes_sent.exit.i.do.end130.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i.i)
  %cmp131.i = icmp slt i32 %retval.1.i.i, 0
  br i1 %cmp131.i, label %if.then133.i, label %if.end134.i

if.then133.i:                                     ; preds = %do.end130.i
  %905 = load i32, ptr @esp_debug, align 4
  %and.i886.i = and i32 %905, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i886.i)
  %tobool.not.i887.i = icmp eq i32 %and.i886.i, 0
  br i1 %tobool.not.i887.i, label %if.then133.i.esp_schedule_reset.exit.i273_crit_edge, label %do.end.i890.i

if.then133.i.esp_schedule_reset.exit.i273_crit_edge: ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_schedule_reset.exit.i273

do.end.i890.i:                                    ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #12
  %906 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i889.i = getelementptr inbounds %struct.Scsi_Host, ptr %907, i32 0, i32 49
  %908 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i889.i, ptr noundef nonnull @.str.35, ptr noundef %908) #13
  br label %esp_schedule_reset.exit.i273

esp_schedule_reset.exit.i273:                     ; preds = %do.end.i890.i, %if.then133.i.esp_schedule_reset.exit.i273_crit_edge
  %909 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load i32, ptr %flags, align 4
  %or.i892.i = or i32 %910, 2
  store i32 %or.i892.i, ptr %flags, align 4
  %911 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i.i.i263 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %912
  %913 = ptrtoint ptr %arrayidx.i.i.i263 to i32
  call void @__asan_store1_noabort(i32 %913)
  store i8 1, ptr %arrayidx.i.i.i263, align 1
  %val1.i.i.i264 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %912, i32 1
  %914 = ptrtoint ptr %val1.i.i.i264 to i32
  call void @__asan_store1_noabort(i32 %914)
  store i8 16, ptr %val1.i.i.i264, align 1
  %915 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %915)
  %916 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i.i265 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %912, i32 2
  %917 = ptrtoint ptr %sreg1.i.i.i.i265 to i32
  call void @__asan_store1_noabort(i32 %917)
  store i8 %916, ptr %sreg1.i.i.i.i265, align 1
  %918 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %918)
  %919 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i.i266 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %912, i32 3
  %920 = ptrtoint ptr %seqreg2.i.i.i.i266 to i32
  call void @__asan_store1_noabort(i32 %920)
  store i8 %919, ptr %seqreg2.i.i.i.i266, align 1
  %921 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %921)
  %922 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i.i.i267 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %912, i32 4
  %923 = ptrtoint ptr %sreg23.i.i.i.i267 to i32
  call void @__asan_store1_noabort(i32 %923)
  store i8 %922, ptr %sreg23.i.i.i.i267, align 1
  %924 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %924)
  %925 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i.i268 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %912, i32 5
  %926 = ptrtoint ptr %ireg4.i.i.i.i268 to i32
  call void @__asan_store1_noabort(i32 %926)
  store i8 %925, ptr %ireg4.i.i.i.i268, align 1
  %927 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %927)
  %928 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i.i.i269 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %912, i32 6
  %929 = ptrtoint ptr %select_state5.i.i.i.i269 to i32
  call void @__asan_store1_noabort(i32 %929)
  store i8 %928, ptr %select_state5.i.i.i.i269, align 1
  %930 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %930)
  %931 = load i8, ptr %event.i, align 1
  %event6.i.i.i.i270 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %912, i32 7
  %932 = ptrtoint ptr %event6.i.i.i.i270 to i32
  call void @__asan_store1_noabort(i32 %932)
  store i8 %931, ptr %event6.i.i.i.i270, align 1
  %add.i.i.i271 = add i32 %912, 1
  %and.i.i.i272 = and i32 %add.i.i.i271, 31
  store i32 %and.i.i.i272, ptr %esp_event_cur.i1312.i, align 4
  store i8 16, ptr %event.i, align 1
  br label %again.i.backedge

if.end134.i:                                      ; preds = %do.end130.i
  %933 = ptrtoint ptr %flags98.i to i32
  call void @__asan_load1_noabort(i32 %933)
  %934 = load i8, ptr %flags98.i, align 4
  %935 = and i8 %934, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %935)
  %tobool.not.i894.i = icmp eq i8 %935, 0
  br i1 %tobool.not.i894.i, label %if.end.i902.i, label %if.then.i897.i

if.then.i897.i:                                   ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #12
  %sense_ptr.i895.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %735, i32 0, i32 11
  %936 = ptrtoint ptr %sense_ptr.i895.i to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load ptr, ptr %sense_ptr.i895.i, align 4
  %add.ptr.i896.i = getelementptr i8, ptr %937, i32 %retval.1.i.i
  store ptr %add.ptr.i896.i, ptr %sense_ptr.i895.i, align 4
  br label %again.backedge.i

if.end.i902.i:                                    ; preds = %if.end134.i
  %cur_residue.i898.i = getelementptr inbounds %struct.scsi_cmnd, ptr %737, i32 0, i32 22, i32 1
  %938 = ptrtoint ptr %cur_residue.i898.i to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load i32, ptr %cur_residue.i898.i, align 4
  %sub.i899.i = sub i32 %939, %retval.1.i.i
  store i32 %sub.i899.i, ptr %cur_residue.i898.i, align 4
  %tot_residue.i.i274 = getelementptr inbounds %struct.scsi_cmnd, ptr %737, i32 0, i32 22, i32 4
  %940 = ptrtoint ptr %tot_residue.i.i274 to i32
  call void @__asan_load4_noabort(i32 %940)
  %941 = load i32, ptr %tot_residue.i.i274, align 4
  %sub1.i.i = sub i32 %941, %retval.1.i.i
  store i32 %sub1.i.i, ptr %tot_residue.i.i274, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i899.i)
  %cmp.i900.i = icmp slt i32 %sub.i899.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i.i)
  %cmp5.i.i = icmp slt i32 %sub1.i.i, 0
  %or.cond.i901.i = select i1 %cmp.i900.i, i1 true, i1 %cmp5.i.i
  br i1 %or.cond.i901.i, label %land.lhs.true.thread.i.i, label %if.end17.i.i

land.lhs.true.thread.i.i:                         ; preds = %if.end.i902.i
  call void @__sanitizer_cov_trace_pc() #12
  %942 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %942)
  %943 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i904.i = getelementptr inbounds %struct.Scsi_Host, ptr %943, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev.i904.i, ptr noundef nonnull @.str.142) #13
  %944 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %944)
  %945 = load ptr, ptr %host.i223, align 4
  %shost_gendev12.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %945, i32 0, i32 49
  %946 = ptrtoint ptr %cur_residue.i898.i to i32
  call void @__asan_load4_noabort(i32 %946)
  %947 = load i32, ptr %cur_residue.i898.i, align 4
  %948 = ptrtoint ptr %tot_residue.i.i274 to i32
  call void @__asan_load4_noabort(i32 %948)
  %949 = load i32, ptr %tot_residue.i.i274, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev12.i.i, ptr noundef nonnull @.str.145, i32 noundef %947, i32 noundef %949, i32 noundef %retval.1.i.i) #13
  %950 = ptrtoint ptr %cur_residue.i898.i to i32
  call void @__asan_store4_noabort(i32 %950)
  store i32 0, ptr %cur_residue.i898.i, align 4
  %951 = ptrtoint ptr %tot_residue.i.i274 to i32
  call void @__asan_store4_noabort(i32 %951)
  store i32 0, ptr %tot_residue.i.i274, align 4
  br label %again.backedge.i

if.end17.i.i:                                     ; preds = %if.end.i902.i
  call void @__sanitizer_cov_trace_cmp4(i32 %939, i32 %retval.1.i.i)
  %tobool19.not.i.i = icmp ne i32 %939, %retval.1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %941, i32 %retval.1.i.i)
  %tobool21.not.i.i = icmp eq i32 %941, %retval.1.i.i
  %or.cond.i = select i1 %tobool19.not.i.i, i1 true, i1 %tobool21.not.i.i
  br i1 %or.cond.i, label %if.end17.i.i.again.backedge.i_crit_edge, label %if.then22.i.i

if.end17.i.i.again.backedge.i_crit_edge:          ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %again.backedge.i

if.then22.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cur_sg.i907.i = getelementptr inbounds %struct.scsi_cmnd, ptr %737, i32 0, i32 22, i32 3
  %952 = ptrtoint ptr %cur_sg.i907.i to i32
  call void @__asan_load4_noabort(i32 %952)
  %953 = load ptr, ptr %cur_sg.i907.i, align 4
  %prv_sg.i.i275 = getelementptr inbounds %struct.scsi_cmnd, ptr %737, i32 0, i32 22, i32 2
  %954 = ptrtoint ptr %prv_sg.i.i275 to i32
  call void @__asan_store4_noabort(i32 %954)
  store ptr %953, ptr %prv_sg.i.i275, align 4
  %call.i908.i = call ptr @sg_next(ptr noundef %953) #10
  %955 = ptrtoint ptr %cur_sg.i907.i to i32
  call void @__asan_store4_noabort(i32 %955)
  store ptr %call.i908.i, ptr %cur_sg.i907.i, align 4
  %dma_length.i909.i = getelementptr inbounds %struct.scatterlist, ptr %call.i908.i, i32 0, i32 4
  %956 = ptrtoint ptr %dma_length.i909.i to i32
  call void @__asan_load4_noabort(i32 %956)
  %957 = load i32, ptr %dma_length.i909.i, align 4
  %958 = ptrtoint ptr %cur_residue.i898.i to i32
  call void @__asan_store4_noabort(i32 %958)
  store i32 %957, ptr %cur_residue.i898.i, align 4
  br label %again.backedge.i

sw.bb139.i:                                       ; preds = %do.end5.i
  %959 = ptrtoint ptr %active_cmd85.i to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %active_cmd85.i, align 4
  %961 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %961)
  %962 = load i8, ptr %ireg, align 1
  %963 = and i8 %962, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %963)
  %tobool145.not.i = icmp eq i8 %963, 0
  br i1 %tobool145.not.i, label %if.else152.i, label %if.then146.i

if.then146.i:                                     ; preds = %sw.bb139.i
  %964 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load ptr, ptr %ops, align 4
  %esp_read8.i276 = getelementptr inbounds %struct.esp_driver_ops, ptr %965, i32 0, i32 1
  %966 = ptrtoint ptr %esp_read8.i276 to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load ptr, ptr %esp_read8.i276, align 4
  %call148.i = call zeroext i8 %967(ptr noundef %esp, i32 noundef 2) #10
  %status.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %960, i32 0, i32 9
  %968 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %968)
  store i8 %call148.i, ptr %status.i, align 1
  %969 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load ptr, ptr %ops, align 4
  %esp_read8150.i = getelementptr inbounds %struct.esp_driver_ops, ptr %970, i32 0, i32 1
  %971 = ptrtoint ptr %esp_read8150.i to i32
  call void @__asan_load4_noabort(i32 %971)
  %972 = load ptr, ptr %esp_read8150.i, align 4
  %call151.i = call zeroext i8 %972(ptr noundef %esp, i32 noundef 2) #10
  %message.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %960, i32 0, i32 10
  %973 = ptrtoint ptr %message.i to i32
  call void @__asan_store1_noabort(i32 %973)
  store i8 %call151.i, ptr %message.i, align 2
  %974 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i928.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %975
  %976 = ptrtoint ptr %arrayidx.i928.i to i32
  call void @__asan_store1_noabort(i32 %976)
  store i8 2, ptr %arrayidx.i928.i, align 1
  %val1.i929.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %975, i32 1
  %977 = ptrtoint ptr %val1.i929.i to i32
  call void @__asan_store1_noabort(i32 %977)
  store i8 18, ptr %val1.i929.i, align 1
  %978 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %978)
  %979 = load i8, ptr %sreg, align 4
  %sreg1.i.i931.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %975, i32 2
  %980 = ptrtoint ptr %sreg1.i.i931.i to i32
  call void @__asan_store1_noabort(i32 %980)
  store i8 %979, ptr %sreg1.i.i931.i, align 1
  %981 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %981)
  %982 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i933.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %975, i32 3
  %983 = ptrtoint ptr %seqreg2.i.i933.i to i32
  call void @__asan_store1_noabort(i32 %983)
  store i8 %982, ptr %seqreg2.i.i933.i, align 1
  %984 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %984)
  %985 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i935.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %975, i32 4
  %986 = ptrtoint ptr %sreg23.i.i935.i to i32
  call void @__asan_store1_noabort(i32 %986)
  store i8 %985, ptr %sreg23.i.i935.i, align 1
  %987 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %987)
  %988 = load i8, ptr %ireg, align 1
  %ireg4.i.i937.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %975, i32 5
  %989 = ptrtoint ptr %ireg4.i.i937.i to i32
  call void @__asan_store1_noabort(i32 %989)
  store i8 %988, ptr %ireg4.i.i937.i, align 1
  %990 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %990)
  %991 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i939.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %975, i32 6
  %992 = ptrtoint ptr %select_state5.i.i939.i to i32
  call void @__asan_store1_noabort(i32 %992)
  store i8 %991, ptr %select_state5.i.i939.i, align 1
  %993 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %993)
  %994 = load i8, ptr %event.i, align 1
  %event6.i.i941.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %975, i32 7
  %995 = ptrtoint ptr %event6.i.i941.i to i32
  call void @__asan_store1_noabort(i32 %995)
  store i8 %994, ptr %event6.i.i941.i, align 1
  %add.i942.i = add i32 %975, 1
  %and.i943.i = and i32 %add.i942.i, 31
  store i32 %and.i943.i, ptr %esp_event_cur.i1312.i, align 4
  %996 = load i32, ptr @esp_debug, align 4
  %and3.i944.i = and i32 %996, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i944.i)
  %tobool.not.i945.i = icmp eq i32 %and3.i944.i, 0
  br i1 %tobool.not.i945.i, label %if.then146.i.scsi_esp_cmd.exit950.i_crit_edge, label %do.end.i948.i

if.then146.i.scsi_esp_cmd.exit950.i_crit_edge:    ; preds = %if.then146.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit950.i

do.end.i948.i:                                    ; preds = %if.then146.i
  call void @__sanitizer_cov_trace_pc() #12
  %997 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i947.i = getelementptr inbounds %struct.Scsi_Host, ptr %998, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i947.i, ptr noundef nonnull @.str, i32 noundef 18) #13
  br label %scsi_esp_cmd.exit950.i

scsi_esp_cmd.exit950.i:                           ; preds = %do.end.i948.i, %if.then146.i.scsi_esp_cmd.exit950.i_crit_edge
  %999 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %999)
  %1000 = load ptr, ptr %ops, align 4
  %1001 = ptrtoint ptr %1000 to i32
  call void @__asan_load4_noabort(i32 %1001)
  %1002 = load ptr, ptr %1000, align 4
  call void %1002(ptr noundef %esp, i8 noundef zeroext 18, i32 noundef 3) #10
  br label %if.end164.i

if.else152.i:                                     ; preds = %sw.bb139.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %962)
  %cmp155.i = icmp eq i8 %962, 16
  br i1 %cmp155.i, label %if.then157.i, label %if.else152.i.if.end164.i_crit_edge

if.else152.i.if.end164.i_crit_edge:               ; preds = %if.else152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164.i

if.then157.i:                                     ; preds = %if.else152.i
  call void @__sanitizer_cov_trace_pc() #12
  %1003 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load ptr, ptr %ops, align 4
  %esp_read8159.i = getelementptr inbounds %struct.esp_driver_ops, ptr %1004, i32 0, i32 1
  %1005 = ptrtoint ptr %esp_read8159.i to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load ptr, ptr %esp_read8159.i, align 4
  %call160.i = call zeroext i8 %1006(ptr noundef %esp, i32 noundef 2) #10
  %status161.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %960, i32 0, i32 9
  %1007 = ptrtoint ptr %status161.i to i32
  call void @__asan_store1_noabort(i32 %1007)
  store i8 %call160.i, ptr %status161.i, align 1
  %message162.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %960, i32 0, i32 10
  %1008 = ptrtoint ptr %message162.i to i32
  call void @__asan_store1_noabort(i32 %1008)
  store i8 -1, ptr %message162.i, align 2
  %1009 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1009)
  %1010 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i952.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1010
  %1011 = ptrtoint ptr %arrayidx.i952.i to i32
  call void @__asan_store1_noabort(i32 %1011)
  store i8 1, ptr %arrayidx.i952.i, align 1
  %val1.i953.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1010, i32 1
  %1012 = ptrtoint ptr %val1.i953.i to i32
  call void @__asan_store1_noabort(i32 %1012)
  store i8 6, ptr %val1.i953.i, align 1
  %1013 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1013)
  %1014 = load i8, ptr %sreg, align 4
  %sreg1.i.i955.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1010, i32 2
  %1015 = ptrtoint ptr %sreg1.i.i955.i to i32
  call void @__asan_store1_noabort(i32 %1015)
  store i8 %1014, ptr %sreg1.i.i955.i, align 1
  %1016 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1016)
  %1017 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i957.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1010, i32 3
  %1018 = ptrtoint ptr %seqreg2.i.i957.i to i32
  call void @__asan_store1_noabort(i32 %1018)
  store i8 %1017, ptr %seqreg2.i.i957.i, align 1
  %1019 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1019)
  %1020 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i959.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1010, i32 4
  %1021 = ptrtoint ptr %sreg23.i.i959.i to i32
  call void @__asan_store1_noabort(i32 %1021)
  store i8 %1020, ptr %sreg23.i.i959.i, align 1
  %1022 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1022)
  %1023 = load i8, ptr %ireg, align 1
  %ireg4.i.i961.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1010, i32 5
  %1024 = ptrtoint ptr %ireg4.i.i961.i to i32
  call void @__asan_store1_noabort(i32 %1024)
  store i8 %1023, ptr %ireg4.i.i961.i, align 1
  %1025 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1025)
  %1026 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i963.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1010, i32 6
  %1027 = ptrtoint ptr %select_state5.i.i963.i to i32
  call void @__asan_store1_noabort(i32 %1027)
  store i8 %1026, ptr %select_state5.i.i963.i, align 1
  %1028 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1028)
  %1029 = load i8, ptr %event.i, align 1
  %event6.i.i965.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1010, i32 7
  %1030 = ptrtoint ptr %event6.i.i965.i to i32
  call void @__asan_store1_noabort(i32 %1030)
  store i8 %1029, ptr %event6.i.i965.i, align 1
  %add.i966.i = add i32 %1010, 1
  %and.i967.i = and i32 %add.i966.i, 31
  store i32 %and.i967.i, ptr %esp_event_cur.i1312.i, align 4
  store i8 6, ptr %event.i, align 1
  br label %again.i.backedge

if.end164.i:                                      ; preds = %if.else152.i.if.end164.i_crit_edge, %scsi_esp_cmd.exit950.i
  %message165.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %960, i32 0, i32 10
  %1031 = ptrtoint ptr %message165.i to i32
  call void @__asan_load1_noabort(i32 %1031)
  %1032 = load i8, ptr %message165.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1032)
  %cmp167.not.i = icmp eq i8 %1032, 0
  br i1 %cmp167.not.i, label %if.end177.i, label %do.end172.i

do.end172.i:                                      ; preds = %if.end164.i
  %conv166.i = zext i8 %1032 to i32
  %1033 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1033)
  %1034 = load ptr, ptr %host.i223, align 4
  %shost_gendev174.i = getelementptr inbounds %struct.Scsi_Host, ptr %1034, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %shost_gendev174.i, ptr noundef nonnull @.str.115, i32 noundef %conv166.i) #13
  %1035 = load i32, ptr @esp_debug, align 4
  %and.i410 = and i32 %1035, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i410)
  %tobool.not.i411 = icmp eq i32 %and.i410, 0
  br i1 %tobool.not.i411, label %do.end172.i.esp_schedule_reset.exit434_crit_edge, label %do.end.i414

do.end172.i.esp_schedule_reset.exit434_crit_edge: ; preds = %do.end172.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_schedule_reset.exit434

do.end.i414:                                      ; preds = %do.end172.i
  call void @__sanitizer_cov_trace_pc() #12
  %1036 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1036)
  %1037 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i413 = getelementptr inbounds %struct.Scsi_Host, ptr %1037, i32 0, i32 49
  %1038 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i413, ptr noundef nonnull @.str.35, ptr noundef %1038) #13
  br label %esp_schedule_reset.exit434

esp_schedule_reset.exit434:                       ; preds = %do.end.i414, %do.end172.i.esp_schedule_reset.exit434_crit_edge
  %1039 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load i32, ptr %flags, align 4
  %or.i416 = or i32 %1040, 2
  store i32 %or.i416, ptr %flags, align 4
  %1041 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1041)
  %1042 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i.i418 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1042
  %1043 = ptrtoint ptr %arrayidx.i.i418 to i32
  call void @__asan_store1_noabort(i32 %1043)
  store i8 1, ptr %arrayidx.i.i418, align 1
  %val1.i.i419 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1042, i32 1
  %1044 = ptrtoint ptr %val1.i.i419 to i32
  call void @__asan_store1_noabort(i32 %1044)
  store i8 16, ptr %val1.i.i419, align 1
  %1045 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1045)
  %1046 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i421 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1042, i32 2
  %1047 = ptrtoint ptr %sreg1.i.i.i421 to i32
  call void @__asan_store1_noabort(i32 %1047)
  store i8 %1046, ptr %sreg1.i.i.i421, align 1
  %1048 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1048)
  %1049 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i423 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1042, i32 3
  %1050 = ptrtoint ptr %seqreg2.i.i.i423 to i32
  call void @__asan_store1_noabort(i32 %1050)
  store i8 %1049, ptr %seqreg2.i.i.i423, align 1
  %1051 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1051)
  %1052 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i.i425 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1042, i32 4
  %1053 = ptrtoint ptr %sreg23.i.i.i425 to i32
  call void @__asan_store1_noabort(i32 %1053)
  store i8 %1052, ptr %sreg23.i.i.i425, align 1
  %1054 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1054)
  %1055 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i427 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1042, i32 5
  %1056 = ptrtoint ptr %ireg4.i.i.i427 to i32
  call void @__asan_store1_noabort(i32 %1056)
  store i8 %1055, ptr %ireg4.i.i.i427, align 1
  %1057 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1057)
  %1058 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i.i429 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1042, i32 6
  %1059 = ptrtoint ptr %select_state5.i.i.i429 to i32
  call void @__asan_store1_noabort(i32 %1059)
  store i8 %1058, ptr %select_state5.i.i.i429, align 1
  %1060 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1060)
  %1061 = load i8, ptr %event.i, align 1
  %event6.i.i.i431 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1042, i32 7
  %1062 = ptrtoint ptr %event6.i.i.i431 to i32
  call void @__asan_store1_noabort(i32 %1062)
  store i8 %1061, ptr %event6.i.i.i431, align 1
  %add.i.i432 = add i32 %1042, 1
  %and.i.i433 = and i32 %add.i.i432, 31
  store i32 %and.i.i433, ptr %esp_event_cur.i1312.i, align 4
  store i8 16, ptr %event.i, align 1
  br label %again.i.backedge

if.end177.i:                                      ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #12
  %1063 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1063)
  %1064 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i969.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1064
  %1065 = ptrtoint ptr %arrayidx.i969.i to i32
  call void @__asan_store1_noabort(i32 %1065)
  store i8 1, ptr %arrayidx.i969.i, align 1
  %val1.i970.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1064, i32 1
  %1066 = ptrtoint ptr %val1.i970.i to i32
  call void @__asan_store1_noabort(i32 %1066)
  store i8 12, ptr %val1.i970.i, align 1
  %1067 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1067)
  %1068 = load i8, ptr %sreg, align 4
  %sreg1.i.i972.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1064, i32 2
  %1069 = ptrtoint ptr %sreg1.i.i972.i to i32
  call void @__asan_store1_noabort(i32 %1069)
  store i8 %1068, ptr %sreg1.i.i972.i, align 1
  %1070 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1070)
  %1071 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i974.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1064, i32 3
  %1072 = ptrtoint ptr %seqreg2.i.i974.i to i32
  call void @__asan_store1_noabort(i32 %1072)
  store i8 %1071, ptr %seqreg2.i.i974.i, align 1
  %1073 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1073)
  %1074 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i976.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1064, i32 4
  %1075 = ptrtoint ptr %sreg23.i.i976.i to i32
  call void @__asan_store1_noabort(i32 %1075)
  store i8 %1074, ptr %sreg23.i.i976.i, align 1
  %1076 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1076)
  %1077 = load i8, ptr %ireg, align 1
  %ireg4.i.i978.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1064, i32 5
  %1078 = ptrtoint ptr %ireg4.i.i978.i to i32
  call void @__asan_store1_noabort(i32 %1078)
  store i8 %1077, ptr %ireg4.i.i978.i, align 1
  %1079 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1079)
  %1080 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i980.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1064, i32 6
  %1081 = ptrtoint ptr %select_state5.i.i980.i to i32
  call void @__asan_store1_noabort(i32 %1081)
  store i8 %1080, ptr %select_state5.i.i980.i, align 1
  %1082 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1082)
  %1083 = load i8, ptr %event.i, align 1
  %event6.i.i982.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1064, i32 7
  %1084 = ptrtoint ptr %event6.i.i982.i to i32
  call void @__asan_store1_noabort(i32 %1084)
  store i8 %1083, ptr %event6.i.i982.i, align 1
  %add.i983.i = add i32 %1064, 1
  %and.i984.i = and i32 %add.i983.i, 31
  store i32 %and.i984.i, ptr %esp_event_cur.i1312.i, align 4
  store i8 12, ptr %event.i, align 1
  %1085 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1085)
  %1086 = load i32, ptr %flags, align 4
  %or179.i = or i32 %1086, 16
  store i32 %or179.i, ptr %flags, align 4
  br label %cleanup

sw.bb182.i:                                       ; preds = %do.end5.i
  %1087 = ptrtoint ptr %active_cmd85.i to i32
  call void @__asan_load4_noabort(i32 %1087)
  %1088 = load ptr, ptr %active_cmd85.i, align 4
  %cmd186.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1088, i32 0, i32 1
  %1089 = ptrtoint ptr %cmd186.i to i32
  call void @__asan_load4_noabort(i32 %1089)
  %1090 = load ptr, ptr %cmd186.i, align 4
  %message187.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1088, i32 0, i32 10
  %1091 = ptrtoint ptr %message187.i to i32
  call void @__asan_load1_noabort(i32 %1091)
  %1092 = load i8, ptr %message187.i, align 2
  %1093 = zext i8 %1092 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1093, ptr @__sancov_gen_cov_switch_values.177)
  switch i8 %1092, label %sw.bb182.i.if.end196.i_crit_edge [
    i8 0, label %sw.bb182.i.if.then195.i_crit_edge
    i8 4, label %sw.bb182.i.if.then195.i_crit_edge663
  ]

sw.bb182.i.if.then195.i_crit_edge663:             ; preds = %sw.bb182.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then195.i

sw.bb182.i.if.then195.i_crit_edge:                ; preds = %sw.bb182.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then195.i

sw.bb182.i.if.end196.i_crit_edge:                 ; preds = %sw.bb182.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end196.i

if.then195.i:                                     ; preds = %sw.bb182.i.if.then195.i_crit_edge, %sw.bb182.i.if.then195.i_crit_edge663
  %1094 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1094)
  %1095 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i986.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1095
  %1096 = ptrtoint ptr %arrayidx.i986.i to i32
  call void @__asan_store1_noabort(i32 %1096)
  store i8 2, ptr %arrayidx.i986.i, align 1
  %val1.i987.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1095, i32 1
  %1097 = ptrtoint ptr %val1.i987.i to i32
  call void @__asan_store1_noabort(i32 %1097)
  store i8 68, ptr %val1.i987.i, align 1
  %1098 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1098)
  %1099 = load i8, ptr %sreg, align 4
  %sreg1.i.i989.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1095, i32 2
  %1100 = ptrtoint ptr %sreg1.i.i989.i to i32
  call void @__asan_store1_noabort(i32 %1100)
  store i8 %1099, ptr %sreg1.i.i989.i, align 1
  %1101 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1101)
  %1102 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i991.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1095, i32 3
  %1103 = ptrtoint ptr %seqreg2.i.i991.i to i32
  call void @__asan_store1_noabort(i32 %1103)
  store i8 %1102, ptr %seqreg2.i.i991.i, align 1
  %1104 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1104)
  %1105 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i993.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1095, i32 4
  %1106 = ptrtoint ptr %sreg23.i.i993.i to i32
  call void @__asan_store1_noabort(i32 %1106)
  store i8 %1105, ptr %sreg23.i.i993.i, align 1
  %1107 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1107)
  %1108 = load i8, ptr %ireg, align 1
  %ireg4.i.i995.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1095, i32 5
  %1109 = ptrtoint ptr %ireg4.i.i995.i to i32
  call void @__asan_store1_noabort(i32 %1109)
  store i8 %1108, ptr %ireg4.i.i995.i, align 1
  %1110 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1110)
  %1111 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i997.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1095, i32 6
  %1112 = ptrtoint ptr %select_state5.i.i997.i to i32
  call void @__asan_store1_noabort(i32 %1112)
  store i8 %1111, ptr %select_state5.i.i997.i, align 1
  %1113 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1113)
  %1114 = load i8, ptr %event.i, align 1
  %event6.i.i999.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1095, i32 7
  %1115 = ptrtoint ptr %event6.i.i999.i to i32
  call void @__asan_store1_noabort(i32 %1115)
  store i8 %1114, ptr %event6.i.i999.i, align 1
  %add.i1000.i = add i32 %1095, 1
  %and.i1001.i = and i32 %add.i1000.i, 31
  store i32 %and.i1001.i, ptr %esp_event_cur.i1312.i, align 4
  %1116 = load i32, ptr @esp_debug, align 4
  %and3.i1002.i = and i32 %1116, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i1002.i)
  %tobool.not.i1003.i = icmp eq i32 %and3.i1002.i, 0
  br i1 %tobool.not.i1003.i, label %if.then195.i.scsi_esp_cmd.exit1008.i_crit_edge, label %do.end.i1006.i

if.then195.i.scsi_esp_cmd.exit1008.i_crit_edge:   ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit1008.i

do.end.i1006.i:                                   ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #12
  %1117 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1117)
  %1118 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i1005.i = getelementptr inbounds %struct.Scsi_Host, ptr %1118, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i1005.i, ptr noundef nonnull @.str, i32 noundef 68) #13
  br label %scsi_esp_cmd.exit1008.i

scsi_esp_cmd.exit1008.i:                          ; preds = %do.end.i1006.i, %if.then195.i.scsi_esp_cmd.exit1008.i_crit_edge
  %1119 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1119)
  %1120 = load ptr, ptr %ops, align 4
  %1121 = ptrtoint ptr %1120 to i32
  call void @__asan_load4_noabort(i32 %1121)
  %1122 = load ptr, ptr %1120, align 4
  call void %1122(ptr noundef %esp, i8 noundef zeroext 68, i32 noundef 3) #10
  %1123 = ptrtoint ptr %message187.i to i32
  call void @__asan_load1_noabort(i32 %1123)
  %.pr.i = load i8, ptr %message187.i, align 2
  br label %if.end196.i

if.end196.i:                                      ; preds = %scsi_esp_cmd.exit1008.i, %sw.bb182.i.if.end196.i_crit_edge
  %1124 = phi i8 [ %1092, %sw.bb182.i.if.end196.i_crit_edge ], [ %.pr.i, %scsi_esp_cmd.exit1008.i ]
  %1125 = zext i8 %1124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1125, ptr @__sancov_gen_cov_switch_values.178)
  switch i8 %1124, label %do.end265.i [
    i8 0, label %do.body202.i
    i8 4, label %do.body245.i
  ]

do.body202.i:                                     ; preds = %if.end196.i
  %cmd186.i.le = getelementptr inbounds %struct.esp_cmd_entry, ptr %1088, i32 0, i32 1
  %1126 = load i32, ptr @esp_debug, align 4
  %and203.i = and i32 %1126, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203.i)
  %tobool204.not.i = icmp eq i32 %and203.i, 0
  br i1 %tobool204.not.i, label %do.body202.i.do.end217.i_crit_edge, label %do.end208.i

do.body202.i.do.end217.i_crit_edge:               ; preds = %do.body202.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end217.i

do.end208.i:                                      ; preds = %do.body202.i
  call void @__sanitizer_cov_trace_pc() #12
  %1127 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1127)
  %1128 = load ptr, ptr %host.i223, align 4
  %shost_gendev210.i = getelementptr inbounds %struct.Scsi_Host, ptr %1128, i32 0, i32 49
  %status211.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1088, i32 0, i32 9
  %1129 = ptrtoint ptr %status211.i to i32
  call void @__asan_load1_noabort(i32 %1129)
  %1130 = load i8, ptr %status211.i, align 1
  %conv212.i = zext i8 %1130 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev210.i, ptr noundef nonnull @.str.118, i32 noundef %conv212.i, i32 noundef 0) #13
  br label %do.end217.i

do.end217.i:                                      ; preds = %do.end208.i, %do.body202.i.do.end217.i_crit_edge
  %status218.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1088, i32 0, i32 9
  %1131 = ptrtoint ptr %status218.i to i32
  call void @__asan_load1_noabort(i32 %1131)
  %1132 = load i8, ptr %status218.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %1132)
  %cmp220.i = icmp eq i8 %1132, 40
  br i1 %cmp220.i, label %if.then222.i, label %do.end217.i.if.end223.i_crit_edge

do.end217.i.if.end223.i_crit_edge:                ; preds = %do.end217.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end223.i

if.then222.i:                                     ; preds = %do.end217.i
  call void @__sanitizer_cov_trace_pc() #12
  %1133 = ptrtoint ptr %cmd186.i.le to i32
  call void @__asan_load4_noabort(i32 %1133)
  %1134 = load ptr, ptr %cmd186.i.le, align 4
  %device.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1134, i32 0, i32 1
  %1135 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %1135)
  %1136 = load ptr, ptr %device.i.i, align 4
  %hostdata.i.i = getelementptr inbounds %struct.scsi_device, ptr %1136, i32 0, i32 21
  %1137 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %1137)
  %1138 = load ptr, ptr %hostdata.i.i, align 8
  %num_tagged.i.i277 = getelementptr inbounds %struct.esp_lun_data, ptr %1138, i32 0, i32 1
  %1139 = ptrtoint ptr %num_tagged.i.i277 to i32
  call void @__asan_load4_noabort(i32 %1139)
  %1140 = load i32, ptr %num_tagged.i.i277, align 4
  %sub.i1009.i = add i32 %1140, -1
  %call.i1010.i = call i32 @scsi_track_queue_full(ptr noundef %1136, i32 noundef %sub.i1009.i) #10
  %1141 = ptrtoint ptr %status218.i to i32
  call void @__asan_load1_noabort(i32 %1141)
  %.pr1385.i = load i8, ptr %status218.i, align 1
  br label %if.end223.i

if.end223.i:                                      ; preds = %if.then222.i, %do.end217.i.if.end223.i_crit_edge
  %1142 = phi i8 [ %.pr1385.i, %if.then222.i ], [ %1132, %do.end217.i.if.end223.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1142)
  %cmp226.i = icmp eq i8 %1142, 2
  br i1 %cmp226.i, label %land.lhs.true.i, label %if.end223.i.if.else237.i_crit_edge

if.end223.i.if.else237.i_crit_edge:               ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else237.i

land.lhs.true.i:                                  ; preds = %if.end223.i
  %flags228.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1088, i32 0, i32 6
  %1143 = ptrtoint ptr %flags228.i to i32
  call void @__asan_load1_noabort(i32 %1143)
  %1144 = load i8, ptr %flags228.i, align 4
  %1145 = and i8 %1144, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1145)
  %tobool231.not.i = icmp eq i8 %1145, 0
  br i1 %tobool231.not.i, label %if.then232.i, label %land.lhs.true.i.if.else237.i_crit_edge

land.lhs.true.i.if.else237.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else237.i

if.then232.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %or235.i = or i8 %1144, 4
  %1146 = ptrtoint ptr %flags228.i to i32
  call void @__asan_store1_noabort(i32 %1146)
  store i8 %or235.i, ptr %flags228.i, align 4
  call fastcc void @esp_autosense(ptr noundef %esp, ptr noundef %1088) #10
  br label %if.end271.i

if.else237.i:                                     ; preds = %land.lhs.true.i.if.else237.i_crit_edge, %if.end223.i.if.else237.i_crit_edge
  call fastcc void @esp_cmd_is_done(ptr noundef %esp, ptr noundef %1088, ptr noundef %1090, i8 noundef zeroext 0) #10
  br label %if.end271.i

do.body245.i:                                     ; preds = %if.end196.i
  %1147 = load i32, ptr @esp_debug, align 4
  %and246.i = and i32 %1147, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246.i)
  %tobool247.not.i = icmp eq i32 %and246.i, 0
  br i1 %tobool247.not.i, label %do.body245.i.do.end260.i_crit_edge, label %do.end251.i

do.body245.i.do.end260.i_crit_edge:               ; preds = %do.body245.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end260.i

do.end251.i:                                      ; preds = %do.body245.i
  call void @__sanitizer_cov_trace_pc() #12
  %1148 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load ptr, ptr %host.i223, align 4
  %shost_gendev253.i = getelementptr inbounds %struct.Scsi_Host, ptr %1149, i32 0, i32 49
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1090, i32 0, i32 1
  %1150 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %1150)
  %1151 = load ptr, ptr %device.i, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %1151, i32 0, i32 16
  %1152 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %1152)
  %1153 = load i32, ptr %id.i, align 8
  %tag.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1088, i32 0, i32 7
  %1154 = ptrtoint ptr %tag.i to i32
  call void @__asan_load1_noabort(i32 %1154)
  %1155 = load i8, ptr %tag.i, align 1
  %conv254.i = zext i8 %1155 to i32
  %arrayidx256.i = getelementptr %struct.esp_cmd_entry, ptr %1088, i32 0, i32 7, i32 1
  %1156 = ptrtoint ptr %arrayidx256.i to i32
  call void @__asan_load1_noabort(i32 %1156)
  %1157 = load i8, ptr %arrayidx256.i, align 1
  %conv257.i = zext i8 %1157 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev253.i, ptr noundef nonnull @.str.121, i32 noundef %1153, i32 noundef %conv254.i, i32 noundef %conv257.i) #13
  br label %do.end260.i

do.end260.i:                                      ; preds = %do.end251.i, %do.body245.i.do.end260.i_crit_edge
  %1158 = ptrtoint ptr %active_cmd85.i to i32
  call void @__asan_store4_noabort(i32 %1158)
  store ptr null, ptr %active_cmd85.i, align 4
  call fastcc void @esp_maybe_execute_command(ptr noundef %esp) #10
  br label %if.end271.i

do.end265.i:                                      ; preds = %if.end196.i
  %conv198.i = zext i8 %1124 to i32
  %1159 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1159)
  %1160 = load ptr, ptr %host.i223, align 4
  %shost_gendev267.i = getelementptr inbounds %struct.Scsi_Host, ptr %1160, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %shost_gendev267.i, ptr noundef nonnull @.str.124, i32 noundef %conv198.i) #13
  %1161 = load i32, ptr @esp_debug, align 4
  %and.i385 = and i32 %1161, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i385)
  %tobool.not.i386 = icmp eq i32 %and.i385, 0
  br i1 %tobool.not.i386, label %do.end265.i.esp_schedule_reset.exit409_crit_edge, label %do.end.i389

do.end265.i.esp_schedule_reset.exit409_crit_edge: ; preds = %do.end265.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_schedule_reset.exit409

do.end.i389:                                      ; preds = %do.end265.i
  call void @__sanitizer_cov_trace_pc() #12
  %1162 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1162)
  %1163 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i388 = getelementptr inbounds %struct.Scsi_Host, ptr %1163, i32 0, i32 49
  %1164 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i388, ptr noundef nonnull @.str.35, ptr noundef %1164) #13
  br label %esp_schedule_reset.exit409

esp_schedule_reset.exit409:                       ; preds = %do.end.i389, %do.end265.i.esp_schedule_reset.exit409_crit_edge
  %1165 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1165)
  %1166 = load i32, ptr %flags, align 4
  %or.i391 = or i32 %1166, 2
  store i32 %or.i391, ptr %flags, align 4
  %1167 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1167)
  %1168 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i.i393 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1168
  %1169 = ptrtoint ptr %arrayidx.i.i393 to i32
  call void @__asan_store1_noabort(i32 %1169)
  store i8 1, ptr %arrayidx.i.i393, align 1
  %val1.i.i394 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1168, i32 1
  %1170 = ptrtoint ptr %val1.i.i394 to i32
  call void @__asan_store1_noabort(i32 %1170)
  store i8 16, ptr %val1.i.i394, align 1
  %1171 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1171)
  %1172 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i396 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1168, i32 2
  %1173 = ptrtoint ptr %sreg1.i.i.i396 to i32
  call void @__asan_store1_noabort(i32 %1173)
  store i8 %1172, ptr %sreg1.i.i.i396, align 1
  %1174 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1174)
  %1175 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i398 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1168, i32 3
  %1176 = ptrtoint ptr %seqreg2.i.i.i398 to i32
  call void @__asan_store1_noabort(i32 %1176)
  store i8 %1175, ptr %seqreg2.i.i.i398, align 1
  %1177 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1177)
  %1178 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i.i400 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1168, i32 4
  %1179 = ptrtoint ptr %sreg23.i.i.i400 to i32
  call void @__asan_store1_noabort(i32 %1179)
  store i8 %1178, ptr %sreg23.i.i.i400, align 1
  %1180 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1180)
  %1181 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i402 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1168, i32 5
  %1182 = ptrtoint ptr %ireg4.i.i.i402 to i32
  call void @__asan_store1_noabort(i32 %1182)
  store i8 %1181, ptr %ireg4.i.i.i402, align 1
  %1183 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1183)
  %1184 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i.i404 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1168, i32 6
  %1185 = ptrtoint ptr %select_state5.i.i.i404 to i32
  call void @__asan_store1_noabort(i32 %1185)
  store i8 %1184, ptr %select_state5.i.i.i404, align 1
  %1186 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1186)
  %1187 = load i8, ptr %event.i, align 1
  %event6.i.i.i406 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1168, i32 7
  %1188 = ptrtoint ptr %event6.i.i.i406 to i32
  call void @__asan_store1_noabort(i32 %1188)
  store i8 %1187, ptr %event6.i.i.i406, align 1
  %add.i.i407 = add i32 %1168, 1
  %and.i.i408 = and i32 %add.i.i407, 31
  store i32 %and.i.i408, ptr %esp_event_cur.i1312.i, align 4
  store i8 16, ptr %event.i, align 1
  br label %again.i.backedge

if.end271.i:                                      ; preds = %do.end260.i, %if.else237.i, %if.then232.i
  %1189 = ptrtoint ptr %active_cmd85.i to i32
  call void @__asan_load4_noabort(i32 %1189)
  %1190 = load ptr, ptr %active_cmd85.i, align 4
  %tobool273.not.i = icmp eq ptr %1190, null
  br i1 %tobool273.not.i, label %if.end271.i.cleanup_crit_edge, label %if.then274.i

if.end271.i.cleanup_crit_edge:                    ; preds = %if.end271.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then274.i:                                     ; preds = %if.end271.i
  call void @__sanitizer_cov_trace_pc() #12
  %1191 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1191)
  %1192 = load i32, ptr %flags, align 4
  %or276.i = or i32 %1192, 16
  store i32 %or276.i, ptr %flags, align 4
  br label %cleanup

sw.bb281.i:                                       ; preds = %do.end5.i
  %1193 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1193)
  %1194 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i1012.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1194
  %1195 = ptrtoint ptr %arrayidx.i1012.i to i32
  call void @__asan_store1_noabort(i32 %1195)
  store i8 2, ptr %arrayidx.i1012.i, align 1
  %val1.i1013.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1194, i32 1
  %1196 = ptrtoint ptr %val1.i1013.i to i32
  call void @__asan_store1_noabort(i32 %1196)
  store i8 1, ptr %val1.i1013.i, align 1
  %1197 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1197)
  %1198 = load i8, ptr %sreg, align 4
  %sreg1.i.i1015.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1194, i32 2
  %1199 = ptrtoint ptr %sreg1.i.i1015.i to i32
  call void @__asan_store1_noabort(i32 %1199)
  store i8 %1198, ptr %sreg1.i.i1015.i, align 1
  %1200 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1200)
  %1201 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i1017.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1194, i32 3
  %1202 = ptrtoint ptr %seqreg2.i.i1017.i to i32
  call void @__asan_store1_noabort(i32 %1202)
  store i8 %1201, ptr %seqreg2.i.i1017.i, align 1
  %1203 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1203)
  %1204 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i1019.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1194, i32 4
  %1205 = ptrtoint ptr %sreg23.i.i1019.i to i32
  call void @__asan_store1_noabort(i32 %1205)
  store i8 %1204, ptr %sreg23.i.i1019.i, align 1
  %1206 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1206)
  %1207 = load i8, ptr %ireg, align 1
  %ireg4.i.i1021.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1194, i32 5
  %1208 = ptrtoint ptr %ireg4.i.i1021.i to i32
  call void @__asan_store1_noabort(i32 %1208)
  store i8 %1207, ptr %ireg4.i.i1021.i, align 1
  %1209 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1209)
  %1210 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i1023.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1194, i32 6
  %1211 = ptrtoint ptr %select_state5.i.i1023.i to i32
  call void @__asan_store1_noabort(i32 %1211)
  store i8 %1210, ptr %select_state5.i.i1023.i, align 1
  %1212 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1212)
  %1213 = load i8, ptr %event.i, align 1
  %event6.i.i1025.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1194, i32 7
  %1214 = ptrtoint ptr %event6.i.i1025.i to i32
  call void @__asan_store1_noabort(i32 %1214)
  store i8 %1213, ptr %event6.i.i1025.i, align 1
  %add.i1026.i = add i32 %1194, 1
  %and.i1027.i = and i32 %add.i1026.i, 31
  store i32 %and.i1027.i, ptr %esp_event_cur.i1312.i, align 4
  %1215 = load i32, ptr @esp_debug, align 4
  %and3.i1028.i = and i32 %1215, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i1028.i)
  %tobool.not.i1029.i = icmp eq i32 %and3.i1028.i, 0
  br i1 %tobool.not.i1029.i, label %sw.bb281.i.scsi_esp_cmd.exit1034.i_crit_edge, label %do.end.i1032.i

sw.bb281.i.scsi_esp_cmd.exit1034.i_crit_edge:     ; preds = %sw.bb281.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit1034.i

do.end.i1032.i:                                   ; preds = %sw.bb281.i
  call void @__sanitizer_cov_trace_pc() #12
  %1216 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1216)
  %1217 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i1031.i = getelementptr inbounds %struct.Scsi_Host, ptr %1217, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i1031.i, ptr noundef nonnull @.str, i32 noundef 1) #13
  br label %scsi_esp_cmd.exit1034.i

scsi_esp_cmd.exit1034.i:                          ; preds = %do.end.i1032.i, %sw.bb281.i.scsi_esp_cmd.exit1034.i_crit_edge
  %1218 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1218)
  %1219 = load ptr, ptr %ops, align 4
  %1220 = ptrtoint ptr %1219 to i32
  call void @__asan_load4_noabort(i32 %1220)
  %1221 = load ptr, ptr %1219, align 4
  call void %1221(ptr noundef %esp, i8 noundef zeroext 1, i32 noundef 3) #10
  %1222 = load i32, ptr @esp_debug, align 4
  %and282.i = and i32 %1222, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282.i)
  %tobool283.not.i = icmp eq i32 %and282.i, 0
  br i1 %tobool283.not.i, label %scsi_esp_cmd.exit1034.i.if.end304.i_crit_edge, label %if.then284.i

scsi_esp_cmd.exit1034.i.if.end304.i_crit_edge:    ; preds = %scsi_esp_cmd.exit1034.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304.i

if.then284.i:                                     ; preds = %scsi_esp_cmd.exit1034.i
  %call289.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  %1223 = ptrtoint ptr %msg_out_len365.i to i32
  call void @__asan_load4_noabort(i32 %1223)
  %1224 = load i32, ptr %msg_out_len365.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1224)
  %cmp2901426.i = icmp sgt i32 %1224, 0
  br i1 %cmp2901426.i, label %if.then284.i.do.end294.i_crit_edge, label %if.then284.i.do.end301.i_crit_edge

if.then284.i.do.end301.i_crit_edge:               ; preds = %if.then284.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end301.i

if.then284.i.do.end294.i_crit_edge:               ; preds = %if.then284.i
  br label %do.end294.i

do.end294.i:                                      ; preds = %do.end294.i.do.end294.i_crit_edge, %if.then284.i.do.end294.i_crit_edge
  %i285.01427.i = phi i32 [ %inc.i278, %do.end294.i.do.end294.i_crit_edge ], [ 0, %if.then284.i.do.end294.i_crit_edge ]
  %arrayidx296.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 26, i32 %i285.01427.i
  %1225 = ptrtoint ptr %arrayidx296.i to i32
  call void @__asan_load1_noabort(i32 %1225)
  %1226 = load i8, ptr %arrayidx296.i, align 1
  %conv297.i = zext i8 %1226 to i32
  %call298.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv297.i) #13
  %inc.i278 = add nuw nsw i32 %i285.01427.i, 1
  %1227 = ptrtoint ptr %msg_out_len365.i to i32
  call void @__asan_load4_noabort(i32 %1227)
  %1228 = load i32, ptr %msg_out_len365.i, align 4
  %cmp290.i = icmp slt i32 %inc.i278, %1228
  br i1 %cmp290.i, label %do.end294.i.do.end294.i_crit_edge, label %do.end294.i.do.end301.i_crit_edge

do.end294.i.do.end301.i_crit_edge:                ; preds = %do.end294.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end301.i

do.end294.i.do.end294.i_crit_edge:                ; preds = %do.end294.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end294.i

do.end301.i:                                      ; preds = %do.end294.i.do.end301.i_crit_edge, %if.then284.i.do.end301.i_crit_edge
  %call303.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #13
  br label %if.end304.i

if.end304.i:                                      ; preds = %do.end301.i, %scsi_esp_cmd.exit1034.i.if.end304.i_crit_edge
  %1229 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %1229)
  %1230 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1230)
  %cmp306.i = icmp eq i32 %1230, 8
  %1231 = ptrtoint ptr %msg_out_len365.i to i32
  call void @__asan_load4_noabort(i32 %1231)
  %1232 = load i32, ptr %msg_out_len365.i, align 4
  br i1 %cmp306.i, label %for.cond310.preheader.i, label %if.else323.i

for.cond310.preheader.i:                          ; preds = %if.end304.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1232)
  %cmp3121430.i = icmp sgt i32 %1232, 0
  br i1 %cmp3121430.i, label %for.cond310.preheader.i.for.body314.i_crit_edge, label %for.cond310.preheader.i.for.end322.i_crit_edge

for.cond310.preheader.i.for.end322.i_crit_edge:   ; preds = %for.cond310.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end322.i

for.cond310.preheader.i.for.body314.i_crit_edge:  ; preds = %for.cond310.preheader.i
  br label %for.body314.i

for.body314.i:                                    ; preds = %for.body314.i.for.body314.i_crit_edge, %for.cond310.preheader.i.for.body314.i_crit_edge
  %i309.01431.i = phi i32 [ %inc321.i, %for.body314.i.for.body314.i_crit_edge ], [ 0, %for.cond310.preheader.i.for.body314.i_crit_edge ]
  %1233 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1233)
  %1234 = load ptr, ptr %ops, align 4
  %1235 = ptrtoint ptr %1234 to i32
  call void @__asan_load4_noabort(i32 %1235)
  %1236 = load ptr, ptr %1234, align 4
  %arrayidx317.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 26, i32 %i309.01431.i
  %1237 = ptrtoint ptr %arrayidx317.i to i32
  call void @__asan_load1_noabort(i32 %1237)
  %1238 = load i8, ptr %arrayidx317.i, align 1
  call void %1236(ptr noundef %esp, i8 noundef zeroext %1238, i32 noundef 2) #10
  %1239 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1239)
  %1240 = load ptr, ptr %ops, align 4
  %1241 = ptrtoint ptr %1240 to i32
  call void @__asan_load4_noabort(i32 %1241)
  %1242 = load ptr, ptr %1240, align 4
  call void %1242(ptr noundef %esp, i8 noundef zeroext 0, i32 noundef 2) #10
  %inc321.i = add nuw nsw i32 %i309.01431.i, 1
  %1243 = ptrtoint ptr %msg_out_len365.i to i32
  call void @__asan_load4_noabort(i32 %1243)
  %1244 = load i32, ptr %msg_out_len365.i, align 4
  %cmp312.i = icmp slt i32 %inc321.i, %1244
  br i1 %cmp312.i, label %for.body314.i.for.body314.i_crit_edge, label %for.body314.i.for.end322.i_crit_edge

for.body314.i.for.end322.i_crit_edge:             ; preds = %for.body314.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end322.i

for.body314.i.for.body314.i_crit_edge:            ; preds = %for.body314.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body314.i

for.end322.i:                                     ; preds = %for.body314.i.for.end322.i_crit_edge, %for.cond310.preheader.i.for.end322.i_crit_edge
  %1245 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1245)
  %1246 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i1036.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1246
  %1247 = ptrtoint ptr %arrayidx.i1036.i to i32
  call void @__asan_store1_noabort(i32 %1247)
  store i8 2, ptr %arrayidx.i1036.i, align 1
  %val1.i1037.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1246, i32 1
  %1248 = ptrtoint ptr %val1.i1037.i to i32
  call void @__asan_store1_noabort(i32 %1248)
  store i8 16, ptr %val1.i1037.i, align 1
  %1249 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1249)
  %1250 = load i8, ptr %sreg, align 4
  %sreg1.i.i1039.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1246, i32 2
  %1251 = ptrtoint ptr %sreg1.i.i1039.i to i32
  call void @__asan_store1_noabort(i32 %1251)
  store i8 %1250, ptr %sreg1.i.i1039.i, align 1
  %1252 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1252)
  %1253 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i1041.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1246, i32 3
  %1254 = ptrtoint ptr %seqreg2.i.i1041.i to i32
  call void @__asan_store1_noabort(i32 %1254)
  store i8 %1253, ptr %seqreg2.i.i1041.i, align 1
  %1255 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1255)
  %1256 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i1043.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1246, i32 4
  %1257 = ptrtoint ptr %sreg23.i.i1043.i to i32
  call void @__asan_store1_noabort(i32 %1257)
  store i8 %1256, ptr %sreg23.i.i1043.i, align 1
  %1258 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1258)
  %1259 = load i8, ptr %ireg, align 1
  %ireg4.i.i1045.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1246, i32 5
  %1260 = ptrtoint ptr %ireg4.i.i1045.i to i32
  call void @__asan_store1_noabort(i32 %1260)
  store i8 %1259, ptr %ireg4.i.i1045.i, align 1
  %1261 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1261)
  %1262 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i1047.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1246, i32 6
  %1263 = ptrtoint ptr %select_state5.i.i1047.i to i32
  call void @__asan_store1_noabort(i32 %1263)
  store i8 %1262, ptr %select_state5.i.i1047.i, align 1
  %1264 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1264)
  %1265 = load i8, ptr %event.i, align 1
  %event6.i.i1049.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1246, i32 7
  %1266 = ptrtoint ptr %event6.i.i1049.i to i32
  call void @__asan_store1_noabort(i32 %1266)
  store i8 %1265, ptr %event6.i.i1049.i, align 1
  %add.i1050.i = add i32 %1246, 1
  %and.i1051.i = and i32 %add.i1050.i, 31
  store i32 %and.i1051.i, ptr %esp_event_cur.i1312.i, align 4
  %1267 = load i32, ptr @esp_debug, align 4
  %and3.i1052.i = and i32 %1267, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i1052.i)
  %tobool.not.i1053.i = icmp eq i32 %and3.i1052.i, 0
  br i1 %tobool.not.i1053.i, label %for.end322.i.scsi_esp_cmd.exit1058.i_crit_edge, label %do.end.i1056.i

for.end322.i.scsi_esp_cmd.exit1058.i_crit_edge:   ; preds = %for.end322.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit1058.i

do.end.i1056.i:                                   ; preds = %for.end322.i
  call void @__sanitizer_cov_trace_pc() #12
  %1268 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1268)
  %1269 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i1055.i = getelementptr inbounds %struct.Scsi_Host, ptr %1269, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i1055.i, ptr noundef nonnull @.str, i32 noundef 16) #13
  br label %scsi_esp_cmd.exit1058.i

scsi_esp_cmd.exit1058.i:                          ; preds = %do.end.i1056.i, %for.end322.i.scsi_esp_cmd.exit1058.i_crit_edge
  %1270 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1270)
  %1271 = load ptr, ptr %ops, align 4
  %1272 = ptrtoint ptr %1271 to i32
  call void @__asan_load4_noabort(i32 %1272)
  %1273 = load ptr, ptr %1271, align 4
  call void %1273(ptr noundef %esp, i8 noundef zeroext 16, i32 noundef 3) #10
  br label %if.end358.i

if.else323.i:                                     ; preds = %if.end304.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1232)
  %cmp325.i = icmp eq i32 %1232, 1
  br i1 %cmp325.i, label %if.then327.i, label %if.else332.i

if.then327.i:                                     ; preds = %if.else323.i
  %1274 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1274)
  %1275 = load ptr, ptr %ops, align 4
  %1276 = ptrtoint ptr %1275 to i32
  call void @__asan_load4_noabort(i32 %1276)
  %1277 = load ptr, ptr %1275, align 4
  %1278 = ptrtoint ptr %msg_out.i132.i.i to i32
  call void @__asan_load1_noabort(i32 %1278)
  %1279 = load i8, ptr %msg_out.i132.i.i, align 4
  call void %1277(ptr noundef %esp, i8 noundef zeroext %1279, i32 noundef 2) #10
  %1280 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1280)
  %1281 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i1060.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1281
  %1282 = ptrtoint ptr %arrayidx.i1060.i to i32
  call void @__asan_store1_noabort(i32 %1282)
  store i8 2, ptr %arrayidx.i1060.i, align 1
  %val1.i1061.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1281, i32 1
  %1283 = ptrtoint ptr %val1.i1061.i to i32
  call void @__asan_store1_noabort(i32 %1283)
  store i8 16, ptr %val1.i1061.i, align 1
  %1284 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1284)
  %1285 = load i8, ptr %sreg, align 4
  %sreg1.i.i1063.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1281, i32 2
  %1286 = ptrtoint ptr %sreg1.i.i1063.i to i32
  call void @__asan_store1_noabort(i32 %1286)
  store i8 %1285, ptr %sreg1.i.i1063.i, align 1
  %1287 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1287)
  %1288 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i1065.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1281, i32 3
  %1289 = ptrtoint ptr %seqreg2.i.i1065.i to i32
  call void @__asan_store1_noabort(i32 %1289)
  store i8 %1288, ptr %seqreg2.i.i1065.i, align 1
  %1290 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1290)
  %1291 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i1067.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1281, i32 4
  %1292 = ptrtoint ptr %sreg23.i.i1067.i to i32
  call void @__asan_store1_noabort(i32 %1292)
  store i8 %1291, ptr %sreg23.i.i1067.i, align 1
  %1293 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1293)
  %1294 = load i8, ptr %ireg, align 1
  %ireg4.i.i1069.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1281, i32 5
  %1295 = ptrtoint ptr %ireg4.i.i1069.i to i32
  call void @__asan_store1_noabort(i32 %1295)
  store i8 %1294, ptr %ireg4.i.i1069.i, align 1
  %1296 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1296)
  %1297 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i1071.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1281, i32 6
  %1298 = ptrtoint ptr %select_state5.i.i1071.i to i32
  call void @__asan_store1_noabort(i32 %1298)
  store i8 %1297, ptr %select_state5.i.i1071.i, align 1
  %1299 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1299)
  %1300 = load i8, ptr %event.i, align 1
  %event6.i.i1073.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1281, i32 7
  %1301 = ptrtoint ptr %event6.i.i1073.i to i32
  call void @__asan_store1_noabort(i32 %1301)
  store i8 %1300, ptr %event6.i.i1073.i, align 1
  %add.i1074.i = add i32 %1281, 1
  %and.i1075.i = and i32 %add.i1074.i, 31
  store i32 %and.i1075.i, ptr %esp_event_cur.i1312.i, align 4
  %1302 = load i32, ptr @esp_debug, align 4
  %and3.i1076.i = and i32 %1302, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i1076.i)
  %tobool.not.i1077.i = icmp eq i32 %and3.i1076.i, 0
  br i1 %tobool.not.i1077.i, label %if.then327.i.scsi_esp_cmd.exit1082.i_crit_edge, label %do.end.i1080.i

if.then327.i.scsi_esp_cmd.exit1082.i_crit_edge:   ; preds = %if.then327.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit1082.i

do.end.i1080.i:                                   ; preds = %if.then327.i
  call void @__sanitizer_cov_trace_pc() #12
  %1303 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1303)
  %1304 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i1079.i = getelementptr inbounds %struct.Scsi_Host, ptr %1304, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i1079.i, ptr noundef nonnull @.str, i32 noundef 16) #13
  br label %scsi_esp_cmd.exit1082.i

scsi_esp_cmd.exit1082.i:                          ; preds = %do.end.i1080.i, %if.then327.i.scsi_esp_cmd.exit1082.i_crit_edge
  %1305 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1305)
  %1306 = load ptr, ptr %ops, align 4
  %1307 = ptrtoint ptr %1306 to i32
  call void @__asan_load4_noabort(i32 %1307)
  %1308 = load ptr, ptr %1306, align 4
  call void %1308(ptr noundef %esp, i8 noundef zeroext 16, i32 noundef 3) #10
  br label %if.end358.i

if.else332.i:                                     ; preds = %if.else323.i
  %1309 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1309)
  %1310 = load i32, ptr %flags, align 4
  %and334.i = and i32 %1310, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and334.i)
  %tobool335.not.i = icmp eq i32 %and334.i, 0
  br i1 %tobool335.not.i, label %if.else349.i, label %for.cond337.preheader.i

for.cond337.preheader.i:                          ; preds = %if.else332.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1232)
  %cmp3391428.i = icmp sgt i32 %1232, 0
  br i1 %cmp3391428.i, label %for.cond337.preheader.i.for.body341.i_crit_edge, label %for.cond337.preheader.i.for.end348.i_crit_edge

for.cond337.preheader.i.for.end348.i_crit_edge:   ; preds = %for.cond337.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end348.i

for.cond337.preheader.i.for.body341.i_crit_edge:  ; preds = %for.cond337.preheader.i
  br label %for.body341.i

for.body341.i:                                    ; preds = %for.body341.i.for.body341.i_crit_edge, %for.cond337.preheader.i.for.body341.i_crit_edge
  %i.01429.i = phi i32 [ %inc347.i, %for.body341.i.for.body341.i_crit_edge ], [ 0, %for.cond337.preheader.i.for.body341.i_crit_edge ]
  %1311 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1311)
  %1312 = load ptr, ptr %ops, align 4
  %1313 = ptrtoint ptr %1312 to i32
  call void @__asan_load4_noabort(i32 %1313)
  %1314 = load ptr, ptr %1312, align 4
  %arrayidx345.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 26, i32 %i.01429.i
  %1315 = ptrtoint ptr %arrayidx345.i to i32
  call void @__asan_load1_noabort(i32 %1315)
  %1316 = load i8, ptr %arrayidx345.i, align 1
  call void %1314(ptr noundef %esp, i8 noundef zeroext %1316, i32 noundef 2) #10
  %inc347.i = add nuw nsw i32 %i.01429.i, 1
  %1317 = ptrtoint ptr %msg_out_len365.i to i32
  call void @__asan_load4_noabort(i32 %1317)
  %1318 = load i32, ptr %msg_out_len365.i, align 4
  %cmp339.i = icmp slt i32 %inc347.i, %1318
  br i1 %cmp339.i, label %for.body341.i.for.body341.i_crit_edge, label %for.body341.i.for.end348.i_crit_edge

for.body341.i.for.end348.i_crit_edge:             ; preds = %for.body341.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end348.i

for.body341.i.for.body341.i_crit_edge:            ; preds = %for.body341.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body341.i

for.end348.i:                                     ; preds = %for.body341.i.for.end348.i_crit_edge, %for.cond337.preheader.i.for.end348.i_crit_edge
  %1319 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1319)
  %1320 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i362 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1320
  %1321 = ptrtoint ptr %arrayidx.i362 to i32
  call void @__asan_store1_noabort(i32 %1321)
  store i8 2, ptr %arrayidx.i362, align 1
  %val1.i363 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1320, i32 1
  %1322 = ptrtoint ptr %val1.i363 to i32
  call void @__asan_store1_noabort(i32 %1322)
  store i8 16, ptr %val1.i363, align 1
  %1323 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1323)
  %1324 = load i8, ptr %sreg, align 4
  %sreg1.i.i365 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1320, i32 2
  %1325 = ptrtoint ptr %sreg1.i.i365 to i32
  call void @__asan_store1_noabort(i32 %1325)
  store i8 %1324, ptr %sreg1.i.i365, align 1
  %1326 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1326)
  %1327 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i367 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1320, i32 3
  %1328 = ptrtoint ptr %seqreg2.i.i367 to i32
  call void @__asan_store1_noabort(i32 %1328)
  store i8 %1327, ptr %seqreg2.i.i367, align 1
  %1329 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1329)
  %1330 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i369 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1320, i32 4
  %1331 = ptrtoint ptr %sreg23.i.i369 to i32
  call void @__asan_store1_noabort(i32 %1331)
  store i8 %1330, ptr %sreg23.i.i369, align 1
  %1332 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1332)
  %1333 = load i8, ptr %ireg, align 1
  %ireg4.i.i371 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1320, i32 5
  %1334 = ptrtoint ptr %ireg4.i.i371 to i32
  call void @__asan_store1_noabort(i32 %1334)
  store i8 %1333, ptr %ireg4.i.i371, align 1
  %1335 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1335)
  %1336 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i373 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1320, i32 6
  %1337 = ptrtoint ptr %select_state5.i.i373 to i32
  call void @__asan_store1_noabort(i32 %1337)
  store i8 %1336, ptr %select_state5.i.i373, align 1
  %1338 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1338)
  %1339 = load i8, ptr %event.i, align 1
  %event6.i.i375 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1320, i32 7
  %1340 = ptrtoint ptr %event6.i.i375 to i32
  call void @__asan_store1_noabort(i32 %1340)
  store i8 %1339, ptr %event6.i.i375, align 1
  %add.i376 = add i32 %1320, 1
  %and.i377 = and i32 %add.i376, 31
  store i32 %and.i377, ptr %esp_event_cur.i1312.i, align 4
  %1341 = load i32, ptr @esp_debug, align 4
  %and3.i378 = and i32 %1341, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i378)
  %tobool.not.i379 = icmp eq i32 %and3.i378, 0
  br i1 %tobool.not.i379, label %for.end348.i.scsi_esp_cmd.exit384_crit_edge, label %do.end.i382

for.end348.i.scsi_esp_cmd.exit384_crit_edge:      ; preds = %for.end348.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit384

do.end.i382:                                      ; preds = %for.end348.i
  call void @__sanitizer_cov_trace_pc() #12
  %1342 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1342)
  %1343 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i381 = getelementptr inbounds %struct.Scsi_Host, ptr %1343, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i381, ptr noundef nonnull @.str, i32 noundef 16) #13
  br label %scsi_esp_cmd.exit384

scsi_esp_cmd.exit384:                             ; preds = %do.end.i382, %for.end348.i.scsi_esp_cmd.exit384_crit_edge
  %1344 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1344)
  %1345 = load ptr, ptr %ops, align 4
  %1346 = ptrtoint ptr %1345 to i32
  call void @__asan_load4_noabort(i32 %1346)
  %1347 = load ptr, ptr %1345, align 4
  call void %1347(ptr noundef %esp, i8 noundef zeroext 16, i32 noundef 3) #10
  br label %if.end358.i

if.else349.i:                                     ; preds = %if.else332.i
  call void @__sanitizer_cov_trace_pc() #12
  %1348 = ptrtoint ptr %command_block470.i to i32
  call void @__asan_load4_noabort(i32 %1348)
  %1349 = load ptr, ptr %command_block470.i, align 4
  %1350 = call ptr @memcpy(ptr %1349, ptr %msg_out.i132.i.i, i32 %1232)
  %1351 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1351)
  %1352 = load ptr, ptr %ops, align 4
  %send_dma_cmd353.i = getelementptr inbounds %struct.esp_driver_ops, ptr %1352, i32 0, i32 7
  %1353 = ptrtoint ptr %send_dma_cmd353.i to i32
  call void @__asan_load4_noabort(i32 %1353)
  %1354 = load ptr, ptr %send_dma_cmd353.i, align 4
  %1355 = ptrtoint ptr %command_block_dma.i to i32
  call void @__asan_load4_noabort(i32 %1355)
  %1356 = load i32, ptr %command_block_dma.i, align 4
  %1357 = ptrtoint ptr %msg_out_len365.i to i32
  call void @__asan_load4_noabort(i32 %1357)
  %1358 = load i32, ptr %msg_out_len365.i, align 4
  call void %1354(ptr noundef %esp, i32 noundef %1356, i32 noundef %1358, i32 noundef %1358, i32 noundef 0, i8 noundef zeroext -112) #10
  br label %if.end358.i

if.end358.i:                                      ; preds = %if.else349.i, %scsi_esp_cmd.exit384, %scsi_esp_cmd.exit1082.i, %scsi_esp_cmd.exit1058.i
  %1359 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1359)
  %1360 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i1084.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1360
  %1361 = ptrtoint ptr %arrayidx.i1084.i to i32
  call void @__asan_store1_noabort(i32 %1361)
  store i8 1, ptr %arrayidx.i1084.i, align 1
  %val1.i1085.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1360, i32 1
  %1362 = ptrtoint ptr %val1.i1085.i to i32
  call void @__asan_store1_noabort(i32 %1362)
  store i8 10, ptr %val1.i1085.i, align 1
  %1363 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1363)
  %1364 = load i8, ptr %sreg, align 4
  %sreg1.i.i1087.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1360, i32 2
  %1365 = ptrtoint ptr %sreg1.i.i1087.i to i32
  call void @__asan_store1_noabort(i32 %1365)
  store i8 %1364, ptr %sreg1.i.i1087.i, align 1
  %1366 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1366)
  %1367 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i1089.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1360, i32 3
  %1368 = ptrtoint ptr %seqreg2.i.i1089.i to i32
  call void @__asan_store1_noabort(i32 %1368)
  store i8 %1367, ptr %seqreg2.i.i1089.i, align 1
  %1369 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1369)
  %1370 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i1091.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1360, i32 4
  %1371 = ptrtoint ptr %sreg23.i.i1091.i to i32
  call void @__asan_store1_noabort(i32 %1371)
  store i8 %1370, ptr %sreg23.i.i1091.i, align 1
  %1372 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1372)
  %1373 = load i8, ptr %ireg, align 1
  %ireg4.i.i1093.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1360, i32 5
  %1374 = ptrtoint ptr %ireg4.i.i1093.i to i32
  call void @__asan_store1_noabort(i32 %1374)
  store i8 %1373, ptr %ireg4.i.i1093.i, align 1
  %1375 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1375)
  %1376 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i1095.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1360, i32 6
  %1377 = ptrtoint ptr %select_state5.i.i1095.i to i32
  call void @__asan_store1_noabort(i32 %1377)
  store i8 %1376, ptr %select_state5.i.i1095.i, align 1
  %1378 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1378)
  %1379 = load i8, ptr %event.i, align 1
  %event6.i.i1097.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1360, i32 7
  %1380 = ptrtoint ptr %event6.i.i1097.i to i32
  call void @__asan_store1_noabort(i32 %1380)
  store i8 %1379, ptr %event6.i.i1097.i, align 1
  %add.i1098.i = add i32 %1360, 1
  %and.i1099.i = and i32 %add.i1098.i, 31
  store i32 %and.i1099.i, ptr %esp_event_cur.i1312.i, align 4
  store i8 10, ptr %event.i, align 1
  br label %cleanup

sw.bb359.i:                                       ; preds = %do.end5.i
  %1381 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %1381)
  %1382 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1382)
  %cmp361.i = icmp eq i32 %1382, 8
  br i1 %cmp361.i, label %if.then363.i, label %if.else364.i

if.then363.i:                                     ; preds = %sw.bb359.i
  %1383 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1383)
  %1384 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i1101.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1384
  %1385 = ptrtoint ptr %arrayidx.i1101.i to i32
  call void @__asan_store1_noabort(i32 %1385)
  store i8 2, ptr %arrayidx.i1101.i, align 1
  %val1.i1102.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1384, i32 1
  %1386 = ptrtoint ptr %val1.i1102.i to i32
  call void @__asan_store1_noabort(i32 %1386)
  store i8 1, ptr %val1.i1102.i, align 1
  %1387 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1387)
  %1388 = load i8, ptr %sreg, align 4
  %sreg1.i.i1104.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1384, i32 2
  %1389 = ptrtoint ptr %sreg1.i.i1104.i to i32
  call void @__asan_store1_noabort(i32 %1389)
  store i8 %1388, ptr %sreg1.i.i1104.i, align 1
  %1390 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1390)
  %1391 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i1106.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1384, i32 3
  %1392 = ptrtoint ptr %seqreg2.i.i1106.i to i32
  call void @__asan_store1_noabort(i32 %1392)
  store i8 %1391, ptr %seqreg2.i.i1106.i, align 1
  %1393 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1393)
  %1394 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i1108.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1384, i32 4
  %1395 = ptrtoint ptr %sreg23.i.i1108.i to i32
  call void @__asan_store1_noabort(i32 %1395)
  store i8 %1394, ptr %sreg23.i.i1108.i, align 1
  %1396 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1396)
  %1397 = load i8, ptr %ireg, align 1
  %ireg4.i.i1110.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1384, i32 5
  %1398 = ptrtoint ptr %ireg4.i.i1110.i to i32
  call void @__asan_store1_noabort(i32 %1398)
  store i8 %1397, ptr %ireg4.i.i1110.i, align 1
  %1399 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1399)
  %1400 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i1112.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1384, i32 6
  %1401 = ptrtoint ptr %select_state5.i.i1112.i to i32
  call void @__asan_store1_noabort(i32 %1401)
  store i8 %1400, ptr %select_state5.i.i1112.i, align 1
  %1402 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1402)
  %1403 = load i8, ptr %event.i, align 1
  %event6.i.i1114.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1384, i32 7
  %1404 = ptrtoint ptr %event6.i.i1114.i to i32
  call void @__asan_store1_noabort(i32 %1404)
  store i8 %1403, ptr %event6.i.i1114.i, align 1
  %add.i1115.i = add i32 %1384, 1
  %and.i1116.i = and i32 %add.i1115.i, 31
  store i32 %and.i1116.i, ptr %esp_event_cur.i1312.i, align 4
  %1405 = load i32, ptr @esp_debug, align 4
  %and3.i1117.i = and i32 %1405, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i1117.i)
  %tobool.not.i1118.i = icmp eq i32 %and3.i1117.i, 0
  br i1 %tobool.not.i1118.i, label %if.then363.i.if.end378.sink.split.i_crit_edge, label %if.then363.i.if.end378.sink.split.sink.split.i_crit_edge

if.then363.i.if.end378.sink.split.sink.split.i_crit_edge: ; preds = %if.then363.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end378.sink.split.sink.split.i

if.then363.i.if.end378.sink.split.i_crit_edge:    ; preds = %if.then363.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end378.sink.split.i

if.else364.i:                                     ; preds = %sw.bb359.i
  %1406 = ptrtoint ptr %msg_out_len365.i to i32
  call void @__asan_load4_noabort(i32 %1406)
  %1407 = load i32, ptr %msg_out_len365.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1407)
  %cmp366.i = icmp sgt i32 %1407, 1
  br i1 %cmp366.i, label %if.then368.i, label %if.else364.i.if.end371.i_crit_edge

if.else364.i.if.end371.i_crit_edge:               ; preds = %if.else364.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end371.i

if.then368.i:                                     ; preds = %if.else364.i
  call void @__sanitizer_cov_trace_pc() #12
  %1408 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1408)
  %1409 = load ptr, ptr %ops, align 4
  %dma_invalidate370.i = getelementptr inbounds %struct.esp_driver_ops, ptr %1409, i32 0, i32 6
  %1410 = ptrtoint ptr %dma_invalidate370.i to i32
  call void @__asan_load4_noabort(i32 %1410)
  %1411 = load ptr, ptr %dma_invalidate370.i, align 4
  call void %1411(ptr noundef %esp) #10
  br label %if.end371.i

if.end371.i:                                      ; preds = %if.then368.i, %if.else364.i.if.end371.i_crit_edge
  %1412 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1412)
  %1413 = load i8, ptr %ireg, align 1
  %1414 = and i8 %1413, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1414)
  %tobool375.not.i = icmp eq i8 %1414, 0
  br i1 %tobool375.not.i, label %if.then376.i, label %if.end371.i.if.end378.i_crit_edge

if.end371.i.if.end378.i_crit_edge:                ; preds = %if.end371.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end378.i

if.then376.i:                                     ; preds = %if.end371.i
  %1415 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1415)
  %1416 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i1125.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1416
  %1417 = ptrtoint ptr %arrayidx.i1125.i to i32
  call void @__asan_store1_noabort(i32 %1417)
  store i8 2, ptr %arrayidx.i1125.i, align 1
  %val1.i1126.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1416, i32 1
  %1418 = ptrtoint ptr %val1.i1126.i to i32
  call void @__asan_store1_noabort(i32 %1418)
  store i8 0, ptr %val1.i1126.i, align 1
  %1419 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1419)
  %1420 = load i8, ptr %sreg, align 4
  %sreg1.i.i1128.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1416, i32 2
  %1421 = ptrtoint ptr %sreg1.i.i1128.i to i32
  call void @__asan_store1_noabort(i32 %1421)
  store i8 %1420, ptr %sreg1.i.i1128.i, align 1
  %1422 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1422)
  %1423 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i1130.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1416, i32 3
  %1424 = ptrtoint ptr %seqreg2.i.i1130.i to i32
  call void @__asan_store1_noabort(i32 %1424)
  store i8 %1423, ptr %seqreg2.i.i1130.i, align 1
  %1425 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1425)
  %1426 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i1132.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1416, i32 4
  %1427 = ptrtoint ptr %sreg23.i.i1132.i to i32
  call void @__asan_store1_noabort(i32 %1427)
  store i8 %1426, ptr %sreg23.i.i1132.i, align 1
  %1428 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1428)
  %1429 = load i8, ptr %ireg, align 1
  %ireg4.i.i1134.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1416, i32 5
  %1430 = ptrtoint ptr %ireg4.i.i1134.i to i32
  call void @__asan_store1_noabort(i32 %1430)
  store i8 %1429, ptr %ireg4.i.i1134.i, align 1
  %1431 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1431)
  %1432 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i1136.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1416, i32 6
  %1433 = ptrtoint ptr %select_state5.i.i1136.i to i32
  call void @__asan_store1_noabort(i32 %1433)
  store i8 %1432, ptr %select_state5.i.i1136.i, align 1
  %1434 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1434)
  %1435 = load i8, ptr %event.i, align 1
  %event6.i.i1138.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1416, i32 7
  %1436 = ptrtoint ptr %event6.i.i1138.i to i32
  call void @__asan_store1_noabort(i32 %1436)
  store i8 %1435, ptr %event6.i.i1138.i, align 1
  %add.i1139.i = add i32 %1416, 1
  %and.i1140.i = and i32 %add.i1139.i, 31
  store i32 %and.i1140.i, ptr %esp_event_cur.i1312.i, align 4
  %1437 = load i32, ptr @esp_debug, align 4
  %and3.i1141.i = and i32 %1437, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i1141.i)
  %tobool.not.i1142.i = icmp eq i32 %and3.i1141.i, 0
  br i1 %tobool.not.i1142.i, label %if.then376.i.if.end378.sink.split.i_crit_edge, label %if.then376.i.if.end378.sink.split.sink.split.i_crit_edge

if.then376.i.if.end378.sink.split.sink.split.i_crit_edge: ; preds = %if.then376.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end378.sink.split.sink.split.i

if.then376.i.if.end378.sink.split.i_crit_edge:    ; preds = %if.then376.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end378.sink.split.i

if.end378.sink.split.sink.split.i:                ; preds = %if.then376.i.if.end378.sink.split.sink.split.i_crit_edge, %if.then363.i.if.end378.sink.split.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.then363.i.if.end378.sink.split.sink.split.i_crit_edge ], [ 0, %if.then376.i.if.end378.sink.split.sink.split.i_crit_edge ]
  %.sink1481.ph.i = phi i8 [ 1, %if.then363.i.if.end378.sink.split.sink.split.i_crit_edge ], [ 0, %if.then376.i.if.end378.sink.split.sink.split.i_crit_edge ]
  %1438 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1438)
  %1439 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i1144.i = getelementptr inbounds %struct.Scsi_Host, ptr %1439, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i1144.i, ptr noundef nonnull @.str, i32 noundef %.sink.i) #13
  br label %if.end378.sink.split.i

if.end378.sink.split.i:                           ; preds = %if.end378.sink.split.sink.split.i, %if.then376.i.if.end378.sink.split.i_crit_edge, %if.then363.i.if.end378.sink.split.i_crit_edge
  %.sink1481.i = phi i8 [ 1, %if.then363.i.if.end378.sink.split.i_crit_edge ], [ 0, %if.then376.i.if.end378.sink.split.i_crit_edge ], [ %.sink1481.ph.i, %if.end378.sink.split.sink.split.i ]
  %1440 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1440)
  %1441 = load ptr, ptr %ops, align 4
  %1442 = ptrtoint ptr %1441 to i32
  call void @__asan_load4_noabort(i32 %1442)
  %1443 = load ptr, ptr %1441, align 4
  call void %1443(ptr noundef %esp, i8 noundef zeroext %.sink1481.i, i32 noundef 3) #10
  br label %if.end378.i

if.end378.i:                                      ; preds = %if.end378.sink.split.i, %if.end371.i.if.end378.i_crit_edge
  %1444 = ptrtoint ptr %msg_out_len365.i to i32
  call void @__asan_store4_noabort(i32 %1444)
  store i32 0, ptr %msg_out_len365.i, align 4
  br label %again.backedge.i

sw.bb380.i:                                       ; preds = %do.end5.i
  %1445 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1445)
  %1446 = load i8, ptr %ireg, align 1
  %conv382.i = zext i8 %1446 to i32
  %and383.i = and i32 %conv382.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and383.i)
  %tobool384.not.i = icmp eq i32 %and383.i, 0
  br i1 %tobool384.not.i, label %if.end407.i, label %if.then385.i

if.then385.i:                                     ; preds = %sw.bb380.i
  %1447 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %1447)
  %1448 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1448)
  %cmp387.i = icmp eq i32 %1448, 8
  br i1 %cmp387.i, label %if.then389.i, label %if.else398.i

if.then389.i:                                     ; preds = %if.then385.i
  %1449 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1449)
  %1450 = load ptr, ptr %ops, align 4
  %esp_read8391.i = getelementptr inbounds %struct.esp_driver_ops, ptr %1450, i32 0, i32 1
  %1451 = ptrtoint ptr %esp_read8391.i to i32
  call void @__asan_load4_noabort(i32 %1451)
  %1452 = load ptr, ptr %esp_read8391.i, align 4
  %call392.i = call zeroext i8 %1452(ptr noundef %esp, i32 noundef 9) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call392.i)
  %tobool395.not.i = icmp sgt i8 %call392.i, -1
  br i1 %tobool395.not.i, label %if.then389.i.if.end404.sink.split.i_crit_edge, label %if.then389.i.if.end404.i_crit_edge

if.then389.i.if.end404.i_crit_edge:               ; preds = %if.then389.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end404.i

if.then389.i.if.end404.sink.split.i_crit_edge:    ; preds = %if.then389.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end404.sink.split.i

if.else398.i:                                     ; preds = %if.then385.i
  %1453 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1453)
  %1454 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i1166.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1454
  %1455 = ptrtoint ptr %arrayidx.i1166.i to i32
  call void @__asan_store1_noabort(i32 %1455)
  store i8 2, ptr %arrayidx.i1166.i, align 1
  %val1.i1167.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1454, i32 1
  %1456 = ptrtoint ptr %val1.i1167.i to i32
  call void @__asan_store1_noabort(i32 %1456)
  store i8 1, ptr %val1.i1167.i, align 1
  %1457 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1457)
  %1458 = load i8, ptr %sreg, align 4
  %sreg1.i.i1169.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1454, i32 2
  %1459 = ptrtoint ptr %sreg1.i.i1169.i to i32
  call void @__asan_store1_noabort(i32 %1459)
  store i8 %1458, ptr %sreg1.i.i1169.i, align 1
  %1460 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1460)
  %1461 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i1171.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1454, i32 3
  %1462 = ptrtoint ptr %seqreg2.i.i1171.i to i32
  call void @__asan_store1_noabort(i32 %1462)
  store i8 %1461, ptr %seqreg2.i.i1171.i, align 1
  %1463 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1463)
  %1464 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i1173.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1454, i32 4
  %1465 = ptrtoint ptr %sreg23.i.i1173.i to i32
  call void @__asan_store1_noabort(i32 %1465)
  store i8 %1464, ptr %sreg23.i.i1173.i, align 1
  %1466 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1466)
  %1467 = load i8, ptr %ireg, align 1
  %ireg4.i.i1175.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1454, i32 5
  %1468 = ptrtoint ptr %ireg4.i.i1175.i to i32
  call void @__asan_store1_noabort(i32 %1468)
  store i8 %1467, ptr %ireg4.i.i1175.i, align 1
  %1469 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1469)
  %1470 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i1177.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1454, i32 6
  %1471 = ptrtoint ptr %select_state5.i.i1177.i to i32
  call void @__asan_store1_noabort(i32 %1471)
  store i8 %1470, ptr %select_state5.i.i1177.i, align 1
  %1472 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1472)
  %1473 = load i8, ptr %event.i, align 1
  %event6.i.i1179.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1454, i32 7
  %1474 = ptrtoint ptr %event6.i.i1179.i to i32
  call void @__asan_store1_noabort(i32 %1474)
  store i8 %1473, ptr %event6.i.i1179.i, align 1
  %add.i1180.i = add i32 %1454, 1
  %and.i1181.i = and i32 %add.i1180.i, 31
  store i32 %and.i1181.i, ptr %esp_event_cur.i1312.i, align 4
  %1475 = load i32, ptr @esp_debug, align 4
  %and3.i1182.i = and i32 %1475, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i1182.i)
  %tobool.not.i1183.i = icmp eq i32 %and3.i1182.i, 0
  br i1 %tobool.not.i1183.i, label %if.else398.i.scsi_esp_cmd.exit1188.i_crit_edge, label %do.end.i1186.i

if.else398.i.scsi_esp_cmd.exit1188.i_crit_edge:   ; preds = %if.else398.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit1188.i

do.end.i1186.i:                                   ; preds = %if.else398.i
  call void @__sanitizer_cov_trace_pc() #12
  %1476 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1476)
  %1477 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i1185.i = getelementptr inbounds %struct.Scsi_Host, ptr %1477, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i1185.i, ptr noundef nonnull @.str, i32 noundef 1) #13
  br label %scsi_esp_cmd.exit1188.i

scsi_esp_cmd.exit1188.i:                          ; preds = %do.end.i1186.i, %if.else398.i.scsi_esp_cmd.exit1188.i_crit_edge
  %1478 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1478)
  %1479 = load ptr, ptr %ops, align 4
  %1480 = ptrtoint ptr %1479 to i32
  call void @__asan_load4_noabort(i32 %1480)
  %1481 = load ptr, ptr %1479, align 4
  call void %1481(ptr noundef %esp, i8 noundef zeroext 1, i32 noundef 3) #10
  %1482 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %1482)
  %1483 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1483)
  %cmp400.i = icmp eq i32 %1483, 0
  br i1 %cmp400.i, label %scsi_esp_cmd.exit1188.i.if.end404.sink.split.i_crit_edge, label %scsi_esp_cmd.exit1188.i.if.end404.i_crit_edge

scsi_esp_cmd.exit1188.i.if.end404.i_crit_edge:    ; preds = %scsi_esp_cmd.exit1188.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end404.i

scsi_esp_cmd.exit1188.i.if.end404.sink.split.i_crit_edge: ; preds = %scsi_esp_cmd.exit1188.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end404.sink.split.i

if.end404.sink.split.i:                           ; preds = %scsi_esp_cmd.exit1188.i.if.end404.sink.split.i_crit_edge, %if.then389.i.if.end404.sink.split.i_crit_edge
  %.sink1484.i = phi i8 [ 1, %if.then389.i.if.end404.sink.split.i_crit_edge ], [ 0, %scsi_esp_cmd.exit1188.i.if.end404.sink.split.i_crit_edge ]
  %1484 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1484)
  %1485 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i338 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1485
  %1486 = ptrtoint ptr %arrayidx.i338 to i32
  call void @__asan_store1_noabort(i32 %1486)
  store i8 2, ptr %arrayidx.i338, align 1
  %val1.i339 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1485, i32 1
  %1487 = ptrtoint ptr %val1.i339 to i32
  call void @__asan_store1_noabort(i32 %1487)
  store i8 %.sink1484.i, ptr %val1.i339, align 1
  %1488 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1488)
  %1489 = load i8, ptr %sreg, align 4
  %sreg1.i.i341 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1485, i32 2
  %1490 = ptrtoint ptr %sreg1.i.i341 to i32
  call void @__asan_store1_noabort(i32 %1490)
  store i8 %1489, ptr %sreg1.i.i341, align 1
  %1491 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1491)
  %1492 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i343 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1485, i32 3
  %1493 = ptrtoint ptr %seqreg2.i.i343 to i32
  call void @__asan_store1_noabort(i32 %1493)
  store i8 %1492, ptr %seqreg2.i.i343, align 1
  %1494 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1494)
  %1495 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i345 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1485, i32 4
  %1496 = ptrtoint ptr %sreg23.i.i345 to i32
  call void @__asan_store1_noabort(i32 %1496)
  store i8 %1495, ptr %sreg23.i.i345, align 1
  %1497 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1497)
  %1498 = load i8, ptr %ireg, align 1
  %ireg4.i.i347 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1485, i32 5
  %1499 = ptrtoint ptr %ireg4.i.i347 to i32
  call void @__asan_store1_noabort(i32 %1499)
  store i8 %1498, ptr %ireg4.i.i347, align 1
  %1500 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1500)
  %1501 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i349 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1485, i32 6
  %1502 = ptrtoint ptr %select_state5.i.i349 to i32
  call void @__asan_store1_noabort(i32 %1502)
  store i8 %1501, ptr %select_state5.i.i349, align 1
  %1503 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1503)
  %1504 = load i8, ptr %event.i, align 1
  %event6.i.i351 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1485, i32 7
  %1505 = ptrtoint ptr %event6.i.i351 to i32
  call void @__asan_store1_noabort(i32 %1505)
  store i8 %1504, ptr %event6.i.i351, align 1
  %add.i352 = add i32 %1485, 1
  %and.i353 = and i32 %add.i352, 31
  store i32 %and.i353, ptr %esp_event_cur.i1312.i, align 4
  %1506 = load i32, ptr @esp_debug, align 4
  %and3.i354 = and i32 %1506, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i354)
  %tobool.not.i355 = icmp eq i32 %and3.i354, 0
  br i1 %tobool.not.i355, label %if.end404.sink.split.i.scsi_esp_cmd.exit_crit_edge, label %do.end.i359

if.end404.sink.split.i.scsi_esp_cmd.exit_crit_edge: ; preds = %if.end404.sink.split.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit

do.end.i359:                                      ; preds = %if.end404.sink.split.i
  call void @__sanitizer_cov_trace_pc() #12
  %1507 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1507)
  %1508 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i357 = getelementptr inbounds %struct.Scsi_Host, ptr %1508, i32 0, i32 49
  %conv.i358 = zext i8 %.sink1484.i to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i357, ptr noundef nonnull @.str, i32 noundef %conv.i358) #13
  br label %scsi_esp_cmd.exit

scsi_esp_cmd.exit:                                ; preds = %do.end.i359, %if.end404.sink.split.i.scsi_esp_cmd.exit_crit_edge
  %1509 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1509)
  %1510 = load ptr, ptr %ops, align 4
  %1511 = ptrtoint ptr %1510 to i32
  call void @__asan_load4_noabort(i32 %1511)
  %1512 = load ptr, ptr %1510, align 4
  call void %1512(ptr noundef %esp, i8 noundef zeroext %.sink1484.i, i32 noundef 3) #10
  br label %if.end404.i

if.end404.i:                                      ; preds = %scsi_esp_cmd.exit, %scsi_esp_cmd.exit1188.i.if.end404.i_crit_edge, %if.then389.i.if.end404.i_crit_edge
  %1513 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1513)
  %1514 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i1190.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1514
  %1515 = ptrtoint ptr %arrayidx.i1190.i to i32
  call void @__asan_store1_noabort(i32 %1515)
  store i8 2, ptr %arrayidx.i1190.i, align 1
  %val1.i1191.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1514, i32 1
  %1516 = ptrtoint ptr %val1.i1191.i to i32
  call void @__asan_store1_noabort(i32 %1516)
  store i8 16, ptr %val1.i1191.i, align 1
  %1517 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1517)
  %1518 = load i8, ptr %sreg, align 4
  %sreg1.i.i1193.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1514, i32 2
  %1519 = ptrtoint ptr %sreg1.i.i1193.i to i32
  call void @__asan_store1_noabort(i32 %1519)
  store i8 %1518, ptr %sreg1.i.i1193.i, align 1
  %1520 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1520)
  %1521 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i1195.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1514, i32 3
  %1522 = ptrtoint ptr %seqreg2.i.i1195.i to i32
  call void @__asan_store1_noabort(i32 %1522)
  store i8 %1521, ptr %seqreg2.i.i1195.i, align 1
  %1523 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1523)
  %1524 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i1197.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1514, i32 4
  %1525 = ptrtoint ptr %sreg23.i.i1197.i to i32
  call void @__asan_store1_noabort(i32 %1525)
  store i8 %1524, ptr %sreg23.i.i1197.i, align 1
  %1526 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1526)
  %1527 = load i8, ptr %ireg, align 1
  %ireg4.i.i1199.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1514, i32 5
  %1528 = ptrtoint ptr %ireg4.i.i1199.i to i32
  call void @__asan_store1_noabort(i32 %1528)
  store i8 %1527, ptr %ireg4.i.i1199.i, align 1
  %1529 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1529)
  %1530 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i1201.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1514, i32 6
  %1531 = ptrtoint ptr %select_state5.i.i1201.i to i32
  call void @__asan_store1_noabort(i32 %1531)
  store i8 %1530, ptr %select_state5.i.i1201.i, align 1
  %1532 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1532)
  %1533 = load i8, ptr %event.i, align 1
  %event6.i.i1203.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1514, i32 7
  %1534 = ptrtoint ptr %event6.i.i1203.i to i32
  call void @__asan_store1_noabort(i32 %1534)
  store i8 %1533, ptr %event6.i.i1203.i, align 1
  %add.i1204.i = add i32 %1514, 1
  %and.i1205.i = and i32 %add.i1204.i, 31
  store i32 %and.i1205.i, ptr %esp_event_cur.i1312.i, align 4
  %1535 = load i32, ptr @esp_debug, align 4
  %and3.i1206.i = and i32 %1535, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i1206.i)
  %tobool.not.i1207.i = icmp eq i32 %and3.i1206.i, 0
  br i1 %tobool.not.i1207.i, label %if.end404.i.scsi_esp_cmd.exit1212.i_crit_edge, label %do.end.i1210.i

if.end404.i.scsi_esp_cmd.exit1212.i_crit_edge:    ; preds = %if.end404.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit1212.i

do.end.i1210.i:                                   ; preds = %if.end404.i
  call void @__sanitizer_cov_trace_pc() #12
  %1536 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1536)
  %1537 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i1209.i = getelementptr inbounds %struct.Scsi_Host, ptr %1537, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i1209.i, ptr noundef nonnull @.str, i32 noundef 16) #13
  br label %scsi_esp_cmd.exit1212.i

scsi_esp_cmd.exit1212.i:                          ; preds = %do.end.i1210.i, %if.end404.i.scsi_esp_cmd.exit1212.i_crit_edge
  %1538 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1538)
  %1539 = load ptr, ptr %ops, align 4
  %1540 = ptrtoint ptr %1539 to i32
  call void @__asan_load4_noabort(i32 %1540)
  %1541 = load ptr, ptr %1539, align 4
  call void %1541(ptr noundef %esp, i8 noundef zeroext 16, i32 noundef 3) #10
  %1542 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1542)
  %1543 = load i32, ptr %flags, align 4
  %or406.i = or i32 %1543, 16
  store i32 %or406.i, ptr %flags, align 4
  br label %cleanup

if.end407.i:                                      ; preds = %sw.bb380.i
  %and410.i = and i32 %conv382.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and410.i)
  %tobool411.not.i = icmp eq i32 %and410.i, 0
  br i1 %tobool411.not.i, label %do.end465.i, label %if.then412.i

if.then412.i:                                     ; preds = %if.end407.i
  %1544 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %1544)
  %1545 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1545)
  %cmp414.i = icmp eq i32 %1545, 8
  br i1 %cmp414.i, label %if.then416.i, label %if.else418.i

if.then416.i:                                     ; preds = %if.then412.i
  call void @__sanitizer_cov_trace_pc() #12
  %1546 = ptrtoint ptr %fifo.i279 to i32
  call void @__asan_load1_noabort(i32 %1546)
  %1547 = load i8, ptr %fifo.i279, align 4
  br label %if.end422.i

if.else418.i:                                     ; preds = %if.then412.i
  call void @__sanitizer_cov_trace_pc() #12
  %1548 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1548)
  %1549 = load ptr, ptr %ops, align 4
  %esp_read8420.i = getelementptr inbounds %struct.esp_driver_ops, ptr %1549, i32 0, i32 1
  %1550 = ptrtoint ptr %esp_read8420.i to i32
  call void @__asan_load4_noabort(i32 %1550)
  %1551 = load ptr, ptr %esp_read8420.i, align 4
  %call421.i = call zeroext i8 %1551(ptr noundef %esp, i32 noundef 2) #10
  br label %if.end422.i

if.end422.i:                                      ; preds = %if.else418.i, %if.then416.i
  %val.0.i = phi i8 [ %1547, %if.then416.i ], [ %call421.i, %if.else418.i ]
  %1552 = ptrtoint ptr %msg_in_len.i to i32
  call void @__asan_load4_noabort(i32 %1552)
  %1553 = load i32, ptr %msg_in_len.i, align 4
  %inc423.i = add i32 %1553, 1
  store i32 %inc423.i, ptr %msg_in_len.i, align 4
  %arrayidx424.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 28, i32 %1553
  %1554 = ptrtoint ptr %arrayidx424.i to i32
  call void @__asan_store1_noabort(i32 %1554)
  store i8 %val.0.i, ptr %arrayidx424.i, align 1
  %1555 = load i32, ptr @esp_debug, align 4
  %and426.i = and i32 %1555, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and426.i)
  %tobool427.not.i = icmp eq i32 %and426.i, 0
  br i1 %tobool427.not.i, label %if.end422.i.do.end437.i_crit_edge, label %do.end431.i

if.end422.i.do.end437.i_crit_edge:                ; preds = %if.end422.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end437.i

do.end431.i:                                      ; preds = %if.end422.i
  call void @__sanitizer_cov_trace_pc() #12
  %1556 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1556)
  %1557 = load ptr, ptr %host.i223, align 4
  %shost_gendev433.i = getelementptr inbounds %struct.Scsi_Host, ptr %1557, i32 0, i32 49
  %conv434.i = zext i8 %val.0.i to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev433.i, ptr noundef nonnull @.str.134, i32 noundef %conv434.i) #13
  br label %do.end437.i

do.end437.i:                                      ; preds = %do.end431.i, %if.end422.i.do.end437.i_crit_edge
  %1558 = ptrtoint ptr %msg_in.i.i to i32
  call void @__asan_load1_noabort(i32 %1558)
  %1559 = load i8, ptr %msg_in.i.i, align 4
  %1560 = ptrtoint ptr %msg_in_len.i to i32
  call void @__asan_load4_noabort(i32 %1560)
  %1561 = load i32, ptr %msg_in_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1559)
  %tobool.not.i1213.i = icmp sgt i8 %1559, -1
  br i1 %tobool.not.i1213.i, label %if.end.i1217.i, label %do.end.i1216.i

do.end.i1216.i:                                   ; preds = %do.end437.i
  call void @__sanitizer_cov_trace_pc() #12
  %1562 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1562)
  %1563 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i1215.i = getelementptr inbounds %struct.Scsi_Host, ptr %1563, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %shost_gendev.i1215.i, ptr noundef nonnull @.str.147) #13
  br label %if.then440.i

if.end.i1217.i:                                   ; preds = %do.end437.i
  %1564 = zext i8 %1559 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1564, ptr @__sancov_gen_cov_switch_values.179)
  switch i8 %1559, label %if.end.i1217.i.do_reject.i.i_crit_edge [
    i8 1, label %sw.bb.i.i
    i8 35, label %sw.bb12.i.i
    i8 8, label %if.end.i1217.i.if.then440.i_crit_edge
    i8 3, label %sw.bb34.i.i
    i8 2, label %sw.bb36.i.i
    i8 0, label %if.end.i1217.i.sw.bb38.i.i_crit_edge
    i8 4, label %if.end.i1217.i.sw.bb38.i.i_crit_edge664
    i8 7, label %sw.bb42.i.i
  ]

if.end.i1217.i.sw.bb38.i.i_crit_edge664:          ; preds = %if.end.i1217.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb38.i.i

if.end.i1217.i.sw.bb38.i.i_crit_edge:             ; preds = %if.end.i1217.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb38.i.i

if.end.i1217.i.if.then440.i_crit_edge:            ; preds = %if.end.i1217.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then440.i

if.end.i1217.i.do_reject.i.i_crit_edge:           ; preds = %if.end.i1217.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_reject.i.i

sw.bb.i.i:                                        ; preds = %if.end.i1217.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1561)
  %cmp.i1218.i = icmp eq i32 %1561, 1
  br i1 %cmp.i1218.i, label %sw.bb.i.i.if.end442.i_crit_edge, label %if.end4.i.i

sw.bb.i.i.if.end442.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end442.i

if.end4.i.i:                                      ; preds = %sw.bb.i.i
  %1565 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %1565)
  %1566 = load i8, ptr %arrayidx18.i.i, align 1
  %conv7.i.i = zext i8 %1566 to i32
  %add.i1219.i = add nuw nsw i32 %conv7.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %1561, i32 %add.i1219.i)
  %cmp8.i.i = icmp slt i32 %1561, %add.i1219.i
  br i1 %cmp8.i.i, label %if.end4.i.i.if.end442.i_crit_edge, label %if.end11.i.i

if.end4.i.i.if.end442.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end442.i

if.end11.i.i:                                     ; preds = %if.end4.i.i
  %1567 = ptrtoint ptr %active_cmd85.i to i32
  call void @__asan_load4_noabort(i32 %1567)
  %1568 = load ptr, ptr %active_cmd85.i, align 4
  %cmd1.i.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1568, i32 0, i32 1
  %1569 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1569)
  %1570 = load ptr, ptr %cmd1.i.i.i, align 4
  %device.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1570, i32 0, i32 1
  %1571 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1571)
  %1572 = load ptr, ptr %device.i.i.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %1572, i32 0, i32 16
  %1573 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1573)
  %1574 = load i32, ptr %id.i.i.i, align 8
  %arrayidx.i.i1220.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1574
  %1575 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1575)
  %1576 = load i8, ptr %arrayidx2.i.i.i, align 2
  %1577 = zext i8 %1576 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1577, ptr @__sancov_gen_cov_switch_values.180)
  switch i8 %1576, label %do.end.i.i.i281 [
    i8 1, label %if.then.i.i.i
    i8 3, label %if.then9.i.i.i
  ]

if.then.i.i.i:                                    ; preds = %if.end11.i.i
  %1578 = ptrtoint ptr %arrayidx.i29.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1578)
  %1579 = load i8, ptr %arrayidx.i29.i.i.i, align 1
  %1580 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1580)
  %1581 = load i8, ptr %arrayidx2.i.i.i.i, align 4
  %flags.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1574, i32 3
  %1582 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1582)
  %1583 = load i8, ptr %flags.i.i.i.i, align 1
  %1584 = and i8 %1583, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1584)
  %tobool.not.i.i.i.i = icmp eq i8 %1584, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %1581)
  %cmp.i.i.i.i = icmp ugt i8 %1581, 15
  %or.cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i1 true, i1 %cmp.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %if.then.i.i.i.do_reject.i.i.i.i_crit_edge, label %if.end6.i.i.i.i

if.then.i.i.i.do_reject.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_reject.i.i.i.i

if.end6.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1581)
  %tobool7.not.i.i.i.i = icmp eq i8 %1581, 0
  br i1 %tobool7.not.i.i.i.i, label %if.end6.i.i.i.i.if.end33.i.i.i.i_crit_edge, label %if.then8.i.i.i.i

if.end6.i.i.i.i.if.end33.i.i.i.i_crit_edge:       ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %if.end6.i.i.i.i
  %conv9.i.i.i.i = zext i8 %1579 to i32
  %1585 = ptrtoint ptr %max_period.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1585)
  %1586 = load i32, ptr %max_period.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1586, i32 %conv9.i.i.i.i)
  %cmp10.i.i.i.i = icmp ult i32 %1586, %conv9.i.i.i.i
  br i1 %cmp10.i.i.i.i, label %do_sdtr.i.i.i.i, label %if.end13.i.i.i.i

if.end13.i.i.i.i:                                 ; preds = %if.then8.i.i.i.i
  %1587 = ptrtoint ptr %min_period.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1587)
  %1588 = load i32, ptr %min_period.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1588, i32 %conv9.i.i.i.i)
  %cmp15.i.i.i.i = icmp ugt i32 %1588, %conv9.i.i.i.i
  br i1 %cmp15.i.i.i.i, label %if.end13.i.i.i.i.do_reject.i.i.i.i_crit_edge, label %if.end18.i.i.i.i

if.end13.i.i.i.i.do_reject.i.i.i.i_crit_edge:     ; preds = %if.end13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_reject.i.i.i.i

if.end18.i.i.i.i:                                 ; preds = %if.end13.i.i.i.i
  %1589 = ptrtoint ptr %ccycle.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1589)
  %1590 = load i32, ptr %ccycle.i.i.i.i, align 4
  %div.i.i.i.i = udiv i32 %1590, 1000
  %shl.i.i.i.i = shl nuw nsw i32 %conv9.i.i.i.i, 2
  %add.i.i.i.i = add nsw i32 %shl.i.i.i.i, -1
  %sub.i.i.i.i = add nsw i32 %add.i.i.i.i, %div.i.i.i.i
  %div20.i.i.i.i = sdiv i32 %sub.i.i.i.i, %div.i.i.i.i
  %conv21.i.i.i.i = trunc i32 %div20.i.i.i.i to i8
  %conv22.i.i.i.i = and i32 %div20.i.i.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv22.i.i.i.i)
  %tobool23.not.i.i.i.i = icmp eq i32 %conv22.i.i.i.i, 0
  br i1 %tobool23.not.i.i.i.i, label %if.end18.i.i.i.i.if.end33.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end18.i.i.i.i.if.end33.i.i.i.i_crit_edge:      ; preds = %if.end18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1591 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %1591)
  %1592 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1592)
  %cmp24.i.i.i.i = icmp ugt i32 %1592, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %conv22.i.i.i.i)
  %cmp28.i.i.i.i = icmp ugt i32 %conv22.i.i.i.i, 49
  %or.cond76.i.i.i.i = select i1 %cmp24.i.i.i.i, i1 %cmp28.i.i.i.i, i1 false
  %dec.i.i.i.i = sext i1 %or.cond76.i.i.i.i to i8
  %spec.select.i.i.i.i = add i8 %dec.i.i.i.i, %conv21.i.i.i.i
  br label %if.end33.i.i.i.i

if.end33.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i, %if.end18.i.i.i.i.if.end33.i.i.i.i_crit_edge, %if.end6.i.i.i.i.if.end33.i.i.i.i_crit_edge
  %stp.2.i.i.i.i = phi i8 [ 0, %if.end6.i.i.i.i.if.end33.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i, %land.lhs.true.i.i.i.i ], [ %conv21.i.i.i.i, %if.end18.i.i.i.i.if.end33.i.i.i.i_crit_edge ]
  call fastcc void @esp_setsync(ptr noundef %esp, ptr noundef %arrayidx.i.i1220.i, i8 noundef zeroext %1579, i8 noundef zeroext %1581, i8 noundef zeroext %stp.2.i.i.i.i, i8 noundef zeroext %1581) #10
  br label %if.then440.i

do_reject.i.i.i.i:                                ; preds = %if.end13.i.i.i.i.do_reject.i.i.i.i_crit_edge, %if.then.i.i.i.do_reject.i.i.i.i_crit_edge
  %1593 = ptrtoint ptr %msg_out.i132.i.i to i32
  call void @__asan_store1_noabort(i32 %1593)
  store i8 7, ptr %msg_out.i132.i.i, align 4
  %1594 = ptrtoint ptr %msg_out_len365.i to i32
  call void @__asan_store4_noabort(i32 %1594)
  store i32 1, ptr %msg_out_len365.i, align 4
  %1595 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1595)
  %1596 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1596
  %1597 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1597)
  store i8 2, ptr %arrayidx.i.i.i.i.i, align 1
  %val1.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1596, i32 1
  %1598 = ptrtoint ptr %val1.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1598)
  store i8 26, ptr %val1.i.i.i.i.i, align 1
  %1599 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1599)
  %1600 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1596, i32 2
  %1601 = ptrtoint ptr %sreg1.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1601)
  store i8 %1600, ptr %sreg1.i.i.i.i.i.i, align 1
  %1602 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1602)
  %1603 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1596, i32 3
  %1604 = ptrtoint ptr %seqreg2.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1604)
  store i8 %1603, ptr %seqreg2.i.i.i.i.i.i, align 1
  %1605 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1605)
  %1606 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1596, i32 4
  %1607 = ptrtoint ptr %sreg23.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1607)
  store i8 %1606, ptr %sreg23.i.i.i.i.i.i, align 1
  %1608 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1608)
  %1609 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1596, i32 5
  %1610 = ptrtoint ptr %ireg4.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1610)
  store i8 %1609, ptr %ireg4.i.i.i.i.i.i, align 1
  %1611 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1611)
  %1612 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1596, i32 6
  %1613 = ptrtoint ptr %select_state5.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1613)
  store i8 %1612, ptr %select_state5.i.i.i.i.i.i, align 1
  %1614 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1614)
  %1615 = load i8, ptr %event.i, align 1
  %event6.i.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1596, i32 7
  %1616 = ptrtoint ptr %event6.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1616)
  store i8 %1615, ptr %event6.i.i.i.i.i.i, align 1
  %add.i.i.i.i.i = add i32 %1596, 1
  %and.i.i.i.i.i = and i32 %add.i.i.i.i.i, 31
  store i32 %and.i.i.i.i.i, ptr %esp_event_cur.i1312.i, align 4
  %1617 = load i32, ptr @esp_debug, align 4
  %and3.i.i.i.i.i = and i32 %1617, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and3.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %do_reject.i.i.i.i.scsi_esp_cmd.exit.i.i.i.i_crit_edge, label %do.end.i.i.i.i.i

do_reject.i.i.i.i.scsi_esp_cmd.exit.i.i.i.i_crit_edge: ; preds = %do_reject.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %do_reject.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1618 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1618)
  %1619 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1619, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i.i.i.i.i, ptr noundef nonnull @.str, i32 noundef 26) #13
  br label %scsi_esp_cmd.exit.i.i.i.i

scsi_esp_cmd.exit.i.i.i.i:                        ; preds = %do.end.i.i.i.i.i, %do_reject.i.i.i.i.scsi_esp_cmd.exit.i.i.i.i_crit_edge
  %1620 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1620)
  %1621 = load ptr, ptr %ops, align 4
  %1622 = ptrtoint ptr %1621 to i32
  call void @__asan_load4_noabort(i32 %1622)
  %1623 = load ptr, ptr %1621, align 4
  call void %1623(ptr noundef %esp, i8 noundef zeroext 26, i32 noundef 3) #10
  br label %if.then440.i

do_sdtr.i.i.i.i:                                  ; preds = %if.then8.i.i.i.i
  %nego_goal_period.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1574, i32 4
  %1624 = ptrtoint ptr %nego_goal_period.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1624)
  store i8 0, ptr %nego_goal_period.i.i.i.i, align 4
  %nego_goal_offset.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1574, i32 5
  %1625 = ptrtoint ptr %nego_goal_offset.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1625)
  store i8 0, ptr %nego_goal_offset.i.i.i.i, align 1
  %call.i.i.i.i = call i32 @spi_populate_sync_msg(ptr noundef %msg_out.i132.i.i, i32 noundef 0, i32 noundef 0) #10
  %1626 = ptrtoint ptr %msg_out_len365.i to i32
  call void @__asan_store4_noabort(i32 %1626)
  store i32 %call.i.i.i.i, ptr %msg_out_len365.i, align 4
  %1627 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1627)
  %1628 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i78.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1628
  %1629 = ptrtoint ptr %arrayidx.i78.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1629)
  store i8 2, ptr %arrayidx.i78.i.i.i.i, align 1
  %val1.i79.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1628, i32 1
  %1630 = ptrtoint ptr %val1.i79.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1630)
  store i8 26, ptr %val1.i79.i.i.i.i, align 1
  %1631 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1631)
  %1632 = load i8, ptr %sreg, align 4
  %sreg1.i.i81.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1628, i32 2
  %1633 = ptrtoint ptr %sreg1.i.i81.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1633)
  store i8 %1632, ptr %sreg1.i.i81.i.i.i.i, align 1
  %1634 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1634)
  %1635 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i83.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1628, i32 3
  %1636 = ptrtoint ptr %seqreg2.i.i83.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1636)
  store i8 %1635, ptr %seqreg2.i.i83.i.i.i.i, align 1
  %1637 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1637)
  %1638 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i85.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1628, i32 4
  %1639 = ptrtoint ptr %sreg23.i.i85.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1639)
  store i8 %1638, ptr %sreg23.i.i85.i.i.i.i, align 1
  %1640 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1640)
  %1641 = load i8, ptr %ireg, align 1
  %ireg4.i.i87.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1628, i32 5
  %1642 = ptrtoint ptr %ireg4.i.i87.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1642)
  store i8 %1641, ptr %ireg4.i.i87.i.i.i.i, align 1
  %1643 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1643)
  %1644 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i89.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1628, i32 6
  %1645 = ptrtoint ptr %select_state5.i.i89.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1645)
  store i8 %1644, ptr %select_state5.i.i89.i.i.i.i, align 1
  %1646 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1646)
  %1647 = load i8, ptr %event.i, align 1
  %event6.i.i91.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1628, i32 7
  %1648 = ptrtoint ptr %event6.i.i91.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1648)
  store i8 %1647, ptr %event6.i.i91.i.i.i.i, align 1
  %add.i92.i.i.i.i = add i32 %1628, 1
  %and.i93.i.i.i.i = and i32 %add.i92.i.i.i.i, 31
  store i32 %and.i93.i.i.i.i, ptr %esp_event_cur.i1312.i, align 4
  %1649 = load i32, ptr @esp_debug, align 4
  %and3.i94.i.i.i.i = and i32 %1649, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i94.i.i.i.i)
  %tobool.not.i95.i.i.i.i = icmp eq i32 %and3.i94.i.i.i.i, 0
  br i1 %tobool.not.i95.i.i.i.i, label %do_sdtr.i.i.i.i.scsi_esp_cmd.exit100.i.i.i.i_crit_edge, label %do.end.i98.i.i.i.i

do_sdtr.i.i.i.i.scsi_esp_cmd.exit100.i.i.i.i_crit_edge: ; preds = %do_sdtr.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit100.i.i.i.i

do.end.i98.i.i.i.i:                               ; preds = %do_sdtr.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1650 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1650)
  %1651 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i97.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1651, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i97.i.i.i.i, ptr noundef nonnull @.str, i32 noundef 26) #13
  br label %scsi_esp_cmd.exit100.i.i.i.i

scsi_esp_cmd.exit100.i.i.i.i:                     ; preds = %do.end.i98.i.i.i.i, %do_sdtr.i.i.i.i.scsi_esp_cmd.exit100.i.i.i.i_crit_edge
  %1652 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1652)
  %1653 = load ptr, ptr %ops, align 4
  %1654 = ptrtoint ptr %1653 to i32
  call void @__asan_load4_noabort(i32 %1654)
  %1655 = load ptr, ptr %1653, align 4
  call void %1655(ptr noundef %esp, i8 noundef zeroext 26, i32 noundef 3) #10
  br label %if.then440.i

if.then9.i.i.i:                                   ; preds = %if.end11.i.i
  %1656 = ptrtoint ptr %arrayidx.i29.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1656)
  %1657 = load i8, ptr %arrayidx.i29.i.i.i, align 1
  %1658 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %1658)
  %1659 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1659)
  %cmp.not.i.i.i.i = icmp eq i32 %1659, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1657)
  %switch.i.i.i.i = icmp ult i8 %1657, 2
  %or.cond.i31.i.i.i = select i1 %cmp.not.i.i.i.i, i1 %switch.i.i.i.i, i1 false
  br i1 %or.cond.i31.i.i.i, label %if.end7.i.i.i.i, label %if.then9.i.i.i.do_reject.i59.i.i.i_crit_edge

if.then9.i.i.i.do_reject.i59.i.i.i_crit_edge:     ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_reject.i59.i.i.i

if.end7.i.i.i.i:                                  ; preds = %if.then9.i.i.i
  %flags.i32.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1574, i32 3
  %1660 = ptrtoint ptr %flags.i32.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1660)
  %1661 = load i8, ptr %flags.i32.i.i.i, align 1
  %1662 = and i8 %1661, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1662)
  %tobool.not.i33.i.i.i = icmp eq i8 %1662, 0
  br i1 %tobool.not.i33.i.i.i, label %if.end7.i.i.i.i.do_reject.i59.i.i.i_crit_edge, label %if.end10.i.i.i.i

if.end7.i.i.i.i.do_reject.i59.i.i.i_crit_edge:    ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_reject.i59.i.i.i

if.end10.i.i.i.i:                                 ; preds = %if.end7.i.i.i.i
  %esp_config3.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1574, i32 2
  %1663 = ptrtoint ptr %esp_config3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1663)
  %1664 = load i8, ptr %esp_config3.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1657)
  %cmp11.i.i.i.i = icmp eq i8 %1657, 1
  br i1 %cmp11.i.i.i.i, label %if.then13.i.i.i.i, label %if.else.i.i.i.i

if.then13.i.i.i.i:                                ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i.i.i.i = or i8 %1661, 1
  %1665 = ptrtoint ptr %flags.i32.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1665)
  store i8 %or.i.i.i.i, ptr %flags.i32.i.i.i, align 1
  %1666 = or i8 %1664, 64
  br label %if.end27.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and22.i.i.i.i = and i8 %1661, -2
  %1667 = ptrtoint ptr %flags.i32.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1667)
  store i8 %and22.i.i.i.i, ptr %flags.i32.i.i.i, align 1
  %1668 = and i8 %1664, -65
  br label %if.end27.i.i.i.i

if.end27.i.i.i.i:                                 ; preds = %if.else.i.i.i.i, %if.then13.i.i.i.i
  %cfg3.0.i.i.i.i = phi i8 [ %1666, %if.then13.i.i.i.i ], [ %1668, %if.else.i.i.i.i ]
  %1669 = ptrtoint ptr %esp_config3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1669)
  store i8 %cfg3.0.i.i.i.i, ptr %esp_config3.i.i.i.i, align 2
  %1670 = ptrtoint ptr %prev_cfg3.i.i225 to i32
  call void @__asan_store1_noabort(i32 %1670)
  store i8 %cfg3.0.i.i.i.i, ptr %prev_cfg3.i.i225, align 2
  %1671 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1671)
  %1672 = load ptr, ptr %ops, align 4
  %1673 = ptrtoint ptr %1672 to i32
  call void @__asan_load4_noabort(i32 %1673)
  %1674 = load ptr, ptr %1672, align 4
  call void %1674(ptr noundef %esp, i8 noundef zeroext %cfg3.0.i.i.i.i, i32 noundef 12) #10
  %1675 = ptrtoint ptr %flags.i32.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1675)
  %1676 = load i8, ptr %flags.i32.i.i.i, align 1
  %1677 = and i8 %1676, -5
  store i8 %1677, ptr %flags.i32.i.i.i, align 1
  %starget.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1574, i32 8
  %1678 = ptrtoint ptr %starget.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1678)
  %1679 = load ptr, ptr %starget.i.i.i.i, align 4
  %starget_data.i.i.i.i = getelementptr inbounds %struct.scsi_target, ptr %1679, i32 0, i32 15
  %1680 = ptrtoint ptr %starget_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1680)
  store i32 0, ptr %starget_data.i.i.i.i, align 4
  %1681 = load ptr, ptr %starget.i.i.i.i, align 4
  %offset.i.i.i.i = getelementptr inbounds %struct.scsi_target, ptr %1681, i32 1, i32 1
  %1682 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1682)
  store i32 0, ptr %offset.i.i.i.i, align 4
  %1683 = load ptr, ptr %starget.i.i.i.i, align 4
  %starget_data.i.i.i.i.i = getelementptr inbounds %struct.scsi_target, ptr %1683, i32 0, i32 15
  %offset.i.i.i.i.i = getelementptr inbounds %struct.scsi_target, ptr %1683, i32 1, i32 1
  %1684 = ptrtoint ptr %offset.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1684)
  %1685 = load i32, ptr %offset.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1685)
  %tobool.not.i.i34.i.i.i = icmp eq i32 %1685, 0
  br i1 %tobool.not.i.i34.i.i.i, label %land.lhs.true.i.i.i.i.i, label %if.end27.i.i.i.i.if.end.i.i.i.i.i_crit_edge

if.end27.i.i.i.i.if.end.i.i.i.i.i_crit_edge:      ; preds = %if.end27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end27.i.i.i.i
  %nego_goal_offset.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1574, i32 5
  %1686 = ptrtoint ptr %nego_goal_offset.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1686)
  %1687 = load i8, ptr %nego_goal_offset.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1687)
  %tobool1.not.i.i.i.i.i = icmp eq i8 %1687, 0
  br i1 %tobool1.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then36.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i.i

land.lhs.true.i.i.i.i.i.if.then36.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, %if.end27.i.i.i.i.if.end.i.i.i.i.i_crit_edge
  %nego_goal_offset4.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1574, i32 5
  %1688 = ptrtoint ptr %nego_goal_offset4.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1688)
  %1689 = load i8, ptr %nego_goal_offset4.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %1689 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1685, i32 %conv.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %1685, %conv.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i, label %land.lhs.true6.i.i.i.i.i, label %if.end.i.i.i.i.i.if.else41.i.i.i.i_crit_edge

if.end.i.i.i.i.i.if.else41.i.i.i.i_crit_edge:     ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else41.i.i.i.i

land.lhs.true6.i.i.i.i.i:                         ; preds = %if.end.i.i.i.i.i
  %1690 = ptrtoint ptr %starget_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1690)
  %1691 = load i32, ptr %starget_data.i.i.i.i.i, align 4
  %nego_goal_period.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1574, i32 4
  %1692 = ptrtoint ptr %nego_goal_period.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1692)
  %1693 = load i8, ptr %nego_goal_period.i.i.i.i.i, align 4
  %conv8.i.i.i.i.i = zext i8 %1693 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1691, i32 %conv8.i.i.i.i.i)
  %cmp9.i.i.i.i.i = icmp eq i32 %1691, %conv8.i.i.i.i.i
  br i1 %cmp9.i.i.i.i.i, label %land.lhs.true6.i.i.i.i.i.if.then36.i.i.i.i_crit_edge, label %land.lhs.true6.i.i.i.i.i.if.else41.i.i.i.i_crit_edge

land.lhs.true6.i.i.i.i.i.if.else41.i.i.i.i_crit_edge: ; preds = %land.lhs.true6.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else41.i.i.i.i

land.lhs.true6.i.i.i.i.i.if.then36.i.i.i.i_crit_edge: ; preds = %land.lhs.true6.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36.i.i.i.i

if.then36.i.i.i.i:                                ; preds = %land.lhs.true6.i.i.i.i.i.if.then36.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then36.i.i.i.i_crit_edge
  %1694 = ptrtoint ptr %flags.i32.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1694)
  %1695 = load i8, ptr %flags.i32.i.i.i, align 1
  %1696 = and i8 %1695, -65
  store i8 %1696, ptr %flags.i32.i.i.i, align 1
  %1697 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1697)
  %1698 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i.i36.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1698
  %1699 = ptrtoint ptr %arrayidx.i.i36.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1699)
  store i8 2, ptr %arrayidx.i.i36.i.i.i, align 1
  %val1.i.i37.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1698, i32 1
  %1700 = ptrtoint ptr %val1.i.i37.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1700)
  store i8 27, ptr %val1.i.i37.i.i.i, align 1
  %1701 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1701)
  %1702 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i39.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1698, i32 2
  %1703 = ptrtoint ptr %sreg1.i.i.i39.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1703)
  store i8 %1702, ptr %sreg1.i.i.i39.i.i.i, align 1
  %1704 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1704)
  %1705 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i41.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1698, i32 3
  %1706 = ptrtoint ptr %seqreg2.i.i.i41.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1706)
  store i8 %1705, ptr %seqreg2.i.i.i41.i.i.i, align 1
  %1707 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1707)
  %1708 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i.i43.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1698, i32 4
  %1709 = ptrtoint ptr %sreg23.i.i.i43.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1709)
  store i8 %1708, ptr %sreg23.i.i.i43.i.i.i, align 1
  %1710 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1710)
  %1711 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i45.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1698, i32 5
  %1712 = ptrtoint ptr %ireg4.i.i.i45.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1712)
  store i8 %1711, ptr %ireg4.i.i.i45.i.i.i, align 1
  %1713 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1713)
  %1714 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i.i47.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1698, i32 6
  %1715 = ptrtoint ptr %select_state5.i.i.i47.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1715)
  store i8 %1714, ptr %select_state5.i.i.i47.i.i.i, align 1
  %1716 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1716)
  %1717 = load i8, ptr %event.i, align 1
  %event6.i.i.i49.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1698, i32 7
  %1718 = ptrtoint ptr %event6.i.i.i49.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1718)
  store i8 %1717, ptr %event6.i.i.i49.i.i.i, align 1
  %add.i.i50.i.i.i = add i32 %1698, 1
  %and.i.i51.i.i.i = and i32 %add.i.i50.i.i.i, 31
  store i32 %and.i.i51.i.i.i, ptr %esp_event_cur.i1312.i, align 4
  %1719 = load i32, ptr @esp_debug, align 4
  %and3.i.i52.i.i.i = and i32 %1719, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i52.i.i.i)
  %tobool.not.i84.i.i.i.i = icmp eq i32 %and3.i.i52.i.i.i, 0
  br i1 %tobool.not.i84.i.i.i.i, label %if.then36.i.i.i.i.esp_msgin_wdtr.exit.i.i.i_crit_edge, label %if.then36.i.i.i.i.esp_msgin_wdtr.exit.i.i.sink.split.i_crit_edge

if.then36.i.i.i.i.esp_msgin_wdtr.exit.i.i.sink.split.i_crit_edge: ; preds = %if.then36.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_msgin_wdtr.exit.i.i.sink.split.i

if.then36.i.i.i.i.esp_msgin_wdtr.exit.i.i.i_crit_edge: ; preds = %if.then36.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_msgin_wdtr.exit.i.i.i

if.else41.i.i.i.i:                                ; preds = %land.lhs.true6.i.i.i.i.i.if.else41.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.if.else41.i.i.i.i_crit_edge
  %nego_goal_period.i57.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1574, i32 4
  %1720 = ptrtoint ptr %nego_goal_period.i57.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1720)
  %1721 = load i8, ptr %nego_goal_period.i57.i.i.i, align 4
  %conv43.i.i.i.i = zext i8 %1721 to i32
  %call45.i.i.i.i = call i32 @spi_populate_sync_msg(ptr noundef %msg_out.i132.i.i, i32 noundef %conv43.i.i.i.i, i32 noundef %conv.i.i.i.i.i) #10
  %1722 = ptrtoint ptr %msg_out_len365.i to i32
  call void @__asan_store4_noabort(i32 %1722)
  store i32 %call45.i.i.i.i, ptr %msg_out_len365.i, align 4
  %1723 = ptrtoint ptr %flags.i32.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1723)
  %1724 = load i8, ptr %flags.i32.i.i.i, align 1
  %1725 = or i8 %1724, 8
  store i8 %1725, ptr %flags.i32.i.i.i, align 1
  %1726 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1726)
  %1727 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i86.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1727
  %1728 = ptrtoint ptr %arrayidx.i86.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1728)
  store i8 2, ptr %arrayidx.i86.i.i.i.i, align 1
  %val1.i87.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1727, i32 1
  %1729 = ptrtoint ptr %val1.i87.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1729)
  store i8 26, ptr %val1.i87.i.i.i.i, align 1
  %1730 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1730)
  %1731 = load i8, ptr %sreg, align 4
  %sreg1.i.i89.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1727, i32 2
  %1732 = ptrtoint ptr %sreg1.i.i89.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1732)
  store i8 %1731, ptr %sreg1.i.i89.i.i.i.i, align 1
  %1733 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1733)
  %1734 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i91.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1727, i32 3
  %1735 = ptrtoint ptr %seqreg2.i.i91.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1735)
  store i8 %1734, ptr %seqreg2.i.i91.i.i.i.i, align 1
  %1736 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1736)
  %1737 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i93.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1727, i32 4
  %1738 = ptrtoint ptr %sreg23.i.i93.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1738)
  store i8 %1737, ptr %sreg23.i.i93.i.i.i.i, align 1
  %1739 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1739)
  %1740 = load i8, ptr %ireg, align 1
  %ireg4.i.i95.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1727, i32 5
  %1741 = ptrtoint ptr %ireg4.i.i95.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1741)
  store i8 %1740, ptr %ireg4.i.i95.i.i.i.i, align 1
  %1742 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1742)
  %1743 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i97.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1727, i32 6
  %1744 = ptrtoint ptr %select_state5.i.i97.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1744)
  store i8 %1743, ptr %select_state5.i.i97.i.i.i.i, align 1
  %1745 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1745)
  %1746 = load i8, ptr %event.i, align 1
  %event6.i.i99.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1727, i32 7
  %1747 = ptrtoint ptr %event6.i.i99.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1747)
  store i8 %1746, ptr %event6.i.i99.i.i.i.i, align 1
  %add.i100.i.i.i.i = add i32 %1727, 1
  %and.i101.i.i.i.i = and i32 %add.i100.i.i.i.i, 31
  store i32 %and.i101.i.i.i.i, ptr %esp_event_cur.i1312.i, align 4
  %1748 = load i32, ptr @esp_debug, align 4
  %and3.i102.i.i.i.i = and i32 %1748, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i102.i.i.i.i)
  %tobool.not.i103.i.i.i.i = icmp eq i32 %and3.i102.i.i.i.i, 0
  br i1 %tobool.not.i103.i.i.i.i, label %if.else41.i.i.i.i.esp_msgin_wdtr.exit.i.i.i_crit_edge, label %if.else41.i.i.i.i.esp_msgin_wdtr.exit.i.i.sink.split.i_crit_edge

if.else41.i.i.i.i.esp_msgin_wdtr.exit.i.i.sink.split.i_crit_edge: ; preds = %if.else41.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_msgin_wdtr.exit.i.i.sink.split.i

if.else41.i.i.i.i.esp_msgin_wdtr.exit.i.i.i_crit_edge: ; preds = %if.else41.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_msgin_wdtr.exit.i.i.i

do_reject.i59.i.i.i:                              ; preds = %if.end7.i.i.i.i.do_reject.i59.i.i.i_crit_edge, %if.then9.i.i.i.do_reject.i59.i.i.i_crit_edge
  %1749 = ptrtoint ptr %msg_out.i132.i.i to i32
  call void @__asan_store1_noabort(i32 %1749)
  store i8 7, ptr %msg_out.i132.i.i, align 4
  %1750 = ptrtoint ptr %msg_out_len365.i to i32
  call void @__asan_store4_noabort(i32 %1750)
  store i32 1, ptr %msg_out_len365.i, align 4
  %1751 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1751)
  %1752 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i110.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1752
  %1753 = ptrtoint ptr %arrayidx.i110.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1753)
  store i8 2, ptr %arrayidx.i110.i.i.i.i, align 1
  %val1.i111.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1752, i32 1
  %1754 = ptrtoint ptr %val1.i111.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1754)
  store i8 26, ptr %val1.i111.i.i.i.i, align 1
  %1755 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1755)
  %1756 = load i8, ptr %sreg, align 4
  %sreg1.i.i113.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1752, i32 2
  %1757 = ptrtoint ptr %sreg1.i.i113.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1757)
  store i8 %1756, ptr %sreg1.i.i113.i.i.i.i, align 1
  %1758 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1758)
  %1759 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i115.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1752, i32 3
  %1760 = ptrtoint ptr %seqreg2.i.i115.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1760)
  store i8 %1759, ptr %seqreg2.i.i115.i.i.i.i, align 1
  %1761 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1761)
  %1762 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i117.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1752, i32 4
  %1763 = ptrtoint ptr %sreg23.i.i117.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1763)
  store i8 %1762, ptr %sreg23.i.i117.i.i.i.i, align 1
  %1764 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1764)
  %1765 = load i8, ptr %ireg, align 1
  %ireg4.i.i119.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1752, i32 5
  %1766 = ptrtoint ptr %ireg4.i.i119.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1766)
  store i8 %1765, ptr %ireg4.i.i119.i.i.i.i, align 1
  %1767 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1767)
  %1768 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i121.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1752, i32 6
  %1769 = ptrtoint ptr %select_state5.i.i121.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1769)
  store i8 %1768, ptr %select_state5.i.i121.i.i.i.i, align 1
  %1770 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1770)
  %1771 = load i8, ptr %event.i, align 1
  %event6.i.i123.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1752, i32 7
  %1772 = ptrtoint ptr %event6.i.i123.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1772)
  store i8 %1771, ptr %event6.i.i123.i.i.i.i, align 1
  %add.i124.i.i.i.i = add i32 %1752, 1
  %and.i125.i.i.i.i = and i32 %add.i124.i.i.i.i, 31
  store i32 %and.i125.i.i.i.i, ptr %esp_event_cur.i1312.i, align 4
  %1773 = load i32, ptr @esp_debug, align 4
  %and3.i126.i.i.i.i = and i32 %1773, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i126.i.i.i.i)
  %tobool.not.i127.i.i.i.i = icmp eq i32 %and3.i126.i.i.i.i, 0
  br i1 %tobool.not.i127.i.i.i.i, label %do_reject.i59.i.i.i.esp_msgin_wdtr.exit.i.i.i_crit_edge, label %do_reject.i59.i.i.i.esp_msgin_wdtr.exit.i.i.sink.split.i_crit_edge

do_reject.i59.i.i.i.esp_msgin_wdtr.exit.i.i.sink.split.i_crit_edge: ; preds = %do_reject.i59.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_msgin_wdtr.exit.i.i.sink.split.i

do_reject.i59.i.i.i.esp_msgin_wdtr.exit.i.i.i_crit_edge: ; preds = %do_reject.i59.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_msgin_wdtr.exit.i.i.i

esp_msgin_wdtr.exit.i.i.sink.split.i:             ; preds = %do_reject.i59.i.i.i.esp_msgin_wdtr.exit.i.i.sink.split.i_crit_edge, %if.else41.i.i.i.i.esp_msgin_wdtr.exit.i.i.sink.split.i_crit_edge, %if.then36.i.i.i.i.esp_msgin_wdtr.exit.i.i.sink.split.i_crit_edge
  %.sink1485.i = phi i32 [ 27, %if.then36.i.i.i.i.esp_msgin_wdtr.exit.i.i.sink.split.i_crit_edge ], [ 26, %if.else41.i.i.i.i.esp_msgin_wdtr.exit.i.i.sink.split.i_crit_edge ], [ 26, %do_reject.i59.i.i.i.esp_msgin_wdtr.exit.i.i.sink.split.i_crit_edge ]
  %.sink.i.i.i.ph.i = phi i8 [ 27, %if.then36.i.i.i.i.esp_msgin_wdtr.exit.i.i.sink.split.i_crit_edge ], [ 26, %if.else41.i.i.i.i.esp_msgin_wdtr.exit.i.i.sink.split.i_crit_edge ], [ 26, %do_reject.i59.i.i.i.esp_msgin_wdtr.exit.i.i.sink.split.i_crit_edge ]
  %1774 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1774)
  %1775 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i129.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1775, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i129.i.i.i.i, ptr noundef nonnull @.str, i32 noundef %.sink1485.i) #13
  br label %esp_msgin_wdtr.exit.i.i.i

esp_msgin_wdtr.exit.i.i.i:                        ; preds = %esp_msgin_wdtr.exit.i.i.sink.split.i, %do_reject.i59.i.i.i.esp_msgin_wdtr.exit.i.i.i_crit_edge, %if.else41.i.i.i.i.esp_msgin_wdtr.exit.i.i.i_crit_edge, %if.then36.i.i.i.i.esp_msgin_wdtr.exit.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i8 [ 27, %if.then36.i.i.i.i.esp_msgin_wdtr.exit.i.i.i_crit_edge ], [ 26, %if.else41.i.i.i.i.esp_msgin_wdtr.exit.i.i.i_crit_edge ], [ 26, %do_reject.i59.i.i.i.esp_msgin_wdtr.exit.i.i.i_crit_edge ], [ %.sink.i.i.i.ph.i, %esp_msgin_wdtr.exit.i.i.sink.split.i ]
  %1776 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1776)
  %1777 = load ptr, ptr %ops, align 4
  %1778 = ptrtoint ptr %1777 to i32
  call void @__asan_load4_noabort(i32 %1778)
  %1779 = load ptr, ptr %1777, align 4
  call void %1779(ptr noundef %esp, i8 noundef zeroext %.sink.i.i.i.i, i32 noundef 3) #10
  br label %if.then440.i

do.end.i.i.i281:                                  ; preds = %if.end11.i.i
  %conv.i.i.i = zext i8 %1576 to i32
  %1780 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1780)
  %1781 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i.i.i280 = getelementptr inbounds %struct.Scsi_Host, ptr %1781, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %shost_gendev.i.i.i280, ptr noundef nonnull @.str.149, i32 noundef %conv.i.i.i) #13
  %1782 = ptrtoint ptr %msg_out.i132.i.i to i32
  call void @__asan_store1_noabort(i32 %1782)
  store i8 7, ptr %msg_out.i132.i.i, align 4
  %1783 = ptrtoint ptr %msg_out_len365.i to i32
  call void @__asan_store4_noabort(i32 %1783)
  store i32 1, ptr %msg_out_len365.i, align 4
  %1784 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1784)
  %1785 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i60.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1785
  %1786 = ptrtoint ptr %arrayidx.i60.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1786)
  store i8 2, ptr %arrayidx.i60.i.i.i, align 1
  %val1.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1785, i32 1
  %1787 = ptrtoint ptr %val1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1787)
  store i8 26, ptr %val1.i.i.i.i, align 1
  %1788 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1788)
  %1789 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1785, i32 2
  %1790 = ptrtoint ptr %sreg1.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1790)
  store i8 %1789, ptr %sreg1.i.i.i.i.i, align 1
  %1791 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1791)
  %1792 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1785, i32 3
  %1793 = ptrtoint ptr %seqreg2.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1793)
  store i8 %1792, ptr %seqreg2.i.i.i.i.i, align 1
  %1794 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1794)
  %1795 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1785, i32 4
  %1796 = ptrtoint ptr %sreg23.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1796)
  store i8 %1795, ptr %sreg23.i.i.i.i.i, align 1
  %1797 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1797)
  %1798 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1785, i32 5
  %1799 = ptrtoint ptr %ireg4.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1799)
  store i8 %1798, ptr %ireg4.i.i.i.i.i, align 1
  %1800 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1800)
  %1801 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1785, i32 6
  %1802 = ptrtoint ptr %select_state5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1802)
  store i8 %1801, ptr %select_state5.i.i.i.i.i, align 1
  %1803 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1803)
  %1804 = load i8, ptr %event.i, align 1
  %event6.i.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1785, i32 7
  %1805 = ptrtoint ptr %event6.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1805)
  store i8 %1804, ptr %event6.i.i.i.i.i, align 1
  %add.i61.i.i.i = add i32 %1785, 1
  %and.i.i.i.i = and i32 %add.i61.i.i.i, 31
  store i32 %and.i.i.i.i, ptr %esp_event_cur.i1312.i, align 4
  %1806 = load i32, ptr @esp_debug, align 4
  %and3.i.i.i.i = and i32 %1806, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i.i)
  %tobool.not.i62.i.i.i = icmp eq i32 %and3.i.i.i.i, 0
  br i1 %tobool.not.i62.i.i.i, label %do.end.i.i.i281.scsi_esp_cmd.exit.i.i.i_crit_edge, label %do.end.i.i.i.i

do.end.i.i.i281.scsi_esp_cmd.exit.i.i.i_crit_edge: ; preds = %do.end.i.i.i281
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %do.end.i.i.i281
  call void @__sanitizer_cov_trace_pc() #12
  %1807 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1807)
  %1808 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1808, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i.i.i.i, ptr noundef nonnull @.str, i32 noundef 26) #13
  br label %scsi_esp_cmd.exit.i.i.i

scsi_esp_cmd.exit.i.i.i:                          ; preds = %do.end.i.i.i.i, %do.end.i.i.i281.scsi_esp_cmd.exit.i.i.i_crit_edge
  %1809 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1809)
  %1810 = load ptr, ptr %ops, align 4
  %1811 = ptrtoint ptr %1810 to i32
  call void @__asan_load4_noabort(i32 %1811)
  %1812 = load ptr, ptr %1810, align 4
  call void %1812(ptr noundef %esp, i8 noundef zeroext 26, i32 noundef 3) #10
  br label %if.then440.i

sw.bb12.i.i:                                      ; preds = %if.end.i1217.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1561)
  %cmp13.i.i = icmp eq i32 %1561, 1
  br i1 %cmp13.i.i, label %sw.bb12.i.i.if.end442.i_crit_edge, label %if.end16.i.i

sw.bb12.i.i.if.end442.i_crit_edge:                ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end442.i

if.end16.i.i:                                     ; preds = %sw.bb12.i.i
  %1813 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %1813)
  %1814 = load i8, ptr %arrayidx18.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1814)
  %cmp20.not.i.i = icmp eq i8 %1814, 1
  br i1 %cmp20.not.i.i, label %if.end23.i.i, label %if.end16.i.i.do_reject.i.i_crit_edge

if.end16.i.i.do_reject.i.i_crit_edge:             ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_reject.i.i

if.end23.i.i:                                     ; preds = %if.end16.i.i
  %1815 = ptrtoint ptr %active_cmd85.i to i32
  call void @__asan_load4_noabort(i32 %1815)
  %1816 = load ptr, ptr %active_cmd85.i, align 4
  %cmd.i1221.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1816, i32 0, i32 1
  %1817 = ptrtoint ptr %cmd.i1221.i to i32
  call void @__asan_load4_noabort(i32 %1817)
  %1818 = load ptr, ptr %cmd.i1221.i, align 4
  %cur_residue.i1222.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1818, i32 0, i32 22, i32 1
  %1819 = ptrtoint ptr %cur_residue.i1222.i to i32
  call void @__asan_load4_noabort(i32 %1819)
  %1820 = load i32, ptr %cur_residue.i1222.i, align 4
  %cur_sg.i1223.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1818, i32 0, i32 22, i32 3
  %1821 = ptrtoint ptr %cur_sg.i1223.i to i32
  call void @__asan_load4_noabort(i32 %1821)
  %1822 = load ptr, ptr %cur_sg.i1223.i, align 4
  %dma_length.i1224.i = getelementptr inbounds %struct.scatterlist, ptr %1822, i32 0, i32 4
  %1823 = ptrtoint ptr %dma_length.i1224.i to i32
  call void @__asan_load4_noabort(i32 %1823)
  %1824 = load i32, ptr %dma_length.i1224.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1820, i32 %1824)
  %cmp24.i.i = icmp eq i32 %1820, %1824
  br i1 %cmp24.i.i, label %if.then26.i.i, label %if.else.i1226.i

if.then26.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prv_sg.i1225.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1818, i32 0, i32 22, i32 2
  %1825 = ptrtoint ptr %prv_sg.i1225.i to i32
  call void @__asan_load4_noabort(i32 %1825)
  %1826 = load ptr, ptr %prv_sg.i1225.i, align 4
  %1827 = ptrtoint ptr %cur_sg.i1223.i to i32
  call void @__asan_store4_noabort(i32 %1827)
  store ptr %1826, ptr %cur_sg.i1223.i, align 4
  br label %if.end30.i.i

if.else.i1226.i:                                  ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i.i282 = add i32 %1820, 1
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.else.i1226.i, %if.then26.i.i
  %storemerge.i.i = phi i32 [ %inc.i.i282, %if.else.i1226.i ], [ 1, %if.then26.i.i ]
  %1828 = ptrtoint ptr %cur_residue.i1222.i to i32
  call void @__asan_store4_noabort(i32 %1828)
  store i32 %storemerge.i.i, ptr %cur_residue.i1222.i, align 4
  %tot_residue.i1227.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1818, i32 0, i32 22, i32 4
  %1829 = ptrtoint ptr %tot_residue.i1227.i to i32
  call void @__asan_load4_noabort(i32 %1829)
  %1830 = load i32, ptr %tot_residue.i1227.i, align 4
  %inc31.i.i = add i32 %1830, 1
  store i32 %inc31.i.i, ptr %tot_residue.i1227.i, align 4
  br label %if.then440.i

sw.bb34.i.i:                                      ; preds = %if.end.i1217.i
  %1831 = ptrtoint ptr %active_cmd85.i to i32
  call void @__asan_load4_noabort(i32 %1831)
  %1832 = load ptr, ptr %active_cmd85.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1832, i32 0, i32 6
  %1833 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1833)
  %1834 = load i8, ptr %flags.i.i.i, align 4
  %1835 = and i8 %1834, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1835)
  %tobool.not.i.i.i283 = icmp eq i8 %1835, 0
  br i1 %tobool.not.i.i.i283, label %if.end.i.i.i, label %if.then.i74.i.i

if.then.i74.i.i:                                  ; preds = %sw.bb34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %saved_sense_ptr.i.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1832, i32 0, i32 12
  %1836 = ptrtoint ptr %saved_sense_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1836)
  %1837 = load ptr, ptr %saved_sense_ptr.i.i.i, align 4
  %sense_ptr.i.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1832, i32 0, i32 11
  %1838 = ptrtoint ptr %sense_ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1838)
  store ptr %1837, ptr %sense_ptr.i.i.i, align 4
  br label %if.then440.i

if.end.i.i.i:                                     ; preds = %sw.bb34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cmd1.i75.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1832, i32 0, i32 1
  %1839 = ptrtoint ptr %cmd1.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %1839)
  %1840 = load ptr, ptr %cmd1.i75.i.i, align 4
  %saved_cur_residue.i.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1832, i32 0, i32 2
  %1841 = ptrtoint ptr %saved_cur_residue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1841)
  %1842 = load i32, ptr %saved_cur_residue.i.i.i, align 4
  %cur_residue.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1840, i32 0, i32 22, i32 1
  %1843 = ptrtoint ptr %cur_residue.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1843)
  store i32 %1842, ptr %cur_residue.i.i.i, align 4
  %saved_prv_sg.i.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1832, i32 0, i32 3
  %1844 = ptrtoint ptr %saved_prv_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1844)
  %1845 = load ptr, ptr %saved_prv_sg.i.i.i, align 4
  %prv_sg.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1840, i32 0, i32 22, i32 2
  %1846 = ptrtoint ptr %prv_sg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1846)
  store ptr %1845, ptr %prv_sg.i.i.i, align 4
  %saved_cur_sg.i.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1832, i32 0, i32 4
  %1847 = ptrtoint ptr %saved_cur_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1847)
  %1848 = load ptr, ptr %saved_cur_sg.i.i.i, align 4
  %cur_sg.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1840, i32 0, i32 22, i32 3
  %1849 = ptrtoint ptr %cur_sg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1849)
  store ptr %1848, ptr %cur_sg.i.i.i, align 4
  %saved_tot_residue.i.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1832, i32 0, i32 5
  %1850 = ptrtoint ptr %saved_tot_residue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1850)
  %1851 = load i32, ptr %saved_tot_residue.i.i.i, align 4
  %tot_residue.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1840, i32 0, i32 22, i32 4
  %1852 = ptrtoint ptr %tot_residue.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1852)
  store i32 %1851, ptr %tot_residue.i.i.i, align 4
  br label %if.then440.i

sw.bb36.i.i:                                      ; preds = %if.end.i1217.i
  %1853 = ptrtoint ptr %active_cmd85.i to i32
  call void @__asan_load4_noabort(i32 %1853)
  %1854 = load ptr, ptr %active_cmd85.i, align 4
  %flags.i76.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1854, i32 0, i32 6
  %1855 = ptrtoint ptr %flags.i76.i.i to i32
  call void @__asan_load1_noabort(i32 %1855)
  %1856 = load i8, ptr %flags.i76.i.i, align 4
  %1857 = and i8 %1856, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1857)
  %tobool.not.i77.i.i = icmp eq i8 %1857, 0
  br i1 %tobool.not.i77.i.i, label %if.end.i90.i.i, label %if.then.i80.i.i

if.then.i80.i.i:                                  ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sense_ptr.i78.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1854, i32 0, i32 11
  %1858 = ptrtoint ptr %sense_ptr.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %1858)
  %1859 = load ptr, ptr %sense_ptr.i78.i.i, align 4
  %saved_sense_ptr.i79.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1854, i32 0, i32 12
  %1860 = ptrtoint ptr %saved_sense_ptr.i79.i.i to i32
  call void @__asan_store4_noabort(i32 %1860)
  store ptr %1859, ptr %saved_sense_ptr.i79.i.i, align 4
  br label %if.then440.i

if.end.i90.i.i:                                   ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cmd1.i81.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1854, i32 0, i32 1
  %1861 = ptrtoint ptr %cmd1.i81.i.i to i32
  call void @__asan_load4_noabort(i32 %1861)
  %1862 = load ptr, ptr %cmd1.i81.i.i, align 4
  %cur_residue.i82.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1862, i32 0, i32 22, i32 1
  %1863 = ptrtoint ptr %cur_residue.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %1863)
  %1864 = load i32, ptr %cur_residue.i82.i.i, align 4
  %saved_cur_residue.i83.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1854, i32 0, i32 2
  %1865 = ptrtoint ptr %saved_cur_residue.i83.i.i to i32
  call void @__asan_store4_noabort(i32 %1865)
  store i32 %1864, ptr %saved_cur_residue.i83.i.i, align 4
  %prv_sg.i84.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1862, i32 0, i32 22, i32 2
  %1866 = ptrtoint ptr %prv_sg.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %1866)
  %1867 = load ptr, ptr %prv_sg.i84.i.i, align 4
  %saved_prv_sg.i85.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1854, i32 0, i32 3
  %1868 = ptrtoint ptr %saved_prv_sg.i85.i.i to i32
  call void @__asan_store4_noabort(i32 %1868)
  store ptr %1867, ptr %saved_prv_sg.i85.i.i, align 4
  %cur_sg.i86.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1862, i32 0, i32 22, i32 3
  %1869 = ptrtoint ptr %cur_sg.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %1869)
  %1870 = load ptr, ptr %cur_sg.i86.i.i, align 4
  %saved_cur_sg.i87.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1854, i32 0, i32 4
  %1871 = ptrtoint ptr %saved_cur_sg.i87.i.i to i32
  call void @__asan_store4_noabort(i32 %1871)
  store ptr %1870, ptr %saved_cur_sg.i87.i.i, align 4
  %tot_residue.i88.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1862, i32 0, i32 22, i32 4
  %1872 = ptrtoint ptr %tot_residue.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %1872)
  %1873 = load i32, ptr %tot_residue.i88.i.i, align 4
  %saved_tot_residue.i89.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1854, i32 0, i32 5
  %1874 = ptrtoint ptr %saved_tot_residue.i89.i.i to i32
  call void @__asan_store4_noabort(i32 %1874)
  store i32 %1873, ptr %saved_tot_residue.i89.i.i, align 4
  br label %if.then440.i

sw.bb38.i.i:                                      ; preds = %if.end.i1217.i.sw.bb38.i.i_crit_edge, %if.end.i1217.i.sw.bb38.i.i_crit_edge664
  %1875 = ptrtoint ptr %active_cmd85.i to i32
  call void @__asan_load4_noabort(i32 %1875)
  %1876 = load ptr, ptr %active_cmd85.i, align 4
  %message.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1876, i32 0, i32 10
  %1877 = ptrtoint ptr %message.i.i to i32
  call void @__asan_store1_noabort(i32 %1877)
  store i8 %1559, ptr %message.i.i, align 2
  %1878 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1878)
  %1879 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i91.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1879
  %1880 = ptrtoint ptr %arrayidx.i91.i.i to i32
  call void @__asan_store1_noabort(i32 %1880)
  store i8 1, ptr %arrayidx.i91.i.i, align 1
  %val1.i.i1229.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1879, i32 1
  %1881 = ptrtoint ptr %val1.i.i1229.i to i32
  call void @__asan_store1_noabort(i32 %1881)
  store i8 12, ptr %val1.i.i1229.i, align 1
  %1882 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1882)
  %1883 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i1231.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1879, i32 2
  %1884 = ptrtoint ptr %sreg1.i.i.i1231.i to i32
  call void @__asan_store1_noabort(i32 %1884)
  store i8 %1883, ptr %sreg1.i.i.i1231.i, align 1
  %1885 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1885)
  %1886 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i1233.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1879, i32 3
  %1887 = ptrtoint ptr %seqreg2.i.i.i1233.i to i32
  call void @__asan_store1_noabort(i32 %1887)
  store i8 %1886, ptr %seqreg2.i.i.i1233.i, align 1
  %1888 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1888)
  %1889 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i.i1235.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1879, i32 4
  %1890 = ptrtoint ptr %sreg23.i.i.i1235.i to i32
  call void @__asan_store1_noabort(i32 %1890)
  store i8 %1889, ptr %sreg23.i.i.i1235.i, align 1
  %1891 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1891)
  %1892 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i1237.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1879, i32 5
  %1893 = ptrtoint ptr %ireg4.i.i.i1237.i to i32
  call void @__asan_store1_noabort(i32 %1893)
  store i8 %1892, ptr %ireg4.i.i.i1237.i, align 1
  %1894 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1894)
  %1895 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i.i1239.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1879, i32 6
  %1896 = ptrtoint ptr %select_state5.i.i.i1239.i to i32
  call void @__asan_store1_noabort(i32 %1896)
  store i8 %1895, ptr %select_state5.i.i.i1239.i, align 1
  %1897 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1897)
  %1898 = load i8, ptr %event.i, align 1
  %event6.i.i.i1241.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1879, i32 7
  %1899 = ptrtoint ptr %event6.i.i.i1241.i to i32
  call void @__asan_store1_noabort(i32 %1899)
  store i8 %1898, ptr %event6.i.i.i1241.i, align 1
  %add.i.i1242.i = add i32 %1879, 1
  %and.i.i1243.i = and i32 %add.i.i1242.i, 31
  store i32 %and.i.i1243.i, ptr %esp_event_cur.i1312.i, align 4
  store i8 12, ptr %event.i, align 1
  %1900 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1900)
  %1901 = load i32, ptr %flags, align 4
  %or.i1245.i = or i32 %1901, 16
  store i32 %or.i1245.i, ptr %flags, align 4
  br label %if.then440.i

sw.bb42.i.i:                                      ; preds = %if.end.i1217.i
  %1902 = ptrtoint ptr %active_cmd85.i to i32
  call void @__asan_load4_noabort(i32 %1902)
  %1903 = load ptr, ptr %active_cmd85.i, align 4
  %cmd1.i93.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %1903, i32 0, i32 1
  %1904 = ptrtoint ptr %cmd1.i93.i.i to i32
  call void @__asan_load4_noabort(i32 %1904)
  %1905 = load ptr, ptr %cmd1.i93.i.i, align 4
  %device.i94.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1905, i32 0, i32 1
  %1906 = ptrtoint ptr %device.i94.i.i to i32
  call void @__asan_load4_noabort(i32 %1906)
  %1907 = load ptr, ptr %device.i94.i.i, align 4
  %id.i95.i.i = getelementptr inbounds %struct.scsi_device, ptr %1907, i32 0, i32 16
  %1908 = ptrtoint ptr %id.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %1908)
  %1909 = load i32, ptr %id.i95.i.i, align 8
  %arrayidx.i96.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1909
  %flags.i97.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1909, i32 3
  %1910 = ptrtoint ptr %flags.i97.i.i to i32
  call void @__asan_load1_noabort(i32 %1910)
  %1911 = load i8, ptr %flags.i97.i.i, align 1
  %conv.i98.i.i = zext i8 %1911 to i32
  %and.i99.i.i = and i32 %conv.i98.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99.i.i)
  %tobool.not.i100.i.i = icmp eq i32 %and.i99.i.i, 0
  br i1 %tobool.not.i100.i.i, label %if.end19.i.i.i, label %if.then.i105.i.i

if.then.i105.i.i:                                 ; preds = %sw.bb42.i.i
  %and4.i.i.i = and i8 %1911, -6
  %1912 = ptrtoint ptr %flags.i97.i.i to i32
  call void @__asan_store1_noabort(i32 %1912)
  store i8 %and4.i.i.i, ptr %flags.i97.i.i, align 1
  %starget.i.i101.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1909, i32 8
  %1913 = ptrtoint ptr %starget.i.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %1913)
  %1914 = load ptr, ptr %starget.i.i101.i.i, align 4
  %starget_data.i.i102.i.i = getelementptr inbounds %struct.scsi_target, ptr %1914, i32 0, i32 15
  %offset.i.i103.i.i = getelementptr inbounds %struct.scsi_target, ptr %1914, i32 1, i32 1
  %1915 = ptrtoint ptr %offset.i.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %1915)
  %1916 = load i32, ptr %offset.i.i103.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1916)
  %tobool.not.i.i104.i.i = icmp eq i32 %1916, 0
  br i1 %tobool.not.i.i104.i.i, label %land.lhs.true.i.i107.i.i, label %if.then.i105.i.i.if.end.i.i.i.i_crit_edge

if.then.i105.i.i.if.end.i.i.i.i_crit_edge:        ; preds = %if.then.i105.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

land.lhs.true.i.i107.i.i:                         ; preds = %if.then.i105.i.i
  %nego_goal_offset.i.i106.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1909, i32 5
  %1917 = ptrtoint ptr %nego_goal_offset.i.i106.i.i to i32
  call void @__asan_load1_noabort(i32 %1917)
  %1918 = load i8, ptr %nego_goal_offset.i.i106.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1918)
  %tobool1.not.i.i.i.i = icmp eq i8 %1918, 0
  br i1 %tobool1.not.i.i.i.i, label %land.lhs.true.i.i107.i.i.if.then7.i.i.i_crit_edge, label %land.lhs.true.i.i107.i.i.if.end.i.i.i.i_crit_edge

land.lhs.true.i.i107.i.i.if.end.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i107.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

land.lhs.true.i.i107.i.i.if.then7.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i107.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i107.i.i.if.end.i.i.i.i_crit_edge, %if.then.i105.i.i.if.end.i.i.i.i_crit_edge
  %nego_goal_offset4.i.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1909, i32 5
  %1919 = ptrtoint ptr %nego_goal_offset4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1919)
  %1920 = load i8, ptr %nego_goal_offset4.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %1920 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1916, i32 %conv.i.i.i.i)
  %cmp.i.i108.i.i = icmp eq i32 %1916, %conv.i.i.i.i
  br i1 %cmp.i.i108.i.i, label %land.lhs.true6.i.i.i.i, label %if.end.i.i.i.i.if.else.i.i.i_crit_edge

if.end.i.i.i.i.if.else.i.i.i_crit_edge:           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i

land.lhs.true6.i.i.i.i:                           ; preds = %if.end.i.i.i.i
  %1921 = ptrtoint ptr %starget_data.i.i102.i.i to i32
  call void @__asan_load4_noabort(i32 %1921)
  %1922 = load i32, ptr %starget_data.i.i102.i.i, align 4
  %nego_goal_period.i.i109.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1909, i32 4
  %1923 = ptrtoint ptr %nego_goal_period.i.i109.i.i to i32
  call void @__asan_load1_noabort(i32 %1923)
  %1924 = load i8, ptr %nego_goal_period.i.i109.i.i, align 4
  %conv8.i.i.i.i = zext i8 %1924 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1922, i32 %conv8.i.i.i.i)
  %cmp9.i.i.i.i = icmp eq i32 %1922, %conv8.i.i.i.i
  br i1 %cmp9.i.i.i.i, label %land.lhs.true6.i.i.i.i.if.then7.i.i.i_crit_edge, label %land.lhs.true6.i.i.i.i.if.else.i.i.i_crit_edge

land.lhs.true6.i.i.i.i.if.else.i.i.i_crit_edge:   ; preds = %land.lhs.true6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i

land.lhs.true6.i.i.i.i.if.then7.i.i.i_crit_edge:  ; preds = %land.lhs.true6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i.i.i

if.then7.i.i.i:                                   ; preds = %land.lhs.true6.i.i.i.i.if.then7.i.i.i_crit_edge, %land.lhs.true.i.i107.i.i.if.then7.i.i.i_crit_edge
  %1925 = and i8 %1911, -70
  %1926 = ptrtoint ptr %flags.i97.i.i to i32
  call void @__asan_store1_noabort(i32 %1926)
  store i8 %1925, ptr %flags.i97.i.i, align 1
  %1927 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1927)
  %1928 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i.i111.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1928
  %1929 = ptrtoint ptr %arrayidx.i.i111.i.i to i32
  call void @__asan_store1_noabort(i32 %1929)
  store i8 2, ptr %arrayidx.i.i111.i.i, align 1
  %val1.i.i112.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1928, i32 1
  %1930 = ptrtoint ptr %val1.i.i112.i.i to i32
  call void @__asan_store1_noabort(i32 %1930)
  store i8 27, ptr %val1.i.i112.i.i, align 1
  %1931 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1931)
  %1932 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i114.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1928, i32 2
  %1933 = ptrtoint ptr %sreg1.i.i.i114.i.i to i32
  call void @__asan_store1_noabort(i32 %1933)
  store i8 %1932, ptr %sreg1.i.i.i114.i.i, align 1
  %1934 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1934)
  %1935 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i116.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1928, i32 3
  %1936 = ptrtoint ptr %seqreg2.i.i.i116.i.i to i32
  call void @__asan_store1_noabort(i32 %1936)
  store i8 %1935, ptr %seqreg2.i.i.i116.i.i, align 1
  %1937 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1937)
  %1938 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i.i118.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1928, i32 4
  %1939 = ptrtoint ptr %sreg23.i.i.i118.i.i to i32
  call void @__asan_store1_noabort(i32 %1939)
  store i8 %1938, ptr %sreg23.i.i.i118.i.i, align 1
  %1940 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1940)
  %1941 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i120.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1928, i32 5
  %1942 = ptrtoint ptr %ireg4.i.i.i120.i.i to i32
  call void @__asan_store1_noabort(i32 %1942)
  store i8 %1941, ptr %ireg4.i.i.i120.i.i, align 1
  %1943 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1943)
  %1944 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i.i122.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1928, i32 6
  %1945 = ptrtoint ptr %select_state5.i.i.i122.i.i to i32
  call void @__asan_store1_noabort(i32 %1945)
  store i8 %1944, ptr %select_state5.i.i.i122.i.i, align 1
  %1946 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1946)
  %1947 = load i8, ptr %event.i, align 1
  %event6.i.i.i124.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1928, i32 7
  %1948 = ptrtoint ptr %event6.i.i.i124.i.i to i32
  call void @__asan_store1_noabort(i32 %1948)
  store i8 %1947, ptr %event6.i.i.i124.i.i, align 1
  %add.i.i125.i.i = add i32 %1928, 1
  %and.i.i126.i.i = and i32 %add.i.i125.i.i, 31
  store i32 %and.i.i126.i.i, ptr %esp_event_cur.i1312.i, align 4
  %1949 = load i32, ptr @esp_debug, align 4
  %and3.i.i127.i.i = and i32 %1949, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i127.i.i)
  %tobool.not.i53.i.i.i = icmp eq i32 %and3.i.i127.i.i, 0
  br i1 %tobool.not.i53.i.i.i, label %if.then7.i.i.i.scsi_esp_cmd.exit.i131.i.i_crit_edge, label %do.end.i.i129.i.i

if.then7.i.i.i.scsi_esp_cmd.exit.i131.i.i_crit_edge: ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit.i131.i.i

do.end.i.i129.i.i:                                ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1950 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1950)
  %1951 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i.i128.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1951, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i.i128.i.i, ptr noundef nonnull @.str, i32 noundef 27) #13
  br label %scsi_esp_cmd.exit.i131.i.i

scsi_esp_cmd.exit.i131.i.i:                       ; preds = %do.end.i.i129.i.i, %if.then7.i.i.i.scsi_esp_cmd.exit.i131.i.i_crit_edge
  %1952 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1952)
  %1953 = load ptr, ptr %ops, align 4
  %1954 = ptrtoint ptr %1953 to i32
  call void @__asan_load4_noabort(i32 %1954)
  %1955 = load ptr, ptr %1953, align 4
  call void %1955(ptr noundef %esp, i8 noundef zeroext 27, i32 noundef 3) #10
  br label %if.then440.i

if.else.i.i.i:                                    ; preds = %land.lhs.true6.i.i.i.i.if.else.i.i.i_crit_edge, %if.end.i.i.i.i.if.else.i.i.i_crit_edge
  %nego_goal_period.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1909, i32 4
  %1956 = ptrtoint ptr %nego_goal_period.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1956)
  %1957 = load i8, ptr %nego_goal_period.i.i.i, align 4
  %conv13.i.i.i = zext i8 %1957 to i32
  %call15.i.i.i = call i32 @spi_populate_sync_msg(ptr noundef %msg_out.i132.i.i, i32 noundef %conv13.i.i.i, i32 noundef %conv.i.i.i.i) #10
  %1958 = ptrtoint ptr %msg_out_len365.i to i32
  call void @__asan_store4_noabort(i32 %1958)
  store i32 %call15.i.i.i, ptr %msg_out_len365.i, align 4
  %1959 = ptrtoint ptr %flags.i97.i.i to i32
  call void @__asan_load1_noabort(i32 %1959)
  %1960 = load i8, ptr %flags.i97.i.i, align 1
  %1961 = or i8 %1960, 8
  store i8 %1961, ptr %flags.i97.i.i, align 1
  %1962 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %1962)
  %1963 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i55.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1963
  %1964 = ptrtoint ptr %arrayidx.i55.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1964)
  store i8 2, ptr %arrayidx.i55.i.i.i, align 1
  %val1.i56.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1963, i32 1
  %1965 = ptrtoint ptr %val1.i56.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1965)
  store i8 26, ptr %val1.i56.i.i.i, align 1
  %1966 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1966)
  %1967 = load i8, ptr %sreg, align 4
  %sreg1.i.i58.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1963, i32 2
  %1968 = ptrtoint ptr %sreg1.i.i58.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1968)
  store i8 %1967, ptr %sreg1.i.i58.i.i.i, align 1
  %1969 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %1969)
  %1970 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i60.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1963, i32 3
  %1971 = ptrtoint ptr %seqreg2.i.i60.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1971)
  store i8 %1970, ptr %seqreg2.i.i60.i.i.i, align 1
  %1972 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %1972)
  %1973 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i62.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1963, i32 4
  %1974 = ptrtoint ptr %sreg23.i.i62.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1974)
  store i8 %1973, ptr %sreg23.i.i62.i.i.i, align 1
  %1975 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %1975)
  %1976 = load i8, ptr %ireg, align 1
  %ireg4.i.i64.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1963, i32 5
  %1977 = ptrtoint ptr %ireg4.i.i64.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1977)
  store i8 %1976, ptr %ireg4.i.i64.i.i.i, align 1
  %1978 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %1978)
  %1979 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i66.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1963, i32 6
  %1980 = ptrtoint ptr %select_state5.i.i66.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1980)
  store i8 %1979, ptr %select_state5.i.i66.i.i.i, align 1
  %1981 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %1981)
  %1982 = load i8, ptr %event.i, align 1
  %event6.i.i68.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1963, i32 7
  %1983 = ptrtoint ptr %event6.i.i68.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1983)
  store i8 %1982, ptr %event6.i.i68.i.i.i, align 1
  %add.i69.i.i.i = add i32 %1963, 1
  %and.i70.i.i.i = and i32 %add.i69.i.i.i, 31
  store i32 %and.i70.i.i.i, ptr %esp_event_cur.i1312.i, align 4
  %1984 = load i32, ptr @esp_debug, align 4
  %and3.i71.i.i.i = and i32 %1984, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i71.i.i.i)
  %tobool.not.i72.i.i.i = icmp eq i32 %and3.i71.i.i.i, 0
  br i1 %tobool.not.i72.i.i.i, label %if.else.i.i.i.scsi_esp_cmd.exit77.i.i.i_crit_edge, label %do.end.i75.i.i.i

if.else.i.i.i.scsi_esp_cmd.exit77.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit77.i.i.i

do.end.i75.i.i.i:                                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1985 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %1985)
  %1986 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i74.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1986, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i74.i.i.i, ptr noundef nonnull @.str, i32 noundef 26) #13
  br label %scsi_esp_cmd.exit77.i.i.i

scsi_esp_cmd.exit77.i.i.i:                        ; preds = %do.end.i75.i.i.i, %if.else.i.i.i.scsi_esp_cmd.exit77.i.i.i_crit_edge
  %1987 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1987)
  %1988 = load ptr, ptr %ops, align 4
  %1989 = ptrtoint ptr %1988 to i32
  call void @__asan_load4_noabort(i32 %1989)
  %1990 = load ptr, ptr %1988, align 4
  call void %1990(ptr noundef %esp, i8 noundef zeroext 26, i32 noundef 3) #10
  br label %if.then440.i

if.end19.i.i.i:                                   ; preds = %sw.bb42.i.i
  %and22.i.i.i = and i32 %conv.i98.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %and22.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %do.end.i136.i.i, label %if.then24.i.i.i

if.then24.i.i.i:                                  ; preds = %if.end19.i.i.i
  %and27.i.i.i = and i8 %1911, -73
  %1991 = ptrtoint ptr %flags.i97.i.i to i32
  call void @__asan_store1_noabort(i32 %1991)
  store i8 %and27.i.i.i, ptr %flags.i97.i.i, align 1
  %1992 = ptrtoint ptr %arrayidx.i96.i.i to i32
  call void @__asan_store1_noabort(i32 %1992)
  store i8 0, ptr %arrayidx.i96.i.i, align 4
  %esp_offset.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1909, i32 1
  %1993 = ptrtoint ptr %esp_offset.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1993)
  store i8 0, ptr %esp_offset.i.i.i, align 1
  %starget.i78.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %1909, i32 8
  %1994 = ptrtoint ptr %starget.i78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1994)
  %1995 = load ptr, ptr %starget.i78.i.i.i, align 4
  %starget_data.i79.i.i.i = getelementptr inbounds %struct.scsi_target, ptr %1995, i32 0, i32 15
  %1996 = ptrtoint ptr %starget_data.i79.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1996)
  store i32 0, ptr %starget_data.i79.i.i.i, align 4
  %1997 = load ptr, ptr %starget.i78.i.i.i, align 4
  %offset.i80.i.i.i = getelementptr inbounds %struct.scsi_target, ptr %1997, i32 1, i32 1
  %1998 = ptrtoint ptr %offset.i80.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1998)
  store i32 0, ptr %offset.i80.i.i.i, align 4
  %1999 = load i8, ptr %flags.i97.i.i, align 1
  %2000 = load ptr, ptr %starget.i78.i.i.i, align 4
  %width.i.i.i.i = getelementptr inbounds %struct.scsi_target, ptr %2000, i32 1, i32 2
  %2001 = ptrtoint ptr %width.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2001)
  %bf.load.i.i.i.i = load i16, ptr %width.i.i.i.i, align 4
  %bf.value.i.i.i.i = zext i8 %1999 to i16
  %bf.shl.i.i.i.i = shl i16 %bf.value.i.i.i.i, 15
  %bf.clear.i.i.i.i = and i16 %bf.load.i.i.i.i, 32767
  %bf.set.i.i.i.i = or i16 %bf.clear.i.i.i.i, %bf.shl.i.i.i.i
  store i16 %bf.set.i.i.i.i, ptr %width.i.i.i.i, align 4
  %2002 = ptrtoint ptr %prev_stp.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2002)
  store i8 0, ptr %prev_stp.i.i.i.i, align 1
  store i8 0, ptr %arrayidx.i96.i.i, align 4
  %2003 = ptrtoint ptr %prev_soff.i.i226 to i32
  call void @__asan_store1_noabort(i32 %2003)
  store i8 0, ptr %prev_soff.i.i226, align 4
  store i8 0, ptr %esp_offset.i.i.i, align 1
  %2004 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2004)
  %2005 = load ptr, ptr %ops, align 4
  %2006 = ptrtoint ptr %2005 to i32
  call void @__asan_load4_noabort(i32 %2006)
  %2007 = load ptr, ptr %2005, align 4
  call void %2007(ptr noundef %esp, i8 noundef zeroext 0, i32 noundef 7) #10
  %2008 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2008)
  %2009 = load ptr, ptr %ops, align 4
  %2010 = ptrtoint ptr %2009 to i32
  call void @__asan_load4_noabort(i32 %2010)
  %2011 = load ptr, ptr %2009, align 4
  call void %2011(ptr noundef %esp, i8 noundef zeroext 0, i32 noundef 6) #10
  %2012 = ptrtoint ptr %flags.i97.i.i to i32
  call void @__asan_load1_noabort(i32 %2012)
  %2013 = load i8, ptr %flags.i97.i.i, align 1
  %2014 = and i8 %2013, -73
  store i8 %2014, ptr %flags.i97.i.i, align 1
  %2015 = ptrtoint ptr %starget.i78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2015)
  %2016 = load ptr, ptr %starget.i78.i.i.i, align 4
  call void @spi_display_xfer_agreement(ptr noundef %2016) #10
  %2017 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %2017)
  %2018 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i82.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2018
  %2019 = ptrtoint ptr %arrayidx.i82.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2019)
  store i8 2, ptr %arrayidx.i82.i.i.i, align 1
  %val1.i83.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2018, i32 1
  %2020 = ptrtoint ptr %val1.i83.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2020)
  store i8 27, ptr %val1.i83.i.i.i, align 1
  %2021 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %2021)
  %2022 = load i8, ptr %sreg, align 4
  %sreg1.i.i85.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2018, i32 2
  %2023 = ptrtoint ptr %sreg1.i.i85.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2023)
  store i8 %2022, ptr %sreg1.i.i85.i.i.i, align 1
  %2024 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %2024)
  %2025 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i87.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2018, i32 3
  %2026 = ptrtoint ptr %seqreg2.i.i87.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2026)
  store i8 %2025, ptr %seqreg2.i.i87.i.i.i, align 1
  %2027 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %2027)
  %2028 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i89.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2018, i32 4
  %2029 = ptrtoint ptr %sreg23.i.i89.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2029)
  store i8 %2028, ptr %sreg23.i.i89.i.i.i, align 1
  %2030 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %2030)
  %2031 = load i8, ptr %ireg, align 1
  %ireg4.i.i91.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2018, i32 5
  %2032 = ptrtoint ptr %ireg4.i.i91.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2032)
  store i8 %2031, ptr %ireg4.i.i91.i.i.i, align 1
  %2033 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %2033)
  %2034 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i93.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2018, i32 6
  %2035 = ptrtoint ptr %select_state5.i.i93.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2035)
  store i8 %2034, ptr %select_state5.i.i93.i.i.i, align 1
  %2036 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %2036)
  %2037 = load i8, ptr %event.i, align 1
  %event6.i.i95.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2018, i32 7
  %2038 = ptrtoint ptr %event6.i.i95.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2038)
  store i8 %2037, ptr %event6.i.i95.i.i.i, align 1
  %add.i96.i.i.i = add i32 %2018, 1
  %and.i97.i.i.i = and i32 %add.i96.i.i.i, 31
  store i32 %and.i97.i.i.i, ptr %esp_event_cur.i1312.i, align 4
  %2039 = load i32, ptr @esp_debug, align 4
  %and3.i98.i.i.i = and i32 %2039, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i98.i.i.i)
  %tobool.not.i99.i.i.i = icmp eq i32 %and3.i98.i.i.i, 0
  br i1 %tobool.not.i99.i.i.i, label %if.then24.i.i.i.scsi_esp_cmd.exit104.i.i.i_crit_edge, label %do.end.i102.i.i.i

if.then24.i.i.i.scsi_esp_cmd.exit104.i.i.i_crit_edge: ; preds = %if.then24.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit104.i.i.i

do.end.i102.i.i.i:                                ; preds = %if.then24.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %2040 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %2040)
  %2041 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i101.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %2041, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i101.i.i.i, ptr noundef nonnull @.str, i32 noundef 27) #13
  br label %scsi_esp_cmd.exit104.i.i.i

scsi_esp_cmd.exit104.i.i.i:                       ; preds = %do.end.i102.i.i.i, %if.then24.i.i.i.scsi_esp_cmd.exit104.i.i.i_crit_edge
  %2042 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2042)
  %2043 = load ptr, ptr %ops, align 4
  %2044 = ptrtoint ptr %2043 to i32
  call void @__asan_load4_noabort(i32 %2044)
  %2045 = load ptr, ptr %2043, align 4
  call void %2045(ptr noundef %esp, i8 noundef zeroext 27, i32 noundef 3) #10
  br label %if.then440.i

do.end.i136.i.i:                                  ; preds = %if.end19.i.i.i
  %2046 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %2046)
  %2047 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i135.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %2047, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %shost_gendev.i135.i.i, ptr noundef nonnull @.str.151) #13
  %2048 = load i32, ptr @esp_debug, align 4
  %and.i105.i.i.i = and i32 %2048, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105.i.i.i)
  %tobool.not.i106.i.i.i = icmp eq i32 %and.i105.i.i.i, 0
  br i1 %tobool.not.i106.i.i.i, label %do.end.i136.i.i.esp_schedule_reset.exit.i.i.i_crit_edge, label %do.end.i109.i.i.i

do.end.i136.i.i.esp_schedule_reset.exit.i.i.i_crit_edge: ; preds = %do.end.i136.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_schedule_reset.exit.i.i.i

do.end.i109.i.i.i:                                ; preds = %do.end.i136.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %2049 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %2049)
  %2050 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i108.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %2050, i32 0, i32 49
  %2051 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i108.i.i.i, ptr noundef nonnull @.str.35, ptr noundef %2051) #13
  br label %esp_schedule_reset.exit.i.i.i

esp_schedule_reset.exit.i.i.i:                    ; preds = %do.end.i109.i.i.i, %do.end.i136.i.i.esp_schedule_reset.exit.i.i.i_crit_edge
  %2052 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2052)
  %2053 = load i32, ptr %flags, align 4
  %or.i.i137.i.i = or i32 %2053, 2
  store i32 %or.i.i137.i.i, ptr %flags, align 4
  %2054 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %2054)
  %2055 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i.i.i139.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2055
  %2056 = ptrtoint ptr %arrayidx.i.i.i139.i.i to i32
  call void @__asan_store1_noabort(i32 %2056)
  store i8 1, ptr %arrayidx.i.i.i139.i.i, align 1
  %val1.i.i.i140.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2055, i32 1
  %2057 = ptrtoint ptr %val1.i.i.i140.i.i to i32
  call void @__asan_store1_noabort(i32 %2057)
  store i8 16, ptr %val1.i.i.i140.i.i, align 1
  %2058 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %2058)
  %2059 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i.i142.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2055, i32 2
  %2060 = ptrtoint ptr %sreg1.i.i.i.i142.i.i to i32
  call void @__asan_store1_noabort(i32 %2060)
  store i8 %2059, ptr %sreg1.i.i.i.i142.i.i, align 1
  %2061 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %2061)
  %2062 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i.i144.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2055, i32 3
  %2063 = ptrtoint ptr %seqreg2.i.i.i.i144.i.i to i32
  call void @__asan_store1_noabort(i32 %2063)
  store i8 %2062, ptr %seqreg2.i.i.i.i144.i.i, align 1
  %2064 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %2064)
  %2065 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i.i.i146.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2055, i32 4
  %2066 = ptrtoint ptr %sreg23.i.i.i.i146.i.i to i32
  call void @__asan_store1_noabort(i32 %2066)
  store i8 %2065, ptr %sreg23.i.i.i.i146.i.i, align 1
  %2067 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %2067)
  %2068 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i.i148.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2055, i32 5
  %2069 = ptrtoint ptr %ireg4.i.i.i.i148.i.i to i32
  call void @__asan_store1_noabort(i32 %2069)
  store i8 %2068, ptr %ireg4.i.i.i.i148.i.i, align 1
  %2070 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %2070)
  %2071 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i.i.i150.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2055, i32 6
  %2072 = ptrtoint ptr %select_state5.i.i.i.i150.i.i to i32
  call void @__asan_store1_noabort(i32 %2072)
  store i8 %2071, ptr %select_state5.i.i.i.i150.i.i, align 1
  %2073 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %2073)
  %2074 = load i8, ptr %event.i, align 1
  %event6.i.i.i.i152.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2055, i32 7
  %2075 = ptrtoint ptr %event6.i.i.i.i152.i.i to i32
  call void @__asan_store1_noabort(i32 %2075)
  store i8 %2074, ptr %event6.i.i.i.i152.i.i, align 1
  %add.i.i.i153.i.i = add i32 %2055, 1
  %and.i.i.i154.i.i = and i32 %add.i.i.i153.i.i, 31
  store i32 %and.i.i.i154.i.i, ptr %esp_event_cur.i1312.i, align 4
  store i8 16, ptr %event.i, align 1
  br label %if.then440.i

do_reject.i.i:                                    ; preds = %if.end16.i.i.do_reject.i.i_crit_edge, %if.end.i1217.i.do_reject.i.i_crit_edge
  %2076 = ptrtoint ptr %msg_out.i132.i.i to i32
  call void @__asan_store1_noabort(i32 %2076)
  store i8 7, ptr %msg_out.i132.i.i, align 4
  %2077 = ptrtoint ptr %msg_out_len365.i to i32
  call void @__asan_store4_noabort(i32 %2077)
  store i32 1, ptr %msg_out_len365.i, align 4
  %2078 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %2078)
  %2079 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i156.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2079
  %2080 = ptrtoint ptr %arrayidx.i156.i.i to i32
  call void @__asan_store1_noabort(i32 %2080)
  store i8 2, ptr %arrayidx.i156.i.i, align 1
  %val1.i157.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2079, i32 1
  %2081 = ptrtoint ptr %val1.i157.i.i to i32
  call void @__asan_store1_noabort(i32 %2081)
  store i8 26, ptr %val1.i157.i.i, align 1
  %2082 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %2082)
  %2083 = load i8, ptr %sreg, align 4
  %sreg1.i.i159.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2079, i32 2
  %2084 = ptrtoint ptr %sreg1.i.i159.i.i to i32
  call void @__asan_store1_noabort(i32 %2084)
  store i8 %2083, ptr %sreg1.i.i159.i.i, align 1
  %2085 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %2085)
  %2086 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i161.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2079, i32 3
  %2087 = ptrtoint ptr %seqreg2.i.i161.i.i to i32
  call void @__asan_store1_noabort(i32 %2087)
  store i8 %2086, ptr %seqreg2.i.i161.i.i, align 1
  %2088 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %2088)
  %2089 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i163.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2079, i32 4
  %2090 = ptrtoint ptr %sreg23.i.i163.i.i to i32
  call void @__asan_store1_noabort(i32 %2090)
  store i8 %2089, ptr %sreg23.i.i163.i.i, align 1
  %2091 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %2091)
  %2092 = load i8, ptr %ireg, align 1
  %ireg4.i.i165.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2079, i32 5
  %2093 = ptrtoint ptr %ireg4.i.i165.i.i to i32
  call void @__asan_store1_noabort(i32 %2093)
  store i8 %2092, ptr %ireg4.i.i165.i.i, align 1
  %2094 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %2094)
  %2095 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i167.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2079, i32 6
  %2096 = ptrtoint ptr %select_state5.i.i167.i.i to i32
  call void @__asan_store1_noabort(i32 %2096)
  store i8 %2095, ptr %select_state5.i.i167.i.i, align 1
  %2097 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %2097)
  %2098 = load i8, ptr %event.i, align 1
  %event6.i.i169.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2079, i32 7
  %2099 = ptrtoint ptr %event6.i.i169.i.i to i32
  call void @__asan_store1_noabort(i32 %2099)
  store i8 %2098, ptr %event6.i.i169.i.i, align 1
  %add.i170.i.i = add i32 %2079, 1
  %and.i171.i.i = and i32 %add.i170.i.i, 31
  store i32 %and.i171.i.i, ptr %esp_event_cur.i1312.i, align 4
  %2100 = load i32, ptr @esp_debug, align 4
  %and3.i.i.i284 = and i32 %2100, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i284)
  %tobool.not.i172.i.i = icmp eq i32 %and3.i.i.i284, 0
  br i1 %tobool.not.i172.i.i, label %do_reject.i.i.scsi_esp_cmd.exit.i.i285_crit_edge, label %do.end.i175.i.i

do_reject.i.i.scsi_esp_cmd.exit.i.i285_crit_edge: ; preds = %do_reject.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit.i.i285

do.end.i175.i.i:                                  ; preds = %do_reject.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %2101 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %2101)
  %2102 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i174.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %2102, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i174.i.i, ptr noundef nonnull @.str, i32 noundef 26) #13
  br label %scsi_esp_cmd.exit.i.i285

scsi_esp_cmd.exit.i.i285:                         ; preds = %do.end.i175.i.i, %do_reject.i.i.scsi_esp_cmd.exit.i.i285_crit_edge
  %2103 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2103)
  %2104 = load ptr, ptr %ops, align 4
  %2105 = ptrtoint ptr %2104 to i32
  call void @__asan_load4_noabort(i32 %2105)
  %2106 = load ptr, ptr %2104, align 4
  call void %2106(ptr noundef %esp, i8 noundef zeroext 26, i32 noundef 3) #10
  br label %if.then440.i

if.then440.i:                                     ; preds = %scsi_esp_cmd.exit.i.i285, %esp_schedule_reset.exit.i.i.i, %scsi_esp_cmd.exit104.i.i.i, %scsi_esp_cmd.exit77.i.i.i, %scsi_esp_cmd.exit.i131.i.i, %sw.bb38.i.i, %if.end.i90.i.i, %if.then.i80.i.i, %if.end.i.i.i, %if.then.i74.i.i, %if.end30.i.i, %scsi_esp_cmd.exit.i.i.i, %esp_msgin_wdtr.exit.i.i.i, %scsi_esp_cmd.exit100.i.i.i.i, %scsi_esp_cmd.exit.i.i.i.i, %if.end33.i.i.i.i, %if.end.i1217.i.if.then440.i_crit_edge, %do.end.i1216.i
  %2107 = ptrtoint ptr %msg_in_len.i to i32
  call void @__asan_store4_noabort(i32 %2107)
  store i32 0, ptr %msg_in_len.i, align 4
  br label %if.end442.i

if.end442.i:                                      ; preds = %if.then440.i, %sw.bb12.i.i.if.end442.i_crit_edge, %if.end4.i.i.if.end442.i_crit_edge, %sw.bb.i.i.if.end442.i_crit_edge
  %2108 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %2108)
  %2109 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2109)
  %cmp444.i = icmp eq i32 %2109, 8
  br i1 %cmp444.i, label %if.then446.i, label %if.end442.i.if.end447.i_crit_edge

if.end442.i.if.end447.i_crit_edge:                ; preds = %if.end442.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end447.i

if.then446.i:                                     ; preds = %if.end442.i
  %2110 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %2110)
  %2111 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i1248.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2111
  %2112 = ptrtoint ptr %arrayidx.i1248.i to i32
  call void @__asan_store1_noabort(i32 %2112)
  store i8 2, ptr %arrayidx.i1248.i, align 1
  %val1.i1249.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2111, i32 1
  %2113 = ptrtoint ptr %val1.i1249.i to i32
  call void @__asan_store1_noabort(i32 %2113)
  store i8 1, ptr %val1.i1249.i, align 1
  %2114 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %2114)
  %2115 = load i8, ptr %sreg, align 4
  %sreg1.i.i1251.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2111, i32 2
  %2116 = ptrtoint ptr %sreg1.i.i1251.i to i32
  call void @__asan_store1_noabort(i32 %2116)
  store i8 %2115, ptr %sreg1.i.i1251.i, align 1
  %2117 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %2117)
  %2118 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i1253.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2111, i32 3
  %2119 = ptrtoint ptr %seqreg2.i.i1253.i to i32
  call void @__asan_store1_noabort(i32 %2119)
  store i8 %2118, ptr %seqreg2.i.i1253.i, align 1
  %2120 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %2120)
  %2121 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i1255.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2111, i32 4
  %2122 = ptrtoint ptr %sreg23.i.i1255.i to i32
  call void @__asan_store1_noabort(i32 %2122)
  store i8 %2121, ptr %sreg23.i.i1255.i, align 1
  %2123 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %2123)
  %2124 = load i8, ptr %ireg, align 1
  %ireg4.i.i1257.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2111, i32 5
  %2125 = ptrtoint ptr %ireg4.i.i1257.i to i32
  call void @__asan_store1_noabort(i32 %2125)
  store i8 %2124, ptr %ireg4.i.i1257.i, align 1
  %2126 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %2126)
  %2127 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i1259.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2111, i32 6
  %2128 = ptrtoint ptr %select_state5.i.i1259.i to i32
  call void @__asan_store1_noabort(i32 %2128)
  store i8 %2127, ptr %select_state5.i.i1259.i, align 1
  %2129 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %2129)
  %2130 = load i8, ptr %event.i, align 1
  %event6.i.i1261.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2111, i32 7
  %2131 = ptrtoint ptr %event6.i.i1261.i to i32
  call void @__asan_store1_noabort(i32 %2131)
  store i8 %2130, ptr %event6.i.i1261.i, align 1
  %add.i1262.i = add i32 %2111, 1
  %and.i1263.i = and i32 %add.i1262.i, 31
  store i32 %and.i1263.i, ptr %esp_event_cur.i1312.i, align 4
  %2132 = load i32, ptr @esp_debug, align 4
  %and3.i1264.i = and i32 %2132, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i1264.i)
  %tobool.not.i1265.i = icmp eq i32 %and3.i1264.i, 0
  br i1 %tobool.not.i1265.i, label %if.then446.i.scsi_esp_cmd.exit1270.i_crit_edge, label %do.end.i1268.i

if.then446.i.scsi_esp_cmd.exit1270.i_crit_edge:   ; preds = %if.then446.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit1270.i

do.end.i1268.i:                                   ; preds = %if.then446.i
  call void @__sanitizer_cov_trace_pc() #12
  %2133 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %2133)
  %2134 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i1267.i = getelementptr inbounds %struct.Scsi_Host, ptr %2134, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i1267.i, ptr noundef nonnull @.str, i32 noundef 1) #13
  br label %scsi_esp_cmd.exit1270.i

scsi_esp_cmd.exit1270.i:                          ; preds = %do.end.i1268.i, %if.then446.i.scsi_esp_cmd.exit1270.i_crit_edge
  %2135 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2135)
  %2136 = load ptr, ptr %ops, align 4
  %2137 = ptrtoint ptr %2136 to i32
  call void @__asan_load4_noabort(i32 %2137)
  %2138 = load ptr, ptr %2136, align 4
  call void %2138(ptr noundef %esp, i8 noundef zeroext 1, i32 noundef 3) #10
  br label %if.end447.i

if.end447.i:                                      ; preds = %scsi_esp_cmd.exit1270.i, %if.end442.i.if.end447.i_crit_edge
  %2139 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %2139)
  %2140 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i1272.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2140
  %2141 = ptrtoint ptr %arrayidx.i1272.i to i32
  call void @__asan_store1_noabort(i32 %2141)
  store i8 2, ptr %arrayidx.i1272.i, align 1
  %val1.i1273.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2140, i32 1
  %2142 = ptrtoint ptr %val1.i1273.i to i32
  call void @__asan_store1_noabort(i32 %2142)
  store i8 18, ptr %val1.i1273.i, align 1
  %2143 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %2143)
  %2144 = load i8, ptr %sreg, align 4
  %sreg1.i.i1275.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2140, i32 2
  %2145 = ptrtoint ptr %sreg1.i.i1275.i to i32
  call void @__asan_store1_noabort(i32 %2145)
  store i8 %2144, ptr %sreg1.i.i1275.i, align 1
  %2146 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %2146)
  %2147 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i1277.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2140, i32 3
  %2148 = ptrtoint ptr %seqreg2.i.i1277.i to i32
  call void @__asan_store1_noabort(i32 %2148)
  store i8 %2147, ptr %seqreg2.i.i1277.i, align 1
  %2149 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %2149)
  %2150 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i1279.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2140, i32 4
  %2151 = ptrtoint ptr %sreg23.i.i1279.i to i32
  call void @__asan_store1_noabort(i32 %2151)
  store i8 %2150, ptr %sreg23.i.i1279.i, align 1
  %2152 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %2152)
  %2153 = load i8, ptr %ireg, align 1
  %ireg4.i.i1281.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2140, i32 5
  %2154 = ptrtoint ptr %ireg4.i.i1281.i to i32
  call void @__asan_store1_noabort(i32 %2154)
  store i8 %2153, ptr %ireg4.i.i1281.i, align 1
  %2155 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %2155)
  %2156 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i1283.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2140, i32 6
  %2157 = ptrtoint ptr %select_state5.i.i1283.i to i32
  call void @__asan_store1_noabort(i32 %2157)
  store i8 %2156, ptr %select_state5.i.i1283.i, align 1
  %2158 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %2158)
  %2159 = load i8, ptr %event.i, align 1
  %event6.i.i1285.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2140, i32 7
  %2160 = ptrtoint ptr %event6.i.i1285.i to i32
  call void @__asan_store1_noabort(i32 %2160)
  store i8 %2159, ptr %event6.i.i1285.i, align 1
  %add.i1286.i = add i32 %2140, 1
  %and.i1287.i = and i32 %add.i1286.i, 31
  store i32 %and.i1287.i, ptr %esp_event_cur.i1312.i, align 4
  %2161 = load i32, ptr @esp_debug, align 4
  %and3.i1288.i = and i32 %2161, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i1288.i)
  %tobool.not.i1289.i = icmp eq i32 %and3.i1288.i, 0
  br i1 %tobool.not.i1289.i, label %if.end447.i.scsi_esp_cmd.exit1294.i_crit_edge, label %do.end.i1292.i

if.end447.i.scsi_esp_cmd.exit1294.i_crit_edge:    ; preds = %if.end447.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit1294.i

do.end.i1292.i:                                   ; preds = %if.end447.i
  call void @__sanitizer_cov_trace_pc() #12
  %2162 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %2162)
  %2163 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i1291.i = getelementptr inbounds %struct.Scsi_Host, ptr %2163, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i1291.i, ptr noundef nonnull @.str, i32 noundef 18) #13
  br label %scsi_esp_cmd.exit1294.i

scsi_esp_cmd.exit1294.i:                          ; preds = %do.end.i1292.i, %if.end447.i.scsi_esp_cmd.exit1294.i_crit_edge
  %2164 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2164)
  %2165 = load ptr, ptr %ops, align 4
  %2166 = ptrtoint ptr %2165 to i32
  call void @__asan_load4_noabort(i32 %2166)
  %2167 = load ptr, ptr %2165, align 4
  call void %2167(ptr noundef %esp, i8 noundef zeroext 18, i32 noundef 3) #10
  %2168 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %2168)
  %2169 = load i8, ptr %event.i, align 1
  %2170 = zext i8 %2169 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2170, ptr @__sancov_gen_cov_switch_values.181)
  switch i8 %2169, label %if.then458.i [
    i8 16, label %scsi_esp_cmd.exit1294.i.again.i.backedge_crit_edge
    i8 12, label %scsi_esp_cmd.exit1294.i.cleanup_crit_edge
  ]

scsi_esp_cmd.exit1294.i.cleanup_crit_edge:        ; preds = %scsi_esp_cmd.exit1294.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

scsi_esp_cmd.exit1294.i.again.i.backedge_crit_edge: ; preds = %scsi_esp_cmd.exit1294.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %again.i.backedge

if.then458.i:                                     ; preds = %scsi_esp_cmd.exit1294.i
  call void @__sanitizer_cov_trace_pc() #12
  %2171 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %2171)
  %2172 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i335 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2172
  %2173 = ptrtoint ptr %arrayidx.i335 to i32
  call void @__asan_store1_noabort(i32 %2173)
  store i8 1, ptr %arrayidx.i335, align 1
  %val1.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2172, i32 1
  %2174 = ptrtoint ptr %val1.i to i32
  call void @__asan_store1_noabort(i32 %2174)
  store i8 13, ptr %val1.i, align 1
  %2175 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %2175)
  %2176 = load i8, ptr %sreg, align 4
  %sreg1.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2172, i32 2
  %2177 = ptrtoint ptr %sreg1.i.i to i32
  call void @__asan_store1_noabort(i32 %2177)
  store i8 %2176, ptr %sreg1.i.i, align 1
  %2178 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %2178)
  %2179 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2172, i32 3
  %2180 = ptrtoint ptr %seqreg2.i.i to i32
  call void @__asan_store1_noabort(i32 %2180)
  store i8 %2179, ptr %seqreg2.i.i, align 1
  %2181 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %2181)
  %2182 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2172, i32 4
  %2183 = ptrtoint ptr %sreg23.i.i to i32
  call void @__asan_store1_noabort(i32 %2183)
  store i8 %2182, ptr %sreg23.i.i, align 1
  %2184 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %2184)
  %2185 = load i8, ptr %ireg, align 1
  %ireg4.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2172, i32 5
  %2186 = ptrtoint ptr %ireg4.i.i to i32
  call void @__asan_store1_noabort(i32 %2186)
  store i8 %2185, ptr %ireg4.i.i, align 1
  %2187 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %2187)
  %2188 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2172, i32 6
  %2189 = ptrtoint ptr %select_state5.i.i to i32
  call void @__asan_store1_noabort(i32 %2189)
  store i8 %2188, ptr %select_state5.i.i, align 1
  %2190 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %2190)
  %2191 = load i8, ptr %event.i, align 1
  %event6.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2172, i32 7
  %2192 = ptrtoint ptr %event6.i.i to i32
  call void @__asan_store1_noabort(i32 %2192)
  store i8 %2191, ptr %event6.i.i, align 1
  %add.i = add i32 %2172, 1
  %and.i336 = and i32 %add.i, 31
  store i32 %and.i336, ptr %esp_event_cur.i1312.i, align 4
  store i8 13, ptr %event.i, align 1
  br label %cleanup

do.end465.i:                                      ; preds = %if.end407.i
  %2193 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %2193)
  %2194 = load ptr, ptr %host.i223, align 4
  %shost_gendev467.i = getelementptr inbounds %struct.Scsi_Host, ptr %2194, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %shost_gendev467.i, ptr noundef nonnull @.str.137) #13
  %2195 = load i32, ptr @esp_debug, align 4
  %and.i310 = and i32 %2195, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i310)
  %tobool.not.i311 = icmp eq i32 %and.i310, 0
  br i1 %tobool.not.i311, label %do.end465.i.esp_schedule_reset.exit334_crit_edge, label %do.end.i314

do.end465.i.esp_schedule_reset.exit334_crit_edge: ; preds = %do.end465.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_schedule_reset.exit334

do.end.i314:                                      ; preds = %do.end465.i
  call void @__sanitizer_cov_trace_pc() #12
  %2196 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %2196)
  %2197 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i313 = getelementptr inbounds %struct.Scsi_Host, ptr %2197, i32 0, i32 49
  %2198 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i313, ptr noundef nonnull @.str.35, ptr noundef %2198) #13
  br label %esp_schedule_reset.exit334

esp_schedule_reset.exit334:                       ; preds = %do.end.i314, %do.end465.i.esp_schedule_reset.exit334_crit_edge
  %2199 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2199)
  %2200 = load i32, ptr %flags, align 4
  %or.i316 = or i32 %2200, 2
  store i32 %or.i316, ptr %flags, align 4
  %2201 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %2201)
  %2202 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i.i318 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2202
  %2203 = ptrtoint ptr %arrayidx.i.i318 to i32
  call void @__asan_store1_noabort(i32 %2203)
  store i8 1, ptr %arrayidx.i.i318, align 1
  %val1.i.i319 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2202, i32 1
  %2204 = ptrtoint ptr %val1.i.i319 to i32
  call void @__asan_store1_noabort(i32 %2204)
  store i8 16, ptr %val1.i.i319, align 1
  %2205 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %2205)
  %2206 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i321 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2202, i32 2
  %2207 = ptrtoint ptr %sreg1.i.i.i321 to i32
  call void @__asan_store1_noabort(i32 %2207)
  store i8 %2206, ptr %sreg1.i.i.i321, align 1
  %2208 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %2208)
  %2209 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i323 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2202, i32 3
  %2210 = ptrtoint ptr %seqreg2.i.i.i323 to i32
  call void @__asan_store1_noabort(i32 %2210)
  store i8 %2209, ptr %seqreg2.i.i.i323, align 1
  %2211 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %2211)
  %2212 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i.i325 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2202, i32 4
  %2213 = ptrtoint ptr %sreg23.i.i.i325 to i32
  call void @__asan_store1_noabort(i32 %2213)
  store i8 %2212, ptr %sreg23.i.i.i325, align 1
  %2214 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %2214)
  %2215 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i327 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2202, i32 5
  %2216 = ptrtoint ptr %ireg4.i.i.i327 to i32
  call void @__asan_store1_noabort(i32 %2216)
  store i8 %2215, ptr %ireg4.i.i.i327, align 1
  %2217 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %2217)
  %2218 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i.i329 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2202, i32 6
  %2219 = ptrtoint ptr %select_state5.i.i.i329 to i32
  call void @__asan_store1_noabort(i32 %2219)
  store i8 %2218, ptr %select_state5.i.i.i329, align 1
  %2220 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %2220)
  %2221 = load i8, ptr %event.i, align 1
  %event6.i.i.i331 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2202, i32 7
  %2222 = ptrtoint ptr %event6.i.i.i331 to i32
  call void @__asan_store1_noabort(i32 %2222)
  store i8 %2221, ptr %event6.i.i.i331, align 1
  %add.i.i332 = add i32 %2202, 1
  %and.i.i333 = and i32 %add.i.i332, 31
  store i32 %and.i.i333, ptr %esp_event_cur.i1312.i, align 4
  store i8 16, ptr %event.i, align 1
  br label %again.i.backedge

sw.bb469.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %2223 = ptrtoint ptr %command_block470.i to i32
  call void @__asan_load4_noabort(i32 %2223)
  %2224 = load ptr, ptr %command_block470.i, align 4
  %2225 = ptrtoint ptr %cmd_bytes_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2225)
  %2226 = load ptr, ptr %cmd_bytes_ptr.i, align 4
  %2227 = ptrtoint ptr %cmd_bytes_left.i to i32
  call void @__asan_load4_noabort(i32 %2227)
  %2228 = load i32, ptr %cmd_bytes_left.i, align 4
  %2229 = call ptr @memcpy(ptr %2224, ptr %2226, i32 %2228)
  %2230 = load i32, ptr %cmd_bytes_left.i, align 4
  call fastcc void @esp_send_dma_cmd(ptr noundef %esp, i32 noundef %2230, i32 noundef 16) #10
  %2231 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %2231)
  %2232 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i1296.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2232
  %2233 = ptrtoint ptr %arrayidx.i1296.i to i32
  call void @__asan_store1_noabort(i32 %2233)
  store i8 1, ptr %arrayidx.i1296.i, align 1
  %val1.i1297.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2232, i32 1
  %2234 = ptrtoint ptr %val1.i1297.i to i32
  call void @__asan_store1_noabort(i32 %2234)
  store i8 2, ptr %val1.i1297.i, align 1
  %2235 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %2235)
  %2236 = load i8, ptr %sreg, align 4
  %sreg1.i.i1299.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2232, i32 2
  %2237 = ptrtoint ptr %sreg1.i.i1299.i to i32
  call void @__asan_store1_noabort(i32 %2237)
  store i8 %2236, ptr %sreg1.i.i1299.i, align 1
  %2238 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %2238)
  %2239 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i1301.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2232, i32 3
  %2240 = ptrtoint ptr %seqreg2.i.i1301.i to i32
  call void @__asan_store1_noabort(i32 %2240)
  store i8 %2239, ptr %seqreg2.i.i1301.i, align 1
  %2241 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %2241)
  %2242 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i1303.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2232, i32 4
  %2243 = ptrtoint ptr %sreg23.i.i1303.i to i32
  call void @__asan_store1_noabort(i32 %2243)
  store i8 %2242, ptr %sreg23.i.i1303.i, align 1
  %2244 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %2244)
  %2245 = load i8, ptr %ireg, align 1
  %ireg4.i.i1305.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2232, i32 5
  %2246 = ptrtoint ptr %ireg4.i.i1305.i to i32
  call void @__asan_store1_noabort(i32 %2246)
  store i8 %2245, ptr %ireg4.i.i1305.i, align 1
  %2247 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %2247)
  %2248 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i1307.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2232, i32 6
  %2249 = ptrtoint ptr %select_state5.i.i1307.i to i32
  call void @__asan_store1_noabort(i32 %2249)
  store i8 %2248, ptr %select_state5.i.i1307.i, align 1
  %2250 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %2250)
  %2251 = load i8, ptr %event.i, align 1
  %event6.i.i1309.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2232, i32 7
  %2252 = ptrtoint ptr %event6.i.i1309.i to i32
  call void @__asan_store1_noabort(i32 %2252)
  store i8 %2251, ptr %event6.i.i1309.i, align 1
  %add.i1310.i = add i32 %2232, 1
  %and.i1311.i = and i32 %add.i1310.i, 31
  store i32 %and.i1311.i, ptr %esp_event_cur.i1312.i, align 4
  store i8 2, ptr %event.i, align 1
  %2253 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2253)
  %2254 = load i32, ptr %flags, align 4
  %or473.i = or i32 %2254, 16
  store i32 %or473.i, ptr %flags, align 4
  br label %cleanup

sw.bb474.i:                                       ; preds = %do.end5.i
  %2255 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2255)
  %2256 = load ptr, ptr %ops, align 4
  %dma_invalidate476.i = getelementptr inbounds %struct.esp_driver_ops, ptr %2256, i32 0, i32 6
  %2257 = ptrtoint ptr %dma_invalidate476.i to i32
  call void @__asan_load4_noabort(i32 %2257)
  %2258 = load ptr, ptr %dma_invalidate476.i, align 4
  call void %2258(ptr noundef %esp) #10
  %2259 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %2259)
  %2260 = load i8, ptr %ireg, align 1
  %2261 = and i8 %2260, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2261)
  %tobool480.not.i = icmp eq i8 %2261, 0
  br i1 %tobool480.not.i, label %if.end482.i, label %sw.bb474.i.again.backedge.i_crit_edge

sw.bb474.i.again.backedge.i_crit_edge:            ; preds = %sw.bb474.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %again.backedge.i

if.end482.i:                                      ; preds = %sw.bb474.i
  %2262 = load i32, ptr @esp_debug, align 4
  %and.i1329.i = and i32 %2262, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1329.i)
  %tobool.not.i1330.i = icmp eq i32 %and.i1329.i, 0
  br i1 %tobool.not.i1330.i, label %if.end482.i.esp_schedule_reset.exit1353.i_crit_edge, label %do.end.i1333.i

if.end482.i.esp_schedule_reset.exit1353.i_crit_edge: ; preds = %if.end482.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_schedule_reset.exit1353.i

do.end.i1333.i:                                   ; preds = %if.end482.i
  call void @__sanitizer_cov_trace_pc() #12
  %2263 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %2263)
  %2264 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i1332.i = getelementptr inbounds %struct.Scsi_Host, ptr %2264, i32 0, i32 49
  %2265 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i1332.i, ptr noundef nonnull @.str.35, ptr noundef %2265) #13
  br label %esp_schedule_reset.exit1353.i

esp_schedule_reset.exit1353.i:                    ; preds = %do.end.i1333.i, %if.end482.i.esp_schedule_reset.exit1353.i_crit_edge
  %2266 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2266)
  %2267 = load i32, ptr %flags, align 4
  %or.i1335.i = or i32 %2267, 2
  store i32 %or.i1335.i, ptr %flags, align 4
  %2268 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %2268)
  %2269 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i.i1337.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2269
  %2270 = ptrtoint ptr %arrayidx.i.i1337.i to i32
  call void @__asan_store1_noabort(i32 %2270)
  store i8 1, ptr %arrayidx.i.i1337.i, align 1
  %val1.i.i1338.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2269, i32 1
  %2271 = ptrtoint ptr %val1.i.i1338.i to i32
  call void @__asan_store1_noabort(i32 %2271)
  store i8 16, ptr %val1.i.i1338.i, align 1
  %2272 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %2272)
  %2273 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i1340.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2269, i32 2
  %2274 = ptrtoint ptr %sreg1.i.i.i1340.i to i32
  call void @__asan_store1_noabort(i32 %2274)
  store i8 %2273, ptr %sreg1.i.i.i1340.i, align 1
  %2275 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %2275)
  %2276 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i1342.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2269, i32 3
  %2277 = ptrtoint ptr %seqreg2.i.i.i1342.i to i32
  call void @__asan_store1_noabort(i32 %2277)
  store i8 %2276, ptr %seqreg2.i.i.i1342.i, align 1
  %2278 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %2278)
  %2279 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i.i1344.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2269, i32 4
  %2280 = ptrtoint ptr %sreg23.i.i.i1344.i to i32
  call void @__asan_store1_noabort(i32 %2280)
  store i8 %2279, ptr %sreg23.i.i.i1344.i, align 1
  %2281 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %2281)
  %2282 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i1346.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2269, i32 5
  %2283 = ptrtoint ptr %ireg4.i.i.i1346.i to i32
  call void @__asan_store1_noabort(i32 %2283)
  store i8 %2282, ptr %ireg4.i.i.i1346.i, align 1
  %2284 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %2284)
  %2285 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i.i1348.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2269, i32 6
  %2286 = ptrtoint ptr %select_state5.i.i.i1348.i to i32
  call void @__asan_store1_noabort(i32 %2286)
  store i8 %2285, ptr %select_state5.i.i.i1348.i, align 1
  %2287 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %2287)
  %2288 = load i8, ptr %event.i, align 1
  %event6.i.i.i1350.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2269, i32 7
  %2289 = ptrtoint ptr %event6.i.i.i1350.i to i32
  call void @__asan_store1_noabort(i32 %2289)
  store i8 %2288, ptr %event6.i.i.i1350.i, align 1
  %add.i.i1351.i = add i32 %2269, 1
  %and.i.i1352.i = and i32 %add.i.i1351.i, 31
  store i32 %and.i.i1352.i, ptr %esp_event_cur.i1312.i, align 4
  store i8 16, ptr %event.i, align 1
  br label %again.i.backedge

sw.bb483.i:                                       ; preds = %do.end5.i
  %2290 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %2290)
  %2291 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i1355.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2291
  %2292 = ptrtoint ptr %arrayidx.i1355.i to i32
  call void @__asan_store1_noabort(i32 %2292)
  store i8 2, ptr %arrayidx.i1355.i, align 1
  %val1.i1356.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2291, i32 1
  %2293 = ptrtoint ptr %val1.i1356.i to i32
  call void @__asan_store1_noabort(i32 %2293)
  store i8 3, ptr %val1.i1356.i, align 1
  %2294 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %2294)
  %2295 = load i8, ptr %sreg, align 4
  %sreg1.i.i1358.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2291, i32 2
  %2296 = ptrtoint ptr %sreg1.i.i1358.i to i32
  call void @__asan_store1_noabort(i32 %2296)
  store i8 %2295, ptr %sreg1.i.i1358.i, align 1
  %2297 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %2297)
  %2298 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i1360.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2291, i32 3
  %2299 = ptrtoint ptr %seqreg2.i.i1360.i to i32
  call void @__asan_store1_noabort(i32 %2299)
  store i8 %2298, ptr %seqreg2.i.i1360.i, align 1
  %2300 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %2300)
  %2301 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i1362.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2291, i32 4
  %2302 = ptrtoint ptr %sreg23.i.i1362.i to i32
  call void @__asan_store1_noabort(i32 %2302)
  store i8 %2301, ptr %sreg23.i.i1362.i, align 1
  %2303 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %2303)
  %2304 = load i8, ptr %ireg, align 1
  %ireg4.i.i1364.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2291, i32 5
  %2305 = ptrtoint ptr %ireg4.i.i1364.i to i32
  call void @__asan_store1_noabort(i32 %2305)
  store i8 %2304, ptr %ireg4.i.i1364.i, align 1
  %2306 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %2306)
  %2307 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i1366.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2291, i32 6
  %2308 = ptrtoint ptr %select_state5.i.i1366.i to i32
  call void @__asan_store1_noabort(i32 %2308)
  store i8 %2307, ptr %select_state5.i.i1366.i, align 1
  %2309 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %2309)
  %2310 = load i8, ptr %event.i, align 1
  %event6.i.i1368.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2291, i32 7
  %2311 = ptrtoint ptr %event6.i.i1368.i to i32
  call void @__asan_store1_noabort(i32 %2311)
  store i8 %2310, ptr %event6.i.i1368.i, align 1
  %add.i1369.i = add i32 %2291, 1
  %and.i1370.i = and i32 %add.i1369.i, 31
  store i32 %and.i1370.i, ptr %esp_event_cur.i1312.i, align 4
  %2312 = load i32, ptr @esp_debug, align 4
  %and3.i1371.i = and i32 %2312, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i1371.i)
  %tobool.not.i1372.i = icmp eq i32 %and3.i1371.i, 0
  br i1 %tobool.not.i1372.i, label %sw.bb483.i.scsi_esp_cmd.exit1377.i_crit_edge, label %do.end.i1375.i

sw.bb483.i.scsi_esp_cmd.exit1377.i_crit_edge:     ; preds = %sw.bb483.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit1377.i

do.end.i1375.i:                                   ; preds = %sw.bb483.i
  call void @__sanitizer_cov_trace_pc() #12
  %2313 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %2313)
  %2314 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i1374.i = getelementptr inbounds %struct.Scsi_Host, ptr %2314, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i1374.i, ptr noundef nonnull @.str, i32 noundef 3) #13
  br label %scsi_esp_cmd.exit1377.i

scsi_esp_cmd.exit1377.i:                          ; preds = %do.end.i1375.i, %sw.bb483.i.scsi_esp_cmd.exit1377.i_crit_edge
  %2315 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2315)
  %2316 = load ptr, ptr %ops, align 4
  %2317 = ptrtoint ptr %2316 to i32
  call void @__asan_load4_noabort(i32 %2317)
  %2318 = load ptr, ptr %2316, align 4
  call void %2318(ptr noundef %esp, i8 noundef zeroext 3, i32 noundef 3) #10
  br label %cleanup

do.end487.i:                                      ; preds = %do.end5.i
  %conv7.i = zext i8 %508 to i32
  %2319 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %2319)
  %2320 = load ptr, ptr %host.i223, align 4
  %shost_gendev489.i = getelementptr inbounds %struct.Scsi_Host, ptr %2320, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %shost_gendev489.i, ptr noundef nonnull @.str.140, i32 noundef %conv7.i) #13
  %2321 = load i32, ptr @esp_debug, align 4
  %and.i286 = and i32 %2321, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i286)
  %tobool.not.i287 = icmp eq i32 %and.i286, 0
  br i1 %tobool.not.i287, label %do.end487.i.esp_schedule_reset.exit_crit_edge, label %do.end.i290

do.end487.i.esp_schedule_reset.exit_crit_edge:    ; preds = %do.end487.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_schedule_reset.exit

do.end.i290:                                      ; preds = %do.end487.i
  call void @__sanitizer_cov_trace_pc() #12
  %2322 = ptrtoint ptr %host.i223 to i32
  call void @__asan_load4_noabort(i32 %2322)
  %2323 = load ptr, ptr %host.i223, align 4
  %shost_gendev.i289 = getelementptr inbounds %struct.Scsi_Host, ptr %2323, i32 0, i32 49
  %2324 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i289, ptr noundef nonnull @.str.35, ptr noundef %2324) #13
  br label %esp_schedule_reset.exit

esp_schedule_reset.exit:                          ; preds = %do.end.i290, %do.end487.i.esp_schedule_reset.exit_crit_edge
  %2325 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2325)
  %2326 = load i32, ptr %flags, align 4
  %or.i292 = or i32 %2326, 2
  store i32 %or.i292, ptr %flags, align 4
  %2327 = ptrtoint ptr %esp_event_cur.i1312.i to i32
  call void @__asan_load4_noabort(i32 %2327)
  %2328 = load i32, ptr %esp_event_cur.i1312.i, align 4
  %arrayidx.i.i294 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2328
  %2329 = ptrtoint ptr %arrayidx.i.i294 to i32
  call void @__asan_store1_noabort(i32 %2329)
  store i8 1, ptr %arrayidx.i.i294, align 1
  %val1.i.i295 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2328, i32 1
  %2330 = ptrtoint ptr %val1.i.i295 to i32
  call void @__asan_store1_noabort(i32 %2330)
  store i8 16, ptr %val1.i.i295, align 1
  %2331 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %2331)
  %2332 = load i8, ptr %sreg, align 4
  %sreg1.i.i.i297 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2328, i32 2
  %2333 = ptrtoint ptr %sreg1.i.i.i297 to i32
  call void @__asan_store1_noabort(i32 %2333)
  store i8 %2332, ptr %sreg1.i.i.i297, align 1
  %2334 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %2334)
  %2335 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i299 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2328, i32 3
  %2336 = ptrtoint ptr %seqreg2.i.i.i299 to i32
  call void @__asan_store1_noabort(i32 %2336)
  store i8 %2335, ptr %seqreg2.i.i.i299, align 1
  %2337 = ptrtoint ptr %sreg2.i.i1319.i to i32
  call void @__asan_load1_noabort(i32 %2337)
  %2338 = load i8, ptr %sreg2.i.i1319.i, align 2
  %sreg23.i.i.i301 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2328, i32 4
  %2339 = ptrtoint ptr %sreg23.i.i.i301 to i32
  call void @__asan_store1_noabort(i32 %2339)
  store i8 %2338, ptr %sreg23.i.i.i301, align 1
  %2340 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %2340)
  %2341 = load i8, ptr %ireg, align 1
  %ireg4.i.i.i303 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2328, i32 5
  %2342 = ptrtoint ptr %ireg4.i.i.i303 to i32
  call void @__asan_store1_noabort(i32 %2342)
  store i8 %2341, ptr %ireg4.i.i.i303, align 1
  %2343 = ptrtoint ptr %select_state.i.i1323.i to i32
  call void @__asan_load1_noabort(i32 %2343)
  %2344 = load i8, ptr %select_state.i.i1323.i, align 4
  %select_state5.i.i.i305 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2328, i32 6
  %2345 = ptrtoint ptr %select_state5.i.i.i305 to i32
  call void @__asan_store1_noabort(i32 %2345)
  store i8 %2344, ptr %select_state5.i.i.i305, align 1
  %2346 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %2346)
  %2347 = load i8, ptr %event.i, align 1
  %event6.i.i.i307 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %2328, i32 7
  %2348 = ptrtoint ptr %event6.i.i.i307 to i32
  call void @__asan_store1_noabort(i32 %2348)
  store i8 %2347, ptr %event6.i.i.i307, align 1
  %add.i.i308 = add i32 %2328, 1
  %and.i.i309 = and i32 %add.i.i308, 31
  store i32 %and.i.i309, ptr %esp_event_cur.i1312.i, align 4
  store i8 16, ptr %event.i, align 1
  br label %again.i.backedge

cleanup:                                          ; preds = %scsi_esp_cmd.exit1377.i, %sw.bb469.i, %if.then458.i, %scsi_esp_cmd.exit1294.i.cleanup_crit_edge, %scsi_esp_cmd.exit1212.i, %if.end358.i, %if.then274.i, %if.end271.i.cleanup_crit_edge, %if.end177.i, %do.end78.i, %scsi_esp_cmd.exit550, %if.end127.cleanup_crit_edge, %if.end127.thread602, %if.then22, %if.then20.cleanup_crit_edge, %do.end15.i, %do.end.i184, %esp_check_gross_error.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_esp_register(ptr noundef %esp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tags = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 19
  %0 = ptrtoint ptr %num_tags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_tags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %num_tags to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %num_tags, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = load ptr, ptr @esp_transport_template, align 4
  %host = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %transportt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %transportt, align 4
  %7 = load ptr, ptr %host, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 8, ptr %max_lun, align 8
  %9 = load ptr, ptr %host, align 4
  %cmd_per_lun = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %cmd_per_lun, align 8
  %11 = load i32, ptr @scsi_esp_register.instance, align 4
  %12 = load ptr, ptr %host, align 4
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %unique_id, align 8
  %cfreq.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 41
  %14 = ptrtoint ptr %cfreq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cfreq.i, align 4
  %div.i = sdiv i32 %15, 1000000
  %16 = trunc i32 %div.i to i16
  %div1.lhs.trunc.i = add nsw i16 %16, 4
  %div149.i = sdiv i16 %div1.lhs.trunc.i, 5
  %conv.i = trunc i16 %div149.i to i8
  %17 = and i16 %div149.i, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %17)
  %cmp.i = icmp eq i16 %17, 1
  %spec.store.select.i = select i1 %cmp.i, i8 2, i8 %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %15)
  %cmp4.i = icmp slt i32 %15, 5000001
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select.i)
  %cmp7.i = icmp eq i8 %spec.store.select.i, 0
  %or.cond.i = select i1 %cmp4.i, i1 true, i1 %cmp7.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %spec.store.select.i)
  %cmp11.i = icmp ugt i8 %spec.store.select.i, 8
  %or.cond48.i = select i1 %or.cond.i, i1 true, i1 %cmp11.i
  %fhz.0.i = select i1 %or.cond48.i, i32 20000000, i32 %15
  %ccf.0.i = select i1 %or.cond48.i, i8 4, i8 %spec.store.select.i
  %conv15.i = zext i8 %ccf.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %ccf.0.i)
  %cmp16.i = icmp eq i8 %ccf.0.i, 8
  %cond.i = select i1 %cmp16.i, i32 0, i32 %conv15.i
  %cfact.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 40
  %18 = ptrtoint ptr %cfact.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.i, ptr %cfact.i, align 4
  %19 = ptrtoint ptr %cfreq.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %fhz.0.i, ptr %cfreq.i, align 4
  %div2050.i = udiv i32 %fhz.0.i, 1000
  %div2151.i = udiv i32 1000000000, %div2050.i
  %ccycle.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 42
  %20 = ptrtoint ptr %ccycle.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div2151.i, ptr %ccycle.i, align 4
  %mul.i = mul nuw nsw i32 %div2151.i, 7682
  %mul24.i = mul i32 %mul.i, %conv15.i
  %div25.i = udiv i32 %mul24.i, 1000
  %ctick.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 43
  %21 = ptrtoint ptr %ctick.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div25.i, ptr %ctick.i, align 4
  %mul27.i = mul nuw nsw i32 %div2050.i, 250
  %mul29.i = shl nuw nsw i32 %conv15.i, 13
  %div3052.i = udiv i32 %mul27.i, %mul29.i
  %neg_defp.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 44
  %22 = ptrtoint ptr %neg_defp.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div3052.i, ptr %neg_defp.i, align 4
  %sync_defp.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 45
  %23 = ptrtoint ptr %sync_defp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 50, ptr %sync_defp.i, align 4
  %scsi_id.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 34
  %24 = ptrtoint ptr %scsi_id.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %scsi_id.i, align 4
  %26 = and i8 %25, 7
  %27 = or i8 %26, 16
  %config1.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 31
  %28 = ptrtoint ptr %config1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %config1.i, align 1
  %config2.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 32
  %29 = ptrtoint ptr %config2.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %config2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp.i44 = icmp eq i8 %30, 0
  br i1 %cmp.i44, label %if.then.i, label %if.end.if.end15.i_crit_edge

if.end.if.end15.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i:                                        ; preds = %if.end
  %31 = ptrtoint ptr %config2.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 10, ptr %config2.i, align 2
  %ops.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 2
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  tail call void %35(ptr noundef %esp, i8 noundef zeroext 10, i32 noundef 11) #10
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  %esp_read8.i = getelementptr inbounds %struct.esp_driver_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %esp_read8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %esp_read8.i, align 4
  %call.i = tail call zeroext i8 %39(ptr noundef %esp, i32 noundef 11) #10
  %40 = and i8 %call.i, 31
  %41 = ptrtoint ptr %config2.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %config2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %40)
  %cmp12.not.i = icmp eq i8 %40, 10
  br i1 %cmp12.not.i, label %if.then.i.if.end15.i_crit_edge, label %if.then14.i

if.then.i.if.end15.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %rev.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 36
  %42 = ptrtoint ptr %rev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %rev.i, align 4
  br label %esp_get_revision.exit

if.end15.i:                                       ; preds = %if.then.i.if.end15.i_crit_edge, %if.end.if.end15.i_crit_edge
  %esp_config3.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 0, i32 2
  %43 = ptrtoint ptr %esp_config3.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 5, ptr %esp_config3.i.i, align 2
  %esp_config3.1.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 1, i32 2
  %44 = ptrtoint ptr %esp_config3.1.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 5, ptr %esp_config3.1.i.i, align 2
  %esp_config3.2.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 2, i32 2
  %45 = ptrtoint ptr %esp_config3.2.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 5, ptr %esp_config3.2.i.i, align 2
  %esp_config3.3.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 3, i32 2
  %46 = ptrtoint ptr %esp_config3.3.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 5, ptr %esp_config3.3.i.i, align 2
  %esp_config3.4.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 4, i32 2
  %47 = ptrtoint ptr %esp_config3.4.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 5, ptr %esp_config3.4.i.i, align 2
  %esp_config3.5.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 5, i32 2
  %48 = ptrtoint ptr %esp_config3.5.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 5, ptr %esp_config3.5.i.i, align 2
  %esp_config3.6.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 6, i32 2
  %49 = ptrtoint ptr %esp_config3.6.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 5, ptr %esp_config3.6.i.i, align 2
  %esp_config3.7.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 7, i32 2
  %50 = ptrtoint ptr %esp_config3.7.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 5, ptr %esp_config3.7.i.i, align 2
  %esp_config3.8.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 8, i32 2
  %51 = ptrtoint ptr %esp_config3.8.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 5, ptr %esp_config3.8.i.i, align 2
  %esp_config3.9.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 9, i32 2
  %52 = ptrtoint ptr %esp_config3.9.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 5, ptr %esp_config3.9.i.i, align 2
  %esp_config3.10.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 10, i32 2
  %53 = ptrtoint ptr %esp_config3.10.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 5, ptr %esp_config3.10.i.i, align 2
  %esp_config3.11.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 11, i32 2
  %54 = ptrtoint ptr %esp_config3.11.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 5, ptr %esp_config3.11.i.i, align 2
  %esp_config3.12.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 12, i32 2
  %55 = ptrtoint ptr %esp_config3.12.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 5, ptr %esp_config3.12.i.i, align 2
  %esp_config3.13.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 13, i32 2
  %56 = ptrtoint ptr %esp_config3.13.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 5, ptr %esp_config3.13.i.i, align 2
  %esp_config3.14.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 14, i32 2
  %57 = ptrtoint ptr %esp_config3.14.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 5, ptr %esp_config3.14.i.i, align 2
  %esp_config3.15.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 15, i32 2
  %58 = ptrtoint ptr %esp_config3.15.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 5, ptr %esp_config3.15.i.i, align 2
  %prev_cfg3.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 18
  %59 = ptrtoint ptr %prev_cfg3.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 5, ptr %prev_cfg3.i, align 2
  %ops16.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 2
  %60 = ptrtoint ptr %ops16.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops16.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %64 = ptrtoint ptr %config2.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %config2.i, align 2
  tail call void %63(ptr noundef %esp, i8 noundef zeroext %65, i32 noundef 11) #10
  %66 = ptrtoint ptr %ops16.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops16.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  tail call void %69(ptr noundef %esp, i8 noundef zeroext 0, i32 noundef 12) #10
  %70 = ptrtoint ptr %ops16.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops16.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = ptrtoint ptr %prev_cfg3.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %prev_cfg3.i, align 2
  tail call void %73(ptr noundef %esp, i8 noundef zeroext %75, i32 noundef 12) #10
  %76 = ptrtoint ptr %ops16.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops16.i, align 4
  %esp_read825.i = getelementptr inbounds %struct.esp_driver_ops, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %esp_read825.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %esp_read825.i, align 4
  %call26.i = tail call zeroext i8 %79(ptr noundef %esp, i32 noundef 12) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %call26.i)
  %cmp28.not.i = icmp eq i8 %call26.i, 5
  br i1 %cmp28.not.i, label %if.else.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %rev31.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 36
  %80 = ptrtoint ptr %rev31.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %rev31.i, align 4
  br label %esp_get_revision.exit

if.else.i:                                        ; preds = %if.end15.i
  %81 = ptrtoint ptr %esp_config3.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %esp_config3.i.i, align 2
  %82 = ptrtoint ptr %esp_config3.1.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %esp_config3.1.i.i, align 2
  %83 = ptrtoint ptr %esp_config3.2.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %esp_config3.2.i.i, align 2
  %84 = ptrtoint ptr %esp_config3.3.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %esp_config3.3.i.i, align 2
  %85 = ptrtoint ptr %esp_config3.4.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %esp_config3.4.i.i, align 2
  %86 = ptrtoint ptr %esp_config3.5.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %esp_config3.5.i.i, align 2
  %87 = ptrtoint ptr %esp_config3.6.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %esp_config3.6.i.i, align 2
  %88 = ptrtoint ptr %esp_config3.7.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %esp_config3.7.i.i, align 2
  %89 = ptrtoint ptr %esp_config3.8.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %esp_config3.8.i.i, align 2
  %90 = ptrtoint ptr %esp_config3.9.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %esp_config3.9.i.i, align 2
  %91 = ptrtoint ptr %esp_config3.10.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %esp_config3.10.i.i, align 2
  %92 = ptrtoint ptr %esp_config3.11.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %esp_config3.11.i.i, align 2
  %93 = ptrtoint ptr %esp_config3.12.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %esp_config3.12.i.i, align 2
  %94 = ptrtoint ptr %esp_config3.13.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %esp_config3.13.i.i, align 2
  %95 = ptrtoint ptr %esp_config3.14.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %esp_config3.14.i.i, align 2
  %96 = ptrtoint ptr %esp_config3.15.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %esp_config3.15.i.i, align 2
  %97 = ptrtoint ptr %prev_cfg3.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %prev_cfg3.i, align 2
  %98 = ptrtoint ptr %ops16.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops16.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  tail call void %101(ptr noundef %esp, i8 noundef zeroext 0, i32 noundef 12) #10
  %102 = ptrtoint ptr %cfact.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cfact.i, align 4
  %104 = add i32 %103, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %104)
  %105 = icmp ult i32 %104, -5
  %rev42.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 36
  br i1 %105, label %if.then41.i, label %if.else43.i

if.then41.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %rev42.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 7, ptr %rev42.i, align 4
  %107 = ptrtoint ptr %sync_defp.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 25, ptr %sync_defp.i, align 4
  br label %esp_get_revision.exit

if.else43.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %rev42.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 2, ptr %rev42.i, align 4
  br label %esp_get_revision.exit

esp_get_revision.exit:                            ; preds = %if.else43.i, %if.then41.i, %if.then30.i, %if.then14.i
  %queued_cmds.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 6
  %109 = ptrtoint ptr %queued_cmds.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %queued_cmds.i, ptr %queued_cmds.i, align 4
  %prev.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 6, i32 1
  %110 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %queued_cmds.i, ptr %prev.i.i, align 4
  %active_cmds.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 7
  %111 = ptrtoint ptr %active_cmds.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %active_cmds.i, ptr %active_cmds.i, align 4
  %prev.i22.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 7, i32 1
  %112 = ptrtoint ptr %prev.i22.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %active_cmds.i, ptr %prev.i22.i, align 4
  %esp_cmd_pool.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 20
  %113 = ptrtoint ptr %esp_cmd_pool.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %esp_cmd_pool.i, ptr %esp_cmd_pool.i, align 4
  %prev.i23.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 20, i32 1
  %114 = ptrtoint ptr %prev.i23.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %esp_cmd_pool.i, ptr %prev.i23.i, align 4
  %flags.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 0, i32 3
  %115 = call ptr @memset(ptr %flags.i, i32 0, i32 5)
  %flags.i.1 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 1, i32 3
  %116 = call ptr @memset(ptr %flags.i.1, i32 0, i32 5)
  %flags.i.2 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 2, i32 3
  %117 = call ptr @memset(ptr %flags.i.2, i32 0, i32 5)
  %flags.i.3 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 3, i32 3
  %118 = call ptr @memset(ptr %flags.i.3, i32 0, i32 5)
  %flags.i.4 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 4, i32 3
  %119 = call ptr @memset(ptr %flags.i.4, i32 0, i32 5)
  %flags.i.5 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 5, i32 3
  %120 = call ptr @memset(ptr %flags.i.5, i32 0, i32 5)
  %flags.i.6 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 6, i32 3
  %121 = call ptr @memset(ptr %flags.i.6, i32 0, i32 5)
  %flags.i.7 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 7, i32 3
  %122 = call ptr @memset(ptr %flags.i.7, i32 0, i32 5)
  %flags.i.8 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 8, i32 3
  %123 = call ptr @memset(ptr %flags.i.8, i32 0, i32 5)
  %flags.i.9 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 9, i32 3
  %124 = call ptr @memset(ptr %flags.i.9, i32 0, i32 5)
  %flags.i.10 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 10, i32 3
  %125 = call ptr @memset(ptr %flags.i.10, i32 0, i32 5)
  %flags.i.11 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 11, i32 3
  %126 = call ptr @memset(ptr %flags.i.11, i32 0, i32 5)
  %flags.i.12 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 12, i32 3
  %127 = call ptr @memset(ptr %flags.i.12, i32 0, i32 5)
  %flags.i.13 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 13, i32 3
  %128 = call ptr @memset(ptr %flags.i.13, i32 0, i32 5)
  %flags.i.14 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 14, i32 3
  %129 = call ptr @memset(ptr %flags.i.14, i32 0, i32 5)
  %flags.i.15 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 15, i32 3
  %130 = call ptr @memset(ptr %flags.i.15, i32 0, i32 5)
  tail call fastcc void @esp_bootup_reset(ptr noundef %esp)
  %dev = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 4
  %131 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev, align 4
  %133 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %host, align 4
  %unique_id6 = getelementptr inbounds %struct.Scsi_Host, ptr %134, i32 0, i32 23
  %135 = ptrtoint ptr %unique_id6 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %unique_id6, align 8
  %137 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %esp, align 4
  %dma_regs = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 1
  %139 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dma_regs, align 4
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %134, i32 0, i32 47
  %141 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %132, ptr noundef nonnull @.str.5, i32 noundef %136, ptr noundef %138, ptr noundef %140, i32 noundef %142) #13
  %143 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev, align 4
  %145 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %host, align 4
  %unique_id13 = getelementptr inbounds %struct.Scsi_Host, ptr %146, i32 0, i32 23
  %147 = ptrtoint ptr %unique_id13 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %unique_id13, align 8
  %rev = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 36
  %149 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %rev, align 4
  %arrayidx = getelementptr [9 x ptr], ptr @esp_chip_names, i32 0, i32 %150
  %151 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx, align 4
  %153 = ptrtoint ptr %cfreq.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %cfreq.i, align 4
  %div = udiv i32 %154, 1000000
  %155 = ptrtoint ptr %cfact.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cfact.i, align 4
  %157 = ptrtoint ptr %scsi_id.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %scsi_id.i, align 4
  %conv = zext i8 %158 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %144, ptr noundef nonnull @.str.9, i32 noundef %148, ptr noundef %152, i32 noundef %div, i32 noundef %156, i32 noundef %conv) #13
  %159 = load i32, ptr @esp_bus_reset_settle, align 4
  %mul.i47 = mul i32 %159, 1000
  tail call void @msleep(i32 noundef %mul.i47) #10
  %160 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %host, align 4
  %162 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev, align 4
  %call.i48 = tail call i32 @scsi_add_host_with_dma(ptr noundef %161, ptr noundef %163, ptr noundef %163) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool16.not = icmp eq i32 %call.i48, 0
  br i1 %tobool16.not, label %if.end18, label %esp_get_revision.exit.cleanup_crit_edge

esp_get_revision.exit.cleanup_crit_edge:          ; preds = %esp_get_revision.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %esp_get_revision.exit
  call void @__sanitizer_cov_trace_pc() #12
  %164 = load i32, ptr @scsi_esp_register.instance, align 4
  %inc = add i32 %164, 1
  store i32 %inc, ptr @scsi_esp_register.instance, align 4
  %165 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %host, align 4
  tail call void @scsi_scan_host(ptr noundef %166) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %esp_get_revision.exit.cleanup_crit_edge
  ret i32 %call.i48
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esp_bootup_reset(ptr noundef %esp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %reset_dma = getelementptr inbounds %struct.esp_driver_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reset_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_dma, align 4
  tail call void %3(ptr noundef %esp) #10
  %esp_event_cur.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 25
  %4 = ptrtoint ptr %esp_event_cur.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %esp_event_cur.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %arrayidx.i.i, align 1
  %val1.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %5, i32 1
  %7 = ptrtoint ptr %val1.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %val1.i.i, align 1
  %sreg.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 11
  %8 = ptrtoint ptr %sreg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sreg.i.i.i, align 4
  %sreg1.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %5, i32 2
  %10 = ptrtoint ptr %sreg1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %sreg1.i.i.i, align 1
  %seqreg.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 12
  %11 = ptrtoint ptr %seqreg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %seqreg.i.i.i, align 1
  %seqreg2.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %5, i32 3
  %13 = ptrtoint ptr %seqreg2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %seqreg2.i.i.i, align 1
  %sreg2.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 13
  %14 = ptrtoint ptr %sreg2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sreg2.i.i.i, align 2
  %sreg23.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %5, i32 4
  %16 = ptrtoint ptr %sreg23.i.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %sreg23.i.i.i, align 1
  %ireg.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 14
  %17 = ptrtoint ptr %ireg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ireg.i.i.i, align 1
  %ireg4.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %5, i32 5
  %19 = ptrtoint ptr %ireg4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %ireg4.i.i.i, align 1
  %select_state.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 38
  %20 = ptrtoint ptr %select_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %select_state.i.i.i, align 4
  %select_state5.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %5, i32 6
  %22 = ptrtoint ptr %select_state5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %select_state5.i.i.i, align 1
  %event.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 39
  %23 = ptrtoint ptr %event.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %event.i.i.i, align 1
  %event6.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %5, i32 7
  %25 = ptrtoint ptr %event6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %event6.i.i.i, align 1
  %add.i.i = add i32 %5, 1
  %and.i.i = and i32 %add.i.i, 31
  store i32 %and.i.i, ptr %esp_event_cur.i.i, align 4
  %26 = load i32, ptr @esp_debug, align 4
  %and3.i.i = and i32 %26, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool.not.i.i, label %entry.scsi_esp_cmd.exit.i_crit_edge, label %do.end.i.i

entry.scsi_esp_cmd.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %host.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %27 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host.i.i, align 4
  %shost_gendev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %28, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i.i, ptr noundef nonnull @.str, i32 noundef 2) #13
  br label %scsi_esp_cmd.exit.i

scsi_esp_cmd.exit.i:                              ; preds = %do.end.i.i, %entry.scsi_esp_cmd.exit.i_crit_edge
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  tail call void %32(ptr noundef %esp, i8 noundef zeroext 2, i32 noundef 3) #10
  %33 = ptrtoint ptr %esp_event_cur.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %esp_event_cur.i.i, align 4
  %arrayidx.i265.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %34
  %35 = ptrtoint ptr %arrayidx.i265.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %arrayidx.i265.i, align 1
  %val1.i266.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %34, i32 1
  %36 = ptrtoint ptr %val1.i266.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -128, ptr %val1.i266.i, align 1
  %37 = ptrtoint ptr %sreg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sreg.i.i.i, align 4
  %sreg1.i.i268.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %34, i32 2
  %39 = ptrtoint ptr %sreg1.i.i268.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %sreg1.i.i268.i, align 1
  %40 = ptrtoint ptr %seqreg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %seqreg.i.i.i, align 1
  %seqreg2.i.i270.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %34, i32 3
  %42 = ptrtoint ptr %seqreg2.i.i270.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %seqreg2.i.i270.i, align 1
  %43 = ptrtoint ptr %sreg2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %sreg2.i.i.i, align 2
  %sreg23.i.i272.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %34, i32 4
  %45 = ptrtoint ptr %sreg23.i.i272.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %sreg23.i.i272.i, align 1
  %46 = ptrtoint ptr %ireg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ireg.i.i.i, align 1
  %ireg4.i.i274.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %34, i32 5
  %48 = ptrtoint ptr %ireg4.i.i274.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %ireg4.i.i274.i, align 1
  %49 = ptrtoint ptr %select_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %select_state.i.i.i, align 4
  %select_state5.i.i276.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %34, i32 6
  %51 = ptrtoint ptr %select_state5.i.i276.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %select_state5.i.i276.i, align 1
  %52 = ptrtoint ptr %event.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %event.i.i.i, align 1
  %event6.i.i278.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %34, i32 7
  %54 = ptrtoint ptr %event6.i.i278.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %event6.i.i278.i, align 1
  %add.i279.i = add i32 %34, 1
  %and.i280.i = and i32 %add.i279.i, 31
  store i32 %and.i280.i, ptr %esp_event_cur.i.i, align 4
  %55 = load i32, ptr @esp_debug, align 4
  %and3.i281.i = and i32 %55, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i281.i)
  %tobool.not.i282.i = icmp eq i32 %and3.i281.i, 0
  br i1 %tobool.not.i282.i, label %scsi_esp_cmd.exit.i.scsi_esp_cmd.exit287.i_crit_edge, label %do.end.i285.i

scsi_esp_cmd.exit.i.scsi_esp_cmd.exit287.i_crit_edge: ; preds = %scsi_esp_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit287.i

do.end.i285.i:                                    ; preds = %scsi_esp_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %host.i283.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %56 = ptrtoint ptr %host.i283.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %host.i283.i, align 4
  %shost_gendev.i284.i = getelementptr inbounds %struct.Scsi_Host, ptr %57, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i284.i, ptr noundef nonnull @.str, i32 noundef 128) #13
  br label %scsi_esp_cmd.exit287.i

scsi_esp_cmd.exit287.i:                           ; preds = %do.end.i285.i, %scsi_esp_cmd.exit.i.scsi_esp_cmd.exit287.i_crit_edge
  %58 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  tail call void %61(ptr noundef %esp, i8 noundef zeroext -128, i32 noundef 3) #10
  %rev.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 36
  %62 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %63)
  %cmp.i = icmp eq i32 %63, 7
  br i1 %cmp.i, label %if.then.i, label %scsi_esp_cmd.exit287.i.if.end.i_crit_edge

scsi_esp_cmd.exit287.i.if.end.i_crit_edge:        ; preds = %scsi_esp_cmd.exit287.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %scsi_esp_cmd.exit287.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  tail call void %67(ptr noundef %esp, i8 noundef zeroext 64, i32 noundef 11) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %scsi_esp_cmd.exit287.i.if.end.i_crit_edge
  %68 = ptrtoint ptr %esp_event_cur.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %esp_event_cur.i.i, align 4
  %arrayidx.i289.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %69
  %70 = ptrtoint ptr %arrayidx.i289.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 2, ptr %arrayidx.i289.i, align 1
  %val1.i290.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %69, i32 1
  %71 = ptrtoint ptr %val1.i290.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -128, ptr %val1.i290.i, align 1
  %72 = ptrtoint ptr %sreg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %sreg.i.i.i, align 4
  %sreg1.i.i292.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %69, i32 2
  %74 = ptrtoint ptr %sreg1.i.i292.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %sreg1.i.i292.i, align 1
  %75 = ptrtoint ptr %seqreg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %seqreg.i.i.i, align 1
  %seqreg2.i.i294.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %69, i32 3
  %77 = ptrtoint ptr %seqreg2.i.i294.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %seqreg2.i.i294.i, align 1
  %78 = ptrtoint ptr %sreg2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %sreg2.i.i.i, align 2
  %sreg23.i.i296.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %69, i32 4
  %80 = ptrtoint ptr %sreg23.i.i296.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %sreg23.i.i296.i, align 1
  %81 = ptrtoint ptr %ireg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ireg.i.i.i, align 1
  %ireg4.i.i298.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %69, i32 5
  %83 = ptrtoint ptr %ireg4.i.i298.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %ireg4.i.i298.i, align 1
  %84 = ptrtoint ptr %select_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %select_state.i.i.i, align 4
  %select_state5.i.i300.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %69, i32 6
  %86 = ptrtoint ptr %select_state5.i.i300.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %select_state5.i.i300.i, align 1
  %87 = ptrtoint ptr %event.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %event.i.i.i, align 1
  %event6.i.i302.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %69, i32 7
  %89 = ptrtoint ptr %event6.i.i302.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %event6.i.i302.i, align 1
  %add.i303.i = add i32 %69, 1
  %and.i304.i = and i32 %add.i303.i, 31
  store i32 %and.i304.i, ptr %esp_event_cur.i.i, align 4
  %90 = load i32, ptr @esp_debug, align 4
  %and3.i305.i = and i32 %90, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i305.i)
  %tobool.not.i306.i = icmp eq i32 %and3.i305.i, 0
  br i1 %tobool.not.i306.i, label %if.end.i.scsi_esp_cmd.exit311.i_crit_edge, label %do.end.i309.i

if.end.i.scsi_esp_cmd.exit311.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit311.i

do.end.i309.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %host.i307.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %91 = ptrtoint ptr %host.i307.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %host.i307.i, align 4
  %shost_gendev.i308.i = getelementptr inbounds %struct.Scsi_Host, ptr %92, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i308.i, ptr noundef nonnull @.str, i32 noundef 128) #13
  br label %scsi_esp_cmd.exit311.i

scsi_esp_cmd.exit311.i:                           ; preds = %do.end.i309.i, %if.end.i.scsi_esp_cmd.exit311.i_crit_edge
  %93 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  tail call void %96(ptr noundef %esp, i8 noundef zeroext -128, i32 noundef 3) #10
  %ccycle.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 42
  %97 = ptrtoint ptr %ccycle.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ccycle.i, align 4
  %mul.i = mul i32 %98, 35
  %div.i = udiv i32 %mul.i, 1000
  %max_period.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 46
  %99 = ptrtoint ptr %max_period.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %div.i, ptr %max_period.i, align 4
  %100 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %101)
  %cmp2.i = icmp eq i32 %101, 7
  br i1 %cmp2.i, label %if.then3.i, label %if.else32.i

if.then3.i:                                       ; preds = %scsi_esp_cmd.exit311.i
  %102 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ops, align 4
  %esp_read8.i = getelementptr inbounds %struct.esp_driver_ops, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %esp_read8.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %esp_read8.i, align 4
  %call.i = tail call zeroext i8 %105(ptr noundef %esp, i32 noundef 14) #10
  %106 = lshr i8 %call.i, 3
  %trunc.i = trunc i8 %106 to i5
  %107 = zext i5 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.182)
  switch i5 %trunc.i, label %if.else24.i [
    i5 2, label %if.then9.i
    i5 10, label %if.then14.i
    i5 -12, label %if.then20.i
  ]

if.then9.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %rev.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 3, ptr %rev.i, align 4
  br label %if.end28.i

if.then14.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %rev.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 8, ptr %rev.i, align 4
  br label %if.end28.i

if.then20.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %rev.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 5, ptr %rev.i, align 4
  %111 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  tail call void %114(ptr noundef %esp, i8 noundef zeroext 4, i32 noundef 13) #10
  br label %if.end28.i

if.else24.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %rev.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 6, ptr %rev.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else24.i, %if.then20.i, %if.then14.i, %if.then9.i
  %116 = ptrtoint ptr %ccycle.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ccycle.i, align 4
  %mul30.i = shl i32 %117, 2
  %118 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pr = load i32, ptr %rev.i, align 4
  br label %if.end37.i

if.else32.i:                                      ; preds = %scsi_esp_cmd.exit311.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul34.i = mul i32 %98, 5
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else32.i, %if.end28.i
  %119 = phi i32 [ %101, %if.else32.i ], [ %.pr, %if.end28.i ]
  %mul34.sink.i = phi i32 [ %mul34.i, %if.else32.i ], [ %mul30.i, %if.end28.i ]
  %div35.i = udiv i32 %mul34.sink.i, 1000
  %min_period36.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 47
  %120 = ptrtoint ptr %min_period36.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %div35.i, ptr %min_period36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %119)
  %cmp39.i = icmp eq i32 %119, 3
  br i1 %cmp39.i, label %if.then41.i, label %if.end37.i.if.end55.i_crit_edge

if.end37.i.if.end55.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

if.then41.i:                                      ; preds = %if.end37.i
  %121 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ops, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  tail call void %124(ptr noundef %esp, i8 noundef zeroext -128, i32 noundef 13) #10
  %125 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ops, align 4
  %esp_read845.i = getelementptr inbounds %struct.esp_driver_ops, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %esp_read845.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %esp_read845.i, align 4
  %call46.i = tail call zeroext i8 %128(ptr noundef %esp, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call46.i)
  %tobool.not.i = icmp sgt i8 %call46.i, -1
  br i1 %tobool.not.i, label %if.then41.i.if.end55.i_crit_edge, label %if.then49.i

if.then41.i.if.end55.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

if.then49.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %rev.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 4, ptr %rev.i, align 4
  %130 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ops, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %config453.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 33
  %134 = ptrtoint ptr %config453.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %config453.i, align 1
  tail call void %133(ptr noundef %esp, i8 noundef zeroext %135, i32 noundef 13) #10
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then49.i, %if.then41.i.if.end55.i_crit_edge, %if.end37.i.if.end55.i_crit_edge
  %136 = ptrtoint ptr %max_period.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %max_period.i, align 4
  %add.i = add i32 %137, 3
  %shr57.i = lshr i32 %add.i, 2
  store i32 %shr57.i, ptr %max_period.i, align 4
  %138 = ptrtoint ptr %min_period36.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %min_period36.i, align 4
  %add60.i = add i32 %139, 3
  %shr61.i = lshr i32 %add60.i, 2
  store i32 %shr61.i, ptr %min_period36.i, align 4
  %140 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ops, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %config1.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 31
  %144 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %config1.i, align 1
  tail call void %143(ptr noundef %esp, i8 noundef zeroext %145, i32 noundef 8) #10
  %146 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rev.i, align 4
  %148 = zext i32 %147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %147, label %if.end55.i.esp_reset_esp.exit_crit_edge [
    i32 6, label %sw.bb130.i
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb68.i
    i32 8, label %sw.bb75.i
    i32 3, label %if.end55.i.sw.bb79.i_crit_edge
    i32 4, label %if.end55.i.sw.bb79.i_crit_edge24
    i32 5, label %if.end55.i.sw.bb79.i_crit_edge25
  ]

if.end55.i.sw.bb79.i_crit_edge25:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb79.i

if.end55.i.sw.bb79.i_crit_edge24:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb79.i

if.end55.i.sw.bb79.i_crit_edge:                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb79.i

if.end55.i.esp_reset_esp.exit_crit_edge:          ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_reset_esp.exit

sw.bb.i:                                          ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  %149 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ops, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  %config2.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 32
  %153 = ptrtoint ptr %config2.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %config2.i, align 2
  tail call void %152(ptr noundef %esp, i8 noundef zeroext %154, i32 noundef 11) #10
  br label %esp_reset_esp.exit

sw.bb68.i:                                        ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  %155 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ops, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %config271.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 32
  %159 = ptrtoint ptr %config271.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %config271.i, align 2
  tail call void %158(ptr noundef %esp, i8 noundef zeroext %160, i32 noundef 11) #10
  %esp_config3.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 21, i32 0, i32 2
  %161 = ptrtoint ptr %esp_config3.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %esp_config3.i, align 2
  %prev_cfg3.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 18
  %163 = ptrtoint ptr %prev_cfg3.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %prev_cfg3.i, align 2
  %164 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ops, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  tail call void %167(ptr noundef %esp, i8 noundef zeroext %162, i32 noundef 12) #10
  br label %esp_reset_esp.exit

sw.bb75.i:                                        ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  %config276.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 32
  %168 = ptrtoint ptr %config276.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %config276.i, align 2
  %170 = or i8 %169, -112
  store i8 %170, ptr %config276.i, align 2
  br label %sw.bb79.i

sw.bb79.i:                                        ; preds = %sw.bb75.i, %if.end55.i.sw.bb79.i_crit_edge, %if.end55.i.sw.bb79.i_crit_edge24, %if.end55.i.sw.bb79.i_crit_edge25
  %171 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ops, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %config282.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 32
  %175 = ptrtoint ptr %config282.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %config282.i, align 2
  tail call void %174(ptr noundef %esp, i8 noundef zeroext %176, i32 noundef 11) #10
  %177 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %178)
  %cmp84.i = icmp eq i32 %178, 8
  %esp_config389.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 21, i32 0, i32 2
  %179 = ptrtoint ptr %esp_config389.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %esp_config389.i, align 2
  br i1 %cmp84.i, label %if.then86.i, label %if.else101.i

if.then86.i:                                      ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #12
  %scsi_id.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 34
  %181 = ptrtoint ptr %scsi_id.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %scsi_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %182)
  %cmp94.i = icmp ugt i8 %182, 7
  %spec.select.v.i = select i1 %cmp94.i, i8 -95, i8 -127
  %spec.select.i = or i8 %spec.select.v.i, %180
  br label %if.end109.i

if.else101.i:                                     ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #12
  %183 = or i8 %180, 8
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.else101.i, %if.then86.i
  %.sink357.i = phi i8 [ %183, %if.else101.i ], [ %spec.select.i, %if.then86.i ]
  %184 = ptrtoint ptr %esp_config389.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %.sink357.i, ptr %esp_config389.i, align 2
  %esp_config3.1.i313.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 1, i32 2
  %185 = ptrtoint ptr %esp_config3.1.i313.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %.sink357.i, ptr %esp_config3.1.i313.i, align 2
  %esp_config3.2.i314.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 2, i32 2
  %186 = ptrtoint ptr %esp_config3.2.i314.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %.sink357.i, ptr %esp_config3.2.i314.i, align 2
  %esp_config3.3.i315.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 3, i32 2
  %187 = ptrtoint ptr %esp_config3.3.i315.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %.sink357.i, ptr %esp_config3.3.i315.i, align 2
  %esp_config3.4.i316.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 4, i32 2
  %188 = ptrtoint ptr %esp_config3.4.i316.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %.sink357.i, ptr %esp_config3.4.i316.i, align 2
  %esp_config3.5.i317.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 5, i32 2
  %189 = ptrtoint ptr %esp_config3.5.i317.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %.sink357.i, ptr %esp_config3.5.i317.i, align 2
  %esp_config3.6.i318.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 6, i32 2
  %190 = ptrtoint ptr %esp_config3.6.i318.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %.sink357.i, ptr %esp_config3.6.i318.i, align 2
  %esp_config3.7.i319.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 7, i32 2
  %191 = ptrtoint ptr %esp_config3.7.i319.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %.sink357.i, ptr %esp_config3.7.i319.i, align 2
  %esp_config3.8.i320.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 8, i32 2
  %192 = ptrtoint ptr %esp_config3.8.i320.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %.sink357.i, ptr %esp_config3.8.i320.i, align 2
  %193 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 9, i32 2
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %.sink357.i, ptr %193, align 2
  %195 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 10, i32 2
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %.sink357.i, ptr %195, align 2
  %197 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 11, i32 2
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %.sink357.i, ptr %197, align 2
  %199 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 12, i32 2
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %.sink357.i, ptr %199, align 2
  %201 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 13, i32 2
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %.sink357.i, ptr %201, align 2
  %203 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 14, i32 2
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %.sink357.i, ptr %203, align 2
  %205 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 15, i32 2
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %.sink357.i, ptr %205, align 2
  %prev_cfg3113.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 18
  %207 = ptrtoint ptr %prev_cfg3113.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %.sink357.i, ptr %prev_cfg3113.i, align 2
  %208 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ops, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %209, align 4
  tail call void %211(ptr noundef %esp, i8 noundef zeroext %.sink357.i, i32 noundef 12) #10
  %212 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %213)
  %cmp118.i = icmp eq i32 %213, 8
  br i1 %cmp118.i, label %if.then120.i, label %if.else121.i

if.then120.i:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #12
  %radelay.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 48
  %214 = ptrtoint ptr %radelay.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 80, ptr %radelay.i, align 4
  br label %esp_reset_esp.exit

if.else121.i:                                     ; preds = %if.end109.i
  %flags.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 37
  %215 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %flags.i, align 4
  %and122.i = and i32 %216, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122.i)
  %tobool123.not.i = icmp eq i32 %and122.i, 0
  %radelay127.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 48
  br i1 %tobool123.not.i, label %if.else126.i, label %if.then124.i

if.then124.i:                                     ; preds = %if.else121.i
  call void @__sanitizer_cov_trace_pc() #12
  %217 = ptrtoint ptr %radelay127.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 0, ptr %radelay127.i, align 4
  br label %esp_reset_esp.exit

if.else126.i:                                     ; preds = %if.else121.i
  call void @__sanitizer_cov_trace_pc() #12
  %218 = ptrtoint ptr %radelay127.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 96, ptr %radelay127.i, align 4
  br label %esp_reset_esp.exit

sw.bb130.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  %219 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ops, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %220, align 4
  %config2133.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 32
  %223 = ptrtoint ptr %config2133.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %config2133.i, align 2
  tail call void %222(ptr noundef %esp, i8 noundef zeroext %224, i32 noundef 11) #10
  %esp_config3136.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 21, i32 0, i32 2
  %225 = ptrtoint ptr %esp_config3136.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %esp_config3136.i, align 2
  %227 = or i8 %226, 1
  store i8 %227, ptr %esp_config3136.i, align 2
  %esp_config3.1.i329.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 1, i32 2
  %228 = ptrtoint ptr %esp_config3.1.i329.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %227, ptr %esp_config3.1.i329.i, align 2
  %esp_config3.2.i330.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 2, i32 2
  %229 = ptrtoint ptr %esp_config3.2.i330.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %227, ptr %esp_config3.2.i330.i, align 2
  %esp_config3.3.i331.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 3, i32 2
  %230 = ptrtoint ptr %esp_config3.3.i331.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %227, ptr %esp_config3.3.i331.i, align 2
  %esp_config3.4.i332.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 4, i32 2
  %231 = ptrtoint ptr %esp_config3.4.i332.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %227, ptr %esp_config3.4.i332.i, align 2
  %esp_config3.5.i333.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 5, i32 2
  %232 = ptrtoint ptr %esp_config3.5.i333.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %227, ptr %esp_config3.5.i333.i, align 2
  %esp_config3.6.i334.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 6, i32 2
  %233 = ptrtoint ptr %esp_config3.6.i334.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %227, ptr %esp_config3.6.i334.i, align 2
  %esp_config3.7.i335.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 7, i32 2
  %234 = ptrtoint ptr %esp_config3.7.i335.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %227, ptr %esp_config3.7.i335.i, align 2
  %esp_config3.8.i336.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 8, i32 2
  %235 = ptrtoint ptr %esp_config3.8.i336.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %227, ptr %esp_config3.8.i336.i, align 2
  %esp_config3.9.i337.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 9, i32 2
  %236 = ptrtoint ptr %esp_config3.9.i337.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %227, ptr %esp_config3.9.i337.i, align 2
  %esp_config3.10.i338.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 10, i32 2
  %237 = ptrtoint ptr %esp_config3.10.i338.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %227, ptr %esp_config3.10.i338.i, align 2
  %esp_config3.11.i339.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 11, i32 2
  %238 = ptrtoint ptr %esp_config3.11.i339.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %227, ptr %esp_config3.11.i339.i, align 2
  %esp_config3.12.i340.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 12, i32 2
  %239 = ptrtoint ptr %esp_config3.12.i340.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %227, ptr %esp_config3.12.i340.i, align 2
  %esp_config3.13.i341.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 13, i32 2
  %240 = ptrtoint ptr %esp_config3.13.i341.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %227, ptr %esp_config3.13.i341.i, align 2
  %esp_config3.14.i342.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 14, i32 2
  %241 = ptrtoint ptr %esp_config3.14.i342.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %227, ptr %esp_config3.14.i342.i, align 2
  %esp_config3.15.i343.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 15, i32 2
  %242 = ptrtoint ptr %esp_config3.15.i343.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %227, ptr %esp_config3.15.i343.i, align 2
  %prev_cfg3143.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 18
  %243 = ptrtoint ptr %prev_cfg3143.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %227, ptr %prev_cfg3143.i, align 2
  %244 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ops, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %245, align 4
  tail call void %247(ptr noundef %esp, i8 noundef zeroext %227, i32 noundef 12) #10
  %radelay147.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 48
  %248 = ptrtoint ptr %radelay147.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 32, ptr %radelay147.i, align 4
  br label %esp_reset_esp.exit

esp_reset_esp.exit:                               ; preds = %sw.bb130.i, %if.else126.i, %if.then124.i, %if.then120.i, %sw.bb68.i, %sw.bb.i, %if.end55.i.esp_reset_esp.exit_crit_edge
  %249 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %ops, align 4
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %250, align 4
  %cfact.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 40
  %253 = ptrtoint ptr %cfact.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %cfact.i, align 4
  %conv150.i = trunc i32 %254 to i8
  tail call void %252(ptr noundef %esp, i8 noundef zeroext %conv150.i, i32 noundef 9) #10
  %prev_stp.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 17
  %255 = ptrtoint ptr %prev_stp.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 0, ptr %prev_stp.i, align 1
  %256 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %ops, align 4
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %257, align 4
  tail call void %259(ptr noundef %esp, i8 noundef zeroext 0, i32 noundef 6) #10
  %prev_soff.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 16
  %260 = ptrtoint ptr %prev_soff.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 0, ptr %prev_soff.i, align 4
  %261 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %ops, align 4
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %262, align 4
  tail call void %264(ptr noundef %esp, i8 noundef zeroext 0, i32 noundef 7) #10
  %265 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %ops, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %266, align 4
  %neg_defp.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 44
  %269 = ptrtoint ptr %neg_defp.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %neg_defp.i, align 4
  %conv159.i = trunc i32 %270 to i8
  tail call void %268(ptr noundef %esp, i8 noundef zeroext %conv159.i, i32 noundef 5) #10
  %271 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %ops, align 4
  %esp_read8161.i = getelementptr inbounds %struct.esp_driver_ops, ptr %272, i32 0, i32 1
  %273 = ptrtoint ptr %esp_read8161.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %esp_read8161.i, align 4
  %call162.i = tail call zeroext i8 %274(ptr noundef %esp, i32 noundef 5) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %275 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %275(i32 noundef 21474800) #10
  %276 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %ops, align 4
  %esp_read8 = getelementptr inbounds %struct.esp_driver_ops, ptr %277, i32 0, i32 1
  %278 = ptrtoint ptr %esp_read8 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %esp_read8, align 4
  %call = tail call zeroext i8 %279(ptr noundef %esp, i32 noundef 8) #10
  %280 = or i8 %call, 64
  %281 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %ops, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %282, align 4
  tail call void %284(ptr noundef %esp, i8 noundef zeroext %280, i32 noundef 8) #10
  %285 = ptrtoint ptr %esp_event_cur.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %esp_event_cur.i.i, align 4
  %arrayidx.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %286
  %287 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 2, ptr %arrayidx.i, align 1
  %val1.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %286, i32 1
  %288 = ptrtoint ptr %val1.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 3, ptr %val1.i, align 1
  %289 = ptrtoint ptr %sreg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %sreg.i.i.i, align 4
  %sreg1.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %286, i32 2
  %291 = ptrtoint ptr %sreg1.i.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 %290, ptr %sreg1.i.i, align 1
  %292 = ptrtoint ptr %seqreg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %seqreg.i.i.i, align 1
  %seqreg2.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %286, i32 3
  %294 = ptrtoint ptr %seqreg2.i.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %293, ptr %seqreg2.i.i, align 1
  %295 = ptrtoint ptr %sreg2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %sreg2.i.i.i, align 2
  %sreg23.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %286, i32 4
  %297 = ptrtoint ptr %sreg23.i.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 %296, ptr %sreg23.i.i, align 1
  %298 = ptrtoint ptr %ireg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %ireg.i.i.i, align 1
  %ireg4.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %286, i32 5
  %300 = ptrtoint ptr %ireg4.i.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %299, ptr %ireg4.i.i, align 1
  %301 = ptrtoint ptr %select_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %select_state.i.i.i, align 4
  %select_state5.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %286, i32 6
  %303 = ptrtoint ptr %select_state5.i.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %302, ptr %select_state5.i.i, align 1
  %304 = ptrtoint ptr %event.i.i.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %event.i.i.i, align 1
  %event6.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %286, i32 7
  %306 = ptrtoint ptr %event6.i.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %305, ptr %event6.i.i, align 1
  %add.i22 = add i32 %286, 1
  %and.i = and i32 %add.i22, 31
  store i32 %and.i, ptr %esp_event_cur.i.i, align 4
  %307 = load i32, ptr @esp_debug, align 4
  %and3.i = and i32 %307, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i23 = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i23, label %esp_reset_esp.exit.scsi_esp_cmd.exit_crit_edge, label %do.end.i

esp_reset_esp.exit.scsi_esp_cmd.exit_crit_edge:   ; preds = %esp_reset_esp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit

do.end.i:                                         ; preds = %esp_reset_esp.exit
  call void @__sanitizer_cov_trace_pc() #12
  %host.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %308 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %host.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %309, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str, i32 noundef 3) #13
  br label %scsi_esp_cmd.exit

scsi_esp_cmd.exit:                                ; preds = %do.end.i, %esp_reset_esp.exit.scsi_esp_cmd.exit_crit_edge
  %310 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %ops, align 4
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %311, align 4
  tail call void %313(ptr noundef %esp, i8 noundef zeroext 3, i32 noundef 3) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %314 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %314(i32 noundef 85899200) #10
  %315 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %ops, align 4
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %316, align 4
  %319 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %config1.i, align 1
  tail call void %318(ptr noundef %esp, i8 noundef zeroext %320, i32 noundef 8) #10
  %321 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %ops, align 4
  %esp_read87 = getelementptr inbounds %struct.esp_driver_ops, ptr %322, i32 0, i32 1
  %323 = ptrtoint ptr %esp_read87 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %esp_read87, align 4
  %call8 = tail call zeroext i8 %324(ptr noundef %esp, i32 noundef 5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_esp_unregister(ptr nocapture noundef readonly %esp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  tail call void @scsi_remove_host(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp_queuecommand(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %esp_cmd_pool.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %6 = ptrtoint ptr %esp_cmd_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %esp_cmd_pool.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %esp_cmd_pool.i.i
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 52) #14
  br label %esp_get_ent.exit.i

if.else.i.i:                                      ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else.i.i.list_del.exit.i.i_crit_edge

if.else.i.i.list_del.exit.i.i_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %7, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.else.i.i.list_del.exit.i.i_crit_edge
  %15 = call ptr @memset(ptr %7, i32 0, i32 52)
  br label %esp_get_ent.exit.i

esp_get_ent.exit.i:                               ; preds = %list_del.exit.i.i, %if.then.i.i
  %ret.0.i.i = phi ptr [ %call7.i.i.i.i, %if.then.i.i ], [ %7, %list_del.exit.i.i ]
  %tobool.not.i = icmp eq ptr %ret.0.i.i, null
  br i1 %tobool.not.i, label %esp_get_ent.exit.i.esp_queuecommand_lck.exit_crit_edge, label %if.end.i

esp_get_ent.exit.i.esp_queuecommand_lck.exit_crit_edge: ; preds = %esp_get_ent.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_queuecommand_lck.exit

if.end.i:                                         ; preds = %esp_get_ent.exit.i
  %cmd2.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ret.0.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cmd, ptr %cmd2.i, align 4
  %SCp.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22
  %17 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %SCp.i, align 4
  %queued_cmds.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %ret.0.i.i, ptr noundef %19, ptr noundef %queued_cmds.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ret.0.i.i, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %ret.0.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %queued_cmds.i, ptr %ret.0.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %ret.0.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %ret.0.i.i, ptr %19, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  tail call fastcc void @esp_maybe_execute_command(ptr noundef %hostdata.i.i) #10
  br label %esp_queuecommand_lck.exit

esp_queuecommand_lck.exit:                        ; preds = %list_add_tail.exit.i, %esp_get_ent.exit.i.esp_queuecommand_lck.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %list_add_tail.exit.i ], [ 4181, %esp_get_ent.exit.i.esp_queuecommand_lck.exit_crit_edge ]
  %24 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %call2) #10
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @esp_info(ptr nocapture noundef readnone %host) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp_eh_abort_handler(ptr noundef %cmd) #0 align 64 {
entry:
  %eh_done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %eh_done) #10
  %4 = getelementptr inbounds i8, ptr %eh_done, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 52)
  %host3 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host3, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_lock, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #10
  %10 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host3, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 49
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %12 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmnd, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv12 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.162, ptr noundef %cmd, i32 noundef %conv12) #13
  %active_cmd = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 2, i32 1
  %16 = ptrtoint ptr %active_cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %active_cmd, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end15

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host3, align 4
  %shost_gendev17 = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 49
  %cmd18 = getelementptr inbounds %struct.esp_cmd_entry, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %cmd18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd18, align 4
  %cmnd20 = getelementptr inbounds %struct.scsi_cmnd, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %cmnd20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmnd20, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv22 = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev17, ptr noundef nonnull @.str.165, ptr noundef %21, i32 noundef %conv22) #13
  br label %if.end

if.end:                                           ; preds = %do.end15, %entry.if.end_crit_edge
  %queued_cmds = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3
  %26 = ptrtoint ptr %queued_cmds to i32
  call void @__asan_load4_noabort(i32 %26)
  %ent.0220 = load ptr, ptr %queued_cmds, align 4
  %cmp25.not221 = icmp eq ptr %ent.0220, %queued_cmds
  br i1 %cmp25.not221, label %if.end.for.end_crit_edge, label %if.end.do.end29_crit_edge

if.end.do.end29_crit_edge:                        ; preds = %if.end
  br label %do.end29

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.end29:                                         ; preds = %do.end29.do.end29_crit_edge, %if.end.do.end29_crit_edge
  %ent.0222 = phi ptr [ %ent.0, %do.end29.do.end29_crit_edge ], [ %ent.0220, %if.end.do.end29_crit_edge ]
  %27 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host3, align 4
  %shost_gendev31 = getelementptr inbounds %struct.Scsi_Host, ptr %28, i32 0, i32 49
  %cmd32 = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.0222, i32 0, i32 1
  %29 = ptrtoint ptr %cmd32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmd32, align 4
  %cmnd34 = getelementptr inbounds %struct.scsi_cmnd, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %cmnd34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cmnd34, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %conv36 = zext i8 %34 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev31, ptr noundef nonnull @.str.168, ptr noundef %30, i32 noundef %conv36) #13
  %35 = ptrtoint ptr %ent.0222 to i32
  call void @__asan_load4_noabort(i32 %35)
  %ent.0 = load ptr, ptr %ent.0222, align 4
  %cmp25.not = icmp eq ptr %ent.0, %queued_cmds
  br i1 %cmp25.not, label %do.end29.for.end_crit_edge, label %do.end29.do.end29_crit_edge

do.end29.do.end29_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

do.end29.for.end_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %do.end29.for.end_crit_edge, %if.end.for.end_crit_edge
  %active_cmds = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %active_cmds to i32
  call void @__asan_load4_noabort(i32 %36)
  %ent.1223 = load ptr, ptr %active_cmds, align 4
  %cmp49.not224 = icmp eq ptr %ent.1223, %active_cmds
  br i1 %cmp49.not224, label %for.end.for.end69_crit_edge, label %for.end.do.end55_crit_edge

for.end.do.end55_crit_edge:                       ; preds = %for.end
  br label %do.end55

for.end.for.end69_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end69

do.end55:                                         ; preds = %do.end55.do.end55_crit_edge, %for.end.do.end55_crit_edge
  %ent.1225 = phi ptr [ %ent.1, %do.end55.do.end55_crit_edge ], [ %ent.1223, %for.end.do.end55_crit_edge ]
  %37 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %host3, align 4
  %shost_gendev57 = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 49
  %cmd58 = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.1225, i32 0, i32 1
  %39 = ptrtoint ptr %cmd58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cmd58, align 4
  %cmnd60 = getelementptr inbounds %struct.scsi_cmnd, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %cmnd60 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cmnd60, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %conv62 = zext i8 %44 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev57, ptr noundef nonnull @.str.171, ptr noundef %40, i32 noundef %conv62) #13
  %45 = ptrtoint ptr %ent.1225 to i32
  call void @__asan_load4_noabort(i32 %45)
  %ent.1 = load ptr, ptr %ent.1225, align 4
  %cmp49.not = icmp eq ptr %ent.1, %active_cmds
  br i1 %cmp49.not, label %do.end55.for.end69_crit_edge, label %do.end55.do.end55_crit_edge

do.end55.do.end55_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

do.end55.for.end69_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end69

for.end69:                                        ; preds = %do.end55.for.end69_crit_edge, %for.end.for.end69_crit_edge
  tail call fastcc void @esp_dump_cmd_log(ptr noundef %hostdata.i)
  %46 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host3, align 4
  %host_lock71 = getelementptr inbounds %struct.Scsi_Host, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %host_lock71 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %host_lock71, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %call5) #10
  %50 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %host3, align 4
  %host_lock80 = getelementptr inbounds %struct.Scsi_Host, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %host_lock80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %host_lock80, align 4
  %call82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #10
  br label %for.cond92

for.cond92:                                       ; preds = %for.body98.for.cond92_crit_edge, %for.end69
  %tmp.0.in = phi ptr [ %queued_cmds, %for.end69 ], [ %tmp.0, %for.body98.for.cond92_crit_edge ]
  %54 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %54)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp95.not = icmp eq ptr %tmp.0, %queued_cmds
  br i1 %cmp95.not, label %for.cond92.if.end114_crit_edge, label %for.body98

for.cond92.if.end114_crit_edge:                   ; preds = %for.cond92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

for.body98:                                       ; preds = %for.cond92
  %cmd99 = getelementptr inbounds %struct.esp_cmd_entry, ptr %tmp.0, i32 0, i32 1
  %55 = ptrtoint ptr %cmd99 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cmd99, align 4
  %cmp100 = icmp eq ptr %56, %cmd
  br i1 %cmp100, label %for.end110, label %for.body98.for.cond92_crit_edge

for.body98.for.cond92_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond92

for.end110:                                       ; preds = %for.body98
  %tobool111.not = icmp eq ptr %tmp.0, null
  br i1 %tobool111.not, label %for.end110.if.end114_crit_edge, label %if.then112

for.end110.if.end114_crit_edge:                   ; preds = %for.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then112:                                       ; preds = %for.end110
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %tmp.0) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then112.list_del.exit_crit_edge

if.then112.list_del.exit_crit_edge:               ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.0, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i, align 4
  %59 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tmp.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then112.list_del.exit_crit_edge
  %63 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tmp.0, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %65 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 327680, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %cmd) #10
  %esp_cmd_pool.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %66 = ptrtoint ptr %esp_cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %esp_cmd_pool.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %tmp.0, ptr noundef %esp_cmd_pool.i, ptr noundef %67) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_del.exit.esp_put_ent.exit_crit_edge

list_del.exit.esp_put_ent.exit_crit_edge:         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_put_ent.exit

if.end.i.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i216 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i216 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %tmp.0, ptr %prev1.i.i.i216, align 4
  %69 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %67, ptr %tmp.0, align 4
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %esp_cmd_pool.i, ptr %prev.i, align 4
  %71 = ptrtoint ptr %esp_cmd_pool.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %tmp.0, ptr %esp_cmd_pool.i, align 4
  br label %esp_put_ent.exit

esp_put_ent.exit:                                 ; preds = %if.end.i.i.i, %list_del.exit.esp_put_ent.exit_crit_edge
  %72 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %host3, align 4
  %host_lock153 = getelementptr inbounds %struct.Scsi_Host, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %host_lock153 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %host_lock153, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %75, i32 noundef %call82) #10
  br label %cleanup

if.end114:                                        ; preds = %for.end110.if.end114_crit_edge, %for.cond92.if.end114_crit_edge
  %76 = ptrtoint ptr %eh_done to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %eh_done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %eh_done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.173, ptr noundef nonnull @init_completion.__key) #10
  %77 = ptrtoint ptr %active_cmd to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %active_cmd, align 4
  %tobool116.not = icmp eq ptr %78, null
  br i1 %tobool116.not, label %if.end114.out_failure_crit_edge, label %land.lhs.true

if.end114.out_failure_crit_edge:                  ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_failure

land.lhs.true:                                    ; preds = %if.end114
  %cmd117 = getelementptr inbounds %struct.esp_cmd_entry, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %cmd117 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cmd117, align 4
  %cmp118 = icmp eq ptr %80, %cmd
  br i1 %cmp118, label %if.then120, label %land.lhs.true.out_failure_crit_edge

land.lhs.true.out_failure_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_failure

if.then120:                                       ; preds = %land.lhs.true
  %msg_out_len = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49
  %81 = ptrtoint ptr %msg_out_len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %msg_out_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool121.not = icmp eq i32 %82, 0
  br i1 %tobool121.not, label %if.end123, label %if.then120.out_failure_crit_edge

if.then120.out_failure_crit_edge:                 ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_failure

if.end123:                                        ; preds = %if.then120
  %msg_out = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 47
  %83 = ptrtoint ptr %msg_out to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 6, ptr %msg_out, align 4
  %84 = ptrtoint ptr %msg_out_len to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %msg_out_len, align 4
  %eh_done126 = getelementptr inbounds %struct.esp_cmd_entry, ptr %78, i32 0, i32 14
  %85 = ptrtoint ptr %eh_done126 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %eh_done, ptr %eh_done126, align 4
  %esp_event_cur.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 45
  %86 = ptrtoint ptr %esp_event_cur.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %esp_event_cur.i, align 4
  %arrayidx.i = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 24, i32 %87
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 2, ptr %arrayidx.i, align 1
  %val1.i = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 24, i32 %87, i32 1
  %89 = ptrtoint ptr %val1.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 26, ptr %val1.i, align 1
  %sreg.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 2
  %90 = ptrtoint ptr %sreg.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %sreg.i.i, align 4
  %sreg1.i.i = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 24, i32 %87, i32 2
  %92 = ptrtoint ptr %sreg1.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %sreg1.i.i, align 1
  %seqreg.i.i = getelementptr inbounds %struct.esp, ptr %hostdata.i, i32 0, i32 12
  %93 = ptrtoint ptr %seqreg.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %seqreg.i.i, align 1
  %seqreg2.i.i = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 24, i32 %87, i32 3
  %95 = ptrtoint ptr %seqreg2.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %seqreg2.i.i, align 1
  %sreg2.i.i = getelementptr inbounds %struct.esp, ptr %hostdata.i, i32 0, i32 13
  %96 = ptrtoint ptr %sreg2.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %sreg2.i.i, align 2
  %sreg23.i.i = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 24, i32 %87, i32 4
  %98 = ptrtoint ptr %sreg23.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %sreg23.i.i, align 1
  %ireg.i.i = getelementptr inbounds %struct.esp, ptr %hostdata.i, i32 0, i32 14
  %99 = ptrtoint ptr %ireg.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ireg.i.i, align 1
  %ireg4.i.i = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 24, i32 %87, i32 5
  %101 = ptrtoint ptr %ireg4.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %ireg4.i.i, align 1
  %select_state.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7, i32 0, i32 1
  %102 = ptrtoint ptr %select_state.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %select_state.i.i, align 4
  %select_state5.i.i = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 24, i32 %87, i32 6
  %104 = ptrtoint ptr %select_state5.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %select_state5.i.i, align 1
  %event.i.i = getelementptr inbounds %struct.esp, ptr %hostdata.i, i32 0, i32 39
  %105 = ptrtoint ptr %event.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %event.i.i, align 1
  %event6.i.i = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 24, i32 %87, i32 7
  %107 = ptrtoint ptr %event6.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %event6.i.i, align 1
  %add.i = add i32 %87, 1
  %and.i = and i32 %add.i, 31
  store i32 %and.i, ptr %esp_event_cur.i, align 4
  %108 = load i32, ptr @esp_debug, align 4
  %and3.i = and i32 %108, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.end123.scsi_esp_cmd.exit_crit_edge, label %do.end.i

if.end123.scsi_esp_cmd.exit_crit_edge:            ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit

do.end.i:                                         ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %host3, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %110, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str, i32 noundef 26) #13
  br label %scsi_esp_cmd.exit

scsi_esp_cmd.exit:                                ; preds = %do.end.i, %if.end123.scsi_esp_cmd.exit_crit_edge
  %ops.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1
  %111 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  call void %114(ptr noundef %hostdata.i, i8 noundef zeroext 26, i32 noundef 3) #10
  %115 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %host3, align 4
  %host_lock129 = getelementptr inbounds %struct.Scsi_Host, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %host_lock129 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %host_lock129, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %118, i32 noundef %call82) #10
  %call130 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %eh_done, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %do.body134, label %scsi_esp_cmd.exit.cleanup_crit_edge

scsi_esp_cmd.exit.cleanup_crit_edge:              ; preds = %scsi_esp_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body134:                                       ; preds = %scsi_esp_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %host3, align 4
  %host_lock141 = getelementptr inbounds %struct.Scsi_Host, ptr %120, i32 0, i32 4
  %121 = ptrtoint ptr %host_lock141 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %host_lock141, align 4
  %call143 = call i32 @_raw_spin_lock_irqsave(ptr noundef %122) #10
  %123 = ptrtoint ptr %eh_done126 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %eh_done126, align 4
  %124 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %host3, align 4
  %host_lock150 = getelementptr inbounds %struct.Scsi_Host, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %host_lock150 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %host_lock150, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %127, i32 noundef %call143) #10
  br label %cleanup

out_failure:                                      ; preds = %if.then120.out_failure_crit_edge, %land.lhs.true.out_failure_crit_edge, %if.end114.out_failure_crit_edge
  %128 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %host3, align 4
  %host_lock155 = getelementptr inbounds %struct.Scsi_Host, ptr %129, i32 0, i32 4
  %130 = ptrtoint ptr %host_lock155 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %host_lock155, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %131, i32 noundef %call82) #10
  br label %cleanup

cleanup:                                          ; preds = %out_failure, %do.body134, %scsi_esp_cmd.exit.cleanup_crit_edge, %esp_put_ent.exit
  %retval.0 = phi i32 [ 8194, %esp_put_ent.exit ], [ 8195, %out_failure ], [ 8195, %do.body134 ], [ 8194, %scsi_esp_cmd.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %eh_done) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp_eh_bus_reset_handler(ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  %eh_reset = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %eh_reset) #10
  %4 = getelementptr inbounds i8, ptr %eh_reset, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 52)
  %6 = ptrtoint ptr %eh_reset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %eh_reset, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %eh_reset, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.173, ptr noundef nonnull @init_completion.__key) #10
  %host2 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1, i32 1
  %7 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host2, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host_lock, align 4
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #10
  %eh_reset7 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7, i32 1, i32 1
  %11 = ptrtoint ptr %eh_reset7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %eh_reset, ptr %eh_reset7, align 4
  %flags8 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7
  %12 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags8, align 4
  %or = or i32 %13, 2
  store i32 %or, ptr %flags8, align 4
  %esp_event_cur.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 45
  %14 = ptrtoint ptr %esp_event_cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %esp_event_cur.i, align 4
  %arrayidx.i = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 24, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %arrayidx.i, align 1
  %val1.i = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 24, i32 %15, i32 1
  %17 = ptrtoint ptr %val1.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %val1.i, align 1
  %sreg.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %sreg.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sreg.i.i, align 4
  %sreg1.i.i = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 24, i32 %15, i32 2
  %20 = ptrtoint ptr %sreg1.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %sreg1.i.i, align 1
  %seqreg.i.i = getelementptr inbounds %struct.esp, ptr %hostdata.i, i32 0, i32 12
  %21 = ptrtoint ptr %seqreg.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %seqreg.i.i, align 1
  %seqreg2.i.i = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 24, i32 %15, i32 3
  %23 = ptrtoint ptr %seqreg2.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %seqreg2.i.i, align 1
  %sreg2.i.i = getelementptr inbounds %struct.esp, ptr %hostdata.i, i32 0, i32 13
  %24 = ptrtoint ptr %sreg2.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sreg2.i.i, align 2
  %sreg23.i.i = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 24, i32 %15, i32 4
  %26 = ptrtoint ptr %sreg23.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %sreg23.i.i, align 1
  %ireg.i.i = getelementptr inbounds %struct.esp, ptr %hostdata.i, i32 0, i32 14
  %27 = ptrtoint ptr %ireg.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ireg.i.i, align 1
  %ireg4.i.i = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 24, i32 %15, i32 5
  %29 = ptrtoint ptr %ireg4.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %ireg4.i.i, align 1
  %select_state.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7, i32 0, i32 1
  %30 = ptrtoint ptr %select_state.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %select_state.i.i, align 4
  %select_state5.i.i = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 24, i32 %15, i32 6
  %32 = ptrtoint ptr %select_state5.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %select_state5.i.i, align 1
  %event.i.i = getelementptr inbounds %struct.esp, ptr %hostdata.i, i32 0, i32 39
  %33 = ptrtoint ptr %event.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %event.i.i, align 1
  %event6.i.i = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 24, i32 %15, i32 7
  %35 = ptrtoint ptr %event6.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %event6.i.i, align 1
  %add.i = add i32 %15, 1
  %and.i = and i32 %add.i, 31
  store i32 %and.i, ptr %esp_event_cur.i, align 4
  %36 = load i32, ptr @esp_debug, align 4
  %and3.i = and i32 %36, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %entry.scsi_esp_cmd.exit_crit_edge, label %do.end.i

entry.scsi_esp_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %host2, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str, i32 noundef 3) #13
  br label %scsi_esp_cmd.exit

scsi_esp_cmd.exit:                                ; preds = %do.end.i, %entry.scsi_esp_cmd.exit_crit_edge
  %ops.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1
  %39 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  call void %42(ptr noundef %hostdata.i, i8 noundef zeroext 3, i32 noundef 3) #10
  %43 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %host2, align 4
  %host_lock10 = getelementptr inbounds %struct.Scsi_Host, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %host_lock10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host_lock10, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %call4) #10
  %47 = load i32, ptr @esp_bus_reset_settle, align 4
  %mul.i = mul i32 %47, 1000
  call void @msleep(i32 noundef %mul.i) #10
  %call11 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %eh_reset, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %do.body13, label %scsi_esp_cmd.exit.cleanup_crit_edge

scsi_esp_cmd.exit.cleanup_crit_edge:              ; preds = %scsi_esp_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body13:                                        ; preds = %scsi_esp_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %host2, align 4
  %host_lock20 = getelementptr inbounds %struct.Scsi_Host, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %host_lock20 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %host_lock20, align 4
  %call22 = call i32 @_raw_spin_lock_irqsave(ptr noundef %51) #10
  %52 = ptrtoint ptr %eh_reset7 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %eh_reset7, align 4
  %53 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %host2, align 4
  %host_lock29 = getelementptr inbounds %struct.Scsi_Host, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %host_lock29 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %host_lock29, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %call22) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body13, %scsi_esp_cmd.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 8195, %do.body13 ], [ 8194, %scsi_esp_cmd.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %eh_reset) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp_eh_host_reset_handler(ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %host2 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host2, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  tail call fastcc void @esp_bootup_reset(ptr noundef %hostdata.i)
  tail call fastcc void @esp_reset_cleanup(ptr noundef %hostdata.i)
  %8 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host2, align 4
  %host_lock8 = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %host_lock8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_lock8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %call4) #10
  %12 = load i32, ptr @esp_bus_reset_settle, align 4
  %mul.i = mul i32 %12, 1000
  tail call void @msleep(i32 noundef %mul.i) #10
  ret i32 8194
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp_slave_alloc(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %id = getelementptr inbounds %struct.scsi_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1036) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %dev, i32 0, i32 21
  %5 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %hostdata, align 8
  %min_period = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 6
  %6 = ptrtoint ptr %min_period to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_period, align 4
  %starget = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 21, i32 %3, i32 8
  %8 = ptrtoint ptr %starget to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %starget, align 4
  %min_period2 = getelementptr inbounds %struct.scsi_target, ptr %9, i32 1
  %10 = ptrtoint ptr %min_period2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %min_period2, align 4
  %11 = load ptr, ptr %starget, align 4
  %max_offset = getelementptr inbounds %struct.scsi_target, ptr %11, i32 1, i32 1, i32 1
  %12 = ptrtoint ptr %max_offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 15, ptr %max_offset, align 4
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %15 = load ptr, ptr %starget, align 4
  %max_width11 = getelementptr inbounds %struct.scsi_target, ptr %15, i32 1, i32 2
  %16 = ptrtoint ptr %max_width11 to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load12 = load i16, ptr %max_width11, align 4
  %bf.clear13 = and i16 %bf.load12, -16385
  %17 = trunc i32 %14 to i16
  %18 = shl i16 %17, 11
  %19 = and i16 %18, 16384
  %bf.set.sink = or i16 %bf.clear13, %19
  store i16 %bf.set.sink, ptr %max_width11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp_slave_configure(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %id = getelementptr inbounds %struct.scsi_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %tagged_supported = getelementptr inbounds %struct.scsi_device, ptr %dev, i32 0, i32 41
  %4 = ptrtoint ptr %tagged_supported to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %bf.load = load i64, ptr %tagged_supported, align 4
  %5 = and i64 %bf.load, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %num_tags = getelementptr inbounds %struct.esp, ptr %hostdata.i, i32 0, i32 19
  %6 = ptrtoint ptr %num_tags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_tags, align 1
  %conv = zext i8 %7 to i32
  %call1 = tail call i32 @scsi_change_queue_depth(ptr noundef %dev, i32 noundef %conv) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 21, i32 %3, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 1
  %10 = or i8 %9, 2
  store i8 %10, ptr %flags, align 1
  %sdev_target = getelementptr inbounds %struct.scsi_device, ptr %dev, i32 0, i32 37
  %11 = ptrtoint ptr %sdev_target to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev_target, align 8
  %initial_dv = getelementptr inbounds %struct.scsi_target, ptr %12, i32 1, i32 2
  %13 = ptrtoint ptr %initial_dv to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load4 = load i16, ptr %initial_dv, align 4
  %14 = and i16 %bf.load4, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool8.not = icmp eq i16 %14, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @spi_dv_device(ptr noundef %dev) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esp_slave_destroy(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  tail call void @kfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %hostdata, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp_target_alloc(ptr noundef %starget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %dev, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %starget2 = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 21, i32 %3, i32 8
  %4 = ptrtoint ptr %starget2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %starget, ptr %starget2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esp_target_destroy(ptr noundef %starget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %dev, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %starget2 = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 21, i32 %3, i32 8
  %4 = ptrtoint ptr %starget2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %starget2, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @esp_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @esp_transport_template, align 4
  tail call void @spi_release_transport(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_release_transport(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @esp_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_attach_transport(ptr noundef nonnull @esp_transport_ops) #10
  store ptr %call, ptr @esp_transport_template, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -19, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esp_reset_cleanup(ptr noundef %esp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queued_cmds = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 6
  %0 = ptrtoint ptr %queued_cmds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queued_cmds, align 4
  %cmp.not103 = icmp eq ptr %1, %queued_cmds
  br i1 %cmp.not103, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %esp_cmd_pool.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %esp_put_ent.exit.for.body_crit_edge, %for.body.lr.ph
  %ent.0104 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.0, %esp_put_ent.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %ent.0104 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %ent.0104, align 4
  %cmd8 = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.0104, i32 0, i32 1
  %3 = ptrtoint ptr %cmd8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd8, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ent.0104) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ent.0104, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %ent.0104 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ent.0104, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %ent.0104 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %ent.0104, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ent.0104, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 24
  %13 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 524288, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %4) #10
  %14 = ptrtoint ptr %esp_cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %esp_cmd_pool.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ent.0104, ptr noundef %esp_cmd_pool.i, ptr noundef %15) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_del.exit.esp_put_ent.exit_crit_edge

list_del.exit.esp_put_ent.exit_crit_edge:         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_put_ent.exit

if.end.i.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i99 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ent.0104, ptr %prev1.i.i.i99, align 4
  %17 = ptrtoint ptr %ent.0104 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %ent.0104, align 4
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %esp_cmd_pool.i, ptr %prev.i, align 4
  %19 = ptrtoint ptr %esp_cmd_pool.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %ent.0104, ptr %esp_cmd_pool.i, align 4
  br label %esp_put_ent.exit

esp_put_ent.exit:                                 ; preds = %if.end.i.i.i, %list_del.exit.esp_put_ent.exit_crit_edge
  %cmp.not = icmp eq ptr %tmp.0, %queued_cmds
  br i1 %cmp.not, label %esp_put_ent.exit.for.end_crit_edge, label %esp_put_ent.exit.for.body_crit_edge

esp_put_ent.exit.for.body_crit_edge:              ; preds = %esp_put_ent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

esp_put_ent.exit.for.end_crit_edge:               ; preds = %esp_put_ent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %esp_put_ent.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %active_cmds = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 7
  %20 = ptrtoint ptr %active_cmds to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %active_cmds, align 4
  %cmp27.not106 = icmp eq ptr %21, %active_cmds
  br i1 %cmp27.not106, label %for.end.do.body_crit_edge, label %for.body29.lr.ph

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.body29.lr.ph:                                 ; preds = %for.end
  %active_cmd = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 5
  %flags.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 37
  %dev.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 4
  %esp_cmd_pool.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 20
  br label %for.body29

for.body29:                                       ; preds = %esp_reset_cleanup_one.exit.for.body29_crit_edge, %for.body29.lr.ph
  %ent.1107 = phi ptr [ %21, %for.body29.lr.ph ], [ %tmp.1112, %esp_reset_cleanup_one.exit.for.body29_crit_edge ]
  %22 = ptrtoint ptr %ent.1107 to i32
  call void @__asan_load4_noabort(i32 %22)
  %tmp.1112 = load ptr, ptr %ent.1107, align 4
  %23 = ptrtoint ptr %active_cmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %active_cmd, align 4
  %cmp30 = icmp eq ptr %ent.1107, %24
  br i1 %cmp30, label %if.then, label %for.body29.if.end_crit_edge

for.body29.if.end_crit_edge:                      ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %active_cmd to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %active_cmd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body29.if.end_crit_edge
  %cmd1.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.1107, i32 0, i32 1
  %26 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd1.i, align 4
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.esp_unmap_dma.exit.i_crit_edge

if.end.esp_unmap_dma.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_unmap_dma.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @scsi_dma_unmap(ptr noundef %27) #10
  br label %esp_unmap_dma.exit.i

esp_unmap_dma.exit.i:                             ; preds = %if.then.i.i, %if.end.esp_unmap_dma.exit.i_crit_edge
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device.i, align 4
  %hostdata.i = getelementptr inbounds %struct.scsi_device, ptr %31, i32 0, i32 21
  %32 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hostdata.i, align 8
  %orig_tag.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.1107, i32 0, i32 8
  %34 = ptrtoint ptr %orig_tag.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %orig_tag.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i12.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i12.i, label %do.body16.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %esp_unmap_dma.exit.i
  %arrayidx2.i.i = getelementptr %struct.esp_cmd_entry, ptr %ent.1107, i32 0, i32 8, i32 1
  %36 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx2.i.i, align 1
  %idxprom.i.i = zext i8 %37 to i32
  %arrayidx3.i.i = getelementptr %struct.esp_lun_data, ptr %33, i32 0, i32 3, i32 %idxprom.i.i
  %38 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx3.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %39, %ent.1107
  br i1 %cmp.not.i.i, label %do.end10.i.i, label %do.body7.i.i, !prof !345

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/esp_scsi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 621, 0\0A.popsection", ""() #10, !srcloc !349
  unreachable

do.end10.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx3.i.i, align 4
  %num_tagged.i.i = getelementptr inbounds %struct.esp_lun_data, ptr %33, i32 0, i32 1
  %41 = ptrtoint ptr %num_tagged.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_tagged.i.i, align 4
  %dec.i.i = add i32 %42, -1
  store i32 %dec.i.i, ptr %num_tagged.i.i, align 4
  br label %esp_free_lun_tag.exit.i

do.body16.i.i:                                    ; preds = %esp_unmap_dma.exit.i
  %43 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %33, align 4
  %cmp17.not.i.i = icmp eq ptr %44, %ent.1107
  br i1 %cmp17.not.i.i, label %do.end30.i.i, label %do.body25.i.i, !prof !345

do.body25.i.i:                                    ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/esp_scsi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 625, 0\0A.popsection", ""() #10, !srcloc !350
  unreachable

do.end30.i.i:                                     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %33, align 4
  br label %esp_free_lun_tag.exit.i

esp_free_lun_tag.exit.i:                          ; preds = %do.end30.i.i, %do.end10.i.i
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %27, i32 0, i32 24
  %46 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 524288, ptr %result.i, align 4
  %flags.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.1107, i32 0, i32 6
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %flags.i, align 4
  %49 = and i8 %48, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i, label %esp_free_lun_tag.exit.i.if.end.i_crit_edge, label %if.then.i

esp_free_lun_tag.exit.i.if.end.i_crit_edge:       ; preds = %esp_free_lun_tag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %esp_free_lun_tag.exit.i
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i.i, align 4
  %and.i14.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i)
  %tobool.not.i15.i = icmp eq i32 %and.i14.i, 0
  br i1 %tobool.not.i15.i, label %if.then.i16.i, label %if.then.i.esp_unmap_sense.exit.i_crit_edge

if.then.i.esp_unmap_sense.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_unmap_sense.exit.i

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i, align 4
  %sense_dma.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.1107, i32 0, i32 13
  %54 = ptrtoint ptr %sense_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sense_dma.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %53, i32 noundef %55, i32 noundef 96, i32 noundef 2, i32 noundef 0) #10
  br label %esp_unmap_sense.exit.i

esp_unmap_sense.exit.i:                           ; preds = %if.then.i16.i, %if.then.i.esp_unmap_sense.exit.i_crit_edge
  %sense_ptr.i.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.1107, i32 0, i32 11
  %56 = ptrtoint ptr %sense_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %sense_ptr.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %esp_unmap_sense.exit.i, %esp_free_lun_tag.exit.i.if.end.i_crit_edge
  tail call void @scsi_done(ptr noundef %27) #10
  %call.i.i.i100 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ent.1107) #10
  br i1 %call.i.i.i100, label %if.end.i.i.i101, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i101:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ent.1107, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i, align 4
  %59 = ptrtoint ptr %ent.1107 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ent.1107, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i101, %if.end.i.list_del.exit.i_crit_edge
  %63 = ptrtoint ptr %ent.1107 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %ent.1107, align 4
  %prev.i.i102 = getelementptr inbounds %struct.list_head, ptr %ent.1107, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i102, align 4
  %65 = ptrtoint ptr %esp_cmd_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %esp_cmd_pool.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ent.1107, ptr noundef %esp_cmd_pool.i.i, ptr noundef %66) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %list_del.exit.i.esp_reset_cleanup_one.exit_crit_edge

list_del.exit.i.esp_reset_cleanup_one.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_reset_cleanup_one.exit

if.end.i.i.i.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i17.i = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %ent.1107, ptr %prev1.i.i.i17.i, align 4
  %68 = ptrtoint ptr %ent.1107 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %66, ptr %ent.1107, align 4
  %69 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %esp_cmd_pool.i.i, ptr %prev.i.i102, align 4
  %70 = ptrtoint ptr %esp_cmd_pool.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %ent.1107, ptr %esp_cmd_pool.i.i, align 4
  br label %esp_reset_cleanup_one.exit

esp_reset_cleanup_one.exit:                       ; preds = %if.end.i.i.i.i, %list_del.exit.i.esp_reset_cleanup_one.exit_crit_edge
  %cmp27.not = icmp eq ptr %tmp.1112, %active_cmds
  br i1 %cmp27.not, label %esp_reset_cleanup_one.exit.do.body_crit_edge, label %esp_reset_cleanup_one.exit.for.body29_crit_edge

esp_reset_cleanup_one.exit.for.body29_crit_edge:  ; preds = %esp_reset_cleanup_one.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29

esp_reset_cleanup_one.exit.do.body_crit_edge:     ; preds = %esp_reset_cleanup_one.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %esp_reset_cleanup_one.exit.do.body_crit_edge, %for.end.do.body_crit_edge
  %active_cmd39 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 5
  %71 = ptrtoint ptr %active_cmd39 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %active_cmd39, align 4
  %cmp40.not = icmp eq ptr %72, null
  br i1 %cmp40.not, label %do.body.for.body53_crit_edge, label %do.body44, !prof !345

do.body.for.body53_crit_edge:                     ; preds = %do.body
  br label %for.body53

do.body44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/esp_scsi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2072, 0\0A.popsection", ""() #10, !srcloc !351
  unreachable

for.body53:                                       ; preds = %if.end64.for.body53_crit_edge, %do.body.for.body53_crit_edge
  %i.0113 = phi i32 [ %inc, %if.end64.for.body53_crit_edge ], [ 0, %do.body.for.body53_crit_edge ]
  %arrayidx = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %i.0113
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayidx, align 4
  %esp_offset = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %i.0113, i32 1
  %74 = ptrtoint ptr %esp_offset to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %esp_offset, align 1
  %esp_config3 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %i.0113, i32 2
  %75 = ptrtoint ptr %esp_config3 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %esp_config3, align 2
  %77 = and i8 %76, -83
  store i8 %77, ptr %esp_config3, align 2
  %flags = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %i.0113, i32 3
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %flags, align 1
  %80 = and i8 %79, -66
  %81 = or i8 %80, 64
  store i8 %81, ptr %flags, align 1
  %starget = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %i.0113, i32 8
  %82 = ptrtoint ptr %starget to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %starget, align 4
  %tobool61.not = icmp eq ptr %83, null
  br i1 %tobool61.not, label %for.body53.if.end64_crit_edge, label %if.then62

for.body53.if.end64_crit_edge:                    ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then62:                                        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__starget_for_each_device(ptr noundef nonnull %83, ptr noundef null, ptr noundef nonnull @esp_clear_hold) #10
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %for.body53.if.end64_crit_edge
  %inc = add nuw nsw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end66, label %if.end64.for.body53_crit_edge

if.end64.for.body53_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body53

for.end66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %flags67 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 37
  %84 = ptrtoint ptr %flags67 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags67, align 4
  %and68 = and i32 %85, -3
  store i32 %and68, ptr %flags67, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esp_dump_cmd_log(ptr nocapture noundef readonly %esp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %esp_event_cur = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 25
  %0 = ptrtoint ptr %esp_event_cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %esp_event_cur, align 4
  %host = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %shost_gendev, ptr noundef nonnull @.str.28) #13
  br label %do.body1

do.body1:                                         ; preds = %do.body1.do.body1_crit_edge, %entry
  %idx.0 = phi i32 [ %1, %entry ], [ %and, %do.body1.do.body1_crit_edge ]
  %arrayidx = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %idx.0
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %shost_gendev6 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 49
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp eq i8 %7, 2
  %cond = select i1 %cmp, ptr @.str.33, ptr @.str.34
  %val = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %idx.0, i32 1
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 1
  %conv8 = zext i8 %9 to i32
  %sreg = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %idx.0, i32 2
  %10 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sreg, align 1
  %conv9 = zext i8 %11 to i32
  %seqreg = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %idx.0, i32 3
  %12 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %seqreg, align 1
  %conv10 = zext i8 %13 to i32
  %sreg2 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %idx.0, i32 4
  %14 = ptrtoint ptr %sreg2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sreg2, align 1
  %conv11 = zext i8 %15 to i32
  %ireg = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %idx.0, i32 5
  %16 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ireg, align 1
  %conv12 = zext i8 %17 to i32
  %select_state = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %idx.0, i32 6
  %18 = ptrtoint ptr %select_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %select_state, align 1
  %conv13 = zext i8 %19 to i32
  %event = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %idx.0, i32 7
  %20 = ptrtoint ptr %event to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %event, align 1
  %conv14 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %shost_gendev6, ptr noundef nonnull @.str.31, i32 noundef %idx.0, ptr noundef nonnull %cond, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14) #13
  %add = add i32 %idx.0, 1
  %and = and i32 %add, 31
  %cmp16.not = icmp eq i32 %and, %1
  br i1 %cmp16.not, label %do.end18, label %do.body1.do.body1_crit_edge

do.body1.do.body1_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1

do.end18:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esp_schedule_reset(ptr nocapture noundef %esp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @esp_debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %host = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %1 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 49
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.35, ptr noundef %3) #13
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %flags = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 37
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 2
  store i32 %or, ptr %flags, align 4
  %esp_event_cur.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 25
  %6 = ptrtoint ptr %esp_event_cur.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %esp_event_cur.i, align 4
  %arrayidx.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx.i, align 1
  %val1.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %7, i32 1
  %9 = ptrtoint ptr %val1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %val1.i, align 1
  %sreg.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 11
  %10 = ptrtoint ptr %sreg.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sreg.i.i, align 4
  %sreg1.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %7, i32 2
  %12 = ptrtoint ptr %sreg1.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %sreg1.i.i, align 1
  %seqreg.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 12
  %13 = ptrtoint ptr %seqreg.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %seqreg.i.i, align 1
  %seqreg2.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %7, i32 3
  %15 = ptrtoint ptr %seqreg2.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %seqreg2.i.i, align 1
  %sreg2.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 13
  %16 = ptrtoint ptr %sreg2.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sreg2.i.i, align 2
  %sreg23.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %7, i32 4
  %18 = ptrtoint ptr %sreg23.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %sreg23.i.i, align 1
  %ireg.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 14
  %19 = ptrtoint ptr %ireg.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ireg.i.i, align 1
  %ireg4.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %7, i32 5
  %21 = ptrtoint ptr %ireg4.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %ireg4.i.i, align 1
  %select_state.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 38
  %22 = ptrtoint ptr %select_state.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %select_state.i.i, align 4
  %select_state5.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %7, i32 6
  %24 = ptrtoint ptr %select_state5.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %select_state5.i.i, align 1
  %event.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 39
  %25 = ptrtoint ptr %event.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %event.i.i, align 1
  %event6.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %7, i32 7
  %27 = ptrtoint ptr %event6.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %event6.i.i, align 1
  %add.i = add i32 %7, 1
  %and.i = and i32 %add.i, 31
  store i32 %and.i, ptr %esp_event_cur.i, align 4
  store i8 16, ptr %event.i.i, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esp_finish_select(ptr noundef %esp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %select_state = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 38
  %0 = ptrtoint ptr %select_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %select_state, align 4
  %ops = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 2
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %esp_read8 = getelementptr inbounds %struct.esp_driver_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %esp_read8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %esp_read8, align 4
  %call = tail call zeroext i8 %4(ptr noundef %esp, i32 noundef 6) #10
  %5 = and i8 %call, 7
  %seqreg = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 12
  %6 = ptrtoint ptr %seqreg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %seqreg, align 1
  %active_cmd = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 5
  %7 = ptrtoint ptr %active_cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %active_cmd, align 4
  %cmd2 = getelementptr inbounds %struct.esp_cmd_entry, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd2, align 4
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %dma_error = getelementptr inbounds %struct.esp_driver_ops, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %dma_error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_error, align 4
  %call4 = tail call i32 %14(ptr noundef %esp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %15 = load i32, ptr @esp_debug, align 4
  %and.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.esp_schedule_reset.exit_crit_edge, label %do.end.i

if.then.esp_schedule_reset.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_schedule_reset.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %host.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %16 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 0, i32 49
  %18 = tail call ptr @llvm.returnaddress(i32 0) #10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.35, ptr noundef %18) #13
  br label %esp_schedule_reset.exit

esp_schedule_reset.exit:                          ; preds = %do.end.i, %if.then.esp_schedule_reset.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 37
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %20, 2
  store i32 %or.i, ptr %flags.i, align 4
  %esp_event_cur.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 25
  %21 = ptrtoint ptr %esp_event_cur.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %esp_event_cur.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %arrayidx.i.i, align 1
  %val1.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %22, i32 1
  %24 = ptrtoint ptr %val1.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 16, ptr %val1.i.i, align 1
  %sreg.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 11
  %25 = ptrtoint ptr %sreg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sreg.i.i.i, align 4
  %sreg1.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %22, i32 2
  %27 = ptrtoint ptr %sreg1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %sreg1.i.i.i, align 1
  %28 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %22, i32 3
  %30 = ptrtoint ptr %seqreg2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %seqreg2.i.i.i, align 1
  %sreg2.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 13
  %31 = ptrtoint ptr %sreg2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sreg2.i.i.i, align 2
  %sreg23.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %22, i32 4
  %33 = ptrtoint ptr %sreg23.i.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %sreg23.i.i.i, align 1
  %ireg.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 14
  %34 = ptrtoint ptr %ireg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ireg.i.i.i, align 1
  %ireg4.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %22, i32 5
  %36 = ptrtoint ptr %ireg4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %ireg4.i.i.i, align 1
  %37 = ptrtoint ptr %select_state to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %select_state, align 4
  %select_state5.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %22, i32 6
  %39 = ptrtoint ptr %select_state5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %select_state5.i.i.i, align 1
  %event.i.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 39
  %40 = ptrtoint ptr %event.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %event.i.i.i, align 1
  %event6.i.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %22, i32 7
  %42 = ptrtoint ptr %event6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %event6.i.i.i, align 1
  %add.i.i = add i32 %22, 1
  %and.i.i = and i32 %add.i.i, 31
  store i32 %and.i.i, ptr %esp_event_cur.i.i, align 4
  store i8 16, ptr %event.i.i.i, align 1
  tail call fastcc void @esp_cmd_is_done(ptr noundef %esp, ptr noundef %8, ptr noundef %10, i8 noundef zeroext 7)
  br label %cleanup

if.end:                                           ; preds = %entry
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops, align 4
  %dma_invalidate = getelementptr inbounds %struct.esp_driver_ops, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %dma_invalidate to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma_invalidate, align 4
  tail call void %46(ptr noundef %esp) #10
  %ireg = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 14
  %47 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ireg, align 1
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.184)
  switch i8 %48, label %do.end [
    i8 12, label %if.then8
    i8 32, label %if.then25
    i8 24, label %if.then38
  ]

if.then8:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.esp_cmd_entry, ptr %8, i32 0, i32 6
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flags, align 4
  %52 = and i8 %51, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool11.not = icmp eq i8 %52, 0
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then8
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %10, i32 0, i32 1
  %53 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id, align 8
  %flags.i105 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 37
  %57 = ptrtoint ptr %flags.i105 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags.i105, align 4
  %and.i106 = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool.not.i107 = icmp eq i32 %and.i106, 0
  br i1 %tobool.not.i107, label %if.then.i, label %if.then12.esp_unmap_dma.exit_crit_edge

if.then12.esp_unmap_dma.exit_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_unmap_dma.exit

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @scsi_dma_unmap(ptr noundef %10) #10
  br label %esp_unmap_dma.exit

esp_unmap_dma.exit:                               ; preds = %if.then.i, %if.then12.esp_unmap_dma.exit_crit_edge
  %59 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %60, i32 0, i32 21
  %61 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hostdata, align 8
  %orig_tag.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %8, i32 0, i32 8
  %63 = ptrtoint ptr %orig_tag.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %orig_tag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i108 = icmp eq i8 %64, 0
  br i1 %tobool.not.i108, label %do.body16.i, label %do.body.i

do.body.i:                                        ; preds = %esp_unmap_dma.exit
  %arrayidx2.i = getelementptr %struct.esp_cmd_entry, ptr %8, i32 0, i32 8, i32 1
  %65 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx2.i, align 1
  %idxprom.i = zext i8 %66 to i32
  %arrayidx3.i = getelementptr %struct.esp_lun_data, ptr %62, i32 0, i32 3, i32 %idxprom.i
  %67 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx3.i, align 4
  %cmp.not.i = icmp eq ptr %68, %8
  br i1 %cmp.not.i, label %do.end10.i, label %do.body7.i, !prof !345

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/esp_scsi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 621, 0\0A.popsection", ""() #10, !srcloc !349
  unreachable

do.end10.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %arrayidx3.i, align 4
  %num_tagged.i = getelementptr inbounds %struct.esp_lun_data, ptr %62, i32 0, i32 1
  %70 = ptrtoint ptr %num_tagged.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_tagged.i, align 4
  %dec.i = add i32 %71, -1
  store i32 %dec.i, ptr %num_tagged.i, align 4
  br label %esp_free_lun_tag.exit

do.body16.i:                                      ; preds = %esp_unmap_dma.exit
  %72 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %62, align 4
  %cmp17.not.i = icmp eq ptr %73, %8
  br i1 %cmp17.not.i, label %do.end30.i, label %do.body25.i, !prof !345

do.body25.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/esp_scsi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 625, 0\0A.popsection", ""() #10, !srcloc !350
  unreachable

do.end30.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %62, align 4
  br label %esp_free_lun_tag.exit

esp_free_lun_tag.exit:                            ; preds = %do.end30.i, %do.end10.i
  %flags14 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %56, i32 3
  %75 = ptrtoint ptr %flags14 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %flags14, align 1
  %77 = and i8 %76, -13
  store i8 %77, ptr %flags14, align 1
  %cmd_bytes_ptr = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 49
  %78 = ptrtoint ptr %cmd_bytes_ptr to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %cmd_bytes_ptr, align 4
  %cmd_bytes_left = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 50
  %79 = ptrtoint ptr %cmd_bytes_left to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %cmd_bytes_left, align 4
  br label %if.end18

if.else:                                          ; preds = %if.then8
  %flags.i109 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 37
  %80 = ptrtoint ptr %flags.i109 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags.i109, align 4
  %and.i110 = and i32 %81, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %tobool.not.i111 = icmp eq i32 %and.i110, 0
  br i1 %tobool.not.i111, label %if.then.i112, label %if.else.esp_unmap_sense.exit_crit_edge

if.else.esp_unmap_sense.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_unmap_sense.exit

if.then.i112:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 4
  %82 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i, align 4
  %sense_dma.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %8, i32 0, i32 13
  %84 = ptrtoint ptr %sense_dma.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sense_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %83, i32 noundef %85, i32 noundef 96, i32 noundef 2, i32 noundef 0) #10
  br label %esp_unmap_sense.exit

esp_unmap_sense.exit:                             ; preds = %if.then.i112, %if.else.esp_unmap_sense.exit_crit_edge
  %sense_ptr.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %8, i32 0, i32 11
  %86 = ptrtoint ptr %sense_ptr.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %sense_ptr.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %esp_unmap_sense.exit, %esp_free_lun_tag.exit
  %queued_cmds = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end18.__list_del_entry.exit.i_crit_edge

if.end18.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i.i, align 4
  %89 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %8, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev1.i.i.i, align 4
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %90, ptr %88, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end18.__list_del_entry.exit.i_crit_edge
  %93 = ptrtoint ptr %queued_cmds to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %queued_cmds, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %queued_cmds, ptr noundef %94) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %8, ptr %prev1.i.i2.i, align 4
  %96 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %94, ptr %8, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %97 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %queued_cmds, ptr %prev3.i.i.i, align 4
  %98 = ptrtoint ptr %queued_cmds to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %8, ptr %queued_cmds, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %99 = ptrtoint ptr %active_cmd to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %active_cmd, align 4
  br label %cleanup

if.then25:                                        ; preds = %if.end
  %device26 = getelementptr inbounds %struct.scsi_cmnd, ptr %10, i32 0, i32 1
  %100 = ptrtoint ptr %device26 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %device26, align 4
  %id28 = getelementptr inbounds %struct.scsi_device, ptr %101, i32 0, i32 16
  %102 = ptrtoint ptr %id28 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %id28, align 8
  %flags30 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %103, i32 3
  %104 = ptrtoint ptr %flags30 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %flags30, align 1
  %106 = or i8 %105, 64
  store i8 %106, ptr %flags30, align 1
  %esp_event_cur.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 25
  %107 = ptrtoint ptr %esp_event_cur.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %esp_event_cur.i, align 4
  %arrayidx.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %108
  %109 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 2, ptr %arrayidx.i, align 1
  %val1.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %108, i32 1
  %110 = ptrtoint ptr %val1.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 68, ptr %val1.i, align 1
  %sreg.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 11
  %111 = ptrtoint ptr %sreg.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %sreg.i.i, align 4
  %sreg1.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %108, i32 2
  %113 = ptrtoint ptr %sreg1.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %sreg1.i.i, align 1
  %114 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %108, i32 3
  %116 = ptrtoint ptr %seqreg2.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %seqreg2.i.i, align 1
  %sreg2.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 13
  %117 = ptrtoint ptr %sreg2.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %sreg2.i.i, align 2
  %sreg23.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %108, i32 4
  %119 = ptrtoint ptr %sreg23.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %sreg23.i.i, align 1
  %120 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %ireg, align 1
  %ireg4.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %108, i32 5
  %122 = ptrtoint ptr %ireg4.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %ireg4.i.i, align 1
  %123 = ptrtoint ptr %select_state to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %select_state, align 4
  %select_state5.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %108, i32 6
  %125 = ptrtoint ptr %select_state5.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %select_state5.i.i, align 1
  %event.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 39
  %126 = ptrtoint ptr %event.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %event.i.i, align 1
  %event6.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %108, i32 7
  %128 = ptrtoint ptr %event6.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %event6.i.i, align 1
  %add.i = add i32 %108, 1
  %and.i113 = and i32 %add.i, 31
  store i32 %and.i113, ptr %esp_event_cur.i, align 4
  %129 = load i32, ptr @esp_debug, align 4
  %and3.i = and i32 %129, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i114 = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i114, label %if.then25.scsi_esp_cmd.exit_crit_edge, label %do.end.i117

if.then25.scsi_esp_cmd.exit_crit_edge:            ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit

do.end.i117:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %host.i115 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %130 = ptrtoint ptr %host.i115 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %host.i115, align 4
  %shost_gendev.i116 = getelementptr inbounds %struct.Scsi_Host, ptr %131, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i116, ptr noundef nonnull @.str, i32 noundef 68) #13
  br label %scsi_esp_cmd.exit

scsi_esp_cmd.exit:                                ; preds = %do.end.i117, %if.then25.scsi_esp_cmd.exit_crit_edge
  %132 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ops, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  tail call void %135(ptr noundef %esp, i8 noundef zeroext 68, i32 noundef 3) #10
  tail call fastcc void @esp_cmd_is_done(ptr noundef %esp, ptr noundef %8, ptr noundef %10, i8 noundef zeroext 4)
  br label %cleanup

if.then38:                                        ; preds = %if.end
  %rev = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 36
  %136 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %137)
  %cmp39 = icmp ult i32 %137, 3
  br i1 %cmp39, label %if.then41, label %if.then38.if.end55_crit_edge

if.then38.if.end55_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then41:                                        ; preds = %if.then38
  %138 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ops, align 4
  %esp_read843 = getelementptr inbounds %struct.esp_driver_ops, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %esp_read843 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %esp_read843, align 4
  %call44 = tail call zeroext i8 %141(ptr noundef %esp, i32 noundef 7) #10
  %142 = and i8 %call44, 31
  %esp_event_cur.i118 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 25
  %143 = ptrtoint ptr %esp_event_cur.i118 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %esp_event_cur.i118, align 4
  %arrayidx.i119 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %144
  %145 = ptrtoint ptr %arrayidx.i119 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 2, ptr %arrayidx.i119, align 1
  %val1.i120 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %144, i32 1
  %146 = ptrtoint ptr %val1.i120 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %val1.i120, align 1
  %sreg.i.i121 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 11
  %147 = ptrtoint ptr %sreg.i.i121 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %sreg.i.i121, align 4
  %sreg1.i.i122 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %144, i32 2
  %149 = ptrtoint ptr %sreg1.i.i122 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %sreg1.i.i122, align 1
  %150 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i124 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %144, i32 3
  %152 = ptrtoint ptr %seqreg2.i.i124 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %seqreg2.i.i124, align 1
  %sreg2.i.i125 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 13
  %153 = ptrtoint ptr %sreg2.i.i125 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %sreg2.i.i125, align 2
  %sreg23.i.i126 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %144, i32 4
  %155 = ptrtoint ptr %sreg23.i.i126 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %sreg23.i.i126, align 1
  %156 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %ireg, align 1
  %ireg4.i.i128 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %144, i32 5
  %158 = ptrtoint ptr %ireg4.i.i128 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %ireg4.i.i128, align 1
  %159 = ptrtoint ptr %select_state to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %select_state, align 4
  %select_state5.i.i130 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %144, i32 6
  %161 = ptrtoint ptr %select_state5.i.i130 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %select_state5.i.i130, align 1
  %event.i.i131 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 39
  %162 = ptrtoint ptr %event.i.i131 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %event.i.i131, align 1
  %event6.i.i132 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %144, i32 7
  %164 = ptrtoint ptr %event6.i.i132 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %event6.i.i132, align 1
  %add.i133 = add i32 %144, 1
  %and.i134 = and i32 %add.i133, 31
  store i32 %and.i134, ptr %esp_event_cur.i118, align 4
  %165 = load i32, ptr @esp_debug, align 4
  %and3.i135 = and i32 %165, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i135)
  %tobool.not.i136 = icmp eq i32 %and3.i135, 0
  br i1 %tobool.not.i136, label %if.then41.scsi_esp_cmd.exit141_crit_edge, label %do.end.i139

if.then41.scsi_esp_cmd.exit141_crit_edge:         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit141

do.end.i139:                                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %host.i137 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %166 = ptrtoint ptr %host.i137 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %host.i137, align 4
  %shost_gendev.i138 = getelementptr inbounds %struct.Scsi_Host, ptr %167, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i138, ptr noundef nonnull @.str, i32 noundef 0) #13
  br label %scsi_esp_cmd.exit141

scsi_esp_cmd.exit141:                             ; preds = %do.end.i139, %if.then41.scsi_esp_cmd.exit141_crit_edge
  %168 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ops, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  tail call void %171(ptr noundef %esp, i8 noundef zeroext 0, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool47.not = icmp eq i8 %142, 0
  br i1 %tobool47.not, label %land.lhs.true, label %scsi_esp_cmd.exit141.if.end55_crit_edge

scsi_esp_cmd.exit141.if.end55_crit_edge:          ; preds = %scsi_esp_cmd.exit141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true:                                    ; preds = %scsi_esp_cmd.exit141
  %prev_soff = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 16
  %172 = ptrtoint ptr %prev_soff to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %prev_soff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool48.not = icmp eq i8 %173, 0
  br i1 %tobool48.not, label %land.lhs.true.if.then53_crit_edge, label %lor.lhs.false

land.lhs.true.if.then53_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then53

lor.lhs.false:                                    ; preds = %land.lhs.true
  %174 = ptrtoint ptr %sreg.i.i121 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %sreg.i.i121, align 4
  %176 = and i8 %175, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %176)
  %cmp51.not = icmp eq i8 %176, 1
  br i1 %cmp51.not, label %lor.lhs.false.if.end55_crit_edge, label %lor.lhs.false.if.then53_crit_edge

lor.lhs.false.if.then53_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then53

lor.lhs.false.if.end55_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then53:                                        ; preds = %lor.lhs.false.if.then53_crit_edge, %land.lhs.true.if.then53_crit_edge
  tail call fastcc void @esp_flush_fifo(ptr noundef %esp)
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %lor.lhs.false.if.end55_crit_edge, %scsi_esp_cmd.exit141.if.end55_crit_edge, %if.then38.if.end55_crit_edge
  %esp_event_cur.i142 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 25
  %177 = ptrtoint ptr %esp_event_cur.i142 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %esp_event_cur.i142, align 4
  %arrayidx.i143 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %178
  %179 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 1, ptr %arrayidx.i143, align 1
  %val1.i144 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %178, i32 1
  %180 = ptrtoint ptr %val1.i144 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 13, ptr %val1.i144, align 1
  %sreg.i.i145 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 11
  %181 = ptrtoint ptr %sreg.i.i145 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %sreg.i.i145, align 4
  %sreg1.i.i146 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %178, i32 2
  %183 = ptrtoint ptr %sreg1.i.i146 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %sreg1.i.i146, align 1
  %184 = ptrtoint ptr %seqreg to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %seqreg, align 1
  %seqreg2.i.i148 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %178, i32 3
  %186 = ptrtoint ptr %seqreg2.i.i148 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %seqreg2.i.i148, align 1
  %sreg2.i.i149 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 13
  %187 = ptrtoint ptr %sreg2.i.i149 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %sreg2.i.i149, align 2
  %sreg23.i.i150 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %178, i32 4
  %189 = ptrtoint ptr %sreg23.i.i150 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %sreg23.i.i150, align 1
  %190 = ptrtoint ptr %ireg to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %ireg, align 1
  %ireg4.i.i152 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %178, i32 5
  %192 = ptrtoint ptr %ireg4.i.i152 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %ireg4.i.i152, align 1
  %193 = ptrtoint ptr %select_state to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %select_state, align 4
  %select_state5.i.i154 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %178, i32 6
  %195 = ptrtoint ptr %select_state5.i.i154 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %194, ptr %select_state5.i.i154, align 1
  %event.i.i155 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 39
  %196 = ptrtoint ptr %event.i.i155 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %event.i.i155, align 1
  %event6.i.i156 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %178, i32 7
  %198 = ptrtoint ptr %event6.i.i156 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %event6.i.i156, align 1
  %add.i157 = add i32 %178, 1
  %and.i158 = and i32 %add.i157, 31
  store i32 %and.i158, ptr %esp_event_cur.i142, align 4
  store i8 13, ptr %event.i.i155, align 1
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv6 = zext i8 %48 to i32
  %host = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %199 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %200, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %shost_gendev, ptr noundef nonnull @.str.37, i32 noundef %conv6) #13
  tail call fastcc void @esp_schedule_reset(ptr noundef %esp)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end55, %scsi_esp_cmd.exit, %list_move.exit, %esp_schedule_reset.exit
  %retval.0 = phi i32 [ 0, %esp_schedule_reset.exit ], [ 0, %list_move.exit ], [ 1, %scsi_esp_cmd.exit ], [ 0, %if.end55 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__starget_for_each_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esp_clear_hold(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %num_tagged = getelementptr inbounds %struct.esp_lun_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_tagged to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tagged, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !345

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/esp_scsi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2048, 0\0A.popsection", ""() #10, !srcloc !352
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hold = getelementptr inbounds %struct.esp_lun_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hold to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %hold, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esp_cmd_is_done(ptr noundef %esp, ptr noundef %ent, ptr noundef %cmd, i8 noundef zeroext %host_byte) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %lun1 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %lun1, align 8
  %conv = trunc i64 %5 to i32
  %active_cmd = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 5
  %6 = ptrtoint ptr %active_cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %active_cmd, align 4
  %flags.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 37
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.esp_unmap_dma.exit_crit_edge

entry.esp_unmap_dma.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_unmap_dma.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @scsi_dma_unmap(ptr noundef %cmd) #10
  br label %esp_unmap_dma.exit

esp_unmap_dma.exit:                               ; preds = %if.then.i, %entry.esp_unmap_dma.exit_crit_edge
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hostdata, align 8
  %orig_tag.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent, i32 0, i32 8
  %11 = ptrtoint ptr %orig_tag.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %orig_tag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i60 = icmp eq i8 %12, 0
  br i1 %tobool.not.i60, label %do.body16.i, label %do.body.i

do.body.i:                                        ; preds = %esp_unmap_dma.exit
  %arrayidx2.i = getelementptr %struct.esp_cmd_entry, ptr %ent, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx2.i, align 1
  %idxprom.i = zext i8 %14 to i32
  %arrayidx3.i = getelementptr %struct.esp_lun_data, ptr %10, i32 0, i32 3, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx3.i, align 4
  %cmp.not.i = icmp eq ptr %16, %ent
  br i1 %cmp.not.i, label %do.end10.i, label %do.body7.i, !prof !345

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/esp_scsi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 621, 0\0A.popsection", ""() #10, !srcloc !349
  unreachable

do.end10.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx3.i, align 4
  %num_tagged.i = getelementptr inbounds %struct.esp_lun_data, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %num_tagged.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_tagged.i, align 4
  %dec.i = add i32 %19, -1
  store i32 %dec.i, ptr %num_tagged.i, align 4
  br label %esp_free_lun_tag.exit

do.body16.i:                                      ; preds = %esp_unmap_dma.exit
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %10, align 4
  %cmp17.not.i = icmp eq ptr %21, %ent
  br i1 %cmp17.not.i, label %do.end30.i, label %do.body25.i, !prof !345

do.body25.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/esp_scsi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 625, 0\0A.popsection", ""() #10, !srcloc !350
  unreachable

do.end30.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %10, align 4
  br label %esp_free_lun_tag.exit

esp_free_lun_tag.exit:                            ; preds = %do.end30.i, %do.end10.i
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %conv.i = zext i8 %host_byte to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %23 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl.i, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %host_byte)
  %cmp = icmp eq i8 %host_byte, 0
  br i1 %cmp, label %if.then, label %esp_free_lun_tag.exit.if.end_crit_edge

esp_free_lun_tag.exit.if.end_crit_edge:           ; preds = %esp_free_lun_tag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %esp_free_lun_tag.exit
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent, i32 0, i32 9
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %status, align 1
  %conv.i64 = zext i8 %25 to i32
  %or.i65 = or i32 %shl.i, %conv.i64
  %26 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i65, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %esp_free_lun_tag.exit.if.end_crit_edge
  %eh_done = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent, i32 0, i32 14
  %27 = ptrtoint ptr %eh_done to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %eh_done, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @complete(ptr noundef nonnull %28) #10
  %29 = ptrtoint ptr %eh_done to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %eh_done, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %flags = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent, i32 0, i32 6
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flags, align 4
  %32 = and i8 %31, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool9.not = icmp eq i8 %32, 0
  br i1 %tobool9.not, label %if.end7.if.end33_crit_edge, label %if.then10

if.end7.if.end33_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then10:                                        ; preds = %if.end7
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 4
  %and.i67 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %tobool.not.i68 = icmp eq i32 %and.i67, 0
  br i1 %tobool.not.i68, label %if.then.i69, label %if.then10.esp_unmap_sense.exit_crit_edge

if.then10.esp_unmap_sense.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_unmap_sense.exit

if.then.i69:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 4
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %sense_dma.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent, i32 0, i32 13
  %37 = ptrtoint ptr %sense_dma.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sense_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %38, i32 noundef 96, i32 noundef 2, i32 noundef 0) #10
  br label %esp_unmap_sense.exit

esp_unmap_sense.exit:                             ; preds = %if.then.i69, %if.then10.esp_unmap_sense.exit_crit_edge
  %sense_ptr.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent, i32 0, i32 11
  %39 = ptrtoint ptr %sense_ptr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %sense_ptr.i, align 4
  %40 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %result, align 4
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags, align 4
  %43 = and i8 %42, -5
  store i8 %43, ptr %flags, align 4
  %44 = load i32, ptr @esp_debug, align 4
  %and16 = and i32 %44, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %esp_unmap_sense.exit.if.end33_crit_edge, label %if.then18

esp_unmap_sense.exit.if.end33_crit_edge:          ; preds = %esp_unmap_sense.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then18:                                        ; preds = %esp_unmap_sense.exit
  call void @__sanitizer_cov_trace_pc() #12
  %host = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %45 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host, align 4
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 23
  %47 = ptrtoint ptr %unique_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %unique_id, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %48, i32 noundef %3, i32 noundef %conv) #13
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 21
  %49 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sense_buffer, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 1
  %conv25 = zext i8 %52 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25) #13
  %53 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.1 = getelementptr i8, ptr %54, i32 1
  %55 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.1, align 1
  %conv25.1 = zext i8 %56 to i32
  %call26.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.1) #13
  %57 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.2 = getelementptr i8, ptr %58, i32 2
  %59 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.2, align 1
  %conv25.2 = zext i8 %60 to i32
  %call26.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.2) #13
  %61 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.3 = getelementptr i8, ptr %62, i32 3
  %63 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.3, align 1
  %conv25.3 = zext i8 %64 to i32
  %call26.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.3) #13
  %65 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.4 = getelementptr i8, ptr %66, i32 4
  %67 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.4, align 1
  %conv25.4 = zext i8 %68 to i32
  %call26.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.4) #13
  %69 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.5 = getelementptr i8, ptr %70, i32 5
  %71 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.5, align 1
  %conv25.5 = zext i8 %72 to i32
  %call26.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.5) #13
  %73 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.6 = getelementptr i8, ptr %74, i32 6
  %75 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.6, align 1
  %conv25.6 = zext i8 %76 to i32
  %call26.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.6) #13
  %77 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.7 = getelementptr i8, ptr %78, i32 7
  %79 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.7, align 1
  %conv25.7 = zext i8 %80 to i32
  %call26.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.7) #13
  %81 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.8 = getelementptr i8, ptr %82, i32 8
  %83 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.8, align 1
  %conv25.8 = zext i8 %84 to i32
  %call26.8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.8) #13
  %85 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.9 = getelementptr i8, ptr %86, i32 9
  %87 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.9, align 1
  %conv25.9 = zext i8 %88 to i32
  %call26.9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.9) #13
  %89 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.10 = getelementptr i8, ptr %90, i32 10
  %91 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.10, align 1
  %conv25.10 = zext i8 %92 to i32
  %call26.10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.10) #13
  %93 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.11 = getelementptr i8, ptr %94, i32 11
  %95 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.11, align 1
  %conv25.11 = zext i8 %96 to i32
  %call26.11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.11) #13
  %97 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.12 = getelementptr i8, ptr %98, i32 12
  %99 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.12, align 1
  %conv25.12 = zext i8 %100 to i32
  %call26.12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.12) #13
  %101 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.13 = getelementptr i8, ptr %102, i32 13
  %103 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.13, align 1
  %conv25.13 = zext i8 %104 to i32
  %call26.13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.13) #13
  %105 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.14 = getelementptr i8, ptr %106, i32 14
  %107 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.14, align 1
  %conv25.14 = zext i8 %108 to i32
  %call26.14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.14) #13
  %109 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.15 = getelementptr i8, ptr %110, i32 15
  %111 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.15, align 1
  %conv25.15 = zext i8 %112 to i32
  %call26.15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.15) #13
  %113 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.16 = getelementptr i8, ptr %114, i32 16
  %115 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.16, align 1
  %conv25.16 = zext i8 %116 to i32
  %call26.16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.16) #13
  %117 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %sense_buffer, align 4
  %arrayidx.17 = getelementptr i8, ptr %118, i32 17
  %119 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.17, align 1
  %conv25.17 = zext i8 %120 to i32
  %call26.17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv25.17) #13
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then18, %esp_unmap_sense.exit.if.end33_crit_edge, %if.end7.if.end33_crit_edge
  tail call void @scsi_done(ptr noundef %cmd) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ent) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end33.list_del.exit_crit_edge

if.end33.list_del.exit_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ent, i32 0, i32 1
  %121 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prev.i.i, align 4
  %123 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ent, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %prev1.i.i.i, align 4
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %124, ptr %122, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end33.list_del.exit_crit_edge
  %127 = ptrtoint ptr %ent to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr inttoptr (i32 256 to ptr), ptr %ent, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ent, i32 0, i32 1
  %128 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %esp_cmd_pool.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 20
  %129 = ptrtoint ptr %esp_cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %esp_cmd_pool.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ent, ptr noundef %esp_cmd_pool.i, ptr noundef %130) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_del.exit.esp_put_ent.exit_crit_edge

list_del.exit.esp_put_ent.exit_crit_edge:         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_put_ent.exit

if.end.i.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i70 = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %prev1.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %ent, ptr %prev1.i.i.i70, align 4
  %132 = ptrtoint ptr %ent to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %130, ptr %ent, align 4
  %133 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %esp_cmd_pool.i, ptr %prev.i, align 4
  %134 = ptrtoint ptr %esp_cmd_pool.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %ent, ptr %esp_cmd_pool.i, align 4
  br label %esp_put_ent.exit

esp_put_ent.exit:                                 ; preds = %if.end.i.i.i, %list_del.exit.esp_put_ent.exit_crit_edge
  tail call fastcc void @esp_maybe_execute_command(ptr noundef %esp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esp_flush_fifo(ptr noundef %esp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %esp_event_cur.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 25
  %0 = ptrtoint ptr %esp_event_cur.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %esp_event_cur.i, align 4
  %arrayidx.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %arrayidx.i, align 1
  %val1.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1, i32 1
  %3 = ptrtoint ptr %val1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %val1.i, align 1
  %sreg.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 11
  %4 = ptrtoint ptr %sreg.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sreg.i.i, align 4
  %sreg1.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1, i32 2
  %6 = ptrtoint ptr %sreg1.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %sreg1.i.i, align 1
  %seqreg.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 12
  %7 = ptrtoint ptr %seqreg.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %seqreg.i.i, align 1
  %seqreg2.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1, i32 3
  %9 = ptrtoint ptr %seqreg2.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %seqreg2.i.i, align 1
  %sreg2.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 13
  %10 = ptrtoint ptr %sreg2.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sreg2.i.i, align 2
  %sreg23.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1, i32 4
  %12 = ptrtoint ptr %sreg23.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %sreg23.i.i, align 1
  %ireg.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 14
  %13 = ptrtoint ptr %ireg.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ireg.i.i, align 1
  %ireg4.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1, i32 5
  %15 = ptrtoint ptr %ireg4.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ireg4.i.i, align 1
  %select_state.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 38
  %16 = ptrtoint ptr %select_state.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %select_state.i.i, align 4
  %select_state5.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1, i32 6
  %18 = ptrtoint ptr %select_state5.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %select_state5.i.i, align 1
  %event.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 39
  %19 = ptrtoint ptr %event.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %event.i.i, align 1
  %event6.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %1, i32 7
  %21 = ptrtoint ptr %event6.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %event6.i.i, align 1
  %add.i = add i32 %1, 1
  %and.i = and i32 %add.i, 31
  store i32 %and.i, ptr %esp_event_cur.i, align 4
  %22 = load i32, ptr @esp_debug, align 4
  %and3.i = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %entry.scsi_esp_cmd.exit_crit_edge, label %do.end.i

entry.scsi_esp_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %host.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %23 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str, i32 noundef 1) #13
  br label %scsi_esp_cmd.exit

scsi_esp_cmd.exit:                                ; preds = %do.end.i, %entry.scsi_esp_cmd.exit_crit_edge
  %ops.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 2
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  tail call void %28(ptr noundef %esp, i8 noundef zeroext 1, i32 noundef 3) #10
  %rev = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 36
  %29 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp = icmp eq i32 %30, 2
  br i1 %cmp, label %while.cond.preheader, label %scsi_esp_cmd.exit.if.end4_crit_edge

scsi_esp_cmd.exit.if.end4_crit_edge:              ; preds = %scsi_esp_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

while.cond.preheader:                             ; preds = %scsi_esp_cmd.exit
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %esp_read89 = getelementptr inbounds %struct.esp_driver_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %esp_read89 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %esp_read89, align 4
  %call10 = tail call zeroext i8 %34(ptr noundef %esp, i32 noundef 7) #10
  %35 = and i8 %call10, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not11 = icmp eq i8 %35, 0
  br i1 %tobool.not11, label %while.cond.preheader.if.end4_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end4_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %lim.012 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ 1000, %while.cond.preheader.while.body_crit_edge ]
  %dec = add nsw i32 %lim.012, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp1 = icmp eq i32 %dec, 0
  br i1 %cmp1, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %host = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %36 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %37, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.59, ptr noundef %shost_gendev, ptr noundef nonnull @.str.57) #13
  br label %if.end4

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #10
  %39 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i, align 4
  %esp_read8 = getelementptr inbounds %struct.esp_driver_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %esp_read8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %esp_read8, align 4
  %call = tail call zeroext i8 %42(ptr noundef %esp, i32 noundef 7) #10
  %43 = and i8 %call, 31
  %tobool.not = icmp eq i8 %43, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %do.end, %while.cond.preheader.if.end4_crit_edge, %scsi_esp_cmd.exit.if.end4_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esp_maybe_execute_command(ptr noundef %esp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %active_cmd = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 5
  %0 = ptrtoint ptr %active_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active_cmd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 37
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %queued_cmds.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 6
  %4 = ptrtoint ptr %queued_cmds.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %ent.069.i = load ptr, ptr %queued_cmds.i, align 4
  %cmp.not70.i = icmp eq ptr %ent.069.i, %queued_cmds.i
  br i1 %cmp.not70.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %ent.071.i = phi ptr [ %ent.0.i, %cleanup.i.for.body.i_crit_edge ], [ %ent.069.i, %if.end.for.body.i_crit_edge ]
  %cmd2.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 1
  %5 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd2.i, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 4
  %hostdata.i = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hostdata.i, align 8
  %flags.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 6
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags.i, align 4
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %tag5.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 7
  br i1 %tobool.not.i, label %if.end.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %tag5.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %tag5.i, align 1
  %arrayidx4.i = getelementptr %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx4.i, align 1
  br label %find_and_prep_issuable_command.exit

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call i32 @spi_populate_tag_msg(ptr noundef %tag5.i, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end13thread-pre-split.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %tag5.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %tag5.i, align 1
  %arrayidx12.i = getelementptr %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx12.i, align 1
  br label %if.end13.i

if.end13thread-pre-split.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %tag5.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr.i = load i8, ptr %tag5.i, align 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end13thread-pre-split.i, %if.then8.i
  %19 = phi i8 [ %.pr.i, %if.end13thread-pre-split.i ], [ 0, %if.then8.i ]
  %orig_tag.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 8
  %20 = ptrtoint ptr %orig_tag.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %orig_tag.i, align 1
  %arrayidx18.i = getelementptr %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx18.i, align 1
  %arrayidx20.i = getelementptr %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %10, align 4
  %tobool1.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end16.i.i

if.then.i.i:                                      ; preds = %if.end13.i
  br i1 %tobool1.not.i.i, label %if.end.i.i, label %if.then.i.i.cleanup.i_crit_edge

if.then.i.i.cleanup.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %hold.i.i = getelementptr inbounds %struct.esp_lun_data, ptr %10, i32 0, i32 2
  %26 = ptrtoint ptr %hold.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hold.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool3.not.i.i = icmp eq i32 %27, 0
  %num_tagged9.i.i = getelementptr inbounds %struct.esp_lun_data, ptr %10, i32 0, i32 1
  %28 = ptrtoint ptr %num_tagged9.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_tagged9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool10.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool3.not.i.i, label %if.else.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  br i1 %tobool10.not.i.i, label %if.end7.i.i, label %if.then4.i.i.cleanup.i_crit_edge

if.then4.i.i.cleanup.i_crit_edge:                 ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end7.i.i:                                      ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %hold.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %hold.i.i, align 4
  br label %if.end14.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  br i1 %tobool10.not.i.i, label %if.else.i.i.if.end14.i.i_crit_edge, label %if.then11.i.i

if.else.i.i.if.end14.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i

if.then11.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %hold.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %hold.i.i, align 4
  br label %cleanup.i

if.end14.i.i:                                     ; preds = %if.else.i.i.if.end14.i.i_crit_edge, %if.end7.i.i
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ent.071.i, ptr %10, align 4
  br label %find_and_prep_issuable_command.exit

if.end16.i.i:                                     ; preds = %if.end13.i
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i, label %if.end16.i.i.cleanup.i_crit_edge

if.end16.i.i.cleanup.i_crit_edge:                 ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

lor.lhs.false.i.i:                                ; preds = %if.end16.i.i
  %hold19.i.i = getelementptr inbounds %struct.esp_lun_data, ptr %10, i32 0, i32 2
  %33 = ptrtoint ptr %hold19.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hold19.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool20.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool20.not.i.i, label %do.body.i.i, label %lor.lhs.false.i.i.cleanup.i_crit_edge

lor.lhs.false.i.i.cleanup.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

do.body.i.i:                                      ; preds = %lor.lhs.false.i.i
  %idxprom.i.i = zext i8 %22 to i32
  %arrayidx25.i.i = getelementptr %struct.esp_lun_data, ptr %10, i32 0, i32 3, i32 %idxprom.i.i
  %35 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx25.i.i, align 4
  %tobool26.not.i.i = icmp eq ptr %36, null
  br i1 %tobool26.not.i.i, label %do.end34.i.i, label %do.body30.i.i, !prof !345

do.body30.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/esp_scsi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 609, 0\0A.popsection", ""() #10, !srcloc !353
  unreachable

do.end34.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ent.071.i, ptr %arrayidx25.i.i, align 4
  %num_tagged40.i.i = getelementptr inbounds %struct.esp_lun_data, ptr %10, i32 0, i32 1
  %38 = ptrtoint ptr %num_tagged40.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_tagged40.i.i, align 4
  %inc.i.i = add i32 %39, 1
  store i32 %inc.i.i, ptr %num_tagged40.i.i, align 4
  br label %find_and_prep_issuable_command.exit

cleanup.i:                                        ; preds = %lor.lhs.false.i.i.cleanup.i_crit_edge, %if.end16.i.i.cleanup.i_crit_edge, %if.then11.i.i, %if.then4.i.i.cleanup.i_crit_edge, %if.then.i.i.cleanup.i_crit_edge
  %40 = ptrtoint ptr %ent.071.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %ent.0.i = load ptr, ptr %ent.071.i, align 4
  %cmp.not.i = icmp eq ptr %ent.0.i, %queued_cmds.i
  br i1 %cmp.not.i, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

find_and_prep_issuable_command.exit:              ; preds = %do.end34.i.i, %if.end14.i.i, %cleanup.thread.i
  %flags.i409 = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 6
  %cmd2.i419 = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 1
  %tobool2.not = icmp eq ptr %ent.071.i, null
  br i1 %tobool2.not, label %find_and_prep_issuable_command.exit.cleanup_crit_edge, label %if.end4

find_and_prep_issuable_command.exit.cleanup_crit_edge: ; preds = %find_and_prep_issuable_command.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %find_and_prep_issuable_command.exit
  %41 = ptrtoint ptr %flags.i409 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags.i409, align 4
  %43 = and i8 %42, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool7.not = icmp eq i8 %43, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @esp_autosense(ptr noundef %esp, ptr noundef nonnull %ent.071.i)
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %44 = ptrtoint ptr %cmd2.i419 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmd2.i419, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id, align 8
  %lun11 = getelementptr inbounds %struct.scsi_device, ptr %47, i32 0, i32 18
  %50 = ptrtoint ptr %lun11 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %lun11, align 8
  %conv12 = trunc i64 %51 to i32
  %arrayidx = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %49
  %active_cmds = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %ent.071.i) #10
  br i1 %call.i.i, label %if.end.i.i329, label %if.end9.__list_del_entry.exit.i_crit_edge

if.end9.__list_del_entry.exit.i_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i329:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ent.071.i, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %ent.071.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ent.071.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i329, %if.end9.__list_del_entry.exit.i_crit_edge
  %58 = ptrtoint ptr %active_cmds to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %active_cmds, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %ent.071.i, ptr noundef %active_cmds, ptr noundef %59) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %ent.071.i, ptr %prev1.i.i2.i, align 4
  %61 = ptrtoint ptr %ent.071.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %ent.071.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %ent.071.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %active_cmds, ptr %prev3.i.i.i, align 4
  %63 = ptrtoint ptr %active_cmds to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %ent.071.i, ptr %active_cmds, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %64 = ptrtoint ptr %active_cmd to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %ent.071.i, ptr %active_cmd, align 4
  %SCp.i = getelementptr inbounds %struct.scsi_cmnd, ptr %45, i32 0, i32 22
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %45, i32 0, i32 17
  %65 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sdb.i.i, align 4
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %45, i32 0, i32 15
  %67 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sc_data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp.i = icmp eq i32 %68, 3
  br i1 %cmp.i, label %list_move.exit.esp_map_dma.exit_crit_edge, label %if.end.i332

list_move.exit.esp_map_dma.exit_crit_edge:        ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_map_dma.exit

if.end.i332:                                      ; preds = %list_move.exit
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags, align 4
  %and.i = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i331 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i331, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i332
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %45, i32 0, i32 17, i32 0, i32 1
  %71 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nents.i.i, align 4
  %73 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %SCp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp555.i = icmp sgt i32 %72, 0
  br i1 %cmp555.i, label %if.then1.i.for.body.i333_crit_edge, label %if.then1.i.if.end21.i_crit_edge

if.then1.i.if.end21.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then1.i.for.body.i333_crit_edge:               ; preds = %if.then1.i
  br label %for.body.i333

for.body.i333:                                    ; preds = %sg_virt.exit.i.for.body.i333_crit_edge, %if.then1.i.for.body.i333_crit_edge
  %s.058.i = phi ptr [ %call7.i, %sg_virt.exit.i.for.body.i333_crit_edge ], [ %66, %if.then1.i.for.body.i333_crit_edge ]
  %i.057.i = phi i32 [ %inc.i, %sg_virt.exit.i.for.body.i333_crit_edge ], [ 0, %if.then1.i.for.body.i333_crit_edge ]
  %total.056.i = phi i32 [ %add.i, %sg_virt.exit.i.for.body.i333_crit_edge ], [ 0, %if.then1.i.for.body.i333_crit_edge ]
  %74 = ptrtoint ptr %s.058.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s.058.i, align 4
  %and.i.i.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !345

do.body2.i.i.i:                                   ; preds = %for.body.i333
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !354
  unreachable

sg_virt.exit.i:                                   ; preds = %for.body.i333
  %and.i.i.i = and i32 %75, -4
  %76 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %76) #10
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %s.058.i, i32 0, i32 1
  %77 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %78
  %79 = ptrtoint ptr %add.ptr.i.i to i32
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %s.058.i, i32 0, i32 3
  %80 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %s.058.i, i32 0, i32 4
  %81 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dma_length.i, align 4
  %add.i = add i32 %82, %total.056.i
  %inc.i = add nuw nsw i32 %i.057.i, 1
  %call7.i = tail call ptr @sg_next(ptr noundef %s.058.i) #10
  %83 = ptrtoint ptr %SCp.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %SCp.i, align 4
  %cmp5.i = icmp slt i32 %inc.i, %84
  br i1 %cmp5.i, label %sg_virt.exit.i.for.body.i333_crit_edge, label %sg_virt.exit.i.if.end21.i_crit_edge

sg_virt.exit.i.if.end21.i_crit_edge:              ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

sg_virt.exit.i.for.body.i333_crit_edge:           ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i333

if.else.i:                                        ; preds = %if.end.i332
  %call8.i = tail call i32 @scsi_dma_map(ptr noundef %45) #10
  %85 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call8.i, ptr %SCp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp1359.i = icmp sgt i32 %call8.i, 0
  br i1 %cmp1359.i, label %for.body14.preheader.i, label %if.else.i.if.end21.i_crit_edge

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

for.body14.preheader.i:                           ; preds = %if.else.i
  %86 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sdb.i.i, align 4
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %for.body14.preheader.i
  %s.162.i = phi ptr [ %call19.i, %for.body14.i.for.body14.i_crit_edge ], [ %87, %for.body14.preheader.i ]
  %i.161.i = phi i32 [ %inc18.i, %for.body14.i.for.body14.i_crit_edge ], [ 0, %for.body14.preheader.i ]
  %total.160.i = phi i32 [ %add16.i, %for.body14.i.for.body14.i_crit_edge ], [ 0, %for.body14.preheader.i ]
  %dma_length15.i = getelementptr inbounds %struct.scatterlist, ptr %s.162.i, i32 0, i32 4
  %88 = ptrtoint ptr %dma_length15.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma_length15.i, align 4
  %add16.i = add i32 %89, %total.160.i
  %inc18.i = add nuw nsw i32 %i.161.i, 1
  %call19.i = tail call ptr @sg_next(ptr noundef %s.162.i) #10
  %90 = ptrtoint ptr %SCp.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %SCp.i, align 4
  %cmp13.i = icmp slt i32 %inc18.i, %91
  br i1 %cmp13.i, label %for.body14.i.for.body14.i_crit_edge, label %for.body14.i.if.end21.i_crit_edge

for.body14.i.if.end21.i_crit_edge:                ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i

if.end21.i:                                       ; preds = %for.body14.i.if.end21.i_crit_edge, %if.else.i.if.end21.i_crit_edge, %sg_virt.exit.i.if.end21.i_crit_edge, %if.then1.i.if.end21.i_crit_edge
  %total.2.i = phi i32 [ 0, %if.else.i.if.end21.i_crit_edge ], [ 0, %if.then1.i.if.end21.i_crit_edge ], [ %add16.i, %for.body14.i.if.end21.i_crit_edge ], [ %add.i, %sg_virt.exit.i.if.end21.i_crit_edge ]
  %dma_length22.i = getelementptr inbounds %struct.scatterlist, ptr %66, i32 0, i32 4
  %92 = ptrtoint ptr %dma_length22.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dma_length22.i, align 4
  %cur_residue.i = getelementptr inbounds %struct.scsi_cmnd, ptr %45, i32 0, i32 22, i32 1
  %94 = ptrtoint ptr %cur_residue.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %cur_residue.i, align 4
  %prv_sg.i = getelementptr inbounds %struct.scsi_cmnd, ptr %45, i32 0, i32 22, i32 2
  %95 = ptrtoint ptr %prv_sg.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %prv_sg.i, align 4
  %cur_sg.i = getelementptr inbounds %struct.scsi_cmnd, ptr %45, i32 0, i32 22, i32 3
  %96 = ptrtoint ptr %cur_sg.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %66, ptr %cur_sg.i, align 4
  %tot_residue.i = getelementptr inbounds %struct.scsi_cmnd, ptr %45, i32 0, i32 22, i32 4
  %97 = ptrtoint ptr %tot_residue.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %total.2.i, ptr %tot_residue.i, align 4
  br label %esp_map_dma.exit

esp_map_dma.exit:                                 ; preds = %if.end21.i, %list_move.exit.esp_map_dma.exit_crit_edge
  %98 = ptrtoint ptr %flags.i409 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %flags.i409, align 4
  %100 = and i8 %99, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i336 = icmp eq i8 %100, 0
  br i1 %tobool.not.i336, label %if.end.i341, label %if.then.i

if.then.i:                                        ; preds = %esp_map_dma.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sense_ptr.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 11
  %101 = ptrtoint ptr %sense_ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sense_ptr.i, align 4
  %saved_sense_ptr.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 12
  %103 = ptrtoint ptr %saved_sense_ptr.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %saved_sense_ptr.i, align 4
  br label %esp_save_pointers.exit

if.end.i341:                                      ; preds = %esp_map_dma.exit
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %cmd2.i419 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cmd2.i419, align 4
  %cur_residue.i337 = getelementptr inbounds %struct.scsi_cmnd, ptr %105, i32 0, i32 22, i32 1
  %106 = ptrtoint ptr %cur_residue.i337 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cur_residue.i337, align 4
  %saved_cur_residue.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 2
  %108 = ptrtoint ptr %saved_cur_residue.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %saved_cur_residue.i, align 4
  %prv_sg.i338 = getelementptr inbounds %struct.scsi_cmnd, ptr %105, i32 0, i32 22, i32 2
  %109 = ptrtoint ptr %prv_sg.i338 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %prv_sg.i338, align 4
  %saved_prv_sg.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 3
  %111 = ptrtoint ptr %saved_prv_sg.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %saved_prv_sg.i, align 4
  %cur_sg.i339 = getelementptr inbounds %struct.scsi_cmnd, ptr %105, i32 0, i32 22, i32 3
  %112 = ptrtoint ptr %cur_sg.i339 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cur_sg.i339, align 4
  %saved_cur_sg.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 4
  %114 = ptrtoint ptr %saved_cur_sg.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %113, ptr %saved_cur_sg.i, align 4
  %tot_residue.i340 = getelementptr inbounds %struct.scsi_cmnd, ptr %105, i32 0, i32 22, i32 4
  %115 = ptrtoint ptr %tot_residue.i340 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tot_residue.i340, align 4
  %saved_tot_residue.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 5
  %117 = ptrtoint ptr %saved_tot_residue.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %saved_tot_residue.i, align 4
  br label %esp_save_pointers.exit

esp_save_pointers.exit:                           ; preds = %if.end.i341, %if.then.i
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %45, i32 0, i32 14
  %118 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %cmd_len, align 4
  %switch.tableidx = add i16 %119, -6
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %switch.tableidx)
  %120 = icmp ugt i16 %switch.tableidx, 6
  %switch.cast = trunc i16 %switch.tableidx to i7
  %switch.downshift = lshr i7 46, %switch.cast
  %121 = and i7 %switch.downshift, 1
  %122 = sext i7 %121 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %switch.masked = icmp ne i7 %121, 0
  %select_and_stop.0.off0 = select i1 %120, i1 true, i1 %switch.masked
  %command_block = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 8
  %123 = ptrtoint ptr %command_block to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %command_block, align 4
  %msg_out_len = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 27
  %125 = ptrtoint ptr %msg_out_len to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %msg_out_len, align 4
  %flags28 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %49, i32 3
  %126 = ptrtoint ptr %flags28 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %flags28, align 1
  %conv29 = zext i8 %127 to i32
  %and30 = and i32 %conv29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %esp_save_pointers.exit.build_identify_crit_edge, label %if.then32

esp_save_pointers.exit.build_identify_crit_edge:  ; preds = %esp_save_pointers.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %build_identify

if.then32:                                        ; preds = %esp_save_pointers.exit
  %and35 = and i32 %conv29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.then32.if.end42_crit_edge, label %if.then37

if.then32.if.end42_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then37:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %and40 = and i8 %127, -3
  %128 = ptrtoint ptr %flags28 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %and40, ptr %flags28, align 1
  %nego_goal_period = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %49, i32 4
  %129 = ptrtoint ptr %nego_goal_period to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %nego_goal_period, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.then32.if.end42_crit_edge
  %starget = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %49, i32 8
  %130 = ptrtoint ptr %starget to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %starget, align 4
  %width = getelementptr inbounds %struct.scsi_target, ptr %131, i32 1, i32 2
  %132 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %132)
  %bf.load = load i16, ptr %width, align 4
  %bf.lshr = lshr i16 %bf.load, 15
  %nego_goal_width43 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %49, i32 6
  %133 = ptrtoint ptr %nego_goal_width43 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %nego_goal_width43, align 2
  %135 = zext i8 %134 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr, i16 %135)
  %cmp45 = icmp eq i16 %bf.lshr, %135
  br i1 %cmp45, label %land.lhs.true, label %if.end42.if.end65_crit_edge

if.end42.if.end65_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.lhs.true:                                    ; preds = %if.end42
  %starget_data = getelementptr inbounds %struct.scsi_target, ptr %131, i32 0, i32 15
  %136 = ptrtoint ptr %starget_data to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %starget_data, align 4
  %nego_goal_period49 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %49, i32 4
  %138 = ptrtoint ptr %nego_goal_period49 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %nego_goal_period49, align 4
  %conv50 = zext i8 %139 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %conv50)
  %cmp51 = icmp eq i32 %137, %conv50
  br i1 %cmp51, label %land.lhs.true53, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.lhs.true53:                                  ; preds = %land.lhs.true
  %offset = getelementptr inbounds %struct.scsi_target, ptr %131, i32 1, i32 1
  %140 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %offset, align 4
  %nego_goal_offset56 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %49, i32 5
  %142 = ptrtoint ptr %nego_goal_offset56 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %nego_goal_offset56, align 1
  %conv57 = zext i8 %143 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %conv57)
  %cmp58 = icmp eq i32 %141, %conv57
  br i1 %cmp58, label %if.then60, label %land.lhs.true53.if.end65_crit_edge

land.lhs.true53.if.end65_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then60:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %flags28 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %flags28, align 1
  %146 = and i8 %145, -65
  store i8 %146, ptr %flags28, align 1
  br label %build_identify

if.end65:                                         ; preds = %land.lhs.true53.if.end65_crit_edge, %land.lhs.true.if.end65_crit_edge, %if.end42.if.end65_crit_edge
  %rev = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 36
  %147 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %148)
  %cmp66 = icmp eq i32 %148, 8
  br i1 %cmp66, label %land.lhs.true68, label %if.end65.if.else_crit_edge

if.end65.if.else_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true68:                                  ; preds = %if.end65
  %149 = ptrtoint ptr %starget to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %starget, align 4
  %width.i = getelementptr inbounds %struct.scsi_target, ptr %150, i32 1, i32 2
  %151 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %bf.load.i = load i16, ptr %width.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 15
  %152 = ptrtoint ptr %nego_goal_width43 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %nego_goal_width43, align 2
  %154 = zext i8 %153 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr.i, i16 %154)
  %cmp.i343.not = icmp eq i16 %bf.lshr.i, %154
  br i1 %cmp.i343.not, label %land.lhs.true68.if.else_crit_edge, label %if.then71

land.lhs.true68.if.else_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then71:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  %msg_out = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool75.not = icmp ne i8 %134, 0
  %cond = zext i1 %tobool75.not to i32
  %call76 = tail call i32 @spi_populate_width_msg(ptr noundef %msg_out, i32 noundef %cond) #10
  %155 = ptrtoint ptr %msg_out_len to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %call76, ptr %msg_out_len, align 4
  %156 = ptrtoint ptr %flags28 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %flags28, align 1
  %158 = or i8 %157, 4
  br label %if.end102

if.else:                                          ; preds = %land.lhs.true68.if.else_crit_edge, %if.end65.if.else_crit_edge
  %159 = ptrtoint ptr %starget to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %starget, align 4
  %starget_data.i = getelementptr inbounds %struct.scsi_target, ptr %160, i32 0, i32 15
  %offset.i = getelementptr inbounds %struct.scsi_target, ptr %160, i32 1, i32 1
  %161 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not.i345 = icmp eq i32 %162, 0
  br i1 %tobool.not.i345, label %land.lhs.true.i, label %if.else.if.end.i347_crit_edge

if.else.if.end.i347_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i347

land.lhs.true.i:                                  ; preds = %if.else
  %nego_goal_offset.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %49, i32 5
  %163 = ptrtoint ptr %nego_goal_offset.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %nego_goal_offset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool1.not.i = icmp eq i8 %164, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else96_crit_edge, label %land.lhs.true.i.if.end.i347_crit_edge

land.lhs.true.i.if.end.i347_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i347

land.lhs.true.i.if.else96_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else96

if.end.i347:                                      ; preds = %land.lhs.true.i.if.end.i347_crit_edge, %if.else.if.end.i347_crit_edge
  %nego_goal_offset4.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %49, i32 5
  %165 = ptrtoint ptr %nego_goal_offset4.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %nego_goal_offset4.i, align 1
  %conv.i = zext i8 %166 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %conv.i)
  %cmp.i346 = icmp eq i32 %162, %conv.i
  br i1 %cmp.i346, label %land.lhs.true6.i, label %if.end.i347.if.then83_crit_edge

if.end.i347.if.then83_crit_edge:                  ; preds = %if.end.i347
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

land.lhs.true6.i:                                 ; preds = %if.end.i347
  %167 = ptrtoint ptr %starget_data.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %starget_data.i, align 4
  %nego_goal_period.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %49, i32 4
  %169 = ptrtoint ptr %nego_goal_period.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %nego_goal_period.i, align 4
  %conv8.i = zext i8 %170 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %168, i32 %conv8.i)
  %cmp9.i = icmp eq i32 %168, %conv8.i
  br i1 %cmp9.i, label %land.lhs.true6.i.if.else96_crit_edge, label %land.lhs.true6.i.if.then83_crit_edge

land.lhs.true6.i.if.then83_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

land.lhs.true6.i.if.else96_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else96

if.then83:                                        ; preds = %land.lhs.true6.i.if.then83_crit_edge, %if.end.i347.if.then83_crit_edge
  %msg_out84 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 26
  %nego_goal_period86 = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %49, i32 4
  %171 = ptrtoint ptr %nego_goal_period86 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %nego_goal_period86, align 4
  %conv87 = zext i8 %172 to i32
  %173 = ptrtoint ptr %nego_goal_offset4.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %nego_goal_offset4.i, align 1
  %conv89 = zext i8 %174 to i32
  %call90 = tail call i32 @spi_populate_sync_msg(ptr noundef %msg_out84, i32 noundef %conv87, i32 noundef %conv89) #10
  %175 = ptrtoint ptr %msg_out_len to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %call90, ptr %msg_out_len, align 4
  %176 = ptrtoint ptr %flags28 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %flags28, align 1
  %178 = or i8 %177, 8
  br label %if.end102

if.else96:                                        ; preds = %land.lhs.true6.i.if.else96_crit_edge, %land.lhs.true.i.if.else96_crit_edge
  %179 = ptrtoint ptr %flags28 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %flags28, align 1
  %181 = and i8 %180, -65
  br label %if.end102

if.end102:                                        ; preds = %if.else96, %if.then83, %if.then71
  %.sink = phi i8 [ %178, %if.then83 ], [ %181, %if.else96 ], [ %158, %if.then71 ]
  %182 = ptrtoint ptr %flags28 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %.sink, ptr %flags28, align 1
  %183 = ptrtoint ptr %msg_out_len to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %msg_out_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool104.not = icmp ne i32 %184, 0
  %spec.select = or i1 %select_and_stop.0.off0, %tobool104.not
  br label %build_identify

build_identify:                                   ; preds = %if.end102, %if.then60, %esp_save_pointers.exit.build_identify_crit_edge
  %select_and_stop.1.off0 = phi i1 [ %select_and_stop.0.off0, %if.then60 ], [ %select_and_stop.0.off0, %esp_save_pointers.exit.build_identify_crit_edge ], [ %spec.select, %if.end102 ]
  %185 = ptrtoint ptr %flags28 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %flags28, align 1
  %187 = shl i8 %186, 5
  %188 = and i8 %187, 64
  %189 = trunc i64 %51 to i8
  %190 = and i8 %189, 7
  %191 = or i8 %190, %188
  %conv116 = or i8 %191, -128
  %incdec.ptr = getelementptr i8, ptr %124, i32 1
  %192 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %conv116, ptr %124, align 1
  %tag = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 7
  %193 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %tag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool119.not = icmp eq i8 %194, 0
  br i1 %tobool119.not, label %if.end125, label %land.lhs.true120

land.lhs.true120:                                 ; preds = %build_identify
  %rev121 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 36
  %195 = ptrtoint ptr %rev121 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %rev121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp122 = icmp eq i32 %196, 0
  %spec.select327 = select i1 %cmp122, i1 true, i1 %select_and_stop.1.off0
  br i1 %spec.select327, label %land.lhs.true120.if.then127_crit_edge, label %if.then157

land.lhs.true120.if.then127_crit_edge:            ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then127

if.end125:                                        ; preds = %build_identify
  br i1 %select_and_stop.1.off0, label %if.end125.if.then127_crit_edge, label %if.end125.if.end164_crit_edge

if.end125.if.end164_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.end125.if.then127_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then127

if.then127:                                       ; preds = %if.end125.if.then127_crit_edge, %land.lhs.true120.if.then127_crit_edge
  %197 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %cmd_len, align 4
  %conv129 = zext i16 %198 to i32
  %cmd_bytes_left = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 50
  %199 = ptrtoint ptr %cmd_bytes_left to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %conv129, ptr %cmd_bytes_left, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %45, i32 0, i32 16
  %200 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %cmnd, align 4
  %cmd_bytes_ptr = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 49
  %202 = ptrtoint ptr %cmd_bytes_ptr to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %201, ptr %cmd_bytes_ptr, align 4
  %203 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %tag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool133.not = icmp eq i8 %204, 0
  br i1 %tobool133.not, label %if.then127.if.end177_crit_edge, label %if.then134

if.then127.if.end177_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177

if.then134:                                       ; preds = %if.then127
  %205 = ptrtoint ptr %msg_out_len to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %msg_out_len, align 4
  %i.0379 = add i32 %206, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0379)
  %cmp136380 = icmp sgt i32 %i.0379, -1
  br i1 %cmp136380, label %for.body.preheader, label %if.then134.for.end_crit_edge

if.then134.for.end_crit_edge:                     ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #12
  %uglygep = getelementptr i8, ptr %esp, i32 578
  %uglygep402 = getelementptr i8, ptr %esp, i32 576
  %207 = call ptr @memmove(ptr %uglygep, ptr %uglygep402, i32 %206)
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %if.then134.for.end_crit_edge
  %208 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %tag, align 1
  %msg_out144 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 26
  %210 = ptrtoint ptr %msg_out144 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %msg_out144, align 4
  %arrayidx147 = getelementptr %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 7, i32 1
  %211 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx147, align 1
  %arrayidx149 = getelementptr %struct.esp, ptr %esp, i32 0, i32 26, i32 1
  %213 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %212, ptr %arrayidx149, align 1
  %214 = ptrtoint ptr %msg_out_len to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %msg_out_len, align 4
  %add151 = add i32 %215, 2
  store i32 %add151, ptr %msg_out_len, align 4
  br label %if.end177

if.then157:                                       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr160 = getelementptr i8, ptr %124, i32 2
  %216 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %194, ptr %incdec.ptr, align 1
  %arrayidx162 = getelementptr %struct.esp_cmd_entry, ptr %ent.071.i, i32 0, i32 7, i32 1
  %217 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx162, align 1
  %incdec.ptr163 = getelementptr i8, ptr %124, i32 3
  %219 = ptrtoint ptr %incdec.ptr160 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %incdec.ptr160, align 1
  br label %if.end164

if.end164:                                        ; preds = %if.then157, %if.end125.if.end164_crit_edge
  %start_cmd.0 = phi i32 [ 70, %if.then157 ], [ 66, %if.end125.if.end164_crit_edge ]
  %p.0 = phi ptr [ %incdec.ptr163, %if.then157 ], [ %incdec.ptr, %if.end125.if.end164_crit_edge ]
  %220 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %221)
  %cmp168376.not = icmp eq i16 %221, 0
  br i1 %cmp168376.not, label %if.end164.if.end177_crit_edge, label %for.body170.lr.ph

if.end164.if.end177_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177

for.body170.lr.ph:                                ; preds = %if.end164
  %cmnd171 = getelementptr inbounds %struct.scsi_cmnd, ptr %45, i32 0, i32 16
  br label %for.body170

for.body170:                                      ; preds = %for.body170.for.body170_crit_edge, %for.body170.lr.ph
  %p.1378 = phi ptr [ %p.0, %for.body170.lr.ph ], [ %incdec.ptr173, %for.body170.for.body170_crit_edge ]
  %i.1377 = phi i32 [ 0, %for.body170.lr.ph ], [ %inc, %for.body170.for.body170_crit_edge ]
  %222 = ptrtoint ptr %cmnd171 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cmnd171, align 4
  %arrayidx172 = getelementptr i8, ptr %223, i32 %i.1377
  %224 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx172, align 1
  %incdec.ptr173 = getelementptr i8, ptr %p.1378, i32 1
  %226 = ptrtoint ptr %p.1378 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %p.1378, align 1
  %inc = add nuw nsw i32 %i.1377, 1
  %227 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %cmd_len, align 4
  %conv167 = zext i16 %228 to i32
  %cmp168 = icmp ult i32 %inc, %conv167
  br i1 %cmp168, label %for.body170.for.body170_crit_edge, label %for.body170.if.end177_crit_edge

for.body170.if.end177_crit_edge:                  ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177

for.body170.for.body170_crit_edge:                ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body170

if.end177:                                        ; preds = %for.body170.if.end177_crit_edge, %if.end164.if.end177_crit_edge, %for.end, %if.then127.if.end177_crit_edge
  %.sink445 = phi i8 [ 2, %for.end ], [ 2, %if.then127.if.end177_crit_edge ], [ 1, %if.end164.if.end177_crit_edge ], [ 1, %for.body170.if.end177_crit_edge ]
  %start_cmd.1 = phi i32 [ 67, %for.end ], [ 67, %if.then127.if.end177_crit_edge ], [ %start_cmd.0, %if.end164.if.end177_crit_edge ], [ %start_cmd.0, %for.body170.if.end177_crit_edge ]
  %p.2 = phi ptr [ %incdec.ptr, %for.end ], [ %incdec.ptr, %if.then127.if.end177_crit_edge ], [ %p.0, %if.end164.if.end177_crit_edge ], [ %incdec.ptr173, %for.body170.if.end177_crit_edge ]
  %select_state176 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 38
  %229 = ptrtoint ptr %select_state176 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %.sink445, ptr %select_state176, align 4
  %rev178 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 36
  %230 = ptrtoint ptr %rev178 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %rev178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %231)
  %cmp179 = icmp eq i32 %231, 8
  %or182 = or i32 %49, 80
  %spec.select328 = select i1 %cmp179, i32 %or182, i32 %49
  %ops = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 2
  %232 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ops, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %233, align 4
  %conv184 = trunc i32 %spec.select328 to i8
  tail call void %235(ptr noundef %esp, i8 noundef zeroext %conv184, i32 noundef 4) #10
  %esp_offset.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %49, i32 1
  %236 = ptrtoint ptr %esp_offset.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %esp_offset.i, align 1
  %238 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx, align 4
  %prev_soff.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 16
  %240 = ptrtoint ptr %prev_soff.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %prev_soff.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %237, i8 %241)
  %cmp.not.i349 = icmp eq i8 %237, %241
  br i1 %cmp.not.i349, label %if.end177.if.end.i351_crit_edge, label %if.then.i350

if.end177.if.end.i351_crit_edge:                  ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i351

if.then.i350:                                     ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  %242 = ptrtoint ptr %prev_soff.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %237, ptr %prev_soff.i, align 4
  %243 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %ops, align 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %244, align 4
  tail call void %246(ptr noundef %esp, i8 noundef zeroext %237, i32 noundef 7) #10
  br label %if.end.i351

if.end.i351:                                      ; preds = %if.then.i350, %if.end177.if.end.i351_crit_edge
  %prev_stp.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 17
  %247 = ptrtoint ptr %prev_stp.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %prev_stp.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %239, i8 %248)
  %cmp8.not.i = icmp eq i8 %239, %248
  br i1 %cmp8.not.i, label %if.end.i351.esp_write_tgt_sync.exit_crit_edge, label %if.then10.i

if.end.i351.esp_write_tgt_sync.exit_crit_edge:    ; preds = %if.end.i351
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_write_tgt_sync.exit

if.then10.i:                                      ; preds = %if.end.i351
  call void @__sanitizer_cov_trace_pc() #12
  %249 = ptrtoint ptr %prev_stp.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %239, ptr %prev_stp.i, align 1
  %250 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %ops, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  tail call void %253(ptr noundef %esp, i8 noundef zeroext %239, i32 noundef 6) #10
  br label %esp_write_tgt_sync.exit

esp_write_tgt_sync.exit:                          ; preds = %if.then10.i, %if.end.i351.esp_write_tgt_sync.exit_crit_edge
  %254 = ptrtoint ptr %rev178 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %rev178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %255)
  %cmp.i352 = icmp ugt i32 %255, 1
  br i1 %cmp.i352, label %if.then.i353, label %esp_write_tgt_sync.exit.esp_write_tgt_config3.exit_crit_edge

esp_write_tgt_sync.exit.esp_write_tgt_config3.exit_crit_edge: ; preds = %esp_write_tgt_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_write_tgt_config3.exit

if.then.i353:                                     ; preds = %esp_write_tgt_sync.exit
  %esp_config3.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %49, i32 2
  %256 = ptrtoint ptr %esp_config3.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %esp_config3.i, align 2
  %prev_cfg3.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 18
  %258 = ptrtoint ptr %prev_cfg3.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %prev_cfg3.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %257, i8 %259)
  %cmp2.not.i = icmp eq i8 %257, %259
  br i1 %cmp2.not.i, label %if.then.i353.esp_write_tgt_config3.exit_crit_edge, label %if.then4.i

if.then.i353.esp_write_tgt_config3.exit_crit_edge: ; preds = %if.then.i353
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_write_tgt_config3.exit

if.then4.i:                                       ; preds = %if.then.i353
  call void @__sanitizer_cov_trace_pc() #12
  %260 = ptrtoint ptr %prev_cfg3.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %257, ptr %prev_cfg3.i, align 2
  %261 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %ops, align 4
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %262, align 4
  tail call void %264(ptr noundef %esp, i8 noundef zeroext %257, i32 noundef 12) #10
  br label %esp_write_tgt_config3.exit

esp_write_tgt_config3.exit:                       ; preds = %if.then4.i, %if.then.i353.esp_write_tgt_config3.exit_crit_edge, %esp_write_tgt_sync.exit.esp_write_tgt_config3.exit_crit_edge
  %265 = ptrtoint ptr %command_block to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %command_block, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %p.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %266 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %267 = load i32, ptr @esp_debug, align 4
  %and186 = and i32 %267, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %esp_write_tgt_config3.exit.if.end212_crit_edge, label %do.end

esp_write_tgt_config3.exit.if.end212_crit_edge:   ; preds = %esp_write_tgt_config3.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

do.end:                                           ; preds = %esp_write_tgt_config3.exit
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %49, i32 noundef %conv12) #13
  %268 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %269)
  %cmp193384.not = icmp eq i16 %269, 0
  br i1 %cmp193384.not, label %do.end.do.end209_crit_edge, label %do.end198.lr.ph

do.end.do.end209_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end209

do.end198.lr.ph:                                  ; preds = %do.end
  %cmnd200 = getelementptr inbounds %struct.scsi_cmnd, ptr %45, i32 0, i32 16
  br label %do.end198

do.end198:                                        ; preds = %do.end198.do.end198_crit_edge, %do.end198.lr.ph
  %i.2385 = phi i32 [ 0, %do.end198.lr.ph ], [ %inc205, %do.end198.do.end198_crit_edge ]
  %270 = ptrtoint ptr %cmnd200 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %cmnd200, align 4
  %arrayidx201 = getelementptr i8, ptr %271, i32 %i.2385
  %272 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %arrayidx201, align 1
  %conv202 = zext i8 %273 to i32
  %call203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv202) #13
  %inc205 = add nuw nsw i32 %i.2385, 1
  %274 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %cmd_len, align 4
  %conv192 = zext i16 %275 to i32
  %cmp193 = icmp ult i32 %inc205, %conv192
  br i1 %cmp193, label %do.end198.do.end198_crit_edge, label %do.end198.do.end209_crit_edge

do.end198.do.end209_crit_edge:                    ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end209

do.end198.do.end198_crit_edge:                    ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end198

do.end209:                                        ; preds = %do.end198.do.end209_crit_edge, %do.end.do.end209_crit_edge
  %call211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #13
  br label %if.end212

if.end212:                                        ; preds = %do.end209, %esp_write_tgt_config3.exit.if.end212_crit_edge
  tail call fastcc void @esp_send_dma_cmd(ptr noundef %esp, i32 noundef %sub.ptr.sub, i32 noundef %start_cmd.1)
  br label %cleanup

cleanup:                                          ; preds = %if.end212, %if.then8, %find_and_prep_issuable_command.exit.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esp_autosense(ptr noundef %esp, ptr noundef %ent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %lun2 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %lun2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lun2, align 8
  %conv = trunc i64 %7 to i32
  %sense_ptr = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent, i32 0, i32 11
  %8 = ptrtoint ptr %sense_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sense_ptr, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.body, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.body:                                          ; preds = %entry
  %10 = load i32, ptr @esp_debug, align 4
  %and = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %host = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %11 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.53, i32 noundef %5, i32 noundef %conv) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %13 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd1, align 4
  %sense_buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sense_buffer.i, align 4
  %17 = ptrtoint ptr %sense_ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %sense_ptr, align 4
  %flags.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 37
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %16 to i32
  br label %esp_map_sense.exit

if.end.i:                                         ; preds = %do.end7
  %dev.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 4
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %16) #10
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.esp_map_sense.exit_crit_edge, label %if.then.i.i, !prof !345

land.rhs.i.i.esp_map_sense.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_map_sense.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %22) #10
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %26, %if.end.i.i.i ], [ %24, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %esp_map_sense.exit

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %22, ptr noundef %16, i32 noundef 96) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %16 to i32
  %sub.i.i = add i32 %28, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %27, i32 %shr.i.i
  %and.i.i = and i32 %28, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %22, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 96, i32 noundef 2, i32 noundef 0) #10
  br label %esp_map_sense.exit

esp_map_sense.exit:                               ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.esp_map_sense.exit_crit_edge, %if.then.i
  %retval.0.i.sink.i = phi i32 [ %20, %if.then.i ], [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.esp_map_sense.exit_crit_edge ]
  %sense_dma3.i = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent, i32 0, i32 13
  %29 = ptrtoint ptr %sense_dma3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i.sink.i, ptr %sense_dma3.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %esp_map_sense.exit, %entry.if.end8_crit_edge
  %30 = ptrtoint ptr %sense_ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sense_ptr, align 4
  %saved_sense_ptr = getelementptr inbounds %struct.esp_cmd_entry, ptr %ent, i32 0, i32 12
  %32 = ptrtoint ptr %saved_sense_ptr to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %saved_sense_ptr, align 4
  %active_cmd = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 5
  %33 = ptrtoint ptr %active_cmd to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ent, ptr %active_cmd, align 4
  %command_block = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 8
  %34 = ptrtoint ptr %command_block to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %command_block, align 4
  %msg_out_len = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 27
  %36 = ptrtoint ptr %msg_out_len to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %msg_out_len, align 4
  %37 = trunc i64 %7 to i8
  %38 = and i8 %37, 7
  %conv11 = or i8 %38, -128
  %incdec.ptr = getelementptr i8, ptr %35, i32 1
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv11, ptr %35, align 1
  %incdec.ptr12 = getelementptr i8, ptr %35, i32 2
  %40 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %incdec.ptr, align 1
  %scsi_level = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 23
  %41 = ptrtoint ptr %scsi_level to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %scsi_level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %42)
  %cmp = icmp ult i8 %42, 4
  %phi.cast = shl i8 %37, 5
  %cond = select i1 %cmp, i8 %phi.cast, i8 0
  %incdec.ptr16 = getelementptr i8, ptr %35, i32 3
  %43 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %cond, ptr %incdec.ptr12, align 1
  %incdec.ptr17 = getelementptr i8, ptr %35, i32 4
  %44 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %incdec.ptr16, align 1
  %incdec.ptr18 = getelementptr i8, ptr %35, i32 5
  %45 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %incdec.ptr17, align 1
  %incdec.ptr19 = getelementptr i8, ptr %35, i32 6
  %46 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 96, ptr %incdec.ptr18, align 1
  %47 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %incdec.ptr19, align 1
  %select_state = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 38
  %48 = ptrtoint ptr %select_state to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %select_state, align 4
  %conv21 = trunc i32 %5 to i8
  %rev = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 36
  %49 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %50)
  %cmp22 = icmp eq i32 %50, 8
  %conv27 = or i8 %conv21, 80
  %val.0 = select i1 %cmp22, i8 %conv27, i8 %conv21
  %ops = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 2
  %51 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  tail call void %54(ptr noundef %esp, i8 noundef zeroext %val.0, i32 noundef 4) #10
  %arrayidx.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %5
  %esp_offset.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %5, i32 1
  %55 = ptrtoint ptr %esp_offset.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %esp_offset.i, align 1
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i, align 4
  %prev_soff.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 16
  %59 = ptrtoint ptr %prev_soff.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %prev_soff.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %60)
  %cmp.not.i = icmp eq i8 %56, %60
  br i1 %cmp.not.i, label %if.end8.if.end.i66_crit_edge, label %if.then.i65

if.end8.if.end.i66_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i66

if.then.i65:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %prev_soff.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %56, ptr %prev_soff.i, align 4
  %62 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  tail call void %65(ptr noundef %esp, i8 noundef zeroext %56, i32 noundef 7) #10
  br label %if.end.i66

if.end.i66:                                       ; preds = %if.then.i65, %if.end8.if.end.i66_crit_edge
  %prev_stp.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 17
  %66 = ptrtoint ptr %prev_stp.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %prev_stp.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %67)
  %cmp8.not.i = icmp eq i8 %58, %67
  br i1 %cmp8.not.i, label %if.end.i66.esp_write_tgt_sync.exit_crit_edge, label %if.then10.i

if.end.i66.esp_write_tgt_sync.exit_crit_edge:     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_write_tgt_sync.exit

if.then10.i:                                      ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %prev_stp.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %58, ptr %prev_stp.i, align 1
  %69 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  tail call void %72(ptr noundef %esp, i8 noundef zeroext %58, i32 noundef 6) #10
  br label %esp_write_tgt_sync.exit

esp_write_tgt_sync.exit:                          ; preds = %if.then10.i, %if.end.i66.esp_write_tgt_sync.exit_crit_edge
  %73 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp.i = icmp ugt i32 %74, 1
  br i1 %cmp.i, label %if.then.i67, label %esp_write_tgt_sync.exit.esp_write_tgt_config3.exit_crit_edge

esp_write_tgt_sync.exit.esp_write_tgt_config3.exit_crit_edge: ; preds = %esp_write_tgt_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_write_tgt_config3.exit

if.then.i67:                                      ; preds = %esp_write_tgt_sync.exit
  %esp_config3.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 21, i32 %5, i32 2
  %75 = ptrtoint ptr %esp_config3.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %esp_config3.i, align 2
  %prev_cfg3.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 18
  %77 = ptrtoint ptr %prev_cfg3.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %prev_cfg3.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %78)
  %cmp2.not.i = icmp eq i8 %76, %78
  br i1 %cmp2.not.i, label %if.then.i67.esp_write_tgt_config3.exit_crit_edge, label %if.then4.i

if.then.i67.esp_write_tgt_config3.exit_crit_edge: ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %esp_write_tgt_config3.exit

if.then4.i:                                       ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %prev_cfg3.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %76, ptr %prev_cfg3.i, align 2
  %80 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  tail call void %83(ptr noundef %esp, i8 noundef zeroext %76, i32 noundef 12) #10
  br label %esp_write_tgt_config3.exit

esp_write_tgt_config3.exit:                       ; preds = %if.then4.i, %if.then.i67.esp_write_tgt_config3.exit_crit_edge, %esp_write_tgt_sync.exit.esp_write_tgt_config3.exit_crit_edge
  %incdec.ptr20 = getelementptr i8, ptr %35, i32 7
  %84 = ptrtoint ptr %command_block to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %command_block, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr20 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %85 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv31 = and i32 %sub.ptr.sub, 255
  tail call fastcc void @esp_send_dma_cmd(ptr noundef %esp, i32 noundef %conv31, i32 noundef 66)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_populate_width_msg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_populate_sync_msg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esp_send_dma_cmd(ptr noundef %esp, i32 noundef %len, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 37
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %esp_event_cur.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 25
  %2 = ptrtoint ptr %esp_event_cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %esp_event_cur.i, align 4
  %arrayidx.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %arrayidx.i, align 1
  %val1.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %3, i32 1
  %5 = ptrtoint ptr %val1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %val1.i, align 1
  %sreg.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 11
  %6 = ptrtoint ptr %sreg.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sreg.i.i, align 4
  %sreg1.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %3, i32 2
  %8 = ptrtoint ptr %sreg1.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %sreg1.i.i, align 1
  %seqreg.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 12
  %9 = ptrtoint ptr %seqreg.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %seqreg.i.i, align 1
  %seqreg2.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %3, i32 3
  %11 = ptrtoint ptr %seqreg2.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %seqreg2.i.i, align 1
  %sreg2.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 13
  %12 = ptrtoint ptr %sreg2.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sreg2.i.i, align 2
  %sreg23.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %3, i32 4
  %14 = ptrtoint ptr %sreg23.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %sreg23.i.i, align 1
  %ireg.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 14
  %15 = ptrtoint ptr %ireg.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ireg.i.i, align 1
  %ireg4.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %3, i32 5
  %17 = ptrtoint ptr %ireg4.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %ireg4.i.i, align 1
  %select_state.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 38
  %18 = ptrtoint ptr %select_state.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %select_state.i.i, align 4
  %select_state5.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %3, i32 6
  %20 = ptrtoint ptr %select_state5.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %select_state5.i.i, align 1
  %event.i.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 39
  %21 = ptrtoint ptr %event.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %event.i.i, align 1
  %event6.i.i = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %3, i32 7
  %23 = ptrtoint ptr %event6.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %event6.i.i, align 1
  %add.i = add i32 %3, 1
  %and.i = and i32 %add.i, 31
  store i32 %and.i, ptr %esp_event_cur.i, align 4
  %24 = load i32, ptr @esp_debug, align 4
  %and3.i = and i32 %24, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.then.scsi_esp_cmd.exit_crit_edge, label %do.end.i

if.then.scsi_esp_cmd.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %host.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %25 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %26, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str, i32 noundef 1) #13
  br label %scsi_esp_cmd.exit

scsi_esp_cmd.exit:                                ; preds = %do.end.i, %if.then.scsi_esp_cmd.exit_crit_edge
  %ops.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 2
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  tail call void %30(ptr noundef %esp, i8 noundef zeroext 1, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp49 = icmp sgt i32 %len, 0
  br i1 %cmp49, label %for.body.lr.ph, label %scsi_esp_cmd.exit.for.end_crit_edge

scsi_esp_cmd.exit.for.end_crit_edge:              ; preds = %scsi_esp_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %scsi_esp_cmd.exit
  %command_block = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %command_block to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %command_block, align 4
  %arrayidx = getelementptr i8, ptr %36, i32 %i.050
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  tail call void %34(ptr noundef %esp, i8 noundef zeroext %38, i32 noundef 2) #10
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %scsi_esp_cmd.exit.for.end_crit_edge
  %conv = trunc i32 %cmd to i8
  %39 = ptrtoint ptr %esp_event_cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %esp_event_cur.i, align 4
  %arrayidx.i2 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %40
  %41 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %arrayidx.i2, align 1
  %val1.i3 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %40, i32 1
  %42 = ptrtoint ptr %val1.i3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv, ptr %val1.i3, align 1
  %43 = ptrtoint ptr %sreg.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %sreg.i.i, align 4
  %sreg1.i.i5 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %40, i32 2
  %45 = ptrtoint ptr %sreg1.i.i5 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %sreg1.i.i5, align 1
  %46 = ptrtoint ptr %seqreg.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %seqreg.i.i, align 1
  %seqreg2.i.i7 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %40, i32 3
  %48 = ptrtoint ptr %seqreg2.i.i7 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %seqreg2.i.i7, align 1
  %49 = ptrtoint ptr %sreg2.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sreg2.i.i, align 2
  %sreg23.i.i9 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %40, i32 4
  %51 = ptrtoint ptr %sreg23.i.i9 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %sreg23.i.i9, align 1
  %52 = ptrtoint ptr %ireg.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ireg.i.i, align 1
  %ireg4.i.i11 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %40, i32 5
  %54 = ptrtoint ptr %ireg4.i.i11 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %ireg4.i.i11, align 1
  %55 = ptrtoint ptr %select_state.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %select_state.i.i, align 4
  %select_state5.i.i13 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %40, i32 6
  %57 = ptrtoint ptr %select_state5.i.i13 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %select_state5.i.i13, align 1
  %58 = ptrtoint ptr %event.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %event.i.i, align 1
  %event6.i.i15 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %40, i32 7
  %60 = ptrtoint ptr %event6.i.i15 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %event6.i.i15, align 1
  %add.i16 = add i32 %40, 1
  %and.i17 = and i32 %add.i16, 31
  store i32 %and.i17, ptr %esp_event_cur.i, align 4
  %61 = load i32, ptr @esp_debug, align 4
  %and3.i18 = and i32 %61, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i18)
  %tobool.not.i19 = icmp eq i32 %and3.i18, 0
  br i1 %tobool.not.i19, label %for.end.scsi_esp_cmd.exit24_crit_edge, label %do.end.i22

for.end.scsi_esp_cmd.exit24_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit24

do.end.i22:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %host.i20 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %62 = ptrtoint ptr %host.i20 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %host.i20, align 4
  %shost_gendev.i21 = getelementptr inbounds %struct.Scsi_Host, ptr %63, i32 0, i32 49
  %conv.i = and i32 %cmd, 255
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i21, ptr noundef nonnull @.str, i32 noundef %conv.i) #13
  br label %scsi_esp_cmd.exit24

scsi_esp_cmd.exit24:                              ; preds = %do.end.i22, %for.end.scsi_esp_cmd.exit24_crit_edge
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  tail call void %67(ptr noundef %esp, i8 noundef zeroext %conv, i32 noundef 3) #10
  br label %if.end6

if.else:                                          ; preds = %entry
  %rev = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 36
  %68 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %69)
  %cmp1 = icmp eq i32 %69, 8
  br i1 %cmp1, label %if.then3, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3:                                         ; preds = %if.else
  %esp_event_cur.i25 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 25
  %70 = ptrtoint ptr %esp_event_cur.i25 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %esp_event_cur.i25, align 4
  %arrayidx.i26 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %71
  %72 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 2, ptr %arrayidx.i26, align 1
  %val1.i27 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %71, i32 1
  %73 = ptrtoint ptr %val1.i27 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %val1.i27, align 1
  %sreg.i.i28 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 11
  %74 = ptrtoint ptr %sreg.i.i28 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %sreg.i.i28, align 4
  %sreg1.i.i29 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %71, i32 2
  %76 = ptrtoint ptr %sreg1.i.i29 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %sreg1.i.i29, align 1
  %seqreg.i.i30 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 12
  %77 = ptrtoint ptr %seqreg.i.i30 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %seqreg.i.i30, align 1
  %seqreg2.i.i31 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %71, i32 3
  %79 = ptrtoint ptr %seqreg2.i.i31 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %seqreg2.i.i31, align 1
  %sreg2.i.i32 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 13
  %80 = ptrtoint ptr %sreg2.i.i32 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %sreg2.i.i32, align 2
  %sreg23.i.i33 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %71, i32 4
  %82 = ptrtoint ptr %sreg23.i.i33 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %sreg23.i.i33, align 1
  %ireg.i.i34 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 14
  %83 = ptrtoint ptr %ireg.i.i34 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ireg.i.i34, align 1
  %ireg4.i.i35 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %71, i32 5
  %85 = ptrtoint ptr %ireg4.i.i35 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %ireg4.i.i35, align 1
  %select_state.i.i36 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 38
  %86 = ptrtoint ptr %select_state.i.i36 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %select_state.i.i36, align 4
  %select_state5.i.i37 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %71, i32 6
  %88 = ptrtoint ptr %select_state5.i.i37 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %select_state5.i.i37, align 1
  %event.i.i38 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 39
  %89 = ptrtoint ptr %event.i.i38 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %event.i.i38, align 1
  %event6.i.i39 = getelementptr %struct.esp, ptr %esp, i32 0, i32 24, i32 %71, i32 7
  %91 = ptrtoint ptr %event6.i.i39 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %event6.i.i39, align 1
  %add.i40 = add i32 %71, 1
  %and.i41 = and i32 %add.i40, 31
  store i32 %and.i41, ptr %esp_event_cur.i25, align 4
  %92 = load i32, ptr @esp_debug, align 4
  %and3.i42 = and i32 %92, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i42)
  %tobool.not.i43 = icmp eq i32 %and3.i42, 0
  br i1 %tobool.not.i43, label %if.then3.scsi_esp_cmd.exit48_crit_edge, label %do.end.i46

if.then3.scsi_esp_cmd.exit48_crit_edge:           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %scsi_esp_cmd.exit48

do.end.i46:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %host.i44 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %93 = ptrtoint ptr %host.i44 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %host.i44, align 4
  %shost_gendev.i45 = getelementptr inbounds %struct.Scsi_Host, ptr %94, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i45, ptr noundef nonnull @.str, i32 noundef 1) #13
  br label %scsi_esp_cmd.exit48

scsi_esp_cmd.exit48:                              ; preds = %do.end.i46, %if.then3.scsi_esp_cmd.exit48_crit_edge
  %ops.i47 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 2
  %95 = ptrtoint ptr %ops.i47 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops.i47, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  tail call void %98(ptr noundef %esp, i8 noundef zeroext 1, i32 noundef 3) #10
  br label %if.end

if.end:                                           ; preds = %scsi_esp_cmd.exit48, %if.else.if.end_crit_edge
  %ops4 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 2
  %99 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops4, align 4
  %send_dma_cmd = getelementptr inbounds %struct.esp_driver_ops, ptr %100, i32 0, i32 7
  %101 = ptrtoint ptr %send_dma_cmd to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %send_dma_cmd, align 4
  %command_block_dma = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 9
  %103 = ptrtoint ptr %command_block_dma to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %command_block_dma, align 4
  %105 = trunc i32 %cmd to i8
  %conv5 = or i8 %105, -128
  tail call void %102(ptr noundef %esp, i32 noundef %104, i32 noundef %len, i32 noundef 16, i32 noundef 0, i8 noundef zeroext %conv5) #10
  br label %if.end6

if.end6:                                          ; preds = %if.end, %scsi_esp_cmd.exit24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_populate_tag_msg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_device_lookup_by_target(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_kmap_atomic_sg(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_kunmap_atomic_sg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_track_queue_full(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esp_setsync(ptr noundef %esp, ptr nocapture noundef %tp, i8 noundef zeroext %scsi_period, i8 noundef zeroext %scsi_offset, i8 noundef zeroext %esp_stp, i8 noundef zeroext %esp_soff) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %scsi_period to i32
  %starget = getelementptr inbounds %struct.esp_target_data, ptr %tp, i32 0, i32 8
  %0 = ptrtoint ptr %starget to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %starget, align 4
  %starget_data = getelementptr inbounds %struct.scsi_target, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %starget_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %starget_data, align 4
  %conv1 = zext i8 %scsi_offset to i32
  %3 = load ptr, ptr %starget, align 4
  %offset = getelementptr inbounds %struct.scsi_target, ptr %3, i32 1, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv1, ptr %offset, align 4
  %flags = getelementptr inbounds %struct.esp_target_data, ptr %tp, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags, align 1
  %7 = load ptr, ptr %starget, align 4
  %width = getelementptr inbounds %struct.scsi_target, ptr %7, i32 1, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %width, align 4
  %bf.value = zext i8 %6 to i16
  %bf.shl = shl i16 %bf.value, 15
  %bf.clear = and i16 %bf.load, 32767
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %esp_soff)
  %tobool7.not = icmp eq i8 %esp_soff, 0
  br i1 %tobool7.not, label %entry.if.end46_crit_edge, label %if.then

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then:                                          ; preds = %entry
  %9 = and i8 %esp_stp, 31
  %radelay = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 48
  %10 = ptrtoint ptr %radelay to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %radelay, align 4
  %12 = trunc i32 %11 to i8
  %conv12 = or i8 %12, %esp_soff
  %rev = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 36
  %13 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp = icmp ugt i32 %14, 2
  br i1 %cmp, label %if.then14, label %if.then.if.end46_crit_edge

if.then.if.end46_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp16 = icmp ugt i32 %14, 5
  %spec.store.select = select i1 %cmp16, i8 2, i8 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %scsi_period)
  %cmp20 = icmp ult i8 %scsi_period, 50
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %cmp24 = icmp eq i32 %14, 8
  %15 = xor i8 %12, -1
  %conv30 = and i8 %15, %esp_soff
  %esp_soff.addr.0 = select i1 %cmp24, i8 %conv30, i8 %conv12
  %esp_config3 = getelementptr inbounds %struct.esp_target_data, ptr %tp, i32 0, i32 2
  %16 = ptrtoint ptr %esp_config3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %esp_config3, align 2
  %or3488 = or i8 %17, %spec.store.select
  store i8 %or3488, ptr %esp_config3, align 2
  br label %if.end42

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %neg37 = xor i8 %spec.store.select, -1
  %esp_config338 = getelementptr inbounds %struct.esp_target_data, ptr %tp, i32 0, i32 2
  %18 = ptrtoint ptr %esp_config338 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %esp_config338, align 2
  %and40 = and i8 %19, %neg37
  store i8 %and40, ptr %esp_config338, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then22
  %esp_soff.addr.1 = phi i8 [ %esp_soff.addr.0, %if.then22 ], [ %conv12, %if.else ]
  %esp_config343 = getelementptr inbounds %struct.esp_target_data, ptr %tp, i32 0, i32 2
  %20 = ptrtoint ptr %esp_config343 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %esp_config343, align 2
  %prev_cfg3 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 18
  %22 = ptrtoint ptr %prev_cfg3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %prev_cfg3, align 2
  %ops = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 2
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  tail call void %26(ptr noundef %esp, i8 noundef zeroext %21, i32 noundef 12) #10
  br label %if.end46

if.end46:                                         ; preds = %if.end42, %if.then.if.end46_crit_edge, %entry.if.end46_crit_edge
  %esp_stp.addr.0 = phi i8 [ %9, %if.end42 ], [ %9, %if.then.if.end46_crit_edge ], [ %esp_stp, %entry.if.end46_crit_edge ]
  %esp_soff.addr.2 = phi i8 [ %esp_soff.addr.1, %if.end42 ], [ %conv12, %if.then.if.end46_crit_edge ], [ 0, %entry.if.end46_crit_edge ]
  %prev_stp = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 17
  %27 = ptrtoint ptr %prev_stp to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %esp_stp.addr.0, ptr %prev_stp, align 1
  %28 = ptrtoint ptr %tp to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %esp_stp.addr.0, ptr %tp, align 4
  %prev_soff = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 16
  %29 = ptrtoint ptr %prev_soff to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %esp_soff.addr.2, ptr %prev_soff, align 4
  %esp_offset = getelementptr inbounds %struct.esp_target_data, ptr %tp, i32 0, i32 1
  %30 = ptrtoint ptr %esp_offset to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %esp_soff.addr.2, ptr %esp_offset, align 1
  %ops47 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 2
  %31 = ptrtoint ptr %ops47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops47, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  tail call void %34(ptr noundef %esp, i8 noundef zeroext %esp_soff.addr.2, i32 noundef 7) #10
  %35 = ptrtoint ptr %ops47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops47, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  tail call void %38(ptr noundef %esp, i8 noundef zeroext %esp_stp.addr.0, i32 noundef 6) #10
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags, align 1
  %41 = and i8 %40, -73
  store i8 %41, ptr %flags, align 1
  %42 = ptrtoint ptr %starget to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %starget, align 4
  tail call void @spi_display_xfer_agreement(ptr noundef %43) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_display_xfer_agreement(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_dv_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_attach_transport(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esp_set_period(ptr nocapture noundef readonly %target, i32 noundef %period) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %target, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %id = getelementptr inbounds %struct.scsi_target, ptr %target, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %conv = trunc i32 %period to i8
  %nego_goal_period = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 21, i32 %5, i32 4
  %6 = ptrtoint ptr %nego_goal_period to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %nego_goal_period, align 4
  %flags = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 21, i32 %5, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 1
  %9 = or i8 %8, 64
  store i8 %9, ptr %flags, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esp_set_offset(ptr nocapture noundef readonly %target, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %target, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %id = getelementptr inbounds %struct.scsi_target, ptr %target, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 49, i32 0, i32 7
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv = trunc i32 %offset to i8
  %spec.select = select i1 %tobool.not, i8 %conv, i8 0
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %8 = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 21, i32 %5, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.select, ptr %8, align 1
  %flags4 = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 21, i32 %5, i32 3
  %10 = ptrtoint ptr %flags4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags4, align 1
  %12 = or i8 %11, 64
  store i8 %12, ptr %flags4, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esp_set_width(ptr nocapture noundef readonly %target, i32 noundef %width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %target, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %id = getelementptr inbounds %struct.scsi_target, ptr %target, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width)
  %tobool.not = icmp ne i32 %width, 0
  %conv = zext i1 %tobool.not to i8
  %nego_goal_width = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 21, i32 %5, i32 6
  %6 = ptrtoint ptr %nego_goal_width to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %nego_goal_width, align 2
  %flags = getelementptr %struct.esp, ptr %hostdata.i, i32 0, i32 21, i32 %5, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 1
  %9 = or i8 %8, 64
  store i8 %9, ptr %flags, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @esp_get_signalling(ptr nocapture noundef readonly %host) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 49, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 4
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 51
  %2 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shost_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %., ptr %3, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 162)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 162)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !44, !45, !46, !47, !49, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !271, !273, !274, !275, !277, !278, !279, !280, !282, !283, !284, !285, !287, !288, !289, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !334}
!llvm.module.flags = !{!336, !337, !338, !339, !340, !341, !342, !343}
!llvm.ident = !{!344}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/esp_scsi.c", i32 142, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @scsi_esp_cmd._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @scsi_esp_cmd._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_scsi_esp_cmd, !9, !"__ksymtab_scsi_esp_cmd", i1 false, i1 false}
!9 = !{!"../drivers/scsi/esp_scsi.c", i32 145, i32 1}
!10 = !{ptr @__ksymtab_scsi_esp_intr, !11, !"__ksymtab_scsi_esp_intr", i1 false, i1 false}
!11 = !{!"../drivers/scsi/esp_scsi.c", i32 2201, i32 1}
!12 = !{ptr @scsi_esp_register.instance, !13, !"instance", i1 false, i1 false}
!13 = !{!"../drivers/scsi/esp_scsi.c", i32 2379, i32 13}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/esp_scsi.c", i32 2397, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @scsi_esp_register._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @scsi_esp_register._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/esp_scsi.c", i32 2400, i32 2}
!22 = !{ptr @scsi_esp_register._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @scsi_esp_register._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_scsi_esp_register, !25, !"__ksymtab_scsi_esp_register", i1 false, i1 false}
!25 = !{!"../drivers/scsi/esp_scsi.c", i32 2418, i32 1}
!26 = !{ptr @__ksymtab_scsi_esp_unregister, !27, !"__ksymtab_scsi_esp_unregister", i1 false, i1 false}
!27 = !{!"../drivers/scsi/esp_scsi.c", i32 2424, i32 1}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/esp_scsi.c", i32 2665, i32 12}
!30 = !{ptr @scsi_esp_template, !31, !"scsi_esp_template", i1 false, i1 false}
!31 = !{!"../drivers/scsi/esp_scsi.c", i32 2663, i32 27}
!32 = !{ptr @__ksymtab_scsi_esp_template, !33, !"__ksymtab_scsi_esp_template", i1 false, i1 false}
!33 = !{!"../drivers/scsi/esp_scsi.c", i32 2682, i32 1}
!34 = !{ptr @__UNIQUE_ID_description282, !35, !"__UNIQUE_ID_description282", i1 false, i1 false}
!35 = !{!"../drivers/scsi/esp_scsi.c", i32 2757, i32 1}
!36 = !{ptr @__UNIQUE_ID_author283, !37, !"__UNIQUE_ID_author283", i1 false, i1 false}
!37 = !{!"../drivers/scsi/esp_scsi.c", i32 2758, i32 1}
!38 = !{ptr @__UNIQUE_ID_file284, !39, !"__UNIQUE_ID_file284", i1 false, i1 false}
!39 = !{!"../drivers/scsi/esp_scsi.c", i32 2759, i32 1}
!40 = !{ptr @__UNIQUE_ID_license285, !39, !"__UNIQUE_ID_license285", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_version286, !42, !"__UNIQUE_ID_version286", i1 false, i1 false}
!42 = !{!"../drivers/scsi/esp_scsi.c", i32 2760, i32 1}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__modver_attr, !42, !"__modver_attr", i1 false, i1 false}
!47 = !{ptr @__param_esp_bus_reset_settle, !48, !"__param_esp_bus_reset_settle", i1 false, i1 false}
!48 = !{!"../drivers/scsi/esp_scsi.c", i32 2762, i32 1}
!49 = !{ptr @__UNIQUE_ID_esp_bus_reset_settletype287, !48, !"__UNIQUE_ID_esp_bus_reset_settletype287", i1 false, i1 false}
!50 = !{ptr @__UNIQUE_ID_esp_bus_reset_settle288, !51, !"__UNIQUE_ID_esp_bus_reset_settle288", i1 false, i1 false}
!51 = !{!"../drivers/scsi/esp_scsi.c", i32 2763, i32 1}
!52 = !{ptr @__param_esp_debug, !53, !"__param_esp_debug", i1 false, i1 false}
!53 = !{!"../drivers/scsi/esp_scsi.c", i32 2766, i32 1}
!54 = !{ptr @__UNIQUE_ID_esp_debugtype289, !53, !"__UNIQUE_ID_esp_debugtype289", i1 false, i1 false}
!55 = !{ptr @__UNIQUE_ID_esp_debug290, !56, !"__UNIQUE_ID_esp_debug290", i1 false, i1 false}
!56 = !{!"../drivers/scsi/esp_scsi.c", i32 2767, i32 1}
!57 = !{ptr @__initcall__kmod_esp_scsi__291_2782_esp_init6, !58, !"__initcall__kmod_esp_scsi__291_2782_esp_init6", i1 false, i1 false}
!58 = !{!"../drivers/scsi/esp_scsi.c", i32 2782, i32 1}
!59 = !{ptr @__exitcall_esp_exit, !60, !"__exitcall_esp_exit", i1 false, i1 false}
!60 = !{!"../drivers/scsi/esp_scsi.c", i32 2783, i32 1}
!61 = !{ptr @esp_debug, !62, !"esp_debug", i1 false, i1 false}
!62 = !{!"../drivers/scsi/esp_scsi.c", i32 41, i32 12}
!63 = !{ptr @esp_transport_template, !64, !"esp_transport_template", i1 false, i1 false}
!64 = !{!"../drivers/scsi/esp_scsi.c", i32 2375, i32 40}
!65 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/esp_scsi.c", i32 2143, i32 2}
!67 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @__esp_interrupt._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @__esp_interrupt._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/esp_scsi.c", i32 2150, i32 3}
!72 = !{ptr @__esp_interrupt._entry.17, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @__esp_interrupt._entry_ptr.19, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/esp_scsi.c", i32 989, i32 3}
!76 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @esp_check_gross_error._entry, !75, !"_entry", i1 false, i1 false}
!79 = !{ptr @esp_check_gross_error._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/esp_scsi.c", i32 1017, i32 5}
!82 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @esp_check_spur_intr._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @esp_check_spur_intr._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/esp_scsi.c", i32 1023, i32 4}
!87 = !{ptr @esp_check_spur_intr._entry.25, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @esp_check_spur_intr._entry_ptr.27, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/esp_scsi.c", i32 185, i32 2}
!91 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @esp_dump_cmd_log._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @esp_dump_cmd_log._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/esp_scsi.c", i32 189, i32 3}
!96 = !{ptr @esp_dump_cmd_log._entry.30, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @esp_dump_cmd_log._entry_ptr.32, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/esp_scsi.c", i32 1036, i32 2}
!102 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @esp_schedule_reset._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @esp_schedule_reset._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/esp_scsi.c", i32 1310, i32 2}
!107 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @esp_finish_select._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @esp_finish_select._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/esp_scsi.c", i32 931, i32 4}
!112 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @esp_cmd_is_done._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @esp_cmd_is_done._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/esp_scsi.c", i32 934, i32 5}
!117 = !{ptr @esp_cmd_is_done._entry.41, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @esp_cmd_is_done._entry_ptr.43, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/esp_scsi.c", i32 935, i32 4}
!121 = !{ptr @esp_cmd_is_done._entry.44, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @esp_cmd_is_done._entry_ptr.46, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/esp_scsi.c", i32 869, i32 3}
!125 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @esp_maybe_execute_command._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @esp_maybe_execute_command._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @esp_maybe_execute_command._entry.49, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/scsi/esp_scsi.c", i32 871, i32 4}
!130 = !{ptr @esp_maybe_execute_command._entry_ptr.50, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @esp_maybe_execute_command._entry.51, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/scsi/esp_scsi.c", i32 872, i32 3}
!133 = !{ptr @esp_maybe_execute_command._entry_ptr.52, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/esp_scsi.c", i32 669, i32 3}
!136 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @esp_autosense._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @esp_autosense._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = distinct !{null, !140, !"__already_done", i1 false, i1 false}
!140 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!141 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.56, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/esp_scsi.c", i32 209, i32 5}
!145 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @esp_flush_fifo._entry, !144, !"_entry", i1 false, i1 false}
!148 = !{ptr @esp_flush_fifo._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/esp_scsi.c", i32 1196, i32 3}
!151 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @esp_reconnect._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @esp_reconnect._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/esp_scsi.c", i32 1053, i32 3}
!156 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @esp_reconnect_with_tag._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @esp_reconnect_with_tag._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.65, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/esp_scsi.c", i32 1058, i32 2}
!161 = !{ptr @esp_reconnect_with_tag._entry.64, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @esp_reconnect_with_tag._entry_ptr.66, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.68, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/esp_scsi.c", i32 1065, i32 3}
!165 = !{ptr @esp_reconnect_with_tag._entry.67, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @esp_reconnect_with_tag._entry_ptr.69, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/esp_scsi.c", i32 1073, i32 2}
!169 = !{ptr @esp_reconnect_with_tag._entry.70, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @esp_reconnect_with_tag._entry_ptr.72, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/esp_scsi.c", i32 1077, i32 3}
!173 = !{ptr @esp_reconnect_with_tag._entry.73, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @esp_reconnect_with_tag._entry_ptr.75, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/esp_scsi.c", i32 1083, i32 3}
!177 = !{ptr @esp_reconnect_with_tag._entry.76, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @esp_reconnect_with_tag._entry_ptr.78, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.80, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/esp_scsi.c", i32 1107, i32 3}
!181 = !{ptr @esp_reconnect_with_tag._entry.79, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @esp_reconnect_with_tag._entry_ptr.81, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.83, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/esp_scsi.c", i32 1113, i32 2}
!185 = !{ptr @esp_reconnect_with_tag._entry.82, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @esp_reconnect_with_tag._entry_ptr.84, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/esp_scsi.c", i32 1120, i32 3}
!189 = !{ptr @esp_reconnect_with_tag._entry.85, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @esp_reconnect_with_tag._entry_ptr.87, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.89, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/esp_scsi.c", i32 1128, i32 3}
!193 = !{ptr @esp_reconnect_with_tag._entry.88, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @esp_reconnect_with_tag._entry_ptr.90, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.91, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/esp_scsi.c", i32 1695, i32 2}
!197 = !{ptr @.str.92, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @esp_process_event._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @esp_process_event._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/esp_scsi.c", i32 1726, i32 4}
!202 = !{ptr @esp_process_event._entry.93, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @esp_process_event._entry_ptr.95, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.97, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/esp_scsi.c", i32 1761, i32 4}
!206 = !{ptr @esp_process_event._entry.96, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @esp_process_event._entry_ptr.98, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/esp_scsi.c", i32 1763, i32 4}
!210 = !{ptr @esp_process_event._entry.99, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @esp_process_event._entry_ptr.101, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.103, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/esp_scsi.c", i32 1771, i32 3}
!214 = !{ptr @esp_process_event._entry.102, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @esp_process_event._entry_ptr.104, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.106, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/esp_scsi.c", i32 1785, i32 4}
!218 = !{ptr @esp_process_event._entry.105, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @esp_process_event._entry_ptr.107, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/esp_scsi.c", i32 1802, i32 4}
!222 = !{ptr @esp_process_event._entry.108, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @esp_process_event._entry_ptr.110, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.112, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/esp_scsi.c", i32 1810, i32 3}
!226 = !{ptr @esp_process_event._entry.111, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @esp_process_event._entry_ptr.113, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.115, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/esp_scsi.c", i32 1839, i32 4}
!230 = !{ptr @esp_process_event._entry.114, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @esp_process_event._entry_ptr.116, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.118, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/esp_scsi.c", i32 1859, i32 4}
!234 = !{ptr @esp_process_event._entry.117, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @esp_process_event._entry_ptr.119, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.121, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/esp_scsi.c", i32 1872, i32 4}
!238 = !{ptr @esp_process_event._entry.120, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @esp_process_event._entry_ptr.122, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.124, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/esp_scsi.c", i32 1879, i32 4}
!242 = !{ptr @esp_process_event._entry.123, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @esp_process_event._entry_ptr.125, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.127, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/esp_scsi.c", i32 1894, i32 4}
!246 = !{ptr @esp_process_event._entry.126, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @esp_process_event._entry_ptr.128, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @esp_process_event._entry.129, !249, !"_entry", i1 false, i1 false}
!249 = !{!"../drivers/scsi/esp_scsi.c", i32 1896, i32 5}
!250 = !{ptr @esp_process_event._entry_ptr.130, !249, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @esp_process_event._entry.131, !252, !"_entry", i1 false, i1 false}
!252 = !{!"../drivers/scsi/esp_scsi.c", i32 1897, i32 4}
!253 = !{ptr @esp_process_event._entry_ptr.132, !252, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.134, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/esp_scsi.c", i32 1976, i32 4}
!256 = !{ptr @esp_process_event._entry.133, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @esp_process_event._entry_ptr.135, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.137, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/esp_scsi.c", i32 1993, i32 4}
!260 = !{ptr @esp_process_event._entry.136, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @esp_process_event._entry_ptr.138, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.140, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/esp_scsi.c", i32 2020, i32 3}
!264 = !{ptr @esp_process_event._entry.139, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @esp_process_event._entry_ptr.141, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.142, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/esp_scsi.c", i32 444, i32 3}
!268 = !{ptr @.str.143, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @esp_advance_dma._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @esp_advance_dma._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.145, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/esp_scsi.c", i32 446, i32 3}
!273 = !{ptr @esp_advance_dma._entry.144, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @esp_advance_dma._entry_ptr.146, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.147, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/scsi/esp_scsi.c", i32 1624, i32 3}
!277 = !{ptr @.str.148, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @esp_msgin_process._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @esp_msgin_process._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.149, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/esp_scsi.c", i32 1606, i32 2}
!282 = !{ptr @.str.150, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @esp_msgin_extended._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @esp_msgin_extended._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.151, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/esp_scsi.c", i32 1485, i32 2}
!287 = !{ptr @.str.152, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @esp_msgin_reject._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @esp_msgin_reject._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.153, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/esp_scsi.c", i32 2364, i32 2}
!292 = !{ptr @.str.154, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/esp_scsi.c", i32 2365, i32 2}
!294 = !{ptr @.str.155, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/esp_scsi.c", i32 2366, i32 2}
!296 = !{ptr @.str.156, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/esp_scsi.c", i32 2367, i32 2}
!298 = !{ptr @.str.157, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/esp_scsi.c", i32 2368, i32 2}
!300 = !{ptr @.str.158, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/esp_scsi.c", i32 2369, i32 2}
!302 = !{ptr @.str.159, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/esp_scsi.c", i32 2370, i32 2}
!304 = !{ptr @.str.160, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/esp_scsi.c", i32 2371, i32 2}
!306 = !{ptr @.str.161, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/esp_scsi.c", i32 2372, i32 2}
!308 = !{ptr @esp_chip_names, !309, !"esp_chip_names", i1 false, i1 false}
!309 = !{!"../drivers/scsi/esp_scsi.c", i32 2363, i32 20}
!310 = !{ptr @esp_bus_reset_settle, !311, !"esp_bus_reset_settle", i1 false, i1 false}
!311 = !{!"../drivers/scsi/esp_scsi.c", i32 39, i32 12}
!312 = !{ptr @.str.162, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/esp_scsi.c", i32 2501, i32 2}
!314 = !{ptr @.str.163, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @esp_eh_abort_handler._entry, !313, !"_entry", i1 false, i1 false}
!316 = !{ptr @esp_eh_abort_handler._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.165, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/scsi/esp_scsi.c", i32 2505, i32 3}
!319 = !{ptr @esp_eh_abort_handler._entry.164, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @esp_eh_abort_handler._entry_ptr.166, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.168, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/scsi/esp_scsi.c", i32 2509, i32 3}
!323 = !{ptr @esp_eh_abort_handler._entry.167, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @esp_eh_abort_handler._entry_ptr.169, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.171, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/scsi/esp_scsi.c", i32 2513, i32 3}
!327 = !{ptr @esp_eh_abort_handler._entry.170, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @esp_eh_abort_handler._entry_ptr.172, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @init_completion.__key, !330, !"__key", i1 false, i1 false}
!330 = !{!"../include/linux/completion.h", i32 87, i32 2}
!331 = !{ptr @.str.173, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @__param_str_esp_bus_reset_settle, !48, !"__param_str_esp_bus_reset_settle", i1 false, i1 false}
!333 = !{ptr @__param_str_esp_debug, !53, !"__param_str_esp_debug", i1 false, i1 false}
!334 = !{ptr @esp_transport_ops, !335, !"esp_transport_ops", i1 false, i1 false}
!335 = !{!"../drivers/scsi/esp_scsi.c", i32 2730, i32 37}
!336 = !{i32 1, !"wchar_size", i32 2}
!337 = !{i32 1, !"min_enum_size", i32 4}
!338 = !{i32 8, !"branch-target-enforcement", i32 0}
!339 = !{i32 8, !"sign-return-address", i32 0}
!340 = !{i32 8, !"sign-return-address-all", i32 0}
!341 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!342 = !{i32 7, !"uwtable", i32 1}
!343 = !{i32 7, !"frame-pointer", i32 2}
!344 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!345 = !{!"branch_weights", i32 2000, i32 1}
!346 = !{i64 2154730940, i64 2154731429, i64 2154730977, i64 2154731033, i64 2154731067, i64 2154731091, i64 2154731132, i64 2154731153, i64 2154731181, i64 2154731215}
!347 = !{i32 0, i32 33}
!348 = !{!"branch_weights", i32 1, i32 2000}
!349 = !{i64 2154687377, i64 2154687865, i64 2154687414, i64 2154687470, i64 2154687504, i64 2154687528, i64 2154687569, i64 2154687590, i64 2154687618, i64 2154687652}
!350 = !{i64 2154689007, i64 2154689495, i64 2154689044, i64 2154689100, i64 2154689134, i64 2154689158, i64 2154689199, i64 2154689220, i64 2154689248, i64 2154689282}
!351 = !{i64 2154785232, i64 2154785721, i64 2154785269, i64 2154785325, i64 2154785359, i64 2154785383, i64 2154785424, i64 2154785445, i64 2154785473, i64 2154785507}
!352 = !{i64 2154773981, i64 2154774470, i64 2154774018, i64 2154774074, i64 2154774108, i64 2154774132, i64 2154774173, i64 2154774194, i64 2154774222, i64 2154774256}
!353 = !{i64 2154685729, i64 2154686217, i64 2154685766, i64 2154685822, i64 2154685856, i64 2154685880, i64 2154685921, i64 2154685942, i64 2154685970, i64 2154686004}
!354 = !{i64 2153697820, i64 2153698312, i64 2153697857, i64 2153697913, i64 2153697947, i64 2153697971, i64 2153698012, i64 2153698033, i64 2153698061, i64 2153698095}
