; ModuleID = '/llk/IR_all_yes/drivers/hwmon/ltc4245.c_pt.bc'
source_filename = "../drivers/hwmon/ltc4245.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ltc4245_data = type { ptr, %struct.mutex, i8, i32, [8 x i8], [13 x i8], i8, [3 x i32] }

@__initcall__kmod_ltc4245__288_486_ltc4245_driver_init6 = internal global ptr @ltc4245_driver_init, section ".initcall6.init", align 4
@ltc4245_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @ltc4245_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ltc4245_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ltc4245_driver_exit = internal global ptr @ltc4245_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [52 x i8] c"ltc4245.author=Ira W. Snyder <iws@ovro.caltech.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [35 x i8] c"ltc4245.description=LTC4245 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [35 x i8] c"ltc4245.file=drivers/hwmon/ltc4245\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"ltc4245.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ltc4245\00", [24 x i8] zeroinitializer }, align 32
@ltc4245_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ltc4245\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ltc4245_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@ltc4245_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @ltc4245_hwmon_ops, ptr @ltc4245_info }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ltc4245,use-extra-gpios\00", [40 x i8] zeroinitializer }, align 32
@ltc4245_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @ltc4245_is_visible, ptr @ltc4245_read, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@ltc4245_info = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral.4, ptr @.compoundliteral.6, ptr @.compoundliteral.8, ptr null], [16 x i8] zeroinitializer }, align 32
@ltc4245_curr_regs = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\11\14\17\1A", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ltc4245_get_current.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/ltc4245.c\00", [40 x i8] zeroinitializer }, align 32
@ltc4245_in_regs = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\10\13\16\19\12\15\18\1B", [24 x i8] zeroinitializer }, align 32
@ltc4245_get_voltage.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.compoundliteral = internal global { [13 x i32], [44 x i8] } { [13 x i32] [i32 2, i32 4098, i32 4098, i32 4098, i32 4098, i32 4098, i32 4098, i32 4098, i32 4098, i32 2, i32 2, i32 2, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 8194, i32 8194, i32 8194, i32 8194, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 3, ptr @.compoundliteral.5 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 512, i32 512, i32 512, i32 512, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 4, ptr @.compoundliteral.7 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 12]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 13]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 8, i64 17, i64 20, i64 23, i64 26]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 8, i64 17, i64 20, i64 23, i64 26]
@__sancov_gen_cov_switch_values.14 = internal global [11 x i64] [i64 9, i64 8, i64 16, i64 18, i64 19, i64 21, i64 22, i64 24, i64 25, i64 27, i64 28]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 12]
@__sancov_gen_cov_switch_values.16 = internal global [11 x i64] [i64 9, i64 8, i64 16, i64 18, i64 19, i64 21, i64 22, i64 24, i64 25, i64 27, i64 28]
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"ltc4245_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 478, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 480, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"ltc4245_id\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 471, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 457, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"ltc4245_chip_info\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 422, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 437, i32 27 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"ltc4245_hwmon_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 417, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"ltc4245_info\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 390, i32 41 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"ltc4245_curr_regs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 264, i32 17 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 247, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"ltc4245_in_regs\00", align 1
@___asan_gen_.51 = private constant [27 x i8] c"../drivers/hwmon/ltc4245.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 257, i32 17 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ltc4245_driver_exit, ptr @__initcall__kmod_ltc4245__288_486_ltc4245_driver_init6, ptr @ltc4245_driver_exit, ptr @ltc4245_driver, ptr @.str, ptr @ltc4245_id, ptr @ltc4245_probe.__key, ptr @.str.1, ptr @ltc4245_chip_info, ptr @.str.2, ptr @ltc4245_hwmon_ops, ptr @ltc4245_info, ptr @ltc4245_curr_regs, ptr @.str.3, ptr @ltc4245_in_regs, ptr @.compoundliteral, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4245_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4245_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4245_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4245_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4245_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4245_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4245_curr_regs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4245_in_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4245_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ltc4245_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltc4245_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ltc4245_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4245_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 140, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.ltc4245_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ltc4245_probe.__key) #5
  %platform_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %7 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.i = icmp ne i8 %10, 0
  br label %ltc4245_use_extra_gpios.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %call3.i = tail call ptr @of_find_property(ptr noundef %12, ptr noundef nonnull @.str.2, ptr noundef null) #5
  %tobool4.not.i = icmp ne ptr %call3.i, null
  br label %ltc4245_use_extra_gpios.exit

