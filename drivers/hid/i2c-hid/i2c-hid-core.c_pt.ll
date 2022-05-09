; ModuleID = '/llk/IR_all_yes/drivers/hid/i2c-hid/i2c-hid-core.c_pt.bc'
source_filename = "../drivers/hid/i2c-hid/i2c-hid-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+i2c_hid_ll_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_hid_ll_driver\09\09\09\09"
module asm "\09.long\09__crc_i2c_hid_ll_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_hid_ll_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_hid_ll_driver\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_hid_ll_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+i2c_hid_core_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_hid_core_probe\09\09\09\09"
module asm "\09.long\09__crc_i2c_hid_core_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_hid_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_hid_core_probe\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_hid_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+i2c_hid_core_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_hid_core_remove\09\09\09\09"
module asm "\09.long\09__crc_i2c_hid_core_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_hid_core_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_hid_core_remove\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_hid_core_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+i2c_hid_core_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_hid_core_shutdown\09\09\09\09"
module asm "\09.long\09__crc_i2c_hid_core_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_hid_core_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_hid_core_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_hid_core_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+i2c_hid_core_pm\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_hid_core_pm\09\09\09\09"
module asm "\09.long\09__crc_i2c_hid_core_pm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_hid_core_pm:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_hid_core_pm\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_hid_core_pm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_hid_cmd = type { i32, i8, i32, i8 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.i2c_hid = type { ptr, ptr, %union.anon.85, i16, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.wait_queue_head, i8, %struct.mutex, ptr }
%union.anon.85 = type { [30 x i8] }
%struct.i2chid_ops = type { ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cmd = type { i16, i8, i8 }

@__param_str_debug = internal constant [14 x i8] c"i2c_hid.debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype288 = internal constant [28 x i8] c"i2c_hid.parmtype=debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_debug289 = internal constant [52 x i8] c"i2c_hid.parm=debug:print a lot of debug information\00", section ".modinfo", align 1
@i2c_hid_ll_driver = dso_local global { %struct.hid_ll_driver, [48 x i8] } { %struct.hid_ll_driver { ptr @i2c_hid_start, ptr @i2c_hid_stop, ptr @i2c_hid_open, ptr @i2c_hid_close, ptr null, ptr @i2c_hid_parse, ptr null, ptr null, ptr @i2c_hid_raw_request, ptr @i2c_hid_output_report, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_i2c_hid_ll_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_hid_ll_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_hid_ll_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_hid_ll_driver to i32), ptr @__kstrtab_i2c_hid_ll_driver, ptr @__kstrtabns_i2c_hid_ll_driver }, section "___ksymtab_gpl+i2c_hid_ll_driver", align 4
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@i2c_hid_core_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: HID probe called for i2c 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c_hid_core_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/hid/i2c-hid/i2c-hid-core.c\00", [61 x i8] zeroinitializer }, align 32
@i2c_hid_core_probe._entry_ptr = internal global ptr @i2c_hid_core_probe._entry, section ".printk_index", align 4
@i2c_hid_core_probe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 928, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"HID over i2c has not been provided an Int IRQ\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_hid_core_probe._entry_ptr.7 = internal global ptr @i2c_hid_core_probe._entry.3, section ".printk_index", align 4
@i2c_hid_core_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 935, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"HID over i2c doesn't have a valid IRQ\0A\00", [57 x i8] zeroinitializer }, align 32
@i2c_hid_core_probe._entry_ptr.10 = internal global ptr @i2c_hid_core_probe._entry.8, section ".printk_index", align 4
@i2c_hid_core_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ihid->wait\00", [20 x i8] zeroinitializer }, align 32
@i2c_hid_core_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ihid->reset_lock\00", [46 x i8] zeroinitializer }, align 32
@i2c_hid_core_probe.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 0, i8 -14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_hid\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nothing at this address: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@i2c_hid_core_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 978, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to fetch the HID Descriptor\0A\00", [60 x i8] zeroinitializer }, align 32
@i2c_hid_core_probe._entry_ptr.18 = internal global ptr @i2c_hid_core_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s %04X:%04X\00", [19 x i8] zeroinitializer }, align 32
@i2c_hid_core_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 1011, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't add hid device: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@i2c_hid_core_probe._entry_ptr.22 = internal global ptr @i2c_hid_core_probe._entry.20, section ".printk_index", align 4
@__kstrtab_i2c_hid_core_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_hid_core_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_hid_core_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_hid_core_probe to i32), ptr @__kstrtab_i2c_hid_core_probe, ptr @__kstrtabns_i2c_hid_core_probe }, section "___ksymtab_gpl+i2c_hid_core_probe", align 4
@__kstrtab_i2c_hid_core_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_hid_core_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_hid_core_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_hid_core_remove to i32), ptr @__kstrtab_i2c_hid_core_remove, ptr @__kstrtabns_i2c_hid_core_remove }, section "___ksymtab_gpl+i2c_hid_core_remove", align 4
@__kstrtab_i2c_hid_core_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_hid_core_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_hid_core_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_hid_core_shutdown to i32), ptr @__kstrtab_i2c_hid_core_shutdown, ptr @__kstrtabns_i2c_hid_core_shutdown }, section "___ksymtab_gpl+i2c_hid_core_shutdown", align 4
@i2c_hid_core_pm = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @i2c_hid_core_suspend, ptr @i2c_hid_core_resume, ptr @i2c_hid_core_suspend, ptr @i2c_hid_core_resume, ptr @i2c_hid_core_suspend, ptr @i2c_hid_core_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_i2c_hid_core_pm = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_hid_core_pm = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_hid_core_pm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_hid_core_pm to i32), ptr @__kstrtab_i2c_hid_core_pm, ptr @__kstrtabns_i2c_hid_core_pm }, section "___ksymtab_gpl+i2c_hid_core_pm", align 4
@__UNIQUE_ID_description298 = internal constant [45 x i8] c"i2c_hid.description=HID over I2C core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [65 x i8] c"i2c_hid.author=Benjamin Tissoires <benjamin.tissoires@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [41 x i8] c"i2c_hid.file=drivers/hid/i2c-hid/i2c-hid\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [20 x i8] c"i2c_hid.license=GPL\00", section ".modinfo", align 1
@i2c_hid_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 709, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"entering %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_hid_parse\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@i2c_hid_parse._entry_ptr = internal global ptr @i2c_hid_parse._entry, section ".printk_index", align 4
@i2c_hid_parse._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.2, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: weird size of report descriptor (%u)\0A\00", [52 x i8] zeroinitializer }, align 32
@i2c_hid_parse._entry_ptr.28 = internal global ptr @i2c_hid_parse._entry.26, section ".printk_index", align 4
@i2c_hid_parse._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.24, ptr @.str.2, i32 731, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Using a HID report descriptor override\0A\00", [56 x i8] zeroinitializer }, align 32
@i2c_hid_parse._entry_ptr.31 = internal global ptr @i2c_hid_parse._entry.29, section ".printk_index", align 4
@i2c_hid_parse._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.24, ptr @.str.2, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: couldn't allocate rdesc memory\0A\00", [58 x i8] zeroinitializer }, align 32
@i2c_hid_parse._entry_ptr.34 = internal global ptr @i2c_hid_parse._entry.32, section ".printk_index", align 4
@i2c_hid_parse._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.24, ptr @.str.2, i32 740, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"asking HID report descriptor\0A\00", [34 x i8] zeroinitializer }, align 32
@i2c_hid_parse._entry_ptr.37 = internal global ptr @i2c_hid_parse._entry.35, section ".printk_index", align 4
@hid_report_descr_cmd = internal constant { %struct.i2c_hid_cmd, [16 x i8] } { %struct.i2c_hid_cmd { i32 6, i8 0, i32 2, i8 0 }, [16 x i8] zeroinitializer }, align 32
@i2c_hid_parse._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.24, ptr @.str.2, i32 745, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reading report descriptor failed\0A\00", [62 x i8] zeroinitializer }, align 32
@i2c_hid_parse._entry_ptr.40 = internal global ptr @i2c_hid_parse._entry.38, section ".printk_index", align 4
@i2c_hid_parse._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.24, ptr @.str.2, i32 751, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Report Descriptor: %*ph\0A\00", [39 x i8] zeroinitializer }, align 32
@i2c_hid_parse._entry_ptr.43 = internal global ptr @i2c_hid_parse._entry.41, section ".printk_index", align 4
@i2c_hid_parse._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.24, ptr @.str.2, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: parsing report descriptor failed\0A\00", [56 x i8] zeroinitializer }, align 32
@i2c_hid_parse._entry_ptr.46 = internal global ptr @i2c_hid_parse._entry.44, section ".printk_index", align 4
@i2c_hid_hwreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 446, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c_hid_hwreset\00", [16 x i8] zeroinitializer }, align 32
@i2c_hid_hwreset._entry_ptr = internal global ptr @i2c_hid_hwreset._entry, section ".printk_index", align 4
@i2c_hid_hwreset._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 459, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"resetting...\0A\00", [18 x i8] zeroinitializer }, align 32
@i2c_hid_hwreset._entry_ptr.51 = internal global ptr @i2c_hid_hwreset._entry.49, section ".printk_index", align 4
@hid_reset_cmd = internal constant { %struct.i2c_hid_cmd, [16 x i8] } { %struct.i2c_hid_cmd { i32 16, i8 1, i32 4, i8 1 }, [16 x i8] zeroinitializer }, align 32
@i2c_hid_hwreset._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 463, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to reset device.\0A\00", [39 x i8] zeroinitializer }, align 32
@i2c_hid_hwreset._entry_ptr.54 = internal global ptr @i2c_hid_hwreset._entry.52, section ".printk_index", align 4
@hid_descr_cmd = internal constant { %struct.i2c_hid_cmd, [16 x i8] } { %struct.i2c_hid_cmd { i32 0, i8 0, i32 2, i8 0 }, [16 x i8] zeroinitializer }, align 32
@__i2c_hid_command._entry = internal constant %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 241, ptr @.str.25, ptr @.str.6 }, align 1
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: cmd=%*ph\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__i2c_hid_command\00", [46 x i8] zeroinitializer }, align 32
@__i2c_hid_command._entry_ptr = internal global ptr @__i2c_hid_command._entry, section ".printk_index", align 4
@__i2c_hid_command._entry.57 = internal constant %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 273, ptr @.str.25, ptr @.str.6 }, align 1
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: waiting...\0A\00", [16 x i8] zeroinitializer }, align 32
@__i2c_hid_command._entry_ptr.59 = internal global ptr @__i2c_hid_command._entry.57, section ".printk_index", align 4
@__i2c_hid_command._entry.60 = internal constant %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 278, ptr @.str.25, ptr @.str.6 }, align 1
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: finished.\0A\00", [17 x i8] zeroinitializer }, align 32
@__i2c_hid_command._entry_ptr.62 = internal global ptr @__i2c_hid_command._entry.60, section ".printk_index", align 4
@i2c_hid_get_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.63, ptr @.str.2, i32 301, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c_hid_get_report\00", [45 x i8] zeroinitializer }, align 32
@i2c_hid_get_report._entry_ptr = internal global ptr @i2c_hid_get_report._entry, section ".printk_index", align 4
@hid_get_report_cmd = internal constant { %struct.i2c_hid_cmd, [16 x i8] } { %struct.i2c_hid_cmd { i32 16, i8 2, i32 4, i8 0 }, [16 x i8] zeroinitializer }, align 32
@i2c_hid_get_report._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 315, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to retrieve report from device.\0A\00", [56 x i8] zeroinitializer }, align 32
@i2c_hid_get_report._entry_ptr.66 = internal global ptr @i2c_hid_get_report._entry.64, section ".printk_index", align 4
@i2c_hid_set_or_send_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.67, ptr @.str.2, i32 345, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i2c_hid_set_or_send_report\00", [37 x i8] zeroinitializer }, align 32
@i2c_hid_set_or_send_report._entry_ptr = internal global ptr @i2c_hid_set_or_send_report._entry, section ".printk_index", align 4
@hid_set_report_cmd = internal constant { %struct.i2c_hid_cmd, [16 x i8] } { %struct.i2c_hid_cmd { i32 16, i8 3, i32 4, i8 0 }, [16 x i8] zeroinitializer }, align 32
@hid_no_cmd = internal constant { %struct.i2c_hid_cmd, [16 x i8] } zeroinitializer, align 32
@i2c_hid_set_or_send_report._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 390, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set a report to device.\0A\00", [61 x i8] zeroinitializer }, align 32
@i2c_hid_set_or_send_report._entry_ptr.70 = internal global ptr @i2c_hid_set_or_send_report._entry.68, section ".printk_index", align 4
@i2c_hid_fetch_hid_descriptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 857, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Using a HID descriptor override\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"i2c_hid_fetch_hid_descriptor\00", [35 x i8] zeroinitializer }, align 32
@i2c_hid_fetch_hid_descriptor._entry_ptr = internal global ptr @i2c_hid_fetch_hid_descriptor._entry, section ".printk_index", align 4
@i2c_hid_fetch_hid_descriptor._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 861, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Fetching the HID descriptor\0A\00", [35 x i8] zeroinitializer }, align 32
@i2c_hid_fetch_hid_descriptor._entry_ptr.75 = internal global ptr @i2c_hid_fetch_hid_descriptor._entry.73, section ".printk_index", align 4
@i2c_hid_fetch_hid_descriptor._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.2, i32 866, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hid_descr_cmd failed\0A\00", [42 x i8] zeroinitializer }, align 32
@i2c_hid_fetch_hid_descriptor._entry_ptr.78 = internal global ptr @i2c_hid_fetch_hid_descriptor._entry.76, section ".printk_index", align 4
@i2c_hid_fetch_hid_descriptor._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.72, ptr @.str.2, i32 878, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unexpected HID descriptor bcdVersion (0x%04hx)\0A\00", [48 x i8] zeroinitializer }, align 32
@i2c_hid_fetch_hid_descriptor._entry_ptr.81 = internal global ptr @i2c_hid_fetch_hid_descriptor._entry.79, section ".printk_index", align 4
@i2c_hid_fetch_hid_descriptor._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.72, ptr @.str.2, i32 886, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"weird size of HID descriptor (%u)\0A\00", [61 x i8] zeroinitializer }, align 32
@i2c_hid_fetch_hid_descriptor._entry_ptr.84 = internal global ptr @i2c_hid_fetch_hid_descriptor._entry.82, section ".printk_index", align 4
@i2c_hid_fetch_hid_descriptor._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.72, ptr @.str.2, i32 889, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HID Descriptor: %*ph\0A\00", [42 x i8] zeroinitializer }, align 32
@i2c_hid_fetch_hid_descriptor._entry_ptr.87 = internal global ptr @i2c_hid_fetch_hid_descriptor._entry.85, section ".printk_index", align 4
@i2c_hid_init_irq.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 0, i8 -49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c_hid_init_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Requesting IRQ: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@i2c_hid_init_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 840, ptr @.str.91, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Could not register for %s interrupt, irq = %d, ret = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@i2c_hid_init_irq._entry_ptr = internal global ptr @i2c_hid_init_irq._entry, section ".printk_index", align 4
@i2c_hid_get_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 492, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: got %d data instead of %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c_hid_get_input\00", [46 x i8] zeroinitializer }, align 32
@i2c_hid_get_input._entry_ptr = internal global ptr @i2c_hid_get_input._entry, section ".printk_index", align 4
@i2c_hid_get_input.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@i2c_hid_get_input._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 507, ptr @.str.91, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: IRQ triggered but there's no data\0A\00", [57 x i8] zeroinitializer }, align 32
@i2c_hid_get_input._entry_ptr.96 = internal global ptr @i2c_hid_get_input._entry.94, section ".printk_index", align 4
@i2c_hid_get_input._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.2, i32 518, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: incomplete report (%d/%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@i2c_hid_get_input._entry_ptr.99 = internal global ptr @i2c_hid_get_input._entry.97, section ".printk_index", align 4
@i2c_hid_get_input._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.93, ptr @.str.2, i32 523, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"input: %*ph\0A\00", [19 x i8] zeroinitializer }, align 32
@i2c_hid_get_input._entry_ptr.102 = internal global ptr @i2c_hid_get_input._entry.100, section ".printk_index", align 4
@i2c_hid_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.103, ptr @.str.2, i32 402, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c_hid_set_power\00", [46 x i8] zeroinitializer }, align 32
@i2c_hid_set_power._entry_ptr = internal global ptr @i2c_hid_set_power._entry, section ".printk_index", align 4
@hid_set_power_cmd = internal constant { %struct.i2c_hid_cmd, [16 x i8] } { %struct.i2c_hid_cmd { i32 16, i8 8, i32 4, i8 0 }, [16 x i8] zeroinitializer }, align 32
@i2c_hid_set_power._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 422, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to change power setting.\0A\00", [63 x i8] zeroinitializer }, align 32
@i2c_hid_set_power._entry_ptr.106 = internal global ptr @i2c_hid_set_power._entry.104, section ".printk_index", align 4
@i2c_hid_core_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 1086, ptr @.str.91, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable irq wake: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c_hid_core_suspend\00", [43 x i8] zeroinitializer }, align 32
@i2c_hid_core_suspend._entry_ptr = internal global ptr @i2c_hid_core_suspend._entry, section ".printk_index", align 4
@i2c_hid_core_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 1110, ptr @.str.91, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to disable irq wake: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c_hid_core_resume\00", [44 x i8] zeroinitializer }, align 32
@i2c_hid_core_resume._entry_ptr = internal global ptr @i2c_hid_core_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.112 = internal global [10 x i64] [i64 8, i64 16, i64 1102, i64 1165, i64 1267, i64 1739, i64 2321, i64 4156, i64 9094, i64 9589]
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 60, i32 13 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"i2c_hid_ll_driver\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 812, i32 22 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 924, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 927, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 934, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 955, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 956, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 970, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 977, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1002, i32 41 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1011, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant [16 x i8] c"i2c_hid_core_pm\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1135, i32 25 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 709, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 713, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 731, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 736, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 740, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [21 x i8] c"hid_report_descr_cmd\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 110, i32 33 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 745, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 751, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 758, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 446, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 459, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [14 x i8] c"hid_reset_cmd\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 116, i32 33 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 463, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [14 x i8] c"hid_descr_cmd\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 108, i32 33 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 241, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 273, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 278, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 301, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [19 x i8] c"hid_get_report_cmd\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 118, i32 33 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 314, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 345, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [19 x i8] c"hid_set_report_cmd\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 119, i32 33 }
@___asan_gen_.305 = private unnamed_addr constant [11 x i8] c"hid_no_cmd\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 121, i32 33 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 390, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 857, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 861, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 866, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 876, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 885, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 889, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 829, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 837, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 491, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 506, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 517, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 523, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 402, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [18 x i8] c"hid_set_power_cmd\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 120, i32 33 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 422, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1085, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.425 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.426 = private constant [38 x i8] c"../drivers/hid/i2c-hid/i2c-hid-core.c\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1109, i32 4 }
@llvm.compiler.used = appending global [158 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_debug289, ptr @__UNIQUE_ID_debugtype288, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__i2c_hid_command._entry, ptr @__i2c_hid_command._entry.57, ptr @__i2c_hid_command._entry.60, ptr @__i2c_hid_command._entry_ptr, ptr @__i2c_hid_command._entry_ptr.59, ptr @__i2c_hid_command._entry_ptr.62, ptr @__ksymtab_i2c_hid_core_pm, ptr @__ksymtab_i2c_hid_core_probe, ptr @__ksymtab_i2c_hid_core_remove, ptr @__ksymtab_i2c_hid_core_shutdown, ptr @__ksymtab_i2c_hid_ll_driver, ptr @__param_debug, ptr @i2c_hid_core_probe._entry, ptr @i2c_hid_core_probe._entry.16, ptr @i2c_hid_core_probe._entry.20, ptr @i2c_hid_core_probe._entry.3, ptr @i2c_hid_core_probe._entry.8, ptr @i2c_hid_core_probe._entry_ptr, ptr @i2c_hid_core_probe._entry_ptr.10, ptr @i2c_hid_core_probe._entry_ptr.18, ptr @i2c_hid_core_probe._entry_ptr.22, ptr @i2c_hid_core_probe._entry_ptr.7, ptr @i2c_hid_core_resume._entry, ptr @i2c_hid_core_resume._entry_ptr, ptr @i2c_hid_core_suspend._entry, ptr @i2c_hid_core_suspend._entry_ptr, ptr @i2c_hid_fetch_hid_descriptor._entry, ptr @i2c_hid_fetch_hid_descriptor._entry.73, ptr @i2c_hid_fetch_hid_descriptor._entry.76, ptr @i2c_hid_fetch_hid_descriptor._entry.79, ptr @i2c_hid_fetch_hid_descriptor._entry.82, ptr @i2c_hid_fetch_hid_descriptor._entry.85, ptr @i2c_hid_fetch_hid_descriptor._entry_ptr, ptr @i2c_hid_fetch_hid_descriptor._entry_ptr.75, ptr @i2c_hid_fetch_hid_descriptor._entry_ptr.78, ptr @i2c_hid_fetch_hid_descriptor._entry_ptr.81, ptr @i2c_hid_fetch_hid_descriptor._entry_ptr.84, ptr @i2c_hid_fetch_hid_descriptor._entry_ptr.87, ptr @i2c_hid_get_input._entry, ptr @i2c_hid_get_input._entry.100, ptr @i2c_hid_get_input._entry.94, ptr @i2c_hid_get_input._entry.97, ptr @i2c_hid_get_input._entry_ptr, ptr @i2c_hid_get_input._entry_ptr.102, ptr @i2c_hid_get_input._entry_ptr.96, ptr @i2c_hid_get_input._entry_ptr.99, ptr @i2c_hid_get_report._entry, ptr @i2c_hid_get_report._entry.64, ptr @i2c_hid_get_report._entry_ptr, ptr @i2c_hid_get_report._entry_ptr.66, ptr @i2c_hid_hwreset._entry, ptr @i2c_hid_hwreset._entry.49, ptr @i2c_hid_hwreset._entry.52, ptr @i2c_hid_hwreset._entry_ptr, ptr @i2c_hid_hwreset._entry_ptr.51, ptr @i2c_hid_hwreset._entry_ptr.54, ptr @i2c_hid_init_irq._entry, ptr @i2c_hid_init_irq._entry_ptr, ptr @i2c_hid_parse._entry, ptr @i2c_hid_parse._entry.26, ptr @i2c_hid_parse._entry.29, ptr @i2c_hid_parse._entry.32, ptr @i2c_hid_parse._entry.35, ptr @i2c_hid_parse._entry.38, ptr @i2c_hid_parse._entry.41, ptr @i2c_hid_parse._entry.44, ptr @i2c_hid_parse._entry_ptr, ptr @i2c_hid_parse._entry_ptr.28, ptr @i2c_hid_parse._entry_ptr.31, ptr @i2c_hid_parse._entry_ptr.34, ptr @i2c_hid_parse._entry_ptr.37, ptr @i2c_hid_parse._entry_ptr.40, ptr @i2c_hid_parse._entry_ptr.43, ptr @i2c_hid_parse._entry_ptr.46, ptr @i2c_hid_set_or_send_report._entry, ptr @i2c_hid_set_or_send_report._entry.68, ptr @i2c_hid_set_or_send_report._entry_ptr, ptr @i2c_hid_set_or_send_report._entry_ptr.70, ptr @i2c_hid_set_power._entry, ptr @i2c_hid_set_power._entry.104, ptr @i2c_hid_set_power._entry_ptr, ptr @i2c_hid_set_power._entry_ptr.106, ptr @debug, ptr @i2c_hid_ll_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @i2c_hid_core_probe.__key, ptr @.str.11, ptr @i2c_hid_core_probe.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @i2c_hid_core_pm, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @hid_report_descr_cmd, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @hid_reset_cmd, ptr @.str.53, ptr @hid_descr_cmd, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @hid_get_report_cmd, ptr @.str.65, ptr @.str.67, ptr @hid_set_report_cmd, ptr @hid_no_cmd, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.103, ptr @hid_set_power_cmd, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_ll_driver to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_core_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_core_probe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_core_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_core_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_core_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_core_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_core_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_core_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_parse._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_parse._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_parse._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_parse._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_report_descr_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_parse._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_parse._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_parse._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_hwreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_hwreset._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_reset_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_hwreset._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_descr_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_get_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_get_report_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_get_report._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_set_or_send_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_set_report_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_no_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_set_or_send_report._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_fetch_hid_descriptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_fetch_hid_descriptor._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_fetch_hid_descriptor._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_fetch_hid_descriptor._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_fetch_hid_descriptor._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_fetch_hid_descriptor._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_init_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_get_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_get_input._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_get_input._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_get_input._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_set_power_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_set_power._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_core_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hid_core_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_hid_start(ptr noundef readonly %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %report_list.i = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 0, i32 1
  %4 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %report.016.i = load ptr, ptr %report_list.i, align 4
  %cmp.not17.i = icmp eq ptr %report.016.i, %report_list.i
  br i1 %cmp.not17.i, label %entry.i2c_hid_find_max_report.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.i2c_hid_find_max_report.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_hid_find_max_report.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %bufsize.0 = phi i32 [ %13, %for.body.i.for.body.i_crit_edge ], [ 64, %entry.for.body.i_crit_edge ]
  %report.018.i = phi ptr [ %report.0.i, %for.body.i.for.body.i_crit_edge ], [ %report.016.i, %entry.for.body.i_crit_edge ]
  %size.i.i = getelementptr inbounds %struct.hid_report, ptr %report.018.i, i32 0, i32 7
  %5 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i.i, align 4
  %sub.i.i = add i32 %6, -1
  %shr.i.i = lshr i32 %sub.i.i, 3
  %device.i.i = getelementptr inbounds %struct.hid_report, ptr %report.018.i, i32 0, i32 8
  %7 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.hid_report, ptr %report.018.i, i32 0, i32 3
  %9 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.hid_device, ptr %8, i32 0, i32 15, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add1.i.i = add nuw nsw i32 %shr.i.i, 3
  %add2.i.i = add i32 %add1.i.i, %12
  %13 = tail call i32 @llvm.umax.i32(i32 %bufsize.0, i32 %add2.i.i)
  %14 = ptrtoint ptr %report.018.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %report.0.i = load ptr, ptr %report.018.i, align 4
  %cmp.not.i = icmp eq ptr %report.0.i, %report_list.i
  br i1 %cmp.not.i, label %for.body.i.i2c_hid_find_max_report.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.i2c_hid_find_max_report.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_hid_find_max_report.exit

i2c_hid_find_max_report.exit:                     ; preds = %for.body.i.i2c_hid_find_max_report.exit_crit_edge, %entry.i2c_hid_find_max_report.exit_crit_edge
  %bufsize.2 = phi i32 [ 64, %entry.i2c_hid_find_max_report.exit_crit_edge ], [ %13, %for.body.i.i2c_hid_find_max_report.exit_crit_edge ]
  %report_list.i17 = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 1, i32 1
  %15 = ptrtoint ptr %report_list.i17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %report.016.i18 = load ptr, ptr %report_list.i17, align 4
  %cmp.not17.i19 = icmp eq ptr %report.016.i18, %report_list.i17
  br i1 %cmp.not17.i19, label %i2c_hid_find_max_report.exit.i2c_hid_find_max_report.exit35_crit_edge, label %i2c_hid_find_max_report.exit.for.body.i30_crit_edge

i2c_hid_find_max_report.exit.for.body.i30_crit_edge: ; preds = %i2c_hid_find_max_report.exit
  br label %for.body.i30

i2c_hid_find_max_report.exit.i2c_hid_find_max_report.exit35_crit_edge: ; preds = %i2c_hid_find_max_report.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_hid_find_max_report.exit35

for.body.i30:                                     ; preds = %for.body.i30.for.body.i30_crit_edge, %i2c_hid_find_max_report.exit.for.body.i30_crit_edge
  %bufsize.3 = phi i32 [ %24, %for.body.i30.for.body.i30_crit_edge ], [ %bufsize.2, %i2c_hid_find_max_report.exit.for.body.i30_crit_edge ]
  %report.018.i20 = phi ptr [ %report.0.i32, %for.body.i30.for.body.i30_crit_edge ], [ %report.016.i18, %i2c_hid_find_max_report.exit.for.body.i30_crit_edge ]
  %size.i.i21 = getelementptr inbounds %struct.hid_report, ptr %report.018.i20, i32 0, i32 7
  %16 = ptrtoint ptr %size.i.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i.i21, align 4
  %sub.i.i22 = add i32 %17, -1
  %shr.i.i23 = lshr i32 %sub.i.i22, 3
  %device.i.i24 = getelementptr inbounds %struct.hid_report, ptr %report.018.i20, i32 0, i32 8
  %18 = ptrtoint ptr %device.i.i24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device.i.i24, align 4
  %type.i.i25 = getelementptr inbounds %struct.hid_report, ptr %report.018.i20, i32 0, i32 3
  %20 = ptrtoint ptr %type.i.i25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.i.i25, align 4
  %arrayidx.i.i26 = getelementptr %struct.hid_device, ptr %19, i32 0, i32 15, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i26, align 4
  %add1.i.i27 = add nuw nsw i32 %shr.i.i23, 3
  %add2.i.i28 = add i32 %add1.i.i27, %23
  %24 = tail call i32 @llvm.umax.i32(i32 %bufsize.3, i32 %add2.i.i28)
  %25 = ptrtoint ptr %report.018.i20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %report.0.i32 = load ptr, ptr %report.018.i20, align 4
  %cmp.not.i33 = icmp eq ptr %report.0.i32, %report_list.i17
  br i1 %cmp.not.i33, label %for.body.i30.i2c_hid_find_max_report.exit35_crit_edge, label %for.body.i30.for.body.i30_crit_edge

for.body.i30.for.body.i30_crit_edge:              ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i30

for.body.i30.i2c_hid_find_max_report.exit35_crit_edge: ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_hid_find_max_report.exit35

i2c_hid_find_max_report.exit35:                   ; preds = %for.body.i30.i2c_hid_find_max_report.exit35_crit_edge, %i2c_hid_find_max_report.exit.i2c_hid_find_max_report.exit35_crit_edge
  %bufsize.5 = phi i32 [ %bufsize.2, %i2c_hid_find_max_report.exit.i2c_hid_find_max_report.exit35_crit_edge ], [ %24, %for.body.i30.i2c_hid_find_max_report.exit35_crit_edge ]
  %report_list.i36 = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 2, i32 1
  %26 = ptrtoint ptr %report_list.i36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %report.016.i37 = load ptr, ptr %report_list.i36, align 4
  %cmp.not17.i38 = icmp eq ptr %report.016.i37, %report_list.i36
  br i1 %cmp.not17.i38, label %i2c_hid_find_max_report.exit35.i2c_hid_find_max_report.exit54_crit_edge, label %i2c_hid_find_max_report.exit35.for.body.i49_crit_edge

i2c_hid_find_max_report.exit35.for.body.i49_crit_edge: ; preds = %i2c_hid_find_max_report.exit35
  br label %for.body.i49

i2c_hid_find_max_report.exit35.i2c_hid_find_max_report.exit54_crit_edge: ; preds = %i2c_hid_find_max_report.exit35
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_hid_find_max_report.exit54

for.body.i49:                                     ; preds = %for.body.i49.for.body.i49_crit_edge, %i2c_hid_find_max_report.exit35.for.body.i49_crit_edge
  %bufsize.6 = phi i32 [ %35, %for.body.i49.for.body.i49_crit_edge ], [ %bufsize.5, %i2c_hid_find_max_report.exit35.for.body.i49_crit_edge ]
  %report.018.i39 = phi ptr [ %report.0.i51, %for.body.i49.for.body.i49_crit_edge ], [ %report.016.i37, %i2c_hid_find_max_report.exit35.for.body.i49_crit_edge ]
  %size.i.i40 = getelementptr inbounds %struct.hid_report, ptr %report.018.i39, i32 0, i32 7
  %27 = ptrtoint ptr %size.i.i40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i.i40, align 4
  %sub.i.i41 = add i32 %28, -1
  %shr.i.i42 = lshr i32 %sub.i.i41, 3
  %device.i.i43 = getelementptr inbounds %struct.hid_report, ptr %report.018.i39, i32 0, i32 8
  %29 = ptrtoint ptr %device.i.i43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device.i.i43, align 4
  %type.i.i44 = getelementptr inbounds %struct.hid_report, ptr %report.018.i39, i32 0, i32 3
  %31 = ptrtoint ptr %type.i.i44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type.i.i44, align 4
  %arrayidx.i.i45 = getelementptr %struct.hid_device, ptr %30, i32 0, i32 15, i32 %32
  %33 = ptrtoint ptr %arrayidx.i.i45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i45, align 4
  %add1.i.i46 = add nuw nsw i32 %shr.i.i42, 3
  %add2.i.i47 = add i32 %add1.i.i46, %34
  %35 = tail call i32 @llvm.umax.i32(i32 %bufsize.6, i32 %add2.i.i47)
  %36 = ptrtoint ptr %report.018.i39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %report.0.i51 = load ptr, ptr %report.018.i39, align 4
  %cmp.not.i52 = icmp eq ptr %report.0.i51, %report_list.i36
  br i1 %cmp.not.i52, label %for.body.i49.i2c_hid_find_max_report.exit54_crit_edge, label %for.body.i49.for.body.i49_crit_edge

for.body.i49.for.body.i49_crit_edge:              ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i49

for.body.i49.i2c_hid_find_max_report.exit54_crit_edge: ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_hid_find_max_report.exit54

i2c_hid_find_max_report.exit54:                   ; preds = %for.body.i49.i2c_hid_find_max_report.exit54_crit_edge, %i2c_hid_find_max_report.exit35.i2c_hid_find_max_report.exit54_crit_edge
  %bufsize.8 = phi i32 [ %bufsize.5, %i2c_hid_find_max_report.exit35.i2c_hid_find_max_report.exit54_crit_edge ], [ %35, %for.body.i49.i2c_hid_find_max_report.exit54_crit_edge ]
  %bufsize1 = getelementptr inbounds %struct.i2c_hid, ptr %3, i32 0, i32 4
  %37 = ptrtoint ptr %bufsize1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bufsize1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bufsize.8, i32 %38)
  %cmp = icmp ugt i32 %bufsize.8, %38
  br i1 %cmp, label %if.then, label %i2c_hid_find_max_report.exit54.if.end5_crit_edge

i2c_hid_find_max_report.exit54.if.end5_crit_edge: ; preds = %i2c_hid_find_max_report.exit54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %i2c_hid_find_max_report.exit54
  %irq = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %40) #10
  %inbuf.i = getelementptr inbounds %struct.i2c_hid, ptr %3, i32 0, i32 5
  %41 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %inbuf.i, align 4
  tail call void @kfree(ptr noundef %42) #10
  %rawbuf.i = getelementptr inbounds %struct.i2c_hid, ptr %3, i32 0, i32 6
  %43 = ptrtoint ptr %rawbuf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rawbuf.i, align 4
  tail call void @kfree(ptr noundef %44) #10
  %argsbuf.i = getelementptr inbounds %struct.i2c_hid, ptr %3, i32 0, i32 8
  %45 = ptrtoint ptr %argsbuf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %argsbuf.i, align 4
  tail call void @kfree(ptr noundef %46) #10
  %cmdbuf.i = getelementptr inbounds %struct.i2c_hid, ptr %3, i32 0, i32 7
  %47 = ptrtoint ptr %cmdbuf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cmdbuf.i, align 4
  tail call void @kfree(ptr noundef %48) #10
  %49 = call ptr @memset(ptr %bufsize1, i32 0, i32 20)
  %call2 = tail call fastcc i32 @i2c_hid_alloc_buffers(ptr noundef %3, i32 noundef %bufsize.8)
  %50 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %i2c_hid_find_max_report.exit54.if.end5_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @i2c_hid_stop(ptr nocapture noundef writeonly %hid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %claimed = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 33
  %0 = ptrtoint ptr %claimed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %claimed, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_hid_open(ptr nocapture noundef readonly %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.i2c_hid, ptr %3, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_hid_close(ptr nocapture noundef readonly %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.i2c_hid, ptr %3, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_hid_parse(ptr noundef %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %wReportDescLength = getelementptr inbounds %struct.i2c_hid, ptr %3, i32 0, i32 2, i32 0, i32 4
  %7 = ptrtoint ptr %wReportDescLength to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %wReportDescLength, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool5.not = icmp eq i16 %8, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %9)
  %cmp = icmp ugt i16 %9, 4096
  %or.cond = select i1 %tobool5.not, i1 true, i1 %cmp
  br i1 %or.cond, label %do.body8, label %do.body19.preheader

do.body19.preheader:                              ; preds = %do.end4
  %call20153 = tail call fastcc i32 @i2c_hid_hwreset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20153)
  %tobool21.not154 = icmp eq i32 %call20153, 0
  br i1 %tobool21.not154, label %do.body19.preheader.if.end8.i.i_crit_edge, label %do.cond24.thread

do.body19.preheader.if.end8.i.i_crit_edge:        ; preds = %do.body19.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

do.body8:                                         ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %10 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %do.body8.cleanup_crit_edge, label %do.end13

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end13:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2, i32 noundef %conv) #13
  br label %cleanup

do.cond24.thread.1:                               ; preds = %do.cond24.thread
  tail call void @msleep(i32 noundef 1000) #10
  %call20.1 = tail call fastcc i32 @i2c_hid_hwreset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.1)
  %tobool21.not.1 = icmp eq i32 %call20.1, 0
  br i1 %tobool21.not.1, label %do.cond24.thread.1.if.end8.i.i_crit_edge, label %do.cond24.thread.2

