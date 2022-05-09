; ModuleID = '/llk/IR_all_yes/drivers/i2c/algos/i2c-algo-pca.c_pt.bc'
source_filename = "../drivers/i2c/algos/i2c-algo-pca.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+i2c_pca_add_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_pca_add_bus\09\09\09\09"
module asm "\09.long\09__crc_i2c_pca_add_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_pca_add_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_pca_add_bus\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_pca_add_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+i2c_pca_add_numbered_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_pca_add_numbered_bus\09\09\09\09"
module asm "\09.long\09__crc_i2c_pca_add_numbered_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_pca_add_numbered_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_pca_add_numbered_bus\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_pca_add_numbered_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algo_pca_data = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.pca_i2c_bus_settings }
%struct.pca_i2c_bus_settings = type { i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__kstrtab_i2c_pca_add_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_pca_add_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_pca_add_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_pca_add_bus to i32), ptr @__kstrtab_i2c_pca_add_bus, ptr @__kstrtabns_i2c_pca_add_bus }, section "___ksymtab+i2c_pca_add_bus", align 4
@__kstrtab_i2c_pca_add_numbered_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_pca_add_numbered_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_pca_add_numbered_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_pca_add_numbered_bus to i32), ptr @__kstrtab_i2c_pca_add_numbered_bus, ptr @__kstrtabns_i2c_pca_add_numbered_bus }, section "___ksymtab+i2c_pca_add_numbered_bus", align 4
@__UNIQUE_ID_author289 = internal constant [55 x i8] c"i2c_algo_pca.author=Ian Campbell <icampbell@arcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [57 x i8] c"i2c_algo_pca.author=Wolfram Sang <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [59 x i8] c"i2c_algo_pca.description=I2C-Bus PCA9564/PCA9665 algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [49 x i8] c"i2c_algo_pca.file=drivers/i2c/algos/i2c-algo-pca\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [25 x i8] c"i2c_algo_pca.license=GPL\00", section ".modinfo", align 1
@__param_str_i2c_debug = internal constant [23 x i8] c"i2c_algo_pca.i2c_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_debug = internal constant %struct.kernel_param { ptr @__param_str_i2c_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @i2c_debug } }, section "__param", align 4
@__UNIQUE_ID_i2c_debugtype294 = internal constant [36 x i8] c"i2c_algo_pca.parmtype=i2c_debug:int\00", section ".modinfo", align 1
@pca_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @pca_xfer, ptr null, ptr null, ptr null, ptr @pca_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pca_init.freqs = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 330, i32 288, i32 217, i32 146, i32 88, i32 59, i32 44, i32 36], [32 x i8] zeroinitializer }, align 32
@pca_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014%s: Invalid I2C clock speed selected. Using default 59kHz.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pca_init\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/algos/i2c-algo-pca.c\00", [63 x i8] zeroinitializer }, align 32
@pca_init._entry_ptr = internal global ptr @pca_init._entry, section ".printk_index", align 4
@pca_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\014%s: Choosing the clock frequency based on index is deprecated. Use the nominal frequency.\0A\00", [35 x i8] zeroinitializer }, align 32
@pca_init._entry_ptr.5 = internal global ptr @pca_init._entry.3, section ".printk_index", align 4
@pca_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Clock frequency is %dkHz\0A\00", [32 x i8] zeroinitializer }, align 32
@pca_init._entry_ptr.8 = internal global ptr @pca_init._entry.6, section ".printk_index", align 4
@pca_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014%s: I2C clock speed too high. Using 1265.8kHz.\0A\00", [46 x i8] zeroinitializer }, align 32
@pca_init._entry_ptr.11 = internal global ptr @pca_init._entry.9, section ".printk_index", align 4
@pca_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: I2C clock speed too low. Using 60.3kHz.\0A\00", [49 x i8] zeroinitializer }, align 32
@pca_init._entry_ptr.14 = internal global ptr @pca_init._entry.12, section ".printk_index", align 4
@pca_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: Clock frequency is %dHz\0A\00", [33 x i8] zeroinitializer }, align 32
@pca_init._entry_ptr.17 = internal global ptr @pca_init._entry.15, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pca_xfer.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 50, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c_algo_pca\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pca_xfer\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bus is not idle. status is %#04x\0A\00", [62 x i8] zeroinitializer }, align 32
@pca_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017{{{ XFER %d messages\0A\00", [40 x i8] zeroinitializer }, align 32
@pca_xfer._entry_ptr = internal global ptr @pca_xfer._entry, section ".printk_index", align 4
@pca_xfer._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016    [%02d] RD %d bytes from %#02x [%#02x, ...]\0A\00", [46 x i8] zeroinitializer }, align 32
@pca_xfer._entry_ptr.24 = internal global ptr @pca_xfer._entry.22, section ".printk_index", align 4
@pca_xfer._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016    [%02d] WR %d bytes to %#02x [%#02x%s\00", [53 x i8] zeroinitializer }, align 32
@pca_xfer._entry_ptr.27 = internal global ptr @pca_xfer._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@pca_xfer._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.19, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%#04x%s\00", [24 x i8] zeroinitializer }, align 32
@pca_xfer._entry_ptr.32 = internal global ptr @pca_xfer._entry.30, section ".printk_index", align 4
@pca_xfer._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.19, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@pca_xfer._entry_ptr.35 = internal global ptr @pca_xfer._entry.33, section ".printk_index", align 4
@pca_xfer._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.19, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017STATE is 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@pca_xfer._entry_ptr.38 = internal global ptr @pca_xfer._entry.36, section ".printk_index", align 4
@pca_xfer._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.19, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017NOT ACK received after SLA+W\0A\00", [32 x i8] zeroinitializer }, align 32
@pca_xfer._entry_ptr.41 = internal global ptr @pca_xfer._entry.39, section ".printk_index", align 4
@pca_xfer._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.19, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017NOT ACK received after SLA+R\0A\00", [32 x i8] zeroinitializer }, align 32
@pca_xfer._entry_ptr.44 = internal global ptr @pca_xfer._entry.42, section ".printk_index", align 4
@pca_xfer._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.19, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017NOT ACK received after data byte\0A\00", [60 x i8] zeroinitializer }, align 32
@pca_xfer._entry_ptr.47 = internal global ptr @pca_xfer._entry.45, section ".printk_index", align 4
@pca_xfer._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.19, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017Arbitration lost\0A\00", [44 x i8] zeroinitializer }, align 32
@pca_xfer._entry_ptr.50 = internal global ptr @pca_xfer._entry.48, section ".printk_index", align 4
@pca_xfer._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.19, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\017NOT ACK sent after data byte received. Not final byte. numbytes %d. len %d\0A\00", [50 x i8] zeroinitializer }, align 32
@pca_xfer._entry_ptr.53 = internal global ptr @pca_xfer._entry.51, section ".printk_index", align 4
@pca_xfer._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.19, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017BUS ERROR - SDA Stuck low\0A\00", [35 x i8] zeroinitializer }, align 32
@pca_xfer._entry_ptr.56 = internal global ptr @pca_xfer._entry.54, section ".printk_index", align 4
@pca_xfer._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.19, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017BUS ERROR - SCL Stuck low\0A\00", [35 x i8] zeroinitializer }, align 32
@pca_xfer._entry_ptr.59 = internal global ptr @pca_xfer._entry.57, section ".printk_index", align 4
@pca_xfer._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.19, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017BUS ERROR - Illegal START or STOP\0A\00", [59 x i8] zeroinitializer }, align 32
@pca_xfer._entry_ptr.62 = internal global ptr @pca_xfer._entry.60, section ".printk_index", align 4
@pca_xfer._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.19, ptr @.str.2, i32 341, ptr @.str.65, ptr @.str.66 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unhandled SIO state 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pca_xfer._entry_ptr.67 = internal global ptr @pca_xfer._entry.63, section ".printk_index", align 4
@pca_xfer._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.19, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017}}} transferred %d/%d messages. status is %#04x. control is %#04x\0A\00", [59 x i8] zeroinitializer }, align 32
@pca_xfer._entry_ptr.70 = internal global ptr @pca_xfer._entry.68, section ".printk_index", align 4
@pca_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017=== START\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pca_start\00", [22 x i8] zeroinitializer }, align 32
@pca_start._entry_ptr = internal global ptr @pca_start._entry, section ".printk_index", align 4
@pca_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017=== SLAVE ADDRESS %#04x+%c=%#04x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pca_address\00", [20 x i8] zeroinitializer }, align 32
@pca_address._entry_ptr = internal global ptr @pca_address._entry, section ".printk_index", align 4
@pca_tx_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017=== WRITE %#04x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pca_tx_byte\00", [20 x i8] zeroinitializer }, align 32
@pca_tx_byte._entry_ptr = internal global ptr @pca_tx_byte._entry, section ".printk_index", align 4
@pca_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017=== STOP\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pca_stop\00", [23 x i8] zeroinitializer }, align 32
@pca_stop._entry_ptr = internal global ptr @pca_stop._entry, section ".printk_index", align 4
@pca_repeated_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017=== REPEATED START\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pca_repeated_start\00", [45 x i8] zeroinitializer }, align 32
@pca_repeated_start._entry_ptr = internal global ptr @pca_repeated_start._entry, section ".printk_index", align 4
@pca_rx_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017=== READ %#04x %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pca_rx_byte\00", [20 x i8] zeroinitializer }, align 32
@pca_rx_byte._entry_ptr = internal global ptr @pca_rx_byte._entry, section ".printk_index", align 4
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ACK\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NACK\00", [27 x i8] zeroinitializer }, align 32
@pca_probe_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: PCA9665 detected.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pca_probe_chip\00", [17 x i8] zeroinitializer }, align 32
@pca_probe_chip._entry_ptr = internal global ptr @pca_probe_chip._entry, section ".printk_index", align 4
@pca_probe_chip._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: PCA9564 detected.\0A\00", [39 x i8] zeroinitializer }, align 32
@pca_probe_chip._entry_ptr.89 = internal global ptr @pca_probe_chip._entry.87, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 36000, i64 44000, i64 59000, i64 88000, i64 146000, i64 217000, i64 288000, i64 330000]
@__sancov_gen_cov_switch_values.90 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 14, i64 15, i64 18, i64 31]
@___asan_gen_.91 = private unnamed_addr constant [10 x i8] c"i2c_debug\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 24, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant [9 x i8] c"pca_algo\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 363, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"freqs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 398, i32 14 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 428, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 434, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 441, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 464, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 470, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 521, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 199, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 205, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 215, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 218, i32 5 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 222, i32 6 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 223, i32 5 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 233, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 262, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 287, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 293, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 298, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 320, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 328, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 333, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 337, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 341, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 351, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 71, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 122, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 142, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 105, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 86, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 160, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 382, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.332 = private constant [36 x i8] c"../drivers/i2c/algos/i2c-algo-pca.c\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 385, i32 3 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_i2c_debugtype294, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_i2c_pca_add_bus, ptr @__ksymtab_i2c_pca_add_numbered_bus, ptr @__param_i2c_debug, ptr @pca_address._entry, ptr @pca_address._entry_ptr, ptr @pca_init._entry, ptr @pca_init._entry.12, ptr @pca_init._entry.15, ptr @pca_init._entry.3, ptr @pca_init._entry.6, ptr @pca_init._entry.9, ptr @pca_init._entry_ptr, ptr @pca_init._entry_ptr.11, ptr @pca_init._entry_ptr.14, ptr @pca_init._entry_ptr.17, ptr @pca_init._entry_ptr.5, ptr @pca_init._entry_ptr.8, ptr @pca_probe_chip._entry, ptr @pca_probe_chip._entry.87, ptr @pca_probe_chip._entry_ptr, ptr @pca_probe_chip._entry_ptr.89, ptr @pca_repeated_start._entry, ptr @pca_repeated_start._entry_ptr, ptr @pca_rx_byte._entry, ptr @pca_rx_byte._entry_ptr, ptr @pca_start._entry, ptr @pca_start._entry_ptr, ptr @pca_stop._entry, ptr @pca_stop._entry_ptr, ptr @pca_tx_byte._entry, ptr @pca_tx_byte._entry_ptr, ptr @pca_xfer._entry, ptr @pca_xfer._entry.22, ptr @pca_xfer._entry.25, ptr @pca_xfer._entry.30, ptr @pca_xfer._entry.33, ptr @pca_xfer._entry.36, ptr @pca_xfer._entry.39, ptr @pca_xfer._entry.42, ptr @pca_xfer._entry.45, ptr @pca_xfer._entry.48, ptr @pca_xfer._entry.51, ptr @pca_xfer._entry.54, ptr @pca_xfer._entry.57, ptr @pca_xfer._entry.60, ptr @pca_xfer._entry.63, ptr @pca_xfer._entry.68, ptr @pca_xfer._entry_ptr, ptr @pca_xfer._entry_ptr.24, ptr @pca_xfer._entry_ptr.27, ptr @pca_xfer._entry_ptr.32, ptr @pca_xfer._entry_ptr.35, ptr @pca_xfer._entry_ptr.38, ptr @pca_xfer._entry_ptr.41, ptr @pca_xfer._entry_ptr.44, ptr @pca_xfer._entry_ptr.47, ptr @pca_xfer._entry_ptr.50, ptr @pca_xfer._entry_ptr.53, ptr @pca_xfer._entry_ptr.56, ptr @pca_xfer._entry_ptr.59, ptr @pca_xfer._entry_ptr.62, ptr @pca_xfer._entry_ptr.67, ptr @pca_xfer._entry_ptr.70, ptr @i2c_debug, ptr @pca_algo, ptr @pca_init.freqs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_init.freqs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_xfer._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_xfer._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_xfer._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_xfer._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_xfer._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_xfer._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_xfer._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_xfer._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_xfer._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_xfer._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_xfer._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_xfer._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_xfer._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_xfer._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_xfer._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_tx_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_repeated_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_rx_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_probe_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca_probe_chip._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_pca_add_bus(ptr noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pca_init(ptr noundef %adap)
  %call1 = tail call i32 @i2c_add_adapter(ptr noundef %adap) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pca_init(ptr noundef %adap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 2
  %2 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @pca_algo, ptr %algo, align 8
  %write_byte.i = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write_byte.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void %4(ptr noundef %6, i32 noundef 0, i32 noundef 1) #5
  %7 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_byte.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void %8(ptr noundef %10, i32 noundef 2, i32 noundef 170) #5
  %11 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_byte.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void %12(ptr noundef %14, i32 noundef 0, i32 noundef 4) #5
  %15 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_byte.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void %16(ptr noundef %18, i32 noundef 2, i32 noundef 0) #5
  %19 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_byte.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void %20(ptr noundef %22, i32 noundef 0, i32 noundef 1) #5
  %read_byte.i = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %read_byte.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_byte.i, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call.i = tail call i32 %24(ptr noundef %26, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 170, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 170
  %name.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 12
  %.str.85..str.88.i = select i1 %cmp.i, ptr @.str.85, ptr @.str.88
  %..i = zext i1 %cmp.i to i32
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.85..str.88.i, ptr noundef %name.i) #8
  %27 = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %..i, ptr %27, align 4
  %i2c_clock38 = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %i2c_clock38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i2c_clock38, align 4
  br i1 %cmp.i, label %if.else36, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %30)
  %cmp1 = icmp ugt i32 %30, 7
  br i1 %cmp1, label %if.then2, label %do.end23

if.then2:                                         ; preds = %if.then
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %30, label %do.end [
    i32 330000, label %sw.bb
    i32 288000, label %sw.bb5
    i32 217000, label %sw.bb7
    i32 146000, label %sw.bb9
    i32 88000, label %sw.bb11
    i32 59000, label %sw.bb13
    i32 44000, label %sw.bb15
    i32 36000, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %i2c_clock38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %i2c_clock38, align 4
  br label %if.end

sw.bb5:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %i2c_clock38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %i2c_clock38, align 4
  br label %if.end

sw.bb7:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %i2c_clock38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %i2c_clock38, align 4
  br label %if.end

sw.bb9:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %i2c_clock38 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %i2c_clock38, align 4
  br label %if.end

sw.bb11:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %i2c_clock38 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %i2c_clock38, align 4
  br label %if.end

sw.bb13:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %i2c_clock38 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %i2c_clock38, align 4
  br label %if.end

sw.bb15:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %i2c_clock38 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 6, ptr %i2c_clock38, align 4
  br label %if.end

sw.bb17:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %i2c_clock38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 7, ptr %i2c_clock38, align 4
  br label %if.end

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i) #8
  %40 = ptrtoint ptr %i2c_clock38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 5, ptr %i2c_clock38, align 4
  br label %if.end

do.end23:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end23, %do.end, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb
  %41 = ptrtoint ptr %i2c_clock38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i2c_clock38, align 4
  %arrayidx = getelementptr [8 x i32], ptr @pca_init.freqs, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef %44) #8
  %clock_freq = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %1, i32 0, i32 7, i32 3
  %45 = ptrtoint ptr %clock_freq to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %clock_freq, align 4
  tail call fastcc void @pca_reset(ptr noundef %1)
  br label %if.end107

