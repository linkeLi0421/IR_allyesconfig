; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfp_hwmon.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfp_hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.anon.125 = type { i32, i32, i32 }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.nfp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i32, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.nfp_nsp_identify = type { [40 x i8], i8, i8, i8, i8, i16, i16, i16, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }

@nfp_hwmon_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 141, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nfp: not registering HWMON (no NSP info)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfp_hwmon_register\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/netronome/nfp/nfp_hwmon.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_hwmon_register._entry_ptr = internal global ptr @nfp_hwmon_register._entry, section ".printk_index", align 4
@nfp_hwmon_register._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 146, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"nfp: not registering HWMON (NSP doesn't report sensors)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nfp_hwmon_register._entry_ptr.8 = internal global ptr @nfp_hwmon_register._entry.5, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfp\00", [28 x i8] zeroinitializer }, align 32
@nfp_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @nfp_hwmon_ops, ptr @nfp_hwmon_info }, [24 x i8] zeroinitializer }, align 32
@nfp_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @nfp_hwmon_is_visible, ptr @nfp_hwmon_read, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@nfp_hwmon_info = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @nfp_chip, ptr @nfp_temp, ptr @nfp_power, ptr null], [16 x i8] zeroinitializer }, align 32
@nfp_hwmon_read.const_vals = internal constant { [3 x %struct.anon.125], [60 x i8] } { [3 x %struct.anon.125] [%struct.anon.125 { i32 1, i32 7, i32 95000 }, %struct.anon.125 { i32 1, i32 9, i32 105000 }, %struct.anon.125 { i32 4, i32 19, i32 25000000 }], [60 x i8] zeroinitializer }, align 32
@nfp_chip = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @nfp_chip_config }, [24 x i8] zeroinitializer }, align 32
@nfp_temp = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @nfp_temp_config }, [24 x i8] zeroinitializer }, align 32
@nfp_power = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 4, ptr @nfp_power_config }, [24 x i8] zeroinitializer }, align 32
@nfp_chip_config = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 0], [24 x i8] zeroinitializer }, align 32
@nfp_temp_config = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 642, i32 0], [24 x i8] zeroinitializer }, align 32
@nfp_power_config = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 524800, i32 512, i32 512, i32 0], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 7, i64 9]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 141, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 145, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 150, i32 66 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"nfp_chip_info\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 130, i32 37 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"nfp_hwmon_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 125, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"nfp_hwmon_info\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 118, i32 41 }
@___asan_gen_.51 = private unnamed_addr constant [11 x i8] c"const_vals\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 34, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"nfp_chip\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 91, i32 40 }
@___asan_gen_.57 = private unnamed_addr constant [9 x i8] c"nfp_temp\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 101, i32 40 }
@___asan_gen_.60 = private unnamed_addr constant [10 x i8] c"nfp_power\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 113, i32 40 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"nfp_chip_config\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 86, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"nfp_temp_config\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 96, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"nfp_power_config\00", align 1
@___asan_gen_.70 = private constant [50 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_hwmon.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 106, i32 12 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @nfp_hwmon_register._entry, ptr @nfp_hwmon_register._entry.5, ptr @nfp_hwmon_register._entry_ptr, ptr @nfp_hwmon_register._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @nfp_chip_info, ptr @nfp_hwmon_ops, ptr @nfp_hwmon_info, ptr @nfp_hwmon_read.const_vals, ptr @nfp_chip, ptr @nfp_temp, ptr @nfp_power, ptr @nfp_chip_config, ptr @nfp_temp_config, ptr @nfp_power_config], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_hwmon_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_hwmon_register._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_hwmon_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_hwmon_read.const_vals to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_chip to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_temp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_power to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_chip_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_temp_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_power_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_hwmon_register(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nspi = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 26
  %0 = ptrtoint ptr %nspi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nspi, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %2 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpp, align 4
  %call = tail call ptr @nfp_cpp_device(ptr noundef %3) #4
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str) #7
  br label %return

