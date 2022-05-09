; ModuleID = '/llk/IR_all_yes/drivers/spmi/hisi-spmi-controller.c_pt.bc'
source_filename = "../drivers/spmi/hisi-spmi-controller.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spmi_controller_dev = type { ptr, ptr, ptr, %struct.spinlock, i32 }
%struct.spmi_controller = type { %struct.device, i32, ptr, ptr, ptr }

@__initcall__kmod_hisi_spmi_controller__230_357_spmi_controller_init2 = internal global ptr @spmi_controller_init, section ".initcall2.init", align 4
@spmi_controller_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spmi_controller_probe, ptr @spmi_del_controller, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spmi_controller_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spmi_controller_exit = internal global ptr @spmi_controller_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file231 = internal constant [60 x i8] c"hisi_spmi_controller.file=drivers/spmi/hisi-spmi-controller\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [36 x i8] c"hisi_spmi_controller.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version233 = internal constant [33 x i8] c"hisi_spmi_controller.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hisi_spmi_controller\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias234 = internal constant [52 x i8] c"hisi_spmi_controller.alias=platform:spmi_controller\00", section ".modinfo", align 1
@spmi_controller_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,kirin970-spmi-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@spmi_controller_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 272, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can not allocate spmi_controller data\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spmi_controller_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/spmi/hisi-spmi-controller.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spmi_controller_probe._entry_ptr = internal global ptr @spmi_controller_probe._entry, section ".printk_index", align 4
@spmi_controller_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 280, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can not get resource!\0A\00", [41 x i8] zeroinitializer }, align 32
@spmi_controller_probe._entry_ptr.10 = internal global ptr @spmi_controller_probe._entry.8, section ".printk_index", align 4
@spmi_controller_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 288, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can not remap base addr!\0A\00", [38 x i8] zeroinitializer }, align 32
@spmi_controller_probe._entry_ptr.13 = internal global ptr @spmi_controller_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hisilicon,spmi-channel\00", [41 x i8] zeroinitializer }, align 32
@spmi_controller_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 296, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can not get channel\0A\00", [43 x i8] zeroinitializer }, align 32
@spmi_controller_probe._entry_ptr.17 = internal global ptr @spmi_controller_probe._entry.15, section ".printk_index", align 4
@spmi_controller_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&spmi_controller->lock\00", [41 x i8] zeroinitializer }, align 32
@spmi_controller_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 316, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"spmi_controller_add failed with error %d!\0A\00", [53 x i8] zeroinitializer }, align 32
@spmi_controller_probe._entry_ptr.21 = internal global ptr @spmi_controller_probe._entry.19, section ".printk_index", align 4
@spmi_read_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 125, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"spmi_controller supports 1..%d bytes per trans, but:%zu requested\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spmi_read_cmd\00", [18 x i8] zeroinitializer }, align 32
@spmi_read_cmd._entry_ptr = internal global ptr @spmi_read_cmd._entry, section ".printk_index", align 4
@spmi_read_cmd._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.5, i32 140, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid read cmd 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@spmi_read_cmd._entry_ptr.26 = internal global ptr @spmi_read_cmd._entry.24, section ".printk_index", align 4
@spmi_read_cmd._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.5, i32 179, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"spmi read wait timeout op:0x%x slave_id:%d slave_addr:0x%x bc:%zu\0A\00", [61 x i8] zeroinitializer }, align 32
@spmi_read_cmd._entry_ptr.29 = internal global ptr @spmi_read_cmd._entry.27, section ".printk_index", align 4
@spmi_read_cmd.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.5, ptr @.str.30, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: id:%d slave_addr:0x%x, read value: %*ph\0A\00", [51 x i8] zeroinitializer }, align 32
@spmi_controller_wait_for_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 98, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: transaction failed (0x%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"spmi_controller_wait_for_done\00", [34 x i8] zeroinitializer }, align 32
@spmi_controller_wait_for_done._entry_ptr = internal global ptr @spmi_controller_wait_for_done._entry, section ".printk_index", align 4
@spmi_controller_wait_for_done.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.5, ptr @.str.33, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: status 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@spmi_controller_wait_for_done._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.5, i32 107, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: timeout, status 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@spmi_controller_wait_for_done._entry_ptr.36 = internal global ptr @spmi_controller_wait_for_done._entry.34, section ".printk_index", align 4
@spmi_write_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.37, ptr @.str.5, i32 201, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spmi_write_cmd\00", [17 x i8] zeroinitializer }, align 32
@spmi_write_cmd._entry_ptr = internal global ptr @spmi_write_cmd._entry, section ".printk_index", align 4
@spmi_write_cmd._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.5, i32 216, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid write cmd 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@spmi_write_cmd._entry_ptr.40 = internal global ptr @spmi_write_cmd._entry.38, section ".printk_index", align 4
@spmi_write_cmd._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.5, i32 255, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"spmi write wait timeout op:0x%x slave_id:%d slave_addr:0x%x bc:%zu\0A\00", [60 x i8] zeroinitializer }, align 32
@spmi_write_cmd._entry_ptr.43 = internal global ptr @spmi_write_cmd._entry.41, section ".printk_index", align 4
@spmi_write_cmd.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.5, ptr @.str.44, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: id:%d slave_addr:0x%x, wrote value: %*ph\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 32, i64 56, i64 96]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 48, i64 64]
@___asan_gen_.46 = private unnamed_addr constant [23 x i8] c"spmi_controller_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 344, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 366, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [28 x i8] c"spmi_controller_match_table\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 336, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 272, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 280, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 288, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 293, i32 48 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 296, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 304, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 316, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 123, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 140, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 177, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 181, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 97, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 101, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 107, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 199, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 216, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 254, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [39 x i8] c"../drivers/spmi/hisi-spmi-controller.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 257, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_alias234, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__UNIQUE_ID_version233, ptr @__exitcall_spmi_controller_exit, ptr @__initcall__kmod_hisi_spmi_controller__230_357_spmi_controller_init2, ptr @__modver_attr, ptr @spmi_controller_exit, ptr @spmi_controller_probe._entry, ptr @spmi_controller_probe._entry.11, ptr @spmi_controller_probe._entry.15, ptr @spmi_controller_probe._entry.19, ptr @spmi_controller_probe._entry.8, ptr @spmi_controller_probe._entry_ptr, ptr @spmi_controller_probe._entry_ptr.10, ptr @spmi_controller_probe._entry_ptr.13, ptr @spmi_controller_probe._entry_ptr.17, ptr @spmi_controller_probe._entry_ptr.21, ptr @spmi_controller_wait_for_done._entry, ptr @spmi_controller_wait_for_done._entry.34, ptr @spmi_controller_wait_for_done._entry_ptr, ptr @spmi_controller_wait_for_done._entry_ptr.36, ptr @spmi_read_cmd._entry, ptr @spmi_read_cmd._entry.24, ptr @spmi_read_cmd._entry.27, ptr @spmi_read_cmd._entry_ptr, ptr @spmi_read_cmd._entry_ptr.26, ptr @spmi_read_cmd._entry_ptr.29, ptr @spmi_write_cmd._entry, ptr @spmi_write_cmd._entry.38, ptr @spmi_write_cmd._entry.41, ptr @spmi_write_cmd._entry_ptr, ptr @spmi_write_cmd._entry_ptr.40, ptr @spmi_write_cmd._entry_ptr.43, ptr @spmi_controller_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @spmi_controller_match_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @spmi_controller_probe.__key, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_controller_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_controller_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_controller_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_controller_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_controller_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_controller_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_controller_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_controller_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_read_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_read_cmd._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_read_cmd._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_controller_wait_for_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_controller_wait_for_done._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_write_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_write_cmd._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_write_cmd._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_controller_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spmi_controller_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spmi_controller_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @spmi_controller_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_controller_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @spmi_controller_alloc(ptr noundef %dev, i32 noundef 60) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %1, align 4
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %spmi_controller_put.exit

