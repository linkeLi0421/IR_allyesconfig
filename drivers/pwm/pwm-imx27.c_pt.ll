; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-imx27.c_pt.bc'
source_filename = "../drivers/pwm/pwm-imx27.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pwm_imx27_chip = type { ptr, ptr, ptr, %struct.pwm_chip, i32 }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_imx27__218_353_imx_pwm_driver_init6 = internal global ptr @imx_pwm_driver_init, section ".initcall6.init", align 4
@imx_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pwm_imx27_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pwm_imx27_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_pwm_driver_exit = internal global ptr @imx_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file219 = internal constant [37 x i8] c"pwm_imx27.file=drivers/pwm/pwm-imx27\00", section ".modinfo", align 1
@__UNIQUE_ID_license220 = internal constant [25 x i8] c"pwm_imx27.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author221 = internal constant [55 x i8] c"pwm_imx27.author=Sascha Hauer <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm-imx27\00", [22 x i8] zeroinitializer }, align 32
@pwm_imx27_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx27-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"getting ipg clock failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"per\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get peripheral clock\0A\00", [32 x i8] zeroinitializer }, align 32
@pwm_imx27_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @pwm_imx27_apply, ptr @pwm_imx27_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pwm_imx27_wait_fifo_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 211, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"there is no free FIFO slot\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pwm_imx27_wait_fifo_slot\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/pwm/pwm-imx27.c\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pwm_imx27_wait_fifo_slot._entry_ptr = internal global ptr @pwm_imx27_wait_fifo_slot._entry, section ".printk_index", align 4
@pwm_imx27_sw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 190, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"software reset timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwm_imx27_sw_reset\00", [45 x i8] zeroinitializer }, align 32
@pwm_imx27_sw_reset._entry_ptr = internal global ptr @pwm_imx27_sw_reset._entry, section ".printk_index", align 4
@pwm_imx27_get_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.7, i32 148, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't set polarity, output disconnected\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwm_imx27_get_state\00", [44 x i8] zeroinitializer }, align 32
@pwm_imx27_get_state._entry_ptr = internal global ptr @pwm_imx27_get_state._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"imx_pwm_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 346, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 348, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"pwm_imx27_dt_ids\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 300, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 316, i32 42 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 319, i32 10 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 321, i32 42 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 324, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"pwm_imx27_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 294, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 211, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 190, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [27 x i8] c"../drivers/pwm/pwm-imx27.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 148, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author221, ptr @__UNIQUE_ID_file219, ptr @__UNIQUE_ID_license220, ptr @__exitcall_imx_pwm_driver_exit, ptr @__initcall__kmod_pwm_imx27__218_353_imx_pwm_driver_init6, ptr @imx_pwm_driver_exit, ptr @pwm_imx27_get_state._entry, ptr @pwm_imx27_get_state._entry_ptr, ptr @pwm_imx27_sw_reset._entry, ptr @pwm_imx27_sw_reset._entry_ptr, ptr @pwm_imx27_wait_fifo_slot._entry, ptr @pwm_imx27_wait_fifo_slot._entry_ptr, ptr @imx_pwm_driver, ptr @.str, ptr @pwm_imx27_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @pwm_imx27_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_imx27_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_imx27_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_imx27_wait_fifo_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_imx27_sw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_imx27_get_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_pwm_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_pwm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_imx27_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call2 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %1, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #5
  %clk_per = getelementptr inbounds %struct.pwm_imx27_chip, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %clk_per to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call12, ptr %clk_per, align 4
  %cmp.i70 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call12 to i32
  %call19 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %3, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %chip = getelementptr inbounds %struct.pwm_imx27_chip, ptr %call.i, i32 0, i32 3
  %ops = getelementptr inbounds %struct.pwm_imx27_chip, ptr %call.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pwm_imx27_ops, ptr %ops, align 4
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %chip, align 4
  %npwm = getelementptr inbounds %struct.pwm_imx27_chip, ptr %call.i, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %npwm, align 4
  %call25 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %mmio_base = getelementptr inbounds %struct.pwm_imx27_chip, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call25, ptr %mmio_base, align 4
  %cmp.i71 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  %call32 = tail call fastcc i32 @pwm_imx27_clk_prepare_enable(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool.not = icmp eq i32 %call32, 0
  br i1 %tobool.not, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  %9 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool38.not = icmp eq i32 %12, 0
  br i1 %tobool38.not, label %if.then39, label %if.end34.if.end40_crit_edge

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @pwm_imx27_clk_disable_unprepare(ptr noundef nonnull %call.i)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end34.if.end40_crit_edge
  %call43 = tail call i32 @devm_pwmchip_add(ptr noundef %dev, ptr noundef %chip) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end31.cleanup_crit_edge, %if.then28, %if.then15, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then5 ], [ %call19, %if.then15 ], [ %8, %if.then28 ], [ %call43, %if.end40 ], [ -12, %entry.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pwm_imx27_clk_prepare_enable(ptr nocapture noundef readonly %imx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %imx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %clk_per = getelementptr inbounds %struct.pwm_imx27_chip, ptr %imx, i32 0, i32 1
  %2 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_per, align 4
  %call.i11 = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not.i12 = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i12, label %if.end.i15, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end.i15:                                       ; preds = %if.end
  %call1.i13 = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool2.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool2.not.i14, label %if.end.i15.cleanup_crit_edge, label %if.then3.i16

if.end.i15.cleanup_crit_edge:                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i16:                                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %if.then3

if.then3:                                         ; preds = %if.then3.i16, %if.end.if.then3_crit_edge
  %retval.0.i17.ph = phi i32 [ %call1.i13, %if.then3.i16 ], [ %call.i11, %if.end.if.then3_crit_edge ]
  %4 = ptrtoint ptr %imx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %imx, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then3, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %5, %if.then3 ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i17.ph, %if.then3 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i15.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pwm_imx27_clk_disable_unprepare(ptr nocapture noundef readonly %imx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_per = getelementptr inbounds %struct.pwm_imx27_chip, ptr %imx, i32 0, i32 1
  %0 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %1) #5
  tail call void @clk_unprepare(ptr noundef %1) #5
  %2 = ptrtoint ptr %imx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %imx, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_imx27_apply(ptr nocapture noundef %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
if.end409:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chip, i32 -12
  %state1.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7
  %cstate.sroa.4.0.state1.i.sroa_idx = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %cstate.sroa.4.0.state1.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %cstate.sroa.4.0.copyload724 = load i8, ptr %cstate.sroa.4.0.state1.i.sroa_idx, align 4
  %clk_per = getelementptr i8, ptr %chip, i32 -8
  %1 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk_per, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %2) #5
  %conv = zext i32 %call to i64
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %state, align 8
  %mul = mul i64 %4, %conv
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #8, !srcloc !53
  %asmresult.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i, i32 %asmresult4.i) #8, !srcloc !54
  %asmresult10.i = extractvalue { i64, i32 } %6, 0
  %extract711 = lshr i64 %asmresult10.i, 29
  %extract.t712 = trunc i64 %extract711 to i32
  %div186713 = lshr i32 %extract.t712, 16
  %add187 = add nuw nsw i32 %div186713, 1
  %div188 = udiv i32 %extract.t712, %add187
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %duty_cycle, align 8
  %mul189 = mul i64 %8, %conv
  %9 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul189, i32 0) #8, !srcloc !53
  %asmresult.i719 = extractvalue { i64, i32 } %9, 0
  %asmresult4.i720 = extractvalue { i64, i32 } %9, 1
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul189, i64 %asmresult.i719, i32 %asmresult4.i720) #8, !srcloc !54
  %asmresult10.i721 = extractvalue { i64, i32 } %10, 0
  %extract717 = lshr i64 %asmresult10.i721, 29
  %extract.t718 = trunc i64 %extract717 to i32
  %div412 = udiv i32 %extract.t718, %add187
  %11 = tail call i32 @llvm.usub.sat.i32(i32 %div188, i32 2)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cstate.sroa.4.0.copyload724)
  %tobool419.not = icmp eq i8 %cstate.sroa.4.0.copyload724, 0
  br i1 %tobool419.not, label %if.else421, label %if.then420