if.else36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1265800, i32 %30)
  %cmp39 = icmp ugt i32 %30, 1265800
  br i1 %cmp39, label %if.end61.thread, label %if.end49

if.end61.thread:                                  ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i) #8
  %46 = ptrtoint ptr %i2c_clock38 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1265800, ptr %i2c_clock38, align 4
  br label %if.else83

if.end49:                                         ; preds = %if.else36
  call void @__sanitizer_cov_trace_const_cmp4(i32 60300, i32 %30)
  %cmp51 = icmp ult i32 %30, 60300
  br i1 %cmp51, label %if.end77.thread28, label %if.end61

if.end77.thread28:                                ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i) #8
  %47 = ptrtoint ptr %i2c_clock38 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 60300, ptr %i2c_clock38, align 4
  br label %if.then79

if.end61:                                         ; preds = %if.end49
  %div = udiv i32 %30, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %30)
  %cmp64 = icmp ugt i32 %30, 1000000
  br i1 %cmp64, label %if.end61.if.else83_crit_edge, label %if.else66

if.end61.if.else83_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else83

if.else66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %30)
  %cmp68 = icmp ugt i32 %30, 400000
  br i1 %cmp68, label %if.else66.if.else83_crit_edge, label %if.end77

if.else66.if.else83_crit_edge:                    ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else83

