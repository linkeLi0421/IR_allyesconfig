; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-designware-common.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-designware-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+i2c_dw_validate_speed\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_dw_validate_speed\09\09\09\09"
module asm "\09.long\09__crc_i2c_dw_validate_speed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_dw_validate_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_dw_validate_speed\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_dw_validate_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+i2c_dw_adjust_bus_speed\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_dw_adjust_bus_speed\09\09\09\09"
module asm "\09.long\09__crc_i2c_dw_adjust_bus_speed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_dw_adjust_bus_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_dw_adjust_bus_speed\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_dw_adjust_bus_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+i2c_dw_prepare_clk\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_dw_prepare_clk\09\09\09\09"
module asm "\09.long\09__crc_i2c_dw_prepare_clk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_dw_prepare_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_dw_prepare_clk\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_dw_prepare_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.dw_i2c_dev = type { ptr, ptr, ptr, ptr, ptr, %struct.completion, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.i2c_adapter, i32, i32, i32, i32, i32, i32, %struct.i2c_timings, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, ptr, ptr, i32, %struct.i2c_bus_recovery_info, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__const.i2c_dw_init_regmap.map_cfg = private unnamed_addr constant { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] } { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr @dw_reg_read, ptr @dw_reg_write, ptr null, i8 0, [3 x i8] zeroinitializer, i32 252, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i8 0, [3 x i8] zeroinitializer }, align 4
@i2c_dw_init_regmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unknown Synopsys component type: 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c_dw_init_regmap\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/i2c/busses/i2c-designware-common.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_dw_init_regmap._entry_ptr = internal global ptr @i2c_dw_init_regmap._entry, section ".printk_index", align 4
@i2c_dw_init_regmap._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"i2c_designware_common:175:(&map_cfg)->lock\00", [53 x i8] zeroinitializer }, align 32
@i2c_dw_init_regmap._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to init the registers map\0A\00", [62 x i8] zeroinitializer }, align 32
@i2c_dw_init_regmap._entry_ptr.8 = internal global ptr @i2c_dw_init_regmap._entry.6, section ".printk_index", align 4
@i2c_dw_validate_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 207, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%d Hz is unsupported, only 100kHz, 400kHz, 1MHz and 3.4MHz are supported\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i2c_dw_validate_speed\00", [42 x i8] zeroinitializer }, align 32
@i2c_dw_validate_speed._entry_ptr = internal global ptr @i2c_dw_validate_speed._entry, section ".printk_index", align 4
@__kstrtab_i2c_dw_validate_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_dw_validate_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_dw_validate_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_dw_validate_speed to i32), ptr @__kstrtab_i2c_dw_validate_speed, ptr @__kstrtabns_i2c_dw_validate_speed }, section "___ksymtab_gpl+i2c_dw_validate_speed", align 4
@__kstrtab_i2c_dw_adjust_bus_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_dw_adjust_bus_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_dw_adjust_bus_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_dw_adjust_bus_speed to i32), ptr @__kstrtab_i2c_dw_adjust_bus_speed, ptr @__kstrtabns_i2c_dw_adjust_bus_speed }, section "___ksymtab_gpl+i2c_dw_adjust_bus_speed", align 4
@i2c_dw_set_sda_hold.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c_designware_core\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c_dw_set_sda_hold\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SDA Hold Time TX:RX = %d:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@i2c_dw_set_sda_hold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 429, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Hardware too old to adjust SDA hold time.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@i2c_dw_set_sda_hold._entry_ptr = internal global ptr @i2c_dw_set_sda_hold._entry, section ".printk_index", align 4
@__i2c_dw_disable._entry = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 462, ptr @.str.15, ptr @.str.4 }, align 1
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"timeout in disabling adapter\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__i2c_dw_disable\00", [47 x i8] zeroinitializer }, align 32
@__i2c_dw_disable._entry_ptr = internal global ptr @__i2c_dw_disable._entry, section ".printk_index", align 4
@i2c_dw_clk_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_i2c_dw_prepare_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_dw_prepare_clk = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_dw_prepare_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_dw_prepare_clk to i32), ptr @__kstrtab_i2c_dw_prepare_clk, ptr @__kstrtabns_i2c_dw_prepare_clk }, section "___ksymtab_gpl+i2c_dw_prepare_clk", align 4
@i2c_dw_acquire_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 514, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't acquire bus ownership\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c_dw_acquire_lock\00", [44 x i8] zeroinitializer }, align 32
@i2c_dw_acquire_lock._entry_ptr = internal global ptr @i2c_dw_acquire_lock._entry, section ".printk_index", align 4
@i2c_dw_wait_bus_not_busy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 537, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout waiting for bus ready\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i2c_dw_wait_bus_not_busy\00", [39 x i8] zeroinitializer }, align 32
@i2c_dw_wait_bus_not_busy._entry_ptr = internal global ptr @i2c_dw_wait_bus_not_busy._entry, section ".printk_index", align 4
@i2c_dw_handle_tx_abort.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -117, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i2c_dw_handle_tx_abort\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@abort_sources = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr null, ptr @.str.30, ptr null, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@i2c_dw_handle_tx_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.22, ptr @.str.2, i32 562, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@i2c_dw_handle_tx_abort._entry_ptr = internal global ptr @i2c_dw_handle_tx_abort._entry, section ".printk_index", align 4
@__UNIQUE_ID_description299 = internal constant [73 x i8] c"i2c_designware_core.description=Synopsys DesignWare I2C bus adapter core\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [64 x i8] c"i2c_designware_core.file=drivers/i2c/busses/i2c-designware-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [32 x i8] c"i2c_designware_core.license=GPL\00", section ".modinfo", align 1
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"slave address not acknowledged (7bit mode)\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"first address byte not acknowledged (10bit mode)\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"second address byte not acknowledged (10bit mode)\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"data not acknowledged\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no acknowledgement for a general call\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"read after general call\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"start byte acknowledged\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"trying to send start byte when restart is disabled\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"trying to read when restart is disabled (10bit mode)\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"trying to use disabled adapter\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lost arbitration\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"read command so flush old data in the TX FIFO\00", [50 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"slave lost the bus while transmitting data to a remote master\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"incorrect slave-transmitter mode configuration\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1073807360, i64 1073829700, i64 1146552640]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 100000, i64 400000, i64 1000000, i64 3400000]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 164, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 175, i32 13 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 177, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 205, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 422, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 428, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 462, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 514, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 537, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 556, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [14 x i8] c"abort_sources\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 31, i32 14 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 562, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 33, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 35, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 37, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 39, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 41, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 43, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 45, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 47, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 49, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 51, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 53, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 55, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 57, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [46 x i8] c"../drivers/i2c/busses/i2c-designware-common.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 59, i32 3 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__i2c_dw_disable._entry, ptr @__i2c_dw_disable._entry_ptr, ptr @__ksymtab_i2c_dw_adjust_bus_speed, ptr @__ksymtab_i2c_dw_prepare_clk, ptr @__ksymtab_i2c_dw_validate_speed, ptr @i2c_dw_acquire_lock._entry, ptr @i2c_dw_acquire_lock._entry_ptr, ptr @i2c_dw_handle_tx_abort._entry, ptr @i2c_dw_handle_tx_abort._entry_ptr, ptr @i2c_dw_init_regmap._entry, ptr @i2c_dw_init_regmap._entry.6, ptr @i2c_dw_init_regmap._entry_ptr, ptr @i2c_dw_init_regmap._entry_ptr.8, ptr @i2c_dw_set_sda_hold._entry, ptr @i2c_dw_set_sda_hold._entry_ptr, ptr @i2c_dw_validate_speed._entry, ptr @i2c_dw_validate_speed._entry_ptr, ptr @i2c_dw_wait_bus_not_busy._entry, ptr @i2c_dw_wait_bus_not_busy._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @i2c_dw_init_regmap._key, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @abort_sources, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_init_regmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_init_regmap._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_init_regmap._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_validate_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_set_sda_hold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_acquire_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_wait_bus_not_busy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abort_sources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_handle_tx_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_init_regmap(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %map_cfg = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %map_cfg) #8
  %0 = call ptr @memcpy(ptr %map_cfg, ptr @__const.i2c_dw_init_regmap.map_cfg, i32 172)
  %map = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %acquire_lock.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 42
  %3 = ptrtoint ptr %acquire_lock.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %acquire_lock.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.if.end3_crit_edge, label %if.end.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 %4() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end3_crit_edge, label %i2c_dw_acquire_lock.exit

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