ltc4245_use_extra_gpios.exit:                     ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.then.i ], [ %tobool4.not.i, %if.end.i ]
  %use_extra_gpios = getelementptr inbounds %struct.ltc4245_data, ptr %call.i, i32 0, i32 6
  %frombool = zext i1 %retval.0.i to i8
  %13 = ptrtoint ptr %use_extra_gpios to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %use_extra_gpios, align 1
  %call8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext 0) #5
  %call9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 5, i8 noundef zeroext 0) #5
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call11 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @ltc4245_chip_info, ptr noundef null) #5
  %cmp.i.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  %14 = ptrtoint ptr %call11 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %14, i32 0
  br label %cleanup

cleanup:                                          ; preds = %ltc4245_use_extra_gpios.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %ltc4245_use_extra_gpios.exit ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ltc4245_is_visible(ptr nocapture noundef readonly %_data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb9
    i32 4, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp = icmp eq i32 %channel, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %1 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %attr, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb1
    i32 12, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %channel)
  %cmp2 = icmp sgt i32 %channel, 9
  br i1 %cmp2, label %land.lhs.true, label %sw.bb1.if.end4_crit_edge

sw.bb1.if.end4_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

land.lhs.true:                                    ; preds = %sw.bb1
  %use_extra_gpios = getelementptr inbounds %struct.ltc4245_data, ptr %_data, i32 0, i32 6
  %2 = ptrtoint ptr %use_extra_gpios to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_extra_gpios, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %sw.bb1.if.end4_crit_edge
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %channel)
  %cmp6 = icmp sgt i32 %channel, 8
  %. = select i1 %cmp6, i16 0, i16 292
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %switch.selectcmp.case1 = icmp eq i32 %attr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %attr)
  %switch.selectcmp.case2 = icmp eq i32 %attr, 13
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %4 = select i1 %switch.selectcmp, i16 292, i16 0
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %attr)
  %cond = icmp eq i32 %attr, 9
  %.20 = select i1 %cond, i16 292, i16 0
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.bb9, %sw.bb5, %if.end4, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 292, %if.end4 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %., %sw.bb5 ], [ 0, %if.end.cleanup_crit_edge ], [ %4, %sw.bb9 ], [ %.20, %sw.bb12 ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4245_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %type, label %entry.return_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  %call.i = tail call fastcc ptr @ltc4245_update_device(ptr noundef %dev) #5
  %1 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %attr, label %sw.bb.return_crit_edge [
    i32 1, label %sw.bb.i
    i32 13, label %sw.bb2.i
  ]

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  %arrayidx.i = getelementptr [4 x i8], ptr @ltc4245_curr_regs, i32 0, i32 %channel
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %call.i.i = tail call fastcc ptr @ltc4245_update_device(ptr noundef %dev) #5
  %conv.i.i = zext i8 %3 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -16
  %arrayidx.i.i = getelementptr %struct.ltc4245_data, ptr %call.i.i, i32 0, i32 5, i32 %sub.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %6 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %3, label %land.end.i.i [
    i8 17, label %sw.bb.i.i
    i8 20, label %sw.bb3.i.i
    i8 23, label %sw.bb8.i.i
    i8 26, label %sw.bb13.i.i
  ]

sw.bb.i.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv2.i.i = zext i8 %5 to i32
  %div.i.i = mul nuw nsw i32 %conv2.i.i, 5
  br label %return.sink.split

sw.bb3.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.i.i = zext i8 %5 to i32
  %mul6.i.i = mul nuw nsw i32 %conv4.i.i, 1250
  %div7.i.i = udiv i32 %mul6.i.i, 35
  br label %return.sink.split

sw.bb8.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv9.i.i = zext i8 %5 to i32
  %div12.i.i = mul nuw nsw i32 %conv9.i.i, 50
  br label %return.sink.split

sw.bb13.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv14.i.i = zext i8 %5 to i16
  %mul15.i.i = mul nuw i16 %conv14.i.i, 250
  %div1660.i.i = udiv i16 %mul15.i.i, 100
  %div16.zext.i.i = zext i16 %div1660.i.i to i32
  br label %return.sink.split

land.end.i.i:                                     ; preds = %sw.bb.i
  %.b59.i.i = load i1, ptr @ltc4245_get_current.__already_done, align 1
  br i1 %.b59.i.i, label %land.end.i.i.return.sink.split_crit_edge, label %if.then.i.i, !prof !46

land.end.i.i.return.sink.split_crit_edge:         ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ltc4245_get_current.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 247, i32 noundef 9, ptr noundef null) #5
  br label %return.sink.split

