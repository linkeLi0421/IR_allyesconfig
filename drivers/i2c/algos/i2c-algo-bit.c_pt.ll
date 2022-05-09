; ModuleID = '/llk/IR_all_yes/drivers/i2c/algos/i2c-algo-bit.c_pt.bc'
source_filename = "../drivers/i2c/algos/i2c-algo-bit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+i2c_bit_algo\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_bit_algo\09\09\09\09"
module asm "\09.long\09__crc_i2c_bit_algo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_bit_algo:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_bit_algo\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_bit_algo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+i2c_bit_add_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_bit_add_bus\09\09\09\09"
module asm "\09.long\09__crc_i2c_bit_add_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_bit_add_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_bit_add_bus\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_bit_add_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+i2c_bit_add_numbered_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_bit_add_numbered_bus\09\09\09\09"
module asm "\09.long\09__crc_i2c_bit_add_numbered_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_bit_add_numbered_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_bit_add_numbered_bus\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_bit_add_numbered_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
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
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_bit_test = internal constant [22 x i8] c"i2c_algo_bit.bit_test\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@bit_test = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_bit_test = internal constant %struct.kernel_param { ptr @__param_str_bit_test, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @bit_test } }, section "__param", align 4
@__UNIQUE_ID_bit_testtype288 = internal constant [35 x i8] c"i2c_algo_bit.parmtype=bit_test:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bit_test289 = internal constant [76 x i8] c"i2c_algo_bit.parm=bit_test:lines testing - 0 off; 1 report; 2 fail if stuck\00", section ".modinfo", align 1
@__param_str_i2c_debug = internal constant [23 x i8] c"i2c_algo_bit.i2c_debug\00", align 1
@i2c_debug = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_i2c_debug = internal constant %struct.kernel_param { ptr @__param_str_i2c_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @i2c_debug } }, section "__param", align 4
@__UNIQUE_ID_i2c_debugtype290 = internal constant [36 x i8] c"i2c_algo_bit.parmtype=i2c_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_debug291 = internal constant [85 x i8] c"i2c_algo_bit.parm=i2c_debug:debug level - 0 off; 1 normal; 2 verbose; 3 very verbose\00", section ".modinfo", align 1
@i2c_bit_algo = dso_local constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @bit_xfer, ptr @bit_xfer_atomic, ptr null, ptr null, ptr @bit_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_i2c_bit_algo = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_bit_algo = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_bit_algo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_bit_algo to i32), ptr @__kstrtab_i2c_bit_algo, ptr @__kstrtabns_i2c_bit_algo }, section "___ksymtab+i2c_bit_algo", align 4
@__kstrtab_i2c_bit_add_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_bit_add_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_bit_add_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_bit_add_bus to i32), ptr @__kstrtab_i2c_bit_add_bus, ptr @__kstrtabns_i2c_bit_add_bus }, section "___ksymtab+i2c_bit_add_bus", align 4
@__kstrtab_i2c_bit_add_numbered_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_bit_add_numbered_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_bit_add_numbered_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_bit_add_numbered_bus to i32), ptr @__kstrtab_i2c_bit_add_numbered_bus, ptr @__kstrtabns_i2c_bit_add_numbered_bus }, section "___ksymtab+i2c_bit_add_numbered_bus", align 4
@__UNIQUE_ID_author310 = internal constant [60 x i8] c"i2c_algo_bit.author=Simon G. Vogl <simon@tk.uni-linz.ac.at>\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [55 x i8] c"i2c_algo_bit.description=I2C-Bus bit-banging algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [49 x i8] c"i2c_algo_bit.file=drivers/i2c/algos/i2c-algo-bit\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [25 x i8] c"i2c_algo_bit.license=GPL\00", section ".modinfo", align 1
@bit_xfer.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -120, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c_algo_bit\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bit_xfer\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/algos/i2c-algo-bit.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"emitting start condition\0A\00", [38 x i8] zeroinitializer }, align 32
@bit_xfer.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -118, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"emitting enforced stop/start condition\0A\00", [56 x i8] zeroinitializer }, align 32
@bit_xfer.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"emitting repeated start condition\0A\00", [61 x i8] zeroinitializer }, align 32
@bit_xfer.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -115, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NAK from device addr 0x%02x msg #%d\0A\00", [59 x i8] zeroinitializer }, align 32
@bit_xfer.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 -112, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read %d byte%s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@bit_xfer.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 -110, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wrote %d byte%s\0A\00", [47 x i8] zeroinitializer }, align 32
@bit_xfer.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 -107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"emitting stop condition\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sclhi.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 26, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sclhi\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"i2c-algo-bit: needed %ld jiffies for SCL to go high\0A\00", [43 x i8] zeroinitializer }, align 32
@bit_doAddress.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bit_doAddress\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"addr0: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@bit_doAddress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 496, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"died at extended address code\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bit_doAddress._entry_ptr = internal global ptr @bit_doAddress._entry, section ".printk_index", align 4
@bit_doAddress._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.2, i32 503, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"died at 2nd address code\0A\00", [38 x i8] zeroinitializer }, align 32
@bit_doAddress._entry_ptr.21 = internal global ptr @bit_doAddress._entry.19, section ".printk_index", align 4
@bit_doAddress.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.5, i8 0, i8 127, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@bit_doAddress._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.2, i32 515, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"died at repeated address code\0A\00", [33 x i8] zeroinitializer }, align 32
@bit_doAddress._entry_ptr.24 = internal global ptr @bit_doAddress._entry.22, section ".printk_index", align 4
@try_address.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.11, i8 0, i8 86, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"try_address\00", [20 x i8] zeroinitializer }, align 32
@try_address.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.3, i8 0, i8 87, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@try_address.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 88, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Used %d tries to %s client at 0x%02x: %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read from\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"write to\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed, timeout?\00", [47 x i8] zeroinitializer }, align 32
@i2c_outb.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 41, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_outb\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"i2c_outb: 0x%02x, timeout at bit #%d\0A\00", [58 x i8] zeroinitializer }, align 32
@i2c_outb.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.33, i8 0, i8 45, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"i2c_outb: 0x%02x, timeout at ack\0A\00", [62 x i8] zeroinitializer }, align 32
@i2c_outb.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.34, i8 0, i8 47, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c_outb: 0x%02x %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NA\00", [29 x i8] zeroinitializer }, align 32
@readbytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 444, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"readbytes: invalid block length (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"readbytes\00", [22 x i8] zeroinitializer }, align 32
@readbytes._entry_ptr = internal global ptr @readbytes._entry, section ".printk_index", align 4
@readbytes.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 114, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"readbytes: 0x%02x %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(no ack/nak)\00", [19 x i8] zeroinitializer }, align 32
@i2c_inb.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 53, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_inb\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"i2c_inb: timeout at bit #%d\0A\00", [35 x i8] zeroinitializer }, align 32
@acknak._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 409, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"readbytes: ack/nak timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"acknak\00", [25 x i8] zeroinitializer }, align 32
@acknak._entry_ptr = internal global ptr @acknak._entry, section ".printk_index", align 4
@sendbytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 381, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sendbytes: NAK bailout.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sendbytes\00", [22 x i8] zeroinitializer }, align 32
@sendbytes._entry_ptr = internal global ptr @sendbytes._entry, section ".printk_index", align 4
@sendbytes._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 393, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sendbytes: error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@sendbytes._entry_ptr.49 = internal global ptr @sendbytes._entry.47, section ".printk_index", align 4
@bit_xfer_atomic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 618, ptr @.str.52, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"not flagged for atomic transfers\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bit_xfer_atomic\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bit_xfer_atomic._entry_ptr = internal global ptr @bit_xfer_atomic._entry, section ".printk_index", align 4
@i2c_bit_quirk_no_clk_stretch = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 16, i32 0, i16 0, i16 0, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@__i2c_bit_add_bus._entry = internal constant %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 675, ptr @.str.52, ptr @.str.18 }, align 1
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Not I2C compliant: can't read SCL\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__i2c_bit_add_bus\00", [46 x i8] zeroinitializer }, align 32
@__i2c_bit_add_bus._entry_ptr = internal global ptr @__i2c_bit_add_bus._entry, section ".printk_index", align 4
@__i2c_bit_add_bus._entry.55 = internal constant %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 676, ptr @.str.52, ptr @.str.18 }, align 1
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bus may be unreliable\0A\00", [41 x i8] zeroinitializer }, align 32
@__i2c_bit_add_bus._entry_ptr.57 = internal global ptr @__i2c_bit_add_bus._entry.55, section ".printk_index", align 4
@test_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: Testing SDA only, SCL is not readable\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"test_bus\00", [23 x i8] zeroinitializer }, align 32
@test_bus._entry_ptr = internal global ptr @test_bus._entry, section ".printk_index", align 4
@test_bus._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: bus seems to be busy (scl=%d, sda=%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@test_bus._entry_ptr.62 = internal global ptr @test_bus._entry.60, section ".printk_index", align 4
@test_bus._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014%s: SDA stuck high!\0A\00", [41 x i8] zeroinitializer }, align 32
@test_bus._entry_ptr.65 = internal global ptr @test_bus._entry.63, section ".printk_index", align 4
@test_bus._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014%s: SCL unexpected low while pulling SDA low!\0A\00", [47 x i8] zeroinitializer }, align 32
@test_bus._entry_ptr.68 = internal global ptr @test_bus._entry.66, section ".printk_index", align 4
@test_bus._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.59, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014%s: SDA stuck low!\0A\00", [42 x i8] zeroinitializer }, align 32
@test_bus._entry_ptr.71 = internal global ptr @test_bus._entry.69, section ".printk_index", align 4
@test_bus._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.59, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014%s: SCL unexpected low while pulling SDA high!\0A\00", [46 x i8] zeroinitializer }, align 32
@test_bus._entry_ptr.74 = internal global ptr @test_bus._entry.72, section ".printk_index", align 4
@test_bus._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.59, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014%s: SCL stuck high!\0A\00", [41 x i8] zeroinitializer }, align 32
@test_bus._entry_ptr.77 = internal global ptr @test_bus._entry.75, section ".printk_index", align 4
@test_bus._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.59, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014%s: SDA unexpected low while pulling SCL low!\0A\00", [47 x i8] zeroinitializer }, align 32
@test_bus._entry_ptr.80 = internal global ptr @test_bus._entry.78, section ".printk_index", align 4
@test_bus._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.59, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014%s: SCL stuck low!\0A\00", [42 x i8] zeroinitializer }, align 32
@test_bus._entry_ptr.83 = internal global ptr @test_bus._entry.81, section ".printk_index", align 4
@test_bus._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.59, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014%s: SDA unexpected low while pulling SCL high!\0A\00", [46 x i8] zeroinitializer }, align 32
@test_bus._entry_ptr.86 = internal global ptr @test_bus._entry.84, section ".printk_index", align 4
@test_bus._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.59, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016%s: Test OK\0A\00", [17 x i8] zeroinitializer }, align 32
@test_bus._entry_ptr.89 = internal global ptr @test_bus._entry.87, section ".printk_index", align 4
@___asan_gen_.90 = private unnamed_addr constant [9 x i8] c"bit_test\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 35, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [10 x i8] c"i2c_debug\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 40, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"i2c_bit_algo\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 632, i32 28 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 545, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 553, i32 6 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 558, i32 6 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 565, i32 5 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 575, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 586, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 598, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 104, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 491, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 495, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 503, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 514, i32 5 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 344, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 352, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 165, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 180, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 189, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 442, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 454, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 210, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 409, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 381, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 392, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 618, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [29 x i8] c"i2c_bit_quirk_no_clk_stretch\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 639, i32 40 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 675, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 676, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 242, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 247, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 257, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 261, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 271, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 275, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 285, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 289, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 299, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 303, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.343 = private constant [36 x i8] c"../drivers/i2c/algos/i2c-algo-bit.c\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 312, i32 2 }
@llvm.compiler.used = appending global [121 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_bit_test289, ptr @__UNIQUE_ID_bit_testtype288, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_i2c_debug291, ptr @__UNIQUE_ID_i2c_debugtype290, ptr @__UNIQUE_ID_license313, ptr @__i2c_bit_add_bus._entry, ptr @__i2c_bit_add_bus._entry.55, ptr @__i2c_bit_add_bus._entry_ptr, ptr @__i2c_bit_add_bus._entry_ptr.57, ptr @__ksymtab_i2c_bit_add_bus, ptr @__ksymtab_i2c_bit_add_numbered_bus, ptr @__ksymtab_i2c_bit_algo, ptr @__param_bit_test, ptr @__param_i2c_debug, ptr @acknak._entry, ptr @acknak._entry_ptr, ptr @bit_doAddress._entry, ptr @bit_doAddress._entry.19, ptr @bit_doAddress._entry.22, ptr @bit_doAddress._entry_ptr, ptr @bit_doAddress._entry_ptr.21, ptr @bit_doAddress._entry_ptr.24, ptr @bit_xfer_atomic._entry, ptr @bit_xfer_atomic._entry_ptr, ptr @readbytes._entry, ptr @readbytes._entry_ptr, ptr @sendbytes._entry, ptr @sendbytes._entry.47, ptr @sendbytes._entry_ptr, ptr @sendbytes._entry_ptr.49, ptr @test_bus._entry, ptr @test_bus._entry.60, ptr @test_bus._entry.63, ptr @test_bus._entry.66, ptr @test_bus._entry.69, ptr @test_bus._entry.72, ptr @test_bus._entry.75, ptr @test_bus._entry.78, ptr @test_bus._entry.81, ptr @test_bus._entry.84, ptr @test_bus._entry.87, ptr @test_bus._entry_ptr, ptr @test_bus._entry_ptr.62, ptr @test_bus._entry_ptr.65, ptr @test_bus._entry_ptr.68, ptr @test_bus._entry_ptr.71, ptr @test_bus._entry_ptr.74, ptr @test_bus._entry_ptr.77, ptr @test_bus._entry_ptr.80, ptr @test_bus._entry_ptr.83, ptr @test_bus._entry_ptr.86, ptr @test_bus._entry_ptr.89, ptr @bit_test, ptr @i2c_debug, ptr @i2c_bit_algo, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @i2c_bit_quirk_no_clk_stretch, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit_test to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_bit_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit_doAddress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit_doAddress._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit_doAddress._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readbytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acknak._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sendbytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sendbytes._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit_xfer_atomic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_bit_quirk_no_clk_stretch to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bus._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bus._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bus._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bus._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bus._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bus._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bus._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bus._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bus._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bus._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bit_xfer(ptr noundef %i2c_adap, ptr nocapture noundef %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %pre_xfer = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pre_xfer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pre_xfer, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then:                                          ; preds = %entry
  %call = tail call i32 %3(ptr noundef %i2c_adap) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %4 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp4 = icmp sgt i32 %4, 2
  br i1 %cmp4, label %do.body6, label %do.body.do.end16_crit_edge

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end16

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bit_xfer.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bit_xfer, %do.end16)) #4
          to label %if.then12 [label %do.end16], !srcloc !203

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bit_xfer.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.3) #4
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body6, %do.body.do.end16_crit_edge
  %setsda.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %setsda.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %setsda.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void %6(ptr noundef %8, i32 noundef 0) #4
  %udelay.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %udelay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #4
  %setscl.i.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %setscl.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %setscl.i.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void %13(ptr noundef %15, i32 noundef 0) #4
  %16 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %udelay.i, align 4
  %div.i.i = sdiv i32 %17, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %18(i32 noundef %div.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp17420 = icmp sgt i32 %num, 0
  br i1 %cmp17420, label %for.body.lr.ph, label %do.end16.do.body214_crit_edge

do.end16.do.body214_crit_edge:                    ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body214

for.body.lr.ph:                                   ; preds = %do.end16
  %dev51 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0421 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0421
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0421, i32 1
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags, align 2
  %and = and i16 %20, 4096
  %21 = and i16 %20, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool22.not = icmp eq i16 %21, 0
  br i1 %tobool22.not, label %if.then23, label %for.body.if.end120_crit_edge

for.body.if.end120_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end120

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0421)
  %tobool24.not = icmp eq i32 %i.0421, 0
  br i1 %tobool24.not, label %if.then23.if.end85_crit_edge, label %if.then25