i2c_dw_acquire_lock.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %base = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 252
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !106
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %release_lock.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 43
  %11 = ptrtoint ptr %release_lock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %release_lock.i, align 8
  %tobool.not.i52 = icmp eq ptr %12, null
  br i1 %tobool.not.i52, label %if.end3.i2c_dw_release_lock.exit_crit_edge, label %if.then.i

if.end3.i2c_dw_release_lock.exit_crit_edge:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_dw_release_lock.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %12() #8
  br label %i2c_dw_release_lock.exit

i2c_dw_release_lock.exit:                         ; preds = %if.then.i, %if.end3.i2c_dw_release_lock.exit_crit_edge
  %flags = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 24
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and)
  %cmp = icmp eq i32 %and, 1024
  br i1 %cmp, label %if.then6, label %i2c_dw_release_lock.exit.if.end7_crit_edge

i2c_dw_release_lock.exit.if.end7_crit_edge:       ; preds = %i2c_dw_release_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %i2c_dw_release_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %max_register = getelementptr inbounds %struct.regmap_config, ptr %map_cfg, i32 0, i32 19
  %15 = ptrtoint ptr %max_register to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1140, ptr %max_register, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %i2c_dw_release_lock.exit.if.end7_crit_edge
  %16 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end [
    i32 1146552640, label %if.end7.if.end20.sink.split_crit_edge
    i32 1073807360, label %if.then11
    i32 1073829700, label %if.end7.if.end20_crit_edge
  ]

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end7.if.end20.sink.split_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str, i32 noundef %10) #11
  br label %cleanup