if.end10:                                         ; preds = %if.end
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call3, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %4
  %add.i = add i32 %sub.i, %6
  %call13 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %4, i32 noundef %add.i) #6
  %base = getelementptr inbounds %struct.spmi_controller_dev, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13, ptr %base, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %spmi_controller_put.exit

if.end21:                                         ; preds = %if.end10
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %channel = getelementptr inbounds %struct.spmi_controller_dev, ptr %1, i32 0, i32 4
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.14, ptr noundef %channel, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool24.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %spmi_controller_put.exit

if.end30:                                         ; preds = %if.end21
  %driver_data.i.i89 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i89 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %driver_data.i.i89, align 4
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.spmi_controller_dev, ptr %1, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @spmi_controller_probe.__key, i16 noundef signext 3) #6
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel, align 4
  %nr = getelementptr inbounds %struct.spmi_controller, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %nr, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  %parent39 = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %parent39 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %parent39, align 8
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call42 = tail call ptr @of_node_get(ptr noundef %19) #6
  %of_node44 = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 27
  %20 = ptrtoint ptr %of_node44 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call42, ptr %of_node44, align 8
  %read_cmd = getelementptr inbounds %struct.spmi_controller, ptr %call, i32 0, i32 3
  %21 = ptrtoint ptr %read_cmd to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @spmi_read_cmd, ptr %read_cmd, align 8
  %write_cmd = getelementptr inbounds %struct.spmi_controller, ptr %call, i32 0, i32 4
  %22 = ptrtoint ptr %write_cmd to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @spmi_write_cmd, ptr %write_cmd, align 4
  %call45 = tail call i32 @spmi_controller_add(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end30.cleanup_crit_edge, label %do.end50

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end50:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call45) #9
  br label %spmi_controller_put.exit

