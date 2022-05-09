; ModuleID = '/llk/IR_all_yes/drivers/hwmon/lm70.c_pt.bc'
source_filename = "../drivers/hwmon/lm70.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.lm70 = type { ptr, %struct.mutex, i32 }

@__initcall__kmod_lm70__231_202_lm70_driver_init6 = internal global ptr @lm70_driver_init, section ".initcall6.init", align 4
@lm70_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @lm70_ids, ptr @lm70_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lm70_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_lm70_driver_exit = internal global ptr @lm70_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [32 x i8] c"lm70.author=Kaiwan N Billimoria\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [54 x i8] c"lm70.description=NS LM70 and compatibles Linux driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [29 x i8] c"lm70.file=drivers/hwmon/lm70\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [17 x i8] c"lm70.license=GPL\00", section ".modinfo", align 1
@lm70_ids = internal constant { [6 x %struct.spi_device_id], [40 x i8] } { [6 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"lm70\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"tmp121\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"tmp122\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"lm71\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"lm74\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm70\00", [27 x i8] zeroinitializer }, align 32
@lm70_of_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm70\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp121\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp122\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm71\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm74\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@lm70_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&p_lm70->lock\00", [18 x i8] zeroinitializer }, align 32
@lm70_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @lm70_group, ptr null], [24 x i8] zeroinitializer }, align 32
@lm70_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm70_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm70_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_temp1_input, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_temp1_input = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_input_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@temp1_input_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 64, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"spi_write_then_read failed with status %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_input_show\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/hwmon/lm70.c\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@temp1_input_show._entry_ptr = internal global ptr @temp1_input_show._entry, section ".printk_index", align 4
@temp1_input_show.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.8, i8 0, i8 17, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"rxbuf[0] : 0x%02x rxbuf[1] : 0x%02x raw=0x%04x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"lm70_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 193, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant [9 x i8] c"lm70_ids\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 183, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 195, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"lm70_of_ids\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 125, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 173, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"lm70_groups\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"lm70_group\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 120, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"lm70_attrs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 115, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"dev_attr_temp1_input\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 113, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 63, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 68, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [24 x i8] c"../drivers/hwmon/lm70.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 107, i32 24 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_lm70_driver_exit, ptr @__initcall__kmod_lm70__231_202_lm70_driver_init6, ptr @lm70_driver_exit, ptr @temp1_input_show._entry, ptr @temp1_input_show._entry_ptr, ptr @lm70_driver, ptr @lm70_ids, ptr @.str, ptr @lm70_of_ids, ptr @lm70_probe.__key, ptr @.str.1, ptr @lm70_groups, ptr @lm70_group, ptr @lm70_attrs, ptr @dev_attr_temp1_input, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm70_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm70_ids to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm70_of_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm70_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm70_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm70_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm70_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp1_input to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp1_input_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm70_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @lm70_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm70_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @lm70_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm70_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dev_fwnode(ptr noundef %spi) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @device_get_match_data(ptr noundef %spi) #6
  %0 = ptrtoint ptr %call2 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call ptr @spi_get_device_id(ptr noundef %spi) #6
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call3, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %chip.0 = phi i32 [ %0, %if.then ], [ %2, %if.else ]
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 8
  %and = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 100, i32 noundef 3520) #6
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %do.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.lm70, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @lm70_probe.__key) #6
  %chip11 = getelementptr inbounds %struct.lm70, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %chip11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %chip.0, ptr %chip11, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %call.i, align 4
  %modalias = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 11
  %call14 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %spi, ptr noundef %modalias, ptr noundef nonnull %call.i, ptr noundef nonnull @lm70_groups) #6
  %cmp.i.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call14 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %7, i32 0
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %do.body ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_input_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %rxbuf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxbuf) #6
  %4 = ptrtoint ptr %rxbuf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %rxbuf, align 1, !annotation !51
  %5 = getelementptr inbounds [2 x i8], ptr %rxbuf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !51
  %lock = getelementptr inbounds %struct.lm70, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @spi_write_then_read(ptr noundef %3, ptr noundef null, i32 noundef 0, ptr noundef nonnull %rxbuf, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call3) #9
  br label %out

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rxbuf, align 1
  %conv = zext i8 %8 to i16
  %shl = shl nuw i16 %conv, 8
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %5, align 1
  %conv8 = zext i8 %10 to i16
  %add = or i16 %shl, %conv8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @temp1_input_show.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@temp1_input_show, %do.end24)) #6
          to label %if.then16 [label %do.end24], !srcloc !52

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rxbuf, align 1
  %conv18 = zext i8 %12 to i32
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %5, align 1
  %conv20 = zext i8 %14 to i32
  %conv21 = sext i16 %add to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @temp1_input_show.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %conv21) #6
  br label %do.end24