if.then23.if.end85_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

if.then25:                                        ; preds = %if.then23
  %sub = add nsw i32 %i.0421, -1
  %flags27 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %sub, i32 1
  %22 = ptrtoint ptr %flags27 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %tobool30.not = icmp sgt i16 %23, -1
  %24 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp59 = icmp sgt i32 %24, 2
  br i1 %tobool30.not, label %do.body58, label %do.body32

do.body32:                                        ; preds = %if.then25
  br i1 %cmp59, label %do.body36, label %do.body32.do.end57_crit_edge

do.body32.do.end57_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end57

do.body36:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bit_xfer.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bit_xfer, %do.end57)) #4
          to label %if.then50 [label %do.end57], !srcloc !203

if.then50:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bit_xfer.__UNIQUE_ID_ddebug304, ptr noundef %dev51, ptr noundef nonnull @.str.4) #4
  br label %do.end57

do.end57:                                         ; preds = %if.then50, %do.body36, %do.body32.do.end57_crit_edge
  %25 = ptrtoint ptr %setsda.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %setsda.i, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  tail call void %26(ptr noundef %28, i32 noundef 0) #4
  %29 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %udelay.i, align 4
  %add.i.i = add i32 %30, 1
  %div.i.i317 = sdiv i32 %add.i.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %div.i.i317) #4
  %call.i = tail call fastcc i32 @sclhi(ptr noundef %1) #4
  %32 = ptrtoint ptr %setsda.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %setsda.i, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  tail call void %33(ptr noundef %35, i32 noundef 1) #4
  %36 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %udelay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #4
  br label %if.end85.sink.split

do.body58:                                        ; preds = %if.then25
  br i1 %cmp59, label %do.body62, label %do.body58.do.end83_crit_edge

do.body58.do.end83_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end83

do.body62:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bit_xfer.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bit_xfer, %do.end83)) #4
          to label %if.then76 [label %do.end83], !srcloc !203

if.then76:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bit_xfer.__UNIQUE_ID_ddebug305, ptr noundef %dev51, ptr noundef nonnull @.str.5) #4
  br label %do.end83

do.end83:                                         ; preds = %if.then76, %do.body62, %do.body58.do.end83_crit_edge
  %39 = ptrtoint ptr %setsda.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %setsda.i, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  tail call void %40(ptr noundef %42, i32 noundef 1) #4
  %43 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %udelay.i, align 4
  %add.i.i349 = add i32 %44, 1
  %div.i.i350 = sdiv i32 %add.i.i349, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %div.i.i350) #4
  %call.i357 = tail call fastcc i32 @sclhi(ptr noundef %1) #4
  br label %if.end85.sink.split