do.cond24.thread.1.if.end8.i.i_crit_edge:         ; preds = %do.cond24.thread.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

do.cond24.thread.2:                               ; preds = %do.cond24.thread.1
  tail call void @msleep(i32 noundef 1000) #10
  %call20.2 = tail call fastcc i32 @i2c_hid_hwreset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.2)
  %tobool21.not.2 = icmp eq i32 %call20.2, 0
  br i1 %tobool21.not.2, label %do.cond24.thread.2.if.end8.i.i_crit_edge, label %do.cond24.thread.3

do.cond24.thread.2.if.end8.i.i_crit_edge:         ; preds = %do.cond24.thread.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

do.cond24.thread.3:                               ; preds = %do.cond24.thread.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1000) #10
  br label %cleanup

do.cond24.thread:                                 ; preds = %do.body19.preheader
  tail call void @msleep(i32 noundef 1000) #10
  %call20 = tail call fastcc i32 @i2c_hid_hwreset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.cond24.thread.if.end8.i.i_crit_edge, label %do.cond24.thread.1

do.cond24.thread.if.end8.i.i_crit_edge:           ; preds = %do.cond24.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.cond24.thread.if.end8.i.i_crit_edge, %do.cond24.thread.2.if.end8.i.i_crit_edge, %do.cond24.thread.1.if.end8.i.i_crit_edge, %do.body19.preheader.if.end8.i.i_crit_edge
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3520) #14
  %tobool47.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool47.not, label %do.body49, label %do.body61

