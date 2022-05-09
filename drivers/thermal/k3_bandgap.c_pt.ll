; ModuleID = '/llk/IR_all_yes/drivers/thermal/k3_bandgap.c_pt.bc'
source_filename = "../drivers/thermal/k3_bandgap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.k3_thermal_data = type { ptr, ptr, i32, i32, i32 }

@__initcall__kmod_k3_bandgap__171_260_k3_bandgap_sensor_driver_init6 = internal global ptr @k3_bandgap_sensor_driver_init, section ".initcall6.init", align 4
@k3_bandgap_sensor_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @k3_bandgap_probe, ptr @k3_bandgap_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_k3_bandgap_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_k3_bandgap_sensor_driver_exit = internal global ptr @k3_bandgap_sensor_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description172 = internal constant [60 x i8] c"k3_bandgap.description=K3 bandgap temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [43 x i8] c"k3_bandgap.file=drivers/thermal/k3_bandgap\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [26 x i8] c"k3_bandgap.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [47 x i8] c"k3_bandgap.author=J Keerthy <j-keerthy@ti.com>\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"k3-soc-thermal\00", [17 x i8] zeroinitializer }, align 32
@of_k3_bandgap_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-vtm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@k3_of_thermal_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @k3_thermal_get_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@k3_bandgap_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 218, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"thermal zone device is NULL\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"k3_bandgap_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/thermal/k3_bandgap.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@k3_bandgap_probe._entry_ptr = internal global ptr @k3_bandgap_probe._entry, section ".printk_index", align 4
@k3_adc_to_temp = internal constant { [405 x i32], [396 x i8] } { [405 x i32] [i32 -40000, i32 -40000, i32 -40000, i32 -40000, i32 -39800, i32 -39400, i32 -39000, i32 -38600, i32 -38200, i32 -37800, i32 -37400, i32 -37000, i32 -36600, i32 -36200, i32 -35800, i32 -35300, i32 -34700, i32 -34200, i32 -33800, i32 -33400, i32 -33000, i32 -32600, i32 -32200, i32 -31800, i32 -31400, i32 -31000, i32 -30600, i32 -30200, i32 -29800, i32 -29400, i32 -29000, i32 -28600, i32 -28200, i32 -27700, i32 -27100, i32 -26600, i32 -26200, i32 -25800, i32 -25400, i32 -25000, i32 -24600, i32 -24200, i32 -23800, i32 -23400, i32 -23000, i32 -22600, i32 -22200, i32 -21800, i32 -21400, i32 -21000, i32 -20500, i32 -19900, i32 -19400, i32 -19000, i32 -18600, i32 -18200, i32 -17800, i32 -17400, i32 -17000, i32 -16600, i32 -16200, i32 -15800, i32 -15400, i32 -15000, i32 -14600, i32 -14200, i32 -13800, i32 -13400, i32 -13000, i32 -12500, i32 -11900, i32 -11400, i32 -11000, i32 -10600, i32 -10200, i32 -9800, i32 -9400, i32 -9000, i32 -8600, i32 -8200, i32 -7800, i32 -7400, i32 -7000, i32 -6600, i32 -6200, i32 -5800, i32 -5400, i32 -5000, i32 -4500, i32 -3900, i32 -3400, i32 -3000, i32 -2600, i32 -2200, i32 -1800, i32 -1400, i32 -1000, i32 -600, i32 -200, i32 200, i32 600, i32 1000, i32 1400, i32 1800, i32 2200, i32 2600, i32 3000, i32 3400, i32 3900, i32 4500, i32 5000, i32 5400, i32 5800, i32 6200, i32 6600, i32 7000, i32 7400, i32 7800, i32 8200, i32 8600, i32 9000, i32 9400, i32 9800, i32 10200, i32 10600, i32 11000, i32 11400, i32 11800, i32 12200, i32 12700, i32 13300, i32 13800, i32 14200, i32 14600, i32 15000, i32 15400, i32 15800, i32 16200, i32 16600, i32 17000, i32 17400, i32 17800, i32 18200, i32 18600, i32 19000, i32 19400, i32 19800, i32 20200, i32 20600, i32 21000, i32 21400, i32 21900, i32 22500, i32 23000, i32 23400, i32 23800, i32 24200, i32 24600, i32 25000, i32 25400, i32 25800, i32 26200, i32 26600, i32 27000, i32 27400, i32 27800, i32 28200, i32 28600, i32 29000, i32 29400, i32 29800, i32 30200, i32 30600, i32 31000, i32 31400, i32 31900, i32 32500, i32 33000, i32 33400, i32 33800, i32 34200, i32 34600, i32 35000, i32 35400, i32 35800, i32 36200, i32 36600, i32 37000, i32 37400, i32 37800, i32 38200, i32 38600, i32 39000, i32 39400, i32 39800, i32 40200, i32 40600, i32 41000, i32 41400, i32 41800, i32 42200, i32 42600, i32 43100, i32 43700, i32 44200, i32 44600, i32 45000, i32 45400, i32 45800, i32 46200, i32 46600, i32 47000, i32 47400, i32 47800, i32 48200, i32 48600, i32 49000, i32 49400, i32 49800, i32 50200, i32 50600, i32 51000, i32 51400, i32 51800, i32 52200, i32 52600, i32 53000, i32 53400, i32 53800, i32 54200, i32 54600, i32 55000, i32 55400, i32 55900, i32 56500, i32 57000, i32 57400, i32 57800, i32 58200, i32 58600, i32 59000, i32 59400, i32 59800, i32 60200, i32 60600, i32 61000, i32 61400, i32 61800, i32 62200, i32 62600, i32 63000, i32 63400, i32 63800, i32 64200, i32 64600, i32 65000, i32 65400, i32 65800, i32 66200, i32 66600, i32 67000, i32 67400, i32 67800, i32 68200, i32 68600, i32 69000, i32 69400, i32 69800, i32 70200, i32 70600, i32 71000, i32 71500, i32 72100, i32 72600, i32 73000, i32 73400, i32 73800, i32 74200, i32 74600, i32 75000, i32 75400, i32 75800, i32 76200, i32 76600, i32 77000, i32 77400, i32 77800, i32 78200, i32 78600, i32 79000, i32 79400, i32 79800, i32 80200, i32 80600, i32 81000, i32 81400, i32 81800, i32 82200, i32 82600, i32 83000, i32 83400, i32 83800, i32 84200, i32 84600, i32 85000, i32 85400, i32 85800, i32 86200, i32 86600, i32 87000, i32 87400, i32 87800, i32 88200, i32 88600, i32 89000, i32 89400, i32 89800, i32 90200, i32 90600, i32 91000, i32 91400, i32 91800, i32 92200, i32 92600, i32 93000, i32 93400, i32 93800, i32 94200, i32 94600, i32 95000, i32 95400, i32 95800, i32 96200, i32 96600, i32 97000, i32 97500, i32 98100, i32 98600, i32 99000, i32 99400, i32 99800, i32 100200, i32 100600, i32 101000, i32 101400, i32 101800, i32 102200, i32 102600, i32 103000, i32 103400, i32 103800, i32 104200, i32 104600, i32 105000, i32 105400, i32 105800, i32 106200, i32 106600, i32 107000, i32 107400, i32 107800, i32 108200, i32 108600, i32 109000, i32 109400, i32 109800, i32 110200, i32 110600, i32 111000, i32 111400, i32 111800, i32 112200, i32 112600, i32 113000, i32 113400, i32 113800, i32 114200, i32 114600, i32 115000, i32 115400, i32 115800, i32 116200, i32 116600, i32 117000, i32 117400, i32 117800, i32 118200, i32 118600, i32 119000, i32 119400, i32 119800, i32 120200, i32 120600, i32 121000, i32 121400, i32 121800, i32 122200, i32 122600, i32 123000, i32 123400, i32 123800, i32 124200, i32 124600, i32 124900, i32 125000], [396 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [25 x i8] c"k3_bandgap_sensor_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 251, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 255, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"of_k3_bandgap_match\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 243, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"k3_of_thermal_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 152, i32 48 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 218, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"k3_adc_to_temp\00", align 1
@___asan_gen_.37 = private constant [32 x i8] c"../drivers/thermal/k3_bandgap.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 32, i32 18 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_k3_bandgap_sensor_driver_exit, ptr @__initcall__kmod_k3_bandgap__171_260_k3_bandgap_sensor_driver_init6, ptr @k3_bandgap_probe._entry, ptr @k3_bandgap_probe._entry_ptr, ptr @k3_bandgap_sensor_driver_exit, ptr @k3_bandgap_sensor_driver, ptr @.str, ptr @of_k3_bandgap_match, ptr @k3_of_thermal_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @k3_adc_to_temp], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_bandgap_sensor_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_k3_bandgap_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_of_thermal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_bandgap_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_adc_to_temp to i32), i32 1620, i32 2016, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @k3_bandgap_sensor_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @k3_bandgap_sensor_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @k3_bandgap_sensor_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @k3_bandgap_sensor_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k3_bandgap_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call3) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call4, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call.i125 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %cmp = icmp slt i32 %call.i125, 0
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !38
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then12.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then12.pm_runtime_put_noidle.exit_crit_edge:   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then12.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !40
  %6 = lshr i32 %5, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  %7 = mul nuw nsw i32 %6, 20
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %7, i32 noundef 3520) #6
  %tobool19.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool19.not, label %if.end13.err_alloc_crit_edge, label %for.cond.preheader

if.end13.err_alloc_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_alloc

for.cond.preheader:                               ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %5)
  %cmp22130.not = icmp ult i32 %5, 268435456
  br i1 %cmp22130.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %6, i32 1)
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %id.0131, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %id.0131 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.k3_thermal_data, ptr %call5.i.i, i32 %id.0131
  %sensor_id = getelementptr %struct.k3_thermal_data, ptr %call5.i.i, i32 %id.0131, i32 2
  %8 = ptrtoint ptr %sensor_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %id.0131, ptr %sensor_id, align 4
  %bgp24 = getelementptr %struct.k3_thermal_data, ptr %call5.i.i, i32 %id.0131, i32 1
  %9 = ptrtoint ptr %bgp24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %bgp24, align 4
  %mul = shl i32 %id.0131, 4
  %add = add nuw nsw i32 %mul, 128
  %ctrl_offset = getelementptr %struct.k3_thermal_data, ptr %call5.i.i, i32 %id.0131, i32 3
  %10 = ptrtoint ptr %ctrl_offset to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %ctrl_offset, align 4
  %add28 = add nuw nsw i32 %mul, 136
  %stat_offset = getelementptr %struct.k3_thermal_data, ptr %call5.i.i, i32 %id.0131, i32 4
  %11 = ptrtoint ptr %stat_offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add28, ptr %stat_offset, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %add.ptr37 = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  %15 = and i32 %14, 520093695
  %16 = or i32 %15, -536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %bgp24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bgp24, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %ctrl_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctrl_offset, align 4
  %add.ptr47 = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %16) #6, !srcloc !44
  %call49 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev1, i32 noundef %id.0131, ptr noundef %arrayidx, ptr noundef nonnull @k3_of_thermal_ops) #6
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call49, ptr %arrayidx, align 4
  %cmp.i126 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %do.end57, label %for.cond