if.then420:                                       ; preds = %if.end409
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %mmio_base.i = getelementptr i8, ptr %chip, i32 -4
  %14 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  %17 = and i32 %16, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %17)
  %cmp.i = icmp eq i32 %17, 67108864
  br i1 %cmp.i, label %if.end204.i, label %if.then420.do.body_crit_edge

if.then420.do.body_crit_edge:                     ; preds = %if.then420
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end204.i:                                      ; preds = %if.then420
  %18 = ptrtoint ptr %state1.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %state.sroa.0.0.copyload1.i.i = load i64, ptr %state1.i, align 8
  %sub.i = add i64 %state.sroa.0.0.copyload1.i.i, 999999
  %19 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i) #8, !srcloc !56
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i, i64 %19, i32 0) #8, !srcloc !54
  %asmresult10.i.i = extractvalue { i64, i32 } %20, 0
  %div184324.i = lshr i64 %asmresult10.i.i, 18
  %extract.t325.i = trunc i64 %div184324.i to i32
  tail call void @msleep(i32 noundef %extract.t325.i) #5
  %21 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr211.i = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr211.i) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %24 = and i32 %23, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %24)
  %cmp233.i = icmp eq i32 %24, 67108864
  br i1 %cmp233.i, label %do.end238.i, label %if.end204.i.do.body_crit_edge