if.end20.sink.split:                              ; preds = %if.then11, %if.end7.if.end20.sink.split_crit_edge
  %dw_reg_read_word.sink = phi ptr [ @dw_reg_read_word, %if.then11 ], [ @dw_reg_read_swab, %if.end7.if.end20.sink.split_crit_edge ]
  %dw_reg_write_word.sink = phi ptr [ @dw_reg_write_word, %if.then11 ], [ @dw_reg_write_swab, %if.end7.if.end20.sink.split_crit_edge ]
  %reg_read12 = getelementptr inbounds %struct.regmap_config, ptr %map_cfg, i32 0, i32 15
  %19 = ptrtoint ptr %reg_read12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dw_reg_read_word.sink, ptr %reg_read12, align 4
  %reg_write13 = getelementptr inbounds %struct.regmap_config, ptr %map_cfg, i32 0, i32 16
  %20 = ptrtoint ptr %reg_write13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dw_reg_write_word.sink, ptr %reg_write13, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.end7.if.end20_crit_edge
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %call23 = call ptr @__devm_regmap_init(ptr noundef %22, ptr noundef null, ptr noundef %dev, ptr noundef nonnull %map_cfg, ptr noundef nonnull @i2c_dw_init_regmap._key, ptr noundef nonnull @.str.5) #8
  %23 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call23, ptr %map, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end30, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.7) #11
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end20.cleanup_crit_edge, %do.end, %i2c_dw_acquire_lock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %do.end30 ], [ -19, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %i2c_dw_acquire_lock.exit ], [ 0, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %map_cfg) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_reg_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.dw_i2c_dev, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !106
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_reg_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %base = getelementptr inbounds %struct.dw_i2c_dev, ptr %context, i32 0, i32 3
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !108
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_acquire_lock(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %acquire_lock = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 42
  %0 = ptrtoint ptr %acquire_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acquire_lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 %1() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i2c_dw_release_lock(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %release_lock = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 43
  %0 = ptrtoint ptr %release_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release_lock, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %1() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_reg_read_swab(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.dw_i2c_dev, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !106
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_reg_write_swab(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.dw_i2c_dev, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %val) #8, !srcloc !108
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_reg_read_word(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.dw_i2c_dev, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !109
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 %reg
  %add.ptr4 = getelementptr i8, ptr %add.ptr3, i32 2
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4) #8, !srcloc !109
  %6 = zext i16 %5 to i32
  %7 = zext i16 %2 to i32
  %8 = shl nuw i32 %7, 16
  %9 = or i32 %8, %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_reg_write_word(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %val to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %base = getelementptr inbounds %struct.dw_i2c_dev, ptr %context, i32 0, i32 3
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #8, !srcloc !110
  %shr = lshr i32 %val, 16
  %conv1 = trunc i32 %shr to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv1)
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 %reg
  %add.ptr4 = getelementptr i8, ptr %add.ptr3, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 %3) #8, !srcloc !110
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_validate_speed(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timings = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timings, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %1, label %for.cond.3 [
    i32 3400000, label %entry.cleanup_crit_edge
    i32 1000000, label %entry.cleanup_crit_edge10
    i32 400000, label %entry.cleanup_crit_edge11
    i32 100000, label %entry.cleanup_crit_edge12
  ]

entry.cleanup_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %5 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %timings, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %6) #11
  br label %cleanup

cleanup:                                          ; preds = %for.cond.3, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge10, %entry.cleanup_crit_edge11, %entry.cleanup_crit_edge12
  %retval.0 = phi i32 [ -22, %for.cond.3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge10 ], [ 0, %entry.cleanup_crit_edge11 ], [ 0, %entry.cleanup_crit_edge12 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @i2c_dw_adjust_bus_speed(ptr nocapture noundef %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timings = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool7.not = icmp eq i32 %1, 0
  %spec.select = select i1 %tobool7.not, i32 400000, i32 %1
  %2 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %timings, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @i2c_dw_scl_hcnt(i32 noundef %ic_clk, i32 noundef %tSYMBOL, i32 noundef %tf, i32 noundef %cond, i32 noundef %offset) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool.not = icmp eq i32 %cond, 0
  %add4 = select i1 %tobool.not, i32 %tf, i32 0
  %add4.sink = add i32 %add4, %tSYMBOL
  %.sink = select i1 %tobool.not, i32 -3, i32 -8
  %mul5 = mul i32 %add4.sink, %ic_clk
  %add9 = add i32 %mul5, 500000
  %div10 = udiv i32 %add9, 1000000
  %sub11 = add nsw i32 %div10, %.sink
  %retval.0 = add i32 %sub11, %offset
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @i2c_dw_scl_lcnt(i32 noundef %ic_clk, i32 noundef %tLOW, i32 noundef %tf, i32 noundef %offset) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %tf, %tLOW
  %mul = mul i32 %add, %ic_clk
  %add1 = add i32 %mul, 500000
  %div2 = udiv i32 %add1, 1000000
  %sub = add i32 %offset, -1
  %add3 = add i32 %sub, %div2
  ret i32 %add3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_set_sda_hold(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !111
  %acquire_lock.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 42
  %1 = ptrtoint ptr %acquire_lock.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %acquire_lock.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 %2() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %i2c_dw_acquire_lock.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

i2c_dw_acquire_lock.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %map = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 248, ptr noundef nonnull %reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_release_lock_crit_edge

if.end.err_release_lock_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_lock

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825307433, i32 %8)
  %cmp = icmp ugt i32 %8, 825307433
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end4
  %sda_hold_time = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 33
  %9 = ptrtoint ptr %sda_hold_time to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sda_hold_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %if.then7, label %if.then5.if.end14_crit_edge

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then7:                                         ; preds = %if.then5
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 4
  %call10 = call i32 @regmap_read(ptr noundef %12, i32 noundef 124, ptr noundef %sda_hold_time) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then7.if.end14_crit_edge, label %if.then7.err_release_lock_crit_edge

if.then7.err_release_lock_crit_edge:              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_lock

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %if.then7.if.end14_crit_edge, %if.then5.if.end14_crit_edge
  %13 = ptrtoint ptr %sda_hold_time to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sda_hold_time, align 8
  %and = and i32 %14, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then17, label %if.end14.do.body_crit_edge

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %14, 65536
  %15 = ptrtoint ptr %sda_hold_time to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %sda_hold_time, align 8
  br label %do.body

do.body:                                          ; preds = %if.then17, %if.end14.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dw_set_sda_hold.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dw_set_sda_hold, %err_release_lock)) #8
          to label %if.then25 [label %err_release_lock], !srcloc !112

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = ptrtoint ptr %sda_hold_time to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sda_hold_time, align 8
  %and28 = and i32 %19, -16711681
  %shr = lshr i32 %19, 16
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dw_set_sda_hold.__UNIQUE_ID_ddebug293, ptr noundef %17, ptr noundef nonnull @.str.13, i32 noundef %and28, i32 noundef %shr) #8
  br label %err_release_lock

if.else:                                          ; preds = %if.end4
  %set_sda_hold_time = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 48
  %20 = ptrtoint ptr %set_sda_hold_time to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_sda_hold_time, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %if.else35, label %if.then32

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = call i32 %21(ptr noundef %dev) #8
  br label %err_release_lock

if.else35:                                        ; preds = %if.else
  %sda_hold_time36 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 33
  %22 = ptrtoint ptr %sda_hold_time36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sda_hold_time36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool37.not = icmp eq i32 %23, 0
  br i1 %tobool37.not, label %if.else35.err_release_lock_crit_edge, label %do.end41

if.else35.err_release_lock_crit_edge:             ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_lock

do.end41:                                         ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.14) #11
  %26 = ptrtoint ptr %sda_hold_time36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %sda_hold_time36, align 8
  br label %err_release_lock