if.end85.sink.split:                              ; preds = %do.end83, %do.end57
  %46 = ptrtoint ptr %setsda.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %setsda.i, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  tail call void %47(ptr noundef %49, i32 noundef 0) #4
  %50 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %udelay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %51) #4
  %53 = ptrtoint ptr %setscl.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %setscl.i.i, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  tail call void %54(ptr noundef %56, i32 noundef 0) #4
  %57 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %udelay.i, align 4
  %div.i16.i = sdiv i32 %58, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %59(i32 noundef %div.i16.i) #4
  br label %if.end85

if.end85:                                         ; preds = %if.end85.sink.split, %if.then23.if.end85_crit_edge
  %call86 = tail call fastcc i32 @bit_doAddress(ptr noundef %i2c_adap, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87.not = icmp ne i32 %call86, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and)
  %tobool89.not = icmp eq i16 %and, 0
  %or.cond = select i1 %cmp87.not, i1 %tobool89.not, i1 false
  br i1 %or.cond, label %do.body91, label %if.end85.if.end120_crit_edge

if.end85.if.end120_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end120

do.body91:                                        ; preds = %if.end85
  %60 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp92 = icmp sgt i32 %60, 0
  br i1 %cmp92, label %do.body95, label %do.body91.do.end239_crit_edge

do.body91.do.end239_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end239

do.body95:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bit_xfer.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bit_xfer, %do.body214)) #4
          to label %if.then109 [label %do.body214], !srcloc !203

if.then109:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx, align 4
  %conv112 = zext i16 %62 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bit_xfer.__UNIQUE_ID_ddebug306, ptr noundef %dev51, ptr noundef nonnull @.str.6, i32 noundef %conv112, i32 noundef %i.0421) #4
  br label %do.body214

if.end120:                                        ; preds = %if.end85.if.end120_crit_edge, %for.body.if.end120_crit_edge
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %flags, align 2
  %65 = and i16 %64, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool124.not = icmp eq i16 %65, 0
  br i1 %tobool124.not, label %if.else168, label %if.then125

if.then125:                                       ; preds = %if.end120
  %call126 = tail call fastcc i32 @readbytes(ptr noundef %i2c_adap, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp sgt i32 %call126, 0
  br i1 %cmp127, label %do.body130, label %if.then125.if.end158_crit_edge

if.then125.if.end158_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end158

do.body130:                                       ; preds = %if.then125
  %66 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp131 = icmp sgt i32 %66, 1
  br i1 %cmp131, label %do.body134, label %do.body130.if.end158_crit_edge

do.body130.if.end158_crit_edge:                   ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end158

do.body134:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bit_xfer.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bit_xfer, %if.end158)) #4
          to label %if.then148 [label %if.end158], !srcloc !203

if.then148:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call126)
  %cmp150 = icmp eq i32 %call126, 1
  %cond = select i1 %cmp150, ptr @.str.8, ptr @.str.9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bit_xfer.__UNIQUE_ID_ddebug307, ptr noundef %dev51, ptr noundef nonnull @.str.7, i32 noundef %call126, ptr noundef nonnull %cond) #4
  br label %if.end158

if.end158:                                        ; preds = %if.then148, %do.body134, %do.body130.if.end158_crit_edge, %if.then125.if.end158_crit_edge
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0421, i32 2
  %67 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %len, align 4
  %conv159 = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call126, i32 %conv159)
  %cmp160 = icmp slt i32 %call126, %conv159
  br i1 %cmp160, label %if.then162, label %if.end158.for.inc_crit_edge

if.end158.for.inc_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then162:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call126)
  %cmp163 = icmp sgt i32 %call126, -1
  %spec.select = select i1 %cmp163, i32 -5, i32 %call126
  br label %do.body214

if.else168:                                       ; preds = %if.end120
  %len.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0421, i32 2
  %69 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %cmp34.not.i = icmp eq i16 %70, 0
  br i1 %cmp34.not.i, label %if.else168.if.end202_crit_edge, label %while.body.lr.ph.i

if.else168.if.end202_crit_edge:                   ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end202

while.body.lr.ph.i:                               ; preds = %if.else168
  %conv.i = zext i16 %70 to i32
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %flags, align 2
  %73 = and i16 %72, 4096
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0421, i32 3
  %74 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.not.i = icmp ne i16 %73, 0
  br label %while.body.i

while.body.i:                                     ; preds = %if.then.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %wrcount.037.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %if.then.i.while.body.i_crit_edge ]
  %temp.035.i = phi ptr [ %75, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.then.i.while.body.i_crit_edge ]
  %76 = ptrtoint ptr %temp.035.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %temp.035.i, align 1
  %call.i368 = tail call fastcc i32 @i2c_outb(ptr noundef %i2c_adap, i8 noundef zeroext %77) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i368)
  %cmp5.i = icmp sgt i32 %call.i368, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i368)
  %cmp8.i = icmp eq i32 %call.i368, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp8.i, i1 false
  %or.cond38.i = select i1 %cmp5.i, i1 true, i1 %or.cond.i
  br i1 %or.cond38.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  %incdec.ptr.i = getelementptr i8, ptr %temp.035.i, i32 1
  %inc.i = add nuw nsw i32 %wrcount.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %do.body173, label %if.then.i.while.body.i_crit_edge

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

if.else.i:                                        ; preds = %while.body.i
  br i1 %cmp8.i, label %if.then207.thread, label %do.end16.i

if.then207.thread:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.45) #7
  br label %do.body214

do.end16.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.48, i32 noundef %call.i368) #7
  br label %if.end202

do.body173:                                       ; preds = %if.then.i
  %78 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp174 = icmp sgt i32 %78, 1
  br i1 %cmp174, label %do.body177, label %do.body173.if.end202_crit_edge

do.body173.if.end202_crit_edge:                   ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end202

do.body177:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bit_xfer.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bit_xfer, %if.end202)) #4
          to label %if.then191 [label %if.end202], !srcloc !203

if.then191:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %70)
  %cmp193 = icmp eq i16 %70, 1
  %cond195 = select i1 %cmp193, ptr @.str.8, ptr @.str.9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bit_xfer.__UNIQUE_ID_ddebug308, ptr noundef %dev51, ptr noundef nonnull @.str.10, i32 noundef %conv.i, ptr noundef nonnull %cond195) #4
  br label %if.end202

if.end202:                                        ; preds = %if.then191, %do.body177, %do.body173.if.end202_crit_edge, %do.end16.i, %if.else168.if.end202_crit_edge
  %retval.0.i369397 = phi i32 [ %conv.i, %do.body173.if.end202_crit_edge ], [ %conv.i, %if.then191 ], [ 0, %if.else168.if.end202_crit_edge ], [ %call.i368, %do.end16.i ], [ %conv.i, %do.body177 ]
  %79 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %len.i, align 4
  %conv204 = zext i16 %80 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i369397, i32 %conv204)
  %cmp205 = icmp slt i32 %retval.0.i369397, %conv204
  br i1 %cmp205, label %if.then207, label %if.end202.for.inc_crit_edge

if.end202.for.inc_crit_edge:                      ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then207:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i369397)
  %cmp208 = icmp sgt i32 %retval.0.i369397, -1
  %spec.select410 = select i1 %cmp208, i32 -5, i32 %retval.0.i369397
  br label %do.body214

for.inc:                                          ; preds = %if.end202.for.inc_crit_edge, %if.end158.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0421, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.do.body214_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.do.body214_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body214

do.body214:                                       ; preds = %for.inc.do.body214_crit_edge, %if.then207, %if.then207.thread, %if.then162, %if.then109, %do.body95, %do.end16.do.body214_crit_edge
  %ret.0.ph = phi i32 [ %spec.select, %if.then162 ], [ %call86, %if.then109 ], [ %call86, %do.body95 ], [ -5, %if.then207.thread ], [ %spec.select410, %if.then207 ], [ 0, %do.end16.do.body214_crit_edge ], [ %num, %for.inc.do.body214_crit_edge ]
  %.pr = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp215 = icmp sgt i32 %.pr, 2
  br i1 %cmp215, label %do.body218, label %do.body214.do.end239_crit_edge

do.body214.do.end239_crit_edge:                   ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end239

do.body218:                                       ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bit_xfer.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bit_xfer, %do.end239)) #4
          to label %if.then232 [label %do.end239], !srcloc !203

if.then232:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #6
  %dev233 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bit_xfer.__UNIQUE_ID_ddebug309, ptr noundef %dev233, ptr noundef nonnull @.str.11) #4
  br label %do.end239

do.end239:                                        ; preds = %if.then232, %do.body218, %do.body214.do.end239_crit_edge, %do.body91.do.end239_crit_edge
  %ret.0401 = phi i32 [ %ret.0.ph, %if.then232 ], [ %ret.0.ph, %do.body214.do.end239_crit_edge ], [ %call86, %do.body91.do.end239_crit_edge ], [ %ret.0.ph, %do.body218 ]
  %81 = ptrtoint ptr %setsda.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %setsda.i, align 4
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  tail call void %82(ptr noundef %84, i32 noundef 0) #4
  %85 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %udelay.i, align 4
  %add.i.i372 = add i32 %86, 1
  %div.i.i373 = sdiv i32 %add.i.i372, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %87(i32 noundef %div.i.i373) #4
  %call.i380 = tail call fastcc i32 @sclhi(ptr noundef %1) #4
  %88 = ptrtoint ptr %setsda.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %setsda.i, align 4
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  tail call void %89(ptr noundef %91, i32 noundef 1) #4
  %92 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %udelay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %94(i32 noundef %93) #4
  %post_xfer = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 6
  %95 = ptrtoint ptr %post_xfer to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %post_xfer, align 4
  %tobool240.not = icmp eq ptr %96, null
  br i1 %tobool240.not, label %do.end239.cleanup_crit_edge, label %if.then241