if.end204.i.do.body_crit_edge:                    ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end238.i:                                      ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.5) #9
  br label %do.body

if.else421:                                       ; preds = %if.end409
  %call422 = tail call fastcc i32 @pwm_imx27_clk_prepare_enable(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call422)
  %tobool423.not = icmp eq i32 %call422, 0
  br i1 %tobool423.not, label %if.end425, label %if.else421.cleanup_crit_edge

if.else421.cleanup_crit_edge:                     ; preds = %if.else421
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end425:                                        ; preds = %if.else421
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %mmio_base.i722 = getelementptr i8, ptr %chip, i32 -4
  %27 = ptrtoint ptr %mmio_base.i722 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio_base.i722, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 134217728) #5, !srcloc !59
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 1000, i32 noundef 2) #5
  %29 = ptrtoint ptr %mmio_base.i722 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio_base.i722, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %32 = and i32 %31, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.end425.do.end9.i_crit_edge, label %do.body3.i.1

if.end425.do.end9.i_crit_edge:                    ; preds = %if.end425
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.body3.i.1:                                     ; preds = %if.end425
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 1000, i32 noundef 2) #5
  %33 = ptrtoint ptr %mmio_base.i722 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio_base.i722, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %36 = and i32 %35, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.1 = icmp eq i32 %36, 0
  br i1 %tobool.not.i.1, label %do.body3.i.1.do.end9.i_crit_edge, label %do.body3.i.2

do.body3.i.1.do.end9.i_crit_edge:                 ; preds = %do.body3.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.body3.i.2:                                     ; preds = %do.body3.i.1
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 1000, i32 noundef 2) #5
  %37 = ptrtoint ptr %mmio_base.i722 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio_base.i722, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %40 = and i32 %39, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.2 = icmp eq i32 %40, 0
  br i1 %tobool.not.i.2, label %do.body3.i.2.do.end9.i_crit_edge, label %do.body3.i.3

do.body3.i.2.do.end9.i_crit_edge:                 ; preds = %do.body3.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.body3.i.3:                                     ; preds = %do.body3.i.2
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 1000, i32 noundef 2) #5
  %41 = ptrtoint ptr %mmio_base.i722 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio_base.i722, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %44 = and i32 %43, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.3 = icmp eq i32 %44, 0
  br i1 %tobool.not.i.3, label %do.body3.i.3.do.end9.i_crit_edge, label %do.body3.i.4

do.body3.i.3.do.end9.i_crit_edge:                 ; preds = %do.body3.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.body3.i.4:                                     ; preds = %do.body3.i.3
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 1000, i32 noundef 2) #5
  %45 = ptrtoint ptr %mmio_base.i722 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio_base.i722, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %48 = and i32 %47, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.4 = icmp eq i32 %48, 0
  br i1 %tobool.not.i.4, label %do.body3.i.4.do.end9.i_crit_edge, label %do.body3.i.5

do.body3.i.4.do.end9.i_crit_edge:                 ; preds = %do.body3.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.body3.i.5:                                     ; preds = %do.body3.i.4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 1000, i32 noundef 2) #5
  %49 = ptrtoint ptr %mmio_base.i722 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio_base.i722, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %52 = and i32 %51, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.5 = icmp eq i32 %52, 0
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.body3.i.5, %do.body3.i.4.do.end9.i_crit_edge, %do.body3.i.3.do.end9.i_crit_edge, %do.body3.i.2.do.end9.i_crit_edge, %do.body3.i.1.do.end9.i_crit_edge, %if.end425.do.end9.i_crit_edge
  %tobool.not.i.lcssa = phi i1 [ %tobool.not.i, %if.end425.do.end9.i_crit_edge ], [ %tobool.not.i.1, %do.body3.i.1.do.end9.i_crit_edge ], [ %tobool.not.i.2, %do.body3.i.2.do.end9.i_crit_edge ], [ %tobool.not.i.3, %do.body3.i.3.do.end9.i_crit_edge ], [ %tobool.not.i.4, %do.body3.i.4.do.end9.i_crit_edge ], [ %tobool.not.i.5, %do.body3.i.5 ]
  br i1 %tobool.not.i.lcssa, label %do.end9.i.do.body_crit_edge, label %do.end14.i