do.body49:                                        ; preds = %if.end8.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %11 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool50.not = icmp eq i32 %11, 0
  br i1 %tobool50.not, label %do.body49.cleanup_crit_edge, label %do.end54

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end54:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2) #13
  br label %cleanup

do.body61:                                        ; preds = %if.end8.i.i
  %12 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool62.not = icmp eq i8 %12, 0
  br i1 %tobool62.not, label %do.body61.do.end71_crit_edge, label %do.end66

do.body61.do.end71_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end71

do.end66:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %dev68 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev68, ptr noundef nonnull @.str.36) #13
  br label %do.end71

do.end71:                                         ; preds = %do.end66, %do.body61.do.end71_crit_edge
  %call.i = tail call fastcc i32 @__i2c_hid_command(ptr noundef %1, ptr noundef nonnull @hid_report_descr_cmd, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call9.i.i, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool73.not = icmp eq i32 %call.i, 0
  br i1 %tobool73.not, label %do.body81, label %do.end77

do.end77:                                         ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #12
  %dev78 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78, ptr noundef nonnull @.str.39) #13
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

do.body81:                                        ; preds = %do.end71
  %15 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool82.not = icmp eq i8 %15, 0
  br i1 %tobool82.not, label %do.body81.do.end91_crit_edge, label %do.end86

do.body81.do.end91_crit_edge:                     ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

do.end86:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %dev88 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev88, ptr noundef nonnull @.str.42, i32 noundef %conv, ptr noundef nonnull %call9.i.i) #13
  br label %do.end91

do.end91:                                         ; preds = %do.end86, %do.body81.do.end91_crit_edge
  %call92 = tail call i32 @hid_parse_report(ptr noundef %hid, ptr noundef nonnull %call9.i.i, i32 noundef %conv) #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool96.not = icmp eq i32 %call92, 0
  br i1 %tobool96.not, label %do.end91.cleanup_crit_edge, label %do.body98

do.end91.cleanup_crit_edge:                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body98:                                        ; preds = %do.end91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %18 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool99.not = icmp eq i32 %18, 0
  br i1 %tobool99.not, label %do.body98.cleanup_crit_edge, label %do.end103