spmi_controller_put.exit:                         ; preds = %do.end50, %do.end28, %do.end19, %do.end8
  %ret.0 = phi i32 [ -19, %do.end28 ], [ %call45, %do.end50 ], [ -99, %do.end19 ], [ -22, %do.end8 ]
  tail call void @put_device(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %spmi_controller_put.exit, %if.end30.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %spmi_controller_put.exit ], [ -12, %do.end ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_del_controller(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @spmi_controller_remove(ptr noundef %1) #6
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.spmi_controller_put.exit_crit_edge, label %if.then.i

entry.spmi_controller_put.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spmi_controller_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef nonnull %1) #6
  br label %spmi_controller_put.exit

spmi_controller_put.exit:                         ; preds = %if.then.i, %entry.spmi_controller_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spmi_controller_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_read_cmd(ptr noundef %ctrl, i8 noundef zeroext %opc, i8 noundef zeroext %slave_id, i16 noundef zeroext %slave_addr, ptr noundef %__buf, i32 noundef %bc) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %channel = getelementptr inbounds %struct.spmi_controller_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %mul = mul i32 %3, 768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bc)
  %cmp = icmp ugt i32 %bc, 16
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.22, i32 noundef 16, i32 noundef %bc) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %opc to i32
  %4 = zext i8 %opc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %opc, label %do.end6 [
    i8 96, label %if.end.sw.epilog_crit_edge
    i8 32, label %sw.bb2
    i8 56, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.25, i32 noundef %conv) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %if.end.sw.epilog_crit_edge
  %op_code.0 = phi i32 [ -2046820352, %sw.bb3 ], [ -2080374784, %sw.bb2 ], [ -2113929216, %if.end.sw.epilog_crit_edge ]
  %sub = shl nuw nsw i32 %bc, 20
  %conv12 = zext i8 %slave_id to i32
  %and = shl nuw nsw i32 %conv12, 16
  %conv15 = zext i16 %slave_addr to i32
  %shl10 = or i32 %and, %conv15
  %or11 = or i32 %shl10, 2146435072
  %or14 = add i32 %or11, %sub
  %or18 = or i32 %or14, %op_code.0
  %lock = getelementptr inbounds %struct.spmi_controller_dev, ptr %1, i32 0, i32 3
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %base = getelementptr inbounds %struct.spmi_controller_dev, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  %add.ptr32 = getelementptr i8, ptr %add.ptr, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %5) #6, !srcloc !101
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %call35 = tail call fastcc i32 @spmi_controller_wait_for_done(ptr noundef %ctrl, ptr noundef %1, ptr noundef %9, i8 noundef zeroext %slave_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool.not = icmp eq i32 %call35, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end68

for.cond.preheader:                               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bc)
  %cmp40135.not = icmp eq i32 %bc, 0
  br i1 %cmp40135.not, label %for.cond.preheader.do.body74_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body74_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body74

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mul45 = shl nuw nsw i32 %conv12, 5
  %rem = and i32 %bc, 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mul39138 = phi i32 [ 0, %for.body.lr.ph ], [ %mul39, %for.inc.for.body_crit_edge ]
  %buf.0137 = phi ptr [ %__buf, %for.body.lr.ph ], [ %add.ptr59, %for.inc.for.body_crit_edge ]
  %i.0136 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr43 = getelementptr i8, ptr %11, i32 %mul
  %add.ptr46 = getelementptr i8, ptr %add.ptr43, i32 %mul45
  %add.ptr47 = getelementptr i8, ptr %add.ptr46, i32 516
  %add.ptr50 = getelementptr i8, ptr %add.ptr47, i32 %mul39138
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #6, !srcloc !102
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %data, align 4
  %sub56 = sub i32 %bc, %mul39138
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub56)
  %tobool57.not = icmp ult i32 %sub56, 4
  br i1 %tobool57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %buf.0137 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %13, ptr %buf.0137, align 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %16 = call ptr @memcpy(ptr %buf.0137, ptr %data, i32 %rem)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then58
  %.sink = phi i32 [ 4, %if.then58 ], [ %rem, %if.else ]
  %add.ptr59 = getelementptr i8, ptr %buf.0137, i32 %.sink
  %inc = add i8 %i.0136, 1
  %conv38 = zext i8 %inc to i32
  %mul39 = shl nuw nsw i32 %conv38, 2
  %cmp40 = icmp ult i32 %mul39, %bc
  br i1 %cmp40, label %for.inc.for.body_crit_edge, label %for.inc.do.body74_crit_edge