if.end77:                                         ; preds = %if.else66
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %30)
  %cmp72 = icmp ugt i32 %30, 100000
  %. = zext i1 %cmp72 to i32
  %.1 = select i1 %cmp72, i32 44, i32 157
  %.2 = select i1 %cmp72, i32 20, i32 134
  %.3 = select i1 %cmp72, i32 58, i32 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 64800, i32 %30)
  %cmp78 = icmp ult i32 %30, 64800
  br i1 %cmp78, label %if.end77.if.then79_crit_edge, label %if.end77.if.else83_crit_edge

if.end77.if.else83_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else83

if.end77.if.then79_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then79

if.then79:                                        ; preds = %if.end77.if.then79_crit_edge, %if.end77.thread28
  %.338 = phi i32 [ 127, %if.end77.thread28 ], [ %.3, %if.end77.if.then79_crit_edge ]
  %.37 = phi i32 [ 0, %if.end77.thread28 ], [ %., %if.end77.if.then79_crit_edge ]
  %div111436 = phi i32 [ 603, %if.end77.thread28 ], [ %div, %if.end77.if.then79_crit_edge ]
  %mul = mul nuw nsw i32 %div111436, %.338
  %sub = sub nsw i32 1000000, %mul
  %mul80 = mul nuw nsw i32 %div111436, 3
  %sub81 = add nsw i32 %mul80, -255
  %div82 = sdiv i32 %sub, %sub81
  br label %if.end92

if.else83:                                        ; preds = %if.end77.if.else83_crit_edge, %if.else66.if.else83_crit_edge, %if.end61.if.else83_crit_edge, %if.end61.thread
  %raise_fall_time.027 = phi i32 [ %.3, %if.end77.if.else83_crit_edge ], [ 22, %if.end61.if.else83_crit_edge ], [ 22, %if.else66.if.else83_crit_edge ], [ 22, %if.end61.thread ]
  %min_thi.026 = phi i32 [ %.2, %if.end77.if.else83_crit_edge ], [ 5, %if.end61.if.else83_crit_edge ], [ 9, %if.else66.if.else83_crit_edge ], [ 5, %if.end61.thread ]
  %min_tlow.025 = phi i32 [ %.1, %if.end77.if.else83_crit_edge ], [ 14, %if.end61.if.else83_crit_edge ], [ 17, %if.else66.if.else83_crit_edge ], [ 14, %if.end61.thread ]
  %mode.024 = phi i32 [ %., %if.end77.if.else83_crit_edge ], [ 3, %if.end61.if.else83_crit_edge ], [ 2, %if.else66.if.else83_crit_edge ], [ 3, %if.end61.thread ]
  %div722 = phi i32 [ %div, %if.end77.if.else83_crit_edge ], [ %div, %if.end61.if.else83_crit_edge ], [ %div, %if.else66.if.else83_crit_edge ], [ 12658, %if.end61.thread ]
  %mul84 = mul nuw nsw i32 %div722, %raise_fall_time.027
  %sub85 = sub nsw i32 1000000, %mul84
  %mul86 = mul nsw i32 %sub85, %min_tlow.025
  %add = add nuw nsw i32 %min_tlow.025, %min_thi.026
  %mul87 = mul nuw nsw i32 %add, 3
  %mul88 = mul nuw nsw i32 %mul87, %div722
  %div89 = sdiv i32 %mul86, %mul88
  %mul90 = mul nsw i32 %div89, %min_thi.026
  %div91 = sdiv i32 %mul90, %min_tlow.025
  br label %if.end92

if.end92:                                         ; preds = %if.else83, %if.then79
  %mode.023 = phi i32 [ %.37, %if.then79 ], [ %mode.024, %if.else83 ]
  %div721 = phi i32 [ %div111436, %if.then79 ], [ %div722, %if.else83 ]
  %tlow.0 = phi i32 [ 255, %if.then79 ], [ %div89, %if.else83 ]
  %thi.0 = phi i32 [ %div82, %if.then79 ], [ %div91, %if.else83 ]
  %bus_settings93 = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %bus_settings93 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mode.023, ptr %bus_settings93, align 4
  %tlow96 = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %1, i32 0, i32 7, i32 1
  %49 = ptrtoint ptr %tlow96 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %tlow.0, ptr %tlow96, align 4
  %thi98 = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %1, i32 0, i32 7, i32 2
  %50 = ptrtoint ptr %thi98 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %thi.0, ptr %thi98, align 4
  tail call fastcc void @pca_reset(ptr noundef %1)
  %mul105 = mul nuw nsw i32 %div721, 100
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i, i32 noundef %mul105) #8
  br label %if.end107

if.end107:                                        ; preds = %if.end92, %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 107374000) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_pca_add_numbered_bus(ptr noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pca_init(ptr noundef %adap)
  %call1 = tail call i32 @i2c_add_numbered_adapter(ptr noundef %adap) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pca_reset(ptr nocapture noundef readonly %adap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %adap, i32 0, i32 6
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %write_byte = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %adap, i32 0, i32 1
  %2 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_byte, align 4
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 4
  tail call void %3(ptr noundef %5, i32 noundef 0, i32 noundef 5) #5
  %6 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_byte, align 4
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 4
  tail call void %7(ptr noundef %9, i32 noundef 2, i32 noundef 165) #5
  %10 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_byte, align 4
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 4
  tail call void %11(ptr noundef %13, i32 noundef 2, i32 noundef 90) #5
  %14 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_byte, align 4
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 4
  tail call void %15(ptr noundef %17, i32 noundef 0, i32 noundef 6) #5
  %18 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_byte, align 4
  %20 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adap, align 4
  %bus_settings = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %adap, i32 0, i32 7
  %22 = ptrtoint ptr %bus_settings to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus_settings, align 4
  tail call void %19(ptr noundef %21, i32 noundef 2, i32 noundef %23) #5
  %24 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_byte, align 4
  %26 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adap, align 4
  tail call void %25(ptr noundef %27, i32 noundef 0, i32 noundef 2) #5
  %28 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_byte, align 4
  %30 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adap, align 4
  %tlow = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %adap, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %tlow to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tlow, align 4
  tail call void %29(ptr noundef %31, i32 noundef 2, i32 noundef %33) #5
  %34 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_byte, align 4
  %36 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adap, align 4
  tail call void %35(ptr noundef %37, i32 noundef 0, i32 noundef 3) #5
  %38 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_byte, align 4
  %40 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adap, align 4
  %thi = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %adap, i32 0, i32 7, i32 2
  %42 = ptrtoint ptr %thi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %thi, align 4
  tail call void %39(ptr noundef %41, i32 noundef 2, i32 noundef %43) #5
  %44 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_byte, align 4
  %46 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adap, align 4
  tail call void %45(ptr noundef %47, i32 noundef 3, i32 noundef 64) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %reset_chip = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %adap, i32 0, i32 4
  %48 = ptrtoint ptr %reset_chip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reset_chip, align 4
  %50 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adap, align 4
  tail call void %49(ptr noundef %51) #5
  %write_byte22 = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %adap, i32 0, i32 1
  %52 = ptrtoint ptr %write_byte22 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_byte22, align 4
  %54 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adap, align 4
  %clock_freq = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %adap, i32 0, i32 7, i32 3
  %56 = ptrtoint ptr %clock_freq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %clock_freq, align 4
  %or = or i32 %57, 64
  tail call void %53(ptr noundef %55, i32 noundef 3, i32 noundef %or) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca_xfer(ptr noundef %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %timeout1 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 7
  %3 = ptrtoint ptr %timeout1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout1, align 4
  %read_byte = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_byte, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call554 = tail call i32 %6(ptr noundef %8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 248, i32 %call554)
  %cmp.not555 = icmp eq i32 %call554, 248
  br i1 %cmp.not555, label %entry.do.body9_crit_edge, label %while.body.lr.ph

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body9

while.body.lr.ph:                                 ; preds = %entry
  %9 = add i32 %4, %2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub616 = sub i32 %10, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub616)
  %cmp2617 = icmp slt i32 %sub616, 0
  br i1 %cmp2617, label %while.body.lr.ph.if.then_crit_edge, label %while.body.lr.ph.do.body_crit_edge

while.body.lr.ph.do.body_crit_edge:               ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

while.body.lr.ph.if.then_crit_edge:               ; preds = %while.body.lr.ph
  br label %if.then

while.body:                                       ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %11, %9
  %cmp2 = icmp slt i32 %sub, 0
  br i1 %cmp2, label %while.body.if.then_crit_edge, label %while.body.do.body_crit_edge

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %while.body.if.then_crit_edge, %while.body.lr.ph.if.then_crit_edge
  tail call void @msleep(i32 noundef 10) #5
  %12 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_byte, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call = tail call i32 %13(ptr noundef %15, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 248, i32 %call)
  %cmp.not = icmp eq i32 %call, 248
  br i1 %cmp.not, label %if.then.do.body9_crit_edge, label %while.body

if.then.do.body9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body9

do.body:                                          ; preds = %while.body.do.body_crit_edge, %while.body.lr.ph.do.body_crit_edge
  %call556.lcssa = phi i32 [ %call554, %while.body.lr.ph.do.body_crit_edge ], [ %call, %while.body.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pca_xfer.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pca_xfer, %cleanup)) #5
          to label %if.then7 [label %cleanup], !srcloc !172

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pca_xfer.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call556.lcssa) #5
  br label %cleanup