err_release_lock:                                 ; preds = %do.end41, %if.else35.err_release_lock_crit_edge, %if.then32, %if.then25, %do.body, %if.then7.err_release_lock_crit_edge, %if.end.err_release_lock_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.err_release_lock_crit_edge ], [ 0, %if.then25 ], [ %call10, %if.then7.err_release_lock_crit_edge ], [ 0, %if.then32 ], [ 0, %do.end41 ], [ 0, %if.else35.err_release_lock_crit_edge ], [ 0, %do.body ]
  %release_lock.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 43
  %27 = ptrtoint ptr %release_lock.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %release_lock.i, align 8
  %tobool.not.i69 = icmp eq ptr %28, null
  br i1 %tobool.not.i69, label %err_release_lock.cleanup_crit_edge, label %if.then.i

err_release_lock.cleanup_crit_edge:               ; preds = %err_release_lock
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %err_release_lock
  call void @__sanitizer_cov_trace_pc() #10
  call void %28() #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %err_release_lock.cleanup_crit_edge, %i2c_dw_acquire_lock.exit
  %retval.0 = phi i32 [ %call.i, %i2c_dw_acquire_lock.exit ], [ %ret.1, %err_release_lock.cleanup_crit_edge ], [ %ret.1, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__i2c_dw_disable(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !111
  %map.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 100, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %1 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map.i, align 4
  %call.i = call i32 @regmap_write(ptr noundef %2, i32 noundef 108, i32 noundef 0) #8
  %3 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map.i, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 156, ptr noundef nonnull %status) #8
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %do.body
  call void @usleep_range_state(i32 noundef 25, i32 noundef 250, i32 noundef 2) #8
  %dec = add nsw i32 %timeout.0, -1
  %tobool.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool.not, label %do.end3, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.16) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end3, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_clk_rate(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %get_clk_rate_khz = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %get_clk_rate_khz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_clk_rate_khz, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b45 = load i1, ptr @i2c_dw_clk_rate.__already_done, align 1
  br i1 %.b45, label %land.rhs.return_crit_edge, label %if.then, !prof !113

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @i2c_dw_clk_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 471, i32 noundef 9, ptr noundef null) #8
  br label %return

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %1(ptr noundef %dev) #8
  br label %return