for.inc.do.body74_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body74

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end68:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call24) #6
  %add = add nuw nsw i32 %bc, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.28, i32 noundef %conv, i32 noundef %conv12, i32 noundef %conv15, i32 noundef %add) #9
  br label %cleanup

do.body74:                                        ; preds = %for.inc.do.body74_crit_edge, %for.cond.preheader.do.body74_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call24) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spmi_read_cmd.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spmi_read_cmd, %if.then80)) #6
          to label %cleanup [label %if.then80], !srcloc !104

if.then80:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spmi_read_cmd.__UNIQUE_ID_ddebug228, ptr noundef %ctrl, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23, i32 noundef %conv12, i32 noundef %conv15, i32 noundef %bc, ptr noundef %__buf) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %do.body74, %do.end68, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ 0, %if.then80 ], [ %call35, %do.end68 ], [ 0, %do.body74 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_write_cmd(ptr noundef %ctrl, i8 noundef zeroext %opc, i8 noundef zeroext %slave_id, i16 noundef zeroext %slave_addr, ptr noundef %__buf, i32 noundef %bc) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %channel = getelementptr inbounds %struct.spmi_controller_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %mul = mul i32 %3, 768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bc)
  %cmp = icmp ugt i32 %bc, 16
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.22, i32 noundef 16, i32 noundef %bc) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %opc to i32
  %4 = zext i8 %opc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %opc, label %do.end6 [
    i8 64, label %if.end.sw.epilog_crit_edge
    i8 0, label %sw.bb2
    i8 48, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.39, i32 noundef %conv) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %if.end.sw.epilog_crit_edge
  %op_code.0 = phi i32 [ -2063597568, %sw.bb3 ], [ -2097152000, %sw.bb2 ], [ -2130706432, %if.end.sw.epilog_crit_edge ]
  %sub = shl nuw nsw i32 %bc, 20
  %conv12 = zext i8 %slave_id to i32
  %and = shl nuw nsw i32 %conv12, 16
  %conv15 = zext i16 %slave_addr to i32
  %shl10 = or i32 %and, %conv15
  %or11 = or i32 %shl10, 2146435072
  %or14 = add i32 %or11, %sub
  %or18 = or i32 %or14, %op_code.0
  %lock = getelementptr inbounds %struct.spmi_controller_dev, ptr %1, i32 0, i32 3
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bc)
  %cmp31127.not = icmp eq i32 %bc, 0
  br i1 %cmp31127.not, label %sw.epilog.do.body48_crit_edge, label %for.body.lr.ph

sw.epilog.do.body48_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48