do.body98.cleanup_crit_edge:                      ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end103:                                        ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #12
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.2) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end103, %do.body98.cleanup_crit_edge, %do.end91.cleanup_crit_edge, %do.end77, %do.end54, %do.body49.cleanup_crit_edge, %do.cond24.thread.3, %do.end13, %do.body8.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end77 ], [ -22, %do.end13 ], [ -22, %do.body8.cleanup_crit_edge ], [ -12, %do.end54 ], [ -12, %do.body49.cleanup_crit_edge ], [ %call92, %do.end103 ], [ %call92, %do.body98.cleanup_crit_edge ], [ 0, %do.end91.cleanup_crit_edge ], [ %call20.2, %do.cond24.thread.3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_hid_raw_request(ptr nocapture noundef readonly %hid, i8 noundef zeroext %reportnum, ptr nocapture noundef %buf, i32 noundef %len, i8 noundef zeroext %rtype, i32 noundef %reqtype) #0 align 64 {
entry:
  %args.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reqtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reqtype, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 9, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rtype)
  %cmp.i = icmp eq i8 %rtype, 1
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %add.i = add i32 %len, 2
  %bufsize.i = getelementptr inbounds %struct.i2c_hid, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bufsize.i, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %6) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rtype)
  %cmp5.i = icmp eq i8 %rtype, 2
  %conv8.i = select i1 %cmp5.i, i8 3, i8 1
  %rawbuf.i = getelementptr inbounds %struct.i2c_hid, ptr %4, i32 0, i32 6
  %8 = ptrtoint ptr %rawbuf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rawbuf.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %args.i.i) #10
  %10 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %args.i.i, align 1, !annotation !237
  %11 = getelementptr inbounds [3 x i8], ptr %args.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %11, align 1, !annotation !237
  %13 = getelementptr inbounds [3 x i8], ptr %args.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %13, align 1, !annotation !237
  %wDataRegister.i.i = getelementptr inbounds %struct.i2c_hid, ptr %4, i32 0, i32 2, i32 0, i32 18
  %15 = ptrtoint ptr %wDataRegister.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %wDataRegister.i.i, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #10
  %18 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %if.end.i.do.end4.i.i_crit_edge, label %do.end.i.i

if.end.i.do.end4.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev.i.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.63) #13
  br label %do.end4.i.i

do.end4.i.i:                                      ; preds = %do.end.i.i, %if.end.i.do.end4.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %reportnum)
  %cmp.i.i = icmp ugt i8 %reportnum, 14
  br i1 %cmp.i.i, label %if.then6.i.i, label %do.end4.i.i.if.end7.i.i_crit_edge

do.end4.i.i.if.end7.i.i_crit_edge:                ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.then6.i.i:                                     ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %reportnum, ptr %args.i.i, align 1
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then6.i.i, %do.end4.i.i.if.end7.i.i_crit_edge
  %reportID.addr.0.i.i = phi i8 [ 15, %if.then6.i.i ], [ %reportnum, %do.end4.i.i.if.end7.i.i_crit_edge ]
  %args_len.0.i.i = phi i32 [ 1, %if.then6.i.i ], [ 0, %do.end4.i.i.if.end7.i.i_crit_edge ]
  %conv9.i.i = trunc i16 %17 to i8
  %inc10.i.i = add nuw nsw i32 %args_len.0.i.i, 1
  %arrayidx11.i.i = getelementptr [3 x i8], ptr %args.i.i, i32 0, i32 %args_len.0.i.i
  %22 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv9.i.i, ptr %arrayidx11.i.i, align 1
  %23 = lshr i16 %17, 8
  %conv13.i.i = trunc i16 %23 to i8
  %inc14.i.i = or i32 %args_len.0.i.i, 2
  %arrayidx15.i.i = getelementptr [3 x i8], ptr %args.i.i, i32 0, i32 %inc10.i.i
  %24 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv13.i.i, ptr %arrayidx15.i.i, align 1
  %call16.i.i = call fastcc i32 @__i2c_hid_command(ptr noundef %2, ptr noundef nonnull @hid_get_report_cmd, i8 noundef zeroext %reportID.addr.0.i.i, i8 noundef zeroext %conv8.i, ptr noundef nonnull %args.i.i, i32 noundef %inc14.i.i, ptr noundef %9, i32 noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %i2c_hid_get_report.exit.thread.i, label %i2c_hid_get_report.exit.i

i2c_hid_get_report.exit.thread.i:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %args.i.i) #10
  br label %if.end13.i

i2c_hid_get_report.exit.i:                        ; preds = %if.end7.i.i
  %dev22.i.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.i.i, ptr noundef nonnull @.str.65) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %args.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp10.i = icmp slt i32 %call16.i.i, 0
  br i1 %cmp10.i, label %i2c_hid_get_report.exit.i.return_crit_edge, label %i2c_hid_get_report.exit.i.if.end13.i_crit_edge

i2c_hid_get_report.exit.i.if.end13.i_crit_edge:   ; preds = %i2c_hid_get_report.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

i2c_hid_get_report.exit.i.return_crit_edge:       ; preds = %i2c_hid_get_report.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end13.i:                                       ; preds = %i2c_hid_get_report.exit.i.if.end13.i_crit_edge, %i2c_hid_get_report.exit.thread.i
  %25 = ptrtoint ptr %rawbuf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rawbuf.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %conv15.i = zext i8 %28 to i32
  %arrayidx17.i = getelementptr i8, ptr %26, i32 1
  %29 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %30 to i32
  %shl.i = shl nuw nsw i32 %conv18.i, 8
  %or.i = or i32 %shl.i, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or.i)
  %cmp19.i = icmp ult i32 %or.i, 3
  br i1 %cmp19.i, label %if.end13.i.return_crit_edge, label %if.end22.i

if.end13.i.return_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end22.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = tail call i32 @llvm.umin.i32(i32 %or.i, i32 %7) #10
  %sub.i = add nsw i32 %31, -2
  %32 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %len) #10
  %add.ptr.i = getelementptr i8, ptr %26, i32 2
  %33 = call ptr @memcpy(ptr %buf, ptr %add.ptr.i, i32 %32)
  br label %return

sw.bb1:                                           ; preds = %entry
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %reportnum)
  %cmp.not = icmp eq i8 %35, %reportnum
  br i1 %cmp.not, label %if.end, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call fastcc i32 @i2c_hid_output_raw_report(ptr noundef %hid, ptr noundef %buf, i32 noundef %len, i8 noundef zeroext %rtype, i1 noundef zeroext true)
  br label %return

return:                                           ; preds = %if.end, %sw.bb1.return_crit_edge, %if.end22.i, %if.end13.i.return_crit_edge, %i2c_hid_get_report.exit.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %sw.bb1.return_crit_edge ], [ -5, %entry.return_crit_edge ], [ %32, %if.end22.i ], [ -22, %sw.bb.return_crit_edge ], [ %call16.i.i, %i2c_hid_get_report.exit.i.return_crit_edge ], [ 0, %if.end13.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_hid_output_report(ptr nocapture noundef readonly %hid, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @i2c_hid_output_raw_report(ptr noundef %hid, ptr noundef %buf, i32 noundef %count, i8 noundef zeroext 1, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_hid_core_probe(ptr noundef %client, ptr noundef %ops, i16 noundef zeroext %hid_descriptor_address, i32 noundef %quirks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %0 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %addr, align 2
  %conv = zext i16 %2 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %conv) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %do.end8, label %if.end9

do.end8:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then12, label %if.end23

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %4)
  %cmp14.not = icmp eq i32 %4, -517
  br i1 %cmp14.not, label %if.then12.if.end21_crit_edge, label %do.end19

if.then12.if.end21_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end19:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.9) #13
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %if.then12.if.end21_crit_edge
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end9
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev24, i32 noundef 220, i32 noundef 3520) #10
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %ops29 = getelementptr inbounds %struct.i2c_hid, ptr %call.i, i32 0, i32 14
  %7 = ptrtoint ptr %ops29 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ops, ptr %ops29, align 4
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end28.if.end33_crit_edge, label %i2c_hid_core_power_up.exit

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

i2c_hid_core_power_up.exit:                       ; preds = %if.end28
  %call.i189 = tail call i32 %9(ptr noundef %ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool31.not = icmp eq i32 %call.i189, 0
  br i1 %tobool31.not, label %i2c_hid_core_power_up.exit.if.end33_crit_edge, label %i2c_hid_core_power_up.exit.cleanup_crit_edge

i2c_hid_core_power_up.exit.cleanup_crit_edge:     ; preds = %i2c_hid_core_power_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

i2c_hid_core_power_up.exit.if.end33_crit_edge:    ; preds = %i2c_hid_core_power_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end33:                                         ; preds = %i2c_hid_core_power_up.exit.if.end33_crit_edge, %if.end28.if.end33_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %client, ptr %call.i, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %hid_descriptor_address)
  %wHIDDescRegister = getelementptr inbounds %struct.i2c_hid, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %wHIDDescRegister to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %wHIDDescRegister, align 2
  %wait = getelementptr inbounds %struct.i2c_hid, ptr %call.i, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.11, ptr noundef nonnull @i2c_hid_core_probe.__key) #10
  %reset_lock = getelementptr inbounds %struct.i2c_hid, ptr %call.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %reset_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @i2c_hid_core_probe.__key.12) #10
  %call41 = tail call fastcc i32 @i2c_hid_alloc_buffers(ptr noundef nonnull %call.i, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end33.err_powered_crit_edge, label %if.end45

if.end33.err_powered_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_powered

if.end45:                                         ; preds = %if.end33
  %is_prepared.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 1
  %14 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %is_prepared.i, align 4
  %15 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %bf.cast.not.i = icmp eq i16 %15, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %if.end45.device_enable_async_suspend.exit_crit_edge

if.end45.device_enable_async_suspend.exit_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_enable_async_suspend.exit

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set.i = or i16 %bf.load.i, 16384
  %16 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %bf.set.i, ptr %is_prepared.i, align 4
  br label %device_enable_async_suspend.exit

device_enable_async_suspend.exit:                 ; preds = %if.then.i, %if.end45.device_enable_async_suspend.exit_crit_edge
  %call47 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.body51, label %if.end62

do.body51:                                        ; preds = %device_enable_async_suspend.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_hid_core_probe.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_hid_core_probe, %if.then57)) #10
          to label %err_powered [label %if.then57], !srcloc !238

if.then57:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_hid_core_probe.__UNIQUE_ID_ddebug297, ptr noundef %dev24, ptr noundef nonnull @.str.15, i32 noundef %call47) #10
  br label %err_powered

if.end62:                                         ; preds = %device_enable_async_suspend.exit
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %19 = getelementptr inbounds %struct.i2c_hid, ptr %call.i, i32 0, i32 2
  %20 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool12.not.i = icmp eq i8 %20, 0
  br i1 %tobool12.not.i, label %if.end62.do.end21.i_crit_edge, label %do.end16.i

if.end62.do.end21.i_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21.i

do.end16.i:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %dev18.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev18.i, ptr noundef nonnull @.str.74) #13
  br label %do.end21.i

do.end21.i:                                       ; preds = %do.end16.i, %if.end62.do.end21.i_crit_edge
  %call.i.i = tail call fastcc i32 @__i2c_hid_command(ptr noundef %18, ptr noundef nonnull @hid_descr_cmd, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef %19, i32 noundef 30) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool24.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool24.not.i, label %if.end31.i, label %do.end28.i

do.end28.i:                                       ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev29.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.77) #13
  br label %do.end69

if.end31.i:                                       ; preds = %do.end21.i
  %bcdVersion.i = getelementptr inbounds %struct.i2c_hid, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %21 = ptrtoint ptr %bcdVersion.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %bcdVersion.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %22)
  %cmp.not.i = icmp eq i16 %22, 1
  br i1 %cmp.not.i, label %if.end40.i, label %do.end36.i

do.end36.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #10
  %conv.i = zext i16 %23 to i32
  %dev37.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37.i, ptr noundef nonnull @.str.80, i32 noundef %conv.i) #13
  br label %do.end69

if.end40.i:                                       ; preds = %if.end31.i
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 7680, i16 %25)
  %cmp42.not.i = icmp eq i16 %25, 7680
  br i1 %cmp42.not.i, label %do.body50.i, label %do.end47.i

do.end47.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #10
  %conv41.i = zext i16 %26 to i32
  %dev48.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48.i, ptr noundef nonnull @.str.83, i32 noundef %conv41.i) #13
  br label %do.end69

do.body50.i:                                      ; preds = %if.end40.i
  %27 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool51.not.i = icmp eq i8 %27, 0
  br i1 %tobool51.not.i, label %do.body50.i.if.end71_crit_edge, label %do.end55.i

do.body50.i.if.end71_crit_edge:                   ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

do.end55.i:                                       ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %dev57.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev57.i, ptr noundef nonnull @.str.86, i32 noundef 30, ptr noundef %19) #13
  br label %if.end71

do.end69:                                         ; preds = %do.end47.i, %do.end36.i, %do.end28.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.17) #13
  br label %err_powered

if.end71:                                         ; preds = %do.end55.i, %do.body50.i.if.end71_crit_edge
  %call72 = tail call fastcc i32 @i2c_hid_init_irq(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.end71.err_powered_crit_edge, label %if.end76

if.end71.err_powered_crit_edge:                   ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_powered

if.end76:                                         ; preds = %if.end71
  %call77 = tail call ptr @hid_allocate_device() #10
  %cmp.i = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %call77 to i32
  br label %err_irq

if.end81:                                         ; preds = %if.end76
  %hid82 = getelementptr inbounds %struct.i2c_hid, ptr %call.i, i32 0, i32 1
  %31 = ptrtoint ptr %hid82 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call77, ptr %hid82, align 4
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %call77, i32 0, i32 42
  %32 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %client, ptr %driver_data, align 8
  %ll_driver = getelementptr inbounds %struct.hid_device, ptr %call77, i32 0, i32 20
  %33 = ptrtoint ptr %ll_driver to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @i2c_hid_ll_driver, ptr %ll_driver, align 4
  %parent = getelementptr inbounds %struct.hid_device, ptr %call77, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dev24, ptr %parent, align 8
  %bus = getelementptr inbounds %struct.hid_device, ptr %call77, i32 0, i32 8
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 24, ptr %bus, align 8
  %36 = ptrtoint ptr %bcdVersion.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %bcdVersion.i, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %conv85 = zext i16 %38 to i32
  %version = getelementptr inbounds %struct.hid_device, ptr %call77, i32 0, i32 12
  %39 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv85, ptr %version, align 4
  %wVendorID = getelementptr inbounds %struct.i2c_hid, ptr %call.i, i32 0, i32 2, i32 0, i32 20
  %40 = ptrtoint ptr %wVendorID to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %wVendorID, align 4
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %conv86 = zext i16 %42 to i32
  %vendor = getelementptr inbounds %struct.hid_device, ptr %call77, i32 0, i32 10
  %43 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv86, ptr %vendor, align 4
  %wProductID = getelementptr inbounds %struct.i2c_hid, ptr %call.i, i32 0, i32 2, i32 0, i32 22
  %44 = ptrtoint ptr %wProductID to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %wProductID, align 2
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %conv87 = zext i16 %46 to i32
  %product = getelementptr inbounds %struct.hid_device, ptr %call77, i32 0, i32 11
  %47 = ptrtoint ptr %product to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv87, ptr %product, align 8
  %name = getelementptr inbounds %struct.hid_device, ptr %call77, i32 0, i32 39
  %name88 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call96 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 128, ptr noundef nonnull @.str.19, ptr noundef %name88, i32 noundef %conv86, i32 noundef %conv87)
  %phys = getelementptr inbounds %struct.hid_device, ptr %call77, i32 0, i32 40
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %48 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i193 = icmp eq ptr %49, null
  br i1 %tobool.not.i193, label %if.end.i194, label %if.end81.dev_name.exit_crit_edge