return:                                           ; preds = %if.end39, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end39 ], [ 0, %if.then ], [ 0, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_prepare_clk(ptr nocapture noundef readonly %dev, i1 noundef zeroext %prepare) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %prepare, label %if.then3, label %if.end14

if.then3:                                         ; preds = %if.end
  %pclk = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 7
  %3 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pclk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then3
  %call1.i = tail call i32 @clk_enable(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end7, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %4) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call.i26 = tail call i32 @clk_prepare(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i27, label %if.end.i30, label %if.end7.if.then11_crit_edge

if.end7.if.then11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.end.i30:                                       ; preds = %if.end7
  %call1.i28 = tail call i32 @clk_enable(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool2.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool2.not.i29, label %if.end.i30.cleanup_crit_edge, label %if.then3.i31

if.end.i30.cleanup_crit_edge:                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i31:                                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %6) #8
  br label %if.then11

if.then11:                                        ; preds = %if.then3.i31, %if.end7.if.then11_crit_edge
  %retval.0.i32.ph = phi i32 [ %call1.i28, %if.then3.i31 ], [ %call.i26, %if.end7.if.then11_crit_edge ]
  %7 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pclk, align 8
  tail call void @clk_disable(ptr noundef %8) #8
  tail call void @clk_unprepare(ptr noundef %8) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  %pclk16 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 7
  %9 = ptrtoint ptr %pclk16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pclk16, align 8
  tail call void @clk_disable(ptr noundef %10) #8
  tail call void @clk_unprepare(ptr noundef %10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then11, %if.end.i30.cleanup_crit_edge, %if.then3.i, %if.then3.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end14 ], [ %retval.0.i32.ph, %if.then11 ], [ 0, %if.end.i30.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_wait_bus_not_busy(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !111
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 535) #8
  %map = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %call872 = call i32 @regmap_read(ptr noundef %2, i32 noundef 112, ptr noundef nonnull %status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call872)
  %tobool.not73 = icmp eq i32 %call872, 0
  br i1 %tobool.not73, label %entry.lor.lhs.false_crit_edge, label %entry.do.end33_crit_edge

entry.do.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 276, i32 noundef 1100, i32 noundef 2) #8
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %call8 = call i32 @regmap_read(ptr noundef %6, i32 noundef 112, ptr noundef nonnull %status) #8
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then21.lor.lhs.false_crit_edge, label %if.then21.do.end33_crit_edge

if.then21.do.end33_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33

if.then21.lor.lhs.false_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %call18 = call i32 @regmap_read(ptr noundef %8, i32 noundef 112, ptr noundef nonnull %status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool23.not = icmp eq i32 %call18, 0
  br i1 %tobool23.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end33_crit_edge

for.end.do.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  %and24 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %lor.rhs.if.end42_crit_edge, label %lor.rhs.do.end33_crit_edge

lor.rhs.do.end33_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33

lor.rhs.if.end42_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.end33:                                         ; preds = %lor.rhs.do.end33_crit_edge, %for.end.do.end33_crit_edge, %if.then21.do.end33_crit_edge, %entry.do.end33_crit_edge
  %tobool23.not59.ph = phi i32 [ %call872, %entry.do.end33_crit_edge ], [ -110, %lor.rhs.do.end33_crit_edge ], [ %call18, %for.end.do.end33_crit_edge ], [ %call8, %if.then21.do.end33_crit_edge ]
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.20) #11
  %adapter = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25
  %call35 = call i32 @i2c_recover_bus(ptr noundef %adapter) #8
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  %call37 = call i32 @regmap_read(ptr noundef %14, i32 noundef 112, ptr noundef nonnull %status) #8
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  %and38 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %spec.select54 = select i1 %tobool39.not, i32 0, i32 %tobool23.not59.ph
  br label %if.end42

if.end42:                                         ; preds = %do.end33, %lor.rhs.if.end42_crit_edge
  %ret.0 = phi i32 [ %spec.select54, %do.end33 ], [ 0, %lor.rhs.if.end42_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_handle_tx_abort(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %abort_source = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %abort_source) #8
  %abort_source1 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 22
  %0 = ptrtoint ptr %abort_source1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %abort_source1, align 4
  %2 = ptrtoint ptr %abort_source to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %abort_source, align 4
  %and = and i32 %1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %call11 = call i32 @_find_next_bit_be(ptr noundef nonnull %abort_source, i32 noundef 16, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call11)
  %cmp1343 = icmp ult i32 %call11, 16
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp1343, label %if.then.do.body_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.do.body_crit_edge:                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.then.do.body_crit_edge
  %i.041 = phi i32 [ %call9, %for.inc.do.body_crit_edge ], [ %call11, %if.then.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dw_handle_tx_abort.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dw_handle_tx_abort, %for.inc)) #8
          to label %if.then7 [label %for.inc], !srcloc !112

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %arrayidx = getelementptr [16 x ptr], ptr @abort_sources, i32 0, i32 %i.041
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dw_handle_tx_abort.__UNIQUE_ID_ddebug294, ptr noundef %4, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, ptr noundef %6) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %do.body
  %add = add nuw nsw i32 %i.041, 1
  %call9 = call i32 @_find_next_bit_be(ptr noundef nonnull %abort_source, i32 noundef 16, i32 noundef %add) #8
  %cmp = icmp ult i32 %call9, 16
  br i1 %cmp, label %for.inc.do.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end10:                                         ; preds = %entry
  br i1 %cmp1343, label %if.end10.do.end17_crit_edge, label %if.end10.for.end23_crit_edge

if.end10.for.end23_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end23

if.end10.do.end17_crit_edge:                      ; preds = %if.end10
  br label %do.end17

do.end17:                                         ; preds = %do.end17.do.end17_crit_edge, %if.end10.do.end17_crit_edge
  %i.144 = phi i32 [ %call22, %do.end17.do.end17_crit_edge ], [ %call11, %if.end10.do.end17_crit_edge ]
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %arrayidx19 = getelementptr [16 x ptr], ptr @abort_sources, i32 0, i32 %i.144
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, ptr noundef %10) #11
  %add21 = add nuw nsw i32 %i.144, 1
  %call22 = call i32 @_find_next_bit_be(ptr noundef nonnull %abort_source, i32 noundef 16, i32 noundef %add21) #8
  %cmp13 = icmp ult i32 %call22, 16
  br i1 %cmp13, label %do.end17.do.end17_crit_edge, label %do.end17.for.end23_crit_edge