do.end24:                                         ; preds = %if.then16, %if.end5
  %chip = getelementptr inbounds %struct.lm70, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chip, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.end24.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %do.end24.sw.bb26_crit_edge
    i32 4, label %do.end24.sw.bb26_crit_edge54
    i32 3, label %do.end24.sw.bb26_crit_edge55
    i32 2, label %sw.bb31
  ]

do.end24.sw.bb26_crit_edge55:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb26

do.end24.sw.bb26_crit_edge54:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb26

do.end24.sw.bb26_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb26

do.end24.sw.epilog_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  %18 = sdiv i16 %add, 32
  %div = sext i16 %18 to i32
  %mul = mul nsw i32 %div, 250
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.end24.sw.bb26_crit_edge, %do.end24.sw.bb26_crit_edge54, %do.end24.sw.bb26_crit_edge55
  %19 = sdiv i16 %add, 8
  %div28 = sext i16 %19 to i32
  %mul29 = mul nsw i32 %div28, 625
  %div30 = sdiv i32 %mul29, 10
  br label %sw.epilog

sw.bb31:                                          ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  %20 = sdiv i16 %add, 4
  %div33 = sext i16 %20 to i32
  %mul34 = mul nsw i32 %div33, 3125
  %div35 = sdiv i32 %mul34, 100
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb26, %sw.bb, %do.end24.sw.epilog_crit_edge
  %val.0 = phi i32 [ 0, %do.end24.sw.epilog_crit_edge ], [ %div35, %sw.bb31 ], [ %div30, %sw.bb26 ], [ %mul, %sw.bb ]
  %call36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %val.0)
  br label %out

out:                                              ; preds = %sw.epilog, %do.end
  %status.0 = phi i32 [ %call3, %do.end ], [ %call36, %sw.epilog ]
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %out ], [ -512, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxbuf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !24, !26, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_lm70__231_202_lm70_driver_init6, !1, !"__initcall__kmod_lm70__231_202_lm70_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/lm70.c", i32 202, i32 1}
!2 = !{ptr @__exitcall_lm70_driver_exit, !1, !"__exitcall_lm70_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author232, !4, !"__UNIQUE_ID_author232", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/lm70.c", i32 204, i32 1}
!5 = !{ptr @__UNIQUE_ID_description233, !6, !"__UNIQUE_ID_description233", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/lm70.c", i32 205, i32 1}
!7 = !{ptr @__UNIQUE_ID_file234, !8, !"__UNIQUE_ID_file234", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/lm70.c", i32 206, i32 1}
!9 = !{ptr @__UNIQUE_ID_license235, !8, !"__UNIQUE_ID_license235", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/lm70.c", i32 195, i32 11}
!12 = !{ptr @lm70_driver, !13, !"lm70_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/lm70.c", i32 193, i32 26}
!14 = !{ptr @lm70_ids, !15, !"lm70_ids", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/lm70.c", i32 183, i32 35}
!16 = !{ptr @lm70_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/lm70.c", i32 173, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @lm70_groups, !20, !"lm70_groups", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/lm70.c", i32 120, i32 1}
!21 = !{ptr @lm70_group, !20, !"lm70_group", i1 false, i1 false}
!22 = !{ptr @lm70_attrs, !23, !"lm70_attrs", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/lm70.c", i32 115, i32 26}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/lm70.c", i32 113, i32 8}
!26 = !{ptr @dev_attr_temp1_input, !25, !"dev_attr_temp1_input", i1 false, i1 false}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/lm70.c", i32 63, i32 3}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @temp1_input_show._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @temp1_input_show._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/lm70.c", i32 68, i32 2}
!37 = !{ptr @temp1_input_show.__UNIQUE_ID_ddebug230, !36, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/lm70.c", i32 107, i32 24}
!40 = !{ptr @lm70_of_ids, !41, !"lm70_of_ids", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/lm70.c", i32 125, i32 34}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"auto-init"}
!52 = !{i64 2148956446, i64 2148956451, i64 2148956464, i64 2148956508, i64 2148956542, i64 2148956563}