if.end81.dev_name.exit_crit_edge:                 ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i194:                                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev24, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i194, %if.end81.dev_name.exit_crit_edge
  %retval.0.i195 = phi ptr [ %51, %if.end.i194 ], [ %49, %if.end81.dev_name.exit_crit_edge ]
  %call100 = tail call i32 @strlcpy(ptr noundef %phys, ptr noundef %retval.0.i195, i32 noundef 64) #10
  %52 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vendor, align 4
  %conv102 = trunc i32 %53 to i16
  %54 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %product, align 8
  %conv104 = trunc i32 %55 to i16
  %call105 = tail call fastcc i32 @i2c_hid_lookup_quirk(i16 noundef zeroext %conv102, i16 noundef zeroext %conv104)
  %quirks106 = getelementptr inbounds %struct.i2c_hid, ptr %call.i, i32 0, i32 10
  %56 = ptrtoint ptr %quirks106 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call105, ptr %quirks106, align 4
  %call107 = tail call i32 @hid_add_device(ptr noundef %call77) #10
  %57 = zext i32 %call107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %call107, label %do.end115 [
    i32 0, label %if.end118
    i32 -19, label %dev_name.exit.err_mem_free_crit_edge
  ]

dev_name.exit.err_mem_free_crit_edge:             ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_mem_free

do.end115:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.21, i32 noundef %call107) #13
  br label %err_mem_free

if.end118:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %quirks119 = getelementptr inbounds %struct.hid_device, ptr %call77, i32 0, i32 34
  %58 = ptrtoint ptr %quirks119 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %quirks119, align 8
  %or = or i32 %59, %quirks
  store i32 %or, ptr %quirks119, align 8
  br label %cleanup

err_mem_free:                                     ; preds = %do.end115, %dev_name.exit.err_mem_free_crit_edge
  tail call void @hid_destroy_device(ptr noundef %call77) #10
  br label %err_irq

err_irq:                                          ; preds = %err_mem_free, %if.then79
  %ret.0 = phi i32 [ %30, %if.then79 ], [ %call107, %err_mem_free ]
  %60 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq, align 4
  %call121 = tail call ptr @free_irq(i32 noundef %61, ptr noundef nonnull %call.i) #10
  br label %err_powered

err_powered:                                      ; preds = %err_irq, %if.end71.err_powered_crit_edge, %do.end69, %if.then57, %do.body51, %if.end33.err_powered_crit_edge
  %ret.1 = phi i32 [ %call41, %if.end33.err_powered_crit_edge ], [ -19, %do.end69 ], [ %call72, %if.end71.err_powered_crit_edge ], [ %ret.0, %err_irq ], [ -6, %if.then57 ], [ -6, %do.body51 ]
  %62 = ptrtoint ptr %ops29 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops29, align 4
  %power_down.i = getelementptr inbounds %struct.i2chid_ops, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %power_down.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %power_down.i, align 4
  %tobool.not.i197 = icmp eq ptr %65, null
  br i1 %tobool.not.i197, label %err_powered.i2c_hid_core_power_down.exit_crit_edge, label %if.end.i198

err_powered.i2c_hid_core_power_down.exit_crit_edge: ; preds = %err_powered
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_hid_core_power_down.exit

if.end.i198:                                      ; preds = %err_powered
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %65(ptr noundef %63) #10
  br label %i2c_hid_core_power_down.exit

i2c_hid_core_power_down.exit:                     ; preds = %if.end.i198, %err_powered.i2c_hid_core_power_down.exit_crit_edge
  %inbuf.i = getelementptr inbounds %struct.i2c_hid, ptr %call.i, i32 0, i32 5
  %66 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %inbuf.i, align 4
  tail call void @kfree(ptr noundef %67) #10
  %rawbuf.i = getelementptr inbounds %struct.i2c_hid, ptr %call.i, i32 0, i32 6
  %68 = ptrtoint ptr %rawbuf.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rawbuf.i, align 4
  tail call void @kfree(ptr noundef %69) #10
  %argsbuf.i = getelementptr inbounds %struct.i2c_hid, ptr %call.i, i32 0, i32 8
  %70 = ptrtoint ptr %argsbuf.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %argsbuf.i, align 4
  tail call void @kfree(ptr noundef %71) #10
  %cmdbuf.i = getelementptr inbounds %struct.i2c_hid, ptr %call.i, i32 0, i32 7
  %72 = ptrtoint ptr %cmdbuf.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cmdbuf.i, align 4
  tail call void @kfree(ptr noundef %73) #10
  %bufsize.i = getelementptr inbounds %struct.i2c_hid, ptr %call.i, i32 0, i32 4
  %74 = call ptr @memset(ptr %bufsize.i, i32 0, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %i2c_hid_core_power_down.exit, %if.end118, %i2c_hid_core_power_up.exit.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end21, %do.end8
  %retval.0 = phi i32 [ %6, %if.end21 ], [ %ret.1, %i2c_hid_core_power_down.exit ], [ 0, %if.end118 ], [ -22, %do.end8 ], [ -12, %if.end23.cleanup_crit_edge ], [ %call.i189, %i2c_hid_core_power_up.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_hid_alloc_buffers(ptr nocapture noundef %ihid, i32 noundef %report_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %report_size, 6
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %report_size, i32 noundef 3520) #14
  %inbuf = getelementptr inbounds %struct.i2c_hid, ptr %ihid, i32 0, i32 5
  %0 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9.i.i, ptr %inbuf, align 4
  %call9.i.i52 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %report_size, i32 noundef 3520) #14
  %rawbuf = getelementptr inbounds %struct.i2c_hid, ptr %ihid, i32 0, i32 6
  %1 = ptrtoint ptr %rawbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i.i52, ptr %rawbuf, align 4
  %call9.i.i81 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #14
  %argsbuf = getelementptr inbounds %struct.i2c_hid, ptr %ihid, i32 0, i32 8
  %2 = ptrtoint ptr %argsbuf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i81, ptr %argsbuf, align 4
  %add3 = add i32 %report_size, 10
  %call9.i.i110 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add3, i32 noundef 3520) #14
  %cmdbuf = getelementptr inbounds %struct.i2c_hid, ptr %ihid, i32 0, i32 7
  %3 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i110, ptr %cmdbuf, align 4
  %4 = ptrtoint ptr %inbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inbuf, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %rawbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rawbuf, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false8

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %argsbuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %argsbuf, align 4
  %tobool10.not = icmp eq ptr %9, null
  %tobool13.not = icmp eq ptr %call9.i.i110, null
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %lor.lhs.false8.if.then_crit_edge, label %if.end

lor.lhs.false8.if.then_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false8.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @kfree(ptr noundef %5) #10
  %10 = ptrtoint ptr %rawbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rawbuf, align 4
  tail call void @kfree(ptr noundef %11) #10
  %12 = ptrtoint ptr %argsbuf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %argsbuf, align 4
  tail call void @kfree(ptr noundef %13) #10
  %14 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmdbuf, align 4
  tail call void @kfree(ptr noundef %15) #10
  %bufsize.i = getelementptr inbounds %struct.i2c_hid, ptr %ihid, i32 0, i32 4
  %16 = call ptr @memset(ptr %bufsize.i, i32 0, i32 20)
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #12
  %bufsize = getelementptr inbounds %struct.i2c_hid, ptr %ihid, i32 0, i32 4
  %17 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %report_size, ptr %bufsize, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_hid_init_irq(ptr noundef %client) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_hid_init_irq.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_hid_init_irq, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !238

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_hid_init_irq.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.89, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %4 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq4, align 4
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %5) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.irq_get_trigger_type.exit.thread_crit_edge, label %irq_get_trigger_type.exit

do.end.irq_get_trigger_type.exit.thread_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_get_trigger_type.exit.thread

irq_get_trigger_type.exit:                        ; preds = %do.end
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and.i.i = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not, label %irq_get_trigger_type.exit.irq_get_trigger_type.exit.thread_crit_edge, label %irq_get_trigger_type.exit._crit_edge

irq_get_trigger_type.exit._crit_edge:             ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %10

irq_get_trigger_type.exit.irq_get_trigger_type.exit.thread_crit_edge: ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_get_trigger_type.exit.thread

irq_get_trigger_type.exit.thread:                 ; preds = %irq_get_trigger_type.exit.irq_get_trigger_type.exit.thread_crit_edge, %do.end.irq_get_trigger_type.exit.thread_crit_edge
  br label %10

10:                                               ; preds = %irq_get_trigger_type.exit.thread, %irq_get_trigger_type.exit._crit_edge
  %11 = phi i32 [ 8200, %irq_get_trigger_type.exit.thread ], [ 8192, %irq_get_trigger_type.exit._crit_edge ]
  %12 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq4, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call10 = tail call i32 @request_threaded_irq(i32 noundef %13, ptr noundef null, ptr noundef nonnull @i2c_hid_irq, i32 noundef %11, ptr noundef %name, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end14, label %.cleanup_crit_edge

.cleanup_crit_edge:                               ; preds = %10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end14:                                         ; preds = %10
  call void @__sanitizer_cov_trace_pc() #12
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %14 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.90, ptr noundef %name, i32 noundef %15, i32 noundef %call10) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end14 ], [ 0, %.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_allocate_device() local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_hid_lookup_quirk(i16 noundef zeroext %idVendor, i16 noundef zeroext %idProduct) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %idVendor to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.112)
  switch i16 %idVendor, label %for.inc.7.fold.split63 [
    i16 9589, label %entry.for.inc.7_crit_edge
    i16 2321, label %lor.lhs.false.1
    i16 4156, label %lor.lhs.false.2
    i16 9094, label %lor.lhs.false.3
    i16 1102, label %for.inc.7.fold.split
    i16 1739, label %lor.lhs.false.5
    i16 1165, label %lor.lhs.false.6
    i16 1267, label %if.then.7
  ]

entry.for.inc.7_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

lor.lhs.false.1:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %idProduct)
  %cmp15.1 = icmp eq i16 %idProduct, 21128
  %spec.select = select i1 %cmp15.1, i32 2, i32 0
  br label %for.inc.7

lor.lhs.false.2:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 6223, i16 %idProduct)
  %cmp15.2 = icmp eq i16 %idProduct, 6223
  %spec.select59 = select i1 %cmp15.2, i32 2, i32 0
  br label %for.inc.7

lor.lhs.false.3:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 12568, i16 %idProduct)
  %cmp15.3 = icmp eq i16 %idProduct, 12568
  %spec.select60 = select i1 %cmp15.3, i32 2, i32 0
  br label %for.inc.7

lor.lhs.false.5:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 31251, i16 %idProduct)
  %cmp15.5 = icmp eq i16 %idProduct, 31251
  %spec.select61 = select i1 %cmp15.5, i32 32, i32 0
  br label %for.inc.7

lor.lhs.false.6:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31878, i16 %idProduct)
  %cmp15.6 = icmp eq i16 %idProduct, -31878
  %spec.select62 = select i1 %cmp15.6, i32 64, i32 0
  br label %for.inc.7

if.then.7:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

for.inc.7.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

for.inc.7.fold.split63:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.7.fold.split63, %for.inc.7.fold.split, %if.then.7, %lor.lhs.false.6, %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false.2, %lor.lhs.false.1, %entry.for.inc.7_crit_edge
  %quirks.1.7 = phi i32 [ 144, %if.then.7 ], [ 1, %entry.for.inc.7_crit_edge ], [ %spec.select, %lor.lhs.false.1 ], [ %spec.select59, %lor.lhs.false.2 ], [ %spec.select60, %lor.lhs.false.3 ], [ 32, %for.inc.7.fold.split ], [ %spec.select61, %lor.lhs.false.5 ], [ %spec.select62, %lor.lhs.false.6 ], [ 0, %for.inc.7.fold.split63 ]
  ret i32 %quirks.1.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_add_device(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_destroy_device(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_hid_core_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hid1 = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hid1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hid1, align 4
  tail call void @hid_destroy_device(ptr noundef %3) #10
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #10
  %bufsize = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bufsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %inbuf.i = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inbuf.i, align 4
  tail call void @kfree(ptr noundef %9) #10
  %rawbuf.i = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %rawbuf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rawbuf.i, align 4
  tail call void @kfree(ptr noundef %11) #10
  %argsbuf.i = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %argsbuf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %argsbuf.i, align 4
  tail call void @kfree(ptr noundef %13) #10
  %cmdbuf.i = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %cmdbuf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmdbuf.i, align 4
  tail call void @kfree(ptr noundef %15) #10
  %16 = call ptr @memset(ptr %bufsize, i32 0, i32 20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ops.i = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %power_down.i = getelementptr inbounds %struct.i2chid_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %power_down.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %power_down.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i2c_hid_core_power_down.exit_crit_edge, label %if.end.i

if.end.i2c_hid_core_power_down.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_hid_core_power_down.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %20(ptr noundef %18) #10
  br label %i2c_hid_core_power_down.exit

i2c_hid_core_power_down.exit:                     ; preds = %if.end.i, %if.end.i2c_hid_core_power_down.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i2c_hid_core_shutdown(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.do.end4.i_crit_edge, label %do.end.i

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.103) #13
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %entry.do.end4.i_crit_edge
  %call1242.i = tail call fastcc i32 @__i2c_hid_command(ptr noundef %client, ptr noundef nonnull @hid_set_power_cmd, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1242.i)
  %tobool13.not43.i = icmp eq i32 %call1242.i, 0
  br i1 %tobool13.not43.i, label %do.end4.i.i2c_hid_set_power.exit_crit_edge, label %set_pwr_exit.thread.i

do.end4.i.i2c_hid_set_power.exit_crit_edge:       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_hid_set_power.exit

set_pwr_exit.thread.i:                            ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev18.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.105) #13
  br label %i2c_hid_set_power.exit

i2c_hid_set_power.exit:                           ; preds = %set_pwr_exit.thread.i, %do.end4.i.i2c_hid_set_power.exit_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %6, ptr noundef %1) #10
  %ops.i = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %shutdown_tail.i = getelementptr inbounds %struct.i2chid_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %shutdown_tail.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shutdown_tail.i, align 4
  %tobool.not.i6 = icmp eq ptr %10, null
  br i1 %tobool.not.i6, label %i2c_hid_set_power.exit.i2c_hid_core_shutdown_tail.exit_crit_edge, label %if.end.i

i2c_hid_set_power.exit.i2c_hid_core_shutdown_tail.exit_crit_edge: ; preds = %i2c_hid_set_power.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_hid_core_shutdown_tail.exit

if.end.i:                                         ; preds = %i2c_hid_set_power.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %10(ptr noundef %8) #10
  br label %i2c_hid_core_shutdown_tail.exit

i2c_hid_core_shutdown_tail.exit:                  ; preds = %if.end.i, %i2c_hid_set_power.exit.i2c_hid_core_shutdown_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_hid_set_power(ptr noundef %client, i32 noundef %power_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.103) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power_state)
  %cmp = icmp eq i32 %power_state, 0
  br i1 %cmp, label %land.lhs.true, label %if.end11.thread