do.end17.for.end23_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end23

do.end17.do.end17_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

for.end23:                                        ; preds = %do.end17.for.end23_crit_edge, %if.end10.for.end23_crit_edge
  %11 = ptrtoint ptr %abort_source to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %abort_source, align 4
  %and24 = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else, label %for.end23.cleanup_crit_edge

for.end23.cleanup_crit_edge:                      ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #10
  %and27 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %. = select i1 %tobool28.not, i32 -5, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.else, %for.end23.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %for.end23.cleanup_crit_edge ], [ %., %if.else ], [ -121, %if.then.cleanup_crit_edge ], [ -121, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %abort_source) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_set_fifo_size(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %param = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #8
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %param, align 4, !annotation !111
  %map = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 244, ptr noundef nonnull %param) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %param, align 4
  %shr = lshr i32 %4, 16
  %and = and i32 %shr, 255
  %add = add nuw nsw i32 %and, 1
  %shr1 = lshr i32 %4, 8
  %and2 = and i32 %shr1, 255
  %add3 = add nuw nsw i32 %and2, 1
  %tx_fifo_depth4 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 29
  %5 = ptrtoint ptr %tx_fifo_depth4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_fifo_depth4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %tx_fifo_depth4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %tx_fifo_depth4, align 4
  %rx_fifo_depth8 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 30
  %8 = ptrtoint ptr %rx_fifo_depth8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add3, ptr %rx_fifo_depth8, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else.cleanup_crit_edge, label %if.then9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %and)
  %cmp11.not = icmp ugt i32 %6, %and
  %add. = select i1 %cmp11.not, i32 %add, i32 %6
  %9 = ptrtoint ptr %tx_fifo_depth4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add., ptr %tx_fifo_depth4, align 4
  %rx_fifo_depth13 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 30
  %10 = ptrtoint ptr %rx_fifo_depth13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_fifo_depth13, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %and2)
  %cmp15.not = icmp ugt i32 %11, %and2
  %cond19 = select i1 %cmp15.not, i32 %add3, i32 %11
  %12 = ptrtoint ptr %rx_fifo_depth13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond19, ptr %rx_fifo_depth13, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.else.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @i2c_dw_func(ptr nocapture noundef readonly %adap) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %functionality = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %functionality to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %functionality, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i2c_dw_disable(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %status.i = alloca i32, align 4
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #8
  %0 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dummy, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %1 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %status.i, align 4, !annotation !111
  %map.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 100, %entry ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %2 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map.i.i, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %3, i32 noundef 108, i32 noundef 0) #8
  %4 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 156, ptr noundef nonnull %status.i) #8
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.body.i.__i2c_dw_disable.exit_crit_edge, label %if.end.i