do.end57:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %err_alloc

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_alloc:                                        ; preds = %do.end57, %if.end13.err_alloc_crit_edge
  %ret.0 = phi i32 [ %26, %do.end57 ], [ -12, %if.end13.err_alloc_crit_edge ]
  %call.i127 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %for.end, %pm_runtime_put_noidle.exit, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then7 ], [ %call.i125, %pm_runtime_put_noidle.exit ], [ %ret.0, %err_alloc ], [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k3_bandgap_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k3_thermal_get_temp(ptr nocapture noundef readonly %devdata, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bgp1.i = getelementptr inbounds %struct.k3_thermal_data, ptr %devdata, i32 0, i32 1
  %0 = ptrtoint ptr %bgp1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bgp1.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %stat_offset.i = getelementptr inbounds %struct.k3_thermal_data, ptr %devdata, i32 0, i32 4
  %4 = ptrtoint ptr %stat_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  %7 = and i32 %6, -16580608
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %stat_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stat_offset.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %10, i32 %12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  %14 = and i32 %13, -16580608
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = ptrtoint ptr %stat_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stat_offset.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %17, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  %21 = and i32 %20, -16580608
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  %sub.i.i = sub nsw i32 %8, %15
  %23 = tail call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #6
  %sub3.i.i = sub nsw i32 %8, %22
  %24 = tail call i32 @llvm.abs.i32(i32 %sub3.i.i, i1 false) #6
  %sub12.i.i = sub nsw i32 %15, %22
  %25 = tail call i32 @llvm.abs.i32(i32 %sub12.i.i, i1 false) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %24)
  %cmp20.not.i.i = icmp sgt i32 %23, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp21.not.i.i = icmp sgt i32 %23, %25
  %or.cond.i.i = or i1 %cmp20.not.i.i, %cmp21.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.i.i = add nuw nsw i32 %15, %8
  br label %vtm_get_best_value.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %23)
  %cmp22.not.i.i = icmp sgt i32 %24, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %25)
  %cmp24.not.i.i = icmp sgt i32 %24, %25
  %or.cond56.i.i = or i1 %cmp22.not.i.i, %cmp24.not.i.i
  br i1 %or.cond56.i.i, label %if.end28.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add26.i.i = add nuw nsw i32 %22, %8
  br label %vtm_get_best_value.exit.i