do.end239.cleanup_crit_edge:                      ; preds = %do.end239
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then241:                                       ; preds = %do.end239
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %96(ptr noundef %i2c_adap) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then241, %do.end239.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %ret.0401, %if.then241 ], [ %ret.0401, %do.end239.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bit_xfer_atomic(ptr noundef %i2c_adap, ptr nocapture noundef %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %can_do_atomic = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %can_do_atomic to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %can_do_atomic, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.50) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call i32 @bit_xfer(ptr noundef %i2c_adap, ptr noundef %msgs, i32 noundef %num)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bit_func(ptr nocapture noundef readnone %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268402719
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_bit_add_bus(ptr noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__i2c_bit_add_bus(ptr noundef %adap, ptr noundef nonnull @i2c_add_adapter)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__i2c_bit_add_bus(ptr noundef %adap, ptr nocapture noundef readonly %add_adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %2 = load i32, ptr @bit_test, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then:                                          ; preds = %entry
  %name1.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 12
  %pre_xfer.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %pre_xfer.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pre_xfer.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.if.end4.i_crit_edge, label %if.then.i

if.then.if.end4.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then
  %call.i = tail call i32 %4(ptr noundef %adap) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i.test_bus.exit_crit_edge, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.then.i.test_bus.exit_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %test_bus.exit

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.then.if.end4.i_crit_edge
  %getscl.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %getscl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %getscl.i, align 4
  %cmp5.i = icmp eq ptr %6, null
  br i1 %cmp5.i, label %do.end.i, label %if.end4.i.if.end8.i_crit_edge

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name1.i) #7
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i, %if.end4.i.if.end8.i_crit_edge
  %getsda.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %getsda.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %getsda.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call9.i = tail call i32 %8(ptr noundef %10) #4
  %11 = ptrtoint ptr %getscl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %getscl.i, align 4
  %cmp11.i = icmp eq ptr %12, null
  br i1 %cmp11.i, label %if.end8.i.cond.end.i_crit_edge, label %cond.false.i

if.end8.i.cond.end.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call14.i = tail call i32 %12(ptr noundef %14) #4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end8.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call14.i, %cond.false.i ], [ 1, %if.end8.i.cond.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool15.not.i = icmp eq i32 %cond.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool16.not.i = icmp eq i32 %call9.i, 0
  %or.cond.i = select i1 %tobool15.not.i, i1 true, i1 %tobool16.not.i
  br i1 %or.cond.i, label %do.end20.i, label %if.end23.i

do.end20.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name1.i, i32 noundef %cond.i, i32 noundef %call9.i) #7
  br label %bailout.i

if.end23.i:                                       ; preds = %cond.end.i
  %setsda.i.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %setsda.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %setsda.i.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void %16(ptr noundef %18, i32 noundef 0) #4
  %udelay.i.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %udelay.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %udelay.i.i, align 4
  %add.i.i = add i32 %20, 1
  %div.i.i = sdiv i32 %add.i.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %div.i.i) #4
  %22 = ptrtoint ptr %getsda.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %getsda.i, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call26.i = tail call i32 %23(ptr noundef %25) #4
  %26 = ptrtoint ptr %getscl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %getscl.i, align 4
  %cmp28.i = icmp eq ptr %27, null
  br i1 %cmp28.i, label %cond.end34.thread.i, label %cond.end34.i

cond.end34.i:                                     ; preds = %if.end23.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call33.i = tail call i32 %27(ptr noundef %29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool36.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool36.not.i, label %if.end43.i, label %cond.end34.i.do.end40.i_crit_edge

cond.end34.i.do.end40.i_crit_edge:                ; preds = %cond.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end40.i

cond.end34.thread.i:                              ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool36.not253.i = icmp eq i32 %call26.i, 0
  br i1 %tobool36.not253.i, label %cond.end34.thread.i.if.end51.i_crit_edge, label %cond.end34.thread.i.do.end40.i_crit_edge

cond.end34.thread.i.do.end40.i_crit_edge:         ; preds = %cond.end34.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end40.i

cond.end34.thread.i.if.end51.i_crit_edge:         ; preds = %cond.end34.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51.i

do.end40.i:                                       ; preds = %cond.end34.thread.i.do.end40.i_crit_edge, %cond.end34.i.do.end40.i_crit_edge
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name1.i) #7
  br label %bailout.i

if.end43.i:                                       ; preds = %cond.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool44.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool44.not.i, label %do.end48.i, label %if.end43.i.if.end51.i_crit_edge

if.end43.i.if.end51.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51.i

do.end48.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #6
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name1.i) #7
  br label %bailout.i

if.end51.i:                                       ; preds = %if.end43.i.if.end51.i_crit_edge, %cond.end34.thread.i.if.end51.i_crit_edge
  %30 = ptrtoint ptr %setsda.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %setsda.i.i, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  tail call void %31(ptr noundef %33, i32 noundef 1) #4
  %34 = ptrtoint ptr %udelay.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %udelay.i.i, align 4
  %add.i227.i = add i32 %35, 1
  %div.i228.i = sdiv i32 %add.i227.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %36(i32 noundef %div.i228.i) #4
  %37 = ptrtoint ptr %getsda.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %getsda.i, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call54.i = tail call i32 %38(ptr noundef %40) #4
  %41 = ptrtoint ptr %getscl.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %getscl.i, align 4
  %cmp56.i = icmp eq ptr %42, null
  br i1 %cmp56.i, label %cond.end62.thread.i, label %cond.end62.i

cond.end62.i:                                     ; preds = %if.end51.i
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call61.i = tail call i32 %42(ptr noundef %44) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool64.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool64.not.i, label %cond.end62.i.do.end68.i_crit_edge, label %if.end71.i

cond.end62.i.do.end68.i_crit_edge:                ; preds = %cond.end62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end68.i

cond.end62.thread.i:                              ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool64.not258.i = icmp eq i32 %call54.i, 0
  br i1 %tobool64.not258.i, label %cond.end62.thread.i.do.end68.i_crit_edge, label %cond.end62.thread.i.if.end79.i_crit_edge

cond.end62.thread.i.if.end79.i_crit_edge:         ; preds = %cond.end62.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79.i

cond.end62.thread.i.do.end68.i_crit_edge:         ; preds = %cond.end62.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end68.i

do.end68.i:                                       ; preds = %cond.end62.thread.i.do.end68.i_crit_edge, %cond.end62.i.do.end68.i_crit_edge
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name1.i) #7
  br label %bailout.i

if.end71.i:                                       ; preds = %cond.end62.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool72.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool72.not.i, label %do.end76.i, label %if.end71.i.if.end79.i_crit_edge

if.end71.i.if.end79.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79.i

do.end76.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #6
  %call78.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name1.i) #7
  br label %bailout.i

if.end79.i:                                       ; preds = %if.end71.i.if.end79.i_crit_edge, %cond.end62.thread.i.if.end79.i_crit_edge
  %setscl.i.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %setscl.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %setscl.i.i, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  tail call void %46(ptr noundef %48, i32 noundef 0) #4
  %49 = ptrtoint ptr %udelay.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %udelay.i.i, align 4
  %div.i236.i = sdiv i32 %50, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %div.i236.i) #4
  %52 = ptrtoint ptr %getsda.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %getsda.i, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %call82.i = tail call i32 %53(ptr noundef %55) #4
  %56 = ptrtoint ptr %getscl.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %getscl.i, align 4
  %cmp84.i = icmp eq ptr %57, null
  br i1 %cmp84.i, label %if.end79.i.if.end99.i_crit_edge, label %cond.false86.i

if.end79.i.if.end99.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99.i

cond.false86.i:                                   ; preds = %if.end79.i
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call89.i = tail call i32 %57(ptr noundef %59) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %phi.cmp.i = icmp eq i32 %call89.i, 0
  br i1 %phi.cmp.i, label %cond.false86.i.if.end99.i_crit_edge, label %do.end96.i

cond.false86.i.if.end99.i_crit_edge:              ; preds = %cond.false86.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99.i

do.end96.i:                                       ; preds = %cond.false86.i
  call void @__sanitizer_cov_trace_pc() #6
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name1.i) #7
  br label %bailout.i

if.end99.i:                                       ; preds = %cond.false86.i.if.end99.i_crit_edge, %if.end79.i.if.end99.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool100.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool100.not.i, label %do.end104.i, label %if.end107.i

do.end104.i:                                      ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #6
  %call106.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name1.i) #7
  br label %bailout.i

if.end107.i:                                      ; preds = %if.end99.i
  %call108.i = tail call fastcc i32 @sclhi(ptr noundef %1) #4
  %60 = ptrtoint ptr %getsda.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %getsda.i, align 4
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %call111.i = tail call i32 %61(ptr noundef %63) #4
  %64 = ptrtoint ptr %getscl.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %getscl.i, align 4
  %cmp113.i = icmp eq ptr %65, null
  br i1 %cmp113.i, label %if.end107.i.if.end128.i_crit_edge, label %cond.false115.i

if.end107.i.if.end128.i_crit_edge:                ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end128.i