do.body.i.__i2c_dw_disable.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__i2c_dw_disable.exit

if.end.i:                                         ; preds = %do.body.i
  call void @usleep_range_state(i32 noundef 25, i32 noundef 250, i32 noundef 2) #8
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool.not.i, label %do.end3.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.16) #11
  br label %__i2c_dw_disable.exit

__i2c_dw_disable.exit:                            ; preds = %do.end3.i, %do.body.i.__i2c_dw_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  %10 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i.i, align 4
  %call = call i32 @regmap_write(ptr noundef %11, i32 noundef 48, i32 noundef 0) #8
  %12 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i.i, align 4
  %call2 = call i32 @regmap_read(ptr noundef %13, i32 noundef 64, ptr noundef nonnull %dummy) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i2c_dw_disable_int(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 48, i32 noundef 0) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !62, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 164, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @i2c_dw_init_regmap._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @i2c_dw_init_regmap._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @i2c_dw_init_regmap._key, !9, !"_key", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 175, i32 13}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 177, i32 3}
!13 = !{ptr @i2c_dw_init_regmap._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @i2c_dw_init_regmap._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 205, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @i2c_dw_validate_speed._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @i2c_dw_validate_speed._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_i2c_dw_validate_speed, !21, !"__ksymtab_i2c_dw_validate_speed", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 211, i32 1}
!22 = !{ptr @__ksymtab_i2c_dw_adjust_bus_speed, !23, !"__ksymtab_i2c_dw_adjust_bus_speed", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 333, i32 1}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 422, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @i2c_dw_set_sda_hold.__UNIQUE_ID_ddebug293, !25, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 428, i32 3}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @i2c_dw_set_sda_hold._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @i2c_dw_set_sda_hold._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 462, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__i2c_dw_disable._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @__i2c_dw_disable._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 471, i32 6}
!41 = !{ptr @__ksymtab_i2c_dw_prepare_clk, !42, !"__ksymtab_i2c_dw_prepare_clk", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 501, i32 1}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 514, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @i2c_dw_acquire_lock._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @i2c_dw_acquire_lock._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 537, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @i2c_dw_wait_bus_not_busy._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @i2c_dw_wait_bus_not_busy._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 556, i32 4}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @i2c_dw_handle_tx_abort.__UNIQUE_ID_ddebug294, !54, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!57 = !{ptr @i2c_dw_handle_tx_abort._entry, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 562, i32 3}
!59 = !{ptr @i2c_dw_handle_tx_abort._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @__UNIQUE_ID_description299, !61, !"__UNIQUE_ID_description299", i1 false, i1 false}
!61 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 624, i32 1}
!62 = !{ptr @__UNIQUE_ID_file300, !63, !"__UNIQUE_ID_file300", i1 false, i1 false}
!63 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 625, i32 1}
!64 = !{ptr @__UNIQUE_ID_license301, !63, !"__UNIQUE_ID_license301", i1 false, i1 false}
!65 = distinct !{null, !66, !"supported_speeds", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 184, i32 18}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 33, i32 3}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 35, i32 3}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 37, i32 3}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 39, i32 3}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 41, i32 3}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 43, i32 3}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 45, i32 3}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 47, i32 3}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 49, i32 3}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 51, i32 3}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 53, i32 3}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 55, i32 3}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 57, i32 3}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 59, i32 3}
!95 = !{ptr @abort_sources, !96, !"abort_sources", i1 false, i1 false}
!96 = !{!"../drivers/i2c/busses/i2c-designware-common.c", i32 31, i32 14}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 6876527}
!107 = !{i64 2155690839}
!108 = !{i64 6876109}
!109 = !{i64 6875689}
!110 = !{i64 6875489}
!111 = !{!"auto-init"}
!112 = !{i64 2148961531, i64 2148961536, i64 2148961549, i64 2148961593, i64 2148961627, i64 2148961648}
!113 = !{!"branch_weights", i32 2000, i32 1}