if.end28.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add29.i.i = add nuw nsw i32 %22, %15
  br label %vtm_get_best_value.exit.i

vtm_get_best_value.exit.i:                        ; preds = %if.end28.i.i, %if.then25.i.i, %if.then.i.i
  %retval.0.in.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %add26.i.i, %if.then25.i.i ], [ %add29.i.i, %if.end28.i.i ]
  %26 = add nsw i32 %retval.0.in.i.i, -1890
  call void @__sanitizer_cov_trace_const_cmp4(i32 -810, i32 %26)
  %27 = icmp ult i32 %26, -810
  br i1 %27, label %vtm_get_best_value.exit.i.k3_bgp_read_temp.exit_crit_edge, label %if.end.i

vtm_get_best_value.exit.i.k3_bgp_read_temp.exit_crit_edge: ; preds = %vtm_get_best_value.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %k3_bgp_read_temp.exit

if.end.i:                                         ; preds = %vtm_get_best_value.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %retval.0.i.i = lshr i32 %retval.0.in.i.i, 1
  %sub.i = add nsw i32 %retval.0.i.i, -540
  %arrayidx.i = getelementptr [405 x i32], ptr @k3_adc_to_temp, i32 0, i32 %sub.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %temp, align 4
  br label %k3_bgp_read_temp.exit