do.body9:                                         ; preds = %if.then.do.body9_crit_edge, %entry.do.body9_crit_edge
  %16 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp10 = icmp sgt i32 %16, 0
  br i1 %cmp10, label %do.end19, label %do.body9.if.end75_crit_edge

do.body9.if.end75_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

do.end19:                                         ; preds = %do.body9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %num) #8
  %.pr = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp20 = icmp sgt i32 %.pr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp22561 = icmp sgt i32 %num, 0
  %or.cond = and i1 %cmp20, %cmp22561
  br i1 %or.cond, label %do.end19.for.body_crit_edge, label %do.end19.if.end75_crit_edge

do.end19.if.end75_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

do.end19.for.body_crit_edge:                      ; preds = %do.end19
  br label %for.body

for.body:                                         ; preds = %if.end71.for.body_crit_edge, %do.end19.for.body_crit_edge
  %curmsg.0562 = phi i32 [ %inc73, %if.end71.for.body_crit_edge ], [ 0, %do.end19.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %curmsg.0562
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 4
  %19 = and i16 %18, 127
  %and = zext i16 %19 to i32
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %curmsg.0562, i32 1
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags, align 2
  %22 = and i16 %21, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool26.not = icmp eq i16 %22, 0
  %len39 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %curmsg.0562, i32 2
  %23 = ptrtoint ptr %len39 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %len39, align 4
  %conv40 = zext i16 %24 to i32
  %shl41 = shl nuw nsw i32 %and, 1
  br i1 %tobool26.not, label %do.end37, label %do.end30

do.end30:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %shl41, 1
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %curmsg.0562, i32 noundef %conv40, i32 noundef %and, i32 noundef %or) #8
  br label %if.end71

do.end37:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp44 = icmp eq i16 %24, 0
  %cond = select i1 %cmp44, ptr @.str.28, ptr @.str.29
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %curmsg.0562, i32 noundef %conv40, i32 noundef %and, i32 noundef %shl41, ptr noundef nonnull %cond) #8
  %25 = ptrtoint ptr %len39 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len39, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp50558.not = icmp eq i16 %26, 0
  br i1 %cmp50558.not, label %do.end37.do.end68_crit_edge, label %do.end55.lr.ph

do.end37.do.end68_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end68

do.end55.lr.ph:                                   ; preds = %do.end37
  %conv49557 = zext i16 %26 to i32
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %curmsg.0562, i32 3
  br label %do.end55

do.end55:                                         ; preds = %do.end55.do.end55_crit_edge, %do.end55.lr.ph
  %conv49560 = phi i32 [ %conv49557, %do.end55.lr.ph ], [ %conv49, %do.end55.do.end55_crit_edge ]
  %i.0559 = phi i32 [ 0, %do.end55.lr.ph ], [ %inc, %do.end55.do.end55_crit_edge ]
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf, align 4
  %arrayidx57 = getelementptr i8, ptr %28, i32 %i.0559
  %29 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %30 to i32
  %sub61 = add nsw i32 %conv49560, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0559, i32 %sub61)
  %cmp62 = icmp eq i32 %i.0559, %sub61
  %cond64 = select i1 %cmp62, ptr @.str.28, ptr @.str.29
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv58, ptr noundef nonnull %cond64) #8
  %inc = add nuw nsw i32 %i.0559, 1
  %31 = ptrtoint ptr %len39 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %len39, align 4
  %conv49 = zext i16 %32 to i32
  %cmp50 = icmp ult i32 %inc, %conv49
  br i1 %cmp50, label %do.end55.do.end55_crit_edge, label %do.end55.do.end68_crit_edge

do.end55.do.end68_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end68

do.end55.do.end55_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end55

do.end68:                                         ; preds = %do.end55.do.end68_crit_edge, %do.end37.do.end68_crit_edge
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #8
  br label %if.end71

if.end71:                                         ; preds = %do.end68, %do.end30
  %inc73 = add nuw nsw i32 %curmsg.0562, 1
  %exitcond.not = icmp eq i32 %inc73, %num
  br i1 %exitcond.not, label %if.end71.if.end75_crit_edge, label %if.end71.for.body_crit_edge

if.end71.for.body_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end71.if.end75_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

if.end75:                                         ; preds = %if.end71.if.end75_crit_edge, %do.end19.if.end75_crit_edge, %do.body9.if.end75_crit_edge
  %write_byte.i527 = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %1, i32 0, i32 1
  %wait_for_completion.i528 = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %1, i32 0, i32 3
  %dev273 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  br label %while.cond76

while.cond76:                                     ; preds = %sw.epilog.while.cond76_crit_edge, %if.end75
  %completed.0 = phi i32 [ 1, %if.end75 ], [ %completed.1, %sw.epilog.while.cond76_crit_edge ]
  %numbytes.0 = phi i32 [ 0, %if.end75 ], [ %numbytes.1, %sw.epilog.while.cond76_crit_edge ]
  %curmsg.1 = phi i32 [ 0, %if.end75 ], [ %curmsg.2, %sw.epilog.while.cond76_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %curmsg.1, i32 %num)
  %cmp77 = icmp slt i32 %curmsg.1, %num
  br i1 %cmp77, label %while.body79, label %while.cond76.do.body278_crit_edge

while.cond76.do.body278_crit_edge:                ; preds = %while.cond76
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body278

while.body79:                                     ; preds = %while.cond76
  %33 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_byte, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call82 = tail call i32 %34(ptr noundef %36, i32 noundef 0) #5
  %37 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp84 = icmp sgt i32 %37, 2
  br i1 %cmp84, label %do.end89, label %while.body79.do.end94_crit_edge

while.body79.do.end94_crit_edge:                  ; preds = %while.body79
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end94

do.end89:                                         ; preds = %while.body79
  call void @__sanitizer_cov_trace_pc() #7
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %call82) #8
  br label %do.end94

do.end94:                                         ; preds = %do.end89, %while.body79.do.end94_crit_edge
  %38 = tail call i32 @llvm.fshl.i32(i32 %call82, i32 %call82, i32 29)
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %38, label %do.end272 [
    i32 31, label %sw.bb
    i32 1, label %do.end94.sw.bb97_crit_edge
    i32 2, label %do.end94.sw.bb97_crit_edge652
    i32 3, label %do.end94.sw.bb99_crit_edge
    i32 5, label %do.end94.sw.bb99_crit_edge653
    i32 4, label %do.body118
    i32 8, label %sw.bb130
    i32 10, label %sw.bb136
    i32 9, label %do.body160
    i32 6, label %do.body173
    i32 7, label %do.body186
    i32 11, label %sw.bb199
    i32 14, label %do.body232
    i32 15, label %do.end94.do.body245_crit_edge
    i32 18, label %do.end94.do.body245_crit_edge654
    i32 0, label %do.body258
  ]

do.end94.do.body245_crit_edge654:                 ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body245

do.end94.do.body245_crit_edge:                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body245

do.end94.sw.bb99_crit_edge653:                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb99

do.end94.sw.bb99_crit_edge:                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb99

do.end94.sw.bb97_crit_edge652:                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb97

do.end94.sw.bb97_crit_edge:                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb97

sw.bb:                                            ; preds = %do.end94
  %40 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_byte, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call.i = tail call i32 %41(ptr noundef %43, i32 noundef 3) #5
  %44 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i = icmp sgt i32 %44, 1
  br i1 %cmp.i, label %do.end.i, label %sw.bb.pca_start.exit_crit_edge