cond.false115.i:                                  ; preds = %if.end107.i
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %call118.i = tail call i32 %65(ptr noundef %67) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i)
  %phi.cmp224.i = icmp eq i32 %call118.i, 0
  br i1 %phi.cmp224.i, label %do.end125.i, label %cond.false115.i.if.end128.i_crit_edge

cond.false115.i.if.end128.i_crit_edge:            ; preds = %cond.false115.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end128.i

do.end125.i:                                      ; preds = %cond.false115.i
  call void @__sanitizer_cov_trace_pc() #6
  %call127.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name1.i) #7
  br label %bailout.i

if.end128.i:                                      ; preds = %cond.false115.i.if.end128.i_crit_edge, %if.end107.i.if.end128.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %tobool129.not.i = icmp eq i32 %call111.i, 0
  br i1 %tobool129.not.i, label %do.end133.i, label %if.end136.i

do.end133.i:                                      ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #6
  %call135.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name1.i) #7
  br label %bailout.i

if.end136.i:                                      ; preds = %if.end128.i
  %post_xfer.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 6
  %68 = ptrtoint ptr %post_xfer.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %post_xfer.i, align 4
  %tobool137.not.i = icmp eq ptr %69, null
  br i1 %tobool137.not.i, label %if.end136.i.test_bus.exit.thread_crit_edge, label %if.then138.i

if.end136.i.test_bus.exit.thread_crit_edge:       ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %test_bus.exit.thread

if.then138.i:                                     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %69(ptr noundef %adap) #4
  br label %test_bus.exit.thread

test_bus.exit.thread:                             ; preds = %if.then138.i, %if.end136.i.test_bus.exit.thread_crit_edge
  %call145.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name1.i) #7
  br label %if.end3

bailout.i:                                        ; preds = %do.end133.i, %do.end125.i, %do.end104.i, %do.end96.i, %do.end76.i, %do.end68.i, %do.end48.i, %do.end40.i, %do.end20.i
  %setsda.i241.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 1
  %70 = ptrtoint ptr %setsda.i241.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %setsda.i241.i, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  tail call void %71(ptr noundef %73, i32 noundef 1) #4
  %udelay.i242.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 7
  %74 = ptrtoint ptr %udelay.i242.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %udelay.i242.i, align 4
  %add.i243.i = add i32 %75, 1
  %div.i244.i = sdiv i32 %add.i243.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %76(i32 noundef %div.i244.i) #4
  %call146.i = tail call fastcc i32 @sclhi(ptr noundef %1) #4
  %post_xfer147.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 6
  %77 = ptrtoint ptr %post_xfer147.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %post_xfer147.i, align 4
  %tobool148.not.i = icmp eq ptr %78, null
  br i1 %tobool148.not.i, label %bailout.i.test_bus.exit_crit_edge, label %if.then149.i

bailout.i.test_bus.exit_crit_edge:                ; preds = %bailout.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %test_bus.exit

if.then149.i:                                     ; preds = %bailout.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %78(ptr noundef %adap) #4
  br label %test_bus.exit

test_bus.exit:                                    ; preds = %if.then149.i, %bailout.i.test_bus.exit_crit_edge, %if.then.i.test_bus.exit_crit_edge
  %79 = load i32, ptr @bit_test, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp = icmp sgt i32 %79, 1
  br i1 %cmp, label %test_bus.exit.cleanup_crit_edge, label %test_bus.exit.if.end3_crit_edge

test_bus.exit.if.end3_crit_edge:                  ; preds = %test_bus.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

test_bus.exit.cleanup_crit_edge:                  ; preds = %test_bus.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %test_bus.exit.if.end3_crit_edge, %test_bus.exit.thread, %entry.if.end3_crit_edge
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 2
  %80 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @i2c_bit_algo, ptr %algo, align 8
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 8
  %81 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 3, ptr %retries, align 8
  %getscl = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 4
  %82 = ptrtoint ptr %getscl to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %getscl, align 4
  %cmp4 = icmp eq ptr %83, null
  br i1 %cmp4, label %if.then5, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %quirks = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 17
  %84 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @i2c_bit_quirk_no_clk_stretch, ptr %quirks, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %call7 = tail call i32 %add_adapter(ptr noundef %adap) #4, !callees !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %85 = ptrtoint ptr %getscl to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %getscl, align 4
  %cmp12 = icmp eq ptr %86, null
  br i1 %cmp12, label %do.end, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.53) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.56) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %test_bus.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %test_bus.exit.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_bit_add_numbered_bus(ptr noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__i2c_bit_add_bus(ptr noundef %adap, ptr noundef nonnull @i2c_add_numbered_adapter)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bit_doAddress(ptr noundef %i2c_adap, ptr nocapture noundef readonly %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags1, align 2
  %conv = zext i16 %1 to i32
  %and = and i16 %1, 4096
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %2 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and)
  %tobool.not = icmp eq i16 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %retries5 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 8
  %4 = ptrtoint ptr %retries5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %retries5, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %and7 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %msg, align 4
  br i1 %tobool8.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  %8 = lshr i16 %7, 7
  %9 = trunc i16 %8 to i8
  %10 = and i8 %9, 6
  %conv12 = or i8 %10, -16
  %11 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp sgt i32 %11, 1
  br i1 %cmp, label %do.body15, label %if.then.do.end24_crit_edge

if.then.do.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end24

do.body15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bit_doAddress.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bit_doAddress, %do.end24)) #4
          to label %if.then20 [label %do.end24], !srcloc !203

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  %conv21 = zext i8 %conv12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bit_doAddress.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %conv21) #4
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %do.body15, %if.then.do.end24_crit_edge
  %call25 = tail call fastcc i32 @try_address(ptr noundef %i2c_adap, i8 noundef zeroext %conv12, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp26.not = icmp ne i32 %call25, 1
  %or.cond = select i1 %cmp26.not, i1 %tobool.not, i1 false
  br i1 %or.cond, label %do.end32, label %if.end34

do.end32:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #6
  %dev33 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.16) #7
  br label %cleanup

if.end34:                                         ; preds = %do.end24
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %msg, align 4
  %conv38 = trunc i16 %13 to i8
  %call39 = tail call fastcc i32 @i2c_outb(ptr noundef %i2c_adap, i8 noundef zeroext %conv38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp40.not = icmp ne i32 %call39, 1
  %or.cond146 = select i1 %cmp40.not, i1 %tobool.not, i1 false
  br i1 %or.cond146, label %do.end47, label %if.end49

do.end47:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %dev48 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.20) #7
  br label %cleanup

if.end49:                                         ; preds = %if.end34
  %and51 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end49.if.end110_crit_edge, label %do.body54

if.end49.if.end110_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end110

do.body54:                                        ; preds = %if.end49
  %14 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp55 = icmp sgt i32 %14, 2
  br i1 %cmp55, label %do.body58, label %do.body54.do.end79_crit_edge

do.body54.do.end79_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end79

do.body58:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bit_doAddress.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bit_doAddress, %do.end79)) #4
          to label %if.then72 [label %do.end79], !srcloc !203

if.then72:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #6
  %dev73 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bit_doAddress.__UNIQUE_ID_ddebug302, ptr noundef %dev73, ptr noundef nonnull @.str.5) #4
  br label %do.end79

do.end79:                                         ; preds = %if.then72, %do.body58, %do.body54.do.end79_crit_edge
  %setsda.i.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %setsda.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %setsda.i.i, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  tail call void %16(ptr noundef %18, i32 noundef 1) #4
  %udelay.i.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %udelay.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %udelay.i.i, align 4
  %add.i.i = add i32 %20, 1
  %div.i.i = sdiv i32 %add.i.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %div.i.i) #4
  %call.i = tail call fastcc i32 @sclhi(ptr noundef %3) #4
  %22 = ptrtoint ptr %setsda.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %setsda.i.i, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  tail call void %23(ptr noundef %25, i32 noundef 0) #4
  %26 = ptrtoint ptr %udelay.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %udelay.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %28(i32 noundef %27) #4
  %setscl.i.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %setscl.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %setscl.i.i, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  tail call void %30(ptr noundef %32, i32 noundef 0) #4
  %33 = ptrtoint ptr %udelay.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %udelay.i.i, align 4
  %div.i16.i = sdiv i32 %34, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %div.i16.i) #4
  %36 = or i8 %10, -15
  %call83 = tail call fastcc i32 @try_address(ptr noundef %i2c_adap, i8 noundef zeroext %36, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call83)
  %cmp84.not = icmp ne i32 %call83, 1
  %or.cond147 = select i1 %cmp84.not, i1 %tobool.not, i1 false
  br i1 %or.cond147, label %do.end91, label %do.end79.if.end110_crit_edge

do.end79.if.end110_crit_edge:                     ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end110

do.end91:                                         ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #6
  %dev92 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92, ptr noundef nonnull @.str.23) #7
  br label %cleanup

if.else:                                          ; preds = %cond.end
  %conv.i = trunc i16 %7 to i8
  %shl.i = shl i8 %conv.i, 1
  %37 = trunc i16 %1 to i8
  %38 = and i8 %37, 1
  %or.i = or i8 %shl.i, %38
  %and97 = lshr i16 %1, 13
  %39 = trunc i16 %and97 to i8
  %40 = and i8 %39, 1
  %spec.select = xor i8 %or.i, %40
  %call103 = tail call fastcc i32 @try_address(ptr noundef %i2c_adap, i8 noundef zeroext %spec.select, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call103)
  %cmp104.not = icmp ne i32 %call103, 1
  %or.cond148 = select i1 %cmp104.not, i1 %tobool.not, i1 false
  br i1 %or.cond148, label %if.else.cleanup_crit_edge, label %if.else.if.end110_crit_edge