do.end9.i.do.body_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end14.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.10) #9
  br label %do.body

do.body:                                          ; preds = %do.end14.i, %do.end9.i.do.body_crit_edge, %do.end238.i, %if.end204.i.do.body_crit_edge, %if.then420.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %53 = tail call i32 @llvm.bswap.i32(i32 %div412)
  %mmio_base = getelementptr i8, ptr %chip, i32 -4
  %54 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio_base, align 4
  %add.ptr427 = getelementptr i8, ptr %55, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr427, i32 %53) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %56 = tail call i32 @llvm.bswap.i32(i32 %11)
  %57 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio_base, align 4
  %add.ptr432 = getelementptr i8, ptr %58, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr432, i32 %56) #5, !srcloc !59
  %duty_cycle433 = getelementptr i8, ptr %chip, i32 36
  %59 = ptrtoint ptr %duty_cycle433 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div412, ptr %duty_cycle433, align 4
  %shl459 = shl nuw nsw i32 %div186713, 4
  %and460 = and i32 %shl459, 65520
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %60 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp482 = icmp eq i32 %61, 1
  %spec.select.v = select i1 %cmp482, i32 63307776, i32 63045632
  %spec.select = or i32 %spec.select.v, %and460
  %enabled503 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %62 = ptrtoint ptr %enabled503 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %enabled503, align 4, !range !63
  %64 = zext i8 %63 to i32
  %cr.1 = or i32 %spec.select, %64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %65 = tail call i32 @llvm.bswap.i32(i32 %cr.1)
  %66 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #5, !srcloc !59
  %68 = ptrtoint ptr %enabled503 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %enabled503, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool514.not = icmp eq i8 %69, 0
  br i1 %tobool514.not, label %if.then515, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then515:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %71) #5
  tail call void @clk_unprepare(ptr noundef %71) #5
  %72 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr, align 4
  tail call void @clk_disable(ptr noundef %73) #5
  tail call void @clk_unprepare(ptr noundef %73) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then515, %do.body.cleanup_crit_edge, %if.else421.cleanup_crit_edge
  %retval.0 = phi i32 [ %call422, %if.else421.cleanup_crit_edge ], [ 0, %if.then515 ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_imx27_get_state(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %pwm, ptr nocapture noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chip, i32 -12
  %call = tail call fastcc i32 @pwm_imx27_clk_prepare_enable(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio_base = getelementptr i8, ptr %chip, i32 -4
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !51
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  %6 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %6, align 4
  %and22 = lshr i32 %3, 18
  %shr = and i32 %and22, 3
  %8 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %do.end27 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %9 = ptrtoint ptr %polarity to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %polarity, align 8
  br label %do.end42

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %polarity24 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %10 = ptrtoint ptr %polarity24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %polarity24, align 8
  br label %do.end42

do.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.12) #9
  br label %do.end42

do.end42:                                         ; preds = %do.end27, %sw.bb23, %sw.bb
  %and44 = lshr i32 %3, 4
  %shr45 = and i32 %and44, 4095
  %add = add nuw nsw i32 %shr45, 1
  %clk_per = getelementptr i8, ptr %chip, i32 -8
  %13 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_per, align 4
  %call46 = tail call i32 @clk_get_rate(ptr noundef %14) #5
  %15 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base, align 4
  %add.ptr50 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #5, !srcloc !51
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 65534)
  %add55 = add nuw nsw i32 %19, 2
  %conv = zext i32 %add55 to i64
  %conv56 = zext i32 %add to i64
  %mul = mul nuw nsw i64 %conv56, 1000000000
  %mul57 = mul nuw nsw i64 %mul, %conv
  %conv58 = zext i32 %call46 to i64
  %add59 = add nsw i64 %conv58, -1
  %sub = add nsw i64 %add59, %mul57
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp241 = icmp ult i64 %sub, 4294967296
  br i1 %cmp241, label %if.then245, label %if.else251, !prof !67

if.then245:                                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  %conv246 = trunc i64 %sub to i32
  %div249 = udiv i32 %conv246, %call46
  %conv250 = zext i32 %div249 to i64
  br label %if.end255

if.else251:                                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call46, i64 %sub) #8, !srcloc !68
  %asmresult1.i = extractvalue { i64, i64 } %20, 1
  br label %if.end255

if.end255:                                        ; preds = %if.else251, %if.then245
  %_tmp.0 = phi i64 [ %conv250, %if.then245 ], [ %asmresult1.i, %if.else251 ]
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %_tmp.0, ptr %state, align 8
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %6, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool260.not = icmp eq i8 %23, 0
  br i1 %tobool260.not, label %if.else269, label %if.then261

