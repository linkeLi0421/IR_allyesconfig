; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-designware-master.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-designware-master.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+i2c_dw_configure_master\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_dw_configure_master\09\09\09\09"
module asm "\09.long\09__crc_i2c_dw_configure_master\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_dw_configure_master:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_dw_configure_master\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_dw_configure_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+i2c_dw_probe_master\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_dw_probe_master\09\09\09\09"
module asm "\09.long\09__crc_i2c_dw_probe_master\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_dw_probe_master:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_dw_probe_master\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_dw_probe_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__kstrtab_i2c_dw_configure_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_dw_configure_master = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_dw_configure_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_dw_configure_master to i32), ptr @__kstrtab_i2c_dw_configure_master, ptr @__kstrtabns_i2c_dw_configure_master }, section "___ksymtab_gpl+i2c_dw_configure_master", align 4
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Synopsys DesignWare I2C adapter\00", [32 x i8] zeroinitializer }, align 32
@i2c_dw_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @i2c_dw_xfer, ptr null, ptr null, ptr null, ptr @i2c_dw_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@i2c_dw_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 96, i32 0, i16 0, i16 0, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@i2c_dw_probe_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 913, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failure requesting irq %i: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c_dw_probe_master\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/i2c/busses/i2c-designware-master.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_dw_probe_master._entry_ptr = internal global ptr @i2c_dw_probe_master._entry, section ".printk_index", align 4
@i2c_dw_probe_master._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 930, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failure adding adapter: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@i2c_dw_probe_master._entry_ptr.8 = internal global ptr @i2c_dw_probe_master._entry.6, section ".printk_index", align 4
@__kstrtab_i2c_dw_probe_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_dw_probe_master = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_dw_probe_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_dw_probe_master to i32), ptr @__kstrtab_i2c_dw_probe_master, ptr @__kstrtabns_i2c_dw_probe_master }, section "___ksymtab_gpl+i2c_dw_probe_master", align 4
@__UNIQUE_ID_description297 = internal constant [75 x i8] c"i2c_designware_core.description=Synopsys DesignWare I2C bus master adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [64 x i8] c"i2c_designware_core.file=drivers/i2c/busses/i2c-designware-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [32 x i8] c"i2c_designware_core.license=GPL\00", section ".modinfo", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@i2c_dw_set_timings_master.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c_designware_core\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i2c_dw_set_timings_master\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Standard Mode HCNT:LCNT = %d:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" Plus\00", [26 x i8] zeroinitializer }, align 32
@i2c_dw_set_timings_master.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.3, ptr @.str.15, i8 0, i8 32, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Fast Mode%s HCNT:LCNT = %d:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@i2c_dw_set_timings_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str.3, i32 135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"High Speed not supported!\0A\00", [37 x i8] zeroinitializer }, align 32
@i2c_dw_set_timings_master._entry_ptr = internal global ptr @i2c_dw_set_timings_master._entry, section ".printk_index", align 4
@i2c_dw_set_timings_master.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.3, ptr @.str.17, i8 0, i8 39, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"High Speed Mode HCNT:LCNT = %d:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@i2c_dw_set_timings_master.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.3, ptr @.str.18, i8 0, i8 40, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Bus speed: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@i2c_dw_xfer.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 -117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_dw_xfer\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: msgs: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@i2c_dw_xfer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s %s: Transfer while suspended\0A\00", [63 x i8] zeroinitializer }, align 32
@i2c_dw_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.3, i32 599, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"controller timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@i2c_dw_xfer._entry_ptr = internal global ptr @i2c_dw_xfer._entry, section ".printk_index", align 4
@i2c_dw_xfer._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 636, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"transfer terminated early - interrupt latency too high?\0A\00", [39 x i8] zeroinitializer }, align 32
@i2c_dw_xfer._entry_ptr.25 = internal global ptr @i2c_dw_xfer._entry.23, section ".printk_index", align 4
@i2c_dw_check_stopbit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i2c timeout error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c_dw_check_stopbit\00", [43 x i8] zeroinitializer }, align 32
@i2c_dw_check_stopbit._entry_ptr = internal global ptr @i2c_dw_check_stopbit._entry, section ".printk_index", align 4
@amd_i2c_adap_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 857, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to add adapter: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amd_i2c_adap_quirk\00", [45 x i8] zeroinitializer }, align 32
@amd_i2c_adap_quirk._entry_ptr = internal global ptr @amd_i2c_adap_quirk._entry, section ".printk_index", align 4
@i2c_dw_isr.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 -64, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_dw_isr\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enabled=%#x stat=%#x\0A\00", [42 x i8] zeroinitializer }, align 32
@i2c_dw_xfer_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: invalid target address\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c_dw_xfer_msg\00", [16 x i8] zeroinitializer }, align 32
@i2c_dw_xfer_msg._entry_ptr = internal global ptr @i2c_dw_xfer_msg._entry, section ".printk_index", align 4
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"scl\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sda\00", [28 x i8] zeroinitializer }, align 32
@i2c_dw_init_recovery_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 844, ptr @.str.38, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"running with gpio recovery mode! scl%s\00", [57 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i2c_dw_init_recovery_info\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@i2c_dw_init_recovery_info._entry_ptr = internal global ptr @i2c_dw_init_recovery_info._entry, section ".printk_index", align 4
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",sda\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 892, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"i2c_dw_algo\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 650, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"i2c_dw_quirks\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 655, i32 40 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 912, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 930, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 87, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 45, i32 23 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 77, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 107, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 127, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 135, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 155, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 163, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 556, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 570, i32 6 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 599, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 635, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 264, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 857, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 770, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 386, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 827, i32 43 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 833, i32 43 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [46 x i8] c"../drivers/i2c/busses/i2c-designware-master.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 843, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__ksymtab_i2c_dw_configure_master, ptr @__ksymtab_i2c_dw_probe_master, ptr @amd_i2c_adap_quirk._entry, ptr @amd_i2c_adap_quirk._entry_ptr, ptr @i2c_dw_check_stopbit._entry, ptr @i2c_dw_check_stopbit._entry_ptr, ptr @i2c_dw_init_recovery_info._entry, ptr @i2c_dw_init_recovery_info._entry_ptr, ptr @i2c_dw_probe_master._entry, ptr @i2c_dw_probe_master._entry.6, ptr @i2c_dw_probe_master._entry_ptr, ptr @i2c_dw_probe_master._entry_ptr.8, ptr @i2c_dw_set_timings_master._entry, ptr @i2c_dw_set_timings_master._entry_ptr, ptr @i2c_dw_xfer._entry, ptr @i2c_dw_xfer._entry.23, ptr @i2c_dw_xfer._entry_ptr, ptr @i2c_dw_xfer._entry_ptr.25, ptr @i2c_dw_xfer_msg._entry, ptr @i2c_dw_xfer_msg._entry_ptr, ptr @.str, ptr @i2c_dw_algo, ptr @i2c_dw_quirks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @init_completion.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_probe_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_probe_master._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_set_timings_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_xfer._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_check_stopbit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_i2c_adap_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_xfer_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_init_recovery_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @i2c_dw_configure_master(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timings = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 32
  %functionality = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %functionality to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 259915779, ptr %functionality, align 8
  %master_cfg = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 27
  %mode = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 49
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %mode, align 8
  %2 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3400000, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 3400000
  %switch.select = select i1 %switch.selectcmp, i32 103, i32 101
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %3)
  %switch.selectcmp13 = icmp eq i32 %3, 100000
  %switch.select14 = select i1 %switch.selectcmp13, i32 99, i32 %switch.select
  %4 = ptrtoint ptr %master_cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %switch.select14, ptr %master_cfg, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_probe_master(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25
  %cmd_complete = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_complete, align 4
  %wait.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #8
  %init = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 47
  %1 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @i2c_dw_init_master, ptr %init, align 8
  %disable = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 45
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @i2c_dw_disable, ptr %disable, align 8
  %disable_int = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 46
  %3 = ptrtoint ptr %disable_int to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @i2c_dw_disable_int, ptr %disable_int, align 4
  %call = tail call i32 @i2c_dw_init_regmap(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @i2c_dw_set_timings_master(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @i2c_dw_set_fifo_size(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init, align 8
  %call10 = tail call i32 %5(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %name = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25, i32 12
  %6 = call ptr @memcpy(ptr %name, ptr @.str, i32 32)
  %retries = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25, i32 8
  %7 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %retries, align 8
  %algo = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25, i32 2
  %8 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @i2c_dw_algo, ptr %algo, align 8
  %quirks = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25, i32 17
  %9 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @i2c_dw_quirks, ptr %quirks, align 8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %parent = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25, i32 9, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25, i32 9, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 24
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and)
  %cmp = icmp eq i32 %and, 1024
  br i1 %cmp, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call fastcc i32 @amd_i2c_adap_quirk(ptr noundef %dev)
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %and21 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %. = select i1 %tobool22.not, i32 262272, i32 16384
  tail call void @i2c_dw_disable_int(ptr noundef %dev) #8
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %irq = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 23
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.dev_name.exit_crit_edge

if.end19.dev_name.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.end.i ], [ %21, %if.end19.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %17, i32 noundef %19, ptr noundef nonnull @i2c_dw_isr, ptr noundef null, i32 noundef %., ptr noundef %retval.0.i, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %if.end33, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.1, i32 noundef %27, i32 noundef %call.i) #11
  br label %cleanup

if.end33:                                         ; preds = %dev_name.exit
  %call34 = tail call fastcc i32 @i2c_dw_init_recovery_info(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !106
  %call39 = tail call i32 @i2c_add_numbered_adapter(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end37.if.end46_crit_edge, label %do.end44

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.7, i32 noundef %call39) #11
  br label %if.end46

if.end46:                                         ; preds = %do.end44, %if.end37.if.end46_crit_edge
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %34)
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end33.cleanup_crit_edge, %do.end, %if.then17, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.then17 ], [ %call.i, %do.end ], [ %call39, %if.end46 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_dw_init_master(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_dw_acquire_lock(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__i2c_dw_disable(ptr noundef %dev) #8
  %map = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %ss_hcnt = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 34
  %2 = ptrtoint ptr %ss_hcnt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ss_hcnt, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 20, i32 noundef %conv) #8
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %ss_lcnt = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 35
  %6 = ptrtoint ptr %ss_lcnt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ss_lcnt, align 2
  %conv3 = zext i16 %7 to i32
  %call4 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 24, i32 noundef %conv3) #8
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %fs_hcnt = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 36
  %10 = ptrtoint ptr %fs_hcnt to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %fs_hcnt, align 8
  %conv6 = zext i16 %11 to i32
  %call7 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 28, i32 noundef %conv6) #8
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 4
  %fs_lcnt = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 37
  %14 = ptrtoint ptr %fs_lcnt to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fs_lcnt, align 2
  %conv9 = zext i16 %15 to i32
  %call10 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 32, i32 noundef %conv9) #8
  %hs_hcnt = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 40
  %16 = ptrtoint ptr %hs_hcnt to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hs_hcnt, align 8
  %conv11 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool12.not = icmp eq i16 %17, 0
  br i1 %tobool12.not, label %if.end.if.end24_crit_edge, label %land.lhs.true

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end
  %hs_lcnt = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 41
  %18 = ptrtoint ptr %hs_lcnt to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hs_lcnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool14.not = icmp eq i16 %19, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end24_crit_edge, label %if.then15

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map, align 4
  %call19 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 36, i32 noundef %conv11) #8
  %22 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map, align 4
  %24 = ptrtoint ptr %hs_lcnt to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hs_lcnt, align 2
  %conv22 = zext i16 %25 to i32
  %call23 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 40, i32 noundef %conv22) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then15, %land.lhs.true.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %sda_hold_time = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 33
  %26 = ptrtoint ptr %sda_hold_time to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sda_hold_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool25.not = icmp eq i32 %27, 0
  br i1 %tobool25.not, label %if.end24.if.end30_crit_edge, label %if.then26

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map, align 4
  %call29 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 124, i32 noundef %27) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end24.if.end30_crit_edge
  %30 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map, align 4
  %tx_fifo_depth.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 29
  %32 = ptrtoint ptr %tx_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_fifo_depth.i, align 4
  %div9.i = lshr i32 %33, 1
  %call.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 60, i32 noundef %div9.i) #8
  %34 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 56, i32 noundef 0) #8
  %36 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map, align 4
  %master_cfg.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 27
  %38 = ptrtoint ptr %master_cfg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %master_cfg.i, align 4
  %call4.i = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 0, i32 noundef %39) #8
  tail call void @i2c_dw_release_lock(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_disable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_disable_int(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_init_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_dw_set_timings_master(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %comp_param1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_param1) #8
  %0 = ptrtoint ptr %comp_param1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %comp_param1, align 4, !annotation !107
  %timings = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 32
  %call = tail call i32 @i2c_dw_acquire_lock(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %map = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 244, ptr noundef nonnull %comp_param1) #8
  call void @i2c_dw_release_lock(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sda_fall_ns = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 32, i32 4
  %3 = ptrtoint ptr %sda_fall_ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sda_fall_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  %. = select i1 %tobool5.not, i32 300, i32 %4
  %scl_fall_ns = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 32, i32 2
  %5 = ptrtoint ptr %scl_fall_ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scl_fall_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  %cond10 = select i1 %tobool6.not, i32 300, i32 %6
  %ss_hcnt = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 34
  %7 = ptrtoint ptr %ss_hcnt to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ss_hcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool11.not = icmp eq i16 %8, 0
  br i1 %tobool11.not, label %if.end4.if.then13_crit_edge, label %lor.lhs.false

if.end4.if.then13_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end4
  %ss_lcnt = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 35
  %9 = ptrtoint ptr %ss_lcnt to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ss_lcnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool12.not = icmp eq i16 %10, 0
  br i1 %tobool12.not, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end4.if.then13_crit_edge
  %call14 = call i32 @i2c_dw_clk_rate(ptr noundef %dev) #8
  %call15 = call i32 @i2c_dw_scl_hcnt(i32 noundef %call14, i32 noundef 4000, i32 noundef %., i32 noundef 0, i32 noundef 0) #8
  %conv = trunc i32 %call15 to i16
  %11 = ptrtoint ptr %ss_hcnt to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %ss_hcnt, align 4
  %call17 = call i32 @i2c_dw_scl_lcnt(i32 noundef %call14, i32 noundef 4700, i32 noundef %cond10, i32 noundef 0) #8
  %conv18 = trunc i32 %call17 to i16
  %ss_lcnt19 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 35
  %12 = ptrtoint ptr %ss_lcnt19 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv18, ptr %ss_lcnt19, align 2
  br label %do.body

do.body:                                          ; preds = %if.then13, %lor.lhs.false.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dw_set_timings_master.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dw_set_timings_master, %do.end)) #8
          to label %if.then26 [label %do.end], !srcloc !108

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %15 = ptrtoint ptr %ss_hcnt to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ss_hcnt, align 4
  %conv29 = zext i16 %16 to i32
  %ss_lcnt30 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 35
  %17 = ptrtoint ptr %ss_lcnt30 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ss_lcnt30, align 2
  %conv31 = zext i16 %18 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dw_set_timings_master.__UNIQUE_ID_ddebug289, ptr noundef %14, ptr noundef nonnull @.str.13, i32 noundef %conv29, i32 noundef %conv31) #8
  br label %do.end

