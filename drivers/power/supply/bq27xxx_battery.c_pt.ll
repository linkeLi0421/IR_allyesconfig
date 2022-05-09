; ModuleID = '/llk/IR_all_yes/drivers/power/supply/bq27xxx_battery.c_pt.bc'
source_filename = "../drivers/power/supply/bq27xxx_battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bq27xxx_battery_update\22, \22a\22\09"
module asm "\09.weak\09__crc_bq27xxx_battery_update\09\09\09\09"
module asm "\09.long\09__crc_bq27xxx_battery_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bq27xxx_battery_update:\09\09\09\09\09"
module asm "\09.asciz \09\22bq27xxx_battery_update\22\09\09\09\09\09"
module asm "__kstrtabns_bq27xxx_battery_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bq27xxx_battery_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_bq27xxx_battery_setup\09\09\09\09"
module asm "\09.long\09__crc_bq27xxx_battery_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bq27xxx_battery_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22bq27xxx_battery_setup\22\09\09\09\09\09"
module asm "__kstrtabns_bq27xxx_battery_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bq27xxx_battery_teardown\22, \22a\22\09"
module asm "\09.weak\09__crc_bq27xxx_battery_teardown\09\09\09\09"
module asm "\09.long\09__crc_bq27xxx_battery_teardown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bq27xxx_battery_teardown:\09\09\09\09\09"
module asm "\09.asciz \09\22bq27xxx_battery_teardown\22\09\09\09\09\09"
module asm "__kstrtabns_bq27xxx_battery_teardown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.43 = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bq27xxx_dm_reg = type { i8, i8, i8, i16, i16 }
%struct.bq27xxx_reg_cache = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bq27xxx_device_info = type { ptr, i32, i32, i32, ptr, ptr, i32, %struct.bq27xxx_access_methods, %struct.bq27xxx_reg_cache, i32, i32, %struct.delayed_work, ptr, %struct.list_head, %struct.mutex, ptr }
%struct.bq27xxx_access_methods = type { ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }
%struct.bq27xxx_dm_buf = type { i8, i8, [32 x i8], i8, i8 }