for.body.lr.ph:                                   ; preds = %sw.epilog
  %rem = and i32 %bc, 3
  %base = getelementptr inbounds %struct.spmi_controller_dev, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.body40.for.body_crit_edge, %for.body.lr.ph
  %mul30130 = phi i32 [ 0, %for.body.lr.ph ], [ %mul30, %do.body40.for.body_crit_edge ]
  %i.0129 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %do.body40.for.body_crit_edge ]
  %buf.0128 = phi ptr [ %__buf, %for.body.lr.ph ], [ %add.ptr, %do.body40.for.body_crit_edge ]
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %data, align 4
  %sub35 = sub i32 %bc, %mul30130
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub35)
  %tobool.not = icmp ult i32 %sub35, 4
  br i1 %tobool.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %buf.0128 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %data.0.copyload = load i32, ptr %buf.0128, align 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %data.0.copyload, ptr %data, align 4
  br label %do.body40

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = call ptr @memcpy(ptr %data, ptr %buf.0128, i32 %rem)
  br label %do.body40

do.body40:                                        ; preds = %if.else, %if.then36
  %.sink = phi i32 [ 4, %if.then36 ], [ %rem, %if.else ]
  %add.ptr = getelementptr i8, ptr %buf.0128, i32 %.sink
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %data.0.data.0.data.0. = load i32, ptr %data, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %data.0.data.0.data.0.)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr43 = getelementptr i8, ptr %12, i32 %mul
  %add.ptr44 = getelementptr i8, ptr %add.ptr43, i32 260
  %add.ptr47 = getelementptr i8, ptr %add.ptr44, i32 %mul30130
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %10) #6, !srcloc !101
  %inc = add i8 %i.0129, 1
  %conv29 = zext i8 %inc to i32
  %mul30 = shl nuw nsw i32 %conv29, 2
  %cmp31 = icmp ult i32 %mul30, %bc
  br i1 %cmp31, label %do.body40.for.body_crit_edge, label %do.body40.do.body48_crit_edge

do.body40.do.body48_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48

do.body40.for.body_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body48:                                        ; preds = %do.body40.do.body48_crit_edge, %sw.epilog.do.body48_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %base51 = getelementptr inbounds %struct.spmi_controller_dev, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %base51 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base51, align 4
  %add.ptr52 = getelementptr i8, ptr %15, i32 %mul
  %add.ptr53 = getelementptr i8, ptr %add.ptr52, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %13) #6, !srcloc !101
  %16 = ptrtoint ptr %base51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base51, align 4
  %call56 = tail call fastcc i32 @spmi_controller_wait_for_done(ptr noundef %ctrl, ptr noundef %1, ptr noundef %17, i8 noundef zeroext %slave_id)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool58.not = icmp eq i32 %call56, 0
  br i1 %tobool58.not, label %do.body68, label %do.end62

do.end62:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.42, i32 noundef %conv, i32 noundef %conv12, i32 noundef %conv15, i32 noundef %bc) #9
  br label %cleanup

do.body68:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spmi_write_cmd.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spmi_write_cmd, %if.then74)) #6
          to label %cleanup [label %if.then74], !srcloc !104

if.then74:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spmi_write_cmd.__UNIQUE_ID_ddebug229, ptr noundef %ctrl, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.37, i32 noundef %conv12, i32 noundef %conv15, i32 noundef %bc, ptr noundef %__buf) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %do.body68, %do.end62, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ 0, %if.then74 ], [ %call56, %do.end62 ], [ 0, %do.body68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_controller_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spmi_controller_wait_for_done(ptr noundef %dev, ptr nocapture noundef readonly %ctrl_dev, ptr noundef %base, i8 noundef zeroext %sid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.spmi_controller_dev, ptr %ctrl_dev, i32 0, i32 4
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  %mul = mul i32 %1, 768
  %conv = zext i8 %sid to i32
  %mul1 = shl nuw nsw i32 %conv, 5
  %add = add nuw nsw i32 %mul1, 512
  %add2 = add i32 %add, %mul
  %add.ptr = getelementptr i8, ptr %base, i32 %add2
  br label %do.body

do.body:                                          ; preds = %if.end18.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 1000, %entry ], [ %dec, %if.end18.do.body_crit_edge ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !102
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end18, label %if.then

if.then:                                          ; preds = %do.body
  %and4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body8, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %3) #9
  br label %cleanup

do.body8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spmi_controller_wait_for_done.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spmi_controller_wait_for_done, %if.then14)) #6
          to label %cleanup [label %if.then14], !srcloc !104

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spmi_controller_wait_for_done.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %3) #6
  br label %cleanup