do.end:                                           ; preds = %if.then26, %do.body
  %19 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %20)
  %cmp = icmp eq i32 %20, 1000000
  br i1 %cmp, label %if.then34, label %do.end.if.end50_crit_edge

do.end.if.end50_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then34:                                        ; preds = %do.end
  %fp_hcnt = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 38
  %21 = ptrtoint ptr %fp_hcnt to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fp_hcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool36.not = icmp eq i16 %22, 0
  br i1 %tobool36.not, label %if.then34.if.else_crit_edge, label %land.lhs.true

if.then34.if.else_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then34
  %fp_lcnt = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 39
  %23 = ptrtoint ptr %fp_lcnt to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fp_lcnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool38.not = icmp eq i16 %24, 0
  br i1 %tobool38.not, label %land.lhs.true.if.else_crit_edge, label %if.then39

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %fs_hcnt = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 36
  %25 = ptrtoint ptr %fs_hcnt to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %22, ptr %fs_hcnt, align 8
  br label %if.end50.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then34.if.else_crit_edge
  %call42 = call i32 @i2c_dw_clk_rate(ptr noundef %dev) #8
  %call43 = call i32 @i2c_dw_scl_hcnt(i32 noundef %call42, i32 noundef 260, i32 noundef %., i32 noundef 0, i32 noundef 0) #8
  %conv44 = trunc i32 %call43 to i16
  %fs_hcnt45 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 36
  %26 = ptrtoint ptr %fs_hcnt45 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv44, ptr %fs_hcnt45, align 8
  %call46 = call i32 @i2c_dw_scl_lcnt(i32 noundef %call42, i32 noundef 500, i32 noundef %cond10, i32 noundef 0) #8
  %conv47 = trunc i32 %call46 to i16
  br label %if.end50.sink.split

if.end50.sink.split:                              ; preds = %if.else, %if.then39
  %.sink = phi i16 [ %24, %if.then39 ], [ %conv47, %if.else ]
  %fs_lcnt = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 37
  %27 = ptrtoint ptr %fs_lcnt to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %.sink, ptr %fs_lcnt, align 2
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %do.end.if.end50_crit_edge
  %fp_str.0 = phi ptr [ @.str.10, %do.end.if.end50_crit_edge ], [ @.str.14, %if.end50.sink.split ]
  %fs_hcnt51 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 36
  %28 = ptrtoint ptr %fs_hcnt51 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %fs_hcnt51, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool52.not = icmp eq i16 %29, 0
  br i1 %tobool52.not, label %if.end50.if.then56_crit_edge, label %lor.lhs.false53

if.end50.if.then56_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

lor.lhs.false53:                                  ; preds = %if.end50
  %fs_lcnt54 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 37
  %30 = ptrtoint ptr %fs_lcnt54 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %fs_lcnt54, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool55.not = icmp eq i16 %31, 0
  br i1 %tobool55.not, label %lor.lhs.false53.if.then56_crit_edge, label %lor.lhs.false53.do.body65_crit_edge

lor.lhs.false53.do.body65_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body65

lor.lhs.false53.if.then56_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

if.then56:                                        ; preds = %lor.lhs.false53.if.then56_crit_edge, %if.end50.if.then56_crit_edge
  %call57 = call i32 @i2c_dw_clk_rate(ptr noundef %dev) #8
  %call58 = call i32 @i2c_dw_scl_hcnt(i32 noundef %call57, i32 noundef 600, i32 noundef %., i32 noundef 0, i32 noundef 0) #8
  %conv59 = trunc i32 %call58 to i16
  %32 = ptrtoint ptr %fs_hcnt51 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv59, ptr %fs_hcnt51, align 8
  %call61 = call i32 @i2c_dw_scl_lcnt(i32 noundef %call57, i32 noundef 1300, i32 noundef %cond10, i32 noundef 0) #8
  %conv62 = trunc i32 %call61 to i16
  %fs_lcnt63 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 37
  %33 = ptrtoint ptr %fs_lcnt63 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv62, ptr %fs_lcnt63, align 2
  br label %do.body65

do.body65:                                        ; preds = %if.then56, %lor.lhs.false53.do.body65_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dw_set_timings_master.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dw_set_timings_master, %do.end87)) #8
          to label %if.then79 [label %do.end87], !srcloc !108

if.then79:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %36 = ptrtoint ptr %fs_hcnt51 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %fs_hcnt51, align 8
  %conv82 = zext i16 %37 to i32
  %fs_lcnt83 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 37
  %38 = ptrtoint ptr %fs_lcnt83 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %fs_lcnt83, align 2
  %conv84 = zext i16 %39 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dw_set_timings_master.__UNIQUE_ID_ddebug290, ptr noundef %35, ptr noundef nonnull @.str.15, ptr noundef nonnull %fp_str.0, i32 noundef %conv82, i32 noundef %conv84) #8
  br label %do.end87

do.end87:                                         ; preds = %if.then79, %do.body65
  %master_cfg = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 27
  %40 = ptrtoint ptr %master_cfg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %master_cfg, align 4
  %and = and i32 %41, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and)
  %cmp88 = icmp eq i32 %and, 6
  br i1 %cmp88, label %if.then90, label %do.end87.if.end142_crit_edge

do.end87.if.end142_crit_edge:                     ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142

if.then90:                                        ; preds = %do.end87
  %42 = ptrtoint ptr %comp_param1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %comp_param1, align 4
  %and91 = and i32 %43, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and91)
  %cmp92.not = icmp eq i32 %and91, 12
  br i1 %cmp92.not, label %if.else103, label %do.end97

do.end97:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.16) #11
  %46 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 400000, ptr %timings, align 4
  %47 = ptrtoint ptr %master_cfg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %master_cfg, align 4
  %and101 = and i32 %48, -7
  %or = or i32 %and101, 4
  store i32 %or, ptr %master_cfg, align 4
  %hs_hcnt = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 40
  %49 = ptrtoint ptr %hs_hcnt to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %hs_hcnt, align 8
  br label %do.body119.sink.split

if.else103:                                       ; preds = %if.then90
  %hs_hcnt104 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 40
  %50 = ptrtoint ptr %hs_hcnt104 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %hs_hcnt104, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool105.not = icmp eq i16 %51, 0
  br i1 %tobool105.not, label %if.else103.if.then109_crit_edge, label %lor.lhs.false106

if.else103.if.then109_crit_edge:                  ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then109

lor.lhs.false106:                                 ; preds = %if.else103
  %hs_lcnt107 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 41
  %52 = ptrtoint ptr %hs_lcnt107 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %hs_lcnt107, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool108.not = icmp eq i16 %53, 0
  br i1 %tobool108.not, label %lor.lhs.false106.if.then109_crit_edge, label %lor.lhs.false106.do.body119_crit_edge

lor.lhs.false106.do.body119_crit_edge:            ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body119

lor.lhs.false106.if.then109_crit_edge:            ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then109