land.lhs.true:                                    ; preds = %do.end4
  %quirks = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %quirks, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end11_crit_edge, label %if.then6

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then6:                                         ; preds = %land.lhs.true
  %call.i = tail call fastcc i32 @__i2c_hid_command(ptr noundef %client, ptr noundef nonnull @hid_set_power_cmd, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.then6.if.then24_crit_edge, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then6.if.then24_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge
  %conv = trunc i32 %power_state to i8
  %call12 = tail call fastcc i32 @__i2c_hid_command(ptr noundef %client, ptr noundef nonnull @hid_set_power_cmd, i8 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.if.then24_crit_edge, label %if.end11.set_pwr_exit.thread_crit_edge

if.end11.set_pwr_exit.thread_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_pwr_exit.thread

if.end11.if.then24_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.end11.thread:                                  ; preds = %do.end4
  %conv41 = trunc i32 %power_state to i8
  %call1242 = tail call fastcc i32 @__i2c_hid_command(ptr noundef %client, ptr noundef nonnull @hid_set_power_cmd, i8 noundef zeroext %conv41, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1242)
  %tobool13.not43 = icmp eq i32 %call1242, 0
  br i1 %tobool13.not43, label %if.end11.thread.if.end25_crit_edge, label %if.end11.thread.set_pwr_exit.thread_crit_edge

if.end11.thread.set_pwr_exit.thread_crit_edge:    ; preds = %if.end11.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_pwr_exit.thread

if.end11.thread.if.end25_crit_edge:               ; preds = %if.end11.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

set_pwr_exit.thread:                              ; preds = %if.end11.thread.set_pwr_exit.thread_crit_edge, %if.end11.set_pwr_exit.thread_crit_edge
  %call1244 = phi i32 [ %call1242, %if.end11.thread.set_pwr_exit.thread_crit_edge ], [ %call12, %if.end11.set_pwr_exit.thread_crit_edge ]
  %dev18 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.105) #13
  br label %if.end25

if.then24:                                        ; preds = %if.end11.if.then24_crit_edge, %if.then6.if.then24_crit_edge
  tail call void @msleep(i32 noundef 60) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %set_pwr_exit.thread, %if.end11.thread.if.end25_crit_edge
  %ret.040 = phi i32 [ %call1244, %set_pwr_exit.thread ], [ 0, %if.then24 ], [ 0, %if.end11.thread.if.end25_crit_edge ]
  ret i32 %ret.040
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_hid_core_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hid1 = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hid1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hid1, align 4
  %call2 = tail call i32 @hid_driver_suspend(ptr noundef %3, [1 x i32] [i32 2]) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.do.end4.i_crit_edge, label %do.end.i

if.end.do.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.103) #13
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end.do.end4.i_crit_edge
  %call1242.i = tail call fastcc i32 @__i2c_hid_command(ptr noundef %add.ptr, ptr noundef nonnull @hid_set_power_cmd, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1242.i)
  %tobool13.not43.i = icmp eq i32 %call1242.i, 0
  br i1 %tobool13.not43.i, label %do.end4.i.i2c_hid_set_power.exit_crit_edge, label %set_pwr_exit.thread.i

do.end4.i.i2c_hid_set_power.exit_crit_edge:       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_hid_set_power.exit

set_pwr_exit.thread.i:                            ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.105) #13
  br label %i2c_hid_set_power.exit

i2c_hid_set_power.exit:                           ; preds = %set_pwr_exit.thread.i, %do.end4.i.i2c_hid_set_power.exit_crit_edge
  %irq = getelementptr i8, ptr %dev, i32 932
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %10) #10
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i27 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i27, label %i2c_hid_set_power.exit.if.else12_crit_edge, label %device_may_wakeup.exit

i2c_hid_set_power.exit.if.else12_crit_edge:       ; preds = %i2c_hid_set_power.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else12

device_may_wakeup.exit:                           ; preds = %i2c_hid_set_power.exit
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %12 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %13, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else12_crit_edge, label %if.then6

device_may_wakeup.exit.if.else12_crit_edge:       ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else12

if.then6:                                         ; preds = %device_may_wakeup.exit
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %15, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then9, label %do.end

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %irq_wake_enabled = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %irq_wake_enabled to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %irq_wake_enabled, align 4
  br label %cleanup

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %dev10 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10, ptr noundef nonnull @.str.107, i32 noundef %call.i) #13
  br label %cleanup

if.else12:                                        ; preds = %device_may_wakeup.exit.if.else12_crit_edge, %i2c_hid_set_power.exit.if.else12_crit_edge
  %ops.i = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %power_down.i = getelementptr inbounds %struct.i2chid_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %power_down.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %power_down.i, align 4
  %tobool.not.i28 = icmp eq ptr %20, null
  br i1 %tobool.not.i28, label %if.else12.cleanup_crit_edge, label %if.end.i

if.else12.cleanup_crit_edge:                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %20(ptr noundef %18) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.else12.cleanup_crit_edge, %do.end, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %do.end ], [ 0, %if.else12.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_hid_core_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hid1 = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hid1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hid1, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %if.else

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %ops.i = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool.not.i41 = icmp eq ptr %10, null
  br i1 %tobool.not.i41, label %if.then.if.end13_crit_edge, label %if.end.i

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %10(ptr noundef %8) #10
  br label %if.end13

if.else:                                          ; preds = %device_may_wakeup.exit
  %irq_wake_enabled = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %irq_wake_enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %irq_wake_enabled, align 4, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.else.if.end13_crit_edge, label %if.then5

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then5:                                         ; preds = %if.else
  %irq = getelementptr i8, ptr %dev, i32 932
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %call.i42 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool7.not = icmp eq i32 %call.i42, 0
  br i1 %tobool7.not, label %if.then8, label %do.end

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %irq_wake_enabled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %irq_wake_enabled, align 4
  br label %if.end13

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %dev11 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11, ptr noundef nonnull @.str.109, i32 noundef %call.i42) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then8, %if.else.if.end13_crit_edge, %if.end.i, %if.then.if.end13_crit_edge
  %irq14 = getelementptr i8, ptr %dev, i32 932
  %16 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq14, align 4
  tail call void @enable_irq(i32 noundef %17) #10
  %quirks = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quirks, align 4
  %and = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call fastcc i32 @i2c_hid_hwreset(ptr noundef %add.ptr)
  br label %if.end20

if.else18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call fastcc i32 @i2c_hid_set_power(ptr noundef %add.ptr, i32 noundef 0)
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then16
  %ret.0 = phi i32 [ %call17, %if.then16 ], [ %call19, %if.else18 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool21.not = icmp eq i32 %ret.0, 0
  br i1 %tobool21.not, label %if.end23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 @hid_driver_reset_resume(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end23 ], [ %ret.0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_hid_hwreset(ptr noundef %client) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %reset_lock = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %reset_lock, i32 noundef 0) #10
  %call5 = tail call fastcc i32 @i2c_hid_set_power(ptr noundef %client, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body9, label %do.end4.out_unlock_crit_edge

do.end4.out_unlock_crit_edge:                     ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

do.body9:                                         ; preds = %do.end4
  %5 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %do.body9.do.end19_crit_edge, label %do.end14

do.body9.do.end19_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev16, ptr noundef nonnull @.str.50) #13
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %do.body9.do.end19_crit_edge
  %call.i = tail call fastcc i32 @__i2c_hid_command(ptr noundef %client, ptr noundef nonnull @hid_reset_cmd, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %do.end19
  %dev26 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.53) #13
  %8 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %do.end25.do.end4.i_crit_edge, label %do.end.i

do.end25.do.end4.i_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i

do.end.i:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.103) #13
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.end25.do.end4.i_crit_edge
  %call1242.i = tail call fastcc i32 @__i2c_hid_command(ptr noundef %client, ptr noundef nonnull @hid_set_power_cmd, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1242.i)
  %tobool13.not43.i = icmp eq i32 %call1242.i, 0
  br i1 %tobool13.not43.i, label %do.end4.i.out_unlock_crit_edge, label %set_pwr_exit.thread.i

do.end4.i.out_unlock_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

set_pwr_exit.thread.i:                            ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.105) #13
  br label %out_unlock

if.end28:                                         ; preds = %do.end19
  %quirks = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %quirks, align 4
  %and = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.then30, label %if.end28.out_unlock_crit_edge

if.end28.out_unlock_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = tail call fastcc i32 @i2c_hid_set_power(ptr noundef %client, i32 noundef 0)
  br label %out_unlock

out_unlock:                                       ; preds = %if.then30, %if.end28.out_unlock_crit_edge, %set_pwr_exit.thread.i, %do.end4.i.out_unlock_crit_edge, %do.end4.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call5, %do.end4.out_unlock_crit_edge ], [ 0, %if.end28.out_unlock_crit_edge ], [ %call31, %if.then30 ], [ %call.i, %do.end4.i.out_unlock_crit_edge ], [ %call.i, %set_pwr_exit.thread.i ]
  tail call void @mutex_unlock(ptr noundef %reset_lock) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_parse_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__i2c_hid_command(ptr nocapture noundef readonly %client, ptr noundef readonly %command, i8 noundef zeroext %reportID, i8 noundef zeroext %reportType, ptr nocapture noundef readonly %args, i32 noundef %args_len, ptr noundef %buf_recv, i32 noundef %data_len) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [2 x %struct.i2c_msg], align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmdbuf = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmdbuf, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #10
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 20)
  %length1 = getelementptr inbounds %struct.i2c_hid_cmd, ptr %command, i32 0, i32 2
  %6 = ptrtoint ptr %length1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length1, align 4
  %wait2 = getelementptr inbounds %struct.i2c_hid_cmd, ptr %command, i32 0, i32 3
  %8 = ptrtoint ptr %wait2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wait2, align 4, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %cmp = icmp eq ptr %command, @hid_descr_cmd
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wHIDDescRegister = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %wHIDDescRegister to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %wHIDDescRegister, align 2
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %3, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %command, align 4
  %15 = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 2
  %arrayidx = getelementptr [30 x i8], ptr %15, i32 0, i32 %14
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %3, align 1
  %add = add i32 %14, 1
  %arrayidx5 = getelementptr [30 x i8], ptr %15, i32 0, i32 %add
  %19 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr [0 x i8], ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx6, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp7 = icmp sgt i32 %7, 2
  br i1 %cmp7, label %if.then8, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %opcode = getelementptr inbounds %struct.i2c_hid_cmd, ptr %command, i32 0, i32 1
  %22 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %opcode, align 4
  %opcode9 = getelementptr inbounds %struct.cmd, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %opcode9 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %opcode9, align 1
  %shl = shl i8 %reportType, 4
  %or = or i8 %shl, %reportID
  %reportTypeID = getelementptr inbounds %struct.cmd, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %reportTypeID to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %or, ptr %reportTypeID, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  %26 = call ptr @memcpy(ptr %add.ptr, ptr %args, i32 %args_len)
  %add13 = add i32 %7, %args_len
  %27 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool14.not = icmp eq i8 %27, 0
  br i1 %tobool14.not, label %if.end12.do.end21_crit_edge, label %do.end

if.end12.do.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %add13, ptr noundef %3) #13
  br label %do.end21

do.end21:                                         ; preds = %do.end, %if.end12.do.end21_crit_edge
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr, align 2
  %32 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %msg, align 4
  %33 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %client, align 8
  %35 = and i16 %34, 16
  %flags27 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %36 = ptrtoint ptr %flags27 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %flags27, align 2
  %conv28 = trunc i32 %add13 to i16
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %37 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv28, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %38 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %3, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len)
  %cmp32 = icmp sgt i32 %data_len, 0
  br i1 %cmp32, label %if.then34, label %do.end21.if.end55_crit_edge

do.end21.if.end55_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then34:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx36 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %31, ptr %arrayidx36, align 4
  %flags43 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 1
  %40 = or i16 %35, 1
  %41 = ptrtoint ptr %flags43 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %flags43, align 2
  %conv49 = trunc i32 %data_len to i16
  %len51 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %len51 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv49, ptr %len51, align 4
  %buf53 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %buf53 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %buf_recv, ptr %buf53, align 4
  %flags54 = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags54) #10
  br label %if.end55

if.end55:                                         ; preds = %if.then34, %do.end21.if.end55_crit_edge
  %msg_num.0 = phi i32 [ 2, %if.then34 ], [ 1, %do.end21.if.end55_crit_edge ]
  br i1 %tobool.not, label %if.end55.if.end59_crit_edge, label %if.then57