if.then261:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_base, align 4
  %add.ptr265 = getelementptr i8, ptr %25, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr265) #5, !srcloc !51
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  br label %if.end270

if.else269:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #7
  %duty_cycle = getelementptr i8, ptr %chip, i32 36
  %28 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %duty_cycle, align 4
  br label %if.end270

if.end270:                                        ; preds = %if.else269, %if.then261
  %val.0 = phi i32 [ %27, %if.then261 ], [ %29, %if.else269 ]
  %conv271 = zext i32 %val.0 to i64
  %mul274 = mul i64 %mul, %conv271
  %sub278 = add i64 %add59, %mul274
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub278)
  %cmp480 = icmp ult i64 %sub278, 4294967296
  br i1 %cmp480, label %if.then488, label %if.else494, !prof !67

if.then488:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #7
  %conv489 = trunc i64 %sub278 to i32
  %div492 = udiv i32 %conv489, %call46
  %conv493 = zext i32 %div492 to i64
  br label %if.end498

if.else494:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #7
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call46, i64 %sub278) #8, !srcloc !68
  %asmresult1.i716 = extractvalue { i64, i64 } %30, 1
  br label %if.end498

if.end498:                                        ; preds = %if.else494, %if.then488
  %_tmp275.0 = phi i64 [ %conv493, %if.then488 ], [ %asmresult1.i716, %if.else494 ]
  %duty_cycle501 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %31 = ptrtoint ptr %duty_cycle501 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %_tmp275.0, ptr %duty_cycle501, align 8
  %32 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %33) #5
  tail call void @clk_unprepare(ptr noundef %33) #5
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  tail call void @clk_disable(ptr noundef %35) #5
  tail call void @clk_unprepare(ptr noundef %35) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end498, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_pwm_imx27__218_353_imx_pwm_driver_init6, !1, !"__initcall__kmod_pwm_imx27__218_353_imx_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-imx27.c", i32 353, i32 1}
!2 = !{ptr @__exitcall_imx_pwm_driver_exit, !1, !"__exitcall_imx_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file219, !4, !"__UNIQUE_ID_file219", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-imx27.c", i32 355, i32 1}
!5 = !{ptr @__UNIQUE_ID_license220, !4, !"__UNIQUE_ID_license220", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author221, !7, !"__UNIQUE_ID_author221", i1 false, i1 false}
!7 = !{!"../drivers/pwm/pwm-imx27.c", i32 356, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pwm/pwm-imx27.c", i32 348, i32 11}
!10 = !{ptr @imx_pwm_driver, !11, !"imx_pwm_driver", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-imx27.c", i32 346, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-imx27.c", i32 316, i32 42}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-imx27.c", i32 319, i32 10}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-imx27.c", i32 321, i32 42}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-imx27.c", i32 324, i32 10}
!20 = !{ptr @pwm_imx27_ops, !21, !"pwm_imx27_ops", i1 false, i1 false}
!21 = !{!"../drivers/pwm/pwm-imx27.c", i32 294, i32 29}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pwm/pwm-imx27.c", i32 211, i32 4}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pwm_imx27_wait_fifo_slot._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @pwm_imx27_wait_fifo_slot._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pwm/pwm-imx27.c", i32 190, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pwm_imx27_sw_reset._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @pwm_imx27_sw_reset._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pwm/pwm-imx27.c", i32 148, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pwm_imx27_get_state._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @pwm_imx27_get_state._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @pwm_imx27_dt_ids, !41, !"pwm_imx27_dt_ids", i1 false, i1 false}
!41 = !{!"../drivers/pwm/pwm-imx27.c", i32 300, i32 34}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 3108294}
!52 = !{i64 2153280009}
!53 = !{i64 1183461, i64 1183488, i64 1183510, i64 1183538}
!54 = !{i64 1183869, i64 1183896, i64 1183929, i64 1183950, i64 1183977, i64 1184003}
!55 = !{i64 2153051305}
!56 = !{i64 1183174, i64 1183201}
!57 = !{i64 2153100709}
!58 = !{i64 2153047040}
!59 = !{i64 3107876}
!60 = !{i64 2153047798}
!61 = !{i64 2153153418}
!62 = !{i64 2153153854}
!63 = !{i8 0, i8 2}
!64 = !{i64 2153279109}
!65 = !{i64 2152951993}
!66 = !{i64 2153034359}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2148669005, i64 2148669285, i64 2148669619, i64 2148669953}
!69 = !{i64 2153040170}