if.end:                                           ; preds = %entry
  %sensor_mask = getelementptr inbounds %struct.nfp_nsp_identify, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %sensor_mask to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sensor_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool2.not = icmp eq i64 %7, 0
  br i1 %tobool2.not, label %do.end5, label %if.end9

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %cpp6 = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %8 = ptrtoint ptr %cpp6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpp6, align 4
  %call7 = tail call ptr @nfp_cpp_device(ptr noundef %9) #4
  %parent8 = getelementptr inbounds %struct.device, ptr %call7, i32 0, i32 1
  %10 = ptrtoint ptr %parent8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent8, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.6) #7
  br label %return

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pf, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %call10 = tail call ptr @hwmon_device_register_with_info(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %pf, ptr noundef nonnull @nfp_chip_info, ptr noundef null) #4
  %hwmon_dev = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 27
  %14 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call10, ptr %hwmon_dev, align 4
  %cmp.i.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %call10 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %15, i32 0
  br label %return

return:                                           ; preds = %if.end9, %do.end5, %do.end
  %retval.0 = phi i32 [ %spec.select.i, %if.end9 ], [ 0, %do.end5 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_hwmon_unregister(ptr nocapture noundef readonly %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon_dev = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 27
  %0 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hwmon_device_unregister(ptr noundef nonnull %1) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @nfp_hwmon_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.if.end5_crit_edge [
    i32 1, label %if.then
    i32 4, label %if.then2
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then:                                          ; preds = %entry
  %1 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %attr, label %if.then.if.end5_crit_edge [
    i32 1, label %if.then.return_crit_edge
    i32 9, label %if.then.return_crit_edge8
    i32 7, label %if.then.return_crit_edge9
  ]

if.then.return_crit_edge9:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then.return_crit_edge8:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %attr)
  %switch.selectcmp.case1 = icmp eq i32 %attr, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %attr)
  %switch.selectcmp.case2 = icmp eq i32 %attr, 19
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %2 = select i1 %switch.selectcmp, i16 292, i16 0
  br label %return

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then.return_crit_edge, %if.then.return_crit_edge8, %if.then.return_crit_edge9
  %retval.0 = phi i16 [ 0, %if.end5 ], [ 292, %if.then.return_crit_edge ], [ 292, %if.then.return_crit_edge8 ], [ 292, %if.then.return_crit_edge9 ], [ %2, %if.then2 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp2 = icmp eq i32 %type, 1
  br i1 %cmp2, label %land.lhs.true, label %for.inc.1

land.lhs.true:                                    ; preds = %entry
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %attr, label %land.lhs.true.if.end11_crit_edge [
    i32 7, label %land.lhs.true.if.then_crit_edge
    i32 9, label %if.then.fold.split
  ]

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then.fold.split:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.2.if.then_crit_edge, %if.then.fold.split, %land.lhs.true.if.then_crit_edge
  %i.059.lcssa = phi i32 [ 0, %land.lhs.true.if.then_crit_edge ], [ 2, %land.lhs.true.2.if.then_crit_edge ], [ 1, %if.then.fold.split ]
  %val7 = getelementptr [3 x %struct.anon.125], ptr @nfp_hwmon_read.const_vals, i32 0, i32 %i.059.lcssa, i32 2
  %3 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val7, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val, align 4
  br label %cleanup

for.inc.1:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp2.2 = icmp eq i32 %type, 4
  br i1 %cmp2.2, label %land.lhs.true.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.2:                                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %attr)
  %cmp5.2 = icmp eq i32 %attr, 19
  br i1 %cmp5.2, label %land.lhs.true.2.if.then_crit_edge, label %nfp_hwmon_sensor_id.exit

land.lhs.true.2.if.then_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

nfp_hwmon_sensor_id.exit:                         ; preds = %land.lhs.true.2
  %add.i = add i32 %channel, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp9 = icmp slt i32 %add.i, 0
  br i1 %cmp9, label %nfp_hwmon_sensor_id.exit.cleanup_crit_edge, label %nfp_hwmon_sensor_id.exit.if.end11_crit_edge

nfp_hwmon_sensor_id.exit.if.end11_crit_edge:      ; preds = %nfp_hwmon_sensor_id.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

nfp_hwmon_sensor_id.exit.cleanup_crit_edge:       ; preds = %nfp_hwmon_sensor_id.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %nfp_hwmon_sensor_id.exit.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge
  %retval.0.i57 = phi i32 [ %add.i, %nfp_hwmon_sensor_id.exit.if.end11_crit_edge ], [ 0, %land.lhs.true.if.end11_crit_edge ]
  %nspi = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %nspi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nspi, align 4
  %sensor_mask = getelementptr inbounds %struct.nfp_nsp_identify, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %sensor_mask to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sensor_mask, align 8
  %shl = shl nuw i32 1, %retval.0.i57
  %conv = zext i32 %shl to i64
  %and = and i64 %9, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end11.cleanup_crit_edge, label %if.end13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cmp17 = icmp eq i32 %attr, 1
  %or.cond = and i1 %cmp2, %cmp17
  br i1 %or.cond, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpp, align 4
  %call20 = tail call i32 @nfp_hwmon_read_sensor(ptr noundef %11, i32 noundef %retval.0.i57, ptr noundef %val) #4
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %attr)
  %cmp25 = icmp ne i32 %attr, 9
  %12 = or i1 %cmp2, %cmp25
  br i1 %12, label %if.end21.cleanup_crit_edge, label %if.then27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %cpp28 = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %cpp28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpp28, align 4
  %call29 = tail call i32 @nfp_hwmon_read_sensor(ptr noundef %14, i32 noundef %retval.0.i57, ptr noundef %val) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end21.cleanup_crit_edge, %if.then19, %if.end11.cleanup_crit_edge, %nfp_hwmon_sensor_id.exit.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call20, %if.then19 ], [ %call29, %if.then27 ], [ %add.i, %nfp_hwmon_sensor_id.exit.cleanup_crit_edge ], [ -95, %if.end11.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ -22, %for.inc.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_hwmon_read_sensor(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_hwmon.c", i32 141, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfp_hwmon_register._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfp_hwmon_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_hwmon.c", i32 145, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nfp_hwmon_register._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @nfp_hwmon_register._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_hwmon.c", i32 150, i32 66}
!15 = !{ptr @nfp_chip_info, !16, !"nfp_chip_info", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_hwmon.c", i32 130, i32 37}
!17 = !{ptr @nfp_hwmon_ops, !18, !"nfp_hwmon_ops", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_hwmon.c", i32 125, i32 31}
!19 = !{ptr @nfp_hwmon_read.const_vals, !20, !"const_vals", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_hwmon.c", i32 34, i32 4}
!21 = !{ptr @nfp_hwmon_info, !22, !"nfp_hwmon_info", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_hwmon.c", i32 118, i32 41}
!23 = !{ptr @nfp_chip, !24, !"nfp_chip", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_hwmon.c", i32 91, i32 40}
!25 = !{ptr @nfp_chip_config, !26, !"nfp_chip_config", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_hwmon.c", i32 86, i32 12}
!27 = !{ptr @nfp_temp, !28, !"nfp_temp", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_hwmon.c", i32 101, i32 40}
!29 = !{ptr @nfp_temp_config, !30, !"nfp_temp_config", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_hwmon.c", i32 96, i32 12}
!31 = !{ptr @nfp_power, !32, !"nfp_power", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_hwmon.c", i32 113, i32 40}
!33 = !{ptr @nfp_power_config, !34, !"nfp_power_config", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_hwmon.c", i32 106, i32 12}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