if.end55.if.end59_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %flags58 = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags58) #10
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end55.if.end59_crit_edge
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %44 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter, align 8
  %call61 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg, i32 noundef %msg_num.0) #10
  br i1 %cmp32, label %if.then64, label %if.end59.if.end66_crit_edge

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %flags65 = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 9
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags65) #10
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end59.if.end66_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call61, i32 %msg_num.0)
  %cmp67.not = icmp eq i32 %call61, %msg_num.0
  br i1 %cmp67.not, label %if.end72, label %if.then69

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp70 = icmp slt i32 %call61, 0
  %spec.select = select i1 %cmp70, i32 %call61, i32 -5
  br label %cleanup163

if.end72:                                         ; preds = %if.end66
  br i1 %tobool.not, label %if.end72.cleanup163_crit_edge, label %land.lhs.true

if.end72.cleanup163_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup163

land.lhs.true:                                    ; preds = %if.end72
  %quirks = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 10
  %46 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %quirks, align 4
  %and75 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body81.critedge, label %if.then77

if.then77:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef 100) #10
  br label %cleanup163

do.body81.critedge:                               ; preds = %land.lhs.true
  %48 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool82.not = icmp eq i8 %48, 0
  br i1 %tobool82.not, label %do.body81.critedge.do.end91_crit_edge, label %do.end86

do.body81.critedge.do.end91_crit_edge:            ; preds = %do.body81.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

do.end86:                                         ; preds = %do.body81.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %dev88 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev88, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56) #13
  br label %do.end91

do.end91:                                         ; preds = %do.end86, %do.body81.critedge.do.end91_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 276) #10
  %flags99 = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 9
  %51 = ptrtoint ptr %flags99 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags99, align 4
  %53 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool101.not = icmp eq i32 %53, 0
  br i1 %tobool101.not, label %do.end91.if.end145.thread_crit_edge, label %if.then114

do.end91.if.end145.thread_crit_edge:              ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145.thread

if.then114:                                       ; preds = %do.end91
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %54 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wait117 = getelementptr inbounds %struct.i2c_hid, ptr %1, i32 0, i32 11
  %call118233 = call i32 @prepare_to_wait_event(ptr noundef %wait117, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %55 = ptrtoint ptr %flags99 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flags99, align 4
  %57 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool122.not234 = icmp eq i32 %57, 0
  br i1 %tobool122.not234, label %if.then114.if.end145_crit_edge, label %if.then114.cleanup_crit_edge

if.then114.cleanup_crit_edge:                     ; preds = %if.then114
  br label %cleanup

if.then114.if.end145_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then114.cleanup_crit_edge
  %__ret115.1235 = phi i32 [ %__ret115.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then114.cleanup_crit_edge ]
  %call142 = call i32 @schedule_timeout(i32 noundef %__ret115.1235) #10
  %call118 = call i32 @prepare_to_wait_event(ptr noundef %wait117, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %58 = ptrtoint ptr %flags99 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags99, align 4
  %60 = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool122.not = icmp eq i32 %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool128.not = icmp eq i32 %call142, 0
  %61 = select i1 %tobool122.not, i1 %tobool128.not, i1 false
  %__ret115.1 = select i1 %61, i32 1, i32 %call142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret115.1)
  %tobool135.not = icmp eq i32 %__ret115.1, 0
  %62 = select i1 %tobool122.not, i1 true, i1 %tobool135.not
  br i1 %62, label %if.end145.loopexit, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end145.loopexit:                               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret115.1)
  %phi.cmp = icmp eq i32 %__ret115.1, 0
  %phi.sel = select i1 %phi.cmp, i32 -61, i32 0
  br label %if.end145

if.end145:                                        ; preds = %if.end145.loopexit, %if.then114.if.end145_crit_edge
  %__ret115.1.lcssa = phi i32 [ 0, %if.then114.if.end145_crit_edge ], [ %phi.sel, %if.end145.loopexit ]
  call void @finish_wait(ptr noundef %wait117, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end145.thread

if.end145.thread:                                 ; preds = %if.end145, %do.end91.if.end145.thread_crit_edge
  %63 = phi i32 [ 0, %do.end91.if.end145.thread_crit_edge ], [ %__ret115.1.lcssa, %if.end145 ]
  %64 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool151.not = icmp eq i8 %64, 0
  br i1 %tobool151.not, label %if.end145.thread.cleanup163_crit_edge, label %do.end155

if.end145.thread.cleanup163_crit_edge:            ; preds = %if.end145.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup163

do.end155:                                        ; preds = %if.end145.thread
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %dev157 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev157, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.56) #13
  br label %cleanup163

cleanup163:                                       ; preds = %do.end155, %if.end145.thread.cleanup163_crit_edge, %if.then77, %if.end72.cleanup163_crit_edge, %if.then69
  %retval.0 = phi i32 [ %spec.select, %if.then69 ], [ 0, %if.then77 ], [ %63, %do.end155 ], [ %63, %if.end145.thread.cleanup163_crit_edge ], [ 0, %if.end72.cleanup163_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_hid_output_raw_report(ptr nocapture noundef readonly %hid, ptr nocapture noundef readonly %buf, i32 noundef %count, i8 noundef zeroext %report_type, i1 noundef zeroext %use_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %report_type)
  %cmp = icmp eq i8 %report_type, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %reset_lock = getelementptr inbounds %struct.i2c_hid, ptr %5, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %reset_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %dec = sext i1 %not.tobool.not to i32
  %count.addr.0 = add i32 %dec, %count
  %buf.addr.0.idx = zext i1 %not.tobool.not to i32
  %buf.addr.0 = getelementptr i8, ptr %buf, i32 %buf.addr.0.idx
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %report_type)
  %cmp6 = icmp eq i8 %report_type, 2
  %conv8 = select i1 %cmp6, i8 3, i8 2
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %argsbuf.i = getelementptr inbounds %struct.i2c_hid, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %argsbuf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %argsbuf.i, align 4
  %wDataRegister.i = getelementptr inbounds %struct.i2c_hid, ptr %7, i32 0, i32 2, i32 0, i32 18
  %10 = ptrtoint ptr %wDataRegister.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %wDataRegister.i, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  %wOutputRegister.i = getelementptr inbounds %struct.i2c_hid, ptr %7, i32 0, i32 2, i32 0, i32 12
  %13 = ptrtoint ptr %wOutputRegister.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %wOutputRegister.i, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #10
  %wMaxOutputLength.i = getelementptr inbounds %struct.i2c_hid, ptr %7, i32 0, i32 2, i32 0, i32 14
  %16 = ptrtoint ptr %wMaxOutputLength.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %wMaxOutputLength.i, align 2
  %18 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end.do.end4.i_crit_edge, label %do.end.i

if.end.do.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %7, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.67) #13
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end.do.end4.i_crit_edge
  %bufsize.i = getelementptr inbounds %struct.i2c_hid, ptr %7, i32 0, i32 4
  %21 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bufsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %count.addr.0)
  %cmp.i = icmp ult i32 %22, %count.addr.0
  br i1 %cmp.i, label %do.end4.i.i2c_hid_set_or_send_report.exit_crit_edge, label %if.end6.i

do.end4.i.i2c_hid_set_or_send_report.exit_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_hid_set_or_send_report.exit

if.end6.i:                                        ; preds = %do.end4.i
  %add.i = select i1 %tobool.not, i32 2, i32 3
  %add8.i = add i32 %count.addr.0, %add.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %3)
  %cmp11.i = icmp ugt i8 %3, 14
  %add14.i = select i1 %cmp11.i, i32 3, i32 2
  %conv15.i = and i32 %add8.i, 65535
  %add16.i = add nuw nsw i32 %conv15.i, %add14.i
  %use_data.not.i = xor i1 %use_data, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp19.i = icmp eq i16 %17, 0
  %or.cond.i = select i1 %use_data.not.i, i1 %cmp19.i, i1 false
  br i1 %or.cond.i, label %if.end6.i.i2c_hid_set_or_send_report.exit_crit_edge, label %if.end22.i

if.end6.i.i2c_hid_set_or_send_report.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_hid_set_or_send_report.exit

if.end22.i:                                       ; preds = %if.end6.i
  br i1 %cmp11.i, label %if.then26.i, label %if.end22.i.if.end27.i_crit_edge

if.end22.i.if.end27.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %3, ptr %9, align 1
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.end22.i.if.end27.i_crit_edge
  %reportID.addr.0.i = phi i8 [ 15, %if.then26.i ], [ %3, %if.end22.i.if.end27.i_crit_edge ]
  %index.0.i = phi i32 [ 1, %if.then26.i ], [ 0, %if.end22.i.if.end27.i_crit_edge ]
  %..i = select i1 %use_data, i16 %12, i16 %15
  %hid_set_report_cmd.hid_no_cmd.i = select i1 %use_data, ptr @hid_set_report_cmd, ptr @hid_no_cmd
  %conv40.i = trunc i16 %..i to i8
  %inc41.i = add nuw nsw i32 %index.0.i, 1
  %arrayidx42.i = getelementptr i8, ptr %9, i32 %index.0.i
  %24 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv40.i, ptr %arrayidx42.i, align 1
  %25 = lshr i16 %..i, 8
  %conv45.i = trunc i16 %25 to i8
  %arrayidx47.i = getelementptr i8, ptr %9, i32 %inc41.i
  %26 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv45.i, ptr %arrayidx47.i, align 1
  %index.1.i = or i32 %index.0.i, 2
  %conv51.i = trunc i32 %add8.i to i8
  %inc52.i = add nuw nsw i32 %index.0.i, 3
  %arrayidx53.i = getelementptr i8, ptr %9, i32 %index.1.i
  %27 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv51.i, ptr %arrayidx53.i, align 1
  %28 = lshr i32 %add8.i, 8
  %conv56.i = trunc i32 %28 to i8
  %inc57.i = or i32 %index.0.i, 4
  %arrayidx58.i = getelementptr i8, ptr %9, i32 %inc52.i
  %29 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv56.i, ptr %arrayidx58.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reportID.addr.0.i)
  %tobool59.not.i = icmp eq i8 %reportID.addr.0.i, 0
  br i1 %tobool59.not.i, label %if.end27.i.if.end63.i_crit_edge, label %if.then60.i

if.end27.i.if.end63.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.then60.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc61.i = add nuw nsw i32 %index.0.i, 5
  %arrayidx62.i = getelementptr i8, ptr %9, i32 %inc57.i
  %30 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %reportID.addr.0.i, ptr %arrayidx62.i, align 1
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then60.i, %if.end27.i.if.end63.i_crit_edge
  %index.2.i = phi i32 [ %inc61.i, %if.then60.i ], [ %inc57.i, %if.end27.i.if.end63.i_crit_edge ]
  %arrayidx64.i = getelementptr i8, ptr %9, i32 %index.2.i
  %31 = call ptr @memcpy(ptr %arrayidx64.i, ptr %buf.addr.0, i32 %count.addr.0)
  %call65.i = tail call fastcc i32 @__i2c_hid_command(ptr noundef %1, ptr noundef nonnull %hid_set_report_cmd.hid_no_cmd.i, i8 noundef zeroext %reportID.addr.0.i, i8 noundef zeroext %conv8, ptr noundef %9, i32 noundef %add16.i, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end63.i.i2c_hid_set_or_send_report.exit_crit_edge, label %do.end70.i

if.end63.i.i2c_hid_set_or_send_report.exit_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_hid_set_or_send_report.exit

do.end70.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev71.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71.i, ptr noundef nonnull @.str.69) #13
  br label %i2c_hid_set_or_send_report.exit

i2c_hid_set_or_send_report.exit:                  ; preds = %do.end70.i, %if.end63.i.i2c_hid_set_or_send_report.exit_crit_edge, %if.end6.i.i2c_hid_set_or_send_report.exit_crit_edge, %do.end4.i.i2c_hid_set_or_send_report.exit_crit_edge
  %retval.0.i = phi i32 [ %call65.i, %do.end70.i ], [ -22, %do.end4.i.i2c_hid_set_or_send_report.exit_crit_edge ], [ -38, %if.end6.i.i2c_hid_set_or_send_report.exit_crit_edge ], [ %count.addr.0, %if.end63.i.i2c_hid_set_or_send_report.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp13 = icmp sgt i32 %retval.0.i, -1
  %or.cond = select i1 %not.tobool.not, i1 %cmp13, i1 false
  %inc = zext i1 %or.cond to i32
  %ret.0 = add i32 %retval.0.i, %inc
  tail call void @mutex_unlock(ptr noundef %reset_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %i2c_hid_set_or_send_report.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %i2c_hid_set_or_send_report.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_hid_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.i2c_hid, ptr %dev_id, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %wMaxInputLength.i = getelementptr inbounds %struct.i2c_hid, ptr %dev_id, i32 0, i32 2, i32 0, i32 10
  %3 = ptrtoint ptr %wMaxInputLength.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %wMaxInputLength.i, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #10
  %conv.i = zext i16 %5 to i32
  %bufsize.i = getelementptr inbounds %struct.i2c_hid, ptr %dev_id, i32 0, i32 4
  %6 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bufsize.i, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %conv.i) #10
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 4
  %inbuf.i = getelementptr inbounds %struct.i2c_hid, ptr %dev_id, i32 0, i32 5
  %11 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %inbuf.i, align 4
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef %12, i32 noundef %8, i16 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %8)
  %cmp3.not.i = icmp eq i32 %call.i.i, %8
  br i1 %cmp3.not.i, label %if.end11.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp6.i, label %if.then5.i.cleanup_crit_edge, label %do.end.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_id, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, i32 noundef %call.i.i, i32 noundef %8) #13
  br label %cleanup

if.end11.i:                                       ; preds = %if.end
  %15 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %inbuf.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %conv13.i = zext i8 %18 to i32
  %arrayidx15.i = getelementptr i8, ptr %16, i32 1
  %19 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %20 to i32
  %shl.i = shl nuw nsw i32 %conv16.i, 8
  %or.i = or i32 %shl.i, %conv13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i, label %if.then17.i, label %if.end22.i