if.then109:                                       ; preds = %lor.lhs.false106.if.then109_crit_edge, %if.else103.if.then109_crit_edge
  %call110 = call i32 @i2c_dw_clk_rate(ptr noundef %dev) #8
  %call111 = call i32 @i2c_dw_scl_hcnt(i32 noundef %call110, i32 noundef 160, i32 noundef %., i32 noundef 0, i32 noundef 0) #8
  %conv112 = trunc i32 %call111 to i16
  %54 = ptrtoint ptr %hs_hcnt104 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv112, ptr %hs_hcnt104, align 8
  %call114 = call i32 @i2c_dw_scl_lcnt(i32 noundef %call110, i32 noundef 320, i32 noundef %cond10, i32 noundef 0) #8
  %conv115 = trunc i32 %call114 to i16
  br label %do.body119.sink.split

do.body119.sink.split:                            ; preds = %if.then109, %do.end97
  %.sink253 = phi i16 [ 0, %do.end97 ], [ %conv115, %if.then109 ]
  %hs_lcnt = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 41
  %55 = ptrtoint ptr %hs_lcnt to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %.sink253, ptr %hs_lcnt, align 2
  br label %do.body119

do.body119:                                       ; preds = %do.body119.sink.split, %lor.lhs.false106.do.body119_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dw_set_timings_master.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dw_set_timings_master, %if.end142)) #8
          to label %if.then133 [label %if.end142], !srcloc !108

if.then133:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 8
  %hs_hcnt135 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 40
  %58 = ptrtoint ptr %hs_hcnt135 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %hs_hcnt135, align 8
  %conv136 = zext i16 %59 to i32
  %hs_lcnt137 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 41
  %60 = ptrtoint ptr %hs_lcnt137 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %hs_lcnt137, align 2
  %conv138 = zext i16 %61 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dw_set_timings_master.__UNIQUE_ID_ddebug291, ptr noundef %57, ptr noundef nonnull @.str.17, i32 noundef %conv136, i32 noundef %conv138) #8
  br label %if.end142

if.end142:                                        ; preds = %if.then133, %do.body119, %do.end87.if.end142_crit_edge
  %call143 = call i32 @i2c_dw_set_sda_hold(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %do.body147, label %if.end142.cleanup_crit_edge

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body147:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dw_set_timings_master.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dw_set_timings_master, %cleanup)) #8
          to label %if.then161 [label %cleanup], !srcloc !108

if.then161:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 8
  %64 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %timings, align 4
  %call164 = call ptr @i2c_freq_mode_string(i32 noundef %65) #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dw_set_timings_master.__UNIQUE_ID_ddebug292, ptr noundef %63, ptr noundef nonnull @.str.18, ptr noundef %call164) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then161, %do.body147, %if.end142.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call143, %if.end142.cleanup_crit_edge ], [ 0, %if.then161 ], [ 0, %do.body147 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_param1) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_set_fifo_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amd_i2c_adap_quirk(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !106
  %call = tail call i32 @i2c_add_numbered_adapter(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.28, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %usage_count.i9 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 13
  %call.i.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i9, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %usage_count.i9, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i9, ptr %usage_count.i9, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i9) #8, !srcloc !110
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end.pm_runtime_put_noidle.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !111
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end.pm_runtime_put_noidle.exit_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_dw_isr(i32 noundef %this_irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %flr.i.i = alloca i32, align 4
  %rx_valid.i.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %stat.i.i = alloca i32, align 4
  %dummy.i.i = alloca i32, align 4
  %stat.i = alloca i32, align 4
  %stat = alloca i32, align 4
  %enabled = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #8
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stat, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled) #8
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %enabled, align 4, !annotation !107
  %map = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 108, ptr noundef nonnull %enabled) #8
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 52, ptr noundef nonnull %stat) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dw_isr.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dw_isr, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !108

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 8
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enabled, align 4
  %10 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stat, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dw_isr.__UNIQUE_ID_ddebug296, ptr noundef %7, ptr noundef nonnull @.str.31, i32 noundef %9, i32 noundef %11) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %14 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stat, align 4
  %and = and i32 %15, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat.i) #8
  %16 = ptrtoint ptr %stat.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %stat.i, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat.i.i) #8
  %17 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %stat.i.i, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #8
  %18 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %dummy.i.i, align 4, !annotation !107
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %20, i32 noundef 44, ptr noundef nonnull %stat.i.i) #8
  %21 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stat.i.i, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end11.if.end.i.i_crit_edge, label %if.then.i.i

if.end11.if.end.i.i_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map, align 4
  %call2.i.i = call i32 @regmap_read(ptr noundef %24, i32 noundef 68, ptr noundef nonnull %dummy.i.i) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end11.if.end.i.i_crit_edge
  %25 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stat.i.i, align 4
  %and3.i.i = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map, align 4
  %call7.i.i = call i32 @regmap_read(ptr noundef %28, i32 noundef 72, ptr noundef nonnull %dummy.i.i) #8
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %29 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stat.i.i, align 4
  %and9.i.i = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end8.i.i.if.end14.i.i_crit_edge, label %if.then11.i.i

if.end8.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

if.then11.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 4
  %call13.i.i = call i32 @regmap_read(ptr noundef %32, i32 noundef 76, ptr noundef nonnull %dummy.i.i) #8
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then11.i.i, %if.end8.i.i.if.end14.i.i_crit_edge
  %33 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stat.i.i, align 4
  %and15.i.i = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.if.end20.i.i_crit_edge, label %if.then17.i.i

if.end14.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 4
  %call19.i.i = call i32 @regmap_read(ptr noundef %36, i32 noundef 80, ptr noundef nonnull %dummy.i.i) #8
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then17.i.i, %if.end14.i.i.if.end20.i.i_crit_edge
  %37 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stat.i.i, align 4
  %and21.i.i = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end20.i.i.if.end28.i.i_crit_edge, label %if.then23.i.i

if.end20.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i.i

if.then23.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map, align 4
  %abort_source.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 22
  %call25.i.i = call i32 @regmap_read(ptr noundef %40, i32 noundef 128, ptr noundef %abort_source.i.i) #8
  %41 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map, align 4
  %call27.i.i = call i32 @regmap_read(ptr noundef %42, i32 noundef 84, ptr noundef nonnull %dummy.i.i) #8
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then23.i.i, %if.end20.i.i.if.end28.i.i_crit_edge
  %43 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stat.i.i, align 4
  %and29.i.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.end28.i.i.if.end34.i.i_crit_edge, label %if.then31.i.i

if.end28.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i.i

if.then31.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map, align 4
  %call33.i.i = call i32 @regmap_read(ptr noundef %46, i32 noundef 88, ptr noundef nonnull %dummy.i.i) #8
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then31.i.i, %if.end28.i.i.if.end34.i.i_crit_edge
  %47 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stat.i.i, align 4
  %and35.i.i = and i32 %48, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i)
  %tobool36.not.i.i = icmp eq i32 %and35.i.i, 0
  br i1 %tobool36.not.i.i, label %if.end34.i.i.if.end40.i.i_crit_edge, label %if.then37.i.i

if.end34.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i.i

if.then37.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map, align 4
  %call39.i.i = call i32 @regmap_read(ptr noundef %50, i32 noundef 92, ptr noundef nonnull %dummy.i.i) #8
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then37.i.i, %if.end34.i.i.if.end40.i.i_crit_edge
  %51 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %stat.i.i, align 4
  %and41.i.i = and i32 %52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i.i)
  %tobool42.not.i.i = icmp eq i32 %and41.i.i, 0
  br i1 %tobool42.not.i.i, label %if.end40.i.i.if.end48.i.i_crit_edge, label %land.lhs.true.i.i

if.end40.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i.i

land.lhs.true.i.i:                                ; preds = %if.end40.i.i
  %rx_outstanding.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 31
  %53 = ptrtoint ptr %rx_outstanding.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_outstanding.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i.i = icmp ne i32 %54, 0
  %and43.i.i = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i)
  %tobool44.not.i.i = icmp eq i32 %and43.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %tobool44.not.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.if.end48.i.i_crit_edge, label %if.then45.i.i

land.lhs.true.i.i.if.end48.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %map, align 4
  %call47.i.i = call i32 @regmap_read(ptr noundef %56, i32 noundef 96, ptr noundef nonnull %dummy.i.i) #8
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %land.lhs.true.i.i.if.end48.i.i_crit_edge, %if.end40.i.i.if.end48.i.i_crit_edge
  %57 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %stat.i.i, align 4
  %and49.i.i = and i32 %58, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i.i)
  %tobool50.not.i.i = icmp eq i32 %and49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end48.i.i.if.end54.i.i_crit_edge, label %if.then51.i.i

if.end48.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i.i

if.then51.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map, align 4
  %call53.i.i = call i32 @regmap_read(ptr noundef %60, i32 noundef 100, ptr noundef nonnull %dummy.i.i) #8
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then51.i.i, %if.end48.i.i.if.end54.i.i_crit_edge
  %61 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %stat.i.i, align 4
  %and55.i.i = and i32 %62, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i)
  %tobool56.not.i.i = icmp eq i32 %and55.i.i, 0
  br i1 %tobool56.not.i.i, label %if.end54.i.i.i2c_dw_read_clear_intrbits.exit.i_crit_edge, label %if.then57.i.i

if.end54.i.i.i2c_dw_read_clear_intrbits.exit.i_crit_edge: ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_dw_read_clear_intrbits.exit.i

if.then57.i.i:                                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map, align 4
  %call59.i.i = call i32 @regmap_read(ptr noundef %64, i32 noundef 104, ptr noundef nonnull %dummy.i.i) #8
  br label %i2c_dw_read_clear_intrbits.exit.i

i2c_dw_read_clear_intrbits.exit.i:                ; preds = %if.then57.i.i, %if.end54.i.i.i2c_dw_read_clear_intrbits.exit.i_crit_edge
  %65 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %stat.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat.i.i) #8
  %67 = ptrtoint ptr %stat.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %stat.i, align 4
  %and.i = and i32 %66, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %i2c_dw_read_clear_intrbits.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_err.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 11
  %68 = ptrtoint ptr %cmd_err.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cmd_err.i, align 8
  %or.i = or i32 %69, 1
  store i32 %or.i, ptr %cmd_err.i, align 8
  %status.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 21
  %70 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %status.i, align 8
  %rx_outstanding.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 31
  %71 = ptrtoint ptr %rx_outstanding.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %rx_outstanding.i, align 4
  %72 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %map, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %73, i32 noundef 48, i32 noundef 0) #8
  br label %tx_aborted.i

if.end.i:                                         ; preds = %i2c_dw_read_clear_intrbits.exit.i
  %and2.i = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  %msgs1.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 12
  %74 = ptrtoint ptr %msgs1.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %msgs1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_valid.i.i) #8
  %76 = ptrtoint ptr %rx_valid.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %rx_valid.i.i, align 4, !annotation !107
  %msg_read_idx.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 17
  %msgs_num.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 13
  %77 = ptrtoint ptr %msg_read_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_read_idx.i.i, align 8
  %79 = ptrtoint ptr %msgs_num.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %msgs_num.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp93.i.i = icmp slt i32 %78, %80
  br i1 %cmp93.i.i, label %for.body.lr.ph.i.i, label %if.then4.i.i2c_dw_read.exit.i_crit_edge