if.else.if.end110_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end110

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end110:                                        ; preds = %if.else.if.end110_crit_edge, %do.end79.if.end110_crit_edge, %if.end49.if.end110_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %if.else.cleanup_crit_edge, %do.end91, %do.end47, %do.end32
  %retval.0 = phi i32 [ 0, %if.end110 ], [ -5, %do.end91 ], [ -6, %do.end47 ], [ -6, %do.end32 ], [ -6, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @readbytes(ptr noundef %i2c_adap, ptr nocapture noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp95.not = icmp eq i16 %1, 0
  br i1 %cmp95.not, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %flags1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags1, align 2
  %conv2 = zext i16 %3 to i32
  %conv = zext i16 %1 to i32
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  %and = and i32 %conv2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %dev37 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  %and38 = and i32 %conv2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %algo_data.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end56.while.body_crit_edge, %while.body.lr.ph
  %count.098 = phi i32 [ %conv, %while.body.lr.ph ], [ %count.1, %if.end56.while.body_crit_edge ]
  %temp.097 = phi ptr [ %5, %while.body.lr.ph ], [ %incdec.ptr, %if.end56.while.body_crit_edge ]
  %rdcount.096 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end56.while.body_crit_edge ]
  %call = tail call fastcc i32 @i2c_inb(ptr noundef %i2c_adap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp4 = icmp sgt i32 %call, -1
  br i1 %cmp4, label %if.then, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %while.body
  %conv6 = trunc i32 %call to i8
  %6 = ptrtoint ptr %temp.097 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv6, ptr %temp.097, align 1
  %inc = add i32 %rdcount.096, 1
  %incdec.ptr = getelementptr i8, ptr %temp.097, i32 1
  %dec = add nsw i32 %count.098, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rdcount.096)
  %cmp7 = icmp ne i32 %rdcount.096, 0
  %or.cond = select i1 %cmp7, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.then.do.body26_crit_edge, label %if.then9

if.then.do.body26_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body26

if.then9:                                         ; preds = %if.then
  %7 = add nsw i32 %call, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %7)
  %8 = icmp ult i32 %7, -32
  br i1 %8, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.then9
  br i1 %tobool39.not, label %if.then17, label %if.then14.do.end_crit_edge

if.then14.do.end_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = tail call fastcc i32 @acknak(ptr noundef %i2c_adap, i32 noundef 0)
  br label %do.end

do.end:                                           ; preds = %if.then17, %if.then14.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.37, i32 noundef %call) #7
  br label %cleanup

if.end20:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %add = add nuw i32 %call, %dec
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %len, align 4
  %11 = trunc i32 %call to i16
  %conv24 = add i16 %10, %11
  store i16 %conv24, ptr %len, align 4
  br label %do.body26

do.body26:                                        ; preds = %if.end20, %if.then.do.body26_crit_edge
  %count.1 = phi i32 [ %add, %if.end20 ], [ %dec, %if.then.do.body26_crit_edge ]
  %12 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp27 = icmp sgt i32 %12, 1
  br i1 %cmp27, label %do.body30, label %do.body26.do.end47_crit_edge

do.body26.do.end47_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end47

do.body30:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @readbytes.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@readbytes, %do.end47)) #4
          to label %if.then36 [label %do.end47], !srcloc !203

if.then36:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %tobool40.not = icmp eq i32 %count.1, 0
  %cond = select i1 %tobool40.not, ptr @.str.36, ptr @.str.35
  %cond41 = select i1 %tobool39.not, ptr %cond, ptr @.str.40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @readbytes.__UNIQUE_ID_ddebug300, ptr noundef %dev37, ptr noundef nonnull @.str.39, i32 noundef %call, ptr noundef nonnull %cond41) #4
  br label %do.end47

do.end47:                                         ; preds = %if.then36, %do.body30, %do.body26.do.end47_crit_edge
  br i1 %tobool39.not, label %if.then50, label %do.end47.if.end56_crit_edge

do.end47.if.end56_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.then50:                                        ; preds = %do.end47
  %13 = ptrtoint ptr %algo_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %algo_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %tobool.not.i = icmp eq i32 %count.1, 0
  br i1 %tobool.not.i, label %if.then50.if.end.i_crit_edge, label %if.then.i

if.then50.if.end.i_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #6
  %setsda.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %setsda.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %setsda.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  tail call void %16(ptr noundef %18, i32 noundef 0) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then50.if.end.i_crit_edge
  %udelay.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %14, i32 0, i32 7
  %19 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %udelay.i, align 4
  %add.i = add i32 %20, 1
  %div.i = sdiv i32 %add.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %div.i) #4
  %call.i = tail call fastcc i32 @sclhi(ptr noundef %14) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13.i = icmp slt i32 %call.i, 0
  br i1 %cmp13.i, label %acknak.exit, label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %setscl.i.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %14, i32 0, i32 2
  %22 = ptrtoint ptr %setscl.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %setscl.i.i, align 4
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %14, align 4
  tail call void %23(ptr noundef %25, i32 noundef 0) #4
  %26 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %udelay.i, align 4
  %div.i.i = sdiv i32 %27, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %28(i32 noundef %div.i.i) #4
  br label %if.end56

acknak.exit:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.43) #7
  br label %cleanup

if.end56:                                         ; preds = %if.end15.i, %do.end47.if.end56_crit_edge
  %cmp = icmp sgt i32 %count.1, 0
  br i1 %cmp, label %if.end56.while.body_crit_edge, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end56.while.body_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

cleanup:                                          ; preds = %if.end56.cleanup_crit_edge, %acknak.exit, %do.end, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -71, %do.end ], [ -110, %acknak.exit ], [ 0, %entry.cleanup_crit_edge ], [ %rdcount.096, %while.body.cleanup_crit_edge ], [ %inc, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sclhi(ptr nocapture noundef readonly %adap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %setscl = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %setscl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %setscl, align 4
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 4
  tail call void %1(ptr noundef %3, i32 noundef 1) #4
  %getscl = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %adap, i32 0, i32 4
  %4 = ptrtoint ptr %getscl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getscl, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cond.false38_crit_edge, label %if.end

entry.cond.false38_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false38

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = ptrtoint ptr %getscl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %getscl, align 4
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 4
  %call56 = tail call i32 %8(ptr noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool3.not57 = icmp eq i32 %call56, 0
  br i1 %tobool3.not57, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %timeout = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %adap, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timeout, align 4
  %add = add i32 %12, %6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then4, label %do.end

if.then4:                                         ; preds = %while.body
  %14 = ptrtoint ptr %getscl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %getscl, align 4
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 4
  %call7 = tail call i32 %15(ptr noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then4.cleanup_crit_edge, label %if.then4.while.end_crit_edge

if.then4.while.end_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !206
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !207
  %18 = ptrtoint ptr %getscl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %getscl, align 4
  %20 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adap, align 4
  %call = tail call i32 %19(ptr noundef %21) #4
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %do.end.while.body_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %do.end.while.end_crit_edge, %if.then4.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %6)
  %cmp18.not = icmp eq i32 %22, %6
  br i1 %cmp18.not, label %while.end.cond.false38_crit_edge, label %land.lhs.true

while.end.cond.false38_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false38

land.lhs.true:                                    ; preds = %while.end
  %23 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp19 = icmp sgt i32 %23, 2
  br i1 %cmp19, label %do.body21, label %land.lhs.true.cond.false38_crit_edge

land.lhs.true.cond.false38_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false38

do.body21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sclhi.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sclhi, %cond.false38)) #4
          to label %if.then28 [label %cond.false38], !srcloc !203

if.then28:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub29 = sub i32 %24, %6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sclhi.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.13, i32 noundef %sub29) #4
  br label %cond.false38

cond.false38:                                     ; preds = %if.then28, %do.body21, %land.lhs.true.cond.false38_crit_edge, %while.end.cond.false38_crit_edge, %entry.cond.false38_crit_edge
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %adap, i32 0, i32 7
  %25 = ptrtoint ptr %udelay to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %udelay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %27(i32 noundef %26) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.false38, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then4.cleanup_crit_edge ], [ 0, %cond.false38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_address(ptr noundef %i2c_adap, i8 noundef zeroext %addr, i32 noundef %retries) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries)
  %cmp.not120 = icmp slt i32 %retries, 0
  br i1 %cmp.not120, label %entry.if.end80_crit_edge, label %for.body.lr.ph

entry.if.end80_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  %setsda.i.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 1
  %udelay.i.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 7
  %setscl.i.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end46.for.body_crit_edge, %for.body.lr.ph
  %i.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end46.for.body_crit_edge ]
  %call = tail call fastcc i32 @i2c_outb(ptr noundef %i2c_adap, i8 noundef zeroext %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1 = icmp eq i32 %call, 1
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %lor.lhs.false

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

lor.lhs.false:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0121, i32 %retries)
  %cmp2 = icmp eq i32 %i.0121, %retries
  br i1 %cmp2, label %lor.lhs.false.for.end_crit_edge, label %do.body

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body:                                          ; preds = %lor.lhs.false
  %2 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp3 = icmp sgt i32 %2, 2
  br i1 %cmp3, label %do.body5, label %do.body.do.end14_crit_edge

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @try_address.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@try_address, %do.end14)) #4
          to label %if.then10 [label %do.end14], !srcloc !203

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @try_address.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.11) #4
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %do.body5, %do.body.do.end14_crit_edge
  %3 = ptrtoint ptr %setsda.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %setsda.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void %4(ptr noundef %6, i32 noundef 0) #4
  %7 = ptrtoint ptr %udelay.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %udelay.i.i, align 4
  %add.i.i = add i32 %8, 1
  %div.i.i = sdiv i32 %add.i.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %9(i32 noundef %div.i.i) #4
  %call.i = tail call fastcc i32 @sclhi(ptr noundef %1) #4
  %10 = ptrtoint ptr %setsda.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %setsda.i.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void %11(ptr noundef %13, i32 noundef 1) #4
  %14 = ptrtoint ptr %udelay.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %udelay.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %16(i32 noundef %15) #4
  %17 = ptrtoint ptr %udelay.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %udelay.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %18) #4
  tail call void @yield() #4
  %20 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp23 = icmp sgt i32 %20, 2
  br i1 %cmp23, label %do.body25, label %do.end14.do.end46_crit_edge