sw.bb.pca_start.exit_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %pca_start.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #8
  br label %pca_start.exit

pca_start.exit:                                   ; preds = %do.end.i, %sw.bb.pca_start.exit_crit_edge
  %or.i = and i32 %call.i, -57
  %and.i = or i32 %or.i, 32
  %45 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_byte.i527, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  tail call void %46(ptr noundef %48, i32 noundef 3, i32 noundef %and.i) #5
  %49 = ptrtoint ptr %wait_for_completion.i528 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wait_for_completion.i528, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %call7.i = tail call i32 %50(ptr noundef %52) #5
  br label %sw.epilog

sw.bb97:                                          ; preds = %do.end94.sw.bb97_crit_edge, %do.end94.sw.bb97_crit_edge652
  %arrayidx95 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %curmsg.1
  %53 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_byte, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %call.i391 = tail call i32 %54(ptr noundef %56, i32 noundef 3) #5
  %57 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx95, align 4
  %conv.i.i = zext i16 %58 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 1
  %flags.i.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %curmsg.1, i32 1
  %59 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %flags.i.i, align 2
  %61 = and i16 %60, 1
  %62 = zext i16 %61 to i32
  %shl.i.masked.i = and i32 %shl.i.i, 254
  %conv.i = or i32 %shl.i.masked.i, %62
  %63 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i392 = icmp sgt i32 %63, 1
  br i1 %cmp.i392, label %do.end.i394, label %sw.bb97.pca_address.exit_crit_edge

sw.bb97.pca_address.exit_crit_edge:               ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #7
  br label %pca_address.exit

do.end.i394:                                      ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool.not.i = icmp eq i16 %61, 0
  %cond.i = select i1 %tobool.not.i, i32 87, i32 82
  %call7.i393 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %conv.i.i, i32 noundef %cond.i, i32 noundef %conv.i) #8
  br label %pca_address.exit

pca_address.exit:                                 ; preds = %do.end.i394, %sw.bb97.pca_address.exit_crit_edge
  %64 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_byte.i527, align 4
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  tail call void %65(ptr noundef %67, i32 noundef 1, i32 noundef %conv.i) #5
  %and11.i = and i32 %call.i391, -57
  %68 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_byte.i527, align 4
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  tail call void %69(ptr noundef %71, i32 noundef 3, i32 noundef %and11.i) #5
  %72 = ptrtoint ptr %wait_for_completion.i528 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wait_for_completion.i528, align 4
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %call15.i = tail call i32 %73(ptr noundef %75) #5
  br label %sw.epilog

sw.bb99:                                          ; preds = %do.end94.sw.bb99_crit_edge, %do.end94.sw.bb99_crit_edge653
  %len100 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %curmsg.1, i32 2
  %76 = ptrtoint ptr %len100 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %len100, align 4
  %conv101 = zext i16 %77 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %numbytes.0, i32 %conv101)
  %cmp102 = icmp slt i32 %numbytes.0, %conv101
  br i1 %cmp102, label %if.then104, label %if.end109

if.then104:                                       ; preds = %sw.bb99
  %buf105 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %curmsg.1, i32 3
  %78 = ptrtoint ptr %buf105 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %buf105, align 4
  %arrayidx106 = getelementptr i8, ptr %79, i32 %numbytes.0
  %80 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx106, align 1
  %82 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read_byte, align 4
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  %call.i398 = tail call i32 %83(ptr noundef %85, i32 noundef 3) #5
  %86 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp.i399 = icmp sgt i32 %86, 1
  %conv.i400 = zext i8 %81 to i32
  br i1 %cmp.i399, label %do.end.i402, label %if.then104.pca_tx_byte.exit_crit_edge

if.then104.pca_tx_byte.exit_crit_edge:            ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  br label %pca_tx_byte.exit

do.end.i402:                                      ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i401 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %conv.i400) #8
  br label %pca_tx_byte.exit

pca_tx_byte.exit:                                 ; preds = %do.end.i402, %if.then104.pca_tx_byte.exit_crit_edge
  %87 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write_byte.i527, align 4
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  tail call void %88(ptr noundef %90, i32 noundef 1, i32 noundef %conv.i400) #5
  %and.i404 = and i32 %call.i398, -57
  %91 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_byte.i527, align 4
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  tail call void %92(ptr noundef %94, i32 noundef 3, i32 noundef %and.i404) #5
  %95 = ptrtoint ptr %wait_for_completion.i528 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wait_for_completion.i528, align 4
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 4
  %call10.i = tail call i32 %96(ptr noundef %98) #5
  %inc108 = add nsw i32 %numbytes.0, 1
  br label %sw.epilog

if.end109:                                        ; preds = %sw.bb99
  %inc110 = add nsw i32 %curmsg.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc110, i32 %num)
  %cmp111 = icmp eq i32 %inc110, %num
  %99 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read_byte, align 4
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  %call.i407 = tail call i32 %100(ptr noundef %102, i32 noundef 3) #5
  %103 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %103)
  %cmp.i408 = icmp sgt i32 %103, 1
  br i1 %cmp111, label %if.then113, label %if.else114

if.then113:                                       ; preds = %if.end109
  br i1 %cmp.i408, label %do.end.i410, label %if.then113.pca_stop.exit_crit_edge

if.then113.pca_stop.exit_crit_edge:               ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #7
  br label %pca_stop.exit

do.end.i410:                                      ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i409 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #8
  br label %pca_stop.exit

pca_stop.exit:                                    ; preds = %do.end.i410, %if.then113.pca_stop.exit_crit_edge
  %or.i411 = and i32 %call.i407, -57
  %and.i412 = or i32 %or.i411, 16
  %104 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write_byte.i527, align 4
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  tail call void %105(ptr noundef %107, i32 noundef 3, i32 noundef %and.i412) #5
  br label %sw.epilog

if.else114:                                       ; preds = %if.end109
  br i1 %cmp.i408, label %do.end.i418, label %if.else114.pca_repeated_start.exit_crit_edge

if.else114.pca_repeated_start.exit_crit_edge:     ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #7
  br label %pca_repeated_start.exit

do.end.i418:                                      ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i417 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #8
  br label %pca_repeated_start.exit

pca_repeated_start.exit:                          ; preds = %do.end.i418, %if.else114.pca_repeated_start.exit_crit_edge
  %or.i419 = and i32 %call.i407, -57
  %and.i420 = or i32 %or.i419, 32
  %108 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write_byte.i527, align 4
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  tail call void %109(ptr noundef %111, i32 noundef 3, i32 noundef %and.i420) #5
  %112 = ptrtoint ptr %wait_for_completion.i528 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %wait_for_completion.i528, align 4
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 4
  %call7.i423 = tail call i32 %113(ptr noundef %115) #5
  br label %sw.epilog

do.body118:                                       ; preds = %do.end94
  %116 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp119 = icmp sgt i32 %116, 1
  br i1 %cmp119, label %do.end124, label %do.body118.do.end129_crit_edge

do.body118.do.end129_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end129

do.end124:                                        ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #7
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #8
  br label %do.end129

do.end129:                                        ; preds = %do.end124, %do.body118.do.end129_crit_edge
  %117 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %read_byte, align 4
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 4
  %call.i425 = tail call i32 %118(ptr noundef %120, i32 noundef 3) #5
  %121 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %121)
  %cmp.i426 = icmp sgt i32 %121, 1
  br i1 %cmp.i426, label %do.end.i428, label %do.end129.pca_stop.exit432_crit_edge

do.end129.pca_stop.exit432_crit_edge:             ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %pca_stop.exit432

do.end.i428:                                      ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i427 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #8
  br label %pca_stop.exit432

pca_stop.exit432:                                 ; preds = %do.end.i428, %do.end129.pca_stop.exit432_crit_edge
  %or.i429 = and i32 %call.i425, -57
  %and.i430 = or i32 %or.i429, 16
  %122 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %write_byte.i527, align 4
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %1, align 4
  tail call void %123(ptr noundef %125, i32 noundef 3, i32 noundef %and.i430) #5
  br label %do.body278

sw.bb130:                                         ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #7
  %len131 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %curmsg.1, i32 2
  %126 = ptrtoint ptr %len131 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %len131, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %127)
  %cmp133 = icmp ult i16 %127, 2
  %128 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %read_byte, align 4
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 4
  %call.i434 = tail call i32 %129(ptr noundef %131, i32 noundef 3) #5
  %and.i435 = and i32 %call.i434, -185
  %or.i437 = or i32 %and.i435, 128
  %spec.select.i = select i1 %cmp133, i32 %and.i435, i32 %or.i437
  %132 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write_byte.i527, align 4
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 4
  tail call void %133(ptr noundef %135, i32 noundef 3, i32 noundef %spec.select.i) #5
  %136 = ptrtoint ptr %wait_for_completion.i528 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %wait_for_completion.i528, align 4
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %1, align 4
  %call3.i = tail call i32 %137(ptr noundef %139) #5
  br label %sw.epilog