sw.bb2.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx3.i = getelementptr %struct.ltc4245_data, ptr %call.i, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3.i, align 4
  %conv.i = zext i8 %8 to i32
  %add.i = add i32 %channel, 4
  %9 = lshr i32 %conv.i, %add.i
  %10 = and i32 %9, 1
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %attr)
  %cond5.i = icmp eq i32 %attr, 9
  br i1 %cond5.i, label %sw.bb.i19, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb.i19:                                        ; preds = %sw.bb1
  %call.i13 = tail call fastcc ptr @ltc4245_update_device(ptr noundef %dev) #5
  %arrayidx.i14 = getelementptr [4 x i8], ptr @ltc4245_curr_regs, i32 0, i32 %channel
  %11 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i14, align 1
  %call.i.i15 = tail call fastcc ptr @ltc4245_update_device(ptr noundef %dev) #5
  %conv.i.i16 = zext i8 %12 to i32
  %sub.i.i17 = add nsw i32 %conv.i.i16, -16
  %arrayidx.i.i18 = getelementptr %struct.ltc4245_data, ptr %call.i.i15, i32 0, i32 5, i32 %sub.i.i17
  %13 = ptrtoint ptr %arrayidx.i.i18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i18, align 1
  %15 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %12, label %land.end.i.i36 [
    i8 17, label %sw.bb.i.i22
    i8 20, label %sw.bb3.i.i26
    i8 23, label %sw.bb8.i.i29
    i8 26, label %sw.bb13.i.i34
  ]

sw.bb.i.i22:                                      ; preds = %sw.bb.i19
  call void @__sanitizer_cov_trace_pc() #7
  %conv2.i.i20 = zext i8 %14 to i32
  %div.i.i21 = mul nuw nsw i32 %conv2.i.i20, 5
  br label %ltc4245_get_current.exit.i

sw.bb3.i.i26:                                     ; preds = %sw.bb.i19
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.i.i23 = zext i8 %14 to i32
  %mul6.i.i24 = mul nuw nsw i32 %conv4.i.i23, 1250
  %div7.i.i25 = udiv i32 %mul6.i.i24, 35
  br label %ltc4245_get_current.exit.i

sw.bb8.i.i29:                                     ; preds = %sw.bb.i19
  call void @__sanitizer_cov_trace_pc() #7
  %conv9.i.i27 = zext i8 %14 to i32
  %div12.i.i28 = mul nuw nsw i32 %conv9.i.i27, 50
  br label %ltc4245_get_current.exit.i

sw.bb13.i.i34:                                    ; preds = %sw.bb.i19
  call void @__sanitizer_cov_trace_pc() #7
  %conv14.i.i30 = zext i8 %14 to i16
  %mul15.i.i31 = mul nuw i16 %conv14.i.i30, 250
  %div1660.i.i32 = udiv i16 %mul15.i.i31, 100
  %div16.zext.i.i33 = zext i16 %div1660.i.i32 to i32
  br label %ltc4245_get_current.exit.i

land.end.i.i36:                                   ; preds = %sw.bb.i19
  %.b59.i.i35 = load i1, ptr @ltc4245_get_current.__already_done, align 1
  br i1 %.b59.i.i35, label %land.end.i.i36.ltc4245_get_current.exit.i_crit_edge, label %if.then.i.i37, !prof !46

land.end.i.i36.ltc4245_get_current.exit.i_crit_edge: ; preds = %land.end.i.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %ltc4245_get_current.exit.i

if.then.i.i37:                                    ; preds = %land.end.i.i36
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ltc4245_get_current.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 247, i32 noundef 9, ptr noundef null) #5
  br label %ltc4245_get_current.exit.i

ltc4245_get_current.exit.i:                       ; preds = %if.then.i.i37, %land.end.i.i36.ltc4245_get_current.exit.i_crit_edge, %sw.bb13.i.i34, %sw.bb8.i.i29, %sw.bb3.i.i26, %sw.bb.i.i22
  %curr.0.i.i = phi i32 [ %div16.zext.i.i33, %sw.bb13.i.i34 ], [ %div12.i.i28, %sw.bb8.i.i29 ], [ %div7.i.i25, %sw.bb3.i.i26 ], [ %div.i.i21, %sw.bb.i.i22 ], [ 0, %if.then.i.i37 ], [ 0, %land.end.i.i36.ltc4245_get_current.exit.i_crit_edge ]
  %arrayidx2.i = getelementptr [8 x i8], ptr @ltc4245_in_regs, i32 0, i32 %channel
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx2.i, align 1
  %call.i11.i = tail call fastcc ptr @ltc4245_update_device(ptr noundef %dev) #5
  %conv.i12.i = zext i8 %17 to i32
  %sub.i13.i = add nsw i32 %conv.i12.i, -16
  %arrayidx.i14.i = getelementptr %struct.ltc4245_data, ptr %call.i11.i, i32 0, i32 5, i32 %sub.i13.i
  %18 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i14.i, align 1
  %20 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %17, label %land.end.i19.i [
    i8 16, label %ltc4245_get_current.exit.i.sw.bb.i16.i_crit_edge
    i8 18, label %ltc4245_get_current.exit.i.sw.bb.i16.i_crit_edge67
    i8 19, label %ltc4245_get_current.exit.i.sw.bb3.i18.i_crit_edge
    i8 21, label %ltc4245_get_current.exit.i.sw.bb3.i18.i_crit_edge68
    i8 22, label %ltc4245_get_current.exit.i.sw.bb6.i.i_crit_edge
    i8 24, label %ltc4245_get_current.exit.i.sw.bb6.i.i_crit_edge69
    i8 25, label %ltc4245_get_current.exit.i.sw.bb9.i.i_crit_edge
    i8 27, label %ltc4245_get_current.exit.i.sw.bb9.i.i_crit_edge70
    i8 28, label %sw.bb12.i.i
  ]