do.end14.do.end46_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end46

do.body25:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @try_address.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@try_address, %do.end46)) #4
          to label %if.then39 [label %do.end46], !srcloc !203

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @try_address.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.3) #4
  br label %do.end46

do.end46:                                         ; preds = %if.then39, %do.body25, %do.end14.do.end46_crit_edge
  %21 = ptrtoint ptr %setsda.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %setsda.i.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  tail call void %22(ptr noundef %24, i32 noundef 0) #4
  %25 = ptrtoint ptr %udelay.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %udelay.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %27(i32 noundef %26) #4
  %28 = ptrtoint ptr %setscl.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %setscl.i.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  tail call void %29(ptr noundef %31, i32 noundef 0) #4
  %32 = ptrtoint ptr %udelay.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %udelay.i.i, align 4
  %div.i.i112 = sdiv i32 %33, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %div.i.i112) #4
  %inc = add nuw i32 %i.0121, 1
  %cmp.not = icmp sgt i32 %inc, %retries
  br i1 %cmp.not, label %do.end46.for.end_crit_edge, label %do.end46.for.body_crit_edge

do.end46.for.body_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end46.for.end_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %do.end46.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %inc, %do.end46.for.end_crit_edge ], [ %retries, %lor.lhs.false.for.end_crit_edge ], [ %i.0121, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %tobool47.not = icmp eq i32 %i.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool48.not = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool47.not, i1 true, i1 %tobool48.not
  br i1 %or.cond, label %for.end.if.end80_crit_edge, label %do.body50

for.end.if.end80_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

do.body50:                                        ; preds = %for.end
  %35 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp51 = icmp sgt i32 %35, 0
  br i1 %cmp51, label %do.body53, label %do.body50.if.end80_crit_edge

do.body50.if.end80_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

do.body53:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @try_address.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@try_address, %if.end80)) #4
          to label %if.then67 [label %if.end80], !srcloc !203

if.then67:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #6
  %dev68 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  %add = add i32 %i.0.lcssa, 1
  %conv = zext i8 %addr to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool69.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool69.not, ptr @.str.28, ptr @.str.27
  %36 = lshr i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp71 = icmp eq i32 %call, 1
  %cond73 = select i1 %cmp71, ptr @.str.29, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @try_address.__UNIQUE_ID_ddebug299, ptr noundef %dev68, ptr noundef nonnull @.str.26, i32 noundef %add, ptr noundef nonnull %cond, i32 noundef %36, ptr noundef nonnull %cond73) #4
  br label %if.end80

if.end80:                                         ; preds = %if.then67, %do.body53, %do.body50.if.end80_crit_edge, %for.end.if.end80_crit_edge, %entry.if.end80_crit_edge
  %ret.1132 = phi i32 [ %call, %do.body53 ], [ %call, %do.body50.if.end80_crit_edge ], [ %call, %if.then67 ], [ %call, %for.end.if.end80_crit_edge ], [ 0, %entry.if.end80_crit_edge ]
  ret i32 %ret.1132
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_outb(ptr noundef %i2c_adap, i8 noundef zeroext %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %conv = zext i8 %c to i32
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 1
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 7
  %setscl.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end30.for.body_crit_edge, %entry
  %i.0147 = phi i32 [ 7, %entry ], [ %dec, %if.end30.for.body_crit_edge ]
  %shr = lshr i32 %conv, %i.0147
  %and = and i32 %shr, 1
  %2 = ptrtoint ptr %setsda to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %setsda, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %5, i32 noundef %and) #4
  %6 = ptrtoint ptr %udelay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %udelay, align 4
  %add = add i32 %7, 1
  %div = sdiv i32 %add, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %div) #4
  %call = tail call fastcc i32 @sclhi(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp15 = icmp slt i32 %call, 0
  br i1 %cmp15, label %do.body, label %if.end30

do.body:                                          ; preds = %for.body
  %9 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp17 = icmp sgt i32 %9, 0
  br i1 %cmp17, label %do.body20, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_outb.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_outb, %cleanup)) #4
          to label %if.then25 [label %cleanup], !srcloc !203

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_outb.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %conv, i32 noundef %i.0147) #4
  br label %cleanup

if.end30:                                         ; preds = %for.body
  %10 = ptrtoint ptr %setscl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %setscl.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void %11(ptr noundef %13, i32 noundef 0) #4
  %14 = ptrtoint ptr %udelay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %udelay, align 4
  %div.i = sdiv i32 %15, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %16(i32 noundef %div.i) #4
  %dec = add nsw i32 %i.0147, -1
  %cmp.not = icmp eq i32 %i.0147, 0
  br i1 %cmp.not, label %for.end, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end30
  %17 = ptrtoint ptr %setsda to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %setsda, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void %18(ptr noundef %20, i32 noundef 1) #4
  %21 = ptrtoint ptr %udelay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %udelay, align 4
  %add.i = add i32 %22, 1
  %div.i128 = sdiv i32 %add.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %div.i128) #4
  %call31 = tail call fastcc i32 @sclhi(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.body35, label %if.end62

do.body35:                                        ; preds = %for.end
  %24 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp36 = icmp sgt i32 %24, 0
  br i1 %cmp36, label %do.body39, label %do.body35.cleanup_crit_edge

do.body35.cleanup_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body39:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_outb.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_outb, %cleanup)) #4
          to label %if.then53 [label %cleanup], !srcloc !203

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #6
  %dev54 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_outb.__UNIQUE_ID_ddebug294, ptr noundef %dev54, ptr noundef nonnull @.str.33, i32 noundef %conv) #4
  br label %cleanup

if.end62:                                         ; preds = %for.end
  %getsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %getsda to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %getsda, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call64 = tail call i32 %26(ptr noundef %28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  %lnot.ext67 = zext i1 %tobool65.not to i32
  %29 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp69 = icmp sgt i32 %29, 1
  br i1 %cmp69, label %do.body72, label %if.end62.do.end95_crit_edge

if.end62.do.end95_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end95

do.body72:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_outb.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_outb, %do.end95)) #4
          to label %if.then86 [label %do.end95], !srcloc !203

if.then86:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #6
  %dev87 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  %cond = select i1 %tobool65.not, ptr @.str.35, ptr @.str.36
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_outb.__UNIQUE_ID_ddebug295, ptr noundef %dev87, ptr noundef nonnull @.str.34, i32 noundef %conv, ptr noundef nonnull %cond) #4
  br label %do.end95