sw.bb136:                                         ; preds = %do.end94
  %len137 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %curmsg.1, i32 2
  %140 = ptrtoint ptr %len137 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %len137, align 4
  %conv138 = zext i16 %141 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %numbytes.0, i32 %conv138)
  %cmp139 = icmp slt i32 %numbytes.0, %conv138
  br i1 %cmp139, label %if.then141, label %if.end151

if.then141:                                       ; preds = %sw.bb136
  %buf142 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %curmsg.1, i32 3
  %142 = ptrtoint ptr %buf142 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %buf142, align 4
  %arrayidx143 = getelementptr i8, ptr %143, i32 %numbytes.0
  %144 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %read_byte, align 4
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %1, align 4
  %call.i441 = tail call i32 %145(ptr noundef %147, i32 noundef 1) #5
  %conv.i442 = trunc i32 %call.i441 to i8
  %148 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv.i442, ptr %arrayidx143, align 1
  %149 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %149)
  %cmp.i443 = icmp sgt i32 %149, 1
  br i1 %cmp.i443, label %do.end.i444, label %if.then141.pca_rx_byte.exit_crit_edge

if.then141.pca_rx_byte.exit_crit_edge:            ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #7
  br label %pca_rx_byte.exit

do.end.i444:                                      ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i = and i32 %call.i441, 255
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %conv3.i, ptr noundef nonnull @.str.83) #8
  br label %pca_rx_byte.exit

pca_rx_byte.exit:                                 ; preds = %do.end.i444, %if.then141.pca_rx_byte.exit_crit_edge
  %inc144 = add nsw i32 %numbytes.0, 1
  %150 = ptrtoint ptr %len137 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %len137, align 4
  %conv146 = zext i16 %151 to i32
  %sub147 = add nsw i32 %conv146, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc144, i32 %sub147)
  %cmp148.not = icmp slt i32 %inc144, %sub147
  %152 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %read_byte, align 4
  %154 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %1, align 4
  %call.i446 = tail call i32 %153(ptr noundef %155, i32 noundef 3) #5
  %and.i447 = and i32 %call.i446, -185
  %or.i449 = or i32 %and.i447, 128
  %spec.select.i450 = select i1 %cmp148.not, i32 %or.i449, i32 %and.i447
  %156 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %write_byte.i527, align 4
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %1, align 4
  tail call void %157(ptr noundef %159, i32 noundef 3, i32 noundef %spec.select.i450) #5
  %160 = ptrtoint ptr %wait_for_completion.i528 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %wait_for_completion.i528, align 4
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %1, align 4
  %call3.i453 = tail call i32 %161(ptr noundef %163) #5
  br label %sw.epilog

if.end151:                                        ; preds = %sw.bb136
  %inc152 = add nsw i32 %curmsg.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc152, i32 %num)
  %cmp153 = icmp eq i32 %inc152, %num
  %164 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %read_byte, align 4
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %1, align 4
  %call.i455 = tail call i32 %165(ptr noundef %167, i32 noundef 3) #5
  %168 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %168)
  %cmp.i456 = icmp sgt i32 %168, 1
  br i1 %cmp153, label %if.then155, label %if.else156

if.then155:                                       ; preds = %if.end151
  br i1 %cmp.i456, label %do.end.i458, label %if.then155.pca_stop.exit462_crit_edge

if.then155.pca_stop.exit462_crit_edge:            ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #7
  br label %pca_stop.exit462

do.end.i458:                                      ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i457 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #8
  br label %pca_stop.exit462

pca_stop.exit462:                                 ; preds = %do.end.i458, %if.then155.pca_stop.exit462_crit_edge
  %or.i459 = and i32 %call.i455, -57
  %and.i460 = or i32 %or.i459, 16
  %169 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %write_byte.i527, align 4
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  tail call void %170(ptr noundef %172, i32 noundef 3, i32 noundef %and.i460) #5
  br label %sw.epilog

if.else156:                                       ; preds = %if.end151
  br i1 %cmp.i456, label %do.end.i467, label %if.else156.pca_repeated_start.exit473_crit_edge

if.else156.pca_repeated_start.exit473_crit_edge:  ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #7
  br label %pca_repeated_start.exit473

do.end.i467:                                      ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i466 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #8
  br label %pca_repeated_start.exit473

pca_repeated_start.exit473:                       ; preds = %do.end.i467, %if.else156.pca_repeated_start.exit473_crit_edge
  %or.i468 = and i32 %call.i455, -57
  %and.i469 = or i32 %or.i468, 32
  %173 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %write_byte.i527, align 4
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %1, align 4
  tail call void %174(ptr noundef %176, i32 noundef 3, i32 noundef %and.i469) #5
  %177 = ptrtoint ptr %wait_for_completion.i528 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %wait_for_completion.i528, align 4
  %179 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %1, align 4
  %call7.i472 = tail call i32 %178(ptr noundef %180) #5
  br label %sw.epilog

do.body160:                                       ; preds = %do.end94
  %181 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %181)
  %cmp161 = icmp sgt i32 %181, 1
  br i1 %cmp161, label %do.end166, label %do.body160.do.end171_crit_edge

do.body160.do.end171_crit_edge:                   ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end171

do.end166:                                        ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #7
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #8
  br label %do.end171

do.end171:                                        ; preds = %do.end166, %do.body160.do.end171_crit_edge
  %182 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %read_byte, align 4
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %1, align 4
  %call.i475 = tail call i32 %183(ptr noundef %185, i32 noundef 3) #5
  %186 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %186)
  %cmp.i476 = icmp sgt i32 %186, 1
  br i1 %cmp.i476, label %do.end.i478, label %do.end171.pca_stop.exit482_crit_edge

do.end171.pca_stop.exit482_crit_edge:             ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #7
  br label %pca_stop.exit482

do.end.i478:                                      ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i477 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #8
  br label %pca_stop.exit482

pca_stop.exit482:                                 ; preds = %do.end.i478, %do.end171.pca_stop.exit482_crit_edge
  %or.i479 = and i32 %call.i475, -57
  %and.i480 = or i32 %or.i479, 16
  %187 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %write_byte.i527, align 4
  %189 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %1, align 4
  tail call void %188(ptr noundef %190, i32 noundef 3, i32 noundef %and.i480) #5
  br label %do.body278

do.body173:                                       ; preds = %do.end94
  %191 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %191)
  %cmp174 = icmp sgt i32 %191, 1
  br i1 %cmp174, label %do.end179, label %do.body173.do.end184_crit_edge

do.body173.do.end184_crit_edge:                   ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end184

do.end179:                                        ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #7
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #8
  br label %do.end184

do.end184:                                        ; preds = %do.end179, %do.body173.do.end184_crit_edge
  %192 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %read_byte, align 4
  %194 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %1, align 4
  %call.i484 = tail call i32 %193(ptr noundef %195, i32 noundef 3) #5
  %196 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %196)
  %cmp.i485 = icmp sgt i32 %196, 1
  br i1 %cmp.i485, label %do.end.i487, label %do.end184.pca_stop.exit491_crit_edge

do.end184.pca_stop.exit491_crit_edge:             ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #7
  br label %pca_stop.exit491

do.end.i487:                                      ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i486 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #8
  br label %pca_stop.exit491

pca_stop.exit491:                                 ; preds = %do.end.i487, %do.end184.pca_stop.exit491_crit_edge
  %or.i488 = and i32 %call.i484, -57
  %and.i489 = or i32 %or.i488, 16
  %197 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %write_byte.i527, align 4
  %199 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %1, align 4
  tail call void %198(ptr noundef %200, i32 noundef 3, i32 noundef %and.i489) #5
  br label %do.body278

do.body186:                                       ; preds = %do.end94
  %201 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %201)
  %cmp187 = icmp sgt i32 %201, 1
  br i1 %cmp187, label %do.end192, label %do.body186.do.end197_crit_edge

do.body186.do.end197_crit_edge:                   ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end197

do.end192:                                        ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #7
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #8
  br label %do.end197

do.end197:                                        ; preds = %do.end192, %do.body186.do.end197_crit_edge
  %202 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %read_byte, align 4
  %204 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %1, align 4
  %call.i493 = tail call i32 %203(ptr noundef %205, i32 noundef 3) #5
  %206 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %206)
  %cmp.i494 = icmp sgt i32 %206, 1
  br i1 %cmp.i494, label %do.end.i496, label %do.end197.pca_start.exit502_crit_edge

do.end197.pca_start.exit502_crit_edge:            ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #7
  br label %pca_start.exit502

do.end.i496:                                      ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i495 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #8
  br label %pca_start.exit502