ltc4245_get_current.exit.i.sw.bb9.i.i_crit_edge70: ; preds = %ltc4245_get_current.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9.i.i

ltc4245_get_current.exit.i.sw.bb9.i.i_crit_edge:  ; preds = %ltc4245_get_current.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9.i.i

ltc4245_get_current.exit.i.sw.bb6.i.i_crit_edge69: ; preds = %ltc4245_get_current.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6.i.i

ltc4245_get_current.exit.i.sw.bb6.i.i_crit_edge:  ; preds = %ltc4245_get_current.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6.i.i

ltc4245_get_current.exit.i.sw.bb3.i18.i_crit_edge68: ; preds = %ltc4245_get_current.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i18.i

ltc4245_get_current.exit.i.sw.bb3.i18.i_crit_edge: ; preds = %ltc4245_get_current.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i18.i

ltc4245_get_current.exit.i.sw.bb.i16.i_crit_edge67: ; preds = %ltc4245_get_current.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i16.i

ltc4245_get_current.exit.i.sw.bb.i16.i_crit_edge: ; preds = %ltc4245_get_current.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i16.i

sw.bb.i16.i:                                      ; preds = %ltc4245_get_current.exit.i.sw.bb.i16.i_crit_edge, %ltc4245_get_current.exit.i.sw.bb.i16.i_crit_edge67
  %conv2.i15.i = zext i8 %19 to i32
  %mul.i.i = mul nuw nsw i32 %conv2.i15.i, 55
  br label %ltc4245_get_voltage.exit.i

sw.bb3.i18.i:                                     ; preds = %ltc4245_get_current.exit.i.sw.bb3.i18.i_crit_edge, %ltc4245_get_current.exit.i.sw.bb3.i18.i_crit_edge68
  %conv4.i17.i = zext i8 %19 to i32
  %mul5.i.i = mul nuw nsw i32 %conv4.i17.i, 22
  br label %ltc4245_get_voltage.exit.i

sw.bb6.i.i:                                       ; preds = %ltc4245_get_current.exit.i.sw.bb6.i.i_crit_edge, %ltc4245_get_current.exit.i.sw.bb6.i.i_crit_edge69
  %conv7.i.i = zext i8 %19 to i32
  %mul8.i.i = mul nuw nsw i32 %conv7.i.i, 15
  br label %ltc4245_get_voltage.exit.i

sw.bb9.i.i:                                       ; preds = %ltc4245_get_current.exit.i.sw.bb9.i.i_crit_edge, %ltc4245_get_current.exit.i.sw.bb9.i.i_crit_edge70
  %conv10.i.i = zext i8 %19 to i32
  %mul11.i.i = mul nsw i32 %conv10.i.i, -55
  br label %ltc4245_get_voltage.exit.i

sw.bb12.i.i:                                      ; preds = %ltc4245_get_current.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv13.i.i = zext i8 %19 to i32
  %mul14.i.i = mul nuw nsw i32 %conv13.i.i, 10
  br label %ltc4245_get_voltage.exit.i

land.end.i19.i:                                   ; preds = %ltc4245_get_current.exit.i
  %.b55.i.i = load i1, ptr @ltc4245_get_voltage.__already_done, align 1
  br i1 %.b55.i.i, label %land.end.i19.i.ltc4245_get_voltage.exit.i_crit_edge, label %if.then.i20.i, !prof !46

land.end.i19.i.ltc4245_get_voltage.exit.i_crit_edge: ; preds = %land.end.i19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ltc4245_get_voltage.exit.i

if.then.i20.i:                                    ; preds = %land.end.i19.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ltc4245_get_voltage.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 198, i32 noundef 9, ptr noundef null) #5
  br label %ltc4245_get_voltage.exit.i