@__param_str_dt_monitored_battery_updates_nvm = internal constant [49 x i8] c"bq27xxx_battery.dt_monitored_battery_updates_nvm\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@bq27xxx_dt_to_nvm = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_dt_monitored_battery_updates_nvm = internal constant %struct.kernel_param { ptr @__param_str_dt_monitored_battery_updates_nvm, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @bq27xxx_dt_to_nvm } }, section "__param", align 4
@__UNIQUE_ID_dt_monitored_battery_updates_nvmtype183 = internal constant [63 x i8] c"bq27xxx_battery.parmtype=dt_monitored_battery_updates_nvm:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_dt_monitored_battery_updates_nvm184 = internal constant [213 x i8] c"bq27xxx_battery.parm=dt_monitored_battery_updates_nvm:Devicetree monitored-battery config updates data memory on NVM/flash chips.\0AUsers must set this =0 when installing a different type of battery!\0ADefault is =1.\00", section ".modinfo", align 1
@__param_str_poll_interval = internal constant [30 x i8] c"bq27xxx_battery.poll_interval\00", align 1
@param_ops_poll_interval = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @poll_interval_param_set, ptr @param_get_uint, ptr null }, [16 x i8] zeroinitializer }, align 32
@poll_interval = internal global { i32, [28 x i8] } { i32 360, [28 x i8] zeroinitializer }, align 32
@__param_poll_interval = internal constant %struct.kernel_param { ptr @__param_str_poll_interval, ptr null, ptr @param_ops_poll_interval, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @poll_interval } }, section "__param", align 4
@__UNIQUE_ID_poll_interval185 = internal constant [89 x i8] c"bq27xxx_battery.parm=poll_interval:battery poll interval in seconds - 0 disables polling\00", section ".modinfo", align 1
@bq27xxx_battery_update.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@bq27xxx_battery_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1770, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"battery is not calibrated! ignoring capacity values\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bq27xxx_battery_update\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/bq27xxx_battery.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bq27xxx_battery_update._entry_ptr = internal global ptr @bq27xxx_battery_update._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_bq27xxx_battery_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_bq27xxx_battery_update = external dso_local constant [0 x i8], align 1
@__ksymtab_bq27xxx_battery_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bq27xxx_battery_update to i32), ptr @__kstrtab_bq27xxx_battery_update, ptr @__kstrtabns_bq27xxx_battery_update }, section "___ksymtab_gpl+bq27xxx_battery_update", align 4
@bq27xxx_battery_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&(&di->work)->work)\00", [58 x i8] zeroinitializer }, align 32
@bq27xxx_battery_setup.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(&di->work)->timer\00", [44 x i8] zeroinitializer }, align 32
@bq27xxx_battery_setup.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&di->lock\00", [22 x i8] zeroinitializer }, align 32
@bq27xxx_chip_data = internal constant { [32 x %struct.anon.43], [192 x i8] } { [32 x %struct.anon.43] [%struct.anon.43 zeroinitializer, %struct.anon.43 { i32 193, i32 0, ptr @bq27000_regs, ptr null, ptr @bq27000_props, i32 19 }, %struct.anon.43 { i32 193, i32 0, ptr @bq27010_regs, ptr null, ptr @bq27010_props, i32 17 }, %struct.anon.43 { i32 2, i32 0, ptr @bq2750x_regs, ptr null, ptr @bq27510g3_props, i32 15 }, %struct.anon.43 { i32 2, i32 0, ptr @bq27510g3_regs, ptr null, ptr @bq27510g3_props, i32 15 }, %struct.anon.43 { i32 2, i32 0, ptr @bq27510g3_regs, ptr null, ptr @bq27510g3_props, i32 15 }, %struct.anon.43 { i32 2, i32 68433522, ptr @bq27500_regs, ptr null, ptr @bq27500_props, i32 18 }, %struct.anon.43 { i32 2, i32 0, ptr @bq27500_regs, ptr null, ptr @bq27500_props, i32 18 }, %struct.anon.43 { i32 2, i32 0, ptr @bq27500_regs, ptr null, ptr @bq27500_props, i32 18 }, %struct.anon.43 { i32 2, i32 0, ptr @bq27510g3_regs, ptr null, ptr @bq27510g3_props, i32 15 }, %struct.anon.43 { i32 2, i32 0, ptr @bq27520g1_regs, ptr null, ptr @bq27520g1_props, i32 17 }, %struct.anon.43 { i32 2, i32 0, ptr @bq27520g2_regs, ptr null, ptr @bq27500_props, i32 18 }, %struct.anon.43 { i32 2, i32 0, ptr @bq27520g3_regs, ptr null, ptr @bq27520g3_props, i32 17 }, %struct.anon.43 { i32 2, i32 0, ptr @bq27520g4_regs, ptr null, ptr @bq27520g4_props, i32 14 }, %struct.anon.43 { i32 0, i32 0, ptr @bq27521_regs, ptr null, ptr @bq27521_props, i32 6 }, %struct.anon.43 { i32 4, i32 0, ptr @bq27530_regs, ptr null, ptr @bq27530_props, i32 15 }, %struct.anon.43 { i32 4, i32 0, ptr @bq27530_regs, ptr null, ptr @bq27530_props, i32 15 }, %struct.anon.43 { i32 2, i32 0, ptr @bq27541_regs, ptr null, ptr @bq27541_props, i32 16 }, %struct.anon.43 { i32 2, i32 0, ptr @bq27541_regs, ptr null, ptr @bq27541_props, i32 16 }, %struct.anon.43 { i32 2, i32 0, ptr @bq27541_regs, ptr null, ptr @bq27541_props, i32 16 }, %struct.anon.43 { i32 2, i32 0, ptr @bq27541_regs, ptr null, ptr @bq27541_props, i32 16 }, %struct.anon.43 { i32 2, i32 68433522, ptr @bq27545_regs, ptr null, ptr @bq27545_props, i32 15 }, %struct.anon.43 { i32 28, i32 -2147450880, ptr @bq27421_regs, ptr @bq27411_dm_regs, ptr @bq27421_props, i32 12 }, %struct.anon.43 { i32 28, i32 -2147450880, ptr @bq27421_regs, ptr @bq27421_dm_regs, ptr @bq27421_props, i32 12 }, %struct.anon.43 { i32 12, i32 68433522, ptr @bq27421_regs, ptr @bq27425_dm_regs, ptr @bq27421_props, i32 12 }, %struct.anon.43 { i32 28, i32 -2147450880, ptr @bq27421_regs, ptr @bq27426_dm_regs, ptr @bq27421_props, i32 12 }, %struct.anon.43 { i32 28, i32 -2147450880, ptr @bq27421_regs, ptr null, ptr @bq27421_props, i32 12 }, %struct.anon.43 { i32 28, i32 -2147450880, ptr @bq27421_regs, ptr null, ptr @bq27421_props, i32 12 }, %struct.anon.43 { i32 32, i32 0, ptr @bq27z561_regs, ptr null, ptr @bq27z561_props, i32 17 }, %struct.anon.43 { i32 32, i32 0, ptr @bq28z610_regs, ptr null, ptr @bq28z610_props, i32 17 }, %struct.anon.43 { i32 450, i32 0, ptr @bq34z100_regs, ptr null, ptr @bq34z100_props, i32 19 }, %struct.anon.43 { i32 32, i32 0, ptr @bq78z100_regs, ptr null, ptr @bq78z100_props, i32 17 }], [192 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register battery\0A\00", [36 x i8] zeroinitializer }, align 32
@bq27xxx_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.101, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bq27xxx_list_lock, i64 52), ptr getelementptr (i8, ptr @bq27xxx_list_lock, i64 52) }, ptr @bq27xxx_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.102, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@bq27xxx_battery_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @bq27xxx_battery_devices, ptr @bq27xxx_battery_devices }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_bq27xxx_battery_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_bq27xxx_battery_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_bq27xxx_battery_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bq27xxx_battery_setup to i32), ptr @__kstrtab_bq27xxx_battery_setup, ptr @__kstrtabns_bq27xxx_battery_setup }, section "___ksymtab_gpl+bq27xxx_battery_setup", align 4
@__kstrtab_bq27xxx_battery_teardown = external dso_local constant [0 x i8], align 1
@__kstrtabns_bq27xxx_battery_teardown = external dso_local constant [0 x i8], align 1
@__ksymtab_bq27xxx_battery_teardown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bq27xxx_battery_teardown to i32), ptr @__kstrtab_bq27xxx_battery_teardown, ptr @__kstrtabns_bq27xxx_battery_teardown }, section "___ksymtab_gpl+bq27xxx_battery_teardown", align 4
@__UNIQUE_ID_author196 = internal constant [60 x i8] c"bq27xxx_battery.author=Rodolfo Giometti <giometti@linux.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description197 = internal constant [59 x i8] c"bq27xxx_battery.description=BQ27xxx battery monitor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file198 = internal constant [58 x i8] c"bq27xxx_battery.file=drivers/power/supply/bq27xxx_battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license199 = internal constant [28 x i8] c"bq27xxx_battery.license=GPL\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@bq27xxx_read.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 1, i8 24, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq27xxx_battery\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bq27xxx_read\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to read register 0x%02x (index %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@bq27xxx_battery_read_temperature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1662, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error reading temperature\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bq27xxx_battery_read_temperature\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@bq27xxx_battery_read_temperature._entry_ptr = internal global ptr @bq27xxx_battery_read_temperature._entry, section ".printk_index", align 4
@bq27xxx_battery_read_time.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 1, i8 -88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bq27xxx_battery_read_time\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error reading time register %02x: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@bq27xxx_battery_read_charge.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 -123, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bq27xxx_battery_read_charge\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error reading charge register %02x: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@bq27xxx_battery_read_soc.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 1, i8 -127, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bq27xxx_battery_read_soc\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error reading State-of-Charge\0A\00", [33 x i8] zeroinitializer }, align 32
@bq27xxx_battery_read_energy.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 1, i8 -102, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bq27xxx_battery_read_energy\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error reading available energy\0A\00", [32 x i8] zeroinitializer }, align 32
@bq27xxx_battery_read_cyct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1682, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error reading cycle count total\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bq27xxx_battery_read_cyct\00", [38 x i8] zeroinitializer }, align 32
@bq27xxx_battery_read_cyct._entry_ptr = internal global ptr @bq27xxx_battery_read_cyct._entry, section ".printk_index", align 4
@bq27xxx_battery_read_dcap.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 1, i8 -108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bq27xxx_battery_read_dcap\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error reading initial last measured discharge\0A\00", [49 x i8] zeroinitializer }, align 32
@bq27000_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\06\FF\08\14\0A\16\18\1C&\0C\FF\12*\22\0Bv$\FF\FF\FF\FF\FF", [41 x i8] zeroinitializer }, align 32
@bq27000_props = internal global { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 61, i32 62, i32 6, i32 24, i32 26, i32 22, i32 7, i32 45, i32 21, i32 2, i32 74], [52 x i8] zeroinitializer }, align 32
@bq27010_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\06\FF\08\14\0A\16\18\1C&\0C\FF\12*\FF\0Bv\FF\FF\FF\FF\FF\FF", [41 x i8] zeroinitializer }, align 32
@bq27010_props = internal global { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 61, i32 62, i32 6, i32 24, i32 26, i32 22, i32 7, i32 2, i32 74], [60 x i8] zeroinitializer }, align 32
@bq2750x_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\06(\08\14\0A\16\FF\1A\FF\0C\10\12*\FF,<\FFa>?@`", [41 x i8] zeroinitializer }, align 32
@bq27510g3_props = internal global { [15 x i32], [36 x i8] } { [15 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 6, i32 24, i32 26, i32 22, i32 7, i32 2, i32 74], [36 x i8] zeroinitializer }, align 32
@bq27510g3_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\06(\08\14\0A\16\FF\1A\FF\0C\10\12\1E\FF .\FFa>?@`", [41 x i8] zeroinitializer }, align 32
@bq27500_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\06\FF\08\14\0A\16\18\1C&\0C\10\12*\22,<$a>?@`", [41 x i8] zeroinitializer }, align 32
@bq27500_props = internal global { [18 x i32], [56 x i8] } { [18 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 62, i32 6, i32 24, i32 26, i32 22, i32 7, i32 45, i32 21, i32 2, i32 74], [56 x i8] zeroinitializer }, align 32
@bq27520g1_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\06\FF\08\14\0A\16\18\1C&\0C\10\12\FF\22,<$a>?@`", [41 x i8] zeroinitializer }, align 32
@bq27520g1_props = internal global { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 62, i32 6, i32 24, i32 26, i32 22, i32 45, i32 21, i32 2, i32 74], [60 x i8] zeroinitializer }, align 32
@bq27520g2_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\066\08\14\0A\16\18\1C&\0C\10\12*\22,<$a>?@`", [41 x i8] zeroinitializer }, align 32
@bq27520g3_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\066\08\14\0A\16\FF\1C&\0C\10\12*\22,<$a>?@`", [41 x i8] zeroinitializer }, align 32
@bq27520g3_props = internal global { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 6, i32 24, i32 26, i32 22, i32 7, i32 45, i32 21, i32 2, i32 74], [60 x i8] zeroinitializer }, align 32
@bq27520g4_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\06(\08\14\0A\16\FF\1C\FF\0C\10\12\1E\FF \FF\FFa>?@`", [41 x i8] zeroinitializer }, align 32
@bq27520g4_props = internal global { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 6, i32 24, i32 26, i32 7, i32 2, i32 74], [40 x i8] zeroinitializer }, align 32
@bq27521_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\02\0A\FF\0C\0E\08\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [41 x i8] zeroinitializer }, align 32
@bq27521_props = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 3, i32 12, i32 17, i32 52, i32 6], [40 x i8] zeroinitializer }, align 32
@bq27530_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\062\08\14\0A\16\FF\FF\FF\0C\10\12*\FF,\FF$a>?@`", [41 x i8] zeroinitializer }, align 32
@bq27530_props = internal global { [15 x i32], [36 x i8] } { [15 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 6, i32 24, i32 26, i32 21, i32 2, i32 7, i32 74], [36 x i8] zeroinitializer }, align 32
@bq27541_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\06(\08\14\0A\16\FF\FF\FF\0C\10\12*\FF,<$a>?@`", [41 x i8] zeroinitializer }, align 32
@bq27541_props = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 6, i32 24, i32 26, i32 22, i32 7, i32 21, i32 2, i32 74], [32 x i8] zeroinitializer }, align 32
@bq27545_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\06(\08\14\0A\16\FF\FF\FF\0C\10\12*\FF,\FF$a>?@`", [41 x i8] zeroinitializer }, align 32
@bq27545_props = internal global { [15 x i32], [36 x i8] } { [15 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 6, i32 24, i32 26, i32 2, i32 7, i32 21, i32 74], [36 x i8] zeroinitializer }, align 32
@bq27421_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\02\1E\04\10\06\FF\FF\FF\FF\08\0C\0E\FF\FF\1C<\18a>?@`", [41 x i8] zeroinitializer }, align 32
@bq27411_dm_regs = internal global { [3 x %struct.bq27xxx_dm_reg], [40 x i8] } { [3 x %struct.bq27xxx_dm_reg] [%struct.bq27xxx_dm_reg { i8 82, i8 10, i8 2, i16 0, i16 32767 }, %struct.bq27xxx_dm_reg { i8 82, i8 12, i8 2, i16 0, i16 32767 }, %struct.bq27xxx_dm_reg { i8 82, i8 16, i8 2, i16 2800, i16 3700 }], [40 x i8] zeroinitializer }, align 32
@bq27421_props = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 6, i32 24, i32 26, i32 22, i32 74], [48 x i8] zeroinitializer }, align 32
@bq27421_dm_regs = internal global { [3 x %struct.bq27xxx_dm_reg], [40 x i8] } { [3 x %struct.bq27xxx_dm_reg] [%struct.bq27xxx_dm_reg { i8 82, i8 10, i8 2, i16 0, i16 8000 }, %struct.bq27xxx_dm_reg { i8 82, i8 12, i8 2, i16 0, i16 32767 }, %struct.bq27xxx_dm_reg { i8 82, i8 16, i8 2, i16 2500, i16 3700 }], [40 x i8] zeroinitializer }, align 32
@bq27425_dm_regs = internal global { [3 x %struct.bq27xxx_dm_reg], [40 x i8] } { [3 x %struct.bq27xxx_dm_reg] [%struct.bq27xxx_dm_reg { i8 82, i8 12, i8 2, i16 0, i16 32767 }, %struct.bq27xxx_dm_reg { i8 82, i8 14, i8 2, i16 0, i16 32767 }, %struct.bq27xxx_dm_reg { i8 82, i8 18, i8 2, i16 2800, i16 3700 }], [40 x i8] zeroinitializer }, align 32
@bq27426_dm_regs = internal global { [3 x %struct.bq27xxx_dm_reg], [40 x i8] } { [3 x %struct.bq27xxx_dm_reg] [%struct.bq27xxx_dm_reg { i8 82, i8 6, i8 2, i16 0, i16 8000 }, %struct.bq27xxx_dm_reg { i8 82, i8 8, i8 2, i16 0, i16 32767 }, %struct.bq27xxx_dm_reg { i8 82, i8 10, i8 2, i16 2500, i16 3700 }], [40 x i8] zeroinitializer }, align 32
@bq27z561_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\06\FF\08\14\0A\16\18\FF\FF\FF\10\12*\22,<\22a>?@`", [41 x i8] zeroinitializer }, align 32
@bq27z561_props = internal global { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 62, i32 6, i32 24, i32 26, i32 22, i32 7, i32 21, i32 2, i32 74], [60 x i8] zeroinitializer }, align 32
@bq28z610_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\06\FF\08\14\0A\16\18\FF\FF\FF\10\12*\22,<\22a>?@`", [41 x i8] zeroinitializer }, align 32
@bq28z610_props = internal global { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 62, i32 6, i32 24, i32 26, i32 22, i32 7, i32 21, i32 2, i32 74], [60 x i8] zeroinitializer }, align 32
@bq34z100_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\0C*\08\0A\0E\18\1A\1E\FF\FF\04\06,$\02<\22a>?@`", [41 x i8] zeroinitializer }, align 32
@bq34z100_props = internal global { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 61, i32 62, i32 6, i32 24, i32 26, i32 22, i32 7, i32 45, i32 21, i32 2, i32 74], [52 x i8] zeroinitializer }, align 32
@bq78z100_regs = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\06(\08\14\0A\16\18\1C\FF\FF\10\12*\FF,<\22a>?@`", [41 x i8] zeroinitializer }, align 32
@bq78z100_props = internal global { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 62, i32 6, i32 24, i32 26, i32 22, i32 7, i32 21, i32 2, i32 74], [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Texas Instruments\00", [46 x i8] zeroinitializer }, align 32
@bq27xxx_battery_current_and_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1850, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error reading current\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bq27xxx_battery_current_and_status\00", [61 x i8] zeroinitializer }, align 32
@bq27xxx_battery_current_and_status._entry_ptr = internal global ptr @bq27xxx_battery_current_and_status._entry, section ".printk_index", align 4
@bq27xxx_battery_current_and_status._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 1856, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error reading flags\0A\00", [43 x i8] zeroinitializer }, align 32
@bq27xxx_battery_current_and_status._entry_ptr.34 = internal global ptr @bq27xxx_battery_current_and_status._entry.32, section ".printk_index", align 4
@bq27xxx_battery_current_and_status.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.31, ptr @.str.2, ptr @.str.35, i8 1, i8 -47, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"negative current!\0A\00", [45 x i8] zeroinitializer }, align 32
@bq27xxx_battery_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1966, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error reading voltage\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bq27xxx_battery_voltage\00", [40 x i8] zeroinitializer }, align 32
@bq27xxx_battery_voltage._entry_ptr = internal global ptr @bq27xxx_battery_voltage._entry, section ".printk_index", align 4
@bq27xxx_battery_pwr_avg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1905, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error reading average power register %02x: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bq27xxx_battery_pwr_avg\00", [40 x i8] zeroinitializer }, align 32
@bq27xxx_battery_pwr_avg._entry_ptr = internal global ptr @bq27xxx_battery_pwr_avg._entry, section ".printk_index", align 4
@bq27xxx_battery_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 1484, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"data memory update not supported for chip\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bq27xxx_battery_settings\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bq27xxx_battery_settings._entry_ptr = internal global ptr @bq27xxx_battery_settings._entry, section ".printk_index", align 4
@bq27xxx_battery_settings._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.2, i32 1490, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"missing battery:energy-full-design-microwatt-hours\0A\00", [44 x i8] zeroinitializer }, align 32
@bq27xxx_battery_settings._entry_ptr.45 = internal global ptr @bq27xxx_battery_settings._entry.43, section ".printk_index", align 4
@bq27xxx_battery_settings._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.41, ptr @.str.2, i32 1492, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"missing battery:charge-full-design-microamp-hours\0A\00", [45 x i8] zeroinitializer }, align 32
@bq27xxx_battery_settings._entry_ptr.48 = internal global ptr @bq27xxx_battery_settings._entry.46, section ".printk_index", align 4
@bq27xxx_battery_settings._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.41, ptr @.str.2, i32 1499, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"invalid battery:energy-full-design-microwatt-hours %d\0A\00", [41 x i8] zeroinitializer }, align 32
@bq27xxx_battery_settings._entry_ptr.51 = internal global ptr @bq27xxx_battery_settings._entry.49, section ".printk_index", align 4
@bq27xxx_battery_settings._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.41, ptr @.str.2, i32 1507, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"invalid battery:charge-full-design-microamp-hours %d\0A\00", [42 x i8] zeroinitializer }, align 32
@bq27xxx_battery_settings._entry_ptr.54 = internal global ptr @bq27xxx_battery_settings._entry.52, section ".printk_index", align 4
@bq27xxx_battery_settings._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.41, ptr @.str.2, i32 1517, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"invalid battery:voltage-min-design-microvolt %d\0A\00", [47 x i8] zeroinitializer }, align 32
@bq27xxx_battery_settings._entry_ptr.57 = internal global ptr @bq27xxx_battery_settings._entry.55, section ".printk_index", align 4
@bq27xxx_battery_unseal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 1200, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unseal failed due to missing key\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bq27xxx_battery_unseal\00", [41 x i8] zeroinitializer }, align 32
@bq27xxx_battery_unseal._entry_ptr = internal global ptr @bq27xxx_battery_unseal._entry, section ".printk_index", align 4
@bq27xxx_battery_unseal._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 1215, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bus error on unseal: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@bq27xxx_battery_unseal._entry_ptr.62 = internal global ptr @bq27xxx_battery_unseal._entry.60, section ".printk_index", align 4
@bq27xxx_battery_read_dm_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1267, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bus error reading chip memory: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bq27xxx_battery_read_dm_block\00", [34 x i8] zeroinitializer }, align 32
@bq27xxx_battery_read_dm_block._entry_ptr = internal global ptr @bq27xxx_battery_read_dm_block._entry, section ".printk_index", align 4
@bq27xxx_read_block.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 1, i8 33, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bq27xxx_read_block\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to read_bulk register 0x%02x (index %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@bq27xxx_dm_reg_name = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.81, ptr @.str.82, ptr @.str.83], [20 x i8] zeroinitializer }, align 32
@bq27xxx_battery_update_dm_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 1281, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"buffer does not match %s dm spec\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bq27xxx_battery_update_dm_block\00", [32 x i8] zeroinitializer }, align 32
@bq27xxx_battery_update_dm_block._entry_ptr = internal global ptr @bq27xxx_battery_update_dm_block._entry, section ".printk_index", align 4
@bq27xxx_battery_update_dm_block._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 1286, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s dm spec has unsupported byte size\0A\00", [58 x i8] zeroinitializer }, align 32
@bq27xxx_battery_update_dm_block._entry_ptr.71 = internal global ptr @bq27xxx_battery_update_dm_block._entry.69, section ".printk_index", align 4
@bq27xxx_battery_update_dm_block._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 1294, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s has %u\0A\00", [21 x i8] zeroinitializer }, align 32
@bq27xxx_battery_update_dm_block._entry_ptr.74 = internal global ptr @bq27xxx_battery_update_dm_block._entry.72, section ".printk_index", align 4
@bq27xxx_battery_update_dm_block._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.68, ptr @.str.2, i32 1310, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s has %u; update to %u disallowed by dt_monitored_battery_updates_nvm=0\0A\00", [54 x i8] zeroinitializer }, align 32
@bq27xxx_battery_update_dm_block._entry_ptr.77 = internal global ptr @bq27xxx_battery_update_dm_block._entry.75, section ".printk_index", align 4
@bq27xxx_battery_update_dm_block._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.68, ptr @.str.2, i32 1314, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"update %s to %u\0A\00", [47 x i8] zeroinitializer }, align 32
@bq27xxx_battery_update_dm_block._entry_ptr.80 = internal global ptr @bq27xxx_battery_update_dm_block._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"design-capacity\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"design-energy\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"terminate-voltage\00", [46 x i8] zeroinitializer }, align 32
@bq27xxx_battery_write_dm_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 1426, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bus error writing chip memory: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bq27xxx_battery_write_dm_block\00", [33 x i8] zeroinitializer }, align 32
@bq27xxx_battery_write_dm_block._entry_ptr = internal global ptr @bq27xxx_battery_write_dm_block._entry, section ".printk_index", align 4
@bq27xxx_battery_set_cfgupdate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 1352, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bus error on set_cfgupdate: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bq27xxx_battery_set_cfgupdate\00", [34 x i8] zeroinitializer }, align 32
@bq27xxx_battery_set_cfgupdate._entry_ptr = internal global ptr @bq27xxx_battery_set_cfgupdate._entry, section ".printk_index", align 4
@bq27xxx_battery_cfgupdate_priv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 1338, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"timed out waiting for cfgupdate flag %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bq27xxx_battery_cfgupdate_priv\00", [33 x i8] zeroinitializer }, align 32
@bq27xxx_battery_cfgupdate_priv._entry_ptr = internal global ptr @bq27xxx_battery_cfgupdate_priv._entry, section ".printk_index", align 4
@bq27xxx_battery_cfgupdate_priv._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 1343, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cfgupdate %d, retries %d\0A\00", [38 x i8] zeroinitializer }, align 32
@bq27xxx_battery_cfgupdate_priv._entry_ptr.92 = internal global ptr @bq27xxx_battery_cfgupdate_priv._entry.90, section ".printk_index", align 4
@bq27xxx_write_block.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 1, i8 38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bq27xxx_write_block\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to write_bulk register 0x%02x (index %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@bq27xxx_battery_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 1361, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bus error on soft_reset: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bq27xxx_battery_soft_reset\00", [37 x i8] zeroinitializer }, align 32
@bq27xxx_battery_soft_reset._entry_ptr = internal global ptr @bq27xxx_battery_soft_reset._entry, section ".printk_index", align 4
@bq27xxx_battery_seal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 1188, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bus error on seal: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bq27xxx_battery_seal\00", [43 x i8] zeroinitializer }, align 32
@bq27xxx_battery_seal._entry_ptr = internal global ptr @bq27xxx_battery_seal._entry, section ".printk_index", align 4
@bq27xxx_write.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.99, ptr @.str.2, ptr @.str.100, i8 1, i8 28, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bq27xxx_write\00", [18 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to write register 0x%02x (index %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bq27xxx_list_lock.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bq27xxx_list_lock\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [20 x i64] [i64 18, i64 32, i64 0, i64 2, i64 6, i64 7, i64 12, i64 17, i64 21, i64 22, i64 24, i64 26, i64 45, i64 47, i64 51, i64 52, i64 60, i64 61, i64 62, i64 74]
@___asan_gen_.103 = private unnamed_addr constant [18 x i8] c"bq27xxx_dt_to_nvm\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1064, i32 13 }
@___asan_gen_.106 = private unnamed_addr constant [24 x i8] c"param_ops_poll_interval\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1095, i32 38 }
@___asan_gen_.109 = private unnamed_addr constant [14 x i8] c"poll_interval\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1100, i32 21 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1770, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 2099, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 2100, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"bq27xxx_chip_data\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 983, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 2121, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant [18 x i8] c"bq27xxx_list_lock\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [24 x i8] c"bq27xxx_battery_devices\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1019, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1119, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1662, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1697, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1556, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1541, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1640, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1682, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1618, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [13 x i8] c"bq27000_regs\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 138, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [14 x i8] c"bq27000_props\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 542, i32 35 }
@___asan_gen_.226 = private unnamed_addr constant [13 x i8] c"bq27010_regs\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 163, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [14 x i8] c"bq27010_props\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 564, i32 35 }
@___asan_gen_.232 = private unnamed_addr constant [13 x i8] c"bq2750x_regs\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 188, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [16 x i8] c"bq27510g3_props\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 611, i32 35 }
@___asan_gen_.238 = private unnamed_addr constant [15 x i8] c"bq27510g3_regs\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 234, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [13 x i8] c"bq27500_regs\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 211, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [14 x i8] c"bq27500_props\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 588, i32 35 }
@___asan_gen_.247 = private unnamed_addr constant [15 x i8] c"bq27520g1_regs\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 255, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [16 x i8] c"bq27520g1_props\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 629, i32 35 }
@___asan_gen_.253 = private unnamed_addr constant [15 x i8] c"bq27520g2_regs\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 276, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [15 x i8] c"bq27520g3_regs\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 297, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [16 x i8] c"bq27520g3_props\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 651, i32 35 }
@___asan_gen_.262 = private unnamed_addr constant [15 x i8] c"bq27520g4_regs\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 318, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [16 x i8] c"bq27520g4_props\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 671, i32 35 }
@___asan_gen_.268 = private unnamed_addr constant [13 x i8] c"bq27521_regs\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 339, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [14 x i8] c"bq27521_props\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 688, i32 35 }
@___asan_gen_.274 = private unnamed_addr constant [13 x i8] c"bq27530_regs\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 364, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [14 x i8] c"bq27530_props\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 697, i32 35 }
@___asan_gen_.280 = private unnamed_addr constant [13 x i8] c"bq27541_regs\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 386, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [14 x i8] c"bq27541_props\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 716, i32 35 }
@___asan_gen_.286 = private unnamed_addr constant [13 x i8] c"bq27545_regs\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 410, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [14 x i8] c"bq27545_props\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 738, i32 35 }
@___asan_gen_.292 = private unnamed_addr constant [13 x i8] c"bq27421_regs\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 431, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [16 x i8] c"bq27411_dm_regs\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 913, i32 30 }
@___asan_gen_.298 = private unnamed_addr constant [14 x i8] c"bq27421_props\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 756, i32 35 }
@___asan_gen_.301 = private unnamed_addr constant [16 x i8] c"bq27421_dm_regs\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 919, i32 30 }
@___asan_gen_.304 = private unnamed_addr constant [16 x i8] c"bq27425_dm_regs\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 925, i32 30 }
@___asan_gen_.307 = private unnamed_addr constant [16 x i8] c"bq27426_dm_regs\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 931, i32 30 }
@___asan_gen_.310 = private unnamed_addr constant [14 x i8] c"bq27z561_regs\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 457, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [15 x i8] c"bq27z561_props\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 776, i32 35 }
@___asan_gen_.316 = private unnamed_addr constant [14 x i8] c"bq28z610_regs\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 478, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [15 x i8] c"bq28z610_props\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 796, i32 35 }
@___asan_gen_.322 = private unnamed_addr constant [14 x i8] c"bq34z100_regs\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 499, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [15 x i8] c"bq34z100_props\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 816, i32 35 }
@___asan_gen_.328 = private unnamed_addr constant [14 x i8] c"bq78z100_regs\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 520, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [15 x i8] c"bq78z100_props\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 838, i32 35 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 2074, i32 17 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1850, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1856, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1862, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1966, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1903, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1484, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1490, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1492, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1498, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1506, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1516, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1200, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1215, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1267, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1157, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant [20 x i8] c"bq27xxx_dm_reg_name\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1057, i32 27 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1281, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1286, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1294, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1304, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1314, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1058, i32 33 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1059, i32 31 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1060, i32 35 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1426, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1352, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1338, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1343, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1176, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1361, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1188, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1138, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.557 = private constant [42 x i8] c"../drivers/power/supply/bq27xxx_battery.c\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1018, i32 8 }
@llvm.compiler.used = appending global [191 x ptr] [ptr @__UNIQUE_ID_author196, ptr @__UNIQUE_ID_description197, ptr @__UNIQUE_ID_dt_monitored_battery_updates_nvm184, ptr @__UNIQUE_ID_dt_monitored_battery_updates_nvmtype183, ptr @__UNIQUE_ID_file198, ptr @__UNIQUE_ID_license199, ptr @__UNIQUE_ID_poll_interval185, ptr @__ksymtab_bq27xxx_battery_setup, ptr @__ksymtab_bq27xxx_battery_teardown, ptr @__ksymtab_bq27xxx_battery_update, ptr @__param_dt_monitored_battery_updates_nvm, ptr @__param_poll_interval, ptr @bq27xxx_battery_cfgupdate_priv._entry, ptr @bq27xxx_battery_cfgupdate_priv._entry.90, ptr @bq27xxx_battery_cfgupdate_priv._entry_ptr, ptr @bq27xxx_battery_cfgupdate_priv._entry_ptr.92, ptr @bq27xxx_battery_current_and_status._entry, ptr @bq27xxx_battery_current_and_status._entry.32, ptr @bq27xxx_battery_current_and_status._entry_ptr, ptr @bq27xxx_battery_current_and_status._entry_ptr.34, ptr @bq27xxx_battery_pwr_avg._entry, ptr @bq27xxx_battery_pwr_avg._entry_ptr, ptr @bq27xxx_battery_read_cyct._entry, ptr @bq27xxx_battery_read_cyct._entry_ptr, ptr @bq27xxx_battery_read_dm_block._entry, ptr @bq27xxx_battery_read_dm_block._entry_ptr, ptr @bq27xxx_battery_read_temperature._entry, ptr @bq27xxx_battery_read_temperature._entry_ptr, ptr @bq27xxx_battery_seal._entry, ptr @bq27xxx_battery_seal._entry_ptr, ptr @bq27xxx_battery_set_cfgupdate._entry, ptr @bq27xxx_battery_set_cfgupdate._entry_ptr, ptr @bq27xxx_battery_settings._entry, ptr @bq27xxx_battery_settings._entry.43, ptr @bq27xxx_battery_settings._entry.46, ptr @bq27xxx_battery_settings._entry.49, ptr @bq27xxx_battery_settings._entry.52, ptr @bq27xxx_battery_settings._entry.55, ptr @bq27xxx_battery_settings._entry_ptr, ptr @bq27xxx_battery_settings._entry_ptr.45, ptr @bq27xxx_battery_settings._entry_ptr.48, ptr @bq27xxx_battery_settings._entry_ptr.51, ptr @bq27xxx_battery_settings._entry_ptr.54, ptr @bq27xxx_battery_settings._entry_ptr.57, ptr @bq27xxx_battery_soft_reset._entry, ptr @bq27xxx_battery_soft_reset._entry_ptr, ptr @bq27xxx_battery_unseal._entry, ptr @bq27xxx_battery_unseal._entry.60, ptr @bq27xxx_battery_unseal._entry_ptr, ptr @bq27xxx_battery_unseal._entry_ptr.62, ptr @bq27xxx_battery_update._entry, ptr @bq27xxx_battery_update._entry_ptr, ptr @bq27xxx_battery_update_dm_block._entry, ptr @bq27xxx_battery_update_dm_block._entry.69, ptr @bq27xxx_battery_update_dm_block._entry.72, ptr @bq27xxx_battery_update_dm_block._entry.75, ptr @bq27xxx_battery_update_dm_block._entry.78, ptr @bq27xxx_battery_update_dm_block._entry_ptr, ptr @bq27xxx_battery_update_dm_block._entry_ptr.71, ptr @bq27xxx_battery_update_dm_block._entry_ptr.74, ptr @bq27xxx_battery_update_dm_block._entry_ptr.77, ptr @bq27xxx_battery_update_dm_block._entry_ptr.80, ptr @bq27xxx_battery_voltage._entry, ptr @bq27xxx_battery_voltage._entry_ptr, ptr @bq27xxx_battery_write_dm_block._entry, ptr @bq27xxx_battery_write_dm_block._entry_ptr, ptr @bq27xxx_dt_to_nvm, ptr @param_ops_poll_interval, ptr @poll_interval, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bq27xxx_battery_setup.__key, ptr @.str.5, ptr @bq27xxx_battery_setup.__key.6, ptr @.str.7, ptr @bq27xxx_battery_setup.__key.8, ptr @.str.9, ptr @bq27xxx_chip_data, ptr @.str.10, ptr @bq27xxx_list_lock, ptr @bq27xxx_battery_devices, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @bq27000_regs, ptr @bq27000_props, ptr @bq27010_regs, ptr @bq27010_props, ptr @bq2750x_regs, ptr @bq27510g3_props, ptr @bq27510g3_regs, ptr @bq27500_regs, ptr @bq27500_props, ptr @bq27520g1_regs, ptr @bq27520g1_props, ptr @bq27520g2_regs, ptr @bq27520g3_regs, ptr @bq27520g3_props, ptr @bq27520g4_regs, ptr @bq27520g4_props, ptr @bq27521_regs, ptr @bq27521_props, ptr @bq27530_regs, ptr @bq27530_props, ptr @bq27541_regs, ptr @bq27541_props, ptr @bq27545_regs, ptr @bq27545_props, ptr @bq27421_regs, ptr @bq27411_dm_regs, ptr @bq27421_props, ptr @bq27421_dm_regs, ptr @bq27425_dm_regs, ptr @bq27426_dm_regs, ptr @bq27z561_regs, ptr @bq27z561_props, ptr @bq28z610_regs, ptr @bq28z610_props, ptr @bq34z100_regs, ptr @bq34z100_props, ptr @bq78z100_regs, ptr @bq78z100_props, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @bq27xxx_dm_reg_name, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102], section "llvm.metadata"
@0 = internal global [152 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_dt_to_nvm to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_poll_interval to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_setup.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_setup.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_chip_data to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_read_temperature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_read_cyct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27000_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27000_props to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27010_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27010_props to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2750x_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27510g3_props to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27510g3_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27500_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27500_props to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27520g1_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27520g1_props to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27520g2_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27520g3_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27520g3_props to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27520g4_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27520g4_props to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27521_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27521_props to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27530_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27530_props to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27541_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27541_props to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27545_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27545_props to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27421_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27411_dm_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27421_props to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27421_dm_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27425_dm_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27426_dm_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27z561_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27z561_props to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq28z610_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq28z610_props to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq34z100_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq34z100_props to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq78z100_regs to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq78z100_props to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_current_and_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_current_and_status._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_pwr_avg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_settings._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_settings._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_settings._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_settings._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_settings._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_unseal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_unseal._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_read_dm_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_dm_reg_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_update_dm_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_update_dm_block._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_update_dm_block._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_update_dm_block._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_update_dm_block._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_write_dm_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_set_cfgupdate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_cfgupdate_priv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_cfgupdate_priv._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_seal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bq27xxx_battery_update(ptr noundef %di) #0 align 64 {
entry:
  %cache = alloca %struct.bq27xxx_reg_cache, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cache) #7
  %0 = call ptr @memset(ptr %cache, i32 0, i32 40)
  %opts = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 3
  %1 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %opts, align 4
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3 = icmp ne i32 %and2, 0
  %tobool.not.i = icmp eq ptr %di, null
  br i1 %tobool.not.i, label %bq27xxx_read.exit.thread, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %regs.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %4, i32 5
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp.i = icmp eq i8 %6, -1
  br i1 %cmp.i, label %lor.lhs.false.i.bq27xxx_read.exit_crit_edge, label %if.end.i

lor.lhs.false.i.bq27xxx_read.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq27xxx_read.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %bus.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i, align 4
  %call.i = tail call i32 %8(ptr noundef nonnull %di, i8 noundef zeroext %6, i1 noundef zeroext %tobool3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %do.body.i, label %if.end.i.bq27xxx_read.exit_crit_edge

if.end.i.bq27xxx_read.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq27xxx_read.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_update, %bq27xxx_read.exit)) #7
          to label %if.then14.i [label %bq27xxx_read.exit], !srcloc !312

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %di, align 4
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %12, i32 5
  %13 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef %conv17.i, i32 noundef 5) #7
  br label %bq27xxx_read.exit

bq27xxx_read.exit:                                ; preds = %if.then14.i, %do.body.i, %if.end.i.bq27xxx_read.exit_crit_edge, %lor.lhs.false.i.bq27xxx_read.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false.i.bq27xxx_read.exit_crit_edge ], [ %call.i, %if.then14.i ], [ %call.i, %if.end.i.bq27xxx_read.exit_crit_edge ], [ %call.i, %do.body.i ]
  %flags = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 8
  %and7 = and i32 %retval.0.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and7)
  %cmp = icmp eq i32 %and7, 255
  %spec.select = select i1 %cmp, i32 -1, i32 %retval.0.i
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select)
  %cmp10 = icmp sgt i32 %spec.select, -1
  br i1 %cmp10, label %lor.lhs.false.i.i, label %bq27xxx_read.exit.if.end81_crit_edge

bq27xxx_read.exit.if.end81_crit_edge:             ; preds = %bq27xxx_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

bq27xxx_read.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %flags231 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 8
  %16 = ptrtoint ptr %flags231 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -22, ptr %flags231, align 4
  br label %if.end81

lor.lhs.false.i.i:                                ; preds = %bq27xxx_read.exit
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp.i.i = icmp eq i8 %20, -1
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.do.end.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %bus.i.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %21 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i.i, align 4
  %call.i.i = tail call i32 %22(ptr noundef nonnull %di, i8 noundef zeroext %20, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp5.i.i, label %do.body.i.i, label %if.end.i130

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_update, %do.end.i)) #7
          to label %if.then14.i.i [label %do.end.i], !srcloc !312

if.then14.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %di, align 4
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %arrayidx16.i.i = getelementptr i8, ptr %26, i32 1
  %27 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx16.i.i, align 1
  %conv17.i.i = zext i8 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %24, ptr noundef nonnull @.str.13, i32 noundef %conv17.i.i, i32 noundef 1) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i.i, %do.body.i.i, %lor.lhs.false.i.i.do.end.i_crit_edge
  %retval.0.i10.i = phi i32 [ %call.i.i, %do.body.i.i ], [ %call.i.i, %if.then14.i.i ], [ -22, %lor.lhs.false.i.i.do.end.i_crit_edge ]
  %29 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.14) #10
  br label %bq27xxx_battery_read_temperature.exit

if.end.i130:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %opts, align 4
  %and.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i129 = icmp eq i32 %and.i, 0
  %mul.i = mul i32 %call.i.i, 5
  %div.i = sdiv i32 %mul.i, 2
  %temp.0.i = select i1 %tobool.not.i129, i32 %call.i.i, i32 %div.i
  br label %bq27xxx_battery_read_temperature.exit

bq27xxx_battery_read_temperature.exit:            ; preds = %if.end.i130, %do.end.i
  %retval.0.i131 = phi i32 [ %retval.0.i10.i, %do.end.i ], [ %temp.0.i, %if.end.i130 ]
  %33 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i131, ptr %cache, align 4
  br i1 %tobool.not, label %bq27xxx_battery_read_temperature.exit.if.else_crit_edge, label %land.lhs.true

bq27xxx_battery_read_temperature.exit.if.else_crit_edge: ; preds = %bq27xxx_battery_read_temperature.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %bq27xxx_battery_read_temperature.exit
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and15 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %land.lhs.true.if.else_crit_edge, label %do.body

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

do.body:                                          ; preds = %land.lhs.true
  %.b128 = load i1, ptr @bq27xxx_battery_update.__print_once, align 1
  br i1 %.b128, label %do.body.do.end23_crit_edge, label %if.then19

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @bq27xxx_battery_update.__print_once, align 1
  %36 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str) #10
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body.do.end23_crit_edge
  %capacity = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 6
  %38 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -61, ptr %capacity, align 4
  %energy = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 7
  %39 = ptrtoint ptr %energy to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -61, ptr %energy, align 4
  %time_to_empty = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 1
  %40 = ptrtoint ptr %time_to_empty to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -61, ptr %time_to_empty, align 4
  %time_to_empty_avg = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 2
  %41 = ptrtoint ptr %time_to_empty_avg to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -61, ptr %time_to_empty_avg, align 4
  %time_to_full = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 3
  %42 = ptrtoint ptr %time_to_full to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -61, ptr %time_to_full, align 4
  %charge_full = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 4
  %43 = ptrtoint ptr %charge_full to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -61, ptr %charge_full, align 4
  br label %if.end66

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %bq27xxx_battery_read_temperature.exit.if.else_crit_edge
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %arrayidx = getelementptr i8, ptr %45, i32 6
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %cmp24.not = icmp eq i8 %47, -1
  br i1 %cmp24.not, label %if.else.if.end29_crit_edge, label %if.end.i.i140

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end.i.i140:                                    ; preds = %if.else
  %bus.i.i137 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %48 = ptrtoint ptr %bus.i.i137 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i.i137, align 4
  %call.i.i138 = tail call i32 %49(ptr noundef nonnull %di, i8 noundef zeroext %47, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i138)
  %cmp5.i.i139 = icmp slt i32 %call.i.i138, 0
  br i1 %cmp5.i.i139, label %do.body.i.i141, label %if.end8.i

do.body.i.i141:                                   ; preds = %if.end.i.i140
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_update, %do.body.i145)) #7
          to label %if.then14.i.i144 [label %do.body.i145], !srcloc !312

if.then14.i.i144:                                 ; preds = %do.body.i.i141
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %di, align 4
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %arrayidx16.i.i142 = getelementptr i8, ptr %53, i32 6
  %54 = ptrtoint ptr %arrayidx16.i.i142 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx16.i.i142, align 1
  %conv17.i.i143 = zext i8 %55 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %51, ptr noundef nonnull @.str.13, i32 noundef %conv17.i.i143, i32 noundef 6) #7
  br label %do.body.i145

do.body.i145:                                     ; preds = %if.then14.i.i144, %do.body.i.i141
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_battery_read_time.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_update, %bq27xxx_battery_read_time.exit)) #7
          to label %if.then6.i [label %bq27xxx_battery_read_time.exit], !srcloc !312

if.then6.i:                                       ; preds = %do.body.i145
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_battery_read_time.__UNIQUE_ID_ddebug194, ptr noundef %57, ptr noundef nonnull @.str.18, i32 noundef 6, i32 noundef %call.i.i138) #7
  br label %bq27xxx_battery_read_time.exit

if.end8.i:                                        ; preds = %if.end.i.i140
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call.i.i138)
  %cmp9.i = icmp eq i32 %call.i.i138, 65535
  %mul.i146 = mul i32 %call.i.i138, 60
  %spec.select.i = select i1 %cmp9.i, i32 -61, i32 %mul.i146
  br label %bq27xxx_battery_read_time.exit

bq27xxx_battery_read_time.exit:                   ; preds = %if.end8.i, %if.then6.i, %do.body.i145
  %retval.0.i147 = phi i32 [ %call.i.i138, %if.then6.i ], [ %spec.select.i, %if.end8.i ], [ %call.i.i138, %do.body.i145 ]
  %time_to_empty28 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 1
  %58 = ptrtoint ptr %time_to_empty28 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %retval.0.i147, ptr %time_to_empty28, align 4
  br label %if.end29

if.end29:                                         ; preds = %bq27xxx_battery_read_time.exit, %if.else.if.end29_crit_edge
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %arrayidx31 = getelementptr i8, ptr %60, i32 9
  %61 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %62)
  %cmp33.not = icmp eq i8 %62, -1
  br i1 %cmp33.not, label %if.end29.if.end38_crit_edge, label %if.end.i.i156

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end.i.i156:                                    ; preds = %if.end29
  %bus.i.i153 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %63 = ptrtoint ptr %bus.i.i153 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus.i.i153, align 4
  %call.i.i154 = tail call i32 %64(ptr noundef nonnull %di, i8 noundef zeroext %62, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i154)
  %cmp5.i.i155 = icmp slt i32 %call.i.i154, 0
  br i1 %cmp5.i.i155, label %do.body.i.i157, label %if.end8.i167

do.body.i.i157:                                   ; preds = %if.end.i.i156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_update, %do.body.i162)) #7
          to label %if.then14.i.i160 [label %do.body.i162], !srcloc !312

if.then14.i.i160:                                 ; preds = %do.body.i.i157
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %di, align 4
  %67 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i, align 4
  %arrayidx16.i.i158 = getelementptr i8, ptr %68, i32 9
  %69 = ptrtoint ptr %arrayidx16.i.i158 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx16.i.i158, align 1
  %conv17.i.i159 = zext i8 %70 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %66, ptr noundef nonnull @.str.13, i32 noundef %conv17.i.i159, i32 noundef 9) #7
  br label %do.body.i162

do.body.i162:                                     ; preds = %if.then14.i.i160, %do.body.i.i157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_battery_read_time.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_update, %bq27xxx_battery_read_time.exit169)) #7
          to label %if.then6.i163 [label %bq27xxx_battery_read_time.exit169], !srcloc !312

if.then6.i163:                                    ; preds = %do.body.i162
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_battery_read_time.__UNIQUE_ID_ddebug194, ptr noundef %72, ptr noundef nonnull @.str.18, i32 noundef 9, i32 noundef %call.i.i154) #7
  br label %bq27xxx_battery_read_time.exit169

if.end8.i167:                                     ; preds = %if.end.i.i156
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call.i.i154)
  %cmp9.i164 = icmp eq i32 %call.i.i154, 65535
  %mul.i165 = mul i32 %call.i.i154, 60
  %spec.select.i166 = select i1 %cmp9.i164, i32 -61, i32 %mul.i165
  br label %bq27xxx_battery_read_time.exit169

bq27xxx_battery_read_time.exit169:                ; preds = %if.end8.i167, %if.then6.i163, %do.body.i162
  %retval.0.i168 = phi i32 [ %call.i.i154, %if.then6.i163 ], [ %spec.select.i166, %if.end8.i167 ], [ %call.i.i154, %do.body.i162 ]
  %time_to_empty_avg37 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 2
  %73 = ptrtoint ptr %time_to_empty_avg37 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %retval.0.i168, ptr %time_to_empty_avg37, align 4
  br label %if.end38

if.end38:                                         ; preds = %bq27xxx_battery_read_time.exit169, %if.end29.if.end38_crit_edge
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 4
  %arrayidx40 = getelementptr i8, ptr %75, i32 7
  %76 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %77)
  %cmp42.not = icmp eq i8 %77, -1
  br i1 %cmp42.not, label %if.end38.lor.lhs.false.i.i.i_crit_edge, label %if.end.i.i178

if.end38.lor.lhs.false.i.i.i_crit_edge:           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i.i

if.end.i.i178:                                    ; preds = %if.end38
  %bus.i.i175 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %78 = ptrtoint ptr %bus.i.i175 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus.i.i175, align 4
  %call.i.i176 = tail call i32 %79(ptr noundef nonnull %di, i8 noundef zeroext %77, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i176)
  %cmp5.i.i177 = icmp slt i32 %call.i.i176, 0
  br i1 %cmp5.i.i177, label %do.body.i.i179, label %if.end8.i189

do.body.i.i179:                                   ; preds = %if.end.i.i178
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_update, %do.body.i184)) #7
          to label %if.then14.i.i182 [label %do.body.i184], !srcloc !312

if.then14.i.i182:                                 ; preds = %do.body.i.i179
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %di, align 4
  %82 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i, align 4
  %arrayidx16.i.i180 = getelementptr i8, ptr %83, i32 7
  %84 = ptrtoint ptr %arrayidx16.i.i180 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx16.i.i180, align 1
  %conv17.i.i181 = zext i8 %85 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %81, ptr noundef nonnull @.str.13, i32 noundef %conv17.i.i181, i32 noundef 7) #7
  br label %do.body.i184

do.body.i184:                                     ; preds = %if.then14.i.i182, %do.body.i.i179
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_battery_read_time.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_update, %bq27xxx_battery_read_time.exit191)) #7
          to label %if.then6.i185 [label %bq27xxx_battery_read_time.exit191], !srcloc !312

if.then6.i185:                                    ; preds = %do.body.i184
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_battery_read_time.__UNIQUE_ID_ddebug194, ptr noundef %87, ptr noundef nonnull @.str.18, i32 noundef 7, i32 noundef %call.i.i176) #7
  br label %bq27xxx_battery_read_time.exit191

if.end8.i189:                                     ; preds = %if.end.i.i178
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call.i.i176)
  %cmp9.i186 = icmp eq i32 %call.i.i176, 65535
  %mul.i187 = mul i32 %call.i.i176, 60
  %spec.select.i188 = select i1 %cmp9.i186, i32 -61, i32 %mul.i187
  br label %bq27xxx_battery_read_time.exit191

bq27xxx_battery_read_time.exit191:                ; preds = %if.end8.i189, %if.then6.i185, %do.body.i184
  %retval.0.i190 = phi i32 [ %call.i.i176, %if.then6.i185 ], [ %spec.select.i188, %if.end8.i189 ], [ %call.i.i176, %do.body.i184 ]
  %time_to_full46 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 3
  %88 = ptrtoint ptr %time_to_full46 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i190, ptr %time_to_full46, align 4
  br label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %bq27xxx_battery_read_time.exit191, %if.end38.lor.lhs.false.i.i.i_crit_edge
  %89 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %90, i32 12
  %91 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %92)
  %cmp.i.i.i = icmp eq i8 %92, -1
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i.i.do.body.i.i192_crit_edge, label %if.end.i.i.i

lor.lhs.false.i.i.i.do.body.i.i192_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i192

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  %bus.i.i.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %93 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bus.i.i.i, align 4
  %call.i.i.i = tail call i32 %94(ptr noundef nonnull %di, i8 noundef zeroext %92, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp5.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp5.i.i.i, label %do.body.i.i.i, label %if.end8.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_update, %do.body.i.i192)) #7
          to label %if.then14.i.i.i [label %do.body.i.i192], !srcloc !312

if.then14.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %di, align 4
  %97 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i, align 4
  %arrayidx16.i.i.i = getelementptr i8, ptr %98, i32 12
  %99 = ptrtoint ptr %arrayidx16.i.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx16.i.i.i, align 1
  %conv17.i.i.i = zext i8 %100 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %96, ptr noundef nonnull @.str.13, i32 noundef %conv17.i.i.i, i32 noundef 12) #7
  br label %do.body.i.i192

do.body.i.i192:                                   ; preds = %if.then14.i.i.i, %do.body.i.i.i, %lor.lhs.false.i.i.i.do.body.i.i192_crit_edge
  %retval.0.i2124.i.i = phi i32 [ %call.i.i.i, %do.body.i.i.i ], [ %call.i.i.i, %if.then14.i.i.i ], [ -22, %lor.lhs.false.i.i.i.do.body.i.i192_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_battery_read_charge.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_update, %bq27xxx_battery_read_fcc.exit)) #7
          to label %if.then6.i.i [label %bq27xxx_battery_read_fcc.exit], !srcloc !312

if.then6.i.i:                                     ; preds = %do.body.i.i192
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_battery_read_charge.__UNIQUE_ID_ddebug191, ptr noundef %102, ptr noundef nonnull @.str.20, i32 noundef 12, i32 noundef %retval.0.i2124.i.i) #7
  br label %bq27xxx_battery_read_fcc.exit

if.end8.i.i:                                      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %opts, align 4
  %and.i.i = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool9.not.i.i = icmp eq i32 %and.i.i, 0
  %charge.0.v.i.i = select i1 %tobool9.not.i.i, i32 1000, i32 178
  %charge.0.i.i = mul i32 %charge.0.v.i.i, %call.i.i.i
  br label %bq27xxx_battery_read_fcc.exit

bq27xxx_battery_read_fcc.exit:                    ; preds = %if.end8.i.i, %if.then6.i.i, %do.body.i.i192
  %retval.0.i.i = phi i32 [ %charge.0.i.i, %if.end8.i.i ], [ %retval.0.i2124.i.i, %if.then6.i.i ], [ %retval.0.i2124.i.i, %do.body.i.i192 ]
  %charge_full49 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 4
  %105 = ptrtoint ptr %charge_full49 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %retval.0.i.i, ptr %charge_full49, align 4
  %call50 = tail call fastcc i32 @bq27xxx_battery_read_soc(ptr noundef nonnull %di)
  %capacity51 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 6
  %106 = ptrtoint ptr %capacity51 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %call50, ptr %capacity51, align 4
  %107 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i, align 4
  %arrayidx53 = getelementptr i8, ptr %108, i32 14
  %109 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %110)
  %cmp55.not = icmp eq i8 %110, -1
  br i1 %cmp55.not, label %bq27xxx_battery_read_fcc.exit.if.end60_crit_edge, label %if.end.i.i201

bq27xxx_battery_read_fcc.exit.if.end60_crit_edge: ; preds = %bq27xxx_battery_read_fcc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.end.i.i201:                                    ; preds = %bq27xxx_battery_read_fcc.exit
  %bus.i.i198 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %111 = ptrtoint ptr %bus.i.i198 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bus.i.i198, align 4
  %call.i.i199 = tail call i32 %112(ptr noundef nonnull %di, i8 noundef zeroext %110, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i199)
  %cmp5.i.i200 = icmp slt i32 %call.i.i199, 0
  br i1 %cmp5.i.i200, label %do.body.i.i202, label %if.end6.i

do.body.i.i202:                                   ; preds = %if.end.i.i201
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_update, %do.body.i206)) #7
          to label %if.then14.i.i205 [label %do.body.i206], !srcloc !312

if.then14.i.i205:                                 ; preds = %do.body.i.i202
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %di, align 4
  %115 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i, align 4
  %arrayidx16.i.i203 = getelementptr i8, ptr %116, i32 14
  %117 = ptrtoint ptr %arrayidx16.i.i203 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx16.i.i203, align 1
  %conv17.i.i204 = zext i8 %118 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %114, ptr noundef nonnull @.str.13, i32 noundef %conv17.i.i204, i32 noundef 14) #7
  br label %do.body.i206

do.body.i206:                                     ; preds = %if.then14.i.i205, %do.body.i.i202
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_battery_read_energy.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_update, %bq27xxx_battery_read_energy.exit)) #7
          to label %if.then5.i [label %bq27xxx_battery_read_energy.exit], !srcloc !312

if.then5.i:                                       ; preds = %do.body.i206
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_battery_read_energy.__UNIQUE_ID_ddebug193, ptr noundef %120, ptr noundef nonnull @.str.24) #7
  br label %bq27xxx_battery_read_energy.exit

if.end6.i:                                        ; preds = %if.end.i.i201
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %opts, align 4
  %and.i208 = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i208)
  %tobool7.not.i = icmp eq i32 %and.i208, 0
  %ae.0.v.i = select i1 %tobool7.not.i, i32 1000, i32 1460
  %ae.0.i = mul i32 %ae.0.v.i, %call.i.i199
  br label %bq27xxx_battery_read_energy.exit

bq27xxx_battery_read_energy.exit:                 ; preds = %if.end6.i, %if.then5.i, %do.body.i206
  %retval.0.i209 = phi i32 [ %ae.0.i, %if.end6.i ], [ %call.i.i199, %if.then5.i ], [ %call.i.i199, %do.body.i206 ]
  %energy59 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 7
  %123 = ptrtoint ptr %energy59 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %retval.0.i209, ptr %energy59, align 4
  br label %if.end60

if.end60:                                         ; preds = %bq27xxx_battery_read_energy.exit, %bq27xxx_battery_read_fcc.exit.if.end60_crit_edge
  %124 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flags, align 4
  %flags63 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 8, i32 8
  %126 = ptrtoint ptr %flags63 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %flags63, align 4
  %conv.i = trunc i32 %125 to i16
  %127 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %opts, align 4
  %and.i.i211 = and i32 %128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i211)
  %tobool.not.i.i212 = icmp eq i32 %and.i.i211, 0
  br i1 %tobool.not.i.i212, label %bq27xxx_battery_overtemp.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %conv.i)
  %tobool2.i.i = icmp ugt i16 %conv.i, 16383
  br i1 %tobool2.i.i, label %if.then.i.i.if.end66_crit_edge, label %if.then.i.if.end_crit_edge.i, !prof !313

if.then.i.i.if.end66_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then.i.if.end_crit_edge.i:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = and i32 %128, 4
  br label %if.end.i213

bq27xxx_battery_overtemp.exit.i:                  ; preds = %if.end60
  %and4.i.i = and i32 %128, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp ne i32 %and4.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool9.i.i = icmp slt i16 %conv.i, 0
  %spec.select.i.i = and i1 %tobool9.i.i, %tobool5.not.i.i
  br i1 %spec.select.i.i, label %bq27xxx_battery_overtemp.exit.i.if.end66_crit_edge, label %bq27xxx_battery_overtemp.exit.i.if.end.i213_crit_edge, !prof !313

bq27xxx_battery_overtemp.exit.i.if.end.i213_crit_edge: ; preds = %bq27xxx_battery_overtemp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i213

bq27xxx_battery_overtemp.exit.i.if.end66_crit_edge: ; preds = %bq27xxx_battery_overtemp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.end.i213:                                      ; preds = %bq27xxx_battery_overtemp.exit.i.if.end.i213_crit_edge, %if.then.i.if.end_crit_edge.i
  %and.i32.pre-phi.i = phi i32 [ %.pre.i, %if.then.i.if.end_crit_edge.i ], [ %and4.i.i, %bq27xxx_battery_overtemp.exit.i.if.end.i213_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.pre-phi.i)
  %tobool.not.i33.i = icmp ne i32 %and.i32.pre-phi.i, 0
  %129 = and i16 %conv.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool2.i34.i = icmp ne i16 %129, 0
  %retval.0.i35.i = and i1 %tobool2.i34.i, %tobool.not.i33.i
  br i1 %retval.0.i35.i, label %if.end.i213.if.end66_crit_edge, label %if.end13.i, !prof !313

if.end.i213.if.end66_crit_edge:                   ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.end13.i:                                       ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #9
  %and.i37.i = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37.i)
  %tobool.not.i38.i = icmp eq i32 %and.i37.i, 0
  %and4.i39.i = and i32 %128, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i39.i)
  %tobool5.not.i40.i = icmp eq i32 %and4.i39.i, 0
  %..i.i = select i1 %tobool5.not.i40.i, i16 6, i16 16
  %.sink.i.i = select i1 %tobool.not.i38.i, i16 %..i.i, i16 3
  %130 = and i16 %.sink.i.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %retval.0.i41.not.i = icmp eq i16 %130, 0
  %..i = select i1 %retval.0.i41.not.i, i32 1, i32 3, !prof !314
  br label %if.end66

if.end66:                                         ; preds = %if.end13.i, %if.end.i213.if.end66_crit_edge, %bq27xxx_battery_overtemp.exit.i.if.end66_crit_edge, %if.then.i.i.if.end66_crit_edge, %do.end23
  %retval.0.i214.sink = phi i32 [ -61, %do.end23 ], [ 2, %bq27xxx_battery_overtemp.exit.i.if.end66_crit_edge ], [ 6, %if.end.i213.if.end66_crit_edge ], [ %..i, %if.end13.i ], [ 2, %if.then.i.i.if.end66_crit_edge ]
  %health65 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 9
  %131 = ptrtoint ptr %health65 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %retval.0.i214.sink, ptr %health65, align 4
  %132 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs.i, align 4
  %arrayidx68 = getelementptr i8, ptr %133, i32 13
  %134 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %135)
  %cmp70.not = icmp eq i8 %135, -1
  br i1 %cmp70.not, label %if.end66.if.end74_crit_edge, label %if.end.i.i223

if.end66.if.end74_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.end.i.i223:                                    ; preds = %if.end66
  %bus.i.i220 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %136 = ptrtoint ptr %bus.i.i220 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bus.i.i220, align 4
  %call.i.i221 = tail call i32 %137(ptr noundef nonnull %di, i8 noundef zeroext %135, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i221)
  %cmp5.i.i222 = icmp slt i32 %call.i.i221, 0
  br i1 %cmp5.i.i222, label %do.body.i.i224, label %if.end.i.i223.bq27xxx_battery_read_cyct.exit_crit_edge

if.end.i.i223.bq27xxx_battery_read_cyct.exit_crit_edge: ; preds = %if.end.i.i223
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq27xxx_battery_read_cyct.exit

do.body.i.i224:                                   ; preds = %if.end.i.i223
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_update, %do.end.i228)) #7
          to label %if.then14.i.i227 [label %do.end.i228], !srcloc !312

if.then14.i.i227:                                 ; preds = %do.body.i.i224
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %di, align 4
  %140 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i, align 4
  %arrayidx16.i.i225 = getelementptr i8, ptr %141, i32 13
  %142 = ptrtoint ptr %arrayidx16.i.i225 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx16.i.i225, align 1
  %conv17.i.i226 = zext i8 %143 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %139, ptr noundef nonnull @.str.13, i32 noundef %conv17.i.i226, i32 noundef 13) #7
  br label %do.end.i228

do.end.i228:                                      ; preds = %if.then14.i.i227, %do.body.i.i224
  %144 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.25) #10
  br label %bq27xxx_battery_read_cyct.exit

bq27xxx_battery_read_cyct.exit:                   ; preds = %do.end.i228, %if.end.i.i223.bq27xxx_battery_read_cyct.exit_crit_edge
  %cycle_count = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 5
  %146 = ptrtoint ptr %cycle_count to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %call.i.i221, ptr %cycle_count, align 4
  br label %if.end74

if.end74:                                         ; preds = %bq27xxx_battery_read_cyct.exit, %if.end66.if.end74_crit_edge
  %charge_design_full = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 9
  %147 = ptrtoint ptr %charge_design_full to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %charge_design_full, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp75 = icmp slt i32 %148, 1
  br i1 %cmp75, label %if.then77, label %if.end74.if.end81_crit_edge

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %call78 = tail call fastcc i32 @bq27xxx_battery_read_dcap(ptr noundef nonnull %di)
  %149 = ptrtoint ptr %charge_design_full to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %call78, ptr %charge_design_full, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.end74.if.end81_crit_edge, %bq27xxx_read.exit.thread, %bq27xxx_read.exit.if.end81_crit_edge
  %flags238 = phi ptr [ %flags231, %bq27xxx_read.exit.thread ], [ %flags, %if.end74.if.end81_crit_edge ], [ %flags, %if.then77 ], [ %flags, %bq27xxx_read.exit.if.end81_crit_edge ]
  %cache82 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 8
  %capacity83 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 8, i32 6
  %150 = ptrtoint ptr %capacity83 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %capacity83, align 4
  %capacity84 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %cache, i32 0, i32 6
  %152 = ptrtoint ptr %capacity84 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %capacity84, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %153)
  %cmp85.not = icmp eq i32 %151, %153
  br i1 %cmp85.not, label %lor.lhs.false, label %if.end81.if.then92_crit_edge

if.end81.if.then92_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92

lor.lhs.false:                                    ; preds = %if.end81
  %flags88 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 8, i32 8
  %154 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %flags88, align 4
  %156 = ptrtoint ptr %flags238 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %flags238, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %157)
  %cmp90.not = icmp eq i32 %155, %157
  br i1 %cmp90.not, label %lor.lhs.false.if.end93_crit_edge, label %lor.lhs.false.if.then92_crit_edge

lor.lhs.false.if.then92_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92

lor.lhs.false.if.end93_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then92:                                        ; preds = %lor.lhs.false.if.then92_crit_edge, %if.end81.if.then92_crit_edge
  %bat = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 12
  %158 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bat, align 4
  tail call void @power_supply_changed(ptr noundef %159) #7
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %lor.lhs.false.if.end93_crit_edge
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(40) %cache82, ptr noundef nonnull dereferenceable(40) %cache, i32 40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp96.not = icmp eq i32 %bcmp, 0
  br i1 %cmp96.not, label %if.end93.if.end100_crit_edge, label %if.then98

if.end93.if.end100_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.then98:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %160 = call ptr @memcpy(ptr %cache82, ptr %cache, i32 40)
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.end93.if.end100_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %161 = load volatile i32, ptr @jiffies, align 128
  %last_update = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 10
  %162 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %last_update, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cache) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq27xxx_battery_read_soc(ptr noundef %di) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %opts = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 3
  %0 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opts, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool.not.i16 = icmp eq ptr %di, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i16, label %if.then.do.body_crit_edge, label %lor.lhs.false.i

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false.i:                                  ; preds = %if.then
  %regs.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 15
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.i = icmp eq i8 %5, -1
  br i1 %cmp.i, label %lor.lhs.false.i.do.body_crit_edge, label %if.end.i

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i:                                         ; preds = %lor.lhs.false.i
  %bus.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 4
  %call.i = tail call i32 %7(ptr noundef nonnull %di, i8 noundef zeroext %5, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %do.body.i, label %if.end.i.if.end10_crit_edge

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_read_soc, %do.body)) #7
          to label %do.body.sink.split [label %do.body], !srcloc !312

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i16, label %if.else.do.body_crit_edge, label %lor.lhs.false.i20

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false.i20:                                ; preds = %if.else
  %regs.i17 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %8 = ptrtoint ptr %regs.i17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i17, align 4
  %arrayidx.i18 = getelementptr i8, ptr %9, i32 15
  %10 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp.i19 = icmp eq i8 %11, -1
  br i1 %cmp.i19, label %lor.lhs.false.i20.do.body_crit_edge, label %if.end.i24

lor.lhs.false.i20.do.body_crit_edge:              ; preds = %lor.lhs.false.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i24:                                       ; preds = %lor.lhs.false.i20
  %bus.i21 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %12 = ptrtoint ptr %bus.i21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i21, align 4
  %call.i22 = tail call i32 %13(ptr noundef nonnull %di, i8 noundef zeroext %11, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp5.i23 = icmp slt i32 %call.i22, 0
  br i1 %cmp5.i23, label %do.body.i25, label %if.end.i24.if.end10_crit_edge

if.end.i24.if.end10_crit_edge:                    ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.body.i25:                                      ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_read_soc, %do.body)) #7
          to label %do.body.sink.split [label %do.body], !srcloc !312

do.body.sink.split:                               ; preds = %do.body.i25, %do.body.i
  %regs.i17.sink = phi ptr [ %regs.i, %do.body.i ], [ %regs.i17, %do.body.i25 ]
  %soc.034.ph = phi i32 [ %call.i, %do.body.i ], [ %call.i22, %do.body.i25 ]
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %di, align 4
  %16 = ptrtoint ptr %regs.i17.sink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i17.sink, align 4
  %arrayidx16.i26 = getelementptr i8, ptr %17, i32 15
  %18 = ptrtoint ptr %arrayidx16.i26 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx16.i26, align 1
  %conv17.i27 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef %conv17.i27, i32 noundef 15) #7
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %do.body.i25, %lor.lhs.false.i20.do.body_crit_edge, %if.else.do.body_crit_edge, %do.body.i, %lor.lhs.false.i.do.body_crit_edge, %if.then.do.body_crit_edge
  %soc.034 = phi i32 [ %call.i, %do.body.i ], [ %call.i22, %do.body.i25 ], [ -22, %if.else.do.body_crit_edge ], [ -22, %lor.lhs.false.i20.do.body_crit_edge ], [ -22, %if.then.do.body_crit_edge ], [ -22, %lor.lhs.false.i.do.body_crit_edge ], [ %soc.034.ph, %do.body.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_battery_read_soc.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_read_soc, %if.end10)) #7
          to label %if.then8 [label %if.end10], !srcloc !312

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_battery_read_soc.__UNIQUE_ID_ddebug190, ptr noundef %21, ptr noundef nonnull @.str.22) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body, %if.end.i24.if.end10_crit_edge, %if.end.i.if.end10_crit_edge
  %soc.033 = phi i32 [ %soc.034, %if.then8 ], [ %call.i22, %if.end.i24.if.end10_crit_edge ], [ %call.i, %if.end.i.if.end10_crit_edge ], [ %soc.034, %do.body ]
  ret i32 %soc.033
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq27xxx_battery_read_dcap(ptr noundef %di) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %opts = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 3
  %0 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opts, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool.not.i27 = icmp eq ptr %di, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i27, label %if.then.do.body_crit_edge, label %lor.lhs.false.i

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false.i:                                  ; preds = %if.then
  %regs.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 16
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.i = icmp eq i8 %5, -1
  br i1 %cmp.i, label %lor.lhs.false.i.do.body_crit_edge, label %if.end.i

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i:                                         ; preds = %lor.lhs.false.i
  %bus.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 4
  %call.i = tail call i32 %7(ptr noundef nonnull %di, i8 noundef zeroext %5, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %do.body.i, label %if.end.i.if.end10_crit_edge

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_read_dcap, %do.body)) #7
          to label %do.body.sink.split [label %do.body], !srcloc !312

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i27, label %if.else.do.body_crit_edge, label %lor.lhs.false.i31

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false.i31:                                ; preds = %if.else
  %regs.i28 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %8 = ptrtoint ptr %regs.i28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i28, align 4
  %arrayidx.i29 = getelementptr i8, ptr %9, i32 16
  %10 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp.i30 = icmp eq i8 %11, -1
  br i1 %cmp.i30, label %lor.lhs.false.i31.do.body_crit_edge, label %if.end.i35

lor.lhs.false.i31.do.body_crit_edge:              ; preds = %lor.lhs.false.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i35:                                       ; preds = %lor.lhs.false.i31
  %bus.i32 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %12 = ptrtoint ptr %bus.i32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i32, align 4
  %call.i33 = tail call i32 %13(ptr noundef nonnull %di, i8 noundef zeroext %11, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp5.i34 = icmp slt i32 %call.i33, 0
  br i1 %cmp5.i34, label %do.body.i36, label %if.end.i35.if.end10_crit_edge

if.end.i35.if.end10_crit_edge:                    ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.body.i36:                                      ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_read_dcap, %do.body)) #7
          to label %do.body.sink.split [label %do.body], !srcloc !312

do.body.sink.split:                               ; preds = %do.body.i36, %do.body.i
  %regs.i28.sink = phi ptr [ %regs.i, %do.body.i ], [ %regs.i28, %do.body.i36 ]
  %dcap.044.ph = phi i32 [ %call.i, %do.body.i ], [ %call.i33, %do.body.i36 ]
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %di, align 4
  %16 = ptrtoint ptr %regs.i28.sink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i28.sink, align 4
  %arrayidx16.i37 = getelementptr i8, ptr %17, i32 16
  %18 = ptrtoint ptr %arrayidx16.i37 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx16.i37, align 1
  %conv17.i38 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef %conv17.i38, i32 noundef 16) #7
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %do.body.i36, %lor.lhs.false.i31.do.body_crit_edge, %if.else.do.body_crit_edge, %do.body.i, %lor.lhs.false.i.do.body_crit_edge, %if.then.do.body_crit_edge
  %dcap.044 = phi i32 [ %call.i, %do.body.i ], [ %call.i33, %do.body.i36 ], [ -22, %if.else.do.body_crit_edge ], [ -22, %lor.lhs.false.i31.do.body_crit_edge ], [ -22, %if.then.do.body_crit_edge ], [ -22, %lor.lhs.false.i.do.body_crit_edge ], [ %dcap.044.ph, %do.body.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_battery_read_dcap.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_read_dcap, %cleanup)) #7
          to label %if.then8 [label %cleanup], !srcloc !312

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_battery_read_dcap.__UNIQUE_ID_ddebug192, ptr noundef %21, ptr noundef nonnull @.str.28) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end.i35.if.end10_crit_edge, %if.end.i.if.end10_crit_edge
  %dcap.0.ph46 = phi i32 [ %call.i33, %if.end.i35.if.end10_crit_edge ], [ %call.i, %if.end.i.if.end10_crit_edge ]
  %22 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opts, align 4
  %and12 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %mul = mul i32 %dcap.0.ph46, 913920
  %div = sdiv i32 %mul, 20
  %mul16 = mul i32 %dcap.0.ph46, 1000
  %dcap.1 = select i1 %tobool13.not, i32 %mul16, i32 %div
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %do.body
  %retval.0 = phi i32 [ %dcap.1, %if.end10 ], [ %dcap.044, %if.then8 ], [ %dcap.044, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bq27xxx_battery_setup(ptr noundef %di) #0 align 64 {
entry:
  %info.i = alloca ptr, align 4
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %0 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 4
  %4 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 5
  %5 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %di, align 4
  %of_node1 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node1, align 8
  %9 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %psy_cfg, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %0, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %di, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %2, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %3, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %4, align 4
  %work = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 11
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %15 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 11, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @bq27xxx_battery_setup.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry10 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 11, i32 0, i32 1
  %16 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 11, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 11, i32 0, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bq27xxx_battery_poll, ptr %func, align 4
  %timer = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @bq27xxx_battery_setup.__key.6) #7
  %lock = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @bq27xxx_battery_setup.__key.8) #7
  %chip = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 2
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chip, align 4
  %regs = getelementptr [32 x %struct.anon.43], ptr @bq27xxx_chip_data, i32 0, i32 %20, i32 2
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %regs22 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %23 = ptrtoint ptr %regs22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %regs22, align 4
  %unseal_key = getelementptr [32 x %struct.anon.43], ptr @bq27xxx_chip_data, i32 0, i32 %20, i32 1
  %24 = ptrtoint ptr %unseal_key to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %unseal_key, align 4
  %unseal_key25 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 6
  %26 = ptrtoint ptr %unseal_key25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %unseal_key25, align 4
  %dm_regs = getelementptr [32 x %struct.anon.43], ptr @bq27xxx_chip_data, i32 0, i32 %20, i32 3
  %27 = ptrtoint ptr %dm_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dm_regs, align 4
  %dm_regs28 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 5
  %29 = ptrtoint ptr %dm_regs28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %dm_regs28, align 4
  %arrayidx30 = getelementptr [32 x %struct.anon.43], ptr @bq27xxx_chip_data, i32 0, i32 %20
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx30, align 4
  %opts31 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 3
  %32 = ptrtoint ptr %opts31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %opts31, align 4
  %33 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %di, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %34, i32 noundef 52, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 4
  %35 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name, align 4
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %call.i, align 4
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %call.i, i32 0, i32 1
  %38 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %type, align 4
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chip, align 4
  %props = getelementptr [32 x %struct.anon.43], ptr @bq27xxx_chip_data, i32 0, i32 %40, i32 4
  %41 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %props, align 4
  %properties = getelementptr inbounds %struct.power_supply_desc, ptr %call.i, i32 0, i32 4
  %43 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %properties, align 4
  %props_size = getelementptr [32 x %struct.anon.43], ptr @bq27xxx_chip_data, i32 0, i32 %40, i32 5
  %44 = ptrtoint ptr %props_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %props_size, align 4
  %num_properties = getelementptr inbounds %struct.power_supply_desc, ptr %call.i, i32 0, i32 5
  %46 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %num_properties, align 4
  %get_property = getelementptr inbounds %struct.power_supply_desc, ptr %call.i, i32 0, i32 6
  %47 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @bq27xxx_battery_get_property, ptr %get_property, align 4
  %external_power_changed = getelementptr inbounds %struct.power_supply_desc, ptr %call.i, i32 0, i32 9
  %48 = ptrtoint ptr %external_power_changed to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @bq27xxx_external_power_changed, ptr %external_power_changed, align 4
  %49 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %di, align 4
  %call39 = call ptr @power_supply_register_no_ws(ptr noundef %50, ptr noundef nonnull %call.i, ptr noundef nonnull %psy_cfg) #7
  %bat = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 12
  %51 = ptrtoint ptr %bat to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call39, ptr %bat, align 4
  %cmp.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then42, label %if.end47

if.then42:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %di, align 4
  %54 = ptrtoint ptr %call39 to i32
  %call46 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %53, i32 noundef %54, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end47:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i) #7
  %55 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 -1 to ptr), ptr %info.i, align 4, !annotation !315
  %call.i84 = call i32 @power_supply_get_battery_info(ptr noundef %call39, ptr noundef nonnull %info.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %cmp.i85 = icmp slt i32 %call.i84, 0
  br i1 %cmp.i85, label %if.end47.bq27xxx_battery_settings.exit_crit_edge, label %if.end.i

if.end47.bq27xxx_battery_settings.exit_crit_edge: ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq27xxx_battery_settings.exit

if.end.i:                                         ; preds = %if.end47
  %56 = ptrtoint ptr %dm_regs28 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dm_regs28, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end2.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.40) #10
  br label %bq27xxx_battery_settings.exit

if.end2.i:                                        ; preds = %if.end.i
  %60 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %info.i, align 4
  %energy_full_design_uwh.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %energy_full_design_uwh.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %energy_full_design_uwh.i, align 4
  %charge_full_design_uah.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %61, i32 0, i32 2
  %64 = ptrtoint ptr %charge_full_design_uah.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %charge_full_design_uah.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp3.not.i = icmp eq i32 %63, %65
  br i1 %cmp3.not.i, label %if.end2.i.if.end21.i_crit_edge, label %if.then4.i

if.end2.i.if.end21.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then4.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %63)
  %cmp6.i = icmp eq i32 %63, -22
  br i1 %cmp6.i, label %if.then4.i.if.end21.sink.split.i_crit_edge, label %if.else.i

if.then4.i.if.end21.sink.split.i_crit_edge:       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.sink.split.i

if.else.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %65)
  %cmp13.i = icmp eq i32 %65, -22
  br i1 %cmp13.i, label %if.else.i.if.end21.sink.split.i_crit_edge, label %if.else.i.if.end21.i_crit_edge

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.else.i.if.end21.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.sink.split.i

if.end21.sink.split.i:                            ; preds = %if.else.i.if.end21.sink.split.i_crit_edge, %if.then4.i.if.end21.sink.split.i_crit_edge
  %.str.44.sink.i = phi ptr [ @.str.44, %if.then4.i.if.end21.sink.split.i_crit_edge ], [ @.str.47, %if.else.i.if.end21.sink.split.i_crit_edge ]
  %66 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull %.str.44.sink.i) #10
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.sink.split.i, %if.else.i.if.end21.i_crit_edge, %if.end2.i.if.end21.i_crit_edge
  %68 = ptrtoint ptr %dm_regs28 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dm_regs28, align 4
  %max23.i = getelementptr %struct.bq27xxx_dm_reg, ptr %69, i32 1, i32 4
  %70 = ptrtoint ptr %max23.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %max23.i, align 2
  %conv.i = zext i16 %71 to i32
  %72 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %info.i, align 4
  %energy_full_design_uwh24.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %energy_full_design_uwh24.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %energy_full_design_uwh24.i, align 4
  %mul.i = mul nuw nsw i32 %conv.i, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %mul.i)
  %cmp25.i = icmp ugt i32 %75, %mul.i
  br i1 %cmp25.i, label %do.end30.i, label %if.end21.i.if.end34.i_crit_edge

if.end21.i.if.end34.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

do.end30.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.50, i32 noundef %75) #10
  %78 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %info.i, align 4
  %energy_full_design_uwh33.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %energy_full_design_uwh33.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -22, ptr %energy_full_design_uwh33.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end30.i, %if.end21.i.if.end34.i_crit_edge
  %81 = ptrtoint ptr %dm_regs28 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dm_regs28, align 4
  %max37.i = getelementptr inbounds %struct.bq27xxx_dm_reg, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %max37.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %max37.i, align 2
  %conv38.i = zext i16 %84 to i32
  %85 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %info.i, align 4
  %charge_full_design_uah39.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %charge_full_design_uah39.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %charge_full_design_uah39.i, align 4
  %mul40.i = mul nuw nsw i32 %conv38.i, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %mul40.i)
  %cmp41.i = icmp ugt i32 %88, %mul40.i
  br i1 %cmp41.i, label %do.end46.i, label %if.end34.i.if.end50.i_crit_edge

if.end34.i.if.end50.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

do.end46.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.53, i32 noundef %88) #10
  %91 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %info.i, align 4
  %charge_full_design_uah49.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %charge_full_design_uah49.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -22, ptr %charge_full_design_uah49.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end46.i, %if.end34.i.if.end50.i_crit_edge
  %94 = ptrtoint ptr %dm_regs28 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dm_regs28, align 4
  %min53.i = getelementptr %struct.bq27xxx_dm_reg, ptr %95, i32 2, i32 3
  %96 = ptrtoint ptr %min53.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %min53.i, align 2
  %conv54.i = zext i16 %97 to i32
  %98 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %info.i, align 4
  %voltage_min_design_uv.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %voltage_min_design_uv.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %voltage_min_design_uv.i, align 4
  %mul59.i = mul nuw nsw i32 %conv54.i, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %mul59.i)
  %cmp60.i = icmp ult i32 %101, %mul59.i
  br i1 %cmp60.i, label %land.lhs.true.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end50.i
  %max57.i = getelementptr %struct.bq27xxx_dm_reg, ptr %95, i32 2, i32 4
  %102 = ptrtoint ptr %max57.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %max57.i, align 2
  %conv58.i = zext i16 %103 to i32
  %mul63.i = mul nuw nsw i32 %conv58.i, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %mul63.i)
  %cmp64.i = icmp ule i32 %101, %mul63.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %101)
  %cmp67.not.i = icmp eq i32 %101, -22
  %or.cond.i = or i1 %cmp67.not.i, %cmp64.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end76.i_crit_edge, label %lor.lhs.false.i.do.end72.i_crit_edge

lor.lhs.false.i.do.end72.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72.i

lor.lhs.false.i.if.end76.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.i

land.lhs.true.i:                                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %101)
  %cmp67.not.old.i = icmp eq i32 %101, -22
  br i1 %cmp67.not.old.i, label %land.lhs.true.i.if.end76.i_crit_edge, label %land.lhs.true.i.do.end72.i_crit_edge

land.lhs.true.i.do.end72.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72.i

land.lhs.true.i.if.end76.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.i

do.end72.i:                                       ; preds = %land.lhs.true.i.do.end72.i_crit_edge, %lor.lhs.false.i.do.end72.i_crit_edge
  %104 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.56, i32 noundef %101) #10
  %106 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %info.i, align 4
  %voltage_min_design_uv75.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %voltage_min_design_uv75.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -22, ptr %voltage_min_design_uv75.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %do.end72.i, %land.lhs.true.i.if.end76.i_crit_edge, %lor.lhs.false.i.if.end76.i_crit_edge
  %109 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %info.i, align 4
  %energy_full_design_uwh77.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %energy_full_design_uwh77.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %energy_full_design_uwh77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %112)
  %cmp78.not.i = icmp eq i32 %112, -22
  br i1 %cmp78.not.i, label %if.end76.i.lor.lhs.false84.i_crit_edge, label %land.lhs.true80.i

if.end76.i.lor.lhs.false84.i_crit_edge:           ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false84.i

land.lhs.true80.i:                                ; preds = %if.end76.i
  %charge_full_design_uah81.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %110, i32 0, i32 2
  %113 = ptrtoint ptr %charge_full_design_uah81.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %charge_full_design_uah81.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %114)
  %cmp82.not.i = icmp eq i32 %114, -22
  br i1 %cmp82.not.i, label %land.lhs.true80.i.lor.lhs.false84.i_crit_edge, label %land.lhs.true80.i.if.then88.i_crit_edge

land.lhs.true80.i.if.then88.i_crit_edge:          ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then88.i

land.lhs.true80.i.lor.lhs.false84.i_crit_edge:    ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false84.i

lor.lhs.false84.i:                                ; preds = %land.lhs.true80.i.lor.lhs.false84.i_crit_edge, %if.end76.i.lor.lhs.false84.i_crit_edge
  %voltage_min_design_uv85.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %110, i32 0, i32 3
  %115 = ptrtoint ptr %voltage_min_design_uv85.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %voltage_min_design_uv85.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %116)
  %cmp86.not.i = icmp eq i32 %116, -22
  br i1 %cmp86.not.i, label %lor.lhs.false84.i.bq27xxx_battery_settings.exit_crit_edge, label %lor.lhs.false84.i.if.then88.i_crit_edge

lor.lhs.false84.i.if.then88.i_crit_edge:          ; preds = %lor.lhs.false84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then88.i

lor.lhs.false84.i.bq27xxx_battery_settings.exit_crit_edge: ; preds = %lor.lhs.false84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq27xxx_battery_settings.exit

if.then88.i:                                      ; preds = %lor.lhs.false84.i.if.then88.i_crit_edge, %land.lhs.true80.i.if.then88.i_crit_edge
  call fastcc void @bq27xxx_battery_set_config(ptr noundef %di, ptr noundef %110) #7
  br label %bq27xxx_battery_settings.exit

bq27xxx_battery_settings.exit:                    ; preds = %if.then88.i, %lor.lhs.false84.i.bq27xxx_battery_settings.exit_crit_edge, %do.end.i, %if.end47.bq27xxx_battery_settings.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #7
  call void @bq27xxx_battery_update(ptr noundef %di)
  call void @mutex_lock_nested(ptr noundef nonnull @bq27xxx_list_lock, i32 noundef 0) #7
  %list = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 13
  %117 = load ptr, ptr @bq27xxx_battery_devices, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @bq27xxx_battery_devices, ptr noundef %117) #7
  br i1 %call.i.i, label %if.end.i.i, label %bq27xxx_battery_settings.exit.list_add.exit_crit_edge

bq27xxx_battery_settings.exit.list_add.exit_crit_edge: ; preds = %bq27xxx_battery_settings.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %bq27xxx_battery_settings.exit
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %list, ptr %prev1.i.i, align 4
  %119 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %117, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 13, i32 1
  %120 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @bq27xxx_battery_devices, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @bq27xxx_battery_devices, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %bq27xxx_battery_settings.exit.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @bq27xxx_list_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then42, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %if.then42 ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bq27xxx_battery_poll(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -92
  tail call void @bq27xxx_battery_update(ptr noundef %add.ptr)
  %0 = load i32, ptr @poll_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %0, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work, i32 noundef %mul) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq27xxx_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %lock = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %last_update = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %last_update to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_update, align 4
  %add = add i32 %1, 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %work = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 11
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #7
  tail call void @bq27xxx_battery_update(ptr noundef %call) #7
  %3 = load i32, ptr @poll_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = mul i32 %3, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef %mul.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %psp)
  %cond = icmp eq i32 %psp, 3
  %flags14 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 8, i32 8
  %5 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags14, align 4
  br i1 %cond, label %sw.bb12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp slt i32 %6, 0
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true
  %7 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %if.end8.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 12, label %sw.bb10
    i32 21, label %sw.bb64
    i32 17, label %sw.bb16
    i32 47, label %sw.bb18
    i32 51, label %sw.bb21
    i32 52, label %sw.bb23
    i32 60, label %sw.bb30
    i32 61, label %sw.bb33
    i32 62, label %sw.bb36
    i32 6, label %sw.bb39
    i32 26, label %sw.bb42
    i32 24, label %sw.bb52
    i32 22, label %sw.bb55
    i32 74, label %sw.bb69
    i32 2, label %sw.bb66
    i32 7, label %sw.bb58
    i32 45, label %sw.bb61
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call fastcc i32 @bq27xxx_battery_current_and_status(ptr noundef %call, ptr noundef null, ptr noundef %val)
  br label %cleanup

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call fastcc i32 @bq27xxx_battery_voltage(ptr noundef %call, ptr noundef %val)
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = xor i32 %6, -1
  %.lobit.not = lshr i32 %8, 31
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.lobit.not, ptr %val, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call fastcc i32 @bq27xxx_battery_current_and_status(ptr noundef %call, ptr noundef %val, ptr noundef null)
  br label %cleanup

sw.bb18:                                          ; preds = %if.end8
  %capacity = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 8, i32 6
  %10 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capacity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp slt i32 %11, 0
  br i1 %cmp.i, label %sw.bb18.cleanup_crit_edge, label %if.end.i

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bq27xxx_battery_capacity_level(ptr noundef %call, ptr noundef %val)
  br label %cleanup

sw.bb23:                                          ; preds = %if.end8
  %cache24 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 8
  %13 = ptrtoint ptr %cache24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cache24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i119 = icmp slt i32 %14, 0
  br i1 %cmp.i119, label %sw.bb23.cleanup_crit_edge, label %if.then27

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  %sub28 = add nsw i32 %14, -2731
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub28, ptr %val, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %if.end8
  %time_to_empty = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %time_to_empty to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %time_to_empty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i123 = icmp slt i32 %17, 0
  br i1 %cmp.i123, label %sw.bb30.cleanup_crit_edge, label %if.end.i124

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i124:                                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val, align 4
  br label %cleanup

sw.bb33:                                          ; preds = %if.end8
  %time_to_empty_avg = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %time_to_empty_avg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %time_to_empty_avg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i127 = icmp slt i32 %20, 0
  br i1 %cmp.i127, label %sw.bb33.cleanup_crit_edge, label %if.end.i128

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i128:                                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val, align 4
  br label %cleanup

sw.bb36:                                          ; preds = %if.end8
  %time_to_full = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 8, i32 3
  %22 = ptrtoint ptr %time_to_full to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %time_to_full, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i131 = icmp slt i32 %23, 0
  br i1 %cmp.i131, label %sw.bb36.cleanup_crit_edge, label %if.end.i132

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i132:                                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %val, align 4
  br label %cleanup

sw.bb39:                                          ; preds = %if.end8
  %opts = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 3
  %25 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %opts, align 4
  %and = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.bb42:                                          ; preds = %if.end8
  %regs = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 15
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i8, ptr %30, i32 10
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %cmp43.not = icmp eq i8 %32, -1
  br i1 %cmp43.not, label %if.else48, label %if.then45

if.then45:                                        ; preds = %sw.bb42
  %call46 = tail call fastcc i32 @bq27xxx_battery_read_nac(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp.i135 = icmp slt i32 %call46, 0
  br i1 %cmp.i135, label %if.then45.cleanup_crit_edge, label %if.end.i136

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i136:                                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call46, ptr %val, align 4
  br label %cleanup

if.else48:                                        ; preds = %sw.bb42
  %call49 = tail call fastcc i32 @bq27xxx_battery_read_rc(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp.i139 = icmp slt i32 %call49, 0
  br i1 %cmp.i139, label %if.else48.cleanup_crit_edge, label %if.end.i140

if.else48.cleanup_crit_edge:                      ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i140:                                      ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call49, ptr %val, align 4
  br label %cleanup

sw.bb52:                                          ; preds = %if.end8
  %charge_full = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 8, i32 4
  %35 = ptrtoint ptr %charge_full to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %charge_full, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i143 = icmp slt i32 %36, 0
  br i1 %cmp.i143, label %sw.bb52.cleanup_crit_edge, label %if.end.i144

sw.bb52.cleanup_crit_edge:                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i144:                                      ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %val, align 4
  br label %cleanup

sw.bb55:                                          ; preds = %if.end8
  %charge_design_full = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 9
  %38 = ptrtoint ptr %charge_design_full to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %charge_design_full, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i147 = icmp slt i32 %39, 0
  br i1 %cmp.i147, label %sw.bb55.cleanup_crit_edge, label %if.end.i148

sw.bb55.cleanup_crit_edge:                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i148:                                      ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %val, align 4
  br label %cleanup

sw.bb58:                                          ; preds = %if.end8
  %cycle_count = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 8, i32 5
  %41 = ptrtoint ptr %cycle_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cycle_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i151 = icmp slt i32 %42, 0
  br i1 %cmp.i151, label %sw.bb58.cleanup_crit_edge, label %if.end.i152

sw.bb58.cleanup_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i152:                                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %val, align 4
  br label %cleanup

sw.bb61:                                          ; preds = %if.end8
  %energy = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 8, i32 7
  %44 = ptrtoint ptr %energy to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %energy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i155 = icmp slt i32 %45, 0
  br i1 %cmp.i155, label %sw.bb61.cleanup_crit_edge, label %if.end.i156

sw.bb61.cleanup_crit_edge:                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i156:                                      ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %val, align 4
  br label %cleanup

sw.bb64:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = tail call fastcc i32 @bq27xxx_battery_pwr_avg(ptr noundef %call, ptr noundef %val)
  br label %cleanup

sw.bb66:                                          ; preds = %if.end8
  %health = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 8, i32 9
  %47 = ptrtoint ptr %health to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %health, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i159 = icmp slt i32 %48, 0
  br i1 %cmp.i159, label %sw.bb66.cleanup_crit_edge, label %if.end.i160

sw.bb66.cleanup_crit_edge:                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i160:                                      ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %val, align 4
  br label %cleanup

sw.bb69:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.29, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb69, %if.end.i160, %sw.bb66.cleanup_crit_edge, %sw.bb64, %if.end.i156, %sw.bb61.cleanup_crit_edge, %if.end.i152, %sw.bb58.cleanup_crit_edge, %if.end.i148, %sw.bb55.cleanup_crit_edge, %if.end.i144, %sw.bb52.cleanup_crit_edge, %if.end.i140, %if.else48.cleanup_crit_edge, %if.end.i136, %if.then45.cleanup_crit_edge, %if.else, %if.then40, %if.end.i132, %sw.bb36.cleanup_crit_edge, %if.end.i128, %sw.bb33.cleanup_crit_edge, %if.end.i124, %sw.bb30.cleanup_crit_edge, %if.then27, %sw.bb23.cleanup_crit_edge, %sw.bb21, %if.end.i, %sw.bb18.cleanup_crit_edge, %sw.bb16, %sw.bb12, %sw.bb10, %sw.bb, %if.end8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ 0, %sw.bb69 ], [ %call65, %sw.bb64 ], [ 0, %if.then40 ], [ 0, %if.else ], [ 0, %if.then27 ], [ 0, %sw.bb21 ], [ %call17, %sw.bb16 ], [ 0, %sw.bb12 ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb ], [ 0, %if.end.i ], [ %11, %sw.bb18.cleanup_crit_edge ], [ %14, %sw.bb23.cleanup_crit_edge ], [ 0, %if.end.i124 ], [ %17, %sw.bb30.cleanup_crit_edge ], [ 0, %if.end.i128 ], [ %20, %sw.bb33.cleanup_crit_edge ], [ 0, %if.end.i132 ], [ %23, %sw.bb36.cleanup_crit_edge ], [ 0, %if.end.i136 ], [ %call46, %if.then45.cleanup_crit_edge ], [ 0, %if.end.i140 ], [ %call49, %if.else48.cleanup_crit_edge ], [ 0, %if.end.i144 ], [ %36, %sw.bb52.cleanup_crit_edge ], [ 0, %if.end.i148 ], [ %39, %sw.bb55.cleanup_crit_edge ], [ 0, %if.end.i152 ], [ %42, %sw.bb58.cleanup_crit_edge ], [ 0, %if.end.i156 ], [ %45, %sw.bb61.cleanup_crit_edge ], [ 0, %if.end.i160 ], [ %48, %sw.bb66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bq27xxx_external_power_changed(ptr noundef %psy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %work = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call, i32 0, i32 11
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register_no_ws(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bq27xxx_battery_teardown(ptr noundef %di) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @poll_interval, align 4
  %work = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 11
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #7
  %bat = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 12
  %0 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat, align 4
  tail call void @power_supply_unregister(ptr noundef %1) #7
  tail call void @mutex_lock_nested(ptr noundef nonnull @bq27xxx_list_lock, i32 noundef 0) #7
  %list = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @bq27xxx_list_lock) #7
  %lock = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 14
  tail call void @mutex_destroy(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @poll_interval_param_set(ptr noundef %val, ptr noundef %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %call = tail call i32 @param_set_uint(ptr noundef %val, ptr noundef %kp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp1 = icmp eq i32 %4, %8
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @mutex_lock_nested(ptr noundef nonnull @bq27xxx_list_lock, i32 noundef 0) #7
  %.pn19 = load ptr, ptr @bq27xxx_battery_devices, align 4
  %cmp2.not20 = icmp eq ptr %.pn19, @bq27xxx_battery_devices
  br i1 %cmp2.not20, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn21 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn19, %if.end.for.body_crit_edge ]
  %work = getelementptr i8, ptr %.pn21, i32 -104
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work, i32 noundef 0) #7
  %10 = ptrtoint ptr %.pn21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn21, align 4
  %cmp2.not = icmp eq ptr %.pn, @bq27xxx_battery_devices
  br i1 %cmp2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bq27xxx_list_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_uint(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_uint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq27xxx_battery_current_and_status(ptr noundef %di, ptr noundef writeonly %val_curr, ptr noundef writeonly %val_status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %opts = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 3
  %0 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opts, align 4
  %tobool.not.i = icmp eq ptr %di, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %lor.lhs.false.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false.i:                                  ; preds = %entry
  %regs.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.i = icmp eq i8 %5, -1
  br i1 %cmp.i, label %lor.lhs.false.i.do.end_crit_edge, label %if.end.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %bus.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 4
  %call.i = tail call i32 %7(ptr noundef nonnull %di, i8 noundef zeroext %5, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %do.body.i, label %lor.lhs.false.i82

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_current_and_status, %do.end)) #7
          to label %if.then14.i [label %do.end], !srcloc !312

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %di, align 4
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef %conv17.i, i32 noundef 4) #7
  br label %do.end

do.end:                                           ; preds = %if.then14.i, %do.body.i, %lor.lhs.false.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i7796 = phi i32 [ %call.i, %do.body.i ], [ %call.i, %if.then14.i ], [ -22, %entry.do.end_crit_edge ], [ -22, %lor.lhs.false.i.do.end_crit_edge ]
  %14 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.30) #10
  br label %cleanup

lor.lhs.false.i82:                                ; preds = %if.end.i
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %arrayidx.i80 = getelementptr i8, ptr %17, i32 5
  %18 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp.i81 = icmp eq i8 %19, -1
  br i1 %cmp.i81, label %lor.lhs.false.i82.do.end7_crit_edge, label %if.end.i86

lor.lhs.false.i82.do.end7_crit_edge:              ; preds = %lor.lhs.false.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.end.i86:                                       ; preds = %lor.lhs.false.i82
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 4
  %call.i84 = tail call i32 %21(ptr noundef nonnull %di, i8 noundef zeroext %19, i1 noundef zeroext %tobool) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %cmp5.i85 = icmp slt i32 %call.i84, 0
  br i1 %cmp5.i85, label %do.body.i87, label %if.end9

do.body.i87:                                      ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_current_and_status, %do.end7)) #7
          to label %if.then14.i90 [label %do.end7], !srcloc !312

if.then14.i90:                                    ; preds = %do.body.i87
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %di, align 4
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %arrayidx16.i88 = getelementptr i8, ptr %25, i32 5
  %26 = ptrtoint ptr %arrayidx16.i88 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx16.i88, align 1
  %conv17.i89 = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %23, ptr noundef nonnull @.str.13, i32 noundef %conv17.i89, i32 noundef 5) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then14.i90, %do.body.i87, %lor.lhs.false.i82.do.end7_crit_edge
  %retval.0.i91103 = phi i32 [ %call.i84, %do.body.i87 ], [ %call.i84, %if.then14.i90 ], [ -22, %lor.lhs.false.i82.do.end7_crit_edge ]
  %28 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end.i86
  %30 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %opts, align 4
  %and11 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end9
  %and14 = and i32 %call.i84, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body17, label %if.then13.if.end29_crit_edge

if.then13.if.end29_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.body17:                                        ; preds = %if.then13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_battery_current_and_status.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_current_and_status, %do.end28)) #7
          to label %if.then24 [label %do.end28], !srcloc !312

if.then24:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_battery_current_and_status.__UNIQUE_ID_ddebug195, ptr noundef %33, ptr noundef nonnull @.str.35) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body17
  %sub = sub nsw i32 0, %call.i
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %if.then13.if.end29_crit_edge
  %curr.0 = phi i32 [ %call.i, %if.then13.if.end29_crit_edge ], [ %sub, %do.end28 ]
  %mul = mul i32 %curr.0, 3570
  %div = sdiv i32 %mul, 20
  br label %if.end32

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %sext = shl i32 %call.i, 16
  %conv30 = ashr exact i32 %sext, 16
  %mul31 = mul nsw i32 %conv30, 1000
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.end29
  %curr.1 = phi i32 [ %div, %if.end29 ], [ %mul31, %if.else ]
  %tobool33.not = icmp eq ptr %val_curr, null
  br i1 %tobool33.not, label %if.end32.if.end35_crit_edge, label %if.then34

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %val_curr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %curr.1, ptr %val_curr, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end32.if.end35_crit_edge
  %tobool36.not = icmp eq ptr %val_status, null
  br i1 %tobool36.not, label %if.end35.cleanup_crit_edge, label %if.then37

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %curr.1)
  %cmp38 = icmp sgt i32 %curr.1, 0
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %val_status to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %val_status, align 4
  br label %cleanup

if.else41:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %curr.1)
  %cmp42 = icmp slt i32 %curr.1, 0
  br i1 %cmp42, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %val_status to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %val_status, align 4
  br label %cleanup

if.else45:                                        ; preds = %if.else41
  %37 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %opts, align 4
  %39 = and i32 %38, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %40 = icmp eq i32 %39, 0
  %.sink.i = select i1 %40, i32 512, i32 32
  %and10.i = and i32 %.sink.i, %call.i84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %retval.0.i93.not = icmp eq i32 %and10.i, 0
  br i1 %retval.0.i93.not, label %if.else48, label %if.then47

if.then47:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %val_status to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %val_status, align 4
  br label %cleanup

if.else48:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %val_status to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %val_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else48, %if.then47, %if.then44, %if.then40, %if.end35.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %retval.0.i7796, %do.end ], [ %retval.0.i91103, %do.end7 ], [ 0, %if.then40 ], [ 0, %if.then47 ], [ 0, %if.else48 ], [ 0, %if.then44 ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq27xxx_battery_voltage(ptr noundef %di, ptr nocapture noundef writeonly %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %di, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %lor.lhs.false.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false.i:                                  ; preds = %entry
  %regs.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 3
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i = icmp eq i8 %3, -1
  br i1 %cmp.i, label %lor.lhs.false.i.do.end_crit_edge, label %if.end.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %bus.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 4
  %call.i = tail call i32 %5(ptr noundef nonnull %di, i8 noundef zeroext %3, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_voltage, %do.end)) #7
          to label %if.then14.i [label %do.end], !srcloc !312

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %di, align 4
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %9, i32 3
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %conv17.i, i32 noundef 3) #7
  br label %do.end

do.end:                                           ; preds = %if.then14.i, %do.body.i, %lor.lhs.false.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i6 = phi i32 [ %call.i, %do.body.i ], [ %call.i, %if.then14.i ], [ -22, %entry.do.end_crit_edge ], [ -22, %lor.lhs.false.i.do.end_crit_edge ]
  %12 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %call.i, 1000
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i6, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @bq27xxx_battery_capacity_level(ptr nocapture noundef readonly %di, ptr nocapture noundef writeonly %val) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %opts = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 3
  %0 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opts, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else18, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 8, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and1 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else, label %if.then.if.end60_crit_edge

if.then.if.end60_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else:                                          ; preds = %if.then
  %and6 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else9, label %if.else.if.end60_crit_edge

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and12 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %. = select i1 %tobool13.not, i32 3, i32 1
  br label %if.end60

if.else18:                                        ; preds = %entry
  %and20 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %flags39 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 8, i32 8
  %4 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags39, align 4
  br i1 %tobool21.not, label %if.else37, label %if.then22

if.then22:                                        ; preds = %if.else18
  %and25 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else28, label %if.then22.if.end60_crit_edge

if.then22.if.end60_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else28:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %and31 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %.1 = select i1 %tobool32.not, i32 3, i32 1
  br label %if.end60

if.else37:                                        ; preds = %if.else18
  %and40 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else43, label %if.else37.if.end60_crit_edge

if.else37.if.end60_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else43:                                        ; preds = %if.else37
  %and46 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else49, label %if.else43.if.end60_crit_edge

if.else43.if.end60_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else49:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #9
  %and52 = and i32 %5, 2
  %6 = xor i32 %and52, 3
  br label %if.end60

if.end60:                                         ; preds = %if.else49, %if.else43.if.end60_crit_edge, %if.else37.if.end60_crit_edge, %if.else28, %if.then22.if.end60_crit_edge, %if.else9, %if.else.if.end60_crit_edge, %if.then.if.end60_crit_edge
  %level.0 = phi i32 [ 5, %if.then.if.end60_crit_edge ], [ 2, %if.else.if.end60_crit_edge ], [ %., %if.else9 ], [ 5, %if.then22.if.end60_crit_edge ], [ %.1, %if.else28 ], [ 5, %if.else37.if.end60_crit_edge ], [ 2, %if.else43.if.end60_crit_edge ], [ %6, %if.else49 ]
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %level.0, ptr %val, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq27xxx_battery_read_nac(ptr noundef %di) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %opts = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 3
  %0 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opts, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool.not.i.i = icmp eq ptr %di, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i.i, label %if.then.do.body.i9_crit_edge, label %lor.lhs.false.i

if.then.do.body.i9_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i9

lor.lhs.false.i:                                  ; preds = %if.then
  %regs.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.i = icmp eq i8 %5, -1
  br i1 %cmp.i, label %lor.lhs.false.i.lor.lhs.false.i.i_crit_edge, label %if.end.i

lor.lhs.false.i.lor.lhs.false.i.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %bus.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 4
  %call.i = tail call i32 %7(ptr noundef nonnull %di, i8 noundef zeroext %5, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %do.body.i, label %if.end.i.bq27xxx_read.exit_crit_edge

if.end.i.bq27xxx_read.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq27xxx_read.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_read_nac, %bq27xxx_read.exit)) #7
          to label %if.then14.i [label %bq27xxx_read.exit], !srcloc !312

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %di, align 4
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %11, i32 5
  %12 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef %conv17.i, i32 noundef 5) #7
  br label %lor.lhs.false.i.i

bq27xxx_read.exit:                                ; preds = %do.body.i, %if.end.i.bq27xxx_read.exit_crit_edge
  %14 = and i32 %call.i, -2147483632
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %14)
  %.not = icmp eq i32 %14, 16
  br i1 %.not, label %bq27xxx_read.exit.cleanup_crit_edge, label %bq27xxx_read.exit.lor.lhs.false.i.i_crit_edge

bq27xxx_read.exit.lor.lhs.false.i.i_crit_edge:    ; preds = %bq27xxx_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i

bq27xxx_read.exit.cleanup_crit_edge:              ; preds = %bq27xxx_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  br i1 %tobool.not.i.i, label %if.end4.do.body.i9_crit_edge, label %if.end4.lor.lhs.false.i.i_crit_edge

if.end4.lor.lhs.false.i.i_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i

if.end4.do.body.i9_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i9

lor.lhs.false.i.i:                                ; preds = %if.end4.lor.lhs.false.i.i_crit_edge, %bq27xxx_read.exit.lor.lhs.false.i.i_crit_edge, %if.then14.i, %lor.lhs.false.i.lor.lhs.false.i.i_crit_edge
  %regs.i.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %16, i32 10
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp.i.i = icmp eq i8 %18, -1
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.do.body.i9_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.do.body.i9_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i9

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %bus.i.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %19 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i.i, align 4
  %call.i.i = tail call i32 %20(ptr noundef nonnull %di, i8 noundef zeroext %18, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp5.i.i, label %do.body.i.i, label %if.end8.i

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_read_nac, %do.body.i9)) #7
          to label %if.then14.i.i [label %do.body.i9], !srcloc !312

if.then14.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %di, align 4
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 4
  %arrayidx16.i.i = getelementptr i8, ptr %24, i32 10
  %25 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx16.i.i, align 1
  %conv17.i.i = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %22, ptr noundef nonnull @.str.13, i32 noundef %conv17.i.i, i32 noundef 10) #7
  br label %do.body.i9

do.body.i9:                                       ; preds = %if.then14.i.i, %do.body.i.i, %lor.lhs.false.i.i.do.body.i9_crit_edge, %if.end4.do.body.i9_crit_edge, %if.then.do.body.i9_crit_edge
  %retval.0.i2124.i = phi i32 [ %call.i.i, %do.body.i.i ], [ %call.i.i, %if.then14.i.i ], [ -22, %if.end4.do.body.i9_crit_edge ], [ -22, %lor.lhs.false.i.i.do.body.i9_crit_edge ], [ -22, %if.then.do.body.i9_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_battery_read_charge.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_read_nac, %cleanup)) #7
          to label %if.then6.i [label %cleanup], !srcloc !312

if.then6.i:                                       ; preds = %do.body.i9
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_battery_read_charge.__UNIQUE_ID_ddebug191, ptr noundef %28, ptr noundef nonnull @.str.20, i32 noundef 10, i32 noundef %retval.0.i2124.i) #7
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %opts, align 4
  %and.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  %charge.0.v.i = select i1 %tobool9.not.i, i32 1000, i32 178
  %charge.0.i = mul i32 %charge.0.v.i, %call.i.i
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i, %if.then6.i, %do.body.i9, %bq27xxx_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %bq27xxx_read.exit.cleanup_crit_edge ], [ %charge.0.i, %if.end8.i ], [ %retval.0.i2124.i, %if.then6.i ], [ %retval.0.i2124.i, %do.body.i9 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq27xxx_battery_read_rc(ptr noundef %di) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not.i.i = icmp eq ptr %di, null
  br i1 %tobool.not.i.i, label %entry.do.body.i_crit_edge, label %lor.lhs.false.i.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

lor.lhs.false.i.i:                                ; preds = %entry
  %regs.i.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 11
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i.i = icmp eq i8 %3, -1
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.do.body.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.do.body.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %bus.i.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef nonnull %di, i8 noundef zeroext %3, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp5.i.i, label %do.body.i.i, label %if.end8.i

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_read_rc, %do.body.i)) #7
          to label %if.then14.i.i [label %do.body.i], !srcloc !312

if.then14.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %di, align 4
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %arrayidx16.i.i = getelementptr i8, ptr %9, i32 11
  %10 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16.i.i, align 1
  %conv17.i.i = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %conv17.i.i, i32 noundef 11) #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.then14.i.i, %do.body.i.i, %lor.lhs.false.i.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %retval.0.i2124.i = phi i32 [ %call.i.i, %do.body.i.i ], [ %call.i.i, %if.then14.i.i ], [ -22, %entry.do.body.i_crit_edge ], [ -22, %lor.lhs.false.i.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_battery_read_charge.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_read_rc, %bq27xxx_battery_read_charge.exit)) #7
          to label %if.then6.i [label %bq27xxx_battery_read_charge.exit], !srcloc !312

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_battery_read_charge.__UNIQUE_ID_ddebug191, ptr noundef %13, ptr noundef nonnull @.str.20, i32 noundef 11, i32 noundef %retval.0.i2124.i) #7
  br label %bq27xxx_battery_read_charge.exit

if.end8.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %opts.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 3
  %14 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %opts.i, align 4
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  %charge.0.v.i = select i1 %tobool9.not.i, i32 1000, i32 178
  %charge.0.i = mul i32 %charge.0.v.i, %call.i.i
  br label %bq27xxx_battery_read_charge.exit

bq27xxx_battery_read_charge.exit:                 ; preds = %if.end8.i, %if.then6.i, %do.body.i
  %retval.0.i = phi i32 [ %charge.0.i, %if.end8.i ], [ %retval.0.i2124.i, %if.then6.i ], [ %retval.0.i2124.i, %do.body.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq27xxx_battery_pwr_avg(ptr noundef %di, ptr nocapture noundef writeonly %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %di, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %lor.lhs.false.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false.i:                                  ; preds = %entry
  %regs.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 17
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i = icmp eq i8 %3, -1
  br i1 %cmp.i, label %lor.lhs.false.i.do.end_crit_edge, label %if.end.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %bus.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 4
  %call.i = tail call i32 %5(ptr noundef nonnull %di, i8 noundef zeroext %3, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_pwr_avg, %do.end)) #7
          to label %if.then14.i [label %do.end], !srcloc !312

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %di, align 4
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %9, i32 17
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %conv17.i, i32 noundef 17) #7
  br label %do.end

do.end:                                           ; preds = %if.then14.i, %do.body.i, %lor.lhs.false.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i14 = phi i32 [ %call.i, %do.body.i ], [ %call.i, %if.then14.i ], [ -22, %entry.do.end_crit_edge ], [ -22, %lor.lhs.false.i.do.end_crit_edge ]
  %12 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.38, i32 noundef 17, i32 noundef %retval.0.i14) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %opts = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 3
  %14 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %opts, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %call.i, 29200
  %div = sdiv i32 %mul, 20
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sext = shl i32 %call.i, 16
  %conv2 = ashr exact i32 %sext, 16
  %mul3 = mul nsw i32 %conv2, 10000
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %storemerge = phi i32 [ %mul3, %if.else ], [ %div, %if.then1 ]
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end
  %retval.0 = phi i32 [ %retval.0.i14, %do.end ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bq27xxx_battery_set_config(ptr noundef %di, ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  %bd = alloca %struct.bq27xxx_dm_buf, align 1
  %bt = alloca %struct.bq27xxx_dm_buf, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %bd) #7
  %0 = getelementptr inbounds i8, ptr %bd, i32 2
  %1 = call ptr @memset(ptr %0, i32 0, i32 34)
  %dm_regs = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 5
  %2 = ptrtoint ptr %dm_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dm_regs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 2
  %6 = ptrtoint ptr %bd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %bd, align 1
  %block = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %bd, i32 0, i32 1
  %offset = getelementptr inbounds %struct.bq27xxx_dm_reg, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %offset, align 1
  %9 = lshr i8 %8, 5
  %10 = ptrtoint ptr %block to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %block, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %bt) #7
  %11 = getelementptr inbounds i8, ptr %bt, i32 2
  %12 = call ptr @memset(ptr %11, i32 0, i32 34)
  %arrayidx6 = getelementptr %struct.bq27xxx_dm_reg, ptr %3, i32 2
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6, align 2
  %15 = ptrtoint ptr %bt to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %bt, align 1
  %block8 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %bt, i32 0, i32 1
  %offset11 = getelementptr %struct.bq27xxx_dm_reg, ptr %3, i32 2, i32 1
  %16 = ptrtoint ptr %offset11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %offset11, align 1
  %18 = lshr i8 %17, 5
  %19 = ptrtoint ptr %block8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %block8, align 1
  %call = tail call fastcc i32 @bq27xxx_battery_unseal(ptr noundef %di)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %charge_full_design_uah = getelementptr inbounds %struct.power_supply_battery_info, ptr %info, i32 0, i32 2
  %20 = ptrtoint ptr %charge_full_design_uah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %charge_full_design_uah, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %21)
  %cmp16.not = icmp eq i32 %21, -22
  br i1 %cmp16.not, label %if.end.if.end26_crit_edge, label %land.lhs.true

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %energy_full_design_uwh = getelementptr inbounds %struct.power_supply_battery_info, ptr %info, i32 0, i32 1
  %22 = ptrtoint ptr %energy_full_design_uwh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %energy_full_design_uwh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %23)
  %cmp18.not = icmp eq i32 %23, -22
  br i1 %cmp18.not, label %land.lhs.true.if.end26_crit_edge, label %if.then20

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @bq27xxx_battery_read_dm_block(ptr noundef %di, ptr noundef nonnull %bd)
  %24 = ptrtoint ptr %charge_full_design_uah to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %charge_full_design_uah, align 4
  %div23 = sdiv i32 %25, 1000
  call fastcc void @bq27xxx_battery_update_dm_block(ptr noundef %di, ptr noundef nonnull %bd, i32 noundef 0, i32 noundef %div23)
  %26 = ptrtoint ptr %energy_full_design_uwh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %energy_full_design_uwh, align 4
  %div25 = sdiv i32 %27, 1000
  call fastcc void @bq27xxx_battery_update_dm_block(ptr noundef %di, ptr noundef nonnull %bd, i32 noundef 1, i32 noundef %div25)
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %land.lhs.true.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %voltage_min_design_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %info, i32 0, i32 3
  %28 = ptrtoint ptr %voltage_min_design_uv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %voltage_min_design_uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %29)
  %cmp27.not = icmp eq i32 %29, -22
  br i1 %cmp27.not, label %if.end26.if.end49_crit_edge, label %if.then29

if.end26.if.end49_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then29:                                        ; preds = %if.end26
  %30 = ptrtoint ptr %bd to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bd, align 1
  %32 = ptrtoint ptr %bt to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bt, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp34 = icmp eq i8 %31, %33
  br i1 %cmp34, label %land.rhs, label %if.then29.if.then42_crit_edge

if.then29.if.then42_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42

land.rhs:                                         ; preds = %if.then29
  %34 = ptrtoint ptr %block to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %block, align 1
  %36 = ptrtoint ptr %block8 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %block8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp40 = icmp eq i8 %35, %37
  br i1 %cmp40, label %land.rhs.if.end44_crit_edge, label %land.rhs.if.then42_crit_edge

land.rhs.if.then42_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42

land.rhs.if.end44_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then42:                                        ; preds = %land.rhs.if.then42_crit_edge, %if.then29.if.then42_crit_edge
  call fastcc void @bq27xxx_battery_read_dm_block(ptr noundef %di, ptr noundef nonnull %bt)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %land.rhs.if.end44_crit_edge
  %bd.bt = phi ptr [ %bt, %if.then42 ], [ %bd, %land.rhs.if.end44_crit_edge ]
  %38 = ptrtoint ptr %voltage_min_design_uv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %voltage_min_design_uv, align 4
  %div48 = sdiv i32 %39, 1000
  call fastcc void @bq27xxx_battery_update_dm_block(ptr noundef %di, ptr noundef nonnull %bd.bt, i32 noundef 2, i32 noundef %div48)
  br label %if.end49

if.end49:                                         ; preds = %if.end44, %if.end26.if.end49_crit_edge
  %dirty = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %bd, i32 0, i32 4
  %40 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dirty, align 1, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool50.not = icmp eq i8 %41, 0
  br i1 %tobool50.not, label %lor.rhs, label %land.lhs.true61.critedge

lor.rhs:                                          ; preds = %if.end49
  %dirty52 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %bt, i32 0, i32 4
  %42 = ptrtoint ptr %dirty52 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dirty52, align 1, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool53.not = icmp eq i8 %43, 0
  call fastcc void @bq27xxx_battery_write_dm_block(ptr noundef %di, ptr noundef nonnull %bd)
  call fastcc void @bq27xxx_battery_write_dm_block(ptr noundef %di, ptr noundef nonnull %bt)
  %tobool.not.i.i = icmp eq ptr %di, null
  br i1 %tobool.not.i.i, label %lor.rhs.do.end.i_crit_edge, label %lor.lhs.false.i.i

lor.rhs.do.end.i_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i.i:                                ; preds = %lor.rhs
  %regs.i.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %cmp.i.i = icmp eq i8 %47, -1
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.do.end.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %write.i.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7, i32 1
  %48 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %49, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.end.i_crit_edge, label %if.end4.i.i

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call.i.i = call i32 %49(ptr noundef nonnull %di, i8 noundef zeroext %47, i32 noundef 32, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp11.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp11.i.i, label %do.body.i.i, label %if.end4.i.i.bq27xxx_battery_seal.exit_crit_edge

if.end4.i.i.bq27xxx_battery_seal.exit_crit_edge:  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq27xxx_battery_seal.exit

do.body.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_write.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_set_config, %do.end.i)) #7
          to label %if.then20.i.i [label %do.end.i], !srcloc !312

if.then20.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %di, align 4
  %52 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 1
  %conv23.i.i = zext i8 %55 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_write.__UNIQUE_ID_ddebug187, ptr noundef %51, ptr noundef nonnull @.str.100, i32 noundef %conv23.i.i, i32 noundef 0) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then20.i.i, %do.body.i.i, %if.end.i.i.do.end.i_crit_edge, %lor.lhs.false.i.i.do.end.i_crit_edge, %lor.rhs.do.end.i_crit_edge
  %retval.0.i3.i = phi i32 [ %call.i.i, %do.body.i.i ], [ %call.i.i, %if.then20.i.i ], [ -1, %if.end.i.i.do.end.i_crit_edge ], [ -22, %lor.rhs.do.end.i_crit_edge ], [ -22, %lor.lhs.false.i.i.do.end.i_crit_edge ]
  %56 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.97, i32 noundef %retval.0.i3.i) #10
  br label %bq27xxx_battery_seal.exit

bq27xxx_battery_seal.exit:                        ; preds = %do.end.i, %if.end4.i.i.bq27xxx_battery_seal.exit_crit_edge
  br i1 %tobool53.not, label %bq27xxx_battery_seal.exit.cleanup_crit_edge, label %bq27xxx_battery_seal.exit.land.lhs.true61_crit_edge

bq27xxx_battery_seal.exit.land.lhs.true61_crit_edge: ; preds = %bq27xxx_battery_seal.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true61

bq27xxx_battery_seal.exit.cleanup_crit_edge:      ; preds = %bq27xxx_battery_seal.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true61.critedge:                         ; preds = %if.end49
  call fastcc void @bq27xxx_battery_write_dm_block(ptr noundef %di, ptr noundef nonnull %bd)
  call fastcc void @bq27xxx_battery_write_dm_block(ptr noundef %di, ptr noundef nonnull %bt)
  %tobool.not.i.i88 = icmp eq ptr %di, null
  br i1 %tobool.not.i.i88, label %land.lhs.true61.critedge.do.end.i102_crit_edge, label %lor.lhs.false.i.i91

land.lhs.true61.critedge.do.end.i102_crit_edge:   ; preds = %land.lhs.true61.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i102

lor.lhs.false.i.i91:                              ; preds = %land.lhs.true61.critedge
  %regs.i.i89 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %58 = ptrtoint ptr %regs.i.i89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i.i89, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %61)
  %cmp.i.i90 = icmp eq i8 %61, -1
  br i1 %cmp.i.i90, label %lor.lhs.false.i.i91.do.end.i102_crit_edge, label %if.end.i.i94

lor.lhs.false.i.i91.do.end.i102_crit_edge:        ; preds = %lor.lhs.false.i.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i102

if.end.i.i94:                                     ; preds = %lor.lhs.false.i.i91
  %write.i.i92 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7, i32 1
  %62 = ptrtoint ptr %write.i.i92 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write.i.i92, align 4
  %tobool2.not.i.i93 = icmp eq ptr %63, null
  br i1 %tobool2.not.i.i93, label %if.end.i.i94.do.end.i102_crit_edge, label %if.end4.i.i97

if.end.i.i94.do.end.i102_crit_edge:               ; preds = %if.end.i.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i102

if.end4.i.i97:                                    ; preds = %if.end.i.i94
  %call.i.i95 = call i32 %63(ptr noundef nonnull %di, i8 noundef zeroext %61, i32 noundef 32, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95)
  %cmp11.i.i96 = icmp slt i32 %call.i.i95, 0
  br i1 %cmp11.i.i96, label %do.body.i.i98, label %if.end4.i.i97.land.lhs.true61_crit_edge

if.end4.i.i97.land.lhs.true61_crit_edge:          ; preds = %if.end4.i.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true61

do.body.i.i98:                                    ; preds = %if.end4.i.i97
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_write.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_set_config, %do.end.i102)) #7
          to label %if.then20.i.i100 [label %do.end.i102], !srcloc !312

if.then20.i.i100:                                 ; preds = %do.body.i.i98
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %di, align 4
  %66 = ptrtoint ptr %regs.i.i89 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i.i89, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 1
  %conv23.i.i99 = zext i8 %69 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_write.__UNIQUE_ID_ddebug187, ptr noundef %65, ptr noundef nonnull @.str.100, i32 noundef %conv23.i.i99, i32 noundef 0) #7
  br label %do.end.i102

do.end.i102:                                      ; preds = %if.then20.i.i100, %do.body.i.i98, %if.end.i.i94.do.end.i102_crit_edge, %lor.lhs.false.i.i91.do.end.i102_crit_edge, %land.lhs.true61.critedge.do.end.i102_crit_edge
  %retval.0.i3.i101 = phi i32 [ %call.i.i95, %do.body.i.i98 ], [ %call.i.i95, %if.then20.i.i100 ], [ -1, %if.end.i.i94.do.end.i102_crit_edge ], [ -22, %land.lhs.true61.critedge.do.end.i102_crit_edge ], [ -22, %lor.lhs.false.i.i91.do.end.i102_crit_edge ]
  %70 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.97, i32 noundef %retval.0.i3.i101) #10
  br label %land.lhs.true61

land.lhs.true61:                                  ; preds = %do.end.i102, %if.end4.i.i97.land.lhs.true61_crit_edge, %bq27xxx_battery_seal.exit.land.lhs.true61_crit_edge
  %opts = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 3
  %72 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %opts, align 4
  %and = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool62.not = icmp eq i32 %and, 0
  br i1 %tobool62.not, label %if.then63, label %land.lhs.true61.cleanup_crit_edge

land.lhs.true61.cleanup_crit_edge:                ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then63:                                        ; preds = %land.lhs.true61
  %tobool.not.i = icmp eq ptr %di, null
  br i1 %tobool.not.i, label %if.then63.bq27xxx_write.exit_crit_edge, label %lor.lhs.false.i

if.then63.bq27xxx_write.exit_crit_edge:           ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq27xxx_write.exit

lor.lhs.false.i:                                  ; preds = %if.then63
  %regs.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %77)
  %cmp.i = icmp eq i8 %77, -1
  br i1 %cmp.i, label %lor.lhs.false.i.bq27xxx_write.exit_crit_edge, label %if.end.i

lor.lhs.false.i.bq27xxx_write.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq27xxx_write.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %write.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7, i32 1
  %78 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write.i, align 4
  %tobool2.not.i = icmp eq ptr %79, null
  br i1 %tobool2.not.i, label %if.end.i.bq27xxx_write.exit_crit_edge, label %if.end4.i

if.end.i.bq27xxx_write.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq27xxx_write.exit

if.end4.i:                                        ; preds = %if.end.i
  %call.i = call i32 %79(ptr noundef nonnull %di, i8 noundef zeroext %77, i32 noundef 65, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11.i = icmp slt i32 %call.i, 0
  br i1 %cmp11.i, label %do.body.i, label %if.end4.i.bq27xxx_write.exit_crit_edge

if.end4.i.bq27xxx_write.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq27xxx_write.exit

do.body.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_write.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_set_config, %bq27xxx_write.exit)) #7
          to label %if.then20.i [label %bq27xxx_write.exit], !srcloc !312

if.then20.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %di, align 4
  %82 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 1
  %conv23.i = zext i8 %85 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_write.__UNIQUE_ID_ddebug187, ptr noundef %81, ptr noundef nonnull @.str.100, i32 noundef %conv23.i, i32 noundef 0) #7
  br label %bq27xxx_write.exit

bq27xxx_write.exit:                               ; preds = %if.then20.i, %do.body.i, %if.end4.i.bq27xxx_write.exit_crit_edge, %if.end.i.bq27xxx_write.exit_crit_edge, %lor.lhs.false.i.bq27xxx_write.exit_crit_edge, %if.then63.bq27xxx_write.exit_crit_edge
  call void @usleep_range_state(i32 noundef 300000, i32 noundef 300500, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %bq27xxx_write.exit, %land.lhs.true61.cleanup_crit_edge, %bq27xxx_battery_seal.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %bt) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %bd) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq27xxx_battery_unseal(ptr noundef %di) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %unseal_key = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 6
  %0 = ptrtoint ptr %unseal_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %unseal_key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.58) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %1, 16
  %tobool.not.i = icmp eq ptr %di, null
  br i1 %tobool.not.i, label %if.end.do.end15_crit_edge, label %lor.lhs.false.i

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

lor.lhs.false.i:                                  ; preds = %if.end
  %regs.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.i = icmp eq i8 %7, -1
  br i1 %cmp.i, label %lor.lhs.false.i.do.end15_crit_edge, label %if.end.i

lor.lhs.false.i.do.end15_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

if.end.i:                                         ; preds = %lor.lhs.false.i
  %write.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %if.end.i.do.end15_crit_edge, label %if.end4.i

if.end.i.do.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

if.end4.i:                                        ; preds = %if.end.i
  %call.i = tail call i32 %9(ptr noundef nonnull %di, i8 noundef zeroext %7, i32 noundef %shr, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11.i = icmp slt i32 %call.i, 0
  br i1 %cmp11.i, label %do.body.i, label %lor.lhs.false.i29

do.body.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_write.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_unseal, %do.end15)) #7
          to label %do.end15.sink.split [label %do.end15], !srcloc !312

lor.lhs.false.i29:                                ; preds = %if.end4.i
  %10 = ptrtoint ptr %unseal_key to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %unseal_key, align 4
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp.i28 = icmp eq i8 %15, -1
  br i1 %cmp.i28, label %lor.lhs.false.i29.do.end15_crit_edge, label %if.end.i32

lor.lhs.false.i29.do.end15_crit_edge:             ; preds = %lor.lhs.false.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

if.end.i32:                                       ; preds = %lor.lhs.false.i29
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i, align 4
  %tobool2.not.i31 = icmp eq ptr %17, null
  br i1 %tobool2.not.i31, label %if.end.i32.do.end15_crit_edge, label %if.end4.i36

if.end.i32.do.end15_crit_edge:                    ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

if.end4.i36:                                      ; preds = %if.end.i32
  %conv9.i33 = and i32 %11, 65535
  %call.i34 = tail call i32 %17(ptr noundef nonnull %di, i8 noundef zeroext %15, i32 noundef %conv9.i33, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp11.i35 = icmp slt i32 %call.i34, 0
  br i1 %cmp11.i35, label %do.body.i37, label %if.end4.i36.cleanup_crit_edge

if.end4.i36.cleanup_crit_edge:                    ; preds = %if.end4.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.i37:                                      ; preds = %if.end4.i36
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_write.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_unseal, %do.end15)) #7
          to label %do.end15.sink.split [label %do.end15], !srcloc !312

do.end15.sink.split:                              ; preds = %do.body.i37, %do.body.i
  %ret.0.ph = phi i32 [ %call.i, %do.body.i ], [ %call.i34, %do.body.i37 ]
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %di, align 4
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %conv23.i38 = zext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_write.__UNIQUE_ID_ddebug187, ptr noundef %19, ptr noundef nonnull @.str.100, i32 noundef %conv23.i38, i32 noundef 0) #7
  br label %do.end15

do.end15:                                         ; preds = %do.end15.sink.split, %do.body.i37, %if.end.i32.do.end15_crit_edge, %lor.lhs.false.i29.do.end15_crit_edge, %do.body.i, %if.end.i.do.end15_crit_edge, %lor.lhs.false.i.do.end15_crit_edge, %if.end.do.end15_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.body.i ], [ %call.i34, %do.body.i37 ], [ -1, %if.end.i.do.end15_crit_edge ], [ -22, %if.end.do.end15_crit_edge ], [ -22, %lor.lhs.false.i.do.end15_crit_edge ], [ -1, %if.end.i32.do.end15_crit_edge ], [ -22, %lor.lhs.false.i29.do.end15_crit_edge ], [ %ret.0.ph, %do.end15.sink.split ]
  %24 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.61, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end4.i36.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %do.end15 ], [ 0, %if.end4.i36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bq27xxx_battery_read_dm_block(ptr noundef %di, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %has_data = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %buf, i32 0, i32 3
  %0 = ptrtoint ptr %has_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %has_data, align 1
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf, align 1
  %tobool.not.i = icmp eq ptr %di, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %lor.lhs.false.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false.i:                                  ; preds = %entry
  %regs.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %4, i32 19
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp.i = icmp eq i8 %6, -1
  br i1 %cmp.i, label %lor.lhs.false.i.do.end_crit_edge, label %if.end.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %write.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %if.end.i.do.end_crit_edge, label %if.end4.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end4.i:                                        ; preds = %if.end.i
  %conv9.i = zext i8 %2 to i32
  %call.i = tail call i32 %8(ptr noundef nonnull %di, i8 noundef zeroext %6, i32 noundef %conv9.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11.i = icmp slt i32 %call.i, 0
  br i1 %cmp11.i, label %do.body.i, label %lor.lhs.false.i5

do.body.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_write.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_read_dm_block, %do.end)) #7
          to label %if.then20.i [label %do.end], !srcloc !312

if.then20.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %di, align 4
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %arrayidx22.i = getelementptr i8, ptr %12, i32 19
  %13 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_write.__UNIQUE_ID_ddebug187, ptr noundef %10, ptr noundef nonnull @.str.100, i32 noundef %conv23.i, i32 noundef 19) #7
  br label %do.end

lor.lhs.false.i5:                                 ; preds = %if.end4.i
  %block = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %buf, i32 0, i32 1
  %15 = ptrtoint ptr %block to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %block, align 1
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %arrayidx.i3 = getelementptr i8, ptr %18, i32 20
  %19 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp.i4 = icmp eq i8 %20, -1
  br i1 %cmp.i4, label %lor.lhs.false.i5.do.end_crit_edge, label %if.end.i8

lor.lhs.false.i5.do.end_crit_edge:                ; preds = %lor.lhs.false.i5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i8:                                        ; preds = %lor.lhs.false.i5
  %21 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write.i, align 4
  %tobool2.not.i7 = icmp eq ptr %22, null
  br i1 %tobool2.not.i7, label %if.end.i8.do.end_crit_edge, label %if.end4.i12

if.end.i8.do.end_crit_edge:                       ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end4.i12:                                      ; preds = %if.end.i8
  %conv9.i9 = zext i8 %16 to i32
  %call.i10 = tail call i32 %22(ptr noundef nonnull %di, i8 noundef zeroext %20, i32 noundef %conv9.i9, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp11.i11 = icmp slt i32 %call.i10, 0
  br i1 %cmp11.i11, label %do.body.i13, label %lor.lhs.false.i23

do.body.i13:                                      ; preds = %if.end4.i12
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_write.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_read_dm_block, %do.end)) #7
          to label %if.then20.i16 [label %do.end], !srcloc !312

if.then20.i16:                                    ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %di, align 4
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %arrayidx22.i14 = getelementptr i8, ptr %26, i32 20
  %27 = ptrtoint ptr %arrayidx22.i14 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx22.i14, align 1
  %conv23.i15 = zext i8 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_write.__UNIQUE_ID_ddebug187, ptr noundef %24, ptr noundef nonnull @.str.100, i32 noundef %conv23.i15, i32 noundef 20) #7
  br label %do.end

lor.lhs.false.i23:                                ; preds = %if.end4.i12
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #7
  %data = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %buf, i32 0, i32 2
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %arrayidx.i21 = getelementptr i8, ptr %30, i32 21
  %31 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %cmp.i22 = icmp eq i8 %32, -1
  br i1 %cmp.i22, label %lor.lhs.false.i23.do.end_crit_edge, label %if.end.i25

lor.lhs.false.i23.do.end_crit_edge:               ; preds = %lor.lhs.false.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i25:                                       ; preds = %lor.lhs.false.i23
  %read_bulk.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7, i32 2
  %33 = ptrtoint ptr %read_bulk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_bulk.i, align 4
  %tobool2.not.i24 = icmp eq ptr %34, null
  br i1 %tobool2.not.i24, label %if.end.i25.do.end_crit_edge, label %if.end4.i27

if.end.i25.do.end_crit_edge:                      ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end4.i27:                                      ; preds = %if.end.i25
  %call.i26 = tail call i32 %34(ptr noundef nonnull %di, i8 noundef zeroext %32, ptr noundef %data, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp9.i = icmp slt i32 %call.i26, 0
  br i1 %cmp9.i, label %do.body.i28, label %lor.lhs.false.i34

do.body.i28:                                      ; preds = %if.end4.i27
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read_block.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_read_dm_block, %do.end)) #7
          to label %if.then17.i [label %do.end], !srcloc !312

if.then17.i:                                      ; preds = %do.body.i28
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %di, align 4
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %arrayidx19.i = getelementptr i8, ptr %38, i32 21
  %39 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read_block.__UNIQUE_ID_ddebug188, ptr noundef %36, ptr noundef nonnull @.str.66, i32 noundef %conv20.i, i32 noundef 21) #7
  br label %do.end

lor.lhs.false.i34:                                ; preds = %if.end4.i27
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %arrayidx.i32 = getelementptr i8, ptr %42, i32 22
  %43 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %cmp.i33 = icmp eq i8 %44, -1
  br i1 %cmp.i33, label %lor.lhs.false.i34.do.end_crit_edge, label %if.end.i36

lor.lhs.false.i34.do.end_crit_edge:               ; preds = %lor.lhs.false.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i36:                                       ; preds = %lor.lhs.false.i34
  %bus.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %45 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i, align 4
  %call.i35 = tail call i32 %46(ptr noundef nonnull %di, i8 noundef zeroext %44, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp5.i = icmp slt i32 %call.i35, 0
  br i1 %cmp5.i, label %do.body.i37, label %if.end.i36.for.body.i_crit_edge

if.end.i36.for.body.i_crit_edge:                  ; preds = %if.end.i36
  br label %for.body.i

do.body.i37:                                      ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_read_dm_block, %do.end)) #7
          to label %if.then14.i [label %do.end], !srcloc !312

if.then14.i:                                      ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %di, align 4
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %50, i32 22
  %51 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %52 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %48, ptr noundef nonnull @.str.13, i32 noundef %conv17.i, i32 noundef 22) #7
  br label %do.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i36.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i36.for.body.i_crit_edge ]
  %sum.011.i = phi i32 [ %phi.cast.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i36.for.body.i_crit_edge ]
  %arrayidx.i39 = getelementptr %struct.bq27xxx_dm_buf, ptr %buf, i32 0, i32 2, i32 %i.012.i
  %53 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i39, align 1
  %conv.i = zext i8 %54 to i32
  %add.i = add nuw nsw i32 %sum.011.i, %conv.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %phi.cast.i = and i32 %add.i, 65535
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %bq27xxx_battery_checksum_dm_block.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

bq27xxx_battery_checksum_dm_block.exit:           ; preds = %for.body.i
  %55 = trunc i32 %add.i to i8
  %conv6.i = xor i8 %55, -1
  %56 = trunc i32 %call.i35 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv6.i, i8 %56)
  %cmp22.not = icmp eq i8 %conv6.i, %56
  br i1 %cmp22.not, label %if.end25, label %bq27xxx_battery_checksum_dm_block.exit.do.end_crit_edge

bq27xxx_battery_checksum_dm_block.exit.do.end_crit_edge: ; preds = %bq27xxx_battery_checksum_dm_block.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end25:                                         ; preds = %bq27xxx_battery_checksum_dm_block.exit
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %has_data to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %has_data, align 1
  %dirty = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %buf, i32 0, i32 4
  %58 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %dirty, align 1
  br label %cleanup

do.end:                                           ; preds = %bq27xxx_battery_checksum_dm_block.exit.do.end_crit_edge, %if.then14.i, %do.body.i37, %lor.lhs.false.i34.do.end_crit_edge, %if.then17.i, %do.body.i28, %if.end.i25.do.end_crit_edge, %lor.lhs.false.i23.do.end_crit_edge, %if.then20.i16, %do.body.i13, %if.end.i8.do.end_crit_edge, %lor.lhs.false.i5.do.end_crit_edge, %if.then20.i, %do.body.i, %if.end.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.0 = phi i32 [ -22, %bq27xxx_battery_checksum_dm_block.exit.do.end_crit_edge ], [ %call.i, %do.body.i ], [ %call.i10, %do.body.i13 ], [ %call.i26, %do.body.i28 ], [ %call.i35, %do.body.i37 ], [ %call.i, %if.then20.i ], [ -1, %if.end.i.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ], [ -22, %lor.lhs.false.i.do.end_crit_edge ], [ %call.i10, %if.then20.i16 ], [ -1, %if.end.i8.do.end_crit_edge ], [ -22, %lor.lhs.false.i5.do.end_crit_edge ], [ %call.i26, %if.then17.i ], [ -1, %if.end.i25.do.end_crit_edge ], [ -22, %lor.lhs.false.i23.do.end_crit_edge ], [ %call.i35, %if.then14.i ], [ -22, %lor.lhs.false.i34.do.end_crit_edge ]
  %59 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.63, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bq27xxx_battery_update_dm_block(ptr nocapture noundef readonly %di, ptr noundef %buf, i32 noundef %reg_id, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dm_regs = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 5
  %0 = ptrtoint ptr %dm_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm_regs, align 4
  %arrayidx = getelementptr %struct.bq27xxx_dm_reg, ptr %1, i32 %reg_id
  %arrayidx1 = getelementptr [3 x ptr], ptr @bq27xxx_dm_reg_name, i32 0, i32 %reg_id
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buf, align 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp.i = icmp eq i8 %5, %7
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true.i:                                  ; preds = %entry
  %block.i = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %buf, i32 0, i32 1
  %8 = ptrtoint ptr %block.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %block.i, align 1
  %conv3.i = zext i8 %9 to i32
  %offset.i = getelementptr %struct.bq27xxx_dm_reg, ptr %1, i32 %reg_id, i32 1
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %offset.i, align 1
  %conv4.i = zext i8 %11 to i32
  %div13.i = lshr i32 %conv4.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %div13.i, i32 %conv3.i)
  %cmp5.i = icmp eq i32 %div13.i, %conv3.i
  br i1 %cmp5.i, label %bq27xxx_dm_reg_ptr.exit, label %land.lhs.true.i.do.end_crit_edge

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

bq27xxx_dm_reg_ptr.exit:                          ; preds = %land.lhs.true.i
  %data.i = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %buf, i32 0, i32 2
  %rem.i = and i32 %conv4.i, 31
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %rem.i
  %cmp = icmp eq ptr %add.ptr.i, null
  br i1 %cmp, label %bq27xxx_dm_reg_ptr.exit.do.end_crit_edge, label %if.end

bq27xxx_dm_reg_ptr.exit.do.end_crit_edge:         ; preds = %bq27xxx_dm_reg_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %bq27xxx_dm_reg_ptr.exit.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge, %entry.do.end_crit_edge
  %12 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.67, ptr noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %bq27xxx_dm_reg_ptr.exit
  %bytes = getelementptr %struct.bq27xxx_dm_reg, ptr %1, i32 %reg_id, i32 2
  %14 = ptrtoint ptr %bytes to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bytes, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp2.not = icmp eq i8 %15, 2
  br i1 %cmp2.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.70, ptr noundef %3) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %has_data = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %buf, i32 0, i32 3
  %18 = ptrtoint ptr %has_data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_data, align 1, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end9
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i, align 2
  %conv13 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %val)
  %cmp14 = icmp eq i32 %conv13, %val
  br i1 %cmp14, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.73, ptr noundef %3, i32 noundef %val) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %opts = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 3
  %24 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %opts, align 4
  %and = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %land.lhs.true, label %if.end21.do.end34_crit_edge

if.end21.do.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

land.lhs.true:                                    ; preds = %if.end21
  %26 = load i8, ptr @bq27xxx_dt_to_nvm, align 1, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool23.not = icmp eq i8 %26, 0
  br i1 %tobool23.not, label %do.end27, label %land.lhs.true.do.end34_crit_edge

land.lhs.true.do.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

do.end27:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.76, ptr noundef %3, i32 noundef %conv13, i32 noundef %val) #10
  br label %cleanup

do.end34:                                         ; preds = %land.lhs.true.do.end34_crit_edge, %if.end21.do.end34_crit_edge
  %29 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.79, ptr noundef %3, i32 noundef %val) #10
  %conv36 = trunc i32 %val to i16
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv36, ptr %add.ptr.i, align 2
  %dirty = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %buf, i32 0, i32 4
  %32 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %dirty, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %do.end27, %do.end19, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bq27xxx_battery_write_dm_block(ptr noundef %di, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %opts = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 3
  %0 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opts, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %dirty = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %buf, i32 0, i32 4
  %2 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dirty, align 1, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.end
  %call.i = tail call fastcc i32 @bq27xxx_battery_cfgupdate_priv(ptr noundef %di, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, -22
  %or.cond.i = or i1 %cmp.i, %cmp1.not.i
  br i1 %or.cond.i, label %bq27xxx_battery_set_cfgupdate.exit, label %bq27xxx_battery_set_cfgupdate.exit.thread

bq27xxx_battery_set_cfgupdate.exit.thread:        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.86, i32 noundef %call.i) #10
  br label %cleanup

bq27xxx_battery_set_cfgupdate.exit:               ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %bq27xxx_battery_set_cfgupdate.exit.cleanup_crit_edge, label %bq27xxx_battery_set_cfgupdate.exit.if.end6_crit_edge

bq27xxx_battery_set_cfgupdate.exit.if.end6_crit_edge: ; preds = %bq27xxx_battery_set_cfgupdate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

bq27xxx_battery_set_cfgupdate.exit.cleanup_crit_edge: ; preds = %bq27xxx_battery_set_cfgupdate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %bq27xxx_battery_set_cfgupdate.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %tobool.not.i = icmp eq ptr %di, null
  br i1 %tobool.not.i, label %if.end6.out_crit_edge, label %lor.lhs.false.i

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false.i:                                  ; preds = %if.end6
  %regs.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 18
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp.i1 = icmp eq i8 %9, -1
  br i1 %cmp.i1, label %lor.lhs.false.i.out_crit_edge, label %if.end.i

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i:                                         ; preds = %lor.lhs.false.i
  %write.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.end.i.out_crit_edge, label %if.end4.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4.i:                                        ; preds = %if.end.i
  %call.i2 = tail call i32 %11(ptr noundef nonnull %di, i8 noundef zeroext %9, i32 noundef 0, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp11.i = icmp slt i32 %call.i2, 0
  br i1 %cmp11.i, label %do.body.i, label %lor.lhs.false.i7

do.body.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_write.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_write_dm_block, %out)) #7
          to label %if.then20.i [label %out], !srcloc !312

if.then20.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %di, align 4
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %arrayidx22.i = getelementptr i8, ptr %15, i32 18
  %16 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_write.__UNIQUE_ID_ddebug187, ptr noundef %13, ptr noundef nonnull @.str.100, i32 noundef %conv23.i, i32 noundef 18) #7
  br label %out

lor.lhs.false.i7:                                 ; preds = %if.end4.i
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf, align 1
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %arrayidx.i5 = getelementptr i8, ptr %21, i32 19
  %22 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp.i6 = icmp eq i8 %23, -1
  br i1 %cmp.i6, label %lor.lhs.false.i7.out_crit_edge, label %if.end.i10

lor.lhs.false.i7.out_crit_edge:                   ; preds = %lor.lhs.false.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i10:                                       ; preds = %lor.lhs.false.i7
  %24 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write.i, align 4
  %tobool2.not.i9 = icmp eq ptr %25, null
  br i1 %tobool2.not.i9, label %if.end.i10.out_crit_edge, label %if.end4.i13

if.end.i10.out_crit_edge:                         ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4.i13:                                      ; preds = %if.end.i10
  %conv9.i = zext i8 %19 to i32
  %call.i11 = tail call i32 %25(ptr noundef nonnull %di, i8 noundef zeroext %23, i32 noundef %conv9.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %cmp11.i12 = icmp slt i32 %call.i11, 0
  br i1 %cmp11.i12, label %do.body.i14, label %lor.lhs.false.i24

do.body.i14:                                      ; preds = %if.end4.i13
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_write.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_write_dm_block, %out)) #7
          to label %if.then20.i17 [label %out], !srcloc !312

if.then20.i17:                                    ; preds = %do.body.i14
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %di, align 4
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %arrayidx22.i15 = getelementptr i8, ptr %29, i32 19
  %30 = ptrtoint ptr %arrayidx22.i15 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx22.i15, align 1
  %conv23.i16 = zext i8 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_write.__UNIQUE_ID_ddebug187, ptr noundef %27, ptr noundef nonnull @.str.100, i32 noundef %conv23.i16, i32 noundef 19) #7
  br label %out

lor.lhs.false.i24:                                ; preds = %if.end4.i13
  %block = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %buf, i32 0, i32 1
  %32 = ptrtoint ptr %block to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %block, align 1
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %arrayidx.i22 = getelementptr i8, ptr %35, i32 20
  %36 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %cmp.i23 = icmp eq i8 %37, -1
  br i1 %cmp.i23, label %lor.lhs.false.i24.out_crit_edge, label %if.end.i27

lor.lhs.false.i24.out_crit_edge:                  ; preds = %lor.lhs.false.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i27:                                       ; preds = %lor.lhs.false.i24
  %38 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write.i, align 4
  %tobool2.not.i26 = icmp eq ptr %39, null
  br i1 %tobool2.not.i26, label %if.end.i27.out_crit_edge, label %if.end4.i31

if.end.i27.out_crit_edge:                         ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4.i31:                                      ; preds = %if.end.i27
  %conv9.i28 = zext i8 %33 to i32
  %call.i29 = tail call i32 %39(ptr noundef nonnull %di, i8 noundef zeroext %37, i32 noundef %conv9.i28, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp11.i30 = icmp slt i32 %call.i29, 0
  br i1 %cmp11.i30, label %do.body.i32, label %lor.lhs.false.i42

do.body.i32:                                      ; preds = %if.end4.i31
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_write.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_write_dm_block, %out)) #7
          to label %if.then20.i35 [label %out], !srcloc !312

if.then20.i35:                                    ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %di, align 4
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %arrayidx22.i33 = getelementptr i8, ptr %43, i32 20
  %44 = ptrtoint ptr %arrayidx22.i33 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx22.i33, align 1
  %conv23.i34 = zext i8 %45 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_write.__UNIQUE_ID_ddebug187, ptr noundef %41, ptr noundef nonnull @.str.100, i32 noundef %conv23.i34, i32 noundef 20) #7
  br label %out

lor.lhs.false.i42:                                ; preds = %if.end4.i31
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #7
  %data = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %buf, i32 0, i32 2
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %arrayidx.i40 = getelementptr i8, ptr %47, i32 21
  %48 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %cmp.i41 = icmp eq i8 %49, -1
  br i1 %cmp.i41, label %lor.lhs.false.i42.out_crit_edge, label %if.end.i44

lor.lhs.false.i42.out_crit_edge:                  ; preds = %lor.lhs.false.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i44:                                       ; preds = %lor.lhs.false.i42
  %write_bulk.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7, i32 3
  %50 = ptrtoint ptr %write_bulk.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_bulk.i, align 4
  %tobool2.not.i43 = icmp eq ptr %51, null
  br i1 %tobool2.not.i43, label %if.end.i44.out_crit_edge, label %if.end4.i46

if.end.i44.out_crit_edge:                         ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4.i46:                                      ; preds = %if.end.i44
  %call.i45 = tail call i32 %51(ptr noundef nonnull %di, i8 noundef zeroext %49, ptr noundef %data, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp9.i = icmp slt i32 %call.i45, 0
  br i1 %cmp9.i, label %do.body.i47, label %if.end4.i46.for.body.i_crit_edge

if.end4.i46.for.body.i_crit_edge:                 ; preds = %if.end4.i46
  br label %for.body.i

do.body.i47:                                      ; preds = %if.end4.i46
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_write_block.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_write_dm_block, %out)) #7
          to label %if.then17.i [label %out], !srcloc !312

if.then17.i:                                      ; preds = %do.body.i47
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %di, align 4
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 4
  %arrayidx19.i = getelementptr i8, ptr %55, i32 21
  %56 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %57 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_write_block.__UNIQUE_ID_ddebug189, ptr noundef %53, ptr noundef nonnull @.str.94, i32 noundef %conv20.i, i32 noundef 21) #7
  br label %out

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4.i46.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end4.i46.for.body.i_crit_edge ]
  %sum.011.i = phi i32 [ %phi.cast.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end4.i46.for.body.i_crit_edge ]
  %arrayidx.i49 = getelementptr %struct.bq27xxx_dm_buf, ptr %buf, i32 0, i32 2, i32 %i.012.i
  %58 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i49, align 1
  %conv.i = zext i8 %59 to i32
  %add.i = add nuw nsw i32 %sum.011.i, %conv.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %phi.cast.i = and i32 %add.i, 65535
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %lor.lhs.false.i54, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

lor.lhs.false.i54:                                ; preds = %for.body.i
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %arrayidx.i52 = getelementptr i8, ptr %61, i32 22
  %62 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %cmp.i53 = icmp eq i8 %63, -1
  br i1 %cmp.i53, label %lor.lhs.false.i54.out_crit_edge, label %if.end.i57

lor.lhs.false.i54.out_crit_edge:                  ; preds = %lor.lhs.false.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i57:                                       ; preds = %lor.lhs.false.i54
  %64 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write.i, align 4
  %tobool2.not.i56 = icmp eq ptr %65, null
  br i1 %tobool2.not.i56, label %if.end.i57.out_crit_edge, label %if.end4.i61

if.end.i57.out_crit_edge:                         ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4.i61:                                      ; preds = %if.end.i57
  %conv6.i = and i32 %add.i, 255
  %conv9.i58 = xor i32 %conv6.i, 255
  %call.i59 = tail call i32 %65(ptr noundef nonnull %di, i8 noundef zeroext %63, i32 noundef %conv9.i58, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp11.i60 = icmp slt i32 %call.i59, 0
  br i1 %cmp11.i60, label %do.body.i62, label %if.end33

do.body.i62:                                      ; preds = %if.end4.i61
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_write.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_write_dm_block, %out)) #7
          to label %if.then20.i65 [label %out], !srcloc !312

if.then20.i65:                                    ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %di, align 4
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 4
  %arrayidx22.i63 = getelementptr i8, ptr %69, i32 22
  %70 = ptrtoint ptr %arrayidx22.i63 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx22.i63, align 1
  %conv23.i64 = zext i8 %71 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_write.__UNIQUE_ID_ddebug187, ptr noundef %67, ptr noundef nonnull @.str.100, i32 noundef %conv23.i64, i32 noundef 22) #7
  br label %out

if.end33:                                         ; preds = %if.end4.i61
  br i1 %tobool.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end33
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #7
  %call.i68 = tail call fastcc i32 @bq27xxx_battery_cfgupdate_priv(ptr noundef nonnull %di, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i68)
  %cmp.i69 = icmp sgt i32 %call.i68, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i68)
  %cmp1.not.i70 = icmp eq i32 %call.i68, -22
  %or.cond.i71 = or i1 %cmp.i69, %cmp1.not.i70
  br i1 %or.cond.i71, label %bq27xxx_battery_soft_reset.exit, label %bq27xxx_battery_soft_reset.exit.thread

bq27xxx_battery_soft_reset.exit.thread:           ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.95, i32 noundef %call.i68) #10
  br label %cleanup

bq27xxx_battery_soft_reset.exit:                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %cmp37 = icmp slt i32 %call.i68, 0
  br i1 %cmp37, label %bq27xxx_battery_soft_reset.exit.cleanup_crit_edge, label %bq27xxx_battery_soft_reset.exit.if.end41_crit_edge

bq27xxx_battery_soft_reset.exit.if.end41_crit_edge: ; preds = %bq27xxx_battery_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

bq27xxx_battery_soft_reset.exit.cleanup_crit_edge: ; preds = %bq27xxx_battery_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 100000, i32 noundef 100500, i32 noundef 2) #7
  br label %if.end41

if.end41:                                         ; preds = %if.else, %bq27xxx_battery_soft_reset.exit.if.end41_crit_edge
  %74 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %dirty, align 1
  br label %cleanup

out:                                              ; preds = %if.then20.i65, %do.body.i62, %if.end.i57.out_crit_edge, %lor.lhs.false.i54.out_crit_edge, %if.then17.i, %do.body.i47, %if.end.i44.out_crit_edge, %lor.lhs.false.i42.out_crit_edge, %if.then20.i35, %do.body.i32, %if.end.i27.out_crit_edge, %lor.lhs.false.i24.out_crit_edge, %if.then20.i17, %do.body.i14, %if.end.i10.out_crit_edge, %lor.lhs.false.i7.out_crit_edge, %if.then20.i, %do.body.i, %if.end.i.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call.i2, %do.body.i ], [ %call.i11, %do.body.i14 ], [ %call.i29, %do.body.i32 ], [ %call.i45, %do.body.i47 ], [ %call.i59, %do.body.i62 ], [ %call.i2, %if.then20.i ], [ -1, %if.end.i.out_crit_edge ], [ -22, %if.end6.out_crit_edge ], [ -22, %lor.lhs.false.i.out_crit_edge ], [ %call.i11, %if.then20.i17 ], [ -1, %if.end.i10.out_crit_edge ], [ -22, %lor.lhs.false.i7.out_crit_edge ], [ %call.i29, %if.then20.i35 ], [ -1, %if.end.i27.out_crit_edge ], [ -22, %lor.lhs.false.i24.out_crit_edge ], [ %call.i45, %if.then17.i ], [ -1, %if.end.i44.out_crit_edge ], [ -22, %lor.lhs.false.i42.out_crit_edge ], [ %call.i59, %if.then20.i65 ], [ -1, %if.end.i57.out_crit_edge ], [ -22, %lor.lhs.false.i54.out_crit_edge ]
  br i1 %tobool.not, label %out.do.end_crit_edge, label %if.then44

out.do.end_crit_edge:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then44:                                        ; preds = %out
  %call.i74 = tail call fastcc i32 @bq27xxx_battery_cfgupdate_priv(ptr noundef %di, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i74)
  %cmp.i75 = icmp sgt i32 %call.i74, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i74)
  %cmp1.not.i76 = icmp eq i32 %call.i74, -22
  %or.cond.i77 = or i1 %cmp.i75, %cmp1.not.i76
  br i1 %or.cond.i77, label %if.then44.do.end_crit_edge, label %do.end.i78

if.then44.do.end_crit_edge:                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.i78:                                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.95, i32 noundef %call.i74) #10
  br label %do.end

do.end:                                           ; preds = %do.end.i78, %if.then44.do.end_crit_edge, %out.do.end_crit_edge
  %77 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.84, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end41, %bq27xxx_battery_soft_reset.exit.cleanup_crit_edge, %bq27xxx_battery_soft_reset.exit.thread, %bq27xxx_battery_set_cfgupdate.exit.cleanup_crit_edge, %bq27xxx_battery_set_cfgupdate.exit.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq27xxx_battery_cfgupdate_priv(ptr noundef %di, i1 noundef zeroext %active) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %di, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %regs.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 15
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i = icmp eq i8 %3, -1
  br i1 %cmp.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %write.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %conv9.i = select i1 %active, i32 19, i32 66
  %call.i = tail call i32 %5(ptr noundef nonnull %di, i8 noundef zeroext %3, i32 noundef %conv9.i, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11.i = icmp slt i32 %call.i, 0
  br i1 %cmp11.i, label %do.body.i, label %lor.lhs.false.i55.preheader

do.body.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_write.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_cfgupdate_priv, %cleanup)) #7
          to label %if.then20.i [label %cleanup], !srcloc !312

if.then20.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %di, align 4
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv23.i = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_write.__UNIQUE_ID_ddebug187, ptr noundef %7, ptr noundef nonnull @.str.100, i32 noundef %conv23.i, i32 noundef 0) #7
  br label %cleanup

lor.lhs.false.i55.preheader:                      ; preds = %if.end4.i
  %bus.i = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 7
  %conv10 = zext i1 %active to i32
  br label %lor.lhs.false.i55

lor.lhs.false.i55:                                ; preds = %land.rhs.lor.lhs.false.i55_crit_edge, %lor.lhs.false.i55.preheader
  %try.0 = phi i32 [ %dec, %land.rhs.lor.lhs.false.i55_crit_edge ], [ 100, %lor.lhs.false.i55.preheader ]
  tail call void @usleep_range_state(i32 noundef 25000, i32 noundef 25500, i32 noundef 2) #7
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %13, i32 5
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp.i54 = icmp eq i8 %15, -1
  br i1 %cmp.i54, label %lor.lhs.false.i55.cleanup_crit_edge, label %if.end.i57

lor.lhs.false.i55.cleanup_crit_edge:              ; preds = %lor.lhs.false.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i57:                                       ; preds = %lor.lhs.false.i55
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 4
  %call.i56 = tail call i32 %17(ptr noundef nonnull %di, i8 noundef zeroext %15, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp5.i = icmp slt i32 %call.i56, 0
  br i1 %cmp5.i, label %do.body.i58, label %do.cond

do.body.i58:                                      ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq27xxx_battery_cfgupdate_priv, %cleanup)) #7
          to label %if.then14.i [label %cleanup], !srcloc !312

if.then14.i:                                      ; preds = %do.body.i58
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %di, align 4
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %21, i32 5
  %22 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq27xxx_read.__UNIQUE_ID_ddebug186, ptr noundef %19, ptr noundef nonnull @.str.13, i32 noundef %conv17.i, i32 noundef 5) #7
  br label %cleanup

do.cond:                                          ; preds = %if.end.i57
  %and = lshr i32 %call.i56, 4
  %and.lobit = and i32 %and, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit, i32 %conv10)
  %cmp11.not = icmp eq i32 %and.lobit, %conv10
  br i1 %cmp11.not, label %do.cond.if.end23_crit_edge, label %land.rhs

do.cond.if.end23_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.rhs:                                         ; preds = %do.cond
  %dec = add nsw i32 %try.0, -1
  %tobool13.not = icmp eq i32 %dec, 0
  br i1 %tobool13.not, label %land.lhs.true, label %land.rhs.lor.lhs.false.i55_crit_edge

land.rhs.lor.lhs.false.i55_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i55

land.lhs.true:                                    ; preds = %land.rhs
  %chip = getelementptr inbounds %struct.bq27xxx_device_info, ptr %di, i32 0, i32 2
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %25)
  %cmp15.not = icmp eq i32 %25, 24
  br i1 %cmp15.not, label %land.lhs.true.if.end23_crit_edge, label %do.end20

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end20:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.88, i32 noundef %conv10) #10
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %do.cond.if.end23_crit_edge
  %try.170 = phi i32 [ 0, %land.lhs.true.if.end23_crit_edge ], [ %try.0, %do.cond.if.end23_crit_edge ]
  %sub = sub i32 100, %try.170
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp24 = icmp sgt i32 %sub, 3
  br i1 %cmp24, label %do.end29, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.91, i32 noundef %conv10, i32 noundef %sub) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end23.cleanup_crit_edge, %do.end20, %if.then14.i, %do.body.i58, %lor.lhs.false.i55.cleanup_crit_edge, %if.then20.i, %do.body.i, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end20 ], [ 0, %do.end29 ], [ 0, %if.end23.cleanup_crit_edge ], [ %call.i56, %do.body.i58 ], [ %call.i, %if.then20.i ], [ -1, %if.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ %call.i56, %if.then14.i ], [ %call.i, %do.body.i ], [ -22, %lor.lhs.false.i55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 152)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 152)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !16, !17, !18, !20, !22, !23, !24, !25, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !218, !220, !221, !222, !224, !225, !226, !227, !229, !230, !231, !233, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !256, !258, !260, !262, !263, !264, !265, !267, !268, !269, !270, !272, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301}
!llvm.module.flags = !{!303, !304, !305, !306, !307, !308, !309, !310}
!llvm.ident = !{!311}

!0 = !{ptr @__param_dt_monitored_battery_updates_nvm, !1, !"__param_dt_monitored_battery_updates_nvm", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1065, i32 1}
!2 = !{ptr @__UNIQUE_ID_dt_monitored_battery_updates_nvmtype183, !1, !"__UNIQUE_ID_dt_monitored_battery_updates_nvmtype183", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dt_monitored_battery_updates_nvm184, !4, !"__UNIQUE_ID_dt_monitored_battery_updates_nvm184", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1066, i32 1}
!5 = !{ptr @__param_poll_interval, !6, !"__param_poll_interval", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1101, i32 1}
!7 = !{ptr @__UNIQUE_ID_poll_interval185, !8, !"__UNIQUE_ID_poll_interval185", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1102, i32 1}
!9 = distinct !{null, !10, !"__print_once", i1 false, i1 false}
!10 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1770, i32 4}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @bq27xxx_battery_update._entry, !10, !"_entry", i1 false, i1 false}
!17 = !{ptr @bq27xxx_battery_update._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_bq27xxx_battery_update, !19, !"__ksymtab_bq27xxx_battery_update", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1810, i32 1}
!20 = !{ptr @bq27xxx_battery_setup.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 2099, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @bq27xxx_battery_setup.__key.6, !21, !"__key", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @bq27xxx_battery_setup.__key.8, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 2100, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 2121, i32 10}
!30 = !{ptr @__ksymtab_bq27xxx_battery_setup, !31, !"__ksymtab_bq27xxx_battery_setup", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 2132, i32 1}
!32 = !{ptr @__ksymtab_bq27xxx_battery_teardown, !33, !"__ksymtab_bq27xxx_battery_teardown", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 2154, i32 1}
!34 = !{ptr @__UNIQUE_ID_author196, !35, !"__UNIQUE_ID_author196", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 2156, i32 1}
!36 = !{ptr @__UNIQUE_ID_description197, !37, !"__UNIQUE_ID_description197", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 2157, i32 1}
!38 = !{ptr @__UNIQUE_ID_file198, !39, !"__UNIQUE_ID_file198", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 2158, i32 1}
!40 = !{ptr @__UNIQUE_ID_license199, !39, !"__UNIQUE_ID_license199", i1 false, i1 false}
!41 = !{ptr @__param_str_dt_monitored_battery_updates_nvm, !1, !"__param_str_dt_monitored_battery_updates_nvm", i1 false, i1 false}
!42 = !{ptr @bq27xxx_dt_to_nvm, !43, !"bq27xxx_dt_to_nvm", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1064, i32 13}
!44 = !{ptr @__param_str_poll_interval, !6, !"__param_str_poll_interval", i1 false, i1 false}
!45 = !{ptr @param_ops_poll_interval, !46, !"param_ops_poll_interval", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1095, i32 38}
!47 = !{ptr @poll_interval, !48, !"poll_interval", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1100, i32 21}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1119, i32 3}
!51 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @bq27xxx_read.__UNIQUE_ID_ddebug186, !50, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1662, i32 3}
!56 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @bq27xxx_battery_read_temperature._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @bq27xxx_battery_read_temperature._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1697, i32 3}
!62 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @bq27xxx_battery_read_time.__UNIQUE_ID_ddebug194, !61, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1556, i32 3}
!66 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @bq27xxx_battery_read_charge.__UNIQUE_ID_ddebug191, !65, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1541, i32 3}
!70 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @bq27xxx_battery_read_soc.__UNIQUE_ID_ddebug190, !69, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1640, i32 3}
!74 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @bq27xxx_battery_read_energy.__UNIQUE_ID_ddebug193, !73, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1682, i32 3}
!78 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @bq27xxx_battery_read_cyct._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @bq27xxx_battery_read_cyct._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1618, i32 3}
!83 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @bq27xxx_battery_read_dcap.__UNIQUE_ID_ddebug192, !82, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!85 = !{ptr @bq27xxx_chip_data, !86, !"bq27xxx_chip_data", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 983, i32 3}
!87 = !{ptr @bq27000_regs, !88, !"bq27000_regs", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 138, i32 2}
!89 = !{ptr @bq27000_props, !90, !"bq27000_props", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 542, i32 35}
!91 = !{ptr @bq27010_regs, !92, !"bq27010_regs", i1 false, i1 false}
!92 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 163, i32 2}
!93 = !{ptr @bq27010_props, !94, !"bq27010_props", i1 false, i1 false}
!94 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 564, i32 35}
!95 = !{ptr @bq2750x_regs, !96, !"bq2750x_regs", i1 false, i1 false}
!96 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 188, i32 2}
!97 = !{ptr @bq27510g3_props, !98, !"bq27510g3_props", i1 false, i1 false}
!98 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 611, i32 35}
!99 = !{ptr @bq27510g3_regs, !100, !"bq27510g3_regs", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 234, i32 2}
!101 = !{ptr @bq27500_regs, !102, !"bq27500_regs", i1 false, i1 false}
!102 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 211, i32 2}
!103 = !{ptr @bq27500_props, !104, !"bq27500_props", i1 false, i1 false}
!104 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 588, i32 35}
!105 = !{ptr @bq27520g1_regs, !106, !"bq27520g1_regs", i1 false, i1 false}
!106 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 255, i32 2}
!107 = !{ptr @bq27520g1_props, !108, !"bq27520g1_props", i1 false, i1 false}
!108 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 629, i32 35}
!109 = !{ptr @bq27520g2_regs, !110, !"bq27520g2_regs", i1 false, i1 false}
!110 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 276, i32 2}
!111 = !{ptr @bq27520g3_regs, !112, !"bq27520g3_regs", i1 false, i1 false}
!112 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 297, i32 2}
!113 = !{ptr @bq27520g3_props, !114, !"bq27520g3_props", i1 false, i1 false}
!114 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 651, i32 35}
!115 = !{ptr @bq27520g4_regs, !116, !"bq27520g4_regs", i1 false, i1 false}
!116 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 318, i32 2}
!117 = !{ptr @bq27520g4_props, !118, !"bq27520g4_props", i1 false, i1 false}
!118 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 671, i32 35}
!119 = !{ptr @bq27521_regs, !120, !"bq27521_regs", i1 false, i1 false}
!120 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 339, i32 2}
!121 = !{ptr @bq27521_props, !122, !"bq27521_props", i1 false, i1 false}
!122 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 688, i32 35}
!123 = !{ptr @bq27530_regs, !124, !"bq27530_regs", i1 false, i1 false}
!124 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 364, i32 2}
!125 = !{ptr @bq27530_props, !126, !"bq27530_props", i1 false, i1 false}
!126 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 697, i32 35}
!127 = !{ptr @bq27541_regs, !128, !"bq27541_regs", i1 false, i1 false}
!128 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 386, i32 2}
!129 = !{ptr @bq27541_props, !130, !"bq27541_props", i1 false, i1 false}
!130 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 716, i32 35}
!131 = !{ptr @bq27545_regs, !132, !"bq27545_regs", i1 false, i1 false}
!132 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 410, i32 2}
!133 = !{ptr @bq27545_props, !134, !"bq27545_props", i1 false, i1 false}
!134 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 738, i32 35}
!135 = !{ptr @bq27421_regs, !136, !"bq27421_regs", i1 false, i1 false}
!136 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 431, i32 2}
!137 = !{ptr @bq27411_dm_regs, !138, !"bq27411_dm_regs", i1 false, i1 false}
!138 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 913, i32 30}
!139 = !{ptr @bq27421_props, !140, !"bq27421_props", i1 false, i1 false}
!140 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 756, i32 35}
!141 = !{ptr @bq27421_dm_regs, !142, !"bq27421_dm_regs", i1 false, i1 false}
!142 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 919, i32 30}
!143 = !{ptr @bq27425_dm_regs, !144, !"bq27425_dm_regs", i1 false, i1 false}
!144 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 925, i32 30}
!145 = !{ptr @bq27426_dm_regs, !146, !"bq27426_dm_regs", i1 false, i1 false}
!146 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 931, i32 30}
!147 = !{ptr @bq27z561_regs, !148, !"bq27z561_regs", i1 false, i1 false}
!148 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 457, i32 2}
!149 = !{ptr @bq27z561_props, !150, !"bq27z561_props", i1 false, i1 false}
!150 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 776, i32 35}
!151 = !{ptr @bq28z610_regs, !152, !"bq28z610_regs", i1 false, i1 false}
!152 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 478, i32 2}
!153 = !{ptr @bq28z610_props, !154, !"bq28z610_props", i1 false, i1 false}
!154 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 796, i32 35}
!155 = !{ptr @bq34z100_regs, !156, !"bq34z100_regs", i1 false, i1 false}
!156 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 499, i32 2}
!157 = !{ptr @bq34z100_props, !158, !"bq34z100_props", i1 false, i1 false}
!158 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 816, i32 35}
!159 = !{ptr @bq78z100_regs, !160, !"bq78z100_regs", i1 false, i1 false}
!160 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 520, i32 2}
!161 = !{ptr @bq78z100_props, !162, !"bq78z100_props", i1 false, i1 false}
!162 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 838, i32 35}
!163 = !{ptr @.str.29, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 2074, i32 17}
!165 = !{ptr @.str.30, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1850, i32 3}
!167 = !{ptr @.str.31, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @bq27xxx_battery_current_and_status._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @bq27xxx_battery_current_and_status._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.33, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1856, i32 3}
!172 = !{ptr @bq27xxx_battery_current_and_status._entry.32, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @bq27xxx_battery_current_and_status._entry_ptr.34, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.35, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1862, i32 4}
!176 = !{ptr @bq27xxx_battery_current_and_status.__UNIQUE_ID_ddebug195, !175, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!177 = !{ptr @.str.36, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1966, i32 3}
!179 = !{ptr @.str.37, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @bq27xxx_battery_voltage._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @bq27xxx_battery_voltage._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.38, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1903, i32 3}
!184 = !{ptr @.str.39, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @bq27xxx_battery_pwr_avg._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @bq27xxx_battery_pwr_avg._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.40, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1484, i32 3}
!189 = !{ptr @.str.41, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.42, !188, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @bq27xxx_battery_settings._entry, !188, !"_entry", i1 false, i1 false}
!192 = !{ptr @bq27xxx_battery_settings._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.44, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1490, i32 4}
!195 = !{ptr @bq27xxx_battery_settings._entry.43, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @bq27xxx_battery_settings._entry_ptr.45, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.47, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1492, i32 4}
!199 = !{ptr @bq27xxx_battery_settings._entry.46, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @bq27xxx_battery_settings._entry_ptr.48, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.50, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1498, i32 3}
!203 = !{ptr @bq27xxx_battery_settings._entry.49, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @bq27xxx_battery_settings._entry_ptr.51, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.53, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1506, i32 3}
!207 = !{ptr @bq27xxx_battery_settings._entry.52, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @bq27xxx_battery_settings._entry_ptr.54, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.56, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1516, i32 3}
!211 = !{ptr @bq27xxx_battery_settings._entry.55, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @bq27xxx_battery_settings._entry_ptr.57, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.58, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1200, i32 3}
!215 = !{ptr @.str.59, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @bq27xxx_battery_unseal._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @bq27xxx_battery_unseal._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.61, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1215, i32 2}
!220 = !{ptr @bq27xxx_battery_unseal._entry.60, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @bq27xxx_battery_unseal._entry_ptr.62, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.63, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1267, i32 2}
!224 = !{ptr @.str.64, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @bq27xxx_battery_read_dm_block._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @bq27xxx_battery_read_dm_block._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.65, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1157, i32 3}
!229 = !{ptr @.str.66, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @bq27xxx_read_block.__UNIQUE_ID_ddebug188, !228, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!231 = !{ptr @.str.67, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1281, i32 3}
!233 = !{ptr @.str.68, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @bq27xxx_battery_update_dm_block._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @bq27xxx_battery_update_dm_block._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.70, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1286, i32 3}
!238 = !{ptr @bq27xxx_battery_update_dm_block._entry.69, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @bq27xxx_battery_update_dm_block._entry_ptr.71, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.73, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1294, i32 3}
!242 = !{ptr @bq27xxx_battery_update_dm_block._entry.72, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @bq27xxx_battery_update_dm_block._entry_ptr.74, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.76, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1304, i32 3}
!246 = !{ptr @bq27xxx_battery_update_dm_block._entry.75, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @bq27xxx_battery_update_dm_block._entry_ptr.77, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.79, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1314, i32 2}
!250 = !{ptr @bq27xxx_battery_update_dm_block._entry.78, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @bq27xxx_battery_update_dm_block._entry_ptr.80, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.81, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1058, i32 33}
!254 = !{ptr @.str.82, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1059, i32 31}
!256 = !{ptr @.str.83, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1060, i32 35}
!258 = !{ptr @bq27xxx_dm_reg_name, !259, !"bq27xxx_dm_reg_name", i1 false, i1 false}
!259 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1057, i32 27}
!260 = !{ptr @.str.84, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1426, i32 2}
!262 = !{ptr @.str.85, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @bq27xxx_battery_write_dm_block._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @bq27xxx_battery_write_dm_block._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.86, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1352, i32 3}
!267 = !{ptr @.str.87, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @bq27xxx_battery_set_cfgupdate._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @bq27xxx_battery_set_cfgupdate._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.88, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1338, i32 3}
!272 = !{ptr @.str.89, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @bq27xxx_battery_cfgupdate_priv._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @bq27xxx_battery_cfgupdate_priv._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.91, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1343, i32 3}
!277 = !{ptr @bq27xxx_battery_cfgupdate_priv._entry.90, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @bq27xxx_battery_cfgupdate_priv._entry_ptr.92, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.93, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1176, i32 3}
!281 = !{ptr @.str.94, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @bq27xxx_write_block.__UNIQUE_ID_ddebug189, !280, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!283 = !{ptr @.str.95, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1361, i32 3}
!285 = !{ptr @.str.96, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @bq27xxx_battery_soft_reset._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @bq27xxx_battery_soft_reset._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.97, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1188, i32 3}
!290 = !{ptr @.str.98, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @bq27xxx_battery_seal._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @bq27xxx_battery_seal._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.99, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1138, i32 3}
!295 = !{ptr @.str.100, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @bq27xxx_write.__UNIQUE_ID_ddebug187, !294, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!297 = !{ptr @.str.101, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1018, i32 8}
!299 = !{ptr @.str.102, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @bq27xxx_list_lock, !298, !"bq27xxx_list_lock", i1 false, i1 false}
!301 = !{ptr @bq27xxx_battery_devices, !302, !"bq27xxx_battery_devices", i1 false, i1 false}
!302 = !{!"../drivers/power/supply/bq27xxx_battery.c", i32 1019, i32 8}
!303 = !{i32 1, !"wchar_size", i32 2}
!304 = !{i32 1, !"min_enum_size", i32 4}
!305 = !{i32 8, !"branch-target-enforcement", i32 0}
!306 = !{i32 8, !"sign-return-address", i32 0}
!307 = !{i32 8, !"sign-return-address-all", i32 0}
!308 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!309 = !{i32 7, !"uwtable", i32 1}
!310 = !{i32 7, !"frame-pointer", i32 2}
!311 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!312 = !{i64 2148337458, i64 2148337463, i64 2148337476, i64 2148337520, i64 2148337554, i64 2148337575}
!313 = !{!"branch_weights", i32 1, i32 2000}
!314 = !{!"branch_weights", i32 2000, i32 1}
!315 = !{!"auto-init"}
!316 = !{i8 0, i8 2}