do.end95:                                         ; preds = %if.then86, %do.body72, %if.end62.do.end95_crit_edge
  %30 = ptrtoint ptr %setscl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %setscl.i, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  tail call void %31(ptr noundef %33, i32 noundef 0) #4
  %34 = ptrtoint ptr %udelay to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %udelay, align 4
  %div.i135 = sdiv i32 %35, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %36(i32 noundef %div.i135) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %if.then53, %do.body39, %do.body35.cleanup_crit_edge, %if.then25, %do.body20, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then25 ], [ -110, %do.body.cleanup_crit_edge ], [ -110, %if.then53 ], [ -110, %do.body35.cleanup_crit_edge ], [ %lnot.ext67, %do.end95 ], [ -110, %do.body20 ], [ -110, %do.body39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_inb(ptr noundef %i2c_adap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %setsda.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %setsda.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %setsda.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %5, i32 noundef 1) #4
  %udelay.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %udelay.i, align 4
  %add.i = add i32 %7, 1
  %div.i = sdiv i32 %add.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %div.i) #4
  %getsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 3
  %setscl = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %entry
  %i.092 = phi i32 [ 0, %entry ], [ %inc, %if.end13.for.body_crit_edge ]
  %indata.091 = phi i8 [ 0, %entry ], [ %spec.select, %if.end13.for.body_crit_edge ]
  %call = tail call fastcc i32 @sclhi(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %do.body, label %if.end13

do.body:                                          ; preds = %for.body
  %9 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2 = icmp sgt i32 %9, 0
  br i1 %cmp2, label %do.body4, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_inb.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_inb, %cleanup)) #4
          to label %if.then9 [label %cleanup], !srcloc !203

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  %sub = sub nsw i32 7, %i.092
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_inb.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %sub) #4
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %mul = shl i8 %indata.091, 1
  %10 = ptrtoint ptr %getsda to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %getsda, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call15 = tail call i32 %11(ptr noundef %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp ne i32 %call15, 0
  %14 = zext i1 %tobool16.not to i8
  %spec.select = or i8 %mul, %14
  %15 = ptrtoint ptr %setscl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %setscl, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void %16(ptr noundef %18, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.092)
  %cmp22 = icmp eq i32 %i.092, 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %20 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %udelay.i, align 4
  %div55 = sdiv i32 %21, 2
  %cond59 = select i1 %cmp22, i32 %div55, i32 %21
  tail call void %19(i32 noundef %cond59) #4
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %conv61 = zext i8 %spec.select to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then9, %do.body4, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv61, %for.end ], [ -110, %if.then9 ], [ -110, %do.body.cleanup_crit_edge ], [ -110, %do.body4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @acknak(ptr noundef %i2c_adap, i32 noundef %is_ack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_ack)
  %tobool.not = icmp eq i32 %is_ack, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %setsda to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %setsda, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %5, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %udelay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %udelay, align 4
  %add = add i32 %7, 1
  %div = sdiv i32 %add, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %div) #4
  %call = tail call fastcc i32 @sclhi(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13 = icmp slt i32 %call, 0
  br i1 %cmp13, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %setscl.i = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %setscl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %setscl.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void %10(ptr noundef %12, i32 noundef 0) #4
  %13 = ptrtoint ptr %udelay to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %udelay, align 4
  %div.i = sdiv i32 %14, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %15(i32 noundef %div.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !71, !73, !74, !75, !77, !79, !80, !81, !83, !84, !86, !88, !89, !90, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192}
!llvm.module.flags = !{!194, !195, !196, !197, !198, !199, !200, !201}
!llvm.ident = !{!202}

!0 = !{ptr @__param_bit_test, !1, !"__param_bit_test", i1 false, i1 false}
!1 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_bit_testtype288, !1, !"__UNIQUE_ID_bit_testtype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_bit_test289, !4, !"__UNIQUE_ID_bit_test289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 37, i32 1}
!5 = !{ptr @__param_i2c_debug, !6, !"__param_i2c_debug", i1 false, i1 false}
!6 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 41, i32 1}
!7 = !{ptr @__UNIQUE_ID_i2c_debugtype290, !6, !"__UNIQUE_ID_i2c_debugtype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_i2c_debug291, !9, !"__UNIQUE_ID_i2c_debug291", i1 false, i1 false}
!9 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 42, i32 1}
!10 = !{ptr @i2c_bit_algo, !11, !"i2c_bit_algo", i1 false, i1 false}
!11 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 632, i32 28}
!12 = !{ptr @__ksymtab_i2c_bit_algo, !13, !"__ksymtab_i2c_bit_algo", i1 false, i1 false}
!13 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 637, i32 1}
!14 = !{ptr @__ksymtab_i2c_bit_add_bus, !15, !"__ksymtab_i2c_bit_add_bus", i1 false, i1 false}
!15 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 685, i32 1}
!16 = !{ptr @__ksymtab_i2c_bit_add_numbered_bus, !17, !"__ksymtab_i2c_bit_add_numbered_bus", i1 false, i1 false}
!17 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 691, i32 1}
!18 = !{ptr @__UNIQUE_ID_author310, !19, !"__UNIQUE_ID_author310", i1 false, i1 false}
!19 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 693, i32 1}
!20 = !{ptr @__UNIQUE_ID_description311, !21, !"__UNIQUE_ID_description311", i1 false, i1 false}
!21 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 694, i32 1}
!22 = !{ptr @__UNIQUE_ID_file312, !23, !"__UNIQUE_ID_file312", i1 false, i1 false}
!23 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 695, i32 1}
!24 = !{ptr @__UNIQUE_ID_license313, !23, !"__UNIQUE_ID_license313", i1 false, i1 false}
!25 = !{ptr @bit_test, !26, !"bit_test", i1 false, i1 false}
!26 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 35, i32 12}
!27 = !{ptr @__param_str_bit_test, !1, !"__param_str_bit_test", i1 false, i1 false}
!28 = !{ptr @__param_str_i2c_debug, !6, !"__param_str_i2c_debug", i1 false, i1 false}
!29 = !{ptr @i2c_debug, !30, !"i2c_debug", i1 false, i1 false}
!30 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 40, i32 12}
!31 = !{ptr @.str, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 545, i32 2}
!33 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @bit_xfer.__UNIQUE_ID_ddebug303, !32, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!37 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 553, i32 6}
!39 = !{ptr @bit_xfer.__UNIQUE_ID_ddebug304, !38, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!40 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 558, i32 6}
!42 = !{ptr @bit_xfer.__UNIQUE_ID_ddebug305, !41, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!43 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 565, i32 5}
!45 = !{ptr @bit_xfer.__UNIQUE_ID_ddebug306, !44, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!46 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 575, i32 5}
!48 = !{ptr @bit_xfer.__UNIQUE_ID_ddebug307, !47, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!49 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 586, i32 5}
!53 = !{ptr @bit_xfer.__UNIQUE_ID_ddebug308, !52, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 598, i32 2}
!56 = !{ptr @bit_xfer.__UNIQUE_ID_ddebug309, !55, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 104, i32 3}
!59 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @sclhi.__UNIQUE_ID_ddebug292, !58, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 491, i32 3}
!63 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @bit_doAddress.__UNIQUE_ID_ddebug301, !62, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 495, i32 4}
!67 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @bit_doAddress._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @bit_doAddress._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 503, i32 4}
!73 = !{ptr @bit_doAddress._entry.19, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @bit_doAddress._entry_ptr.21, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @bit_doAddress.__UNIQUE_ID_ddebug302, !76, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!76 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 507, i32 4}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 514, i32 5}
!79 = !{ptr @bit_doAddress._entry.22, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @bit_doAddress._entry_ptr.24, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 344, i32 3}
!83 = !{ptr @try_address.__UNIQUE_ID_ddebug297, !82, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!84 = !{ptr @try_address.__UNIQUE_ID_ddebug298, !85, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!85 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 348, i32 3}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 352, i32 3}
!88 = !{ptr @try_address.__UNIQUE_ID_ddebug299, !87, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!89 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 165, i32 4}
!95 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @i2c_outb.__UNIQUE_ID_ddebug293, !94, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 180, i32 3}
!99 = !{ptr @i2c_outb.__UNIQUE_ID_ddebug294, !98, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 189, i32 2}
!102 = !{ptr @i2c_outb.__UNIQUE_ID_ddebug295, !101, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!103 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 442, i32 5}
!107 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @readbytes._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @readbytes._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 454, i32 3}
!112 = !{ptr @readbytes.__UNIQUE_ID_ddebug300, !111, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!113 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 210, i32 4}
!116 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @i2c_inb.__UNIQUE_ID_ddebug296, !115, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 409, i32 3}
!120 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @acknak._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @acknak._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 381, i32 4}
!125 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @sendbytes._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @sendbytes._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 392, i32 4}
!130 = !{ptr @sendbytes._entry.47, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @sendbytes._entry_ptr.49, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 618, i32 3}
!134 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @bit_xfer_atomic._entry, !133, !"_entry", i1 false, i1 false}
!137 = !{ptr @bit_xfer_atomic._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.53, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 675, i32 3}
!140 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @__i2c_bit_add_bus._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @__i2c_bit_add_bus._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 676, i32 3}
!145 = !{ptr @__i2c_bit_add_bus._entry.55, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @__i2c_bit_add_bus._entry_ptr.57, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 242, i32 3}
!149 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @test_bus._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @test_bus._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 247, i32 3}
!154 = !{ptr @test_bus._entry.60, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @test_bus._entry_ptr.62, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.64, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 257, i32 3}
!158 = !{ptr @test_bus._entry.63, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @test_bus._entry_ptr.65, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 261, i32 3}
!162 = !{ptr @test_bus._entry.66, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @test_bus._entry_ptr.68, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 271, i32 3}
!166 = !{ptr @test_bus._entry.69, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @test_bus._entry_ptr.71, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 275, i32 3}
!170 = !{ptr @test_bus._entry.72, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @test_bus._entry_ptr.74, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 285, i32 3}
!174 = !{ptr @test_bus._entry.75, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @test_bus._entry_ptr.77, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.79, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 289, i32 3}
!178 = !{ptr @test_bus._entry.78, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @test_bus._entry_ptr.80, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 299, i32 3}
!182 = !{ptr @test_bus._entry.81, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @test_bus._entry_ptr.83, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.85, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 303, i32 3}
!186 = !{ptr @test_bus._entry.84, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @test_bus._entry_ptr.86, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 312, i32 2}
!190 = !{ptr @test_bus._entry.87, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @test_bus._entry_ptr.89, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @i2c_bit_quirk_no_clk_stretch, !193, !"i2c_bit_quirk_no_clk_stretch", i1 false, i1 false}
!193 = !{!"../drivers/i2c/algos/i2c-algo-bit.c", i32 639, i32 40}
!194 = !{i32 1, !"wchar_size", i32 2}
!195 = !{i32 1, !"min_enum_size", i32 4}
!196 = !{i32 8, !"branch-target-enforcement", i32 0}
!197 = !{i32 8, !"sign-return-address", i32 0}
!198 = !{i32 8, !"sign-return-address-all", i32 0}
!199 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!200 = !{i32 7, !"uwtable", i32 1}
!201 = !{i32 7, !"frame-pointer", i32 2}
!202 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!203 = !{i64 2148706744, i64 2148706749, i64 2148706762, i64 2148706806, i64 2148706840, i64 2148706861}
!204 = !{i8 0, i8 2}
!205 = !{ptr @i2c_add_adapter, ptr @i2c_add_numbered_adapter}
!206 = !{i64 2155544789}
!207 = !{i64 2155544631}