ltc4245_get_voltage.exit.i:                       ; preds = %if.then.i20.i, %land.end.i19.i.ltc4245_get_voltage.exit.i_crit_edge, %sw.bb12.i.i, %sw.bb9.i.i, %sw.bb6.i.i, %sw.bb3.i18.i, %sw.bb.i16.i
  %voltage.0.i.i = phi i32 [ %mul14.i.i, %sw.bb12.i.i ], [ %mul11.i.i, %sw.bb9.i.i ], [ %mul8.i.i, %sw.bb6.i.i ], [ %mul5.i.i, %sw.bb3.i18.i ], [ %mul.i.i, %sw.bb.i16.i ], [ 0, %if.then.i20.i ], [ 0, %land.end.i19.i.ltc4245_get_voltage.exit.i_crit_edge ]
  %mul.i = mul nsw i32 %voltage.0.i.i, %curr.0.i.i
  %21 = tail call i32 @llvm.abs.i32(i32 %mul.i, i1 true) #5
  br label %return.sink.split

sw.bb3:                                           ; preds = %entry
  %sub = add i32 %channel, -1
  %call.i39 = tail call fastcc ptr @ltc4245_update_device(ptr noundef %dev) #5
  %22 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %attr, label %sw.bb3.return_crit_edge [
    i32 1, label %sw.bb.i40
    i32 12, label %sw.bb6.i
  ]

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb.i40:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp.i = icmp slt i32 %sub, 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i40
  %arrayidx.i41 = getelementptr [8 x i8], ptr @ltc4245_in_regs, i32 0, i32 %sub
  %23 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i41, align 1
  %call.i.i42 = tail call fastcc ptr @ltc4245_update_device(ptr noundef %dev) #5
  %conv.i.i43 = zext i8 %24 to i32
  %sub.i.i44 = add nsw i32 %conv.i.i43, -16
  %arrayidx.i.i45 = getelementptr %struct.ltc4245_data, ptr %call.i.i42, i32 0, i32 5, i32 %sub.i.i44
  %25 = ptrtoint ptr %arrayidx.i.i45 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i45, align 1
  %27 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %24, label %land.end.i.i62 [
    i8 16, label %if.then.i.sw.bb.i.i48_crit_edge
    i8 18, label %if.then.i.sw.bb.i.i48_crit_edge71
    i8 19, label %if.then.i.sw.bb3.i.i51_crit_edge
    i8 21, label %if.then.i.sw.bb3.i.i51_crit_edge72
    i8 22, label %if.then.i.sw.bb6.i.i54_crit_edge
    i8 24, label %if.then.i.sw.bb6.i.i54_crit_edge73
    i8 25, label %if.then.i.sw.bb9.i.i57_crit_edge
    i8 27, label %if.then.i.sw.bb9.i.i57_crit_edge74
    i8 28, label %sw.bb12.i.i60
  ]

if.then.i.sw.bb9.i.i57_crit_edge74:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9.i.i57

if.then.i.sw.bb9.i.i57_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9.i.i57

if.then.i.sw.bb6.i.i54_crit_edge73:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6.i.i54

if.then.i.sw.bb6.i.i54_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6.i.i54

if.then.i.sw.bb3.i.i51_crit_edge72:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i51

if.then.i.sw.bb3.i.i51_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i51

if.then.i.sw.bb.i.i48_crit_edge71:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i48

if.then.i.sw.bb.i.i48_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i48

sw.bb.i.i48:                                      ; preds = %if.then.i.sw.bb.i.i48_crit_edge, %if.then.i.sw.bb.i.i48_crit_edge71
  %conv2.i.i46 = zext i8 %26 to i32
  %mul.i.i47 = mul nuw nsw i32 %conv2.i.i46, 55
  br label %return.sink.split

sw.bb3.i.i51:                                     ; preds = %if.then.i.sw.bb3.i.i51_crit_edge, %if.then.i.sw.bb3.i.i51_crit_edge72
  %conv4.i.i49 = zext i8 %26 to i32
  %mul5.i.i50 = mul nuw nsw i32 %conv4.i.i49, 22
  br label %return.sink.split

sw.bb6.i.i54:                                     ; preds = %if.then.i.sw.bb6.i.i54_crit_edge, %if.then.i.sw.bb6.i.i54_crit_edge73
  %conv7.i.i52 = zext i8 %26 to i32
  %mul8.i.i53 = mul nuw nsw i32 %conv7.i.i52, 15
  br label %return.sink.split

sw.bb9.i.i57:                                     ; preds = %if.then.i.sw.bb9.i.i57_crit_edge, %if.then.i.sw.bb9.i.i57_crit_edge74
  %conv10.i.i55 = zext i8 %26 to i32
  %mul11.i.i56 = mul nsw i32 %conv10.i.i55, -55
  br label %return.sink.split

sw.bb12.i.i60:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv13.i.i58 = zext i8 %26 to i32
  %mul14.i.i59 = mul nuw nsw i32 %conv13.i.i58, 10
  br label %return.sink.split