if.then4.i.i2c_dw_read.exit.i_crit_edge:          ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_dw_read.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then4.i
  %status.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 21
  %rx_buf_len.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 18
  %rx_buf.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 19
  %rx_outstanding.i.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 31
  %tx_buf_len.i.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 15
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc55.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %81 = phi i32 [ %78, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc55.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %82 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !107
  %flags.i.i = getelementptr %struct.i2c_msg, ptr %75, i32 %81, i32 1
  %83 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %flags.i.i, align 2
  %85 = and i16 %84, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool.not.i2.i = icmp eq i16 %85, 0
  br i1 %tobool.not.i2.i, label %for.body.i.i.for.inc55.i.i_crit_edge, label %if.end.i5.i

for.body.i.i.for.inc55.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc55.i.i

if.end.i5.i:                                      ; preds = %for.body.i.i
  %86 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %status.i.i, align 8
  %and3.i3.i = and i32 %87, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i3.i)
  %tobool4.not.i4.i = icmp eq i32 %and3.i3.i, 0
  br i1 %tobool4.not.i4.i, label %if.then5.i6.i, label %if.else.i.i

if.then5.i6.i:                                    ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #10
  %len8.i.i = getelementptr %struct.i2c_msg, ptr %75, i32 %81, i32 2
  %88 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %len8.i.i, align 4
  %conv9.i.i = zext i16 %89 to i32
  %buf12.i.i = getelementptr %struct.i2c_msg, ptr %75, i32 %81, i32 3
  br label %if.end13.i.i

if.else.i.i:                                      ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rx_buf_len.i.i, align 4
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.else.i.i, %if.then5.i6.i
  %len.0.i.i = phi i32 [ %91, %if.else.i.i ], [ %conv9.i.i, %if.then5.i6.i ]
  %buf.0.in.i.i = phi ptr [ %rx_buf.i.i, %if.else.i.i ], [ %buf12.i.i, %if.then5.i6.i ]
  %92 = ptrtoint ptr %buf.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %buf.0.i.i = load ptr, ptr %buf.0.in.i.i, align 4
  %93 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %map, align 4
  %call.i7.i = call i32 @regmap_read(ptr noundef %94, i32 noundef 120, ptr noundef nonnull %rx_valid.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i.i)
  %cmp15.not90.i.i = icmp eq i32 %len.0.i.i, 0
  br i1 %cmp15.not90.i.i, label %if.end13.i.i.if.else49.i.i_crit_edge, label %land.rhs.preheader.i.i

if.end13.i.i.if.else49.i.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else49.i.i

land.rhs.preheader.i.i:                           ; preds = %if.end13.i.i
  %95 = ptrtoint ptr %rx_valid.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pr.i.i = load i32, ptr %rx_valid.i.i, align 4
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end39.i.i.land.rhs.i.i_crit_edge, %land.rhs.preheader.i.i
  %96 = phi i32 [ %.pr.i.i, %land.rhs.preheader.i.i ], [ %dec42.i.i, %if.end39.i.i.land.rhs.i.i_crit_edge ]
  %buf.192.i.i = phi ptr [ %buf.0.i.i, %land.rhs.preheader.i.i ], [ %incdec.ptr.i.i, %if.end39.i.i.land.rhs.i.i_crit_edge ]
  %len.191.i.i = phi i32 [ %len.0.i.i, %land.rhs.preheader.i.i ], [ %dec41.i.i, %if.end39.i.i.land.rhs.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp17.not.i.i = icmp eq i32 %96, 0
  br i1 %cmp17.not.i.i, label %cleanup.i.i, label %for.body19.i.i

for.body19.i.i:                                   ; preds = %land.rhs.i.i
  %97 = ptrtoint ptr %msg_read_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %msg_read_idx.i.i, align 8
  %flags23.i.i = getelementptr %struct.i2c_msg, ptr %75, i32 %98, i32 1
  %99 = ptrtoint ptr %flags23.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %flags23.i.i, align 2
  %101 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %map, align 4
  %call26.i.i = call i32 @regmap_read(ptr noundef %102, i32 noundef 16, ptr noundef nonnull %tmp.i.i) #8
  %103 = and i16 %100, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool28.not.i.i = icmp eq i16 %103, 0
  br i1 %tobool28.not.i.i, label %for.body19.i.i.if.end39.i.i_crit_edge, label %land.lhs.true.i10.i

for.body19.i.i.if.end39.i.i_crit_edge:            ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i.i

land.lhs.true.i10.i:                              ; preds = %for.body19.i.i
  %104 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tmp.i.i, align 4
  %and29.i8.i = and i32 %105, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and29.i8.i)
  %cmp30.i.i = icmp ugt i32 %and29.i8.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp33.not.i.i = icmp eq i32 %105, 0
  %or.cond.i9.i = or i1 %cmp33.not.i.i, %cmp30.i.i
  br i1 %or.cond.i9.i, label %land.lhs.true.i10.i.if.end39.i.i_crit_edge, label %if.then35.i.i

land.lhs.true.i10.i.if.end39.i.i_crit_edge:       ; preds = %land.lhs.true.i10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i.i

if.then35.i.i:                                    ; preds = %land.lhs.true.i10.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv36.i.i = trunc i32 %105 to i8
  %106 = ptrtoint ptr %msgs1.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %msgs1.i.i, align 4
  %108 = ptrtoint ptr %msg_read_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %msg_read_idx.i.i, align 8
  %flags2.i.i.i = getelementptr %struct.i2c_msg, ptr %107, i32 %109, i32 1
  %110 = ptrtoint ptr %flags2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %flags2.i.i.i, align 2
  %112 = and i16 %111, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool.not.i.i.i = icmp eq i16 %112, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i8 1, i8 2
  %add.i.i.i = add i8 %cond.i.i.i, %conv36.i.i
  %conv5.i.i.i = zext i8 %add.i.i.i to i32
  %113 = ptrtoint ptr %rx_outstanding.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rx_outstanding.i.i.i, align 4
  %conv8.i.i.i = and i32 %114, 255
  %115 = call i32 @llvm.usub.sat.i32(i32 %conv5.i.i.i, i32 %conv8.i.i.i) #8
  %116 = ptrtoint ptr %tx_buf_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %tx_buf_len.i.i.i, align 8
  %conv13.i.i.i = zext i8 %add.i.i.i to i16
  %len16.i.i.i = getelementptr %struct.i2c_msg, ptr %107, i32 %109, i32 2
  %117 = ptrtoint ptr %len16.i.i.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv13.i.i.i, ptr %len16.i.i.i, align 4
  %118 = ptrtoint ptr %msg_read_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %msg_read_idx.i.i, align 8
  %flags19.i.i.i = getelementptr %struct.i2c_msg, ptr %107, i32 %119, i32 1
  %120 = ptrtoint ptr %flags19.i.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %flags19.i.i.i, align 2
  %122 = and i16 %121, -1025
  store i16 %122, ptr %flags19.i.i.i, align 2
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then35.i.i, %land.lhs.true.i10.i.if.end39.i.i_crit_edge, %for.body19.i.i.if.end39.i.i_crit_edge
  %len.2.i.i = phi i32 [ %conv5.i.i.i, %if.then35.i.i ], [ %len.191.i.i, %land.lhs.true.i10.i.if.end39.i.i_crit_edge ], [ %len.191.i.i, %for.body19.i.i.if.end39.i.i_crit_edge ]
  %123 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %tmp.i.i, align 4
  %conv40.i.i = trunc i32 %124 to i8
  %incdec.ptr.i.i = getelementptr i8, ptr %buf.192.i.i, i32 1
  %125 = ptrtoint ptr %buf.192.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv40.i.i, ptr %buf.192.i.i, align 1
  %126 = ptrtoint ptr %rx_outstanding.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rx_outstanding.i.i.i, align 4
  %dec.i.i = add i32 %127, -1
  store i32 %dec.i.i, ptr %rx_outstanding.i.i.i, align 4
  %dec41.i.i = add i32 %len.2.i.i, -1
  %128 = ptrtoint ptr %rx_valid.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rx_valid.i.i, align 4
  %dec42.i.i = add i32 %129, -1
  store i32 %dec42.i.i, ptr %rx_valid.i.i, align 4
  %cmp15.not.i.i = icmp eq i32 %dec41.i.i, 0
  br i1 %cmp15.not.i.i, label %if.end39.i.i.if.else49.i.i_crit_edge, label %if.end39.i.i.land.rhs.i.i_crit_edge

if.end39.i.i.land.rhs.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i

if.end39.i.i.if.else49.i.i_crit_edge:             ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else49.i.i

if.else49.i.i:                                    ; preds = %if.end39.i.i.if.else49.i.i_crit_edge, %if.end13.i.i.if.else49.i.i_crit_edge
  %130 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %status.i.i, align 8
  %and51.i.i = and i32 %131, -3
  store i32 %and51.i.i, ptr %status.i.i, align 8
  br label %for.inc55.i.i

cleanup.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %132 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %status.i.i, align 8
  %or.i.i = or i32 %133, 2
  store i32 %or.i.i, ptr %status.i.i, align 8
  %134 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %len.191.i.i, ptr %rx_buf_len.i.i, align 4
  %135 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %buf.192.i.i, ptr %rx_buf.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  br label %i2c_dw_read.exit.i

for.inc55.i.i:                                    ; preds = %if.else49.i.i, %for.body.i.i.for.inc55.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %136 = ptrtoint ptr %msg_read_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %msg_read_idx.i.i, align 8
  %inc.i.i = add i32 %137, 1
  store i32 %inc.i.i, ptr %msg_read_idx.i.i, align 8
  %138 = ptrtoint ptr %msgs_num.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %msgs_num.i.i, align 8
  %cmp.i11.i = icmp slt i32 %inc.i.i, %139
  br i1 %cmp.i11.i, label %for.inc55.i.i.for.body.i.i_crit_edge, label %for.inc55.i.i.i2c_dw_read.exit.i_crit_edge

for.inc55.i.i.i2c_dw_read.exit.i_crit_edge:       ; preds = %for.inc55.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_dw_read.exit.i

for.inc55.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc55.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

i2c_dw_read.exit.i:                               ; preds = %for.inc55.i.i.i2c_dw_read.exit.i_crit_edge, %cleanup.i.i, %if.then4.i.i2c_dw_read.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_valid.i.i) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %i2c_dw_read.exit.i, %if.end.i.if.end5.i_crit_edge
  %140 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %stat.i, align 4
  %and6.i = and i32 %141, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.tx_aborted.i_crit_edge, label %if.then8.i

if.end5.i.tx_aborted.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tx_aborted.i

if.then8.i:                                       ; preds = %if.end5.i
  %msgs1.i12.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 12
  %142 = ptrtoint ptr %msgs1.i12.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %msgs1.i12.i, align 4
  %msg_write_idx.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 14
  %144 = ptrtoint ptr %msg_write_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %msg_write_idx.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.i2c_msg, ptr %143, i32 %145
  %146 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %arrayidx.i.i, align 4
  %tx_buf_len.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 15
  %148 = ptrtoint ptr %tx_buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %tx_buf_len.i.i, align 8
  %tx_buf.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 16
  %150 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %tx_buf.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flr.i.i) #8
  %152 = ptrtoint ptr %flr.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -1, ptr %flr.i.i, align 4, !annotation !107
  %msgs_num.i13.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 13
  %153 = ptrtoint ptr %msgs_num.i13.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %msgs_num.i13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %154)
  %cmp222.i.i = icmp slt i32 %145, %154
  br i1 %cmp222.i.i, label %for.body.lr.ph.i17.i, label %if.then8.i.i2c_dw_xfer_msg.exit.i_crit_edge