k3_bgp_read_temp.exit:                            ; preds = %if.end.i, %vtm_get_best_value.exit.i.k3_bgp_read_temp.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %vtm_get_best_value.exit.i.k3_bgp_read_temp.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_k3_bandgap__171_260_k3_bandgap_sensor_driver_init6, !1, !"__initcall__kmod_k3_bandgap__171_260_k3_bandgap_sensor_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/k3_bandgap.c", i32 260, i32 1}
!2 = !{ptr @__exitcall_k3_bandgap_sensor_driver_exit, !1, !"__exitcall_k3_bandgap_sensor_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description172, !4, !"__UNIQUE_ID_description172", i1 false, i1 false}
!4 = !{!"../drivers/thermal/k3_bandgap.c", i32 262, i32 1}
!5 = !{ptr @__UNIQUE_ID_file173, !6, !"__UNIQUE_ID_file173", i1 false, i1 false}
!6 = !{!"../drivers/thermal/k3_bandgap.c", i32 263, i32 1}
!7 = !{ptr @__UNIQUE_ID_license174, !6, !"__UNIQUE_ID_license174", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author175, !9, !"__UNIQUE_ID_author175", i1 false, i1 false}
!9 = !{!"../drivers/thermal/k3_bandgap.c", i32 264, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/k3_bandgap.c", i32 255, i32 11}
!12 = !{ptr @k3_bandgap_sensor_driver, !13, !"k3_bandgap_sensor_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/k3_bandgap.c", i32 251, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/k3_bandgap.c", i32 218, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @k3_bandgap_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @k3_bandgap_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @k3_of_thermal_ops, !23, !"k3_of_thermal_ops", i1 false, i1 false}
!23 = !{!"../drivers/thermal/k3_bandgap.c", i32 152, i32 48}
!24 = !{ptr @k3_adc_to_temp, !25, !"k3_adc_to_temp", i1 false, i1 false}
!25 = !{!"../drivers/thermal/k3_bandgap.c", i32 32, i32 18}
!26 = !{ptr @of_k3_bandgap_match, !27, !"of_k3_bandgap_match", i1 false, i1 false}
!27 = !{!"../drivers/thermal/k3_bandgap.c", i32 243, i32 34}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2148426993}
!38 = !{i64 913593, i64 913618, i64 913640, i64 913656, i64 913668, i64 913688, i64 913712, i64 913728, i64 913740}
!39 = !{i64 2148427181}
!40 = !{i64 691914}
!41 = !{i64 2152566315}
!42 = !{i64 2152567101}
!43 = !{i64 2152567667}
!44 = !{i64 691496}
!45 = !{i64 2152564098}
!46 = !{i64 2152564650}
!47 = !{i64 2152565202}