land.end.i.i62:                                   ; preds = %if.then.i
  %.b55.i.i61 = load i1, ptr @ltc4245_get_voltage.__already_done, align 1
  br i1 %.b55.i.i61, label %land.end.i.i62.return.sink.split_crit_edge, label %if.then.i.i63, !prof !46

land.end.i.i62.return.sink.split_crit_edge:       ; preds = %land.end.i.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

if.then.i.i63:                                    ; preds = %land.end.i.i62
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ltc4245_get_voltage.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 198, i32 noundef 9, ptr noundef null) #5
  br label %return.sink.split

if.else.i:                                        ; preds = %sw.bb.i40
  %sub.i = add i32 %channel, -9
  %arrayidx2.i64 = getelementptr %struct.ltc4245_data, ptr %call.i39, i32 0, i32 7, i32 %sub.i
  %28 = ptrtoint ptr %arrayidx2.i64 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx2.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp3.i = icmp slt i32 %29, 0
  br i1 %cmp3.i, label %if.else.i.return_crit_edge, label %if.end.i

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i65 = mul i32 %29, 10
  br label %return.sink.split

sw.bb6.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp7.i = icmp slt i32 %sub, 4
  br i1 %cmp7.i, label %if.then8.i, label %if.else11.i

if.then8.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx9.i = getelementptr %struct.ltc4245_data, ptr %call.i39, i32 0, i32 4, i32 4
  %30 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx9.i, align 4
  %conv.i66 = zext i8 %31 to i32
  %32 = lshr i32 %conv.i66, %sub
  br label %if.end23.i