if.then8.i.i2c_dw_xfer_msg.exit.i_crit_edge:      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_dw_xfer_msg.exit.i

for.body.lr.ph.i17.i:                             ; preds = %if.then8.i
  %status.i14.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 21
  %master_cfg.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 27
  %tx_fifo_depth.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 29
  %rx_fifo_depth.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 30
  %rx_outstanding.i16.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 31
  br label %for.body.i18.i

for.body.i18.i:                                   ; preds = %for.inc.i.i.for.body.i18.i_crit_edge, %for.body.lr.ph.i17.i
  %155 = phi i32 [ %145, %for.body.lr.ph.i17.i ], [ %inc98.i.i, %for.inc.i.i.for.body.i18.i_crit_edge ]
  %need_restart.0.off0225.i.i = phi i1 [ false, %for.body.lr.ph.i17.i ], [ %need_restart.2.off0.lcssa.i.i, %for.inc.i.i.for.body.i18.i_crit_edge ]
  %buf.0224.i.i = phi ptr [ %151, %for.body.lr.ph.i17.i ], [ %buf.2.lcssa.i.i, %for.inc.i.i.for.body.i18.i_crit_edge ]
  %buf_len.0223.i.i = phi i32 [ %149, %for.body.lr.ph.i17.i ], [ 0, %for.inc.i.i.for.body.i18.i_crit_edge ]
  %arrayidx6.i.i = getelementptr %struct.i2c_msg, ptr %143, i32 %155
  %flags7.i.i = getelementptr %struct.i2c_msg, ptr %143, i32 %155, i32 1
  %156 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %flags7.i.i, align 2
  %conv8.i.i = zext i16 %157 to i32
  %158 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %159, i16 %147)
  %cmp13.not.i.i = icmp eq i16 %159, %147
  br i1 %cmp13.not.i.i, label %if.end.i21.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #10
  %160 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev_id, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #11
  %msg_err.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 20
  %162 = ptrtoint ptr %msg_err.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -22, ptr %msg_err.i.i, align 4
  br label %i2c_dw_xfer_msg.exit.i

if.end.i21.i:                                     ; preds = %for.body.i18.i
  %163 = ptrtoint ptr %status.i14.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %status.i14.i, align 8
  %and.i19.i = and i32 %164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i)
  %tobool.not.i20.i = icmp eq i32 %and.i19.i, 0
  br i1 %tobool.not.i20.i, label %if.then16.i.i, label %if.end.i21.i.if.end30.i.i_crit_edge

if.end.i21.i.if.end30.i.i_crit_edge:              ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i.i

if.then16.i.i:                                    ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  %buf19.i.i = getelementptr %struct.i2c_msg, ptr %143, i32 %155, i32 3
  %165 = ptrtoint ptr %buf19.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %buf19.i.i, align 4
  %len.i.i = getelementptr %struct.i2c_msg, ptr %143, i32 %155, i32 2
  %167 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %len.i.i, align 4
  %conv22.i.i = zext i16 %168 to i32
  %169 = ptrtoint ptr %master_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %master_cfg.i.i, align 4
  %and23.i.i = and i32 %170, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp ne i32 %and23.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp26.i.i = icmp sgt i32 %155, 0
  %or.cond.i22.i = select i1 %tobool24.not.i.i, i1 %cmp26.i.i, i1 false
  %spec.select184.i.i = select i1 %or.cond.i22.i, i1 true, i1 %need_restart.0.off0225.i.i
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then16.i.i, %if.end.i21.i.if.end30.i.i_crit_edge
  %buf_len.1.i.i = phi i32 [ %buf_len.0223.i.i, %if.end.i21.i.if.end30.i.i_crit_edge ], [ %conv22.i.i, %if.then16.i.i ]
  %buf.1.i.i = phi ptr [ %buf.0224.i.i, %if.end.i21.i.if.end30.i.i_crit_edge ], [ %166, %if.then16.i.i ]
  %need_restart.1.off0.i.i = phi i1 [ %need_restart.0.off0225.i.i, %if.end.i21.i.if.end30.i.i_crit_edge ], [ %spec.select184.i.i, %if.then16.i.i ]
  %171 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %map, align 4
  %call.i23.i = call i32 @regmap_read(ptr noundef %172, i32 noundef 116, ptr noundef nonnull %flr.i.i) #8
  %173 = ptrtoint ptr %tx_fifo_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %tx_fifo_depth.i.i, align 4
  %175 = ptrtoint ptr %flr.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %flr.i.i, align 4
  %177 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %map, align 4
  %call32.i.i = call i32 @regmap_read(ptr noundef %178, i32 noundef 120, ptr noundef nonnull %flr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len.1.i.i)
  %cmp34.not214.i.i = icmp eq i32 %buf_len.1.i.i, 0
  br i1 %cmp34.not214.i.i, label %if.end30.while.end_crit_edge.i.i, label %land.lhs.true36.lr.ph.i.i

if.end30.while.end_crit_edge.i.i:                 ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %.pre.i.i = and i32 %conv8.i.i, 1024
  br label %while.end.i.i

land.lhs.true36.lr.ph.i.i:                        ; preds = %if.end30.i.i
  %179 = ptrtoint ptr %rx_fifo_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %rx_fifo_depth.i.i, align 8
  %181 = ptrtoint ptr %flr.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %flr.i.i, align 4
  %sub33.i.i = sub i32 %180, %182
  %sub.i.i = sub i32 %174, %176
  %and50.i.i = and i32 %conv8.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i.i)
  %tobool51.not.i.i = icmp eq i32 %and50.i.i, 0
  br label %land.lhs.true36.i.i

land.lhs.true36.i.i:                              ; preds = %cleanup.i28.i.land.lhs.true36.i.i_crit_edge, %land.lhs.true36.lr.ph.i.i
  %need_restart.2.off0220.i.i = phi i1 [ %need_restart.1.off0.i.i, %land.lhs.true36.lr.ph.i.i ], [ false, %cleanup.i28.i.land.lhs.true36.i.i_crit_edge ]
  %buf.2219.i.i = phi ptr [ %buf.1.i.i, %land.lhs.true36.lr.ph.i.i ], [ %buf.3.i.i, %cleanup.i28.i.land.lhs.true36.i.i_crit_edge ]
  %buf_len.2217.i.i = phi i32 [ %buf_len.1.i.i, %land.lhs.true36.lr.ph.i.i ], [ %dec80.i.i, %cleanup.i28.i.land.lhs.true36.i.i_crit_edge ]
  %rx_limit.0216.i.i = phi i32 [ %sub33.i.i, %land.lhs.true36.lr.ph.i.i ], [ %rx_limit.1.i.i, %cleanup.i28.i.land.lhs.true36.i.i_crit_edge ]
  %tx_limit.0215.i.i = phi i32 [ %sub.i.i, %land.lhs.true36.lr.ph.i.i ], [ %dec79.i.i, %cleanup.i28.i.land.lhs.true36.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_limit.0215.i.i)
  %cmp37.i.i = icmp sgt i32 %tx_limit.0215.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_limit.0216.i.i)
  %cmp39.i.i = icmp sgt i32 %rx_limit.0216.i.i, 0
  %or.cond179.i.i = select i1 %cmp37.i.i, i1 %cmp39.i.i, i1 false
  br i1 %or.cond179.i.i, label %while.body.i.i, label %land.lhs.true36.i.i.while.end.thread.i.i_crit_edge

land.lhs.true36.i.i.while.end.thread.i.i_crit_edge: ; preds = %land.lhs.true36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.thread.i.i

while.body.i.i:                                   ; preds = %land.lhs.true36.i.i
  %183 = ptrtoint ptr %msg_write_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %msg_write_idx.i.i, align 4
  %185 = ptrtoint ptr %msgs_num.i13.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %msgs_num.i13.i, align 8
  %sub43.i.i = add i32 %186, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %sub43.i.i)
  %cmp44.i.i = icmp eq i32 %184, %sub43.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %buf_len.2217.i.i)
  %cmp47.i.i = icmp eq i32 %buf_len.2217.i.i, 1
  %or.cond180.i.i = select i1 %cmp44.i.i, i1 %cmp47.i.i, i1 false
  %or.cond181.i.i = select i1 %or.cond180.i.i, i1 %tobool51.not.i.i, i1 false
  %cmd.0.i.i = select i1 %or.cond181.i.i, i32 512, i32 0
  %or56.i.i = or i32 %cmd.0.i.i, 1024
  %cmd.1.i.i = select i1 %need_restart.2.off0220.i.i, i32 %or56.i.i, i32 %cmd.0.i.i
  %flags60.i.i = getelementptr %struct.i2c_msg, ptr %143, i32 %184, i32 1
  %187 = ptrtoint ptr %flags60.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %flags60.i.i, align 2
  %189 = and i16 %188, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %189)
  %tobool63.not.i.i = icmp eq i16 %189, 0
  br i1 %tobool63.not.i.i, label %if.else.i27.i, label %if.then64.i.i

if.then64.i.i:                                    ; preds = %while.body.i.i
  %190 = ptrtoint ptr %rx_outstanding.i16.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %rx_outstanding.i16.i, align 4
  %192 = ptrtoint ptr %rx_fifo_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rx_fifo_depth.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %191, i32 %193)
  %cmp66.not.i.i = icmp ult i32 %191, %193
  br i1 %cmp66.not.i.i, label %if.end69.i.i, label %if.then64.i.i.while.end.thread.i.i_crit_edge

if.then64.i.i.while.end.thread.i.i_crit_edge:     ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.thread.i.i

if.end69.i.i:                                     ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %194 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %map, align 4
  %or71.i.i = or i32 %cmd.1.i.i, 256
  %call72.i.i = call i32 @regmap_write(ptr noundef %195, i32 noundef 16, i32 noundef %or71.i.i) #8
  %dec.i24.i = add nsw i32 %rx_limit.0216.i.i, -1
  %196 = ptrtoint ptr %rx_outstanding.i16.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %rx_outstanding.i16.i, align 4
  %inc.i25.i = add i32 %197, 1
  store i32 %inc.i25.i, ptr %rx_outstanding.i16.i, align 4
  br label %cleanup.i28.i

if.else.i27.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %198 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %map, align 4
  %incdec.ptr.i26.i = getelementptr i8, ptr %buf.2219.i.i, i32 1
  %200 = ptrtoint ptr %buf.2219.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %buf.2219.i.i, align 1
  %conv75.i.i = zext i8 %201 to i32
  %or76.i.i = or i32 %cmd.1.i.i, %conv75.i.i
  %call77.i.i = call i32 @regmap_write(ptr noundef %199, i32 noundef 16, i32 noundef %or76.i.i) #8
  br label %cleanup.i28.i