pca_start.exit502:                                ; preds = %do.end.i496, %do.end197.pca_start.exit502_crit_edge
  %or.i497 = and i32 %call.i493, -57
  %and.i498 = or i32 %or.i497, 32
  %207 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %write_byte.i527, align 4
  %209 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %1, align 4
  tail call void %208(ptr noundef %210, i32 noundef 3, i32 noundef %and.i498) #5
  %211 = ptrtoint ptr %wait_for_completion.i528 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %wait_for_completion.i528, align 4
  %213 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %1, align 4
  %call7.i501 = tail call i32 %212(ptr noundef %214) #5
  br label %do.body278

sw.bb199:                                         ; preds = %do.end94
  %len200 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %curmsg.1, i32 2
  %215 = ptrtoint ptr %len200 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %len200, align 4
  %conv201 = zext i16 %216 to i32
  %sub202 = add nsw i32 %conv201, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %numbytes.0, i32 %sub202)
  %cmp203 = icmp eq i32 %numbytes.0, %sub202
  br i1 %cmp203, label %if.then205, label %do.body216

if.then205:                                       ; preds = %sw.bb199
  %buf206 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %curmsg.1, i32 3
  %217 = ptrtoint ptr %buf206 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %buf206, align 4
  %arrayidx207 = getelementptr i8, ptr %218, i32 %numbytes.0
  %219 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %read_byte, align 4
  %221 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %1, align 4
  %call.i504 = tail call i32 %220(ptr noundef %222, i32 noundef 1) #5
  %conv.i505 = trunc i32 %call.i504 to i8
  %223 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %conv.i505, ptr %arrayidx207, align 1
  %224 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %224)
  %cmp.i506 = icmp sgt i32 %224, 1
  br i1 %cmp.i506, label %do.end.i509, label %if.then205.pca_rx_byte.exit510_crit_edge

if.then205.pca_rx_byte.exit510_crit_edge:         ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #7
  br label %pca_rx_byte.exit510

do.end.i509:                                      ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i507 = and i32 %call.i504, 255
  %call4.i508 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %conv3.i507, ptr noundef nonnull @.str.84) #8
  br label %pca_rx_byte.exit510

pca_rx_byte.exit510:                              ; preds = %do.end.i509, %if.then205.pca_rx_byte.exit510_crit_edge
  %inc208 = add nsw i32 %curmsg.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc208, i32 %num)
  %cmp209 = icmp eq i32 %inc208, %num
  %225 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %read_byte, align 4
  %227 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %1, align 4
  %call.i512 = tail call i32 %226(ptr noundef %228, i32 noundef 3) #5
  %229 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %229)
  %cmp.i513 = icmp sgt i32 %229, 1
  br i1 %cmp209, label %if.then211, label %if.else212

if.then211:                                       ; preds = %pca_rx_byte.exit510
  br i1 %cmp.i513, label %do.end.i515, label %if.then211.pca_stop.exit519_crit_edge

if.then211.pca_stop.exit519_crit_edge:            ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #7
  br label %pca_stop.exit519

do.end.i515:                                      ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i514 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #8
  br label %pca_stop.exit519

pca_stop.exit519:                                 ; preds = %do.end.i515, %if.then211.pca_stop.exit519_crit_edge
  %or.i516 = and i32 %call.i512, -57
  %and.i517 = or i32 %or.i516, 16
  %230 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %write_byte.i527, align 4
  %232 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %1, align 4
  tail call void %231(ptr noundef %233, i32 noundef 3, i32 noundef %and.i517) #5
  br label %sw.epilog

if.else212:                                       ; preds = %pca_rx_byte.exit510
  br i1 %cmp.i513, label %do.end.i524, label %if.else212.pca_repeated_start.exit530_crit_edge

if.else212.pca_repeated_start.exit530_crit_edge:  ; preds = %if.else212
  call void @__sanitizer_cov_trace_pc() #7
  br label %pca_repeated_start.exit530

do.end.i524:                                      ; preds = %if.else212
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i523 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #8
  br label %pca_repeated_start.exit530

pca_repeated_start.exit530:                       ; preds = %do.end.i524, %if.else212.pca_repeated_start.exit530_crit_edge
  %or.i525 = and i32 %call.i512, -57
  %and.i526 = or i32 %or.i525, 32
  %234 = ptrtoint ptr %write_byte.i527 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %write_byte.i527, align 4
  %236 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %1, align 4
  tail call void %235(ptr noundef %237, i32 noundef 3, i32 noundef %and.i526) #5
  %238 = ptrtoint ptr %wait_for_completion.i528 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %wait_for_completion.i528, align 4
  %240 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %1, align 4
  %call7.i529 = tail call i32 %239(ptr noundef %241) #5
  br label %sw.epilog

do.body216:                                       ; preds = %sw.bb199
  %242 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %242)
  %cmp217 = icmp sgt i32 %242, 1
  br i1 %cmp217, label %do.end222, label %do.body216.do.end229_crit_edge

do.body216.do.end229_crit_edge:                   ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end229

do.end222:                                        ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #7
  %conv201.le = zext i16 %216 to i32
  %call226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %numbytes.0, i32 noundef %conv201.le) #8
  br label %do.end229

do.end229:                                        ; preds = %do.end222, %do.body216.do.end229_crit_edge
  tail call fastcc void @pca_stop(ptr noundef %1)
  br label %do.body278

do.body232:                                       ; preds = %do.end94
  %243 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %243)
  %cmp233 = icmp sgt i32 %243, 1
  br i1 %cmp233, label %do.end238, label %do.body232.do.end243_crit_edge

do.body232.do.end243_crit_edge:                   ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end243

do.end238:                                        ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #7
  %call240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #8
  br label %do.end243

do.end243:                                        ; preds = %do.end238, %do.body232.do.end243_crit_edge
  tail call fastcc void @pca_reset(ptr noundef %1)
  br label %do.body278

do.body245:                                       ; preds = %do.end94.do.body245_crit_edge, %do.end94.do.body245_crit_edge654
  %244 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %244)
  %cmp246 = icmp sgt i32 %244, 1
  br i1 %cmp246, label %do.end251, label %do.body245.do.end256_crit_edge

do.body245.do.end256_crit_edge:                   ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end256

do.end251:                                        ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #7
  %call253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #8
  br label %do.end256

do.end256:                                        ; preds = %do.end251, %do.body245.do.end256_crit_edge
  tail call fastcc void @pca_reset(ptr noundef %1)
  br label %do.body278

do.body258:                                       ; preds = %do.end94
  %245 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %245)
  %cmp259 = icmp sgt i32 %245, 1
  br i1 %cmp259, label %do.end264, label %do.body258.do.end269_crit_edge

do.body258.do.end269_crit_edge:                   ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end269

do.end264:                                        ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #7
  %call266 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #8
  br label %do.end269

do.end269:                                        ; preds = %do.end264, %do.body258.do.end269_crit_edge
  tail call fastcc void @pca_reset(ptr noundef %1)
  br label %do.body278

do.end272:                                        ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev273, ptr noundef nonnull @.str.64, i32 noundef %call82) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end272, %pca_repeated_start.exit530, %pca_stop.exit519, %pca_repeated_start.exit473, %pca_stop.exit462, %pca_rx_byte.exit, %sw.bb130, %pca_repeated_start.exit, %pca_stop.exit, %pca_tx_byte.exit, %pca_address.exit, %pca_start.exit
  %completed.1 = phi i32 [ %completed.0, %do.end272 ], [ %completed.0, %pca_stop.exit519 ], [ %call7.i529, %pca_repeated_start.exit530 ], [ %call3.i453, %pca_rx_byte.exit ], [ %completed.0, %pca_stop.exit462 ], [ %call7.i472, %pca_repeated_start.exit473 ], [ %call3.i, %sw.bb130 ], [ %call10.i, %pca_tx_byte.exit ], [ %completed.0, %pca_stop.exit ], [ %call7.i423, %pca_repeated_start.exit ], [ %call15.i, %pca_address.exit ], [ %call7.i, %pca_start.exit ]
  %numbytes.1 = phi i32 [ %numbytes.0, %do.end272 ], [ 0, %pca_stop.exit519 ], [ 0, %pca_repeated_start.exit530 ], [ %inc144, %pca_rx_byte.exit ], [ 0, %pca_stop.exit462 ], [ 0, %pca_repeated_start.exit473 ], [ %numbytes.0, %sw.bb130 ], [ %inc108, %pca_tx_byte.exit ], [ 0, %pca_stop.exit ], [ 0, %pca_repeated_start.exit ], [ %numbytes.0, %pca_address.exit ], [ %numbytes.0, %pca_start.exit ]
  %curmsg.2 = phi i32 [ %curmsg.1, %do.end272 ], [ %num, %pca_stop.exit519 ], [ %inc208, %pca_repeated_start.exit530 ], [ %curmsg.1, %pca_rx_byte.exit ], [ %num, %pca_stop.exit462 ], [ %inc152, %pca_repeated_start.exit473 ], [ %curmsg.1, %sw.bb130 ], [ %curmsg.1, %pca_tx_byte.exit ], [ %num, %pca_stop.exit ], [ %inc110, %pca_repeated_start.exit ], [ %curmsg.1, %pca_address.exit ], [ %curmsg.1, %pca_start.exit ]
  %tobool274.not = icmp eq i32 %completed.1, 0
  br i1 %tobool274.not, label %sw.epilog.do.body278_crit_edge, label %sw.epilog.while.cond76_crit_edge