if.else11.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13.i = getelementptr %struct.ltc4245_data, ptr %call.i39, i32 0, i32 4, i32 5
  %33 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %34 to i32
  %sub15.i = add i32 %channel, -5
  %35 = lshr i32 %conv14.i, %sub15.i
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else11.i, %if.then8.i
  %storemerge.in.i = phi i32 [ %35, %if.else11.i ], [ %32, %if.then8.i ]
  %storemerge.i = and i32 %storemerge.in.i, 1
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end23.i, %if.end.i, %if.then.i.i63, %land.end.i.i62.return.sink.split_crit_edge, %sw.bb12.i.i60, %sw.bb9.i.i57, %sw.bb6.i.i54, %sw.bb3.i.i51, %sw.bb.i.i48, %ltc4245_get_voltage.exit.i, %sw.bb2.i, %if.then.i.i, %land.end.i.i.return.sink.split_crit_edge, %sw.bb13.i.i, %sw.bb8.i.i, %sw.bb3.i.i, %sw.bb.i.i
  %voltage.0.i.sink.i.sink = phi i32 [ %21, %ltc4245_get_voltage.exit.i ], [ %10, %sw.bb2.i ], [ %div16.zext.i.i, %sw.bb13.i.i ], [ %div12.i.i, %sw.bb8.i.i ], [ %div7.i.i, %sw.bb3.i.i ], [ %div.i.i, %sw.bb.i.i ], [ 0, %if.then.i.i ], [ 0, %land.end.i.i.return.sink.split_crit_edge ], [ %mul.i65, %if.end.i ], [ %storemerge.i, %if.end23.i ], [ %mul14.i.i59, %sw.bb12.i.i60 ], [ %mul11.i.i56, %sw.bb9.i.i57 ], [ %mul8.i.i53, %sw.bb6.i.i54 ], [ %mul5.i.i50, %sw.bb3.i.i51 ], [ %mul.i.i47, %sw.bb.i.i48 ], [ 0, %if.then.i.i63 ], [ 0, %land.end.i.i62.return.sink.split_crit_edge ]
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %voltage.0.i.sink.i.sink, ptr %val, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.else.i.return_crit_edge, %sw.bb3.return_crit_edge, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -95, %sw.bb.return_crit_edge ], [ -95, %sw.bb1.return_crit_edge ], [ -95, %sw.bb3.return_crit_edge ], [ %29, %if.else.i.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ltc4245_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.ltc4245_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #5
  %last_updated = getelementptr inbounds %struct.ltc4245_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add = add i32 %5, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.ltc4245_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end39_crit_edge

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #5
  %9 = call i32 @llvm.smax.i32(i32 %call3, i32 0)
  %10 = trunc i32 %9 to i8
  %11 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 4, i32 0
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %10, ptr %11, align 1
  %call3.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #5
  %13 = call i32 @llvm.smax.i32(i32 %call3.1, i32 0)
  %14 = trunc i32 %13 to i8
  %15 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %14, ptr %15, align 1
  %call3.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #5
  %17 = call i32 @llvm.smax.i32(i32 %call3.2, i32 0)
  %18 = trunc i32 %17 to i8
  %19 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %18, ptr %19, align 1
  %call3.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #5
  %21 = call i32 @llvm.smax.i32(i32 %call3.3, i32 0)
  %22 = trunc i32 %21 to i8
  %23 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %22, ptr %23, align 1
  %call3.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 4) #5
  %25 = call i32 @llvm.smax.i32(i32 %call3.4, i32 0)
  %26 = trunc i32 %25 to i8
  %27 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %26, ptr %27, align 1
  %call3.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 5) #5
  %29 = call i32 @llvm.smax.i32(i32 %call3.5, i32 0)
  %30 = trunc i32 %29 to i8
  %31 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 4, i32 5
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %30, ptr %31, align 1
  %call3.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 6) #5
  %33 = call i32 @llvm.smax.i32(i32 %call3.6, i32 0)
  %34 = trunc i32 %33 to i8
  %35 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 4, i32 6
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %34, ptr %35, align 1
  %call3.7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 7) #5
  %37 = call i32 @llvm.smax.i32(i32 %call3.7, i32 0)
  %38 = trunc i32 %37 to i8
  %39 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 4, i32 7
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %38, ptr %39, align 1
  %call18 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 16) #5
  %41 = call i32 @llvm.smax.i32(i32 %call18, i32 0)
  %42 = trunc i32 %41 to i8
  %43 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 5, i32 0
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %42, ptr %43, align 1
  %call18.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 17) #5
  %45 = call i32 @llvm.smax.i32(i32 %call18.1, i32 0)
  %46 = trunc i32 %45 to i8
  %47 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %46, ptr %47, align 1
  %call18.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 18) #5
  %49 = call i32 @llvm.smax.i32(i32 %call18.2, i32 0)
  %50 = trunc i32 %49 to i8
  %51 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 5, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %50, ptr %51, align 1
  %call18.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 19) #5
  %53 = call i32 @llvm.smax.i32(i32 %call18.3, i32 0)
  %54 = trunc i32 %53 to i8
  %55 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 5, i32 3
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %54, ptr %55, align 1
  %call18.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 20) #5
  %57 = call i32 @llvm.smax.i32(i32 %call18.4, i32 0)
  %58 = trunc i32 %57 to i8
  %59 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 5, i32 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %58, ptr %59, align 1
  %call18.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 21) #5
  %61 = call i32 @llvm.smax.i32(i32 %call18.5, i32 0)
  %62 = trunc i32 %61 to i8
  %63 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 5, i32 5
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %62, ptr %63, align 1
  %call18.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 22) #5
  %65 = call i32 @llvm.smax.i32(i32 %call18.6, i32 0)
  %66 = trunc i32 %65 to i8
  %67 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 5, i32 6
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %66, ptr %67, align 1
  %call18.7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 23) #5
  %69 = call i32 @llvm.smax.i32(i32 %call18.7, i32 0)
  %70 = trunc i32 %69 to i8
  %71 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 5, i32 7
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %70, ptr %71, align 1
  %call18.8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 24) #5
  %73 = call i32 @llvm.smax.i32(i32 %call18.8, i32 0)
  %74 = trunc i32 %73 to i8
  %75 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 5, i32 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %74, ptr %75, align 1
  %call18.9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 25) #5
  %77 = call i32 @llvm.smax.i32(i32 %call18.9, i32 0)
  %78 = trunc i32 %77 to i8
  %79 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 5, i32 9
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %78, ptr %79, align 1
  %call18.10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 26) #5
  %81 = call i32 @llvm.smax.i32(i32 %call18.10, i32 0)
  %82 = trunc i32 %81 to i8
  %83 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 5, i32 10
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %82, ptr %83, align 1
  %call18.11 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 27) #5
  %85 = call i32 @llvm.smax.i32(i32 %call18.11, i32 0)
  %86 = trunc i32 %85 to i8
  %87 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 5, i32 11
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %86, ptr %87, align 1
  %call18.12 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 28) #5
  %89 = call i32 @llvm.smax.i32(i32 %call18.12, i32 0)
  %90 = trunc i32 %89 to i8
  %91 = getelementptr %struct.ltc4245_data, ptr %1, i32 0, i32 5, i32 12
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %90, ptr %91, align 1
  %93 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %driver_data.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %use_extra_gpios.i = getelementptr inbounds %struct.ltc4245_data, ptr %94, i32 0, i32 6
  %97 = ptrtoint ptr %use_extra_gpios.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %use_extra_gpios.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i = icmp eq i8 %98, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.ltc4245_data, ptr %94, i32 0, i32 5, i32 12
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.i, align 4
  %conv.i = zext i8 %100 to i32
  %gpios.i = getelementptr inbounds %struct.ltc4245_data, ptr %94, i32 0, i32 7
  %101 = ptrtoint ptr %gpios.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %conv.i, ptr %gpios.i, align 4
  br label %ltc4245_update_gpios.exit