cleanup.i28.i:                                    ; preds = %if.else.i27.i, %if.end69.i.i
  %rx_limit.1.i.i = phi i32 [ %dec.i24.i, %if.end69.i.i ], [ %rx_limit.0216.i.i, %if.else.i27.i ]
  %buf.3.i.i = phi ptr [ %buf.2219.i.i, %if.end69.i.i ], [ %incdec.ptr.i26.i, %if.else.i27.i ]
  %dec79.i.i = add nsw i32 %tx_limit.0215.i.i, -1
  %dec80.i.i = add i32 %buf_len.2217.i.i, -1
  %cmp34.not.i.i = icmp eq i32 %dec80.i.i, 0
  br i1 %cmp34.not.i.i, label %cleanup.i28.i.while.end.i.i_crit_edge, label %cleanup.i28.i.land.lhs.true36.i.i_crit_edge

cleanup.i28.i.land.lhs.true36.i.i_crit_edge:      ; preds = %cleanup.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36.i.i

cleanup.i28.i.while.end.i.i_crit_edge:            ; preds = %cleanup.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.end.thread.i.i:                             ; preds = %if.then64.i.i.while.end.thread.i.i_crit_edge, %land.lhs.true36.i.i.while.end.thread.i.i_crit_edge
  %202 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %buf.2219.i.i, ptr %tx_buf.i.i, align 4
  %203 = ptrtoint ptr %tx_buf_len.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %buf_len.2217.i.i, ptr %tx_buf_len.i.i, align 8
  br label %if.then87.i.i

while.end.i.i:                                    ; preds = %cleanup.i28.i.while.end.i.i_crit_edge, %if.end30.while.end_crit_edge.i.i
  %and85.pre-phi.i.i = phi i32 [ %.pre.i.i, %if.end30.while.end_crit_edge.i.i ], [ %and50.i.i, %cleanup.i28.i.while.end.i.i_crit_edge ]
  %buf.2.lcssa.i.i = phi ptr [ %buf.1.i.i, %if.end30.while.end_crit_edge.i.i ], [ %buf.3.i.i, %cleanup.i28.i.while.end.i.i_crit_edge ]
  %need_restart.2.off0.lcssa.i.i = phi i1 [ %need_restart.1.off0.i.i, %if.end30.while.end_crit_edge.i.i ], [ false, %cleanup.i28.i.while.end.i.i_crit_edge ]
  %204 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %buf.2.lcssa.i.i, ptr %tx_buf.i.i, align 4
  %205 = ptrtoint ptr %tx_buf_len.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 0, ptr %tx_buf_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.pre-phi.i.i)
  %tobool86.not.i.i = icmp eq i32 %and85.pre-phi.i.i, 0
  br i1 %tobool86.not.i.i, label %for.inc.i.i, label %while.end.i.i.if.then87.i.i_crit_edge

while.end.i.i.if.then87.i.i_crit_edge:            ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then87.i.i

if.then87.i.i:                                    ; preds = %while.end.i.i.if.then87.i.i_crit_edge, %while.end.thread.i.i
  %206 = ptrtoint ptr %status.i14.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %status.i14.i, align 8
  %or89.i.i = or i32 %207, 1
  store i32 %or89.i.i, ptr %status.i14.i, align 8
  br label %i2c_dw_xfer_msg.exit.i

for.inc.i.i:                                      ; preds = %while.end.i.i
  %208 = ptrtoint ptr %status.i14.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %status.i14.i, align 8
  %and92.i.i = and i32 %209, -2
  store i32 %and92.i.i, ptr %status.i14.i, align 8
  %210 = ptrtoint ptr %msg_write_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %msg_write_idx.i.i, align 4
  %inc98.i.i = add i32 %211, 1
  store i32 %inc98.i.i, ptr %msg_write_idx.i.i, align 4
  %212 = ptrtoint ptr %msgs_num.i13.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %msgs_num.i13.i, align 8
  %cmp.i29.i = icmp slt i32 %inc98.i.i, %213
  br i1 %cmp.i29.i, label %for.inc.i.i.for.body.i18.i_crit_edge, label %for.inc.i.i.i2c_dw_xfer_msg.exit.i_crit_edge

for.inc.i.i.i2c_dw_xfer_msg.exit.i_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_dw_xfer_msg.exit.i

for.inc.i.i.for.body.i18.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i18.i

i2c_dw_xfer_msg.exit.i:                           ; preds = %for.inc.i.i.i2c_dw_xfer_msg.exit.i_crit_edge, %if.then87.i.i, %do.end.i.i, %if.then8.i.i2c_dw_xfer_msg.exit.i_crit_edge
  %214 = ptrtoint ptr %msg_write_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %msg_write_idx.i.i, align 4
  %216 = ptrtoint ptr %msgs_num.i13.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %msgs_num.i13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %217)
  %cmp101.i.i = icmp eq i32 %215, %217
  %spec.select.i.i = select i1 %cmp101.i.i, i32 580, i32 596
  %msg_err106.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 20
  %218 = ptrtoint ptr %msg_err106.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %msg_err106.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool107.not.i.i = icmp eq i32 %219, 0
  %intr_mask.1.i.i = select i1 %tobool107.not.i.i, i32 %spec.select.i.i, i32 0
  %220 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %map, align 4
  %call111.i.i = call i32 @regmap_write(ptr noundef %221, i32 noundef 48, i32 noundef %intr_mask.1.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flr.i.i) #8
  br label %tx_aborted.i

tx_aborted.i:                                     ; preds = %i2c_dw_xfer_msg.exit.i, %if.end5.i.tx_aborted.i_crit_edge, %if.then.i
  %222 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %stat.i, align 4
  %and10.i = and i32 %223, 576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i, label %tx_aborted.i.land.lhs.true.i_crit_edge

tx_aborted.i.land.lhs.true.i_crit_edge:           ; preds = %tx_aborted.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %tx_aborted.i
  %msg_err.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 20
  %224 = ptrtoint ptr %msg_err.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %msg_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool12.not.i = icmp eq i32 %225, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i.if.else.i_crit_edge, label %lor.lhs.false.i.land.lhs.true.i_crit_edge

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

lor.lhs.false.i.if.else.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %tx_aborted.i.land.lhs.true.i_crit_edge
  %rx_outstanding13.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 31
  %226 = ptrtoint ptr %rx_outstanding13.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %rx_outstanding13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %cmp.i = icmp eq i32 %227, 0
  br i1 %cmp.i, label %if.then14.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_complete.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 5
  call void @complete(ptr noundef %cmd_complete.i) #8
  br label %i2c_dw_irq_handler_master.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %lor.lhs.false.i.if.else.i_crit_edge
  %flags.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 24
  %228 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %flags.i, align 4
  %and15.i = and i32 %229, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.else.i.i2c_dw_irq_handler_master.exit_crit_edge, label %if.then19.i, !prof !112

if.else.i.i2c_dw_irq_handler_master.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_dw_irq_handler_master.exit

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %230 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %map, align 4
  %call21.i = call i32 @regmap_read(ptr noundef %231, i32 noundef 48, ptr noundef nonnull %stat.i) #8
  call void @i2c_dw_disable_int(ptr noundef %dev_id) #8
  %232 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %map, align 4
  %234 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %stat.i, align 4
  %call23.i = call i32 @regmap_write(ptr noundef %233, i32 noundef 48, i32 noundef %235) #8
  br label %i2c_dw_irq_handler_master.exit

i2c_dw_irq_handler_master.exit:                   ; preds = %if.then19.i, %if.else.i.i2c_dw_irq_handler_master.exit_crit_edge, %if.then14.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat.i) #8
  br label %cleanup

cleanup:                                          ; preds = %i2c_dw_irq_handler_master.exit, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %i2c_dw_irq_handler_master.exit ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_dw_init_recovery_info(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rinfo1 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 50
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call = tail call ptr @devm_gpiod_get_optional(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef 7) #8
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  %spec.select.i30 = select i1 %cmp.i, i32 %2, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %scl_gpiod = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 50, i32 8
  %3 = ptrtoint ptr %scl_gpiod to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %scl_gpiod, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %call6 = tail call ptr @devm_gpiod_get_optional(ptr noundef %5, ptr noundef nonnull @.str.35, i32 noundef 1) #8
  %cmp.i31 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sda_gpiod = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 50, i32 9
  %7 = ptrtoint ptr %sda_gpiod to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %sda_gpiod, align 4
  %8 = ptrtoint ptr %rinfo1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @i2c_generic_scl_recovery, ptr %rinfo1, align 4
  %prepare_recovery = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 50, i32 6
  %9 = ptrtoint ptr %prepare_recovery to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @i2c_dw_prepare_recovery, ptr %prepare_recovery, align 4
  %unprepare_recovery = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 50, i32 7
  %10 = ptrtoint ptr %unprepare_recovery to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @i2c_dw_unprepare_recovery, ptr %unprepare_recovery, align 4
  %bus_recovery_info = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25, i32 16
  %11 = ptrtoint ptr %bus_recovery_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rinfo1, ptr %bus_recovery_info, align 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %tobool.not = icmp eq ptr %call6, null
  %cond = select i1 %tobool.not, ptr @.str.10, ptr @.str.39
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.36, ptr noundef nonnull %cond) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then
  %retval.0 = phi i32 [ %spec.select.i30, %if.then ], [ %6, %if.then8 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #8, !srcloc !110
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !111
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_acquire_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__i2c_dw_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_release_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_clk_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_scl_hcnt(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_scl_lcnt(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_set_sda_hold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_freq_mode_string(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_dw_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dw_xfer.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dw_xfer, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !108

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dw_xfer.__UNIQUE_ID_ddebug295, ptr noundef %3, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %num) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  %flags = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and)
  %cmp = icmp eq i32 %and, 1024
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %do.end
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !107
  %map.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 1140, i32 noundef 13) #8
  %msgs2.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %9, i32 0, i32 12
  %13 = ptrtoint ptr %msgs2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msgs, ptr %msgs2.i, align 4
  %msgs_num.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %9, i32 0, i32 13
  %14 = ptrtoint ptr %msgs_num.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %num, ptr %msgs_num.i, align 8
  tail call fastcc void @i2c_dw_xfer_init(ptr noundef %9) #8
  tail call void @i2c_dw_disable_int(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp132.i = icmp sgt i32 %num, 0
  br i1 %cmp132.i, label %for.body.lr.ph.i, label %if.then8.amd_i2c_dw_xfer_quirk.exit_crit_edge

if.then8.amd_i2c_dw_xfer_quirk.exit_crit_edge:    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %amd_i2c_dw_xfer_quirk.exit

for.body.lr.ph.i:                                 ; preds = %if.then8
  %sub12.i = add nsw i32 %num, -1
  br label %for.body.i

for.cond.i:                                       ; preds = %for.end62.i
  %inc68.i = add nuw nsw i32 %msg_wrt_idx.0133.i, 1
  %exitcond141.not.i = icmp eq i32 %inc68.i, %num
  br i1 %exitcond141.not.i, label %for.cond.i.amd_i2c_dw_xfer_quirk.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.amd_i2c_dw_xfer_quirk.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amd_i2c_dw_xfer_quirk.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cmd.0135.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %cmd.1.lcssa.i, %for.cond.i.for.body.i_crit_edge ]
  %msg_wrt_idx.0133.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc68.i, %for.cond.i.for.body.i_crit_edge ]
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %msg_wrt_idx.0133.i, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf.i, align 4
  %len.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %msg_wrt_idx.0133.i, i32 2
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %18 to i32
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %msg_wrt_idx.0133.i, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags.i, align 2
  %21 = and i16 %20, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map.i, align 4
  %sub.i = add nsw i32 %conv.i, -1
  %call7.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 60, i32 noundef %sub.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp9128.not.i = icmp eq i16 %18, 0
  br i1 %cmp9128.not.i, label %if.end.i.for.end62.i_crit_edge, label %for.body11.lr.ph.i