sw.epilog.while.cond76_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond76

sw.epilog.do.body278_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body278

do.body278:                                       ; preds = %sw.epilog.do.body278_crit_edge, %do.end269, %do.end256, %do.end243, %do.end229, %pca_start.exit502, %pca_stop.exit491, %pca_stop.exit482, %pca_stop.exit432, %while.cond76.do.body278_crit_edge
  %ret.0 = phi i32 [ -5, %do.end269 ], [ -5, %do.end256 ], [ -5, %do.end243 ], [ -5, %do.end229 ], [ -5, %pca_start.exit502 ], [ -5, %pca_stop.exit491 ], [ -6, %pca_stop.exit482 ], [ -6, %pca_stop.exit432 ], [ %curmsg.1, %while.cond76.do.body278_crit_edge ], [ -5, %sw.epilog.do.body278_crit_edge ]
  %curmsg.3 = phi i32 [ %curmsg.1, %do.end269 ], [ %curmsg.1, %do.end256 ], [ %curmsg.1, %do.end243 ], [ %curmsg.1, %do.end229 ], [ %curmsg.1, %pca_start.exit502 ], [ %curmsg.1, %pca_stop.exit491 ], [ %curmsg.1, %pca_stop.exit482 ], [ %curmsg.1, %pca_stop.exit432 ], [ %curmsg.1, %while.cond76.do.body278_crit_edge ], [ %curmsg.2, %sw.epilog.do.body278_crit_edge ]
  %246 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %cmp279 = icmp sgt i32 %246, 0
  br i1 %cmp279, label %do.end284, label %do.body278.cleanup_crit_edge

do.body278.cleanup_crit_edge:                     ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end284:                                        ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #7
  %247 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %read_byte, align 4
  %249 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %1, align 4
  %call288 = tail call i32 %248(ptr noundef %250, i32 noundef 0) #5
  %251 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %read_byte, align 4
  %253 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %1, align 4
  %call291 = tail call i32 %252(ptr noundef %254, i32 noundef 3) #5
  %call292 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %curmsg.3, i32 noundef %num, i32 noundef %call288, i32 noundef %call291) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end284, %do.body278.cleanup_crit_edge, %if.then7, %do.body
  %retval.0 = phi i32 [ -16, %if.then7 ], [ %ret.0, %do.end284 ], [ %ret.0, %do.body278.cleanup_crit_edge ], [ -16, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pca_func(ptr nocapture noundef readnone %adap) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pca_stop(ptr nocapture noundef readonly %adap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read_byte = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_byte, align 4
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef 3) #5
  %4 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %or = and i32 %call, -57
  %and = or i32 %or, 16
  %write_byte = getelementptr inbounds %struct.i2c_algo_pca_data, ptr %adap, i32 0, i32 1
  %5 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_byte, align 4
  %7 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adap, align 4
  tail call void %6(ptr noundef %8, i32 noundef 3, i32 noundef %and) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @__ksymtab_i2c_pca_add_bus, !1, !"__ksymtab_i2c_pca_add_bus", i1 false, i1 false}
!1 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 542, i32 1}
!2 = !{ptr @__ksymtab_i2c_pca_add_numbered_bus, !3, !"__ksymtab_i2c_pca_add_numbered_bus", i1 false, i1 false}
!3 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 554, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 556, i32 1}
!6 = !{ptr @__UNIQUE_ID_author290, !7, !"__UNIQUE_ID_author290", i1 false, i1 false}
!7 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 557, i32 1}
!8 = !{ptr @__UNIQUE_ID_description291, !9, !"__UNIQUE_ID_description291", i1 false, i1 false}
!9 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 558, i32 1}
!10 = !{ptr @__UNIQUE_ID_file292, !11, !"__UNIQUE_ID_file292", i1 false, i1 false}
!11 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 559, i32 1}
!12 = !{ptr @__UNIQUE_ID_license293, !11, !"__UNIQUE_ID_license293", i1 false, i1 false}
!13 = !{ptr @__param_i2c_debug, !14, !"__param_i2c_debug", i1 false, i1 false}
!14 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 561, i32 1}
!15 = !{ptr @__UNIQUE_ID_i2c_debugtype294, !14, !"__UNIQUE_ID_i2c_debugtype294", i1 false, i1 false}
!16 = !{ptr @i2c_debug, !17, !"i2c_debug", i1 false, i1 false}
!17 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 24, i32 12}
!18 = !{ptr @pca_init.freqs, !19, !"freqs", i1 false, i1 false}
!19 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 398, i32 14}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 428, i32 5}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pca_init._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @pca_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 434, i32 4}
!28 = !{ptr @pca_init._entry.3, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pca_init._entry_ptr.5, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 441, i32 3}
!32 = !{ptr @pca_init._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pca_init._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 464, i32 4}
!36 = !{ptr @pca_init._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @pca_init._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 470, i32 4}
!40 = !{ptr @pca_init._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pca_init._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 521, i32 3}
!44 = !{ptr @pca_init._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pca_init._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @pca_algo, !47, !"pca_algo", i1 false, i1 false}
!47 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 363, i32 35}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 199, i32 4}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @pca_xfer.__UNIQUE_ID_ddebug288, !49, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 205, i32 2}
!55 = !{ptr @pca_xfer._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @pca_xfer._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 215, i32 5}
!59 = !{ptr @pca_xfer._entry.22, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @pca_xfer._entry_ptr.24, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 218, i32 5}
!63 = !{ptr @pca_xfer._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @pca_xfer._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 222, i32 6}
!69 = !{ptr @pca_xfer._entry.30, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @pca_xfer._entry_ptr.32, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 223, i32 5}
!73 = !{ptr @pca_xfer._entry.33, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @pca_xfer._entry_ptr.35, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 233, i32 3}
!77 = !{ptr @pca_xfer._entry.36, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @pca_xfer._entry_ptr.38, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 262, i32 4}
!81 = !{ptr @pca_xfer._entry.39, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @pca_xfer._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 287, i32 4}
!85 = !{ptr @pca_xfer._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @pca_xfer._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 293, i32 4}
!89 = !{ptr @pca_xfer._entry.45, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @pca_xfer._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 298, i32 4}
!93 = !{ptr @pca_xfer._entry.48, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @pca_xfer._entry_ptr.50, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 320, i32 5}
!97 = !{ptr @pca_xfer._entry.51, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @pca_xfer._entry_ptr.53, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 328, i32 4}
!101 = !{ptr @pca_xfer._entry.54, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @pca_xfer._entry_ptr.56, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 333, i32 4}
!105 = !{ptr @pca_xfer._entry.57, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @pca_xfer._entry_ptr.59, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 337, i32 4}
!109 = !{ptr @pca_xfer._entry.60, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @pca_xfer._entry_ptr.62, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 341, i32 4}
!113 = !{ptr @.str.65, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.66, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @pca_xfer._entry.63, !112, !"_entry", i1 false, i1 false}
!116 = !{ptr @pca_xfer._entry_ptr.67, !112, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.69, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 351, i32 2}
!119 = !{ptr @pca_xfer._entry.68, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @pca_xfer._entry_ptr.70, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.71, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 71, i32 2}
!123 = !{ptr @.str.72, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @pca_start._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @pca_start._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.73, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 122, i32 2}
!128 = !{ptr @.str.74, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @pca_address._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @pca_address._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.75, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 142, i32 2}
!133 = !{ptr @.str.76, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @pca_tx_byte._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @pca_tx_byte._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.77, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 105, i32 2}
!138 = !{ptr @.str.78, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @pca_stop._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @pca_stop._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.79, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 86, i32 2}
!143 = !{ptr @.str.80, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @pca_repeated_start._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @pca_repeated_start._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.81, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 160, i32 2}
!148 = !{ptr @.str.82, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @pca_rx_byte._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @pca_rx_byte._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.83, !147, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.84, !147, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.85, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 382, i32 3}
!155 = !{ptr @.str.86, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @pca_probe_chip._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @pca_probe_chip._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.88, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/i2c/algos/i2c-algo-pca.c", i32 385, i32 3}
!160 = !{ptr @pca_probe_chip._entry.87, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @pca_probe_chip._entry_ptr.89, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @__param_str_i2c_debug, !14, !"__param_str_i2c_debug", i1 false, i1 false}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{i64 2148704719, i64 2148704724, i64 2148704737, i64 2148704781, i64 2148704815, i64 2148704836}