if.end.i:                                         ; preds = %if.then
  %last_updated.i = getelementptr inbounds %struct.ltc4245_data, ptr %94, i32 0, i32 3
  %102 = ptrtoint ptr %last_updated.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %last_updated.i, align 4
  %add.i = add i32 %103, 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %104 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %for.body.preheader.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

for.body.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8.i = getelementptr %struct.ltc4245_data, ptr %94, i32 0, i32 7, i32 0
  %105 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -11, ptr %arrayidx8.i, align 4
  %arrayidx8.1.i = getelementptr %struct.ltc4245_data, ptr %94, i32 0, i32 7, i32 1
  %106 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -11, ptr %arrayidx8.1.i, align 4
  %arrayidx8.2.i = getelementptr %struct.ltc4245_data, ptr %94, i32 0, i32 7, i32 2
  %107 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -11, ptr %arrayidx8.2.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %for.body.preheader.i, %if.end.i.if.end9.i_crit_edge
  %arrayidx10.i = getelementptr %struct.ltc4245_data, ptr %94, i32 0, i32 4, i32 6
  %108 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx10.i, align 2
  %110 = lshr i8 %109, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %109)
  %cmp14.not.i = icmp ugt i8 %109, 63
  %sub18.i = sext i1 %cmp14.not.i to i8
  %spec.select.i = add nsw i8 %110, %sub18.i
  %arrayidx22.i = getelementptr %struct.ltc4245_data, ptr %94, i32 0, i32 5, i32 12
  %111 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx22.i, align 4
  %conv23.i = zext i8 %112 to i32
  %idxprom.i = zext i8 %spec.select.i to i32
  %arrayidx25.i = getelementptr %struct.ltc4245_data, ptr %94, i32 0, i32 7, i32 %idxprom.i
  %113 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %conv23.i, ptr %arrayidx25.i, align 4
  %114 = zext i8 %spec.select.i to i16
  %rem.lhs.trunc.i = add nuw nsw i16 %114, 1
  %rem60.i = urem i16 %rem.lhs.trunc.i, 3
  %115 = and i8 %109, 63
  %rem.tr.i = trunc i16 %rem60.i to i8
  %116 = shl nuw i8 %rem.tr.i, 6
  %117 = add nuw i8 %116, 64
  %conv35.i = or i8 %117, %115
  %call36.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %96, i8 noundef zeroext 6, i8 noundef zeroext %conv35.i) #5
  %118 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv35.i, ptr %arrayidx10.i, align 2
  br label %ltc4245_update_gpios.exit

ltc4245_update_gpios.exit:                        ; preds = %if.end9.i, %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %119 = load volatile i32, ptr @jiffies, align 128
  %120 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %last_updated, align 4
  %valid38 = getelementptr inbounds %struct.ltc4245_data, ptr %1, i32 0, i32 2
  %121 = ptrtoint ptr %valid38 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %valid38, align 4
  br label %if.end39

if.end39:                                         ; preds = %ltc4245_update_gpios.exit, %lor.lhs.false.if.end39_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #5
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_ltc4245__288_486_ltc4245_driver_init6, !1, !"__initcall__kmod_ltc4245__288_486_ltc4245_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/ltc4245.c", i32 486, i32 1}
!2 = !{ptr @__exitcall_ltc4245_driver_exit, !1, !"__exitcall_ltc4245_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/ltc4245.c", i32 488, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/ltc4245.c", i32 489, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/ltc4245.c", i32 490, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/ltc4245.c", i32 480, i32 11}
!12 = !{ptr @ltc4245_driver, !13, !"ltc4245_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/ltc4245.c", i32 478, i32 26}
!14 = !{ptr @ltc4245_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/ltc4245.c", i32 457, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/ltc4245.c", i32 437, i32 27}
!19 = !{ptr @ltc4245_chip_info, !20, !"ltc4245_chip_info", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/ltc4245.c", i32 422, i32 37}
!21 = !{ptr @ltc4245_hwmon_ops, !22, !"ltc4245_hwmon_ops", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/ltc4245.c", i32 417, i32 31}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/ltc4245.c", i32 247, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ltc4245_curr_regs, !27, !"ltc4245_curr_regs", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/ltc4245.c", i32 264, i32 17}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/ltc4245.c", i32 198, i32 3}
!30 = !{ptr @ltc4245_in_regs, !31, !"ltc4245_in_regs", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/ltc4245.c", i32 257, i32 17}
!32 = !{ptr @ltc4245_info, !33, !"ltc4245_info", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/ltc4245.c", i32 390, i32 41}
!34 = !{ptr @ltc4245_id, !35, !"ltc4245_id", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/ltc4245.c", i32 471, i32 35}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i8 0, i8 2}
!46 = !{!"branch_weights", i32 2000, i32 1}