if.end.i.for.end62.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end62.i

for.body11.lr.ph.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %msg_wrt_idx.0133.i, i32 %sub12.i)
  %cmp13.i = icmp eq i32 %msg_wrt_idx.0133.i, %sub12.i
  %sub33.i = shl nuw nsw i32 %conv.i, 1
  %mul.i = add nsw i32 %sub33.i, -2
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.inc61.i.for.body11.i_crit_edge, %for.body11.lr.ph.i
  %tx_buf.0131.i = phi ptr [ %16, %for.body11.lr.ph.i ], [ %tx_buf.1.i, %for.inc61.i.for.body11.i_crit_edge ]
  %cmd.1130.i = phi i32 [ %cmd.0135.i, %for.body11.lr.ph.i ], [ %cmd.2.i, %for.inc61.i.for.body11.i_crit_edge ]
  %msg_itr_lmt.0129.i = phi i32 [ %conv.i, %for.body11.lr.ph.i ], [ %dec.i, %for.inc61.i.for.body11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %msg_itr_lmt.0129.i)
  %cmp15.i = icmp eq i32 %msg_itr_lmt.0129.i, 1
  %or.cond.i = select i1 %cmp13.i, i1 %cmp15.i, i1 false
  %or.i = or i32 %cmd.1130.i, 512
  %cmd.2.i = select i1 %or.cond.i, i32 %or.i, i32 %cmd.1130.i
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags.i, align 2
  %26 = and i16 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool23.not.i = icmp eq i16 %26, 0
  %27 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map.i, align 4
  br i1 %tobool23.not.i, label %if.else.i, label %if.then24.i

if.then24.i:                                      ; preds = %for.body11.i
  %call26.i = call i32 @regmap_write(ptr noundef %28, i32 noundef 16, i32 noundef 256) #8
  %29 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map.i, align 4
  %or28.i = or i32 %cmd.2.i, 256
  %call29.i = call i32 @regmap_write(ptr noundef %30, i32 noundef 16, i32 noundef %or28.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd.2.i)
  %tobool30.not.i = icmp eq i32 %cmd.2.i, 0
  br i1 %tobool30.not.i, label %if.then24.i.for.inc61.i_crit_edge, label %if.then31.i

if.then24.i.for.inc61.i_crit_edge:                ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc61.i