if.then17.i:                                      ; preds = %if.end11.i
  %call18.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then17.i.cleanup_crit_edge, label %if.then20.i

if.then17.i.cleanup_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then20.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %wait.i = getelementptr inbounds %struct.i2c_hid, ptr %dev_id, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

if.end22.i:                                       ; preds = %if.end11.i
  %quirks.i = getelementptr inbounds %struct.i2c_hid, ptr %dev_id, i32 0, i32 10
  %21 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %or.i)
  %cmp24.i = icmp eq i32 %or.i, 65535
  %or.cond.i = select i1 %tobool23.not.i, i1 %cmp24.i, i1 false
  br i1 %or.cond.i, label %do.body27.i, label %if.end38.i

do.body27.i:                                      ; preds = %if.end22.i
  %.b122.i = load i1, ptr @i2c_hid_get_input.__print_once, align 1
  br i1 %.b122.i, label %do.body27.i.cleanup_crit_edge, label %if.then29.i

do.body27.i.cleanup_crit_edge:                    ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then29.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @i2c_hid_get_input.__print_once, align 1
  %23 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_id, align 4
  %dev34.i = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev34.i, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93) #13
  br label %cleanup

if.end38.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %8)
  %cmp39.i = icmp ugt i32 %or.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %or.i)
  %cmp41.i = icmp ult i32 %or.i, 2
  %or.cond123.i = or i1 %cmp39.i, %cmp41.i
  br i1 %or.cond123.i, label %if.then43.i, label %if.end38.i.do.body62.i_crit_edge

if.end38.i.do.body62.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body62.i

if.then43.i:                                      ; preds = %if.end38.i
  %and45.i = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %do.end57.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv49.i = trunc i32 %8 to i8
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv49.i, ptr %16, align 1
  %26 = lshr i32 %8, 8
  %conv52.i = trunc i32 %26 to i8
  %27 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %inbuf.i, align 4
  %arrayidx54.i = getelementptr i8, ptr %28, i32 1
  %29 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv52.i, ptr %arrayidx54.i, align 1
  br label %do.body62.i

do.end57.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_id, align 4
  %dev59.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.93, i32 noundef %8, i32 noundef %or.i) #13
  br label %cleanup

do.body62.i:                                      ; preds = %if.then47.i, %if.end38.i.do.body62.i_crit_edge
  %ret_size.0.i = phi i32 [ %8, %if.then47.i ], [ %or.i, %if.end38.i.do.body62.i_crit_edge ]
  %32 = load i8, ptr @debug, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool63.not.i = icmp eq i8 %32, 0
  br i1 %tobool63.not.i, label %do.body62.i.do.end73.i_crit_edge, label %do.end67.i

do.body62.i.do.end73.i_crit_edge:                 ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73.i

do.end67.i:                                       ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_id, align 4
  %dev69.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %inbuf.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.25, ptr noundef %dev69.i, ptr noundef nonnull @.str.101, i32 noundef %ret_size.0.i, ptr noundef %36) #13
  br label %do.end73.i

do.end73.i:                                       ; preds = %do.end67.i, %do.body62.i.do.end73.i_crit_edge
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags, align 4
  %and1.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool76.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool76.not.i, label %do.end73.i.cleanup_crit_edge, label %if.then77.i

do.end73.i.cleanup_crit_edge:                     ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then77.i:                                      ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_id, align 4
  %dev79.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  tail call void @pm_wakeup_dev_event(ptr noundef %dev79.i, i32 noundef 0, i1 noundef zeroext false) #10
  %hid.i = getelementptr inbounds %struct.i2c_hid, ptr %dev_id, i32 0, i32 1
  %41 = ptrtoint ptr %hid.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hid.i, align 4
  %43 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %inbuf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 2
  %sub.i = add nsw i32 %ret_size.0.i, -2
  %call81.i = tail call i32 @hid_input_report(ptr noundef %42, i32 noundef 0, ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then77.i, %do.end73.i.cleanup_crit_edge, %do.end57.i, %if.then29.i, %do.body27.i.cleanup_crit_edge, %if.then20.i, %if.then17.i.cleanup_crit_edge, %do.end.i, %if.then5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_input_report(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_driver_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_driver_reset_resume(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !65, !67, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !131, !133, !134, !135, !137, !138, !139, !141, !143, !144, !145, !147, !148, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !209, !210, !211, !213, !214, !215, !217, !219, !220, !221, !222, !224, !225, !226}
!llvm.module.flags = !{!227, !228, !229, !230, !231, !232, !233, !234}
!llvm.ident = !{!235}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 61, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype288, !1, !"__UNIQUE_ID_debugtype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug289, !4, !"__UNIQUE_ID_debug289", i1 false, i1 false}
!4 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 62, i32 1}
!5 = !{ptr @i2c_hid_ll_driver, !6, !"i2c_hid_ll_driver", i1 false, i1 false}
!6 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 812, i32 22}
!7 = !{ptr @__ksymtab_i2c_hid_ll_driver, !8, !"__ksymtab_i2c_hid_ll_driver", i1 false, i1 false}
!8 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 821, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 924, i32 2}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @i2c_hid_core_probe._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @i2c_hid_core_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 927, i32 3}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @i2c_hid_core_probe._entry.3, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @i2c_hid_core_probe._entry_ptr.7, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 934, i32 4}
!23 = !{ptr @i2c_hid_core_probe._entry.8, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @i2c_hid_core_probe._entry_ptr.10, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @i2c_hid_core_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 955, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @i2c_hid_core_probe.__key.12, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 956, i32 2}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 970, i32 3}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @i2c_hid_core_probe.__UNIQUE_ID_ddebug297, !32, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 977, i32 3}
!37 = !{ptr @i2c_hid_core_probe._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @i2c_hid_core_probe._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 1002, i32 41}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 1011, i32 4}
!43 = !{ptr @i2c_hid_core_probe._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @i2c_hid_core_probe._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @__ksymtab_i2c_hid_core_probe, !46, !"__ksymtab_i2c_hid_core_probe", i1 false, i1 false}
!46 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 1030, i32 1}
!47 = !{ptr @__ksymtab_i2c_hid_core_remove, !48, !"__ksymtab_i2c_hid_core_remove", i1 false, i1 false}
!48 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 1049, i32 1}
!49 = !{ptr @__ksymtab_i2c_hid_core_shutdown, !50, !"__ksymtab_i2c_hid_core_shutdown", i1 false, i1 false}
!50 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 1060, i32 1}
!51 = !{ptr @i2c_hid_core_pm, !52, !"i2c_hid_core_pm", i1 false, i1 false}
!52 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 1135, i32 25}
!53 = !{ptr @__ksymtab_i2c_hid_core_pm, !54, !"__ksymtab_i2c_hid_core_pm", i1 false, i1 false}
!54 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 1138, i32 1}
!55 = !{ptr @__UNIQUE_ID_description298, !56, !"__UNIQUE_ID_description298", i1 false, i1 false}
!56 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 1140, i32 1}
!57 = !{ptr @__UNIQUE_ID_author299, !58, !"__UNIQUE_ID_author299", i1 false, i1 false}
!58 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 1141, i32 1}
!59 = !{ptr @__UNIQUE_ID_file300, !60, !"__UNIQUE_ID_file300", i1 false, i1 false}
!60 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 1142, i32 1}
!61 = !{ptr @__UNIQUE_ID_license301, !60, !"__UNIQUE_ID_license301", i1 false, i1 false}
!62 = !{ptr @debug, !63, !"debug", i1 false, i1 false}
!63 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 60, i32 13}
!64 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 709, i32 2}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @i2c_hid_parse._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @i2c_hid_parse._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 713, i32 3}
!73 = !{ptr @i2c_hid_parse._entry.26, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @i2c_hid_parse._entry_ptr.28, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 731, i32 3}
!77 = !{ptr @i2c_hid_parse._entry.29, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @i2c_hid_parse._entry_ptr.31, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 736, i32 4}
!81 = !{ptr @i2c_hid_parse._entry.32, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @i2c_hid_parse._entry_ptr.34, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 740, i32 3}
!85 = !{ptr @i2c_hid_parse._entry.35, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @i2c_hid_parse._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 745, i32 4}
!89 = !{ptr @i2c_hid_parse._entry.38, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @i2c_hid_parse._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 751, i32 2}
!93 = !{ptr @i2c_hid_parse._entry.41, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @i2c_hid_parse._entry_ptr.43, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 758, i32 3}
!97 = !{ptr @i2c_hid_parse._entry.44, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @i2c_hid_parse._entry_ptr.46, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 446, i32 2}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @i2c_hid_hwreset._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @i2c_hid_hwreset._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 459, i32 2}
!106 = !{ptr @i2c_hid_hwreset._entry.49, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @i2c_hid_hwreset._entry_ptr.51, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 463, i32 3}
!110 = !{ptr @i2c_hid_hwreset._entry.52, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @i2c_hid_hwreset._entry_ptr.54, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @hid_reset_cmd, !113, !"hid_reset_cmd", i1 false, i1 false}
!113 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 116, i32 33}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 241, i32 2}
!116 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @__i2c_hid_command._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @__i2c_hid_command._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 273, i32 3}
!121 = !{ptr @__i2c_hid_command._entry.57, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @__i2c_hid_command._entry_ptr.59, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 278, i32 3}
!125 = !{ptr @__i2c_hid_command._entry.60, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @__i2c_hid_command._entry_ptr.62, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @hid_descr_cmd, !128, !"hid_descr_cmd", i1 false, i1 false}
!128 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 108, i32 33}
!129 = !{ptr @hid_report_descr_cmd, !130, !"hid_report_descr_cmd", i1 false, i1 false}
!130 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 110, i32 33}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 301, i32 2}
!133 = !{ptr @i2c_hid_get_report._entry, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @i2c_hid_get_report._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 314, i32 3}
!137 = !{ptr @i2c_hid_get_report._entry.64, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @i2c_hid_get_report._entry_ptr.66, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @hid_get_report_cmd, !140, !"hid_get_report_cmd", i1 false, i1 false}
!140 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 118, i32 33}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 345, i32 2}
!143 = !{ptr @i2c_hid_set_or_send_report._entry, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @i2c_hid_set_or_send_report._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 390, i32 3}
!147 = !{ptr @i2c_hid_set_or_send_report._entry.68, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @i2c_hid_set_or_send_report._entry_ptr.70, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @hid_set_report_cmd, !150, !"hid_set_report_cmd", i1 false, i1 false}
!150 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 119, i32 33}
!151 = !{ptr @hid_no_cmd, !152, !"hid_no_cmd", i1 false, i1 false}
!152 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 121, i32 33}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 857, i32 3}
!155 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @i2c_hid_fetch_hid_descriptor._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @i2c_hid_fetch_hid_descriptor._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 861, i32 3}
!160 = !{ptr @i2c_hid_fetch_hid_descriptor._entry.73, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @i2c_hid_fetch_hid_descriptor._entry_ptr.75, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 866, i32 4}
!164 = !{ptr @i2c_hid_fetch_hid_descriptor._entry.76, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @i2c_hid_fetch_hid_descriptor._entry_ptr.78, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 876, i32 3}
!168 = !{ptr @i2c_hid_fetch_hid_descriptor._entry.79, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @i2c_hid_fetch_hid_descriptor._entry_ptr.81, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 885, i32 3}
!172 = !{ptr @i2c_hid_fetch_hid_descriptor._entry.82, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @i2c_hid_fetch_hid_descriptor._entry_ptr.84, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 889, i32 2}
!176 = !{ptr @i2c_hid_fetch_hid_descriptor._entry.85, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @i2c_hid_fetch_hid_descriptor._entry_ptr.87, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 829, i32 2}
!180 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @i2c_hid_init_irq.__UNIQUE_ID_ddebug296, !179, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 837, i32 3}
!184 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @i2c_hid_init_irq._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @i2c_hid_init_irq._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.92, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 491, i32 3}
!189 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @i2c_hid_get_input._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @i2c_hid_get_input._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = distinct !{null, !193, !"__print_once", i1 false, i1 false}
!193 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 506, i32 3}
!194 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @i2c_hid_get_input._entry.94, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @i2c_hid_get_input._entry_ptr.96, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 517, i32 4}
!199 = !{ptr @i2c_hid_get_input._entry.97, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @i2c_hid_get_input._entry_ptr.99, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.101, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 523, i32 2}
!203 = !{ptr @i2c_hid_get_input._entry.100, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @i2c_hid_get_input._entry_ptr.102, !202, !"_entry_ptr", i1 false, i1 false}
!205 = distinct !{null, !206, !"i2c_hid_quirks", i1 false, i1 false}
!206 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 165, i32 3}
!207 = !{ptr @.str.103, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 402, i32 2}
!209 = !{ptr @i2c_hid_set_power._entry, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @i2c_hid_set_power._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.105, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 422, i32 3}
!213 = !{ptr @i2c_hid_set_power._entry.104, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @i2c_hid_set_power._entry_ptr.106, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @hid_set_power_cmd, !216, !"hid_set_power_cmd", i1 false, i1 false}
!216 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 120, i32 33}
!217 = !{ptr @.str.107, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 1085, i32 4}
!219 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @i2c_hid_core_suspend._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @i2c_hid_core_suspend._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.109, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hid/i2c-hid/i2c-hid-core.c", i32 1109, i32 4}
!224 = !{ptr @.str.110, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @i2c_hid_core_resume._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @i2c_hid_core_resume._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{i32 1, !"wchar_size", i32 2}
!228 = !{i32 1, !"min_enum_size", i32 4}
!229 = !{i32 8, !"branch-target-enforcement", i32 0}
!230 = !{i32 8, !"sign-return-address", i32 0}
!231 = !{i32 8, !"sign-return-address-all", i32 0}
!232 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!233 = !{i32 7, !"uwtable", i32 1}
!234 = !{i32 7, !"frame-pointer", i32 2}
!235 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!236 = !{i8 0, i8 2}
!237 = !{!"auto-init"}
!238 = !{i64 2148980719, i64 2148980724, i64 2148980737, i64 2148980781, i64 2148980815, i64 2148980836}