if.end18:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %dec = add nsw i32 %timeout.0, -1
  %tobool20.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool20.not, label %do.end24, label %if.end18.do.body_crit_edge

if.end18.do.body_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.32, i32 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.then14, %do.body8, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -110, %do.end24 ], [ 0, %if.then14 ], [ 0, %do.body8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spmi_controller_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !67, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__initcall__kmod_hisi_spmi_controller__230_357_spmi_controller_init2, !1, !"__initcall__kmod_hisi_spmi_controller__230_357_spmi_controller_init2", i1 false, i1 false}
!1 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 357, i32 1}
!2 = !{ptr @__exitcall_spmi_controller_exit, !3, !"__exitcall_spmi_controller_exit", i1 false, i1 false}
!3 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 363, i32 1}
!4 = !{ptr @__UNIQUE_ID_file231, !5, !"__UNIQUE_ID_file231", i1 false, i1 false}
!5 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 365, i32 1}
!6 = !{ptr @__UNIQUE_ID_license232, !5, !"__UNIQUE_ID_license232", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version233, !8, !"__UNIQUE_ID_version233", i1 false, i1 false}
!8 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 366, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias234, !14, !"__UNIQUE_ID_alias234", i1 false, i1 false}
!14 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 367, i32 1}
!15 = !{ptr @spmi_controller_driver, !16, !"spmi_controller_driver", i1 false, i1 false}
!16 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 344, i32 31}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 272, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @spmi_controller_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @spmi_controller_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 280, i32 3}
!27 = !{ptr @spmi_controller_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @spmi_controller_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 288, i32 3}
!31 = !{ptr @spmi_controller_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @spmi_controller_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 293, i32 48}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 296, i32 3}
!37 = !{ptr @spmi_controller_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @spmi_controller_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @spmi_controller_probe.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 304, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 316, i32 3}
!44 = !{ptr @spmi_controller_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @spmi_controller_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 123, i32 3}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @spmi_read_cmd._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @spmi_read_cmd._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 140, i32 3}
!53 = !{ptr @spmi_read_cmd._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @spmi_read_cmd._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 177, i32 3}
!57 = !{ptr @spmi_read_cmd._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @spmi_read_cmd._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 181, i32 3}
!61 = !{ptr @spmi_read_cmd.__UNIQUE_ID_ddebug228, !60, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 97, i32 5}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @spmi_controller_wait_for_done._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @spmi_controller_wait_for_done._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 101, i32 4}
!69 = !{ptr @spmi_controller_wait_for_done.__UNIQUE_ID_ddebug227, !68, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 107, i32 2}
!72 = !{ptr @spmi_controller_wait_for_done._entry.34, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @spmi_controller_wait_for_done._entry_ptr.36, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 199, i32 3}
!76 = !{ptr @spmi_write_cmd._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @spmi_write_cmd._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 216, i32 3}
!80 = !{ptr @spmi_write_cmd._entry.38, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @spmi_write_cmd._entry_ptr.40, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 254, i32 3}
!84 = !{ptr @spmi_write_cmd._entry.41, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @spmi_write_cmd._entry_ptr.43, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 257, i32 3}
!88 = !{ptr @spmi_write_cmd.__UNIQUE_ID_ddebug229, !87, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!89 = !{ptr @spmi_controller_match_table, !90, !"spmi_controller_match_table", i1 false, i1 false}
!90 = !{!"../drivers/spmi/hisi-spmi-controller.c", i32 336, i32 34}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2153866372}
!101 = !{i64 4213780}
!102 = !{i64 4214198}
!103 = !{i64 2153867310}
!104 = !{i64 2148764671, i64 2148764676, i64 2148764689, i64 2148764733, i64 2148764767, i64 2148764788}
!105 = !{i64 2153876628}
!106 = !{i64 2153877214}
!107 = !{i64 2153855669}