if.then31.i:                                      ; preds = %if.then24.i
  %31 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map.i, align 4
  %call34.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 60, i32 noundef %mul.i) #8
  %33 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map.i, align 4
  %call38.i = call i32 @regmap_write(ptr noundef %34, i32 noundef 56, i32 noundef %mul.i) #8
  %call.i.i = call i32 @i2c_dw_wait_bus_not_busy(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %i2c_dw_status.exit.i, label %if.then31.i.amd_i2c_dw_xfer_quirk.exit_crit_edge

if.then31.i.amd_i2c_dw_xfer_quirk.exit_crit_edge: ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amd_i2c_dw_xfer_quirk.exit

i2c_dw_status.exit.i:                             ; preds = %if.then31.i
  %call1.i.i = call fastcc i32 @i2c_dw_check_stopbit(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool40.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool40.not.i, label %i2c_dw_status.exit.i.for.body46.i_crit_edge, label %i2c_dw_status.exit.i.amd_i2c_dw_xfer_quirk.exit_crit_edge

i2c_dw_status.exit.i.amd_i2c_dw_xfer_quirk.exit_crit_edge: ; preds = %i2c_dw_status.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amd_i2c_dw_xfer_quirk.exit

i2c_dw_status.exit.i.for.body46.i_crit_edge:      ; preds = %i2c_dw_status.exit.i
  br label %for.body46.i

for.body46.i:                                     ; preds = %for.body46.i.for.body46.i_crit_edge, %i2c_dw_status.exit.i.for.body46.i_crit_edge
  %data_idx.0127.i = phi i32 [ %inc.i, %for.body46.i.for.body46.i_crit_edge ], [ 0, %i2c_dw_status.exit.i.for.body46.i_crit_edge ]
  %35 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map.i, align 4
  %call48.i = call i32 @regmap_read(ptr noundef %36, i32 noundef 16, ptr noundef nonnull %val.i) #8
  %37 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i, align 4
  %conv49.i = trunc i32 %38 to i8
  %arrayidx50.i = getelementptr i8, ptr %tx_buf.0131.i, i32 %data_idx.0127.i
  %39 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv49.i, ptr %arrayidx50.i, align 1
  %inc.i = add nuw nsw i32 %data_idx.0127.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body46.i.for.body46.i_crit_edge

for.body46.i.for.body46.i_crit_edge:              ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body46.i

for.end.i:                                        ; preds = %for.body46.i
  %call51.i = call fastcc i32 @i2c_dw_check_stopbit(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %for.end.i.for.inc61.i_crit_edge, label %for.end.i.amd_i2c_dw_xfer_quirk.exit_crit_edge

for.end.i.amd_i2c_dw_xfer_quirk.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amd_i2c_dw_xfer_quirk.exit

for.end.i.for.inc61.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc61.i

if.else.i:                                        ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i = getelementptr i8, ptr %tx_buf.0131.i, i32 1
  %40 = ptrtoint ptr %tx_buf.0131.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tx_buf.0131.i, align 1
  %conv57.i = zext i8 %41 to i32
  %or58.i = or i32 %cmd.2.i, %conv57.i
  %call59.i = call i32 @regmap_write(ptr noundef %28, i32 noundef 16, i32 noundef %or58.i) #8
  call void @usleep_range_state(i32 noundef 25, i32 noundef 250, i32 noundef 2) #8
  br label %for.inc61.i

for.inc61.i:                                      ; preds = %if.else.i, %for.end.i.for.inc61.i_crit_edge, %if.then24.i.for.inc61.i_crit_edge
  %tx_buf.1.i = phi ptr [ %tx_buf.0131.i, %for.end.i.for.inc61.i_crit_edge ], [ %tx_buf.0131.i, %if.then24.i.for.inc61.i_crit_edge ], [ %incdec.ptr.i, %if.else.i ]
  %dec.i = add nsw i32 %msg_itr_lmt.0129.i, -1
  %cmp9.i = icmp sgt i32 %msg_itr_lmt.0129.i, 1
  br i1 %cmp9.i, label %for.inc61.i.for.body11.i_crit_edge, label %for.inc61.i.for.end62.i_crit_edge

for.inc61.i.for.end62.i_crit_edge:                ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end62.i

for.inc61.i.for.body11.i_crit_edge:               ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11.i

for.end62.i:                                      ; preds = %for.inc61.i.for.end62.i_crit_edge, %if.end.i.for.end62.i_crit_edge
  %cmd.1.lcssa.i = phi i32 [ %cmd.0135.i, %if.end.i.for.end62.i_crit_edge ], [ %cmd.2.i, %for.inc61.i.for.end62.i_crit_edge ]
  %call63.i = call fastcc i32 @i2c_dw_check_stopbit(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %for.cond.i, label %for.end62.i.amd_i2c_dw_xfer_quirk.exit_crit_edge

for.end62.i.amd_i2c_dw_xfer_quirk.exit_crit_edge: ; preds = %for.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amd_i2c_dw_xfer_quirk.exit

amd_i2c_dw_xfer_quirk.exit:                       ; preds = %for.end62.i.amd_i2c_dw_xfer_quirk.exit_crit_edge, %for.end.i.amd_i2c_dw_xfer_quirk.exit_crit_edge, %i2c_dw_status.exit.i.amd_i2c_dw_xfer_quirk.exit_crit_edge, %if.then31.i.amd_i2c_dw_xfer_quirk.exit_crit_edge, %for.cond.i.amd_i2c_dw_xfer_quirk.exit_crit_edge, %if.then8.amd_i2c_dw_xfer_quirk.exit_crit_edge
  %retval.0.i171 = phi i32 [ 0, %if.then8.amd_i2c_dw_xfer_quirk.exit_crit_edge ], [ %call1.i.i, %i2c_dw_status.exit.i.amd_i2c_dw_xfer_quirk.exit_crit_edge ], [ %call51.i, %for.end.i.amd_i2c_dw_xfer_quirk.exit_crit_edge ], [ %call.i.i, %if.then31.i.amd_i2c_dw_xfer_quirk.exit_crit_edge ], [ 0, %for.cond.i.amd_i2c_dw_xfer_quirk.exit_crit_edge ], [ %call63.i, %for.end62.i.amd_i2c_dw_xfer_quirk.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %done_nolock

if.end10:                                         ; preds = %do.end
  %suspended = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 51
  %42 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %suspended, align 8, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool11.not = icmp eq i8 %43, 0
  br i1 %tobool11.not, label %if.end67, label %land.rhs

land.rhs:                                         ; preds = %if.end10
  %.b169 = load i1, ptr @i2c_dw_xfer.__already_done, align 1
  br i1 %.b169, label %land.rhs.done_nolock_crit_edge, label %if.then27, !prof !112

land.rhs.done_nolock_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %done_nolock

if.then27:                                        ; preds = %land.rhs
  store i1 true, ptr @i2c_dw_xfer.__already_done, align 1
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %call41 = tail call ptr @dev_driver_string(ptr noundef %45) #8
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i172 = icmp eq ptr %49, null
  br i1 %tobool.not.i172, label %if.end.i173, label %if.then27.dev_name.exit_crit_edge

if.then27.dev_name.exit_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i173:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i173, %if.then27.dev_name.exit_crit_edge
  %retval.0.i174 = phi ptr [ %51, %if.end.i173 ], [ %49, %if.then27.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 570, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %call41, ptr noundef %retval.0.i174) #8
  br label %done_nolock

if.end67:                                         ; preds = %if.end10
  %cmd_complete = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 5
  %52 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %cmd_complete, align 4
  %msgs68 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 12
  %53 = ptrtoint ptr %msgs68 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %msgs, ptr %msgs68, align 4
  %msgs_num = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 13
  %54 = ptrtoint ptr %msgs_num to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %num, ptr %msgs_num, align 8
  %cmd_err = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 11
  %55 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %cmd_err, align 8
  %msg_write_idx = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 14
  %56 = ptrtoint ptr %msg_write_idx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %msg_write_idx, align 4
  %msg_read_idx = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 17
  %57 = ptrtoint ptr %msg_read_idx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %msg_read_idx, align 8
  %msg_err = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 20
  %58 = ptrtoint ptr %msg_err to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %msg_err, align 4
  %status = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 21
  %59 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %status, align 8
  %abort_source = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 22
  %60 = ptrtoint ptr %abort_source to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %abort_source, align 4
  %rx_outstanding = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 31
  %61 = ptrtoint ptr %rx_outstanding to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %rx_outstanding, align 4
  %call69 = tail call i32 @i2c_dw_acquire_lock(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end67.done_nolock_crit_edge

if.end67.done_nolock_crit_edge:                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %done_nolock

if.end72:                                         ; preds = %if.end67
  %call73 = tail call i32 @i2c_dw_wait_bus_not_busy(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end72.done_crit_edge, label %if.end76

if.end72.done_crit_edge:                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end76:                                         ; preds = %if.end72
  tail call fastcc void @i2c_dw_xfer_init(ptr noundef %1)
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 7
  %62 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %timeout, align 4
  %call78 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_complete, i32 noundef %63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %do.end83, label %if.end87

do.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.22) #11
  %adapter = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 25
  %call85 = tail call i32 @i2c_recover_bus(ptr noundef %adapter) #8
  %call86 = tail call i32 @i2c_dw_init_master(ptr noundef %1)
  br label %done

if.end87:                                         ; preds = %if.end76
  %map.i175 = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %map.i175 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %map.i175, align 4
  %call.i176 = tail call i32 @regmap_write(ptr noundef %67, i32 noundef 108, i32 noundef 0) #8
  %68 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %msg_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool89.not = icmp eq i32 %69, 0
  br i1 %tobool89.not, label %if.end92, label %if.end87.done_crit_edge

if.end87.done_crit_edge:                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end92:                                         ; preds = %if.end87
  %70 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cmd_err, align 8
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values)
  switch i32 %71, label %if.end113 [
    i32 0, label %land.rhs95
    i32 1, label %if.then111
  ], !prof !114

land.rhs95:                                       ; preds = %if.end92
  %73 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool97.not = icmp eq i32 %74, 0
  br i1 %tobool97.not, label %land.rhs95.done_crit_edge, label %land.rhs95.do.end119_crit_edge, !prof !112

land.rhs95.do.end119_crit_edge:                   ; preds = %land.rhs95
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end119

land.rhs95.done_crit_edge:                        ; preds = %land.rhs95
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then111:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %call112 = tail call i32 @i2c_dw_handle_tx_abort(ptr noundef %1) #8
  br label %done

if.end113:                                        ; preds = %if.end92
  %75 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool115.not = icmp eq i32 %.pr, 0
  br i1 %tobool115.not, label %if.end113.done_crit_edge, label %if.end113.do.end119_crit_edge

if.end113.do.end119_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end119

if.end113.done_crit_edge:                         ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

do.end119:                                        ; preds = %if.end113.do.end119_crit_edge, %land.rhs95.do.end119_crit_edge
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.24) #11
  br label %done

done:                                             ; preds = %do.end119, %if.end113.done_crit_edge, %if.then111, %land.rhs95.done_crit_edge, %if.end87.done_crit_edge, %do.end83, %if.end72.done_crit_edge
  %ret.0 = phi i32 [ %call73, %if.end72.done_crit_edge ], [ %call112, %if.then111 ], [ -110, %do.end83 ], [ %69, %if.end87.done_crit_edge ], [ %num, %land.rhs95.done_crit_edge ], [ -5, %do.end119 ], [ -5, %if.end113.done_crit_edge ]
  tail call void @i2c_dw_release_lock(ptr noundef %1) #8
  br label %done_nolock

done_nolock:                                      ; preds = %done, %if.end67.done_nolock_crit_edge, %dev_name.exit, %land.rhs.done_nolock_crit_edge, %amd_i2c_dw_xfer_quirk.exit
  %ret.1 = phi i32 [ %retval.0.i171, %amd_i2c_dw_xfer_quirk.exit ], [ %call69, %if.end67.done_nolock_crit_edge ], [ %ret.0, %done ], [ -108, %dev_name.exit ], [ -108, %land.rhs.done_nolock_crit_edge ]
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 8
  %call.i177 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 12, i32 22
  %80 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store volatile i64 %call.i177, ptr %last_busy.i, align 8
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 8
  %call.i178 = call i32 @__pm_runtime_suspend(ptr noundef %82, i32 noundef 13) #8
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_func(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_wait_bus_not_busy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_dw_xfer_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msgs1 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %msgs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msgs1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #8
  %2 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dummy, align 4, !annotation !107
  tail call void @__i2c_dw_disable(ptr noundef %dev) #8
  %msg_write_idx = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %msg_write_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_write_idx, align 4
  %flags = getelementptr %struct.i2c_msg, ptr %1, i32 %4, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 2
  %7 = and i16 %6, 16
  %8 = zext i16 %7 to i32
  %9 = shl nuw nsw i16 %7, 8
  %map = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 16, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 4
  %14 = ptrtoint ptr %msg_write_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_write_idx, align 4
  %arrayidx4 = getelementptr %struct.i2c_msg, ptr %1, i32 %15
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx4, align 4
  %or26 = or i16 %17, %9
  %or = zext i16 %or26 to i32
  %call6 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 4, i32 noundef %or) #8
  tail call void @i2c_dw_disable_int(ptr noundef %dev) #8
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 4
  %call.i25 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 108, i32 noundef 1) #8
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map, align 4
  %call8 = call i32 @regmap_read(ptr noundef %21, i32 noundef 156, ptr noundef nonnull %dummy) #8
  %22 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map, align 4
  %call10 = call i32 @regmap_read(ptr noundef %23, i32 noundef 64, ptr noundef nonnull %dummy) #8
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 4
  %call12 = call i32 @regmap_write(ptr noundef %25, i32 noundef 48, i32 noundef 596) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_handle_tx_abort(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_dw_check_stopbit(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !107
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 262) #8
  %map = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %call859 = call i32 @regmap_read(ptr noundef %2, i32 noundef 44, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call859)
  %tobool.not60 = icmp eq i32 %call859, 0
  br i1 %tobool.not60, label %entry.lor.lhs.false_crit_edge, label %entry.do.end33_crit_edge

entry.do.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 512
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
  %call8 = call i32 @regmap_read(ptr noundef %6, i32 noundef 44, ptr noundef nonnull %val) #8
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
  %call18 = call i32 @regmap_read(ptr noundef %8, i32 noundef 44, ptr noundef nonnull %val) #8
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
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and24 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %lor.rhs.if.end35_crit_edge, label %lor.rhs.do.end33_crit_edge

lor.rhs.do.end33_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33

lor.rhs.if.end35_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.end33:                                         ; preds = %lor.rhs.do.end33_crit_edge, %for.end.do.end33_crit_edge, %if.then21.do.end33_crit_edge, %entry.do.end33_crit_edge
  %tobool23.not50.ph = phi i32 [ %call859, %entry.do.end33_crit_edge ], [ -110, %lor.rhs.do.end33_crit_edge ], [ %call18, %for.end.do.end33_crit_edge ], [ %call8, %if.then21.do.end33_crit_edge ]
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.26, i32 noundef %tobool23.not50.ph) #11
  br label %if.end35

if.end35:                                         ; preds = %do.end33, %lor.rhs.if.end35_crit_edge
  %tobool23.not5064 = phi i32 [ %tobool23.not50.ph, %do.end33 ], [ 0, %lor.rhs.if.end35_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %tobool23.not5064
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_generic_scl_recovery(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_dw_prepare_recovery(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_dw_disable(ptr noundef %1) #8
  %rst = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #8
  %call2 = tail call i32 @i2c_dw_prepare_clk(ptr noundef %1, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_dw_unprepare_recovery(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @i2c_dw_prepare_clk(ptr noundef %1, i1 noundef zeroext true) #8
  %rst = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 4
  %call2 = tail call i32 @reset_control_deassert(ptr noundef %3) #8
  %call3 = tail call i32 @i2c_dw_init_master(ptr noundef %1)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_prepare_clk(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !22, !23, !25, !26, !28, !30, !31, !32, !33, !35, !37, !38, !40, !41, !42, !44, !45, !47, !48, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !90, !92, !93, !94, !95, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__ksymtab_i2c_dw_configure_master, !1, !"__ksymtab_i2c_dw_configure_master", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 801, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 892, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 912, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @i2c_dw_probe_master._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @i2c_dw_probe_master._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 930, i32 3}
!14 = !{ptr @i2c_dw_probe_master._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @i2c_dw_probe_master._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_i2c_dw_probe_master, !17, !"__ksymtab_i2c_dw_probe_master", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 935, i32 1}
!18 = !{ptr @__UNIQUE_ID_description297, !19, !"__UNIQUE_ID_description297", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 937, i32 1}
!20 = !{ptr @__UNIQUE_ID_file298, !21, !"__UNIQUE_ID_file298", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 938, i32 1}
!22 = !{ptr @__UNIQUE_ID_license299, !21, !"__UNIQUE_ID_license299", i1 false, i1 false}
!23 = !{ptr @init_completion.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../include/linux/completion.h", i32 87, i32 2}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 45, i32 23}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 77, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @i2c_dw_set_timings_master.__UNIQUE_ID_ddebug289, !29, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 107, i32 12}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 127, i32 2}
!37 = !{ptr @i2c_dw_set_timings_master.__UNIQUE_ID_ddebug290, !36, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 135, i32 4}
!40 = !{ptr @i2c_dw_set_timings_master._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @i2c_dw_set_timings_master._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 155, i32 3}
!44 = !{ptr @i2c_dw_set_timings_master.__UNIQUE_ID_ddebug291, !43, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 163, i32 2}
!47 = !{ptr @i2c_dw_set_timings_master.__UNIQUE_ID_ddebug292, !46, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!48 = !{ptr @i2c_dw_algo, !49, !"i2c_dw_algo", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 650, i32 35}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 556, i32 2}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @i2c_dw_xfer.__UNIQUE_ID_ddebug295, !51, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 570, i32 6}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 599, i32 3}
!59 = !{ptr @i2c_dw_xfer._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @i2c_dw_xfer._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 635, i32 3}
!63 = !{ptr @i2c_dw_xfer._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @i2c_dw_xfer._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 264, i32 3}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @i2c_dw_check_stopbit._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @i2c_dw_check_stopbit._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @i2c_dw_quirks, !71, !"i2c_dw_quirks", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 655, i32 40}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 857, i32 3}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @amd_i2c_adap_quirk._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @amd_i2c_adap_quirk._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 770, i32 2}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @i2c_dw_isr.__UNIQUE_ID_ddebug296, !78, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 386, i32 4}
!83 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @i2c_dw_xfer_msg._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @i2c_dw_xfer_msg._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 827, i32 43}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 833, i32 43}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/i2c/busses/i2c-designware-master.c", i32 843, i32 2}
!92 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @i2c_dw_init_recovery_info._entry, !91, !"_entry", i1 false, i1 false}
!95 = !{ptr @i2c_dw_init_recovery_info._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2148211959, i64 2148211985, i64 2148212014, i64 2148212048, i64 2148212079, i64 2148212102}
!107 = !{!"auto-init"}
!108 = !{i64 2148779624, i64 2148779629, i64 2148779642, i64 2148779686, i64 2148779720, i64 2148779741}
!109 = !{i64 2148211378}
!110 = !{i64 696201, i64 696226, i64 696248, i64 696264, i64 696276, i64 696296, i64 696320, i64 696336, i64 696348}
!111 = !{i64 2148211566}
!112 = !{!"branch_weights", i32 2000, i32 1}
!113 = !{i8 0, i8 2}
!114 = !{!"branch_weights", i32 1, i32 4000, i32 1}
