; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/qcom_q6v5_mss.c_pt.bc'
source_filename = "../drivers/remoteproc/qcom_q6v5_mss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rproc_hexagon_res = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.qcom_mss_reg_res = type { ptr, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.q6v5 = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.qcom_q6v5, [8 x ptr], [4 x ptr], [4 x ptr], [3 x ptr], i32, i32, i32, i32, [1 x %struct.reg_info], [1 x %struct.reg_info], [2 x %struct.reg_info], i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.qcom_rproc_glink, %struct.qcom_rproc_subdev, %struct.qcom_rproc_ssr, ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i32 }
%struct.qcom_q6v5 = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.completion, %struct.completion, i32, i8, ptr, ptr }
%struct.reg_info = type { ptr, i32, i32 }
%struct.qcom_rproc_glink = type { %struct.rproc_subdev, ptr, ptr, ptr, ptr }
%struct.rproc_subdev = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.qcom_rproc_subdev = type { %struct.rproc_subdev, ptr, ptr, ptr }
%struct.qcom_rproc_ssr = type { %struct.rproc_subdev, ptr }
%struct.qcom_scm_vmperm = type { i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_phdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rproc_dump_segment = type { %struct.list_head, i32, i32, ptr, ptr, i64 }

@__initcall__kmod_qcom_q6v5_mss__291_2308_q6v5_driver_init6 = internal global ptr @q6v5_driver_init, section ".initcall6.init", align 4
@q6v5_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @q6v5_probe, ptr @q6v5_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @q6v5_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_q6v5_driver_exit = internal global ptr @q6v5_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description292 = internal constant [79 x i8] c"qcom_q6v5_mss.description=Qualcomm Self-authenticating modem remoteproc driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [52 x i8] c"qcom_q6v5_mss.file=drivers/remoteproc/qcom_q6v5_mss\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [29 x i8] c"qcom_q6v5_mss.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom-q6v5-mss\00", [18 x i8] zeroinitializer }, align 32
@q6v5_of_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,q6v5-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8916_mss }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8916-mss-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8916_mss }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8974-mss-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8974_mss }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8996-mss-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8996_mss }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-mss-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8998_mss }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-mss-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7180_mss }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-mss-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7280_mss }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-mss-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_mss }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@q6v5_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1865, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to read mba firmware-name\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"q6v5_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/remoteproc/qcom_q6v5_mss.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@q6v5_probe._entry_ptr = internal global ptr @q6v5_probe._entry, section ".printk_index", align 4
@q6v5_ops = internal constant { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr null, ptr null, ptr @q6v5_start, ptr @q6v5_stop, ptr null, ptr null, ptr null, ptr null, ptr @qcom_q6v5_register_dump_segments, ptr null, ptr null, ptr null, ptr @q6v5_load, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@q6v5_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1872, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to allocate rproc\0A\00", [38 x i8] zeroinitializer }, align 32
@q6v5_probe._entry_ptr.9 = internal global ptr @q6v5_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"modem.mdt\00", [22 x i8] zeroinitializer }, align 32
@q6v5_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1886, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to read mpss firmware-name\0A\00", [61 x i8] zeroinitializer }, align 32
@q6v5_probe._entry_ptr.13 = internal global ptr @q6v5_probe._entry.11, section ".printk_index", align 4
@q6v5_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1907, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get proxy clocks.\0A\00", [35 x i8] zeroinitializer }, align 32
@q6v5_probe._entry_ptr.16 = internal global ptr @q6v5_probe._entry.14, section ".printk_index", align 4
@q6v5_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1915, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get reset clocks.\0A\00", [35 x i8] zeroinitializer }, align 32
@q6v5_probe._entry_ptr.19 = internal global ptr @q6v5_probe._entry.17, section ".printk_index", align 4
@q6v5_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 1923, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get active clocks.\0A\00", [34 x i8] zeroinitializer }, align 32
@q6v5_probe._entry_ptr.22 = internal global ptr @q6v5_probe._entry.20, section ".printk_index", align 4
@q6v5_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 1931, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get proxy regulators.\0A\00", [63 x i8] zeroinitializer }, align 32
@q6v5_probe._entry_ptr.25 = internal global ptr @q6v5_probe._entry.23, section ".printk_index", align 4
@q6v5_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 1939, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get active regulators.\0A\00", [62 x i8] zeroinitializer }, align 32
@q6v5_probe._entry_ptr.28 = internal global ptr @q6v5_probe._entry.26, section ".printk_index", align 4
@q6v5_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 1952, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to get fallback proxy regulators.\0A\00", [54 x i8] zeroinitializer }, align 32
@q6v5_probe._entry_ptr.31 = internal global ptr @q6v5_probe._entry.29, section ".printk_index", align 4
@q6v5_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 1957, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to init power domains\0A\00", [34 x i8] zeroinitializer }, align 32
@q6v5_probe._entry_ptr.34 = internal global ptr @q6v5_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"modem\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpss\00", [27 x i8] zeroinitializer }, align 32
@q6v5_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 1506, ptr @.str.39, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MBA booted with%s debug policy, loading mpss\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"q6v5_start\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@q6v5_start._entry_ptr = internal global ptr @q6v5_start._entry, section ".printk_index", align 4
@.str.40 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@q6v5_start._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.4, i32 1514, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"start timed out\0A\00", [47 x i8] zeroinitializer }, align 32
@q6v5_start._entry_ptr.44 = internal global ptr @q6v5_start._entry.42, section ".printk_index", align 4
@q6v5_start._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.4, i32 1523, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Failed to reclaim mba buffer system may become unstable\0A\00", [39 x i8] zeroinitializer }, align 32
@q6v5_start._entry_ptr.47 = internal global ptr @q6v5_start._entry.45, section ".printk_index", align 4
@q6v5_mba_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 1015, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enable proxy power domains\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"q6v5_mba_load\00", [18 x i8] zeroinitializer }, align 32
@q6v5_mba_load._entry_ptr = internal global ptr @q6v5_mba_load._entry, section ".printk_index", align 4
@q6v5_mba_load._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 1022, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to enable fallback proxy supplies\0A\00", [54 x i8] zeroinitializer }, align 32
@q6v5_mba_load._entry_ptr.52 = internal global ptr @q6v5_mba_load._entry.50, section ".printk_index", align 4
@q6v5_mba_load._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.4, i32 1029, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable proxy supplies\0A\00", [63 x i8] zeroinitializer }, align 32
@q6v5_mba_load._entry_ptr.55 = internal global ptr @q6v5_mba_load._entry.53, section ".printk_index", align 4
@q6v5_mba_load._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.4, i32 1036, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable proxy clocks\0A\00", [33 x i8] zeroinitializer }, align 32
@q6v5_mba_load._entry_ptr.58 = internal global ptr @q6v5_mba_load._entry.56, section ".printk_index", align 4
@q6v5_mba_load._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.49, ptr @.str.4, i32 1043, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable supplies\0A\00", [37 x i8] zeroinitializer }, align 32
@q6v5_mba_load._entry_ptr.61 = internal global ptr @q6v5_mba_load._entry.59, section ".printk_index", align 4
@q6v5_mba_load._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.49, ptr @.str.4, i32 1050, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable reset clocks\0A\00", [33 x i8] zeroinitializer }, align 32
@q6v5_mba_load._entry_ptr.64 = internal global ptr @q6v5_mba_load._entry.62, section ".printk_index", align 4
@q6v5_mba_load._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.49, ptr @.str.4, i32 1056, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to deassert mss restart\0A\00", [32 x i8] zeroinitializer }, align 32
@q6v5_mba_load._entry_ptr.67 = internal global ptr @q6v5_mba_load._entry.65, section ".printk_index", align 4
@q6v5_mba_load._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.49, ptr @.str.4, i32 1063, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable clocks\0A\00", [39 x i8] zeroinitializer }, align 32
@q6v5_mba_load._entry_ptr.70 = internal global ptr @q6v5_mba_load._entry.68, section ".printk_index", align 4
@q6v5_mba_load._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.49, ptr @.str.4, i32 1069, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable axi bridge\0A\00", [35 x i8] zeroinitializer }, align 32
@q6v5_mba_load._entry_ptr.73 = internal global ptr @q6v5_mba_load._entry.71, section ".printk_index", align 4
@q6v5_mba_load._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.49, ptr @.str.4, i32 1080, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"assigning Q6 access to mpss memory failed: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@q6v5_mba_load._entry_ptr.76 = internal global ptr @q6v5_mba_load._entry.74, section ".printk_index", align 4
@q6v5_mba_load._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.49, ptr @.str.4, i32 1089, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"assigning Q6 access to mba memory failed: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@q6v5_mba_load._entry_ptr.79 = internal global ptr @q6v5_mba_load._entry.77, section ".printk_index", align 4
@q6v5_mba_load._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.49, ptr @.str.4, i32 1105, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MBA boot timed out\0A\00", [44 x i8] zeroinitializer }, align 32
@q6v5_mba_load._entry_ptr.82 = internal global ptr @q6v5_mba_load._entry.80, section ".printk_index", align 4
@q6v5_mba_load._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.49, ptr @.str.4, i32 1109, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MBA returned unexpected status %d\0A\00", [61 x i8] zeroinitializer }, align 32
@q6v5_mba_load._entry_ptr.85 = internal global ptr @q6v5_mba_load._entry.83, section ".printk_index", align 4
@q6v5_mba_load._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.49, ptr @.str.4, i32 1133, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Failed to reclaim mba buffer, system may become unstable\0A\00", [38 x i8] zeroinitializer }, align 32
@q6v5_mba_load._entry_ptr.88 = internal global ptr @q6v5_mba_load._entry.86, section ".printk_index", align 4
@q6v5_regulator_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.4, i32 283, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to request voltage for %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"q6v5_regulator_enable\00", [42 x i8] zeroinitializer }, align 32
@q6v5_regulator_enable._entry_ptr = internal global ptr @q6v5_regulator_enable._entry, section ".printk_index", align 4
@q6v5_regulator_enable._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.4, i32 293, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set regulator mode\0A\00", [34 x i8] zeroinitializer }, align 32
@q6v5_regulator_enable._entry_ptr.93 = internal global ptr @q6v5_regulator_enable._entry.91, section ".printk_index", align 4
@q6v5_regulator_enable._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.4, i32 300, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Regulator enable failed\0A\00", [39 x i8] zeroinitializer }, align 32
@q6v5_regulator_enable._entry_ptr.96 = internal global ptr @q6v5_regulator_enable._entry.94, section ".printk_index", align 4
@q6v5_clk_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.4, i32 345, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Clock enable failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"q6v5_clk_enable\00", [16 x i8] zeroinitializer }, align 32
@q6v5_clk_enable._entry_ptr = internal global ptr @q6v5_clk_enable._entry, section ".printk_index", align 4
@q6v5proc_enable_qchannel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.4, i32 836, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable axim1 clock\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"q6v5proc_enable_qchannel\00", [39 x i8] zeroinitializer }, align 32
@q6v5proc_enable_qchannel._entry_ptr = internal global ptr @q6v5proc_enable_qchannel._entry, section ".printk_index", align 4
@q6v5proc_enable_qchannel._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.4, i32 847, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qchannel enable failed\0A\00", [40 x i8] zeroinitializer }, align 32
@q6v5proc_enable_qchannel._entry_ptr.103 = internal global ptr @q6v5proc_enable_qchannel._entry.101, section ".printk_index", align 4
@q6v5proc_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.4, i32 619, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"QDSP6SS Sleep clock timed out\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"q6v5proc_reset\00", [17 x i8] zeroinitializer }, align 32
@q6v5proc_reset._entry_ptr = internal global ptr @q6v5proc_reset._entry, section ".printk_index", align 4
@q6v5proc_reset._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.4, i32 631, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Boot FSM failed to complete.\0A\00", [34 x i8] zeroinitializer }, align 32
@q6v5proc_reset._entry_ptr.108 = internal global ptr @q6v5proc_reset._entry.106, section ".printk_index", align 4
@q6v5proc_reset._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.4, i32 647, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@q6v5proc_reset._entry_ptr.110 = internal global ptr @q6v5proc_reset._entry.109, section ".printk_index", align 4
@q6v5proc_reset._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.105, ptr @.str.4, i32 660, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"QDSP6SS XO clock timed out\0A\00", [36 x i8] zeroinitializer }, align 32
@q6v5proc_reset._entry_ptr.113 = internal global ptr @q6v5proc_reset._entry.111, section ".printk_index", align 4
@q6v5proc_reset._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.4, i32 682, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@q6v5proc_reset._entry_ptr.115 = internal global ptr @q6v5proc_reset._entry.114, section ".printk_index", align 4
@q6v5proc_reset._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.105, ptr @.str.4, i32 712, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"xo cbcr enabling timed out (rc:%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@q6v5proc_reset._entry_ptr.118 = internal global ptr @q6v5proc_reset._entry.116, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@q6v5proc_reset._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.105, ptr @.str.4, i32 810, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PBL boot timed out\0A\00", [44 x i8] zeroinitializer }, align 32
@q6v5proc_reset._entry_ptr.121 = internal global ptr @q6v5proc_reset._entry.119, section ".printk_index", align 4
@q6v5proc_reset._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.105, ptr @.str.4, i32 812, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PBL returned unexpected status %d\0A\00", [61 x i8] zeroinitializer }, align 32
@q6v5proc_reset._entry_ptr.124 = internal global ptr @q6v5proc_reset._entry.122, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@q6v5proc_halt_axi_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.4, i32 925, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port failed halt\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"q6v5proc_halt_axi_port\00", [41 x i8] zeroinitializer }, align 32
@q6v5proc_halt_axi_port._entry_ptr = internal global ptr @q6v5proc_halt_axi_port._entry, section ".printk_index", align 4
@q6v5proc_disable_qchannel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.4, i32 901, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qchannel takedown failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"q6v5proc_disable_qchannel\00", [38 x i8] zeroinitializer }, align 32
@q6v5proc_disable_qchannel._entry_ptr = internal global ptr @q6v5proc_disable_qchannel._entry, section ".printk_index", align 4
@q6v5_mpss_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.4, i32 1285, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unable to load %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"q6v5_mpss_load\00", [17 x i8] zeroinitializer }, align 32
@q6v5_mpss_load._entry_ptr = internal global ptr @q6v5_mpss_load._entry, section ".printk_index", align 4
@q6v5_mpss_load._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.130, ptr @.str.4, i32 1327, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@q6v5_mpss_load._entry_ptr.132 = internal global ptr @q6v5_mpss_load._entry.131, section ".printk_index", align 4
@q6v5_mpss_load._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.130, ptr @.str.4, i32 1343, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"segment outside memory range\0A\00", [34 x i8] zeroinitializer }, align 32
@q6v5_mpss_load._entry_ptr.135 = internal global ptr @q6v5_mpss_load._entry.133, section ".printk_index", align 4
@q6v5_mpss_load._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.130, ptr @.str.4, i32 1351, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"refusing to load segment %d with p_filesz > p_memsz\0A\00", [43 x i8] zeroinitializer }, align 32
@q6v5_mpss_load._entry_ptr.138 = internal global ptr @q6v5_mpss_load._entry.136, section ".printk_index", align 4
@q6v5_mpss_load._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.130, ptr @.str.4, i32 1360, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to map memory region: %pa+%zx-%x\0A\00", [55 x i8] zeroinitializer }, align 32
@q6v5_mpss_load._entry_ptr.141 = internal global ptr @q6v5_mpss_load._entry.139, section ".printk_index", align 4
@q6v5_mpss_load._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.130, ptr @.str.4, i32 1369, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to load segment %d from truncated file %s\0A\00", [46 x i8] zeroinitializer }, align 32
@q6v5_mpss_load._entry_ptr.144 = internal global ptr @q6v5_mpss_load._entry.142, section ".printk_index", align 4
@.str.145 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"b%02d\00", [26 x i8] zeroinitializer }, align 32
@q6v5_mpss_load._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.130, ptr @.str.4, i32 1382, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to load %s\0A\00", [45 x i8] zeroinitializer }, align 32
@q6v5_mpss_load._entry_ptr.148 = internal global ptr @q6v5_mpss_load._entry.146, section ".printk_index", align 4
@q6v5_mpss_load._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.130, ptr @.str.4, i32 1390, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@q6v5_mpss_load._entry_ptr.150 = internal global ptr @q6v5_mpss_load._entry.149, section ".printk_index", align 4
@q6v5_mpss_load._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.130, ptr @.str.4, i32 1418, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MPSS authentication failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@q6v5_mpss_load._entry_ptr.153 = internal global ptr @q6v5_mpss_load._entry.151, section ".printk_index", align 4
@q6v5_mpss_load._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.130, ptr @.str.4, i32 1428, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@q6v5_mpss_load._entry_ptr.155 = internal global ptr @q6v5_mpss_load._entry.154, section ".printk_index", align 4
@q6v5_mpss_load._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.130, ptr @.str.4, i32 1435, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MPSS authentication timed out\0A\00", [33 x i8] zeroinitializer }, align 32
@q6v5_mpss_load._entry_ptr.158 = internal global ptr @q6v5_mpss_load._entry.156, section ".printk_index", align 4
@q6v5_mpss_load._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.130, ptr @.str.4, i32 1437, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@q6v5_mpss_load._entry_ptr.160 = internal global ptr @q6v5_mpss_load._entry.159, section ".printk_index", align 4
@q6v5_mpss_init_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.4, i32 949, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate mdt buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"q6v5_mpss_init_image\00", [43 x i8] zeroinitializer }, align 32
@q6v5_mpss_init_image._entry_ptr = internal global ptr @q6v5_mpss_init_image._entry, section ".printk_index", align 4
@q6v5_mpss_init_image._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.162, ptr @.str.4, i32 961, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"assigning Q6 access to metadata failed: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@q6v5_mpss_init_image._entry_ptr.165 = internal global ptr @q6v5_mpss_init_image._entry.163, section ".printk_index", align 4
@q6v5_mpss_init_image._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.162, ptr @.str.4, i32 971, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MPSS header authentication timed out\0A\00", [58 x i8] zeroinitializer }, align 32
@q6v5_mpss_init_image._entry_ptr.168 = internal global ptr @q6v5_mpss_init_image._entry.166, section ".printk_index", align 4
@q6v5_mpss_init_image._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.162, ptr @.str.4, i32 973, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MPSS header authentication failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@q6v5_mpss_init_image._entry_ptr.171 = internal global ptr @q6v5_mpss_init_image._entry.169, section ".printk_index", align 4
@q6v5_mpss_init_image._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.162, ptr @.str.4, i32 980, ptr @.str.174, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mdt buffer not reclaimed system may become unstable\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@q6v5_mpss_init_image._entry_ptr.175 = internal global ptr @q6v5_mpss_init_image._entry.172, section ".printk_index", align 4
@q6v5_mba_reclaim._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.176, ptr @.str.4, i32 1195, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"q6v5_mba_reclaim\00", [47 x i8] zeroinitializer }, align 32
@q6v5_mba_reclaim._entry_ptr = internal global ptr @q6v5_mba_reclaim._entry, section ".printk_index", align 4
@q6v5_mba_reclaim._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.4, i32 1200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable crypto clock\0A\00", [33 x i8] zeroinitializer }, align 32
@q6v5_mba_reclaim._entry_ptr.179 = internal global ptr @q6v5_mba_reclaim._entry.177, section ".printk_index", align 4
@q6v5_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.4, i32 1544, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"timed out on wait\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"q6v5_stop\00", [22 x i8] zeroinitializer }, align 32
@q6v5_stop._entry_ptr = internal global ptr @q6v5_stop._entry, section ".printk_index", align 4
@qcom_q6v5_register_dump_segments._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.182, ptr @.str.4, i32 1565, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qcom_q6v5_register_dump_segments\00", [63 x i8] zeroinitializer }, align 32
@qcom_q6v5_register_dump_segments._entry_ptr = internal global ptr @qcom_q6v5_register_dump_segments._entry, section ".printk_index", align 4
@q6v5_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.4, i32 457, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MBA firmware load failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"q6v5_load\00", [22 x i8] zeroinitializer }, align 32
@q6v5_load._entry_ptr = internal global ptr @q6v5_load._entry, section ".printk_index", align 4
@q6v5_load._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.184, ptr @.str.4, i32 464, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to map memory region: %pa+%zx\0A\00", [58 x i8] zeroinitializer }, align 32
@q6v5_load._entry_ptr.187 = internal global ptr @q6v5_load._entry.185, section ".printk_index", align 4
@.str.188 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"msadp\00", [26 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qdsp6\00", [26 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rmb\00", [28 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom,halt-regs\00", [17 x i8] zeroinitializer }, align 32
@q6v5_init_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.4, i32 1635, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to parse qcom,halt-regs\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"q6v5_init_mem\00", [18 x i8] zeroinitializer }, align 32
@q6v5_init_mem._entry_ptr = internal global ptr @q6v5_init_mem._entry, section ".printk_index", align 4
@.str.194 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,qaccept-regs\00", [46 x i8] zeroinitializer }, align 32
@q6v5_init_mem._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.193, ptr @.str.4, i32 1656, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to parse qaccept-regs\0A\00", [34 x i8] zeroinitializer }, align 32
@q6v5_init_mem._entry_ptr.197 = internal global ptr @q6v5_init_mem._entry.195, section ".printk_index", align 4
@.str.198 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom,ext-regs\00", [18 x i8] zeroinitializer }, align 32
@q6v5_init_mem._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.193, ptr @.str.4, i32 1670, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to parse ext-regs index 0\0A\00", [62 x i8] zeroinitializer }, align 32
@q6v5_init_mem._entry_ptr.201 = internal global ptr @q6v5_init_mem._entry.199, section ".printk_index", align 4
@q6v5_init_mem._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.193, ptr @.str.4, i32 1686, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to parse ext-regs index 1\0A\00", [62 x i8] zeroinitializer }, align 32
@q6v5_init_mem._entry_ptr.204 = internal global ptr @q6v5_init_mem._entry.202, section ".printk_index", align 4
@.str.205 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,spare-regs\00", [16 x i8] zeroinitializer }, align 32
@q6v5_init_mem._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.193, ptr @.str.4, i32 1699, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to parse spare-regs\0A\00", [36 x i8] zeroinitializer }, align 32
@q6v5_init_mem._entry_ptr.208 = internal global ptr @q6v5_init_mem._entry.206, section ".printk_index", align 4
@.str.209 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mba\00", [28 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@q6v5_alloc_memory_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str.4, i32 1817, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to resolve mba region\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"q6v5_alloc_memory_region\00", [39 x i8] zeroinitializer }, align 32
@q6v5_alloc_memory_region._entry_ptr = internal global ptr @q6v5_alloc_memory_region._entry, section ".printk_index", align 4
@q6v5_alloc_memory_region._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.212, ptr @.str.4, i32 1835, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to resolve mpss region\0A\00", [33 x i8] zeroinitializer }, align 32
@q6v5_alloc_memory_region._entry_ptr.215 = internal global ptr @q6v5_alloc_memory_region._entry.213, section ".printk_index", align 4
@q6v5_init_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.217, ptr @.str.4, i32 1729, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get %s clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"q6v5_init_clocks\00", [47 x i8] zeroinitializer }, align 32
@q6v5_init_clocks._entry_ptr = internal global ptr @q6v5_init_clocks._entry, section ".printk_index", align 4
@q6v5_regulator_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.219, ptr @.str.4, i32 259, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get %s\0A regulator\00", [36 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"q6v5_regulator_init\00", [44 x i8] zeroinitializer }, align 32
@q6v5_regulator_init._entry_ptr = internal global ptr @q6v5_regulator_init._entry, section ".printk_index", align 4
@.str.220 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mss_restart\00", [20 x i8] zeroinitializer }, align 32
@q6v5_init_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.222, ptr @.str.4, i32 1781, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to acquire mss restart\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"q6v5_init_reset\00", [16 x i8] zeroinitializer }, align 32
@q6v5_init_reset._entry_ptr = internal global ptr @q6v5_init_reset._entry, section ".printk_index", align 4
@.str.223 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pdc_reset\00", [22 x i8] zeroinitializer }, align 32
@q6v5_init_reset._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.222, ptr @.str.4, i32 1789, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to acquire pdc reset\0A\00", [35 x i8] zeroinitializer }, align 32
@q6v5_init_reset._entry_ptr.226 = internal global ptr @q6v5_init_reset._entry.224, section ".printk_index", align 4
@msm8916_mss = internal constant { %struct.rproc_hexagon_res, [52 x i8] } { %struct.rproc_hexagon_res { ptr @.str.227, ptr @.compoundliteral, ptr @.compoundliteral.231, ptr null, ptr @.compoundliteral.233, ptr null, ptr @.compoundliteral.237, ptr @.compoundliteral.238, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@msm8974_mss = internal constant { %struct.rproc_hexagon_res, [52 x i8] } { %struct.rproc_hexagon_res { ptr @.str.239, ptr @.compoundliteral.240, ptr @.compoundliteral.241, ptr @.compoundliteral.243, ptr @.compoundliteral.244, ptr null, ptr @.compoundliteral.245, ptr @.compoundliteral.246, i32 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@msm8996_mss = internal constant { %struct.rproc_hexagon_res, [52 x i8] } { %struct.rproc_hexagon_res { ptr @.str.227, ptr @.compoundliteral.247, ptr null, ptr null, ptr @.compoundliteral.250, ptr null, ptr @.compoundliteral.254, ptr null, i32 2, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@msm8998_mss = internal constant { %struct.rproc_hexagon_res, [52 x i8] } { %struct.rproc_hexagon_res { ptr @.str.227, ptr null, ptr null, ptr null, ptr @.compoundliteral.255, ptr null, ptr @.compoundliteral.256, ptr @.compoundliteral.257, i32 3, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@sc7180_mss = internal constant { %struct.rproc_hexagon_res, [52 x i8] } { %struct.rproc_hexagon_res { ptr @.str.227, ptr null, ptr null, ptr null, ptr @.compoundliteral.258, ptr @.compoundliteral.259, ptr @.compoundliteral.261, ptr @.compoundliteral.262, i32 4, i8 1, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@sc7280_mss = internal constant { %struct.rproc_hexagon_res, [52 x i8] } { %struct.rproc_hexagon_res { ptr @.str.227, ptr null, ptr null, ptr null, ptr @.compoundliteral.264, ptr null, ptr @.compoundliteral.266, ptr @.compoundliteral.267, i32 5, i8 1, i8 0, i8 1, i8 0, i8 1, i8 1, i8 1 }, [52 x i8] zeroinitializer }, align 32
@sdm845_mss = internal constant { %struct.rproc_hexagon_res, [52 x i8] } { %struct.rproc_hexagon_res { ptr @.str.227, ptr null, ptr null, ptr null, ptr @.compoundliteral.269, ptr @.compoundliteral.270, ptr @.compoundliteral.271, ptr @.compoundliteral.272, i32 6, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mba.mbn\00", [24 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pll\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x %struct.qcom_mss_reg_res], [40 x i8] } { [2 x %struct.qcom_mss_reg_res] [%struct.qcom_mss_reg_res { ptr @.str.228, i32 0, i32 100000 }, %struct.qcom_mss_reg_res zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mx\00", [29 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cx\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.231 = internal global { [3 x %struct.qcom_mss_reg_res], [60 x i8] } { [3 x %struct.qcom_mss_reg_res] [%struct.qcom_mss_reg_res { ptr @.str.229, i32 1050000, i32 0 }, %struct.qcom_mss_reg_res { ptr @.str.230, i32 0, i32 100000 }, %struct.qcom_mss_reg_res zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.233 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.232, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.237 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr null], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.238 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.229, ptr @.str.230, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mba.b00\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.240 = internal global { [2 x %struct.qcom_mss_reg_res], [40 x i8] } { [2 x %struct.qcom_mss_reg_res] [%struct.qcom_mss_reg_res { ptr @.str.228, i32 0, i32 100000 }, %struct.qcom_mss_reg_res zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.241 = internal global { [3 x %struct.qcom_mss_reg_res], [60 x i8] } { [3 x %struct.qcom_mss_reg_res] [%struct.qcom_mss_reg_res { ptr @.str.229, i32 1050000, i32 0 }, %struct.qcom_mss_reg_res { ptr @.str.230, i32 0, i32 100000 }, %struct.qcom_mss_reg_res zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mss\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.243 = internal global { [2 x %struct.qcom_mss_reg_res], [40 x i8] } { [2 x %struct.qcom_mss_reg_res] [%struct.qcom_mss_reg_res { ptr @.str.242, i32 1050000, i32 100000 }, %struct.qcom_mss_reg_res zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.244 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.232, ptr null], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.245 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr null], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.246 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.229, ptr @.str.230, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.247 = internal global { [2 x %struct.qcom_mss_reg_res], [40 x i8] } { [2 x %struct.qcom_mss_reg_res] [%struct.qcom_mss_reg_res { ptr @.str.228, i32 0, i32 100000 }, %struct.qcom_mss_reg_res zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pnoc\00", [27 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qdss\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.250 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.232, ptr @.str.248, ptr @.str.249, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpll0_mss\00", [22 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snoc_axi\00", [23 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mnoc_axi\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.254 = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr null], [36 x i8] zeroinitializer }, align 32
@.compoundliteral.255 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.232, ptr @.str.249, ptr @.str.236, ptr null], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.256 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.234, ptr @.str.235, ptr @.str.251, ptr @.str.253, ptr @.str.252, ptr null], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.230, ptr @.str.229, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.258 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.232, ptr null], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.259 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.234, ptr @.str.235, ptr @.str.252, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nav\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.261 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.253, ptr @.str.260, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.262 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.230, ptr @.str.229, ptr @.str.242, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pka\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.264 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.232, ptr @.str.263, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"offline\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.266 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.234, ptr @.str.265, ptr @.str.252, ptr null], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.267 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.230, ptr @.str.242, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"prng\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.269 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.232, ptr @.str.268, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.270 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.234, ptr @.str.252, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.271 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.235, ptr @.str.236, ptr @.str.251, ptr @.str.253, ptr null], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.272 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.230, ptr @.str.229, ptr @.str.242, ptr null], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.273 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967186]
@__sancov_gen_cov_switch_values.274 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4294967186]
@___asan_gen_.275 = private unnamed_addr constant [12 x i8] c"q6v5_driver\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2300, i32 31 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2304, i32 11 }
@___asan_gen_.281 = private unnamed_addr constant [14 x i8] c"q6v5_of_match\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2287, i32 34 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1862, i32 57 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1865, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [9 x i8] c"q6v5_ops\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1595, i32 31 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1872, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1882, i32 29 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1886, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1907, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1915, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1923, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1931, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1939, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1952, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1957, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1972, i32 74 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1979, i32 53 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1505, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1514, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1522, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1015, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1022, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1029, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1036, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1043, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1050, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1056, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1063, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1069, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1080, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1088, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1105, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1109, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1132, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 281, i32 5 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 292, i32 5 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 300, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 345, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 836, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 847, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 619, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 631, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 647, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 660, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 682, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 711, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 810, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 812, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 925, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 901, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1285, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1326, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1343, i32 4 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1349, i32 4 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1358, i32 4 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1367, i32 5 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1378, i32 39 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1382, i32 5 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1388, i32 5 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1417, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1427, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1435, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1437, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 949, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 960, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 971, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 973, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 979, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1195, i32 4 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1200, i32 4 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1544, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1564, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 457, i32 3 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 463, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 439, i32 38 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1621, i32 64 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1625, i32 64 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1633, i32 13 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1635, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1653, i32 14 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1656, i32 4 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1667, i32 14 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1670, i32 4 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1686, i32 4 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1696, i32 14 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1699, i32 4 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1808, i32 52 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1811, i32 6 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1817, i32 3 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1835, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1728, i32 5 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 258, i32 5 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1779, i32 14 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1781, i32 3 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1787, i32 13 }
@___asan_gen_.848 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 1789, i32 4 }
@___asan_gen_.854 = private unnamed_addr constant [12 x i8] c"msm8916_mss\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2189, i32 39 }
@___asan_gen_.857 = private unnamed_addr constant [12 x i8] c"msm8974_mss\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2234, i32 39 }
@___asan_gen_.860 = private unnamed_addr constant [12 x i8] c"msm8996_mss\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2155, i32 39 }
@___asan_gen_.863 = private unnamed_addr constant [12 x i8] c"msm8998_mss\00", align 1
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2124, i32 39 }
@___asan_gen_.866 = private unnamed_addr constant [11 x i8] c"sc7180_mss\00", align 1
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2028, i32 39 }
@___asan_gen_.869 = private unnamed_addr constant [11 x i8] c"sc7280_mss\00", align 1
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2061, i32 39 }
@___asan_gen_.872 = private unnamed_addr constant [11 x i8] c"sdm845_mss\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2089, i32 39 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2190, i32 23 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2193, i32 14 }
@___asan_gen_.881 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2200, i32 14 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2204, i32 14 }
@___asan_gen_.888 = private unnamed_addr constant [21 x i8] c".compoundliteral.231\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2210, i32 3 }
@___asan_gen_.892 = private unnamed_addr constant [21 x i8] c".compoundliteral.233\00", align 1
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2214, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2215, i32 3 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2216, i32 3 }
@___asan_gen_.902 = private unnamed_addr constant [21 x i8] c".compoundliteral.237\00", align 1
@___asan_gen_.903 = private unnamed_addr constant [21 x i8] c".compoundliteral.238\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2235, i32 23 }
@___asan_gen_.907 = private unnamed_addr constant [21 x i8] c".compoundliteral.240\00", align 1
@___asan_gen_.908 = private unnamed_addr constant [21 x i8] c".compoundliteral.241\00", align 1
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2256, i32 14 }
@___asan_gen_.912 = private unnamed_addr constant [21 x i8] c".compoundliteral.243\00", align 1
@___asan_gen_.913 = private unnamed_addr constant [21 x i8] c".compoundliteral.244\00", align 1
@___asan_gen_.914 = private unnamed_addr constant [21 x i8] c".compoundliteral.245\00", align 1
@___asan_gen_.915 = private unnamed_addr constant [21 x i8] c".compoundliteral.246\00", align 1
@___asan_gen_.916 = private unnamed_addr constant [21 x i8] c".compoundliteral.247\00", align 1
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2166, i32 4 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2167, i32 4 }
@___asan_gen_.923 = private unnamed_addr constant [21 x i8] c".compoundliteral.250\00", align 1
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2174, i32 4 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2175, i32 4 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2176, i32 4 }
@___asan_gen_.933 = private unnamed_addr constant [21 x i8] c".compoundliteral.254\00", align 1
@___asan_gen_.934 = private unnamed_addr constant [21 x i8] c".compoundliteral.255\00", align 1
@___asan_gen_.935 = private unnamed_addr constant [21 x i8] c".compoundliteral.256\00", align 1
@___asan_gen_.936 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.937 = private unnamed_addr constant [21 x i8] c".compoundliteral.258\00", align 1
@___asan_gen_.938 = private unnamed_addr constant [21 x i8] c".compoundliteral.259\00", align 1
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2042, i32 3 }
@___asan_gen_.942 = private unnamed_addr constant [21 x i8] c".compoundliteral.261\00", align 1
@___asan_gen_.943 = private unnamed_addr constant [21 x i8] c".compoundliteral.262\00", align 1
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2065, i32 3 }
@___asan_gen_.947 = private unnamed_addr constant [21 x i8] c".compoundliteral.264\00", align 1
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2070, i32 3 }
@___asan_gen_.951 = private unnamed_addr constant [21 x i8] c".compoundliteral.266\00", align 1
@___asan_gen_.952 = private unnamed_addr constant [21 x i8] c".compoundliteral.267\00", align 1
@___asan_gen_.953 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.954 = private constant [38 x i8] c"../drivers/remoteproc/qcom_q6v5_mss.c\00", align 1
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.954, i32 2093, i32 4 }
@___asan_gen_.956 = private unnamed_addr constant [21 x i8] c".compoundliteral.269\00", align 1
@___asan_gen_.957 = private unnamed_addr constant [21 x i8] c".compoundliteral.270\00", align 1
@___asan_gen_.958 = private unnamed_addr constant [21 x i8] c".compoundliteral.271\00", align 1
@___asan_gen_.959 = private unnamed_addr constant [21 x i8] c".compoundliteral.272\00", align 1
@llvm.compiler.used = appending global [330 x ptr] [ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_q6v5_driver_exit, ptr @__initcall__kmod_qcom_q6v5_mss__291_2308_q6v5_driver_init6, ptr @q6v5_alloc_memory_region._entry, ptr @q6v5_alloc_memory_region._entry.213, ptr @q6v5_alloc_memory_region._entry_ptr, ptr @q6v5_alloc_memory_region._entry_ptr.215, ptr @q6v5_clk_enable._entry, ptr @q6v5_clk_enable._entry_ptr, ptr @q6v5_driver_exit, ptr @q6v5_init_clocks._entry, ptr @q6v5_init_clocks._entry_ptr, ptr @q6v5_init_mem._entry, ptr @q6v5_init_mem._entry.195, ptr @q6v5_init_mem._entry.199, ptr @q6v5_init_mem._entry.202, ptr @q6v5_init_mem._entry.206, ptr @q6v5_init_mem._entry_ptr, ptr @q6v5_init_mem._entry_ptr.197, ptr @q6v5_init_mem._entry_ptr.201, ptr @q6v5_init_mem._entry_ptr.204, ptr @q6v5_init_mem._entry_ptr.208, ptr @q6v5_init_reset._entry, ptr @q6v5_init_reset._entry.224, ptr @q6v5_init_reset._entry_ptr, ptr @q6v5_init_reset._entry_ptr.226, ptr @q6v5_load._entry, ptr @q6v5_load._entry.185, ptr @q6v5_load._entry_ptr, ptr @q6v5_load._entry_ptr.187, ptr @q6v5_mba_load._entry, ptr @q6v5_mba_load._entry.50, ptr @q6v5_mba_load._entry.53, ptr @q6v5_mba_load._entry.56, ptr @q6v5_mba_load._entry.59, ptr @q6v5_mba_load._entry.62, ptr @q6v5_mba_load._entry.65, ptr @q6v5_mba_load._entry.68, ptr @q6v5_mba_load._entry.71, ptr @q6v5_mba_load._entry.74, ptr @q6v5_mba_load._entry.77, ptr @q6v5_mba_load._entry.80, ptr @q6v5_mba_load._entry.83, ptr @q6v5_mba_load._entry.86, ptr @q6v5_mba_load._entry_ptr, ptr @q6v5_mba_load._entry_ptr.52, ptr @q6v5_mba_load._entry_ptr.55, ptr @q6v5_mba_load._entry_ptr.58, ptr @q6v5_mba_load._entry_ptr.61, ptr @q6v5_mba_load._entry_ptr.64, ptr @q6v5_mba_load._entry_ptr.67, ptr @q6v5_mba_load._entry_ptr.70, ptr @q6v5_mba_load._entry_ptr.73, ptr @q6v5_mba_load._entry_ptr.76, ptr @q6v5_mba_load._entry_ptr.79, ptr @q6v5_mba_load._entry_ptr.82, ptr @q6v5_mba_load._entry_ptr.85, ptr @q6v5_mba_load._entry_ptr.88, ptr @q6v5_mba_reclaim._entry, ptr @q6v5_mba_reclaim._entry.177, ptr @q6v5_mba_reclaim._entry_ptr, ptr @q6v5_mba_reclaim._entry_ptr.179, ptr @q6v5_mpss_init_image._entry, ptr @q6v5_mpss_init_image._entry.163, ptr @q6v5_mpss_init_image._entry.166, ptr @q6v5_mpss_init_image._entry.169, ptr @q6v5_mpss_init_image._entry.172, ptr @q6v5_mpss_init_image._entry_ptr, ptr @q6v5_mpss_init_image._entry_ptr.165, ptr @q6v5_mpss_init_image._entry_ptr.168, ptr @q6v5_mpss_init_image._entry_ptr.171, ptr @q6v5_mpss_init_image._entry_ptr.175, ptr @q6v5_mpss_load._entry, ptr @q6v5_mpss_load._entry.131, ptr @q6v5_mpss_load._entry.133, ptr @q6v5_mpss_load._entry.136, ptr @q6v5_mpss_load._entry.139, ptr @q6v5_mpss_load._entry.142, ptr @q6v5_mpss_load._entry.146, ptr @q6v5_mpss_load._entry.149, ptr @q6v5_mpss_load._entry.151, ptr @q6v5_mpss_load._entry.154, ptr @q6v5_mpss_load._entry.156, ptr @q6v5_mpss_load._entry.159, ptr @q6v5_mpss_load._entry_ptr, ptr @q6v5_mpss_load._entry_ptr.132, ptr @q6v5_mpss_load._entry_ptr.135, ptr @q6v5_mpss_load._entry_ptr.138, ptr @q6v5_mpss_load._entry_ptr.141, ptr @q6v5_mpss_load._entry_ptr.144, ptr @q6v5_mpss_load._entry_ptr.148, ptr @q6v5_mpss_load._entry_ptr.150, ptr @q6v5_mpss_load._entry_ptr.153, ptr @q6v5_mpss_load._entry_ptr.155, ptr @q6v5_mpss_load._entry_ptr.158, ptr @q6v5_mpss_load._entry_ptr.160, ptr @q6v5_probe._entry, ptr @q6v5_probe._entry.11, ptr @q6v5_probe._entry.14, ptr @q6v5_probe._entry.17, ptr @q6v5_probe._entry.20, ptr @q6v5_probe._entry.23, ptr @q6v5_probe._entry.26, ptr @q6v5_probe._entry.29, ptr @q6v5_probe._entry.32, ptr @q6v5_probe._entry.7, ptr @q6v5_probe._entry_ptr, ptr @q6v5_probe._entry_ptr.13, ptr @q6v5_probe._entry_ptr.16, ptr @q6v5_probe._entry_ptr.19, ptr @q6v5_probe._entry_ptr.22, ptr @q6v5_probe._entry_ptr.25, ptr @q6v5_probe._entry_ptr.28, ptr @q6v5_probe._entry_ptr.31, ptr @q6v5_probe._entry_ptr.34, ptr @q6v5_probe._entry_ptr.9, ptr @q6v5_regulator_enable._entry, ptr @q6v5_regulator_enable._entry.91, ptr @q6v5_regulator_enable._entry.94, ptr @q6v5_regulator_enable._entry_ptr, ptr @q6v5_regulator_enable._entry_ptr.93, ptr @q6v5_regulator_enable._entry_ptr.96, ptr @q6v5_regulator_init._entry, ptr @q6v5_regulator_init._entry_ptr, ptr @q6v5_start._entry, ptr @q6v5_start._entry.42, ptr @q6v5_start._entry.45, ptr @q6v5_start._entry_ptr, ptr @q6v5_start._entry_ptr.44, ptr @q6v5_start._entry_ptr.47, ptr @q6v5_stop._entry, ptr @q6v5_stop._entry_ptr, ptr @q6v5proc_disable_qchannel._entry, ptr @q6v5proc_disable_qchannel._entry_ptr, ptr @q6v5proc_enable_qchannel._entry, ptr @q6v5proc_enable_qchannel._entry.101, ptr @q6v5proc_enable_qchannel._entry_ptr, ptr @q6v5proc_enable_qchannel._entry_ptr.103, ptr @q6v5proc_halt_axi_port._entry, ptr @q6v5proc_halt_axi_port._entry_ptr, ptr @q6v5proc_reset._entry, ptr @q6v5proc_reset._entry.106, ptr @q6v5proc_reset._entry.109, ptr @q6v5proc_reset._entry.111, ptr @q6v5proc_reset._entry.114, ptr @q6v5proc_reset._entry.116, ptr @q6v5proc_reset._entry.119, ptr @q6v5proc_reset._entry.122, ptr @q6v5proc_reset._entry_ptr, ptr @q6v5proc_reset._entry_ptr.108, ptr @q6v5proc_reset._entry_ptr.110, ptr @q6v5proc_reset._entry_ptr.113, ptr @q6v5proc_reset._entry_ptr.115, ptr @q6v5proc_reset._entry_ptr.118, ptr @q6v5proc_reset._entry_ptr.121, ptr @q6v5proc_reset._entry_ptr.124, ptr @qcom_q6v5_register_dump_segments._entry, ptr @qcom_q6v5_register_dump_segments._entry_ptr, ptr @q6v5_driver, ptr @.str, ptr @q6v5_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @q6v5_ops, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.112, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @.str.152, ptr @.str.157, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.173, ptr @.str.174, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.186, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.196, ptr @.str.198, ptr @.str.200, ptr @.str.203, ptr @.str.205, ptr @.str.207, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.214, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.225, ptr @msm8916_mss, ptr @msm8974_mss, ptr @msm8996_mss, ptr @msm8998_mss, ptr @sc7180_mss, ptr @sc7280_mss, ptr @sdm845_mss, ptr @.str.227, ptr @.str.228, ptr @.compoundliteral, ptr @.str.229, ptr @.str.230, ptr @.compoundliteral.231, ptr @.str.232, ptr @.compoundliteral.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.compoundliteral.237, ptr @.compoundliteral.238, ptr @.str.239, ptr @.compoundliteral.240, ptr @.compoundliteral.241, ptr @.str.242, ptr @.compoundliteral.243, ptr @.compoundliteral.244, ptr @.compoundliteral.245, ptr @.compoundliteral.246, ptr @.compoundliteral.247, ptr @.str.248, ptr @.str.249, ptr @.compoundliteral.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.compoundliteral.254, ptr @.compoundliteral.255, ptr @.compoundliteral.256, ptr @.compoundliteral.257, ptr @.compoundliteral.258, ptr @.compoundliteral.259, ptr @.str.260, ptr @.compoundliteral.261, ptr @.compoundliteral.262, ptr @.str.263, ptr @.compoundliteral.264, ptr @.str.265, ptr @.compoundliteral.266, ptr @.compoundliteral.267, ptr @.str.268, ptr @.compoundliteral.269, ptr @.compoundliteral.270, ptr @.compoundliteral.271, ptr @.compoundliteral.272], section "llvm.metadata"
@0 = internal global [247 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_of_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_start._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_start._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mba_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mba_load._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mba_load._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mba_load._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mba_load._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mba_load._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mba_load._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mba_load._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mba_load._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mba_load._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mba_load._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mba_load._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mba_load._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mba_load._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_regulator_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_regulator_enable._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_regulator_enable._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_clk_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5proc_enable_qchannel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5proc_enable_qchannel._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5proc_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5proc_reset._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5proc_reset._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5proc_reset._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5proc_reset._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5proc_reset._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5proc_reset._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5proc_reset._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5proc_halt_axi_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5proc_disable_qchannel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_load._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_load._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_load._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_load._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_load._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_load._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_load._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_load._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_load._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_load._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_load._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_init_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_init_image._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_init_image._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_init_image._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mpss_init_image._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mba_reclaim._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_mba_reclaim._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_q6v5_register_dump_segments._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_load._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_init_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_init_mem._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_init_mem._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_init_mem._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_init_mem._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_alloc_memory_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_alloc_memory_region._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_init_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_regulator_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_init_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_init_reset._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_mss to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_mss to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_mss to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_mss to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_mss to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_mss to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_mss to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.231 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.233 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.237 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.238 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.241 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.244 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.245 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.246 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.250 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.254 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.255 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.258 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.259 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.261 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.262 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.264 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.266 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.267 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.269 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.270 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.271 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.272 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @q6v5_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @q6v5_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @q6v5_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @q6v5_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6v5_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i66.i = alloca %struct.of_phandle_args, align 4
  %args.i60.i = alloca %struct.of_phandle_args, align 4
  %args.i54.i = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %r.i = alloca %struct.resource, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %mba_image = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mba_image) #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %need_mem_protection = getelementptr inbounds %struct.rproc_hexagon_res, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %need_mem_protection to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %need_mem_protection, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call zeroext i1 @qcom_scm_is_available() #10
  br i1 %call2, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %4 = ptrtoint ptr %mba_image to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %mba_image, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %mba_image, i32 noundef 1, i32 noundef 0) #10
  %7 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp sgt i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %7)
  %cmp8.not = icmp eq i32 %7, -22
  %or.cond = or i1 %cmp, %cmp8.not
  br i1 %or.cond, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %10 = ptrtoint ptr %mba_image to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mba_image, align 4
  %call13 = call ptr @rproc_alloc(ptr noundef %dev, ptr noundef %9, ptr noundef nonnull @q6v5_ops, ptr noundef %11, i32 noundef 572) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %auto_boot = getelementptr inbounds %struct.rproc, ptr %call13, i32 0, i32 30
  %12 = ptrtoint ptr %auto_boot to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %auto_boot, align 1
  %call21 = call i32 @rproc_coredump_set_elf_info(ptr noundef nonnull %call13, i8 noundef zeroext 1, i16 noundef zeroext 0) #10
  %priv = getelementptr inbounds %struct.rproc, ptr %call13, i32 0, i32 4
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %14, align 4
  %rproc24 = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %rproc24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call13, ptr %rproc24, align 4
  %hexagon_mdt_image = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 57
  %17 = ptrtoint ptr %hexagon_mdt_image to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.10, ptr %hexagon_mdt_image, align 4
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call.i302 = call i32 @of_property_read_string_helper(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef %hexagon_mdt_image, i32 noundef 1, i32 noundef 1) #10
  %20 = call i32 @llvm.smin.i32(i32 %call.i302, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp29 = icmp sgt i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %20)
  %cmp31.not = icmp eq i32 %20, -22
  %or.cond301 = or i1 %cmp29, %cmp31.not
  br i1 %or.cond301, label %if.end37, label %do.end35

do.end35:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #13
  br label %free_rproc

if.end37:                                         ; preds = %if.end20
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %14, ptr %driver_data.i.i, align 4
  %has_qaccept_regs = getelementptr inbounds %struct.rproc_hexagon_res, ptr %call, i32 0, i32 13
  %22 = ptrtoint ptr %has_qaccept_regs to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_qaccept_regs, align 4, !range !436
  %has_qaccept_regs39 = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 52
  %24 = ptrtoint ptr %has_qaccept_regs39 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %has_qaccept_regs39, align 4
  %has_ext_cntl_regs = getelementptr inbounds %struct.rproc_hexagon_res, ptr %call, i32 0, i32 14
  %25 = ptrtoint ptr %has_ext_cntl_regs to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_ext_cntl_regs, align 1, !range !436
  %has_ext_cntl_regs41 = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 53
  %27 = ptrtoint ptr %has_ext_cntl_regs41 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %has_ext_cntl_regs41, align 1
  %has_vq6 = getelementptr inbounds %struct.rproc_hexagon_res, ptr %call, i32 0, i32 15
  %28 = ptrtoint ptr %has_vq6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %has_vq6, align 2, !range !436
  %has_vq644 = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 54
  %30 = ptrtoint ptr %has_vq644 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %has_vq644, align 2
  %has_spare_reg = getelementptr inbounds %struct.rproc_hexagon_res, ptr %call, i32 0, i32 12
  %31 = ptrtoint ptr %has_spare_reg to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %has_spare_reg, align 1, !range !436
  %has_spare_reg47 = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 51
  %33 = ptrtoint ptr %has_spare_reg47 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %has_spare_reg47, align 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %34 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i303 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.189) #10
  %reg_base.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 2
  %35 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i303, ptr %reg_base.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i303, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end37.q6v5_init_mem.exit_crit_edge, label %if.end.i

if.end37.q6v5_init_mem.exit_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_init_mem.exit

if.end.i:                                         ; preds = %if.end37
  %call5.i = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.190) #10
  %rmb_base.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 3
  %36 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call5.i, ptr %rmb_base.i, align 4
  %cmp.i170.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170.i, label %if.end.i.q6v5_init_mem.exit_crit_edge, label %if.end11.i

if.end.i.q6v5_init_mem.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_init_mem.exit

if.end11.i:                                       ; preds = %if.end.i
  %37 = ptrtoint ptr %has_vq644 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %has_vq644, align 2, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  %spec.select.i = select i1 %tobool.not.i, i32 3, i32 4
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %40, ptr noundef nonnull @.str.191, ptr noundef null, i32 noundef %spec.select.i, i32 noundef 0, ptr noundef nonnull %args.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end11.i.q6v5_init_mem.exit.thread_crit_edge, label %if.end17.i

if.end11.i.q6v5_init_mem.exit.thread_crit_edge:   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_init_mem.exit.thread

if.end17.i:                                       ; preds = %if.end11.i
  %41 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %args.i, align 4
  %call18.i = call ptr @syscon_node_to_regmap(ptr noundef %42) #10
  %halt_map.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 4
  %43 = ptrtoint ptr %halt_map.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call18.i, ptr %halt_map.i, align 4
  %44 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %args.i, align 4
  call void @of_node_put(ptr noundef %45) #10
  %46 = ptrtoint ptr %halt_map.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %halt_map.i, align 4
  %cmp.i171.i = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171.i, label %if.end17.i.q6v5_init_mem.exit_crit_edge, label %if.end25.i

if.end17.i.q6v5_init_mem.exit_crit_edge:          ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_init_mem.exit

if.end25.i:                                       ; preds = %if.end17.i
  %args26.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  %48 = ptrtoint ptr %args26.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %args26.i, align 4
  %halt_q6.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 6
  %50 = ptrtoint ptr %halt_q6.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %halt_q6.i, align 4
  %arrayidx28.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx28.i, align 4
  %halt_modem.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 7
  %53 = ptrtoint ptr %halt_modem.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %halt_modem.i, align 4
  %arrayidx30.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx30.i, align 4
  %halt_nc.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 8
  %56 = ptrtoint ptr %halt_nc.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %halt_nc.i, align 4
  %57 = ptrtoint ptr %has_vq644 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %has_vq644, align 2, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool32.not.i = icmp eq i8 %58, 0
  br i1 %tobool32.not.i, label %if.end25.i.if.end36.i_crit_edge, label %if.then33.i

if.end25.i.if.end36.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then33.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2, i32 3
  %59 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx35.i, align 4
  %halt_vq6.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 9
  %61 = ptrtoint ptr %halt_vq6.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %halt_vq6.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %if.end25.i.if.end36.i_crit_edge
  %62 = ptrtoint ptr %has_qaccept_regs39 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %has_qaccept_regs39, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool37.not.i = icmp eq i8 %63, 0
  br i1 %tobool37.not.i, label %if.end36.i.if.end55.i_crit_edge, label %if.then38.i

if.end36.i.if.end55.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

if.then38.i:                                      ; preds = %if.end36.i
  %64 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %of_node, align 8
  %call.i172.i = call i32 @__of_parse_phandle_with_args(ptr noundef %65, ptr noundef nonnull @.str.194, ptr noundef null, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %args.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172.i)
  %cmp42.i = icmp slt i32 %call.i172.i, 0
  br i1 %cmp42.i, label %if.then38.i.q6v5_init_mem.exit.thread_crit_edge, label %if.end48.i

if.then38.i.q6v5_init_mem.exit.thread_crit_edge:  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_init_mem.exit.thread

if.end48.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %args26.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %args26.i, align 4
  %qaccept_mdm.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 11
  %68 = ptrtoint ptr %qaccept_mdm.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %qaccept_mdm.i, align 4
  %69 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx28.i, align 4
  %qaccept_cx.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 12
  %71 = ptrtoint ptr %qaccept_cx.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %qaccept_cx.i, align 4
  %72 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx30.i, align 4
  %qaccept_axi.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 13
  %74 = ptrtoint ptr %qaccept_axi.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %qaccept_axi.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end48.i, %if.end36.i.if.end55.i_crit_edge
  %75 = ptrtoint ptr %has_ext_cntl_regs41 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %has_ext_cntl_regs41, align 1, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool56.not.i = icmp eq i8 %76, 0
  br i1 %tobool56.not.i, label %if.end55.i.if.end95.i_crit_edge, label %if.then57.i

if.end55.i.if.end95.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.i

if.then57.i:                                      ; preds = %if.end55.i
  %77 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %of_node, align 8
  %call.i173.i = call i32 @__of_parse_phandle_with_args(ptr noundef %78, ptr noundef nonnull @.str.198, ptr noundef null, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %args.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173.i)
  %cmp61.i = icmp slt i32 %call.i173.i, 0
  br i1 %cmp61.i, label %if.then57.i.q6v5_init_mem.exit.thread_crit_edge, label %if.end67.i

if.then57.i.q6v5_init_mem.exit.thread_crit_edge:  ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_init_mem.exit.thread

if.end67.i:                                       ; preds = %if.then57.i
  %79 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %args.i, align 4
  %call69.i = call ptr @syscon_node_to_regmap(ptr noundef %80) #10
  %conn_map.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 5
  %81 = ptrtoint ptr %conn_map.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call69.i, ptr %conn_map.i, align 4
  %82 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %args.i, align 4
  call void @of_node_put(ptr noundef %83) #10
  %84 = ptrtoint ptr %conn_map.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %conn_map.i, align 4
  %cmp.i174.i = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174.i, label %if.end67.i.q6v5_init_mem.exit_crit_edge, label %if.end76.i

if.end67.i.q6v5_init_mem.exit_crit_edge:          ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_init_mem.exit

if.end76.i:                                       ; preds = %if.end67.i
  %86 = ptrtoint ptr %args26.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %args26.i, align 4
  %force_clk_on.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 16
  %88 = ptrtoint ptr %force_clk_on.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %force_clk_on.i, align 4
  %89 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx28.i, align 4
  %rscc_disable.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 17
  %91 = ptrtoint ptr %rscc_disable.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %rscc_disable.i, align 4
  %92 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %of_node, align 8
  %call.i175.i = call i32 @__of_parse_phandle_with_args(ptr noundef %93, ptr noundef nonnull @.str.198, ptr noundef null, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %args.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175.i)
  %cmp84.i = icmp slt i32 %call.i175.i, 0
  br i1 %cmp84.i, label %if.end76.i.q6v5_init_mem.exit.thread_crit_edge, label %if.end90.i

if.end76.i.q6v5_init_mem.exit.thread_crit_edge:   ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_init_mem.exit.thread

if.end90.i:                                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %args26.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %args26.i, align 4
  %axim1_clk_off.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 14
  %96 = ptrtoint ptr %axim1_clk_off.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %axim1_clk_off.i, align 4
  %97 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx28.i, align 4
  %crypto_clk_off.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 15
  %99 = ptrtoint ptr %crypto_clk_off.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %crypto_clk_off.i, align 4
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.end90.i, %if.end55.i.if.end95.i_crit_edge
  %100 = ptrtoint ptr %has_spare_reg47 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %has_spare_reg47, align 1, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool96.not.i = icmp eq i8 %101, 0
  br i1 %tobool96.not.i, label %if.end95.i.q6v5_init_mem.exit.thread417_crit_edge, label %if.then97.i

if.end95.i.q6v5_init_mem.exit.thread417_crit_edge: ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_init_mem.exit.thread417

if.then97.i:                                      ; preds = %if.end95.i
  %102 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %of_node, align 8
  %call.i176.i = call i32 @__of_parse_phandle_with_args(ptr noundef %103, ptr noundef nonnull @.str.205, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176.i)
  %cmp101.i = icmp slt i32 %call.i176.i, 0
  br i1 %cmp101.i, label %if.then97.i.q6v5_init_mem.exit.thread_crit_edge, label %if.end107.i

if.then97.i.q6v5_init_mem.exit.thread_crit_edge:  ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_init_mem.exit.thread

if.end107.i:                                      ; preds = %if.then97.i
  %104 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %args.i, align 4
  %call109.i = call ptr @syscon_node_to_regmap(ptr noundef %105) #10
  %conn_map110.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 5
  %106 = ptrtoint ptr %conn_map110.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call109.i, ptr %conn_map110.i, align 4
  %107 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %args.i, align 4
  call void @of_node_put(ptr noundef %108) #10
  %109 = ptrtoint ptr %conn_map110.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %conn_map110.i, align 4
  %cmp.i177.i = icmp ugt ptr %110, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177.i, label %if.end107.i.q6v5_init_mem.exit_crit_edge, label %if.end117.i

if.end107.i.q6v5_init_mem.exit_crit_edge:         ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_init_mem.exit

if.end117.i:                                      ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %args26.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %args26.i, align 4
  %conn_box.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 10
  %113 = ptrtoint ptr %conn_box.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %conn_box.i, align 4
  br label %q6v5_init_mem.exit.thread417

q6v5_init_mem.exit.thread:                        ; preds = %if.then97.i.q6v5_init_mem.exit.thread_crit_edge, %if.end76.i.q6v5_init_mem.exit.thread_crit_edge, %if.then57.i.q6v5_init_mem.exit.thread_crit_edge, %if.then38.i.q6v5_init_mem.exit.thread_crit_edge, %if.end11.i.q6v5_init_mem.exit.thread_crit_edge
  %.str.192.sink = phi ptr [ @.str.192, %if.end11.i.q6v5_init_mem.exit.thread_crit_edge ], [ @.str.196, %if.then38.i.q6v5_init_mem.exit.thread_crit_edge ], [ @.str.200, %if.then57.i.q6v5_init_mem.exit.thread_crit_edge ], [ @.str.203, %if.end76.i.q6v5_init_mem.exit.thread_crit_edge ], [ @.str.207, %if.then97.i.q6v5_init_mem.exit.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.192.sink) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  br label %free_rproc

q6v5_init_mem.exit.thread417:                     ; preds = %if.end117.i, %if.end95.i.q6v5_init_mem.exit.thread417_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r.i) #10
  %114 = getelementptr inbounds %struct.resource, ptr %r.i, i32 0, i32 1
  %115 = call ptr @memset(ptr %r.i, i32 255, i32 32)
  %116 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %14, align 4
  %of_node.i304 = getelementptr inbounds %struct.device, ptr %117, i32 0, i32 27
  %118 = ptrtoint ptr %of_node.i304 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %of_node.i304, align 8
  %call.i305 = call ptr @of_get_child_by_name(ptr noundef %119, ptr noundef nonnull @.str.209) #10
  %tobool.not.i306 = icmp eq ptr %call.i305, null
  br i1 %tobool.not.i306, label %if.then.i308, label %if.else.i

q6v5_init_mem.exit:                               ; preds = %if.end107.i.q6v5_init_mem.exit_crit_edge, %if.end67.i.q6v5_init_mem.exit_crit_edge, %if.end17.i.q6v5_init_mem.exit_crit_edge, %if.end.i.q6v5_init_mem.exit_crit_edge, %if.end37.q6v5_init_mem.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i303, %if.end37.q6v5_init_mem.exit_crit_edge ], [ %call5.i, %if.end.i.q6v5_init_mem.exit_crit_edge ], [ %47, %if.end17.i.q6v5_init_mem.exit_crit_edge ], [ %85, %if.end67.i.q6v5_init_mem.exit_crit_edge ], [ %110, %if.end107.i.q6v5_init_mem.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  br label %free_rproc

if.then.i308:                                     ; preds = %q6v5_init_mem.exit.thread417
  %120 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %14, align 4
  %of_node2.i = getelementptr inbounds %struct.device, ptr %121, i32 0, i32 27
  %122 = ptrtoint ptr %of_node2.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %of_node2.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #10
  %124 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i307 = call i32 @__of_parse_phandle_with_args(ptr noundef %123, ptr noundef nonnull @.str.210, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i307)
  %tobool.not.i.i = icmp eq i32 %call.i.i307, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i308.of_parse_phandle.exit.i_crit_edge

if.then.i308.of_parse_phandle.exit.i_crit_edge:   ; preds = %if.then.i308
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_parse_phandle.exit.i

if.end.i.i:                                       ; preds = %if.then.i308
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %args.i.i, align 4
  br label %of_parse_phandle.exit.i

of_parse_phandle.exit.i:                          ; preds = %if.end.i.i, %if.then.i308.of_parse_phandle.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %126, %if.end.i.i ], [ null, %if.then.i308.of_parse_phandle.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #10
  br label %if.end.i310

if.else.i:                                        ; preds = %q6v5_init_mem.exit.thread417
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i54.i) #10
  %127 = call ptr @memset(ptr %args.i54.i, i32 255, i32 72)
  %call.i55.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call.i305, ptr noundef nonnull @.str.210, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i54.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i)
  %tobool.not.i56.i = icmp eq i32 %call.i55.i, 0
  br i1 %tobool.not.i56.i, label %if.end.i57.i, label %if.else.i.of_parse_phandle.exit59.i_crit_edge

if.else.i.of_parse_phandle.exit59.i_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_parse_phandle.exit59.i

if.end.i57.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %128 = ptrtoint ptr %args.i54.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %args.i54.i, align 4
  br label %of_parse_phandle.exit59.i

of_parse_phandle.exit59.i:                        ; preds = %if.end.i57.i, %if.else.i.of_parse_phandle.exit59.i_crit_edge
  %retval.0.i58.i = phi ptr [ %129, %if.end.i57.i ], [ null, %if.else.i.of_parse_phandle.exit59.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i54.i) #10
  br label %if.end.i310

if.end.i310:                                      ; preds = %of_parse_phandle.exit59.i, %of_parse_phandle.exit.i
  %node.0.i = phi ptr [ %retval.0.i58.i, %of_parse_phandle.exit59.i ], [ %retval.0.i.i, %of_parse_phandle.exit.i ]
  %call5.i309 = call i32 @of_address_to_resource(ptr noundef %node.0.i, i32 noundef 0, ptr noundef nonnull %r.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i309)
  %tobool6.not.i = icmp eq i32 %call5.i309, 0
  br i1 %tobool6.not.i, label %if.end9.i, label %if.end.i310.q6v5_alloc_memory_region.exit.thread_crit_edge

if.end.i310.q6v5_alloc_memory_region.exit.thread_crit_edge: ; preds = %if.end.i310
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_alloc_memory_region.exit.thread

if.end9.i:                                        ; preds = %if.end.i310
  call void @of_node_put(ptr noundef %node.0.i) #10
  %130 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %r.i, align 4
  %mba_phys.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 38
  %132 = ptrtoint ptr %mba_phys.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %mba_phys.i, align 4
  %133 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %114, align 4
  %sub.i.i = sub i32 1, %131
  %add.i.i = add i32 %sub.i.i, %134
  %mba_size.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 39
  %135 = ptrtoint ptr %mba_size.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %add.i.i, ptr %mba_size.i, align 4
  %136 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %14, align 4
  %of_node14.i = getelementptr inbounds %struct.device, ptr %137, i32 0, i32 27
  %138 = ptrtoint ptr %of_node14.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %of_node14.i, align 8
  br i1 %tobool.not.i306, label %if.then12.i, label %if.else16.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i60.i) #10
  %140 = call ptr @memset(ptr %args.i60.i, i32 255, i32 72)
  %call.i61.i = call i32 @__of_parse_phandle_with_args(ptr noundef %139, ptr noundef nonnull @.str.210, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %args.i60.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %tobool.not.i62.i = icmp eq i32 %call.i61.i, 0
  br i1 %tobool.not.i62.i, label %if.end.i63.i, label %if.then12.i.of_parse_phandle.exit65.i_crit_edge

if.then12.i.of_parse_phandle.exit65.i_crit_edge:  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_parse_phandle.exit65.i

if.end.i63.i:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %args.i60.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %args.i60.i, align 4
  br label %of_parse_phandle.exit65.i

of_parse_phandle.exit65.i:                        ; preds = %if.end.i63.i, %if.then12.i.of_parse_phandle.exit65.i_crit_edge
  %retval.0.i64.i = phi ptr [ %142, %if.end.i63.i ], [ null, %if.then12.i.of_parse_phandle.exit65.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i60.i) #10
  br label %if.end21.i

if.else16.i:                                      ; preds = %if.end9.i
  %call19.i = call ptr @of_get_child_by_name(ptr noundef %139, ptr noundef nonnull @.str.36) #10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i66.i) #10
  %143 = call ptr @memset(ptr %args.i66.i, i32 255, i32 72)
  %call.i67.i = call i32 @__of_parse_phandle_with_args(ptr noundef %call19.i, ptr noundef nonnull @.str.210, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i66.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %tobool.not.i68.i = icmp eq i32 %call.i67.i, 0
  br i1 %tobool.not.i68.i, label %if.end.i69.i, label %if.else16.i.of_parse_phandle.exit71.i_crit_edge

if.else16.i.of_parse_phandle.exit71.i_crit_edge:  ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_parse_phandle.exit71.i

if.end.i69.i:                                     ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %args.i66.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %args.i66.i, align 4
  br label %of_parse_phandle.exit71.i

of_parse_phandle.exit71.i:                        ; preds = %if.end.i69.i, %if.else16.i.of_parse_phandle.exit71.i_crit_edge
  %retval.0.i70.i = phi ptr [ %145, %if.end.i69.i ], [ null, %if.else16.i.of_parse_phandle.exit71.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i66.i) #10
  br label %if.end21.i

if.end21.i:                                       ; preds = %of_parse_phandle.exit71.i, %of_parse_phandle.exit65.i
  %node.1.i = phi ptr [ %retval.0.i70.i, %of_parse_phandle.exit71.i ], [ %retval.0.i64.i, %of_parse_phandle.exit65.i ]
  %call22.i = call i32 @of_address_to_resource(ptr noundef %node.1.i, i32 noundef 0, ptr noundef nonnull %r.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end56, label %if.end21.i.q6v5_alloc_memory_region.exit.thread_crit_edge

if.end21.i.q6v5_alloc_memory_region.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_alloc_memory_region.exit.thread

q6v5_alloc_memory_region.exit.thread:             ; preds = %if.end21.i.q6v5_alloc_memory_region.exit.thread_crit_edge, %if.end.i310.q6v5_alloc_memory_region.exit.thread_crit_edge
  %.str.211.sink = phi ptr [ @.str.211, %if.end.i310.q6v5_alloc_memory_region.exit.thread_crit_edge ], [ @.str.214, %if.end21.i.q6v5_alloc_memory_region.exit.thread_crit_edge ]
  %retval.0.i312.ph = phi i32 [ %call5.i309, %if.end.i310.q6v5_alloc_memory_region.exit.thread_crit_edge ], [ %call22.i, %if.end21.i.q6v5_alloc_memory_region.exit.thread_crit_edge ]
  %146 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull %.str.211.sink) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r.i) #10
  br label %free_rproc

if.end56:                                         ; preds = %if.end21.i
  call void @of_node_put(ptr noundef %node.1.i) #10
  %148 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %r.i, align 4
  %mpss_reloc.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 42
  %150 = ptrtoint ptr %mpss_reloc.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %mpss_reloc.i, align 4
  %mpss_phys.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 41
  %151 = ptrtoint ptr %mpss_phys.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %149, ptr %mpss_phys.i, align 4
  %152 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %114, align 4
  %sub.i73.i = sub i32 1, %149
  %add.i74.i = add i32 %sub.i73.i, %153
  %mpss_size.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 43
  %154 = ptrtoint ptr %mpss_size.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %add.i74.i, ptr %mpss_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r.i) #10
  %proxy_clks = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 23
  %proxy_clk_names = getelementptr inbounds %struct.rproc_hexagon_res, ptr %call, i32 0, i32 4
  %155 = ptrtoint ptr %proxy_clk_names to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %proxy_clk_names, align 4
  %tobool.not.i313 = icmp eq ptr %156, null
  br i1 %tobool.not.i313, label %if.end56.if.end65_crit_edge, label %for.cond.preheader.i

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

for.cond.preheader.i:                             ; preds = %if.end56
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %tobool1.not30.i = icmp eq ptr %158, null
  br i1 %tobool1.not30.i, label %for.cond.preheader.i.if.end65_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end65_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %159 = phi ptr [ %165, %for.inc.i.for.body.i_crit_edge ], [ %158, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.031.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call.i314 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %159) #10
  %arrayidx3.i = getelementptr ptr, ptr %proxy_clks, i32 %i.031.i
  %160 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call.i314, ptr %arrayidx3.i, align 4
  %cmp.i.i315 = icmp ugt ptr %call.i314, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i315, label %if.then6.i, label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  %cmp.not.i = icmp eq ptr %call.i314, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then6.i.do.end63_crit_edge, label %do.end.i316

if.then6.i.do.end63_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end63

do.end.i316:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.le.i = getelementptr ptr, ptr %156, i32 %i.031.i
  %161 = ptrtoint ptr %call.i314 to i32
  %162 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.le.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.216, ptr noundef %163) #13
  br label %q6v5_init_clocks.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.031.i, 1
  %arrayidx.i = getelementptr ptr, ptr %156, i32 %inc.i
  %164 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %165, null
  br i1 %tobool1.not.i, label %for.inc.i.q6v5_init_clocks.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.q6v5_init_clocks.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_init_clocks.exit

q6v5_init_clocks.exit:                            ; preds = %for.inc.i.q6v5_init_clocks.exit_crit_edge, %do.end.i316
  %retval.0.i317 = phi i32 [ %161, %do.end.i316 ], [ %inc.i, %for.inc.i.q6v5_init_clocks.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i317)
  %cmp59 = icmp slt i32 %retval.0.i317, 0
  br i1 %cmp59, label %q6v5_init_clocks.exit.do.end63_crit_edge, label %q6v5_init_clocks.exit.if.end65_crit_edge

q6v5_init_clocks.exit.if.end65_crit_edge:         ; preds = %q6v5_init_clocks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

q6v5_init_clocks.exit.do.end63_crit_edge:         ; preds = %q6v5_init_clocks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end63

do.end63:                                         ; preds = %q6v5_init_clocks.exit.do.end63_crit_edge, %if.then6.i.do.end63_crit_edge
  %retval.0.i317428 = phi i32 [ %retval.0.i317, %q6v5_init_clocks.exit.do.end63_crit_edge ], [ -517, %if.then6.i.do.end63_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #13
  br label %free_rproc

if.end65:                                         ; preds = %q6v5_init_clocks.exit.if.end65_crit_edge, %for.cond.preheader.i.if.end65_crit_edge, %if.end56.if.end65_crit_edge
  %retval.0.i317424 = phi i32 [ %retval.0.i317, %q6v5_init_clocks.exit.if.end65_crit_edge ], [ 0, %if.end56.if.end65_crit_edge ], [ 0, %for.cond.preheader.i.if.end65_crit_edge ]
  %proxy_clk_count = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 27
  %166 = ptrtoint ptr %proxy_clk_count to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %retval.0.i317424, ptr %proxy_clk_count, align 4
  %reset_clks = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 22
  %reset_clk_names = getelementptr inbounds %struct.rproc_hexagon_res, ptr %call, i32 0, i32 5
  %167 = ptrtoint ptr %reset_clk_names to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %reset_clk_names, align 4
  %tobool.not.i318 = icmp eq ptr %168, null
  br i1 %tobool.not.i318, label %if.end65.if.end75_crit_edge, label %for.cond.preheader.i320

if.end65.if.end75_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

for.cond.preheader.i320:                          ; preds = %if.end65
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %tobool1.not30.i319 = icmp eq ptr %170, null
  br i1 %tobool1.not30.i319, label %for.cond.preheader.i320.if.end75_crit_edge, label %for.cond.preheader.i320.for.body.i325_crit_edge

for.cond.preheader.i320.for.body.i325_crit_edge:  ; preds = %for.cond.preheader.i320
  br label %for.body.i325

for.cond.preheader.i320.if.end75_crit_edge:       ; preds = %for.cond.preheader.i320
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

for.body.i325:                                    ; preds = %for.inc.i333.for.body.i325_crit_edge, %for.cond.preheader.i320.for.body.i325_crit_edge
  %171 = phi ptr [ %177, %for.inc.i333.for.body.i325_crit_edge ], [ %170, %for.cond.preheader.i320.for.body.i325_crit_edge ]
  %i.031.i321 = phi i32 [ %inc.i330, %for.inc.i333.for.body.i325_crit_edge ], [ 0, %for.cond.preheader.i320.for.body.i325_crit_edge ]
  %call.i322 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %171) #10
  %arrayidx3.i323 = getelementptr ptr, ptr %reset_clks, i32 %i.031.i321
  %172 = ptrtoint ptr %arrayidx3.i323 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call.i322, ptr %arrayidx3.i323, align 4
  %cmp.i.i324 = icmp ugt ptr %call.i322, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i324, label %if.then6.i327, label %for.inc.i333

if.then6.i327:                                    ; preds = %for.body.i325
  %cmp.not.i326 = icmp eq ptr %call.i322, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i326, label %if.then6.i327.do.end73_crit_edge, label %do.end.i329

if.then6.i327.do.end73_crit_edge:                 ; preds = %if.then6.i327
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

do.end.i329:                                      ; preds = %if.then6.i327
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.le.i328 = getelementptr ptr, ptr %168, i32 %i.031.i321
  %173 = ptrtoint ptr %call.i322 to i32
  %174 = ptrtoint ptr %arrayidx.le.i328 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx.le.i328, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.216, ptr noundef %175) #13
  br label %q6v5_init_clocks.exit335

for.inc.i333:                                     ; preds = %for.body.i325
  %inc.i330 = add i32 %i.031.i321, 1
  %arrayidx.i331 = getelementptr ptr, ptr %168, i32 %inc.i330
  %176 = ptrtoint ptr %arrayidx.i331 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx.i331, align 4
  %tobool1.not.i332 = icmp eq ptr %177, null
  br i1 %tobool1.not.i332, label %for.inc.i333.q6v5_init_clocks.exit335_crit_edge, label %for.inc.i333.for.body.i325_crit_edge

for.inc.i333.for.body.i325_crit_edge:             ; preds = %for.inc.i333
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i325

for.inc.i333.q6v5_init_clocks.exit335_crit_edge:  ; preds = %for.inc.i333
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_init_clocks.exit335

q6v5_init_clocks.exit335:                         ; preds = %for.inc.i333.q6v5_init_clocks.exit335_crit_edge, %do.end.i329
  %retval.0.i334 = phi i32 [ %173, %do.end.i329 ], [ %inc.i330, %for.inc.i333.q6v5_init_clocks.exit335_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i334)
  %cmp69 = icmp slt i32 %retval.0.i334, 0
  br i1 %cmp69, label %q6v5_init_clocks.exit335.do.end73_crit_edge, label %q6v5_init_clocks.exit335.if.end75_crit_edge

q6v5_init_clocks.exit335.if.end75_crit_edge:      ; preds = %q6v5_init_clocks.exit335
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

q6v5_init_clocks.exit335.do.end73_crit_edge:      ; preds = %q6v5_init_clocks.exit335
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

do.end73:                                         ; preds = %q6v5_init_clocks.exit335.do.end73_crit_edge, %if.then6.i327.do.end73_crit_edge
  %retval.0.i334435 = phi i32 [ %retval.0.i334, %q6v5_init_clocks.exit335.do.end73_crit_edge ], [ -517, %if.then6.i327.do.end73_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #13
  br label %free_rproc

if.end75:                                         ; preds = %q6v5_init_clocks.exit335.if.end75_crit_edge, %for.cond.preheader.i320.if.end75_crit_edge, %if.end65.if.end75_crit_edge
  %retval.0.i334431 = phi i32 [ %retval.0.i334, %q6v5_init_clocks.exit335.if.end75_crit_edge ], [ 0, %if.end65.if.end75_crit_edge ], [ 0, %for.cond.preheader.i320.if.end75_crit_edge ]
  %reset_clk_count = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 26
  %178 = ptrtoint ptr %reset_clk_count to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %retval.0.i334431, ptr %reset_clk_count, align 4
  %active_clks = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 21
  %active_clk_names = getelementptr inbounds %struct.rproc_hexagon_res, ptr %call, i32 0, i32 6
  %179 = ptrtoint ptr %active_clk_names to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %active_clk_names, align 4
  %tobool.not.i336 = icmp eq ptr %180, null
  br i1 %tobool.not.i336, label %if.end75.if.end85_crit_edge, label %for.cond.preheader.i338

if.end75.if.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

for.cond.preheader.i338:                          ; preds = %if.end75
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  %tobool1.not30.i337 = icmp eq ptr %182, null
  br i1 %tobool1.not30.i337, label %for.cond.preheader.i338.if.end85_crit_edge, label %for.cond.preheader.i338.for.body.i343_crit_edge

for.cond.preheader.i338.for.body.i343_crit_edge:  ; preds = %for.cond.preheader.i338
  br label %for.body.i343

for.cond.preheader.i338.if.end85_crit_edge:       ; preds = %for.cond.preheader.i338
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

for.body.i343:                                    ; preds = %for.inc.i351.for.body.i343_crit_edge, %for.cond.preheader.i338.for.body.i343_crit_edge
  %183 = phi ptr [ %189, %for.inc.i351.for.body.i343_crit_edge ], [ %182, %for.cond.preheader.i338.for.body.i343_crit_edge ]
  %i.031.i339 = phi i32 [ %inc.i348, %for.inc.i351.for.body.i343_crit_edge ], [ 0, %for.cond.preheader.i338.for.body.i343_crit_edge ]
  %call.i340 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %183) #10
  %arrayidx3.i341 = getelementptr ptr, ptr %active_clks, i32 %i.031.i339
  %184 = ptrtoint ptr %arrayidx3.i341 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %call.i340, ptr %arrayidx3.i341, align 4
  %cmp.i.i342 = icmp ugt ptr %call.i340, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i342, label %if.then6.i345, label %for.inc.i351

if.then6.i345:                                    ; preds = %for.body.i343
  %cmp.not.i344 = icmp eq ptr %call.i340, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i344, label %if.then6.i345.do.end83_crit_edge, label %do.end.i347

if.then6.i345.do.end83_crit_edge:                 ; preds = %if.then6.i345
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

do.end.i347:                                      ; preds = %if.then6.i345
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.le.i346 = getelementptr ptr, ptr %180, i32 %i.031.i339
  %185 = ptrtoint ptr %call.i340 to i32
  %186 = ptrtoint ptr %arrayidx.le.i346 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx.le.i346, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.216, ptr noundef %187) #13
  br label %q6v5_init_clocks.exit353

for.inc.i351:                                     ; preds = %for.body.i343
  %inc.i348 = add i32 %i.031.i339, 1
  %arrayidx.i349 = getelementptr ptr, ptr %180, i32 %inc.i348
  %188 = ptrtoint ptr %arrayidx.i349 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx.i349, align 4
  %tobool1.not.i350 = icmp eq ptr %189, null
  br i1 %tobool1.not.i350, label %for.inc.i351.q6v5_init_clocks.exit353_crit_edge, label %for.inc.i351.for.body.i343_crit_edge

for.inc.i351.for.body.i343_crit_edge:             ; preds = %for.inc.i351
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i343

for.inc.i351.q6v5_init_clocks.exit353_crit_edge:  ; preds = %for.inc.i351
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_init_clocks.exit353

q6v5_init_clocks.exit353:                         ; preds = %for.inc.i351.q6v5_init_clocks.exit353_crit_edge, %do.end.i347
  %retval.0.i352 = phi i32 [ %185, %do.end.i347 ], [ %inc.i348, %for.inc.i351.q6v5_init_clocks.exit353_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i352)
  %cmp79 = icmp slt i32 %retval.0.i352, 0
  br i1 %cmp79, label %q6v5_init_clocks.exit353.do.end83_crit_edge, label %q6v5_init_clocks.exit353.if.end85_crit_edge

q6v5_init_clocks.exit353.if.end85_crit_edge:      ; preds = %q6v5_init_clocks.exit353
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

q6v5_init_clocks.exit353.do.end83_crit_edge:      ; preds = %q6v5_init_clocks.exit353
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

do.end83:                                         ; preds = %q6v5_init_clocks.exit353.do.end83_crit_edge, %if.then6.i345.do.end83_crit_edge
  %retval.0.i352442 = phi i32 [ %retval.0.i352, %q6v5_init_clocks.exit353.do.end83_crit_edge ], [ -517, %if.then6.i345.do.end83_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #13
  br label %free_rproc

if.end85:                                         ; preds = %q6v5_init_clocks.exit353.if.end85_crit_edge, %for.cond.preheader.i338.if.end85_crit_edge, %if.end75.if.end85_crit_edge
  %retval.0.i352438 = phi i32 [ %retval.0.i352, %q6v5_init_clocks.exit353.if.end85_crit_edge ], [ 0, %if.end75.if.end85_crit_edge ], [ 0, %for.cond.preheader.i338.if.end85_crit_edge ]
  %active_clk_count = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 25
  %190 = ptrtoint ptr %active_clk_count to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %retval.0.i352438, ptr %active_clk_count, align 4
  %proxy_regs = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 30
  %proxy_supply = getelementptr inbounds %struct.rproc_hexagon_res, ptr %call, i32 0, i32 1
  %191 = ptrtoint ptr %proxy_supply to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %proxy_supply, align 4
  %tobool.not.i354 = icmp eq ptr %192, null
  br i1 %tobool.not.i354, label %if.end85.if.end95_crit_edge, label %for.cond.preheader.i355

if.end85.if.end95_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

for.cond.preheader.i355:                          ; preds = %if.end85
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %192, align 4
  %tobool1.not48.i = icmp eq ptr %194, null
  br i1 %tobool1.not48.i, label %for.cond.preheader.i355.if.end95_crit_edge, label %for.body.i358.preheader

for.cond.preheader.i355.if.end95_crit_edge:       ; preds = %for.cond.preheader.i355
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

for.body.i358.preheader:                          ; preds = %for.cond.preheader.i355
  %call.i356484 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull %194) #10
  %195 = ptrtoint ptr %proxy_regs to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call.i356484, ptr %proxy_regs, align 4
  %cmp.i.i357485 = icmp ugt ptr %call.i356484, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i357485, label %for.body.i358.preheader.if.then8.i360_crit_edge, label %for.body.i358.preheader.if.end16.i_crit_edge

for.body.i358.preheader.if.end16.i_crit_edge:     ; preds = %for.body.i358.preheader
  br label %if.end16.i

for.body.i358.preheader.if.then8.i360_crit_edge:  ; preds = %for.body.i358.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i360

for.body.i358:                                    ; preds = %if.end16.i
  %call.i356 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull %207) #10
  %arrayidx4.i = getelementptr %struct.reg_info, ptr %proxy_regs, i32 %inc.i362
  %196 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %call.i356, ptr %arrayidx4.i, align 4
  %cmp.i.i357 = icmp ugt ptr %call.i356, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i357, label %for.body.i358.if.then8.i360_crit_edge, label %for.body.i358.if.end16.i_crit_edge

for.body.i358.if.end16.i_crit_edge:               ; preds = %for.body.i358
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

for.body.i358.if.then8.i360_crit_edge:            ; preds = %for.body.i358
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i360

if.then8.i360:                                    ; preds = %for.body.i358.if.then8.i360_crit_edge, %for.body.i358.preheader.if.then8.i360_crit_edge
  %arrayidx50.i.lcssa = phi ptr [ %192, %for.body.i358.preheader.if.then8.i360_crit_edge ], [ %arrayidx.i363, %for.body.i358.if.then8.i360_crit_edge ]
  %call.i356.lcssa = phi ptr [ %call.i356484, %for.body.i358.preheader.if.then8.i360_crit_edge ], [ %call.i356, %for.body.i358.if.then8.i360_crit_edge ]
  %cmp.not.i359 = icmp eq ptr %call.i356.lcssa, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i359, label %if.then8.i360.do.end93_crit_edge, label %do.end.i361

if.then8.i360.do.end93_crit_edge:                 ; preds = %if.then8.i360
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

do.end.i361:                                      ; preds = %if.then8.i360
  call void @__sanitizer_cov_trace_pc() #12
  %197 = ptrtoint ptr %call.i356.lcssa to i32
  %198 = ptrtoint ptr %arrayidx50.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx50.i.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.218, ptr noundef %199) #13
  br label %q6v5_regulator_init.exit

if.end16.i:                                       ; preds = %for.body.i358.if.end16.i_crit_edge, %for.body.i358.preheader.if.end16.i_crit_edge
  %i.049.i486 = phi i32 [ %inc.i362, %for.body.i358.if.end16.i_crit_edge ], [ 0, %for.body.i358.preheader.if.end16.i_crit_edge ]
  %uV.i = getelementptr %struct.qcom_mss_reg_res, ptr %192, i32 %i.049.i486, i32 1
  %200 = ptrtoint ptr %uV.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %uV.i, align 4
  %uV19.i = getelementptr %struct.reg_info, ptr %proxy_regs, i32 %i.049.i486, i32 1
  %202 = ptrtoint ptr %uV19.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %uV19.i, align 4
  %uA.i = getelementptr %struct.qcom_mss_reg_res, ptr %192, i32 %i.049.i486, i32 2
  %203 = ptrtoint ptr %uA.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %uA.i, align 4
  %uA22.i = getelementptr %struct.reg_info, ptr %proxy_regs, i32 %i.049.i486, i32 2
  %205 = ptrtoint ptr %uA22.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %uA22.i, align 4
  %inc.i362 = add i32 %i.049.i486, 1
  %arrayidx.i363 = getelementptr %struct.qcom_mss_reg_res, ptr %192, i32 %inc.i362
  %206 = ptrtoint ptr %arrayidx.i363 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx.i363, align 4
  %tobool1.not.i364 = icmp eq ptr %207, null
  br i1 %tobool1.not.i364, label %if.end16.i.q6v5_regulator_init.exit_crit_edge, label %for.body.i358

if.end16.i.q6v5_regulator_init.exit_crit_edge:    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_regulator_init.exit

q6v5_regulator_init.exit:                         ; preds = %if.end16.i.q6v5_regulator_init.exit_crit_edge, %do.end.i361
  %retval.0.i365 = phi i32 [ %197, %do.end.i361 ], [ %inc.i362, %if.end16.i.q6v5_regulator_init.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i365)
  %cmp89 = icmp slt i32 %retval.0.i365, 0
  br i1 %cmp89, label %q6v5_regulator_init.exit.do.end93_crit_edge, label %q6v5_regulator_init.exit.if.end95_crit_edge

q6v5_regulator_init.exit.if.end95_crit_edge:      ; preds = %q6v5_regulator_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

q6v5_regulator_init.exit.do.end93_crit_edge:      ; preds = %q6v5_regulator_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

do.end93:                                         ; preds = %q6v5_regulator_init.exit.do.end93_crit_edge, %if.then8.i360.do.end93_crit_edge
  %retval.0.i365449 = phi i32 [ %retval.0.i365, %q6v5_regulator_init.exit.do.end93_crit_edge ], [ -517, %if.then8.i360.do.end93_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #13
  br label %free_rproc

if.end95:                                         ; preds = %q6v5_regulator_init.exit.if.end95_crit_edge, %for.cond.preheader.i355.if.end95_crit_edge, %if.end85.if.end95_crit_edge
  %retval.0.i365445 = phi i32 [ %retval.0.i365, %q6v5_regulator_init.exit.if.end95_crit_edge ], [ 0, %if.end85.if.end95_crit_edge ], [ 0, %for.cond.preheader.i355.if.end95_crit_edge ]
  %proxy_reg_count = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 33
  %208 = ptrtoint ptr %proxy_reg_count to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %retval.0.i365445, ptr %proxy_reg_count, align 4
  %active_regs = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 29
  %active_supply = getelementptr inbounds %struct.rproc_hexagon_res, ptr %call, i32 0, i32 3
  %209 = ptrtoint ptr %active_supply to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %active_supply, align 4
  %tobool.not.i366 = icmp eq ptr %210, null
  br i1 %tobool.not.i366, label %if.end95.if.end105_crit_edge, label %for.cond.preheader.i368

if.end95.if.end105_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

for.cond.preheader.i368:                          ; preds = %if.end95
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %210, align 4
  %tobool1.not48.i367 = icmp eq ptr %212, null
  br i1 %tobool1.not48.i367, label %for.cond.preheader.i368.if.end105_crit_edge, label %for.body.i374.preheader

for.cond.preheader.i368.if.end105_crit_edge:      ; preds = %for.cond.preheader.i368
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

for.body.i374.preheader:                          ; preds = %for.cond.preheader.i368
  %call.i371488 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull %212) #10
  %213 = ptrtoint ptr %active_regs to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call.i371488, ptr %active_regs, align 4
  %cmp.i.i373489 = icmp ugt ptr %call.i371488, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i373489, label %for.body.i374.preheader.if.then8.i376_crit_edge, label %for.body.i374.preheader.if.end16.i385_crit_edge

for.body.i374.preheader.if.end16.i385_crit_edge:  ; preds = %for.body.i374.preheader
  br label %if.end16.i385

for.body.i374.preheader.if.then8.i376_crit_edge:  ; preds = %for.body.i374.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i376

for.body.i374:                                    ; preds = %if.end16.i385
  %call.i371 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull %225) #10
  %arrayidx4.i372 = getelementptr %struct.reg_info, ptr %active_regs, i32 %inc.i382
  %214 = ptrtoint ptr %arrayidx4.i372 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %call.i371, ptr %arrayidx4.i372, align 4
  %cmp.i.i373 = icmp ugt ptr %call.i371, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i373, label %for.body.i374.if.then8.i376_crit_edge, label %for.body.i374.if.end16.i385_crit_edge

for.body.i374.if.end16.i385_crit_edge:            ; preds = %for.body.i374
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i385

for.body.i374.if.then8.i376_crit_edge:            ; preds = %for.body.i374
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i376

if.then8.i376:                                    ; preds = %for.body.i374.if.then8.i376_crit_edge, %for.body.i374.preheader.if.then8.i376_crit_edge
  %arrayidx50.i369.lcssa = phi ptr [ %210, %for.body.i374.preheader.if.then8.i376_crit_edge ], [ %arrayidx.i383, %for.body.i374.if.then8.i376_crit_edge ]
  %call.i371.lcssa = phi ptr [ %call.i371488, %for.body.i374.preheader.if.then8.i376_crit_edge ], [ %call.i371, %for.body.i374.if.then8.i376_crit_edge ]
  %cmp.not.i375 = icmp eq ptr %call.i371.lcssa, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i375, label %if.then8.i376.do.end103_crit_edge, label %do.end.i377

if.then8.i376.do.end103_crit_edge:                ; preds = %if.then8.i376
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end103

do.end.i377:                                      ; preds = %if.then8.i376
  call void @__sanitizer_cov_trace_pc() #12
  %215 = ptrtoint ptr %call.i371.lcssa to i32
  %216 = ptrtoint ptr %arrayidx50.i369.lcssa to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx50.i369.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.218, ptr noundef %217) #13
  br label %q6v5_regulator_init.exit387

if.end16.i385:                                    ; preds = %for.body.i374.if.end16.i385_crit_edge, %for.body.i374.preheader.if.end16.i385_crit_edge
  %i.049.i370490 = phi i32 [ %inc.i382, %for.body.i374.if.end16.i385_crit_edge ], [ 0, %for.body.i374.preheader.if.end16.i385_crit_edge ]
  %uV.i378 = getelementptr %struct.qcom_mss_reg_res, ptr %210, i32 %i.049.i370490, i32 1
  %218 = ptrtoint ptr %uV.i378 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %uV.i378, align 4
  %uV19.i379 = getelementptr %struct.reg_info, ptr %active_regs, i32 %i.049.i370490, i32 1
  %220 = ptrtoint ptr %uV19.i379 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %uV19.i379, align 4
  %uA.i380 = getelementptr %struct.qcom_mss_reg_res, ptr %210, i32 %i.049.i370490, i32 2
  %221 = ptrtoint ptr %uA.i380 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %uA.i380, align 4
  %uA22.i381 = getelementptr %struct.reg_info, ptr %active_regs, i32 %i.049.i370490, i32 2
  %223 = ptrtoint ptr %uA22.i381 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %uA22.i381, align 4
  %inc.i382 = add i32 %i.049.i370490, 1
  %arrayidx.i383 = getelementptr %struct.qcom_mss_reg_res, ptr %210, i32 %inc.i382
  %224 = ptrtoint ptr %arrayidx.i383 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %arrayidx.i383, align 4
  %tobool1.not.i384 = icmp eq ptr %225, null
  br i1 %tobool1.not.i384, label %if.end16.i385.q6v5_regulator_init.exit387_crit_edge, label %for.body.i374

if.end16.i385.q6v5_regulator_init.exit387_crit_edge: ; preds = %if.end16.i385
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_regulator_init.exit387

q6v5_regulator_init.exit387:                      ; preds = %if.end16.i385.q6v5_regulator_init.exit387_crit_edge, %do.end.i377
  %retval.0.i386 = phi i32 [ %215, %do.end.i377 ], [ %inc.i382, %if.end16.i385.q6v5_regulator_init.exit387_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i386)
  %cmp99 = icmp slt i32 %retval.0.i386, 0
  br i1 %cmp99, label %q6v5_regulator_init.exit387.do.end103_crit_edge, label %q6v5_regulator_init.exit387.if.end105_crit_edge

q6v5_regulator_init.exit387.if.end105_crit_edge:  ; preds = %q6v5_regulator_init.exit387
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

q6v5_regulator_init.exit387.do.end103_crit_edge:  ; preds = %q6v5_regulator_init.exit387
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end103

do.end103:                                        ; preds = %q6v5_regulator_init.exit387.do.end103_crit_edge, %if.then8.i376.do.end103_crit_edge
  %retval.0.i386456 = phi i32 [ %retval.0.i386, %q6v5_regulator_init.exit387.do.end103_crit_edge ], [ -517, %if.then8.i376.do.end103_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #13
  br label %free_rproc

if.end105:                                        ; preds = %q6v5_regulator_init.exit387.if.end105_crit_edge, %for.cond.preheader.i368.if.end105_crit_edge, %if.end95.if.end105_crit_edge
  %retval.0.i386452 = phi i32 [ %retval.0.i386, %q6v5_regulator_init.exit387.if.end105_crit_edge ], [ 0, %if.end95.if.end105_crit_edge ], [ 0, %for.cond.preheader.i368.if.end105_crit_edge ]
  %active_reg_count = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 32
  %226 = ptrtoint ptr %active_reg_count to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %retval.0.i386452, ptr %active_reg_count, align 4
  %proxy_pds = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 24
  %proxy_pd_names = getelementptr inbounds %struct.rproc_hexagon_res, ptr %call, i32 0, i32 7
  %227 = ptrtoint ptr %proxy_pd_names to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %proxy_pd_names, align 4
  %tobool.not.i388 = icmp eq ptr %228, null
  br i1 %tobool.not.i388, label %if.end105.if.else130_crit_edge, label %if.end105.while.cond.i_crit_edge

if.end105.while.cond.i_crit_edge:                 ; preds = %if.end105
  br label %while.cond.i

if.end105.if.else130_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else130

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end105.while.cond.i_crit_edge
  %num_pds.0.i = phi i32 [ %inc.i391, %while.cond.i.while.cond.i_crit_edge ], [ 0, %if.end105.while.cond.i_crit_edge ]
  %arrayidx.i389 = getelementptr ptr, ptr %228, i32 %num_pds.0.i
  %229 = ptrtoint ptr %arrayidx.i389 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %arrayidx.i389, align 4
  %tobool1.not.i390 = icmp eq ptr %230, null
  %inc.i391 = add i32 %num_pds.0.i, 1
  br i1 %tobool1.not.i390, label %for.cond.preheader.i392, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

for.cond.preheader.i392:                          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pds.0.i)
  %cmp40.not.i = icmp eq i32 %num_pds.0.i, 0
  br i1 %cmp40.not.i, label %for.cond.preheader.i392.if.else130_crit_edge, label %for.cond.preheader.i392.for.body.i397_crit_edge

for.cond.preheader.i392.for.body.i397_crit_edge:  ; preds = %for.cond.preheader.i392
  br label %for.body.i397

for.cond.preheader.i392.if.else130_crit_edge:     ; preds = %for.cond.preheader.i392
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else130

for.body.i397:                                    ; preds = %for.inc.i399.for.body.i397_crit_edge, %for.cond.preheader.i392.for.body.i397_crit_edge
  %i.041.i = phi i32 [ %inc11.i, %for.inc.i399.for.body.i397_crit_edge ], [ 0, %for.cond.preheader.i392.for.body.i397_crit_edge ]
  %arrayidx2.i = getelementptr ptr, ptr %228, i32 %i.041.i
  %231 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %arrayidx2.i, align 4
  %call.i393 = call ptr @dev_pm_domain_attach_by_name(ptr noundef %dev, ptr noundef %232) #10
  %arrayidx3.i394 = getelementptr ptr, ptr %proxy_pds, i32 %i.041.i
  %233 = ptrtoint ptr %arrayidx3.i394 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %call.i393, ptr %arrayidx3.i394, align 4
  %tobool.not.i.i395 = icmp eq ptr %call.i393, null
  %cmp.i.i396 = icmp ugt ptr %call.i393, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i395, %cmp.i.i396
  br i1 %spec.select.i.i, label %if.then6.i398, label %for.inc.i399

if.then6.i398:                                    ; preds = %for.body.i397
  %234 = ptrtoint ptr %call.i393 to i32
  %call8..i = select i1 %tobool.not.i.i395, i32 -61, i32 %234
  %i.142.i = add i32 %i.041.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.142.i)
  %cmp1343.i = icmp sgt i32 %i.142.i, -1
  br i1 %cmp1343.i, label %if.then6.i398.for.body14.i_crit_edge, label %if.then6.i398.q6v5_pds_attach.exit_crit_edge

if.then6.i398.q6v5_pds_attach.exit_crit_edge:     ; preds = %if.then6.i398
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_pds_attach.exit

if.then6.i398.for.body14.i_crit_edge:             ; preds = %if.then6.i398
  br label %for.body14.i

for.inc.i399:                                     ; preds = %for.body.i397
  %inc11.i = add nuw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc11.i, %num_pds.0.i
  br i1 %exitcond.not.i, label %for.inc.i399.q6v5_pds_attach.exit_crit_edge, label %for.inc.i399.for.body.i397_crit_edge

for.inc.i399.for.body.i397_crit_edge:             ; preds = %for.inc.i399
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i397

for.inc.i399.q6v5_pds_attach.exit_crit_edge:      ; preds = %for.inc.i399
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_pds_attach.exit

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %if.then6.i398.for.body14.i_crit_edge
  %i.144.i = phi i32 [ %i.1.i, %for.body14.i.for.body14.i_crit_edge ], [ %i.142.i, %if.then6.i398.for.body14.i_crit_edge ]
  %arrayidx15.i = getelementptr ptr, ptr %proxy_pds, i32 %i.144.i
  %235 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %arrayidx15.i, align 4
  call void @dev_pm_domain_detach(ptr noundef %236, i1 noundef zeroext false) #10
  %i.1.i = add nsw i32 %i.144.i, -1
  %cmp13.i.not = icmp eq i32 %i.144.i, 0
  br i1 %cmp13.i.not, label %for.body14.i.q6v5_pds_attach.exit_crit_edge, label %for.body14.i.for.body14.i_crit_edge

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i

for.body14.i.q6v5_pds_attach.exit_crit_edge:      ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_pds_attach.exit

q6v5_pds_attach.exit:                             ; preds = %for.body14.i.q6v5_pds_attach.exit_crit_edge, %for.inc.i399.q6v5_pds_attach.exit_crit_edge, %if.then6.i398.q6v5_pds_attach.exit_crit_edge
  %retval.0.i400 = phi i32 [ %call8..i, %if.then6.i398.q6v5_pds_attach.exit_crit_edge ], [ %call8..i, %for.body14.i.q6v5_pds_attach.exit_crit_edge ], [ %num_pds.0.i, %for.inc.i399.q6v5_pds_attach.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %retval.0.i400)
  %cmp109 = icmp eq i32 %retval.0.i400, -61
  br i1 %cmp109, label %land.lhs.true110, label %if.else

land.lhs.true110:                                 ; preds = %q6v5_pds_attach.exit
  %fallback_proxy_supply = getelementptr inbounds %struct.rproc_hexagon_res, ptr %call, i32 0, i32 2
  %237 = ptrtoint ptr %fallback_proxy_supply to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %fallback_proxy_supply, align 4
  %tobool111.not = icmp eq ptr %238, null
  br i1 %tobool111.not, label %land.lhs.true110.do.end128_crit_edge, label %if.then112

land.lhs.true110.do.end128_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end128

if.then112:                                       ; preds = %land.lhs.true110
  %fallback_proxy_regs = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 31
  %call116 = call fastcc i32 @q6v5_regulator_init(ptr noundef %dev, ptr noundef %fallback_proxy_regs, ptr noundef nonnull %238)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %do.end121, label %if.end123

do.end121:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #13
  br label %free_rproc

if.end123:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  %fallback_proxy_reg_count = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 34
  %239 = ptrtoint ptr %fallback_proxy_reg_count to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %call116, ptr %fallback_proxy_reg_count, align 4
  br label %if.end132

if.else:                                          ; preds = %q6v5_pds_attach.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i400)
  %cmp124 = icmp slt i32 %retval.0.i400, 0
  br i1 %cmp124, label %if.else.do.end128_crit_edge, label %if.else.if.else130_crit_edge

if.else.if.else130_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else130

if.else.do.end128_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end128

do.end128:                                        ; preds = %if.else.do.end128_crit_edge, %land.lhs.true110.do.end128_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #13
  br label %free_rproc

if.else130:                                       ; preds = %if.else.if.else130_crit_edge, %for.cond.preheader.i392.if.else130_crit_edge, %if.end105.if.else130_crit_edge
  %retval.0.i400459466 = phi i32 [ %retval.0.i400, %if.else.if.else130_crit_edge ], [ 0, %for.cond.preheader.i392.if.else130_crit_edge ], [ 0, %if.end105.if.else130_crit_edge ]
  %proxy_pd_count = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 28
  %240 = ptrtoint ptr %proxy_pd_count to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %retval.0.i400459466, ptr %proxy_pd_count, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.else130, %if.end123
  %has_alt_reset = getelementptr inbounds %struct.rproc_hexagon_res, ptr %call, i32 0, i32 10
  %241 = ptrtoint ptr %has_alt_reset to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %has_alt_reset, align 1, !range !436
  %has_alt_reset134 = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 49
  %243 = ptrtoint ptr %has_alt_reset134 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %has_alt_reset134, align 1
  %244 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %14, align 4
  %call.i.i401 = call ptr @__devm_reset_control_get(ptr noundef %245, ptr noundef nonnull @.str.220, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %mss_restart.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 18
  %246 = ptrtoint ptr %mss_restart.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %call.i.i401, ptr %mss_restart.i, align 4
  %cmp.i.i402 = icmp ugt ptr %call.i.i401, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i402, label %if.end132.q6v5_init_reset.exit_crit_edge, label %if.end.i404

if.end132.q6v5_init_reset.exit_crit_edge:         ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_init_reset.exit

if.end.i404:                                      ; preds = %if.end132
  %247 = ptrtoint ptr %has_alt_reset134 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %has_alt_reset134, align 1, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %tobool.not.i403 = icmp eq i8 %248, 0
  br i1 %tobool.not.i403, label %lor.lhs.false.i, label %if.end.i404.if.then9.i_crit_edge

if.end.i404.if.then9.i_crit_edge:                 ; preds = %if.end.i404
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

lor.lhs.false.i:                                  ; preds = %if.end.i404
  %249 = ptrtoint ptr %has_spare_reg47 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %has_spare_reg47, align 1, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool6.not.i406 = icmp eq i8 %250, 0
  br i1 %tobool6.not.i406, label %lor.lhs.false7.i, label %lor.lhs.false.i.if.then9.i_crit_edge

lor.lhs.false.i.if.then9.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %251 = ptrtoint ptr %has_ext_cntl_regs41 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %has_ext_cntl_regs41, align 1, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool8.not.i = icmp eq i8 %252, 0
  br i1 %tobool8.not.i, label %lor.lhs.false7.i.if.end139_crit_edge, label %lor.lhs.false7.i.if.then9.i_crit_edge

lor.lhs.false7.i.if.then9.i_crit_edge:            ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

lor.lhs.false7.i.if.end139_crit_edge:             ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.then9.i:                                       ; preds = %lor.lhs.false7.i.if.then9.i_crit_edge, %lor.lhs.false.i.if.then9.i_crit_edge, %if.end.i404.if.then9.i_crit_edge
  %253 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %14, align 4
  %call.i34.i = call ptr @__devm_reset_control_get(ptr noundef %254, ptr noundef nonnull @.str.223, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %pdc_reset.i = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 19
  %255 = ptrtoint ptr %pdc_reset.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %call.i34.i, ptr %pdc_reset.i, align 4
  %cmp.i35.i = icmp ugt ptr %call.i34.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35.i, label %if.then9.i.q6v5_init_reset.exit_crit_edge, label %if.then9.i.if.end139_crit_edge

if.then9.i.if.end139_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.then9.i.q6v5_init_reset.exit_crit_edge:        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_init_reset.exit

q6v5_init_reset.exit:                             ; preds = %if.then9.i.q6v5_init_reset.exit_crit_edge, %if.end132.q6v5_init_reset.exit_crit_edge
  %.str.225.sink.i = phi ptr [ @.str.221, %if.end132.q6v5_init_reset.exit_crit_edge ], [ @.str.225, %if.then9.i.q6v5_init_reset.exit_crit_edge ]
  %pdc_reset.sink.i = phi ptr [ %mss_restart.i, %if.end132.q6v5_init_reset.exit_crit_edge ], [ %pdc_reset.i, %if.then9.i.q6v5_init_reset.exit_crit_edge ]
  %256 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull %.str.225.sink.i) #13
  %258 = ptrtoint ptr %pdc_reset.sink.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %pdc_reset.sink.i, align 4
  %260 = ptrtoint ptr %259 to i32
  %tobool137.not = icmp eq ptr %259, null
  br i1 %tobool137.not, label %q6v5_init_reset.exit.if.end139_crit_edge, label %q6v5_init_reset.exit.detach_proxy_pds_crit_edge

q6v5_init_reset.exit.detach_proxy_pds_crit_edge:  ; preds = %q6v5_init_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %detach_proxy_pds

q6v5_init_reset.exit.if.end139_crit_edge:         ; preds = %q6v5_init_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.end139:                                        ; preds = %q6v5_init_reset.exit.if.end139_crit_edge, %if.then9.i.if.end139_crit_edge, %lor.lhs.false7.i.if.end139_crit_edge
  %version = getelementptr inbounds %struct.rproc_hexagon_res, ptr %call, i32 0, i32 8
  %261 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %version, align 4
  %version140 = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 58
  %263 = ptrtoint ptr %version140 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %262, ptr %version140, align 4
  %264 = ptrtoint ptr %need_mem_protection to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %need_mem_protection, align 4, !range !436
  %need_mem_protection143 = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 48
  %266 = ptrtoint ptr %need_mem_protection143 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %265, ptr %need_mem_protection143, align 4
  %has_mba_logs = getelementptr inbounds %struct.rproc_hexagon_res, ptr %call, i32 0, i32 11
  %267 = ptrtoint ptr %has_mba_logs to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %has_mba_logs, align 2, !range !436
  %has_mba_logs146 = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 50
  %269 = ptrtoint ptr %has_mba_logs146 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %268, ptr %has_mba_logs146, align 2
  %q6v5 = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 20
  %call148 = call i32 @qcom_q6v5_init(ptr noundef %q6v5, ptr noundef %pdev, ptr noundef nonnull %call13, i32 noundef 421, ptr noundef nonnull @.str.35, ptr noundef nonnull @qcom_msa_handover) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %if.end139.detach_proxy_pds_crit_edge

if.end139.detach_proxy_pds_crit_edge:             ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %detach_proxy_pds

if.end151:                                        ; preds = %if.end139
  %mpss_perm = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 55
  %270 = ptrtoint ptr %mpss_perm to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 8, ptr %mpss_perm, align 4
  %mba_perm = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 56
  %271 = ptrtoint ptr %mba_perm to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 8, ptr %mba_perm, align 4
  %glink_subdev = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 44
  call void @qcom_add_glink_subdev(ptr noundef nonnull %call13, ptr noundef %glink_subdev, ptr noundef nonnull @.str.36) #10
  %smd_subdev = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 45
  call void @qcom_add_smd_subdev(ptr noundef nonnull %call13, ptr noundef %smd_subdev) #10
  %ssr_subdev = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 46
  call void @qcom_add_ssr_subdev(ptr noundef nonnull %call13, ptr noundef %ssr_subdev, ptr noundef nonnull @.str.36) #10
  %call152 = call ptr @qcom_add_sysmon_subdev(ptr noundef nonnull %call13, ptr noundef nonnull @.str.35, i32 noundef 18) #10
  %sysmon = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 47
  %272 = ptrtoint ptr %sysmon to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %call152, ptr %sysmon, align 4
  %cmp.i409 = icmp ugt ptr %call152, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i409, label %if.then155, label %if.end158

if.then155:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  %273 = ptrtoint ptr %call152 to i32
  br label %remove_subdevs

if.end158:                                        ; preds = %if.end151
  %call159 = call i32 @rproc_add(ptr noundef nonnull %call13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end158.cleanup_crit_edge, label %remove_sysmon_subdev

if.end158.cleanup_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

remove_sysmon_subdev:                             ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  %274 = ptrtoint ptr %sysmon to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %sysmon, align 4
  call void @qcom_remove_sysmon_subdev(ptr noundef %275) #10
  br label %remove_subdevs

remove_subdevs:                                   ; preds = %remove_sysmon_subdev, %if.then155
  %ret.0 = phi i32 [ %273, %if.then155 ], [ %call159, %remove_sysmon_subdev ]
  call void @qcom_remove_ssr_subdev(ptr noundef nonnull %call13, ptr noundef %ssr_subdev) #10
  call void @qcom_remove_smd_subdev(ptr noundef nonnull %call13, ptr noundef %smd_subdev) #10
  call void @qcom_remove_glink_subdev(ptr noundef nonnull %call13, ptr noundef %glink_subdev) #10
  br label %detach_proxy_pds

detach_proxy_pds:                                 ; preds = %remove_subdevs, %if.end139.detach_proxy_pds_crit_edge, %q6v5_init_reset.exit.detach_proxy_pds_crit_edge
  %ret.1 = phi i32 [ %260, %q6v5_init_reset.exit.detach_proxy_pds_crit_edge ], [ %call148, %if.end139.detach_proxy_pds_crit_edge ], [ %ret.0, %remove_subdevs ]
  %proxy_pd_count169 = getelementptr inbounds %struct.q6v5, ptr %14, i32 0, i32 28
  %276 = ptrtoint ptr %proxy_pd_count169 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %proxy_pd_count169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %cmp1.not.i = icmp eq i32 %277, 0
  br i1 %cmp1.not.i, label %detach_proxy_pds.free_rproc_crit_edge, label %detach_proxy_pds.for.body.i413_crit_edge

detach_proxy_pds.for.body.i413_crit_edge:         ; preds = %detach_proxy_pds
  br label %for.body.i413

detach_proxy_pds.free_rproc_crit_edge:            ; preds = %detach_proxy_pds
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_rproc

for.body.i413:                                    ; preds = %for.body.i413.for.body.i413_crit_edge, %detach_proxy_pds.for.body.i413_crit_edge
  %i.02.i = phi i32 [ %inc.i411, %for.body.i413.for.body.i413_crit_edge ], [ 0, %detach_proxy_pds.for.body.i413_crit_edge ]
  %arrayidx.i410 = getelementptr ptr, ptr %proxy_pds, i32 %i.02.i
  %278 = ptrtoint ptr %arrayidx.i410 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %arrayidx.i410, align 4
  call void @dev_pm_domain_detach(ptr noundef %279, i1 noundef zeroext false) #10
  %inc.i411 = add nuw i32 %i.02.i, 1
  %exitcond.not.i412 = icmp eq i32 %inc.i411, %277
  br i1 %exitcond.not.i412, label %for.body.i413.free_rproc_crit_edge, label %for.body.i413.for.body.i413_crit_edge

for.body.i413.for.body.i413_crit_edge:            ; preds = %for.body.i413
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i413

for.body.i413.free_rproc_crit_edge:               ; preds = %for.body.i413
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_rproc

free_rproc:                                       ; preds = %for.body.i413.free_rproc_crit_edge, %detach_proxy_pds.free_rproc_crit_edge, %do.end128, %do.end121, %do.end103, %do.end93, %do.end83, %do.end73, %do.end63, %q6v5_alloc_memory_region.exit.thread, %q6v5_init_mem.exit, %q6v5_init_mem.exit.thread, %do.end35
  %ret.2 = phi i32 [ %20, %do.end35 ], [ %retval.0.i, %q6v5_init_mem.exit ], [ %retval.0.i317428, %do.end63 ], [ %retval.0.i334435, %do.end73 ], [ %retval.0.i352442, %do.end83 ], [ %retval.0.i365449, %do.end93 ], [ %retval.0.i386456, %do.end103 ], [ %call116, %do.end121 ], [ %retval.0.i400, %do.end128 ], [ -22, %q6v5_init_mem.exit.thread ], [ %retval.0.i312.ph, %q6v5_alloc_memory_region.exit.thread ], [ %ret.1, %detach_proxy_pds.free_rproc_crit_edge ], [ %ret.1, %for.body.i413.free_rproc_crit_edge ]
  call void @rproc_free(ptr noundef nonnull %call13) #10
  br label %cleanup

cleanup:                                          ; preds = %free_rproc, %if.end158.cleanup_crit_edge, %do.end18, %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end ], [ %ret.2, %free_rproc ], [ -12, %do.end18 ], [ -22, %entry.cleanup_crit_edge ], [ -517, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end158.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mba_image) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6v5_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rproc1 = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rproc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rproc1, align 4
  %call2 = tail call i32 @rproc_del(ptr noundef %3) #10
  %q6v5 = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 20
  tail call void @qcom_q6v5_deinit(ptr noundef %q6v5) #10
  %sysmon = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 47
  %4 = ptrtoint ptr %sysmon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysmon, align 4
  tail call void @qcom_remove_sysmon_subdev(ptr noundef %5) #10
  %ssr_subdev = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 46
  tail call void @qcom_remove_ssr_subdev(ptr noundef %3, ptr noundef %ssr_subdev) #10
  %smd_subdev = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 45
  tail call void @qcom_remove_smd_subdev(ptr noundef %3, ptr noundef %smd_subdev) #10
  %glink_subdev = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 44
  tail call void @qcom_remove_glink_subdev(ptr noundef %3, ptr noundef %glink_subdev) #10
  %proxy_pds = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 24
  %proxy_pd_count = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %proxy_pd_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %proxy_pd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.not.i = icmp eq i32 %7, 0
  br i1 %cmp1.not.i, label %entry.q6v5_pds_detach.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.q6v5_pds_detach.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_pds_detach.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %proxy_pds, i32 %i.02.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %9, i1 noundef zeroext false) #10
  %inc.i = add nuw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.body.i.q6v5_pds_detach.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.q6v5_pds_detach.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_pds_detach.exit

q6v5_pds_detach.exit:                             ; preds = %for.body.i.q6v5_pds_detach.exit_crit_edge, %entry.q6v5_pds_detach.exit_crit_edge
  tail call void @rproc_free(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_is_available() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_coredump_set_elf_info(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @q6v5_regulator_init(ptr noundef %dev, ptr nocapture noundef %regs, ptr noundef readonly %reg_res) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %reg_res, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %reg_res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_res, align 4
  %tobool1.not48 = icmp eq ptr %1, null
  br i1 %tobool1.not48, label %for.cond.preheader.cleanup_crit_edge, label %for.body.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %call57 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call57, ptr %regs, align 4
  %cmp.i58 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58, label %for.body.preheader.if.then8_crit_edge, label %for.body.preheader.if.end16_crit_edge

for.body.preheader.if.end16_crit_edge:            ; preds = %for.body.preheader
  br label %if.end16

for.body.preheader.if.then8_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

for.body:                                         ; preds = %if.end16
  %call = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull %14) #10
  %arrayidx4 = getelementptr %struct.reg_info, ptr %regs, i32 %inc
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %arrayidx4, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.if.then8_crit_edge, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

for.body.if.then8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %for.body.if.then8_crit_edge, %for.body.preheader.if.then8_crit_edge
  %arrayidx50.lcssa = phi ptr [ %reg_res, %for.body.preheader.if.then8_crit_edge ], [ %arrayidx, %for.body.if.then8_crit_edge ]
  %call.lcssa = phi ptr [ %call57, %for.body.preheader.if.then8_crit_edge ], [ %call, %for.body.if.then8_crit_edge ]
  %cmp.not = icmp eq ptr %call.lcssa, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then8.cleanup_crit_edge, label %do.end

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call.lcssa to i32
  %5 = ptrtoint ptr %arrayidx50.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx50.lcssa, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.218, ptr noundef %6) #13
  br label %cleanup

if.end16:                                         ; preds = %for.body.if.end16_crit_edge, %for.body.preheader.if.end16_crit_edge
  %i.04959 = phi i32 [ %inc, %for.body.if.end16_crit_edge ], [ 0, %for.body.preheader.if.end16_crit_edge ]
  %uV = getelementptr %struct.qcom_mss_reg_res, ptr %reg_res, i32 %i.04959, i32 1
  %7 = ptrtoint ptr %uV to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uV, align 4
  %uV19 = getelementptr %struct.reg_info, ptr %regs, i32 %i.04959, i32 1
  %9 = ptrtoint ptr %uV19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %uV19, align 4
  %uA = getelementptr %struct.qcom_mss_reg_res, ptr %reg_res, i32 %i.04959, i32 2
  %10 = ptrtoint ptr %uA to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uA, align 4
  %uA22 = getelementptr %struct.reg_info, ptr %regs, i32 %i.04959, i32 2
  %12 = ptrtoint ptr %uA22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %uA22, align 4
  %inc = add i32 %i.04959, 1
  %arrayidx = getelementptr %struct.qcom_mss_reg_res, ptr %reg_res, i32 %inc
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %14, null
  br i1 %tobool1.not, label %if.end16.cleanup_crit_edge, label %for.body

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %do.end, %if.then8.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %4, %do.end ], [ -517, %if.then8.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %inc, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_msa_handover(ptr nocapture noundef readonly %q6v5) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proxy_clks = getelementptr i8, ptr %q6v5, i32 220
  %proxy_clk_count = getelementptr i8, ptr %q6v5, i32 256
  %0 = ptrtoint ptr %proxy_clk_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %proxy_clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.i = icmp sgt i32 %1, 0
  br i1 %cmp1.i, label %entry.for.body.i_crit_edge, label %entry.q6v5_clk_disable.exit_crit_edge

entry.q6v5_clk_disable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_clk_disable.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %proxy_clks, i32 %i.02.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.body.i.q6v5_clk_disable.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.q6v5_clk_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_clk_disable.exit

q6v5_clk_disable.exit:                            ; preds = %for.body.i.q6v5_clk_disable.exit_crit_edge, %entry.q6v5_clk_disable.exit_crit_edge
  %proxy_regs = getelementptr i8, ptr %q6v5, i32 276
  %proxy_reg_count = getelementptr i8, ptr %q6v5, i32 316
  %4 = ptrtoint ptr %proxy_reg_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %proxy_reg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i = icmp sgt i32 %5, 0
  br i1 %cmp2.i, label %q6v5_clk_disable.exit.for.body.i17_crit_edge, label %q6v5_clk_disable.exit.q6v5_regulator_disable.exit_crit_edge

q6v5_clk_disable.exit.q6v5_regulator_disable.exit_crit_edge: ; preds = %q6v5_clk_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_regulator_disable.exit

q6v5_clk_disable.exit.for.body.i17_crit_edge:     ; preds = %q6v5_clk_disable.exit
  br label %for.body.i17

for.body.i17:                                     ; preds = %if.end9.i.for.body.i17_crit_edge, %q6v5_clk_disable.exit.for.body.i17_crit_edge
  %i.03.i = phi i32 [ %inc.i18, %if.end9.i.for.body.i17_crit_edge ], [ 0, %q6v5_clk_disable.exit.for.body.i17_crit_edge ]
  %arrayidx.i15 = getelementptr %struct.reg_info, ptr %proxy_regs, i32 %i.03.i
  %uV.i = getelementptr %struct.reg_info, ptr %proxy_regs, i32 %i.03.i, i32 1
  %6 = ptrtoint ptr %uV.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uV.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.i16 = icmp sgt i32 %7, 0
  br i1 %cmp1.i16, label %if.then.i, label %for.body.i17.if.end.i_crit_edge

for.body.i17.if.end.i_crit_edge:                  ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i15, align 4
  %call.i = tail call i32 @regulator_set_voltage(ptr noundef %9, i32 noundef 0, i32 noundef 2147483647) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i17.if.end.i_crit_edge
  %uA.i = getelementptr %struct.reg_info, ptr %proxy_regs, i32 %i.03.i, i32 2
  %10 = ptrtoint ptr %uA.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uA.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4.i = icmp sgt i32 %11, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i15, align 4
  %call8.i = tail call i32 @regulator_set_load(ptr noundef %13, i32 noundef 0) #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i, %if.end.i.if.end9.i_crit_edge
  %14 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i15, align 4
  %call12.i = tail call i32 @regulator_disable(ptr noundef %15) #10
  %inc.i18 = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i19 = icmp eq i32 %inc.i18, %5
  br i1 %exitcond.not.i19, label %if.end9.i.q6v5_regulator_disable.exit_crit_edge, label %if.end9.i.for.body.i17_crit_edge

if.end9.i.for.body.i17_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i17

if.end9.i.q6v5_regulator_disable.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_regulator_disable.exit

q6v5_regulator_disable.exit:                      ; preds = %if.end9.i.q6v5_regulator_disable.exit_crit_edge, %q6v5_clk_disable.exit.q6v5_regulator_disable.exit_crit_edge
  %fallback_proxy_regs = getelementptr i8, ptr %q6v5, i32 288
  %fallback_proxy_reg_count = getelementptr i8, ptr %q6v5, i32 320
  %16 = ptrtoint ptr %fallback_proxy_reg_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fallback_proxy_reg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2.i20 = icmp sgt i32 %17, 0
  br i1 %cmp2.i20, label %q6v5_regulator_disable.exit.for.body.i25_crit_edge, label %q6v5_regulator_disable.exit.q6v5_regulator_disable.exit37_crit_edge

q6v5_regulator_disable.exit.q6v5_regulator_disable.exit37_crit_edge: ; preds = %q6v5_regulator_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_regulator_disable.exit37

q6v5_regulator_disable.exit.for.body.i25_crit_edge: ; preds = %q6v5_regulator_disable.exit
  br label %for.body.i25

for.body.i25:                                     ; preds = %if.end9.i36.for.body.i25_crit_edge, %q6v5_regulator_disable.exit.for.body.i25_crit_edge
  %i.03.i21 = phi i32 [ %inc.i34, %if.end9.i36.for.body.i25_crit_edge ], [ 0, %q6v5_regulator_disable.exit.for.body.i25_crit_edge ]
  %arrayidx.i22 = getelementptr %struct.reg_info, ptr %fallback_proxy_regs, i32 %i.03.i21
  %uV.i23 = getelementptr %struct.reg_info, ptr %fallback_proxy_regs, i32 %i.03.i21, i32 1
  %18 = ptrtoint ptr %uV.i23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uV.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.i24 = icmp sgt i32 %19, 0
  br i1 %cmp1.i24, label %if.then.i27, label %for.body.i25.if.end.i30_crit_edge

for.body.i25.if.end.i30_crit_edge:                ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i30

if.then.i27:                                      ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i22, align 4
  %call.i26 = tail call i32 @regulator_set_voltage(ptr noundef %21, i32 noundef 0, i32 noundef 2147483647) #10
  br label %if.end.i30

if.end.i30:                                       ; preds = %if.then.i27, %for.body.i25.if.end.i30_crit_edge
  %uA.i28 = getelementptr %struct.reg_info, ptr %fallback_proxy_regs, i32 %i.03.i21, i32 2
  %22 = ptrtoint ptr %uA.i28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %uA.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp4.i29 = icmp sgt i32 %23, 0
  br i1 %cmp4.i29, label %if.then5.i32, label %if.end.i30.if.end9.i36_crit_edge

if.end.i30.if.end9.i36_crit_edge:                 ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i36

if.then5.i32:                                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i22, align 4
  %call8.i31 = tail call i32 @regulator_set_load(ptr noundef %25, i32 noundef 0) #10
  br label %if.end9.i36

if.end9.i36:                                      ; preds = %if.then5.i32, %if.end.i30.if.end9.i36_crit_edge
  %26 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i22, align 4
  %call12.i33 = tail call i32 @regulator_disable(ptr noundef %27) #10
  %inc.i34 = add nuw nsw i32 %i.03.i21, 1
  %exitcond.not.i35 = icmp eq i32 %inc.i34, %17
  br i1 %exitcond.not.i35, label %if.end9.i36.q6v5_regulator_disable.exit37_crit_edge, label %if.end9.i36.for.body.i25_crit_edge

if.end9.i36.for.body.i25_crit_edge:               ; preds = %if.end9.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i25

if.end9.i36.q6v5_regulator_disable.exit37_crit_edge: ; preds = %if.end9.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_regulator_disable.exit37

q6v5_regulator_disable.exit37:                    ; preds = %if.end9.i36.q6v5_regulator_disable.exit37_crit_edge, %q6v5_regulator_disable.exit.q6v5_regulator_disable.exit37_crit_edge
  %proxy_pds = getelementptr i8, ptr %q6v5, i32 236
  %proxy_pd_count = getelementptr i8, ptr %q6v5, i32 260
  %28 = ptrtoint ptr %proxy_pd_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %proxy_pd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1.not.i = icmp eq i32 %29, 0
  br i1 %cmp1.not.i, label %q6v5_regulator_disable.exit37.q6v5_pds_disable.exit_crit_edge, label %q6v5_regulator_disable.exit37.for.body.i43_crit_edge

q6v5_regulator_disable.exit37.for.body.i43_crit_edge: ; preds = %q6v5_regulator_disable.exit37
  br label %for.body.i43

q6v5_regulator_disable.exit37.q6v5_pds_disable.exit_crit_edge: ; preds = %q6v5_regulator_disable.exit37
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_pds_disable.exit

for.body.i43:                                     ; preds = %for.body.i43.for.body.i43_crit_edge, %q6v5_regulator_disable.exit37.for.body.i43_crit_edge
  %i.02.i38 = phi i32 [ %inc.i41, %for.body.i43.for.body.i43_crit_edge ], [ 0, %q6v5_regulator_disable.exit37.for.body.i43_crit_edge ]
  %arrayidx.i39 = getelementptr ptr, ptr %proxy_pds, i32 %i.02.i38
  %30 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i39, align 4
  %call.i40 = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %31, i32 noundef 0) #10
  %32 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i39, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %33, i32 noundef 5) #10
  %inc.i41 = add nuw i32 %i.02.i38, 1
  %exitcond.not.i42 = icmp eq i32 %inc.i41, %29
  br i1 %exitcond.not.i42, label %for.body.i43.q6v5_pds_disable.exit_crit_edge, label %for.body.i43.for.body.i43_crit_edge

for.body.i43.for.body.i43_crit_edge:              ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i43

for.body.i43.q6v5_pds_disable.exit_crit_edge:     ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_pds_disable.exit

q6v5_pds_disable.exit:                            ; preds = %for.body.i43.q6v5_pds_disable.exit_crit_edge, %q6v5_regulator_disable.exit37.q6v5_pds_disable.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_add_glink_subdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_add_smd_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_add_ssr_subdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_add_sysmon_subdev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_remove_sysmon_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_remove_ssr_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_remove_smd_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_remove_glink_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6v5_start(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  %next.i = alloca [2 x %struct.qcom_scm_vmperm], align 4
  %next.i431.i = alloca [2 x %struct.qcom_scm_vmperm], align 4
  %next.i409.i = alloca [2 x %struct.qcom_scm_vmperm], align 4
  %next.i.i = alloca [2 x %struct.qcom_scm_vmperm], align 4
  %next.i82.i.i = alloca [2 x %struct.qcom_scm_vmperm], align 4
  %next.i.i.i = alloca [2 x %struct.qcom_scm_vmperm], align 4
  %phys.i.i = alloca i32, align 4
  %mdata_perm.i.i = alloca i32, align 4
  %size.i.i = alloca i32, align 4
  %seg_fw.i = alloca ptr, align 4
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @q6v5_mba_load(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dp_size = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %dp_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool1.not, ptr @.str.41, ptr @.str.40
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seg_fw.i) #10
  %6 = ptrtoint ptr %seg_fw.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %seg_fw.i, align 4, !annotation !437
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #10
  %7 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !437
  %hexagon_mdt_image.i = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 57
  %8 = ptrtoint ptr %hexagon_mdt_image.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hexagon_mdt_image.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 5
  br i1 %cmp.i, label %do.end.q6v5_mpss_load.exit.thread_crit_edge, label %if.end.i

do.end.q6v5_mpss_load.exit.thread_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_mpss_load.exit.thread

if.end.i:                                         ; preds = %do.end
  %call2.i = tail call noalias ptr @kstrdup(ptr noundef %9, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.q6v5_mpss_load.exit.thread_crit_edge, label %if.end4.i

if.end.i.q6v5_mpss_load.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_mpss_load.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call5.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull %call2.i, ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end.i, label %do.body10.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.129, ptr noundef nonnull %call2.i) #13
  br label %q6v5_mpss_load.exit

do.body10.i:                                      ; preds = %if.end4.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !438
  call void @arm_heavy_mb() #10
  %rmb_base.i = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !439
  %16 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i.i) #10
  %18 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %phys.i.i, align 4, !annotation !437
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mdata_perm.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i.i) #10
  %19 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %size.i.i, align 4, !annotation !437
  %call.i.i = call ptr @qcom_mdt_read_metadata(ptr noundef %17, ptr noundef nonnull %size.i.i) #10
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %call.i.i to i32
  br label %q6v5_mpss_init_image.exit.i

if.end.i.i:                                       ; preds = %do.body10.i
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i.i, align 4
  %call3.i.i = call ptr @dma_alloc_attrs(ptr noundef %22, i32 noundef %24, ptr noundef nonnull %phys.i.i, i32 noundef 3264, i32 noundef 64) #10
  %tobool.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i.i, label %q6v5_mpss_init_image.exit.thread.i, label %if.end6.i.i

q6v5_mpss_init_image.exit.thread.i:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef %call.i.i) #10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.161) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdata_perm.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i.i) #10
  br label %release_firmware.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %27 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i.i, align 4
  %29 = call ptr @memcpy(ptr %call3.i.i, ptr %call.i.i, i32 %28)
  %30 = ptrtoint ptr %mdata_perm.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %mdata_perm.i.i, align 4
  %31 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phys.i.i, align 4
  %33 = load i32, ptr %size.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %next.i.i.i) #10
  %need_mem_protection.i.i.i = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 48
  %34 = getelementptr inbounds i8, ptr %next.i.i.i, i32 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 -1, ptr %34, align 4
  %36 = ptrtoint ptr %need_mem_protection.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %need_mem_protection.i.i.i, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i.i, label %q6v5_xfer_mem_ownership.exit.thread.i.i, label %q6v5_xfer_mem_ownership.exit.i.i

q6v5_xfer_mem_ownership.exit.thread.i.i:          ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i.i.i) #10
  br label %do.body15.i.i

q6v5_xfer_mem_ownership.exit.i.i:                 ; preds = %if.end6.i.i
  %38 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 15, ptr %next.i.i.i, align 4
  %perm27.i.i.i = getelementptr inbounds [2 x %struct.qcom_scm_vmperm], ptr %next.i.i.i, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %perm27.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 6, ptr %perm27.i.i.i, align 4
  %add.i.i.i = add i32 %33, 4095
  %and30.i.i.i = and i32 %add.i.i.i, -4096
  %call.i.i.i = call i32 @qcom_scm_assign_mem(i32 noundef %32, i32 noundef %and30.i.i.i, ptr noundef nonnull %mdata_perm.i.i, ptr noundef nonnull %next.i.i.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool8.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool8.not.i.i, label %q6v5_xfer_mem_ownership.exit.i.i.do.body15.i.i_crit_edge, label %do.end12.i.i

q6v5_xfer_mem_ownership.exit.i.i.do.body15.i.i_crit_edge: ; preds = %q6v5_xfer_mem_ownership.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body15.i.i

do.end12.i.i:                                     ; preds = %q6v5_xfer_mem_ownership.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.164, i32 noundef %call.i.i.i) #13
  br label %free_dma_attrs.i.i

do.body15.i.i:                                    ; preds = %q6v5_xfer_mem_ownership.exit.i.i.do.body15.i.i_crit_edge, %q6v5_xfer_mem_ownership.exit.thread.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !440
  call void @arm_heavy_mb() #10
  %42 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %phys.i.i, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #10
  %45 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %44) #10, !srcloc !439
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !441
  call void @arm_heavy_mb() #10
  %47 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr22.i.i = getelementptr i8, ptr %48, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.i, i32 16777216) #10, !srcloc !439
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %add.i78.i.i = add i32 %49, 100
  %50 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr23.i.i.i = getelementptr i8, ptr %51, i32 12
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i.i) #10, !srcloc !442
  %53 = call i32 @llvm.bswap.i32(i32 %52) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !443
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp24.i.i.i = icmp slt i32 %53, 0
  br i1 %cmp24.i.i.i, label %do.body15.i.i.q6v5_rmb_mba_wait.exit.i.i_crit_edge, label %do.body15.i.i.if.end.i79.i.i_crit_edge

do.body15.i.i.if.end.i79.i.i_crit_edge:           ; preds = %do.body15.i.i
  br label %if.end.i79.i.i

do.body15.i.i.q6v5_rmb_mba_wait.exit.i.i_crit_edge: ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_rmb_mba_wait.exit.i.i

if.end.i79.i.i:                                   ; preds = %if.end13.i.i.i.if.end.i79.i.i_crit_edge, %do.body15.i.i.if.end.i79.i.i_crit_edge
  %54 = phi i32 [ %59, %if.end13.i.i.i.if.end.i79.i.i_crit_edge ], [ %53, %do.body15.i.i.if.end.i79.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %cmp7.i.i.i = icmp eq i32 %54, 3
  br i1 %cmp7.i.i.i, label %if.end.i79.i.i.if.end36.i.i_crit_edge, label %if.end10.i.i.i

if.end.i79.i.i.if.end36.i.i_crit_edge:            ; preds = %if.end.i79.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i.i

if.end10.i.i.i:                                   ; preds = %if.end.i79.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i78.i.i, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp11.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp11.i.i.i, label %if.end10.i.i.i.do.end27.i.i_crit_edge, label %if.end13.i.i.i

if.end10.i.i.i.do.end27.i.i_crit_edge:            ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27.i.i

if.end13.i.i.i:                                   ; preds = %if.end10.i.i.i
  call void @msleep(i32 noundef 1) #10
  %56 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 12
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !442
  %59 = call i32 @llvm.bswap.i32(i32 %58) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !443
  %cmp.i80.i.i = icmp slt i32 %59, 0
  br i1 %cmp.i80.i.i, label %if.end13.i.i.i.q6v5_rmb_mba_wait.exit.i.i_crit_edge, label %if.end13.i.i.i.if.end.i79.i.i_crit_edge

if.end13.i.i.i.if.end.i79.i.i_crit_edge:          ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i79.i.i

if.end13.i.i.i.q6v5_rmb_mba_wait.exit.i.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_rmb_mba_wait.exit.i.i

q6v5_rmb_mba_wait.exit.i.i:                       ; preds = %if.end13.i.i.i.q6v5_rmb_mba_wait.exit.i.i_crit_edge, %do.body15.i.i.q6v5_rmb_mba_wait.exit.i.i_crit_edge
  %retval.0.i81.i.i = phi i32 [ %53, %do.body15.i.i.q6v5_rmb_mba_wait.exit.i.i_crit_edge ], [ %59, %if.end13.i.i.i.q6v5_rmb_mba_wait.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %retval.0.i81.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i81.i.i, -110
  br i1 %cmp.i.i, label %q6v5_rmb_mba_wait.exit.i.i.do.end27.i.i_crit_edge, label %do.end33.i.i

q6v5_rmb_mba_wait.exit.i.i.do.end27.i.i_crit_edge: ; preds = %q6v5_rmb_mba_wait.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27.i.i

do.end27.i.i:                                     ; preds = %q6v5_rmb_mba_wait.exit.i.i.do.end27.i.i_crit_edge, %if.end10.i.i.i.do.end27.i.i_crit_edge
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.167) #13
  br label %if.end36.i.i

do.end33.i.i:                                     ; preds = %q6v5_rmb_mba_wait.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.170, i32 noundef %retval.0.i81.i.i) #13
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %do.end33.i.i, %do.end27.i.i, %if.end.i79.i.i.if.end36.i.i_crit_edge
  %retval.0.i8198.i.i = phi i32 [ %retval.0.i81.i.i, %do.end33.i.i ], [ -110, %do.end27.i.i ], [ 3, %if.end.i79.i.i.if.end36.i.i_crit_edge ]
  %64 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %phys.i.i, align 4
  %66 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %next.i82.i.i) #10
  %68 = getelementptr inbounds %struct.qcom_scm_vmperm, ptr %next.i82.i.i, i32 0, i32 1
  %69 = getelementptr inbounds i8, ptr %next.i82.i.i, i32 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 8)
  store i64 -1, ptr %69, align 4
  %71 = ptrtoint ptr %need_mem_protection.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %need_mem_protection.i.i.i, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i84.i.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i84.i.i, label %if.end36.i.i.q6v5_xfer_mem_ownership.exit93.thread.i.i_crit_edge, label %if.end.i86.i.i

if.end36.i.i.q6v5_xfer_mem_ownership.exit93.thread.i.i_crit_edge: ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit93.thread.i.i

if.end.i86.i.i:                                   ; preds = %if.end36.i.i
  %73 = ptrtoint ptr %mdata_perm.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mdata_perm.i.i, align 4
  %75 = and i32 %74, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %75)
  %76 = icmp eq i32 %75, 8
  br i1 %76, label %if.end.i86.i.i.q6v5_xfer_mem_ownership.exit93.thread.i.i_crit_edge, label %q6v5_xfer_mem_ownership.exit93.i.i

if.end.i86.i.i.q6v5_xfer_mem_ownership.exit93.thread.i.i_crit_edge: ; preds = %if.end.i86.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit93.thread.i.i

q6v5_xfer_mem_ownership.exit93.thread.i.i:        ; preds = %if.end.i86.i.i.q6v5_xfer_mem_ownership.exit93.thread.i.i_crit_edge, %if.end36.i.i.q6v5_xfer_mem_ownership.exit93.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i82.i.i) #10
  br label %free_dma_attrs.i.i

q6v5_xfer_mem_ownership.exit93.i.i:               ; preds = %if.end.i86.i.i
  %77 = ptrtoint ptr %next.i82.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %next.i82.i.i, align 4
  %78 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 7, ptr %68, align 4
  %add.i89.i.i = add i32 %67, 4095
  %and30.i90.i.i = and i32 %add.i89.i.i, -4096
  %call.i91.i.i = call i32 @qcom_scm_assign_mem(i32 noundef %65, i32 noundef %and30.i90.i.i, ptr noundef nonnull %mdata_perm.i.i, ptr noundef nonnull %next.i82.i.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i82.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i.i)
  %tobool38.not.i.i = icmp eq i32 %call.i91.i.i, 0
  br i1 %tobool38.not.i.i, label %q6v5_xfer_mem_ownership.exit93.i.i.free_dma_attrs.i.i_crit_edge, label %do.end42.i.i

q6v5_xfer_mem_ownership.exit93.i.i.free_dma_attrs.i.i_crit_edge: ; preds = %q6v5_xfer_mem_ownership.exit93.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dma_attrs.i.i

do.end42.i.i:                                     ; preds = %q6v5_xfer_mem_ownership.exit93.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %80, ptr noundef nonnull @.str.173) #13
  br label %free_dma_attrs.i.i

free_dma_attrs.i.i:                               ; preds = %do.end42.i.i, %q6v5_xfer_mem_ownership.exit93.i.i.free_dma_attrs.i.i_crit_edge, %q6v5_xfer_mem_ownership.exit93.thread.i.i, %do.end12.i.i
  %ret.0.i.i = phi i32 [ -11, %do.end12.i.i ], [ %retval.0.i8198.i.i, %do.end42.i.i ], [ %retval.0.i8198.i.i, %q6v5_xfer_mem_ownership.exit93.i.i.free_dma_attrs.i.i_crit_edge ], [ %retval.0.i8198.i.i, %q6v5_xfer_mem_ownership.exit93.thread.i.i ]
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %83 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size.i.i, align 4
  %85 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %phys.i.i, align 4
  call void @dma_free_attrs(ptr noundef %82, i32 noundef %84, ptr noundef nonnull %call3.i.i, i32 noundef %86, i32 noundef 64) #10
  call void @kfree(ptr noundef %call.i.i) #10
  %87 = call i32 @llvm.smin.i32(i32 %ret.0.i.i, i32 0) #10
  br label %q6v5_mpss_init_image.exit.i

q6v5_mpss_init_image.exit.i:                      ; preds = %free_dma_attrs.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %20, %if.then.i.i ], [ %87, %free_dma_attrs.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdata_perm.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool14.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %q6v5_mpss_init_image.exit.i.release_firmware.i_crit_edge

q6v5_mpss_init_image.exit.i.release_firmware.i_crit_edge: ; preds = %q6v5_mpss_init_image.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_firmware.i

if.end16.i:                                       ; preds = %q6v5_mpss_init_image.exit.i
  %88 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data.i, align 4
  %add.ptr17.i = getelementptr %struct.elf32_hdr, ptr %91, i32 1
  %e_phnum.i = getelementptr inbounds %struct.elf32_hdr, ptr %91, i32 0, i32 10
  %92 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %e_phnum.i, align 4
  %conv.i = zext i16 %93 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %cmp18508.not.i = icmp eq i16 %93, 0
  br i1 %cmp18508.not.i, label %if.end16.i.for.end.i_crit_edge, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  br label %for.body.i

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end16.i.for.body.i_crit_edge
  %min_addr.0512.i = phi i32 [ %min_addr.2.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %if.end16.i.for.body.i_crit_edge ]
  %max_addr.0511.i = phi i32 [ %max_addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end16.i.for.body.i_crit_edge ]
  %i.0510.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end16.i.for.body.i_crit_edge ]
  %relocate.0.off0509.i = phi i1 [ %relocate.2.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %if.end16.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.elf32_phdr, ptr %add.ptr17.i, i32 %i.0510.i
  %94 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp.not.i.i = icmp eq i32 %95, 1
  br i1 %cmp.not.i.i, label %if.end.i401.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i401.i:                                    ; preds = %for.body.i
  %p_flags.i.i = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx.i, i32 0, i32 6
  %96 = ptrtoint ptr %p_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %p_flags.i.i, align 4
  %and.i.i = and i32 %97, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 33554432
  br i1 %cmp1.i.i, label %if.end.i401.i.for.inc.i_crit_edge, label %q6v5_phdr_valid.exit.i

if.end.i401.i.for.inc.i_crit_edge:                ; preds = %if.end.i401.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

q6v5_phdr_valid.exit.i:                           ; preds = %if.end.i401.i
  %p_memsz.i.i = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx.i, i32 0, i32 5
  %98 = ptrtoint ptr %p_memsz.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %p_memsz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i402.not.i = icmp eq i32 %99, 0
  br i1 %tobool.not.i402.not.i, label %q6v5_phdr_valid.exit.i.for.inc.i_crit_edge, label %if.end22.i

q6v5_phdr_valid.exit.i.for.inc.i_crit_edge:       ; preds = %q6v5_phdr_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end22.i:                                       ; preds = %q6v5_phdr_valid.exit.i
  %and.i = and i32 %97, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp ne i32 %and.i, 0
  %spec.select.i = select i1 %tobool23.not.i, i1 true, i1 %relocate.0.off0509.i
  %p_paddr.i = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx.i, i32 0, i32 3
  %100 = ptrtoint ptr %p_paddr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %p_paddr.i, align 4
  %102 = call i32 @llvm.umin.i32(i32 %101, i32 %min_addr.0512.i) #10
  %add.i = add i32 %101, %99
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %max_addr.0511.i)
  %cmp32.i = icmp ugt i32 %add.i, %max_addr.0511.i
  br i1 %cmp32.i, label %if.then34.i, label %if.end22.i.for.inc.i_crit_edge

if.end22.i.for.inc.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then34.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %add38.i = add i32 %add.i, 4095
  %and39.i = and i32 %add38.i, -4096
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then34.i, %if.end22.i.for.inc.i_crit_edge, %q6v5_phdr_valid.exit.i.for.inc.i_crit_edge, %if.end.i401.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %relocate.2.off0.i = phi i1 [ %spec.select.i, %if.then34.i ], [ %spec.select.i, %if.end22.i.for.inc.i_crit_edge ], [ %relocate.0.off0509.i, %q6v5_phdr_valid.exit.i.for.inc.i_crit_edge ], [ %relocate.0.off0509.i, %for.body.i.for.inc.i_crit_edge ], [ %relocate.0.off0509.i, %if.end.i401.i.for.inc.i_crit_edge ]
  %max_addr.1.i = phi i32 [ %and39.i, %if.then34.i ], [ %max_addr.0511.i, %if.end22.i.for.inc.i_crit_edge ], [ %max_addr.0511.i, %q6v5_phdr_valid.exit.i.for.inc.i_crit_edge ], [ %max_addr.0511.i, %for.body.i.for.inc.i_crit_edge ], [ %max_addr.0511.i, %if.end.i401.i.for.inc.i_crit_edge ]
  %min_addr.2.i = phi i32 [ %102, %if.then34.i ], [ %102, %if.end22.i.for.inc.i_crit_edge ], [ %min_addr.0512.i, %q6v5_phdr_valid.exit.i.for.inc.i_crit_edge ], [ %min_addr.0512.i, %for.body.i.for.inc.i_crit_edge ], [ %min_addr.0512.i, %if.end.i401.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0510.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end16.i.for.end.i_crit_edge
  %relocate.0.off0.lcssa.i = phi i1 [ false, %if.end16.i.for.end.i_crit_edge ], [ %relocate.2.off0.i, %for.inc.i.for.end.i_crit_edge ]
  %min_addr.0.lcssa.i = phi i32 [ -1, %if.end16.i.for.end.i_crit_edge ], [ %min_addr.2.i, %for.inc.i.for.end.i_crit_edge ]
  %mpss_perm.i = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 55
  %mpss_phys.i = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 41
  %103 = ptrtoint ptr %mpss_phys.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mpss_phys.i, align 4
  %mpss_size.i = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 43
  %105 = ptrtoint ptr %mpss_size.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mpss_size.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %next.i.i) #10
  %107 = getelementptr inbounds %struct.qcom_scm_vmperm, ptr %next.i.i, i32 0, i32 1
  %need_mem_protection.i.i = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 48
  %108 = getelementptr inbounds i8, ptr %next.i.i, i32 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 8)
  store i64 -1, ptr %108, align 4
  %110 = ptrtoint ptr %need_mem_protection.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %need_mem_protection.i.i, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i404.i = icmp eq i8 %111, 0
  br i1 %tobool.not.i404.i, label %q6v5_xfer_mem_ownership.exit.thread.i, label %if.end.i406.i

q6v5_xfer_mem_ownership.exit.thread.i:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i.i) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %next.i409.i) #10
  br label %q6v5_xfer_mem_ownership.exit420.thread.i

if.end.i406.i:                                    ; preds = %for.end.i
  %112 = ptrtoint ptr %mpss_perm.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mpss_perm.i, align 4
  %114 = and i32 %113, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %114)
  %115 = icmp eq i32 %114, 8
  br i1 %115, label %if.end.i406.i.q6v5_xfer_mem_ownership.exit.i_crit_edge, label %if.end17.i.i

if.end.i406.i.q6v5_xfer_mem_ownership.exit.i_crit_edge: ; preds = %if.end.i406.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit.i

if.end17.i.i:                                     ; preds = %if.end.i406.i
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 3, ptr %next.i.i, align 4
  %117 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 7, ptr %107, align 4
  %add.i.i = add i32 %106, 4095
  %and30.i.i = and i32 %add.i.i, -4096
  %call.i407.i = call i32 @qcom_scm_assign_mem(i32 noundef %104, i32 noundef %and30.i.i, ptr noundef %mpss_perm.i, ptr noundef nonnull %next.i.i, i32 noundef 1) #10
  br label %q6v5_xfer_mem_ownership.exit.i

q6v5_xfer_mem_ownership.exit.i:                   ; preds = %if.end17.i.i, %if.end.i406.i.q6v5_xfer_mem_ownership.exit.i_crit_edge
  %118 = ptrtoint ptr %need_mem_protection.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %.pr.i = load i8, ptr %need_mem_protection.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i.i) #10
  %119 = ptrtoint ptr %mpss_phys.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mpss_phys.i, align 4
  %121 = ptrtoint ptr %mpss_size.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %mpss_size.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %next.i409.i) #10
  %123 = getelementptr inbounds %struct.qcom_scm_vmperm, ptr %next.i409.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool.not.i411.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool.not.i411.i, label %q6v5_xfer_mem_ownership.exit.i.q6v5_xfer_mem_ownership.exit420.thread.i_crit_edge, label %if.end.i413.i

q6v5_xfer_mem_ownership.exit.i.q6v5_xfer_mem_ownership.exit420.thread.i_crit_edge: ; preds = %q6v5_xfer_mem_ownership.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit420.thread.i

if.end.i413.i:                                    ; preds = %q6v5_xfer_mem_ownership.exit.i
  %124 = ptrtoint ptr %mpss_perm.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mpss_perm.i, align 4
  %126 = and i32 %125, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 32776, i32 %126)
  %.not.i = icmp eq i32 %126, 32776
  br i1 %.not.i, label %if.end.i413.i.q6v5_xfer_mem_ownership.exit420.thread.i_crit_edge, label %q6v5_xfer_mem_ownership.exit420.i

if.end.i413.i.q6v5_xfer_mem_ownership.exit420.thread.i_crit_edge: ; preds = %if.end.i413.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit420.thread.i

q6v5_xfer_mem_ownership.exit420.thread.i:         ; preds = %if.end.i413.i.q6v5_xfer_mem_ownership.exit420.thread.i_crit_edge, %q6v5_xfer_mem_ownership.exit.i.q6v5_xfer_mem_ownership.exit420.thread.i_crit_edge, %q6v5_xfer_mem_ownership.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i409.i) #10
  br label %if.end52.i

q6v5_xfer_mem_ownership.exit420.i:                ; preds = %if.end.i413.i
  %127 = ptrtoint ptr %next.i409.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 3, ptr %next.i409.i, align 4
  %128 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 7, ptr %123, align 4
  %arrayidx24.i.i = getelementptr inbounds [2 x %struct.qcom_scm_vmperm], ptr %next.i409.i, i32 0, i32 1
  %129 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 15, ptr %arrayidx24.i.i, align 4
  %perm27.i.i = getelementptr inbounds [2 x %struct.qcom_scm_vmperm], ptr %next.i409.i, i32 0, i32 1, i32 1
  %130 = ptrtoint ptr %perm27.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 6, ptr %perm27.i.i, align 4
  %add.i416.i = add i32 %122, 4095
  %and30.i417.i = and i32 %add.i416.i, -4096
  %call.i418.i = call i32 @qcom_scm_assign_mem(i32 noundef %120, i32 noundef %and30.i417.i, ptr noundef %mpss_perm.i, ptr noundef nonnull %next.i409.i, i32 noundef 2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i409.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i418.i)
  %tobool46.not.i = icmp eq i32 %call.i418.i, 0
  br i1 %tobool46.not.i, label %q6v5_xfer_mem_ownership.exit420.i.if.end52.i_crit_edge, label %do.end50.i

q6v5_xfer_mem_ownership.exit420.i.if.end52.i_crit_edge: ; preds = %q6v5_xfer_mem_ownership.exit420.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

do.end50.i:                                       ; preds = %q6v5_xfer_mem_ownership.exit420.i
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.75, i32 noundef %call.i418.i) #13
  br label %release_firmware.i

if.end52.i:                                       ; preds = %q6v5_xfer_mem_ownership.exit420.i.if.end52.i_crit_edge, %q6v5_xfer_mem_ownership.exit420.thread.i
  br i1 %relocate.0.off0.lcssa.i, label %if.end52.i.cond.end.i_crit_edge, label %cond.false.i

if.end52.i.cond.end.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  %133 = ptrtoint ptr %mpss_phys.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %mpss_phys.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end52.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %134, %cond.false.i ], [ %min_addr.0.lcssa.i, %if.end52.i.cond.end.i_crit_edge ]
  %mpss_reloc56.i = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 42
  %135 = ptrtoint ptr %mpss_reloc56.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %cond.i, ptr %mpss_reloc56.i, align 4
  %136 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %e_phnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %137)
  %cmp60515.not.i = icmp eq i16 %137, 0
  br i1 %cmp60515.not.i, label %cond.end.i.for.end212.i_crit_edge, label %for.body62.lr.ph.i

cond.end.i.for.end212.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end212.i

for.body62.lr.ph.i:                               ; preds = %cond.end.i
  %add.ptr128.i = getelementptr i8, ptr %call2.i, i32 %call.i
  %add.ptr129.i = getelementptr i8, ptr %add.ptr128.i, i32 -3
  br label %for.body62.i

for.body62.i:                                     ; preds = %for.inc210.i.for.body62.i_crit_edge, %for.body62.lr.ph.i
  %i.1518.i = phi i32 [ 0, %for.body62.lr.ph.i ], [ %inc211.i, %for.inc210.i.for.body62.i_crit_edge ]
  %ret.0517.i = phi i32 [ 0, %for.body62.lr.ph.i ], [ %ret.1.i, %for.inc210.i.for.body62.i_crit_edge ]
  %size.0516.i = phi i32 [ 0, %for.body62.lr.ph.i ], [ %size.1.i, %for.inc210.i.for.body62.i_crit_edge ]
  %arrayidx63.i = getelementptr %struct.elf32_phdr, ptr %add.ptr17.i, i32 %i.1518.i
  %138 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %139)
  %cmp.not.i421.i = icmp eq i32 %139, 1
  br i1 %cmp.not.i421.i, label %if.end.i425.i, label %for.body62.i.for.inc210.i_crit_edge

for.body62.i.for.inc210.i_crit_edge:              ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc210.i

if.end.i425.i:                                    ; preds = %for.body62.i
  %p_flags.i422.i = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx63.i, i32 0, i32 6
  %140 = ptrtoint ptr %p_flags.i422.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %p_flags.i422.i, align 4
  %and.i423.i = and i32 %141, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and.i423.i)
  %cmp1.i424.i = icmp eq i32 %and.i423.i, 33554432
  br i1 %cmp1.i424.i, label %if.end.i425.i.for.inc210.i_crit_edge, label %q6v5_phdr_valid.exit430.i

if.end.i425.i.for.inc210.i_crit_edge:             ; preds = %if.end.i425.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc210.i

q6v5_phdr_valid.exit430.i:                        ; preds = %if.end.i425.i
  %p_memsz.i426.i = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx63.i, i32 0, i32 5
  %142 = ptrtoint ptr %p_memsz.i426.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %p_memsz.i426.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.not.i427.not.i = icmp eq i32 %143, 0
  br i1 %tobool.not.i427.not.i, label %q6v5_phdr_valid.exit430.i.for.inc210.i_crit_edge, label %if.end66.i

q6v5_phdr_valid.exit430.i.for.inc210.i_crit_edge: ; preds = %q6v5_phdr_valid.exit430.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc210.i

if.end66.i:                                       ; preds = %q6v5_phdr_valid.exit430.i
  %p_paddr67.i = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx63.i, i32 0, i32 3
  %144 = ptrtoint ptr %p_paddr67.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %p_paddr67.i, align 4
  %sub.i = sub i32 %145, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp68.i = icmp slt i32 %sub.i, 0
  br i1 %cmp68.i, label %if.end66.i.do.end78.i_crit_edge, label %lor.lhs.false.i

if.end66.i.do.end78.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end78.i

lor.lhs.false.i:                                  ; preds = %if.end66.i
  %add71.i = add i32 %sub.i, %143
  %146 = ptrtoint ptr %mpss_size.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %mpss_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add71.i, i32 %147)
  %cmp73.i = icmp ugt i32 %add71.i, %147
  br i1 %cmp73.i, label %lor.lhs.false.i.do.end78.i_crit_edge, label %if.end80.i

lor.lhs.false.i.do.end78.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end78.i

do.end78.i:                                       ; preds = %lor.lhs.false.i.do.end78.i_crit_edge, %if.end66.i.do.end78.i_crit_edge
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.134) #13
  br label %release_firmware.i

if.end80.i:                                       ; preds = %lor.lhs.false.i
  %p_filesz.i = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx63.i, i32 0, i32 4
  %150 = ptrtoint ptr %p_filesz.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %p_filesz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %143)
  %cmp82.i = icmp ugt i32 %151, %143
  br i1 %cmp82.i, label %do.end87.i, label %if.end89.i

do.end87.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.137, i32 noundef %i.1518.i) #13
  br label %release_firmware.i

if.end89.i:                                       ; preds = %if.end80.i
  %154 = ptrtoint ptr %mpss_phys.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %mpss_phys.i, align 4
  %add91.i = add i32 %155, %sub.i
  %call93.i = call ptr @memremap(i32 noundef %add91.i, i32 noundef %143, i32 noundef 4) #10
  %tobool94.not.i = icmp eq ptr %call93.i, null
  br i1 %tobool94.not.i, label %do.end98.i, label %if.end102.i

do.end98.i:                                       ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #12
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %1, align 4
  %158 = ptrtoint ptr %p_memsz.i426.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %p_memsz.i426.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.140, ptr noundef %mpss_phys.i, i32 noundef %sub.i, i32 noundef %159) #13
  br label %release_firmware.i

if.end102.i:                                      ; preds = %if.end89.i
  %160 = ptrtoint ptr %p_filesz.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %p_filesz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool104.not.i = icmp eq i32 %161, 0
  br i1 %tobool104.not.i, label %if.end102.i.if.end152.i_crit_edge, label %land.lhs.true.i

if.end102.i.if.end152.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i

land.lhs.true.i:                                  ; preds = %if.end102.i
  %p_offset.i = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx63.i, i32 0, i32 1
  %162 = ptrtoint ptr %p_offset.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %p_offset.i, align 4
  %164 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %fw.i, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %165, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %167)
  %cmp106.i = icmp ult i32 %163, %167
  br i1 %cmp106.i, label %if.then108.i, label %if.then127.i

if.then108.i:                                     ; preds = %land.lhs.true.i
  %add111.i = add i32 %163, %161
  call void @__sanitizer_cov_trace_cmp4(i32 %add111.i, i32 %167)
  %cmp113.i = icmp ugt i32 %add111.i, %167
  br i1 %cmp113.i, label %do.end118.i, label %if.end120.i

do.end118.i:                                      ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #12
  %168 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.143, i32 noundef %i.1518.i, ptr noundef nonnull %call2.i) #13
  call void @memunmap(ptr noundef nonnull %call93.i) #10
  br label %release_firmware.i

if.end120.i:                                      ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #12
  %data121.i = getelementptr inbounds %struct.firmware, ptr %165, i32 0, i32 1
  %170 = ptrtoint ptr %data121.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %data121.i, align 4
  %add.ptr123.i = getelementptr i8, ptr %171, i32 %163
  %172 = call ptr @memcpy(ptr %call93.i, ptr %add.ptr123.i, i32 %161)
  br label %if.end152.i

if.then127.i:                                     ; preds = %land.lhs.true.i
  %call130.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr129.i, ptr noundef nonnull @.str.145, i32 noundef %i.1518.i) #10
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %1, align 4
  %175 = ptrtoint ptr %p_filesz.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %p_filesz.i, align 4
  %call133.i = call i32 @request_firmware_into_buf(ptr noundef nonnull %seg_fw.i, ptr noundef nonnull %call2.i, ptr noundef %174, ptr noundef nonnull %call93.i, i32 noundef %176) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i)
  %tobool134.not.i = icmp eq i32 %call133.i, 0
  br i1 %tobool134.not.i, label %if.end140.i, label %do.end138.i

do.end138.i:                                      ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #12
  %177 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.147, ptr noundef nonnull %call2.i) #13
  call void @memunmap(ptr noundef nonnull %call93.i) #10
  br label %release_firmware.i

if.end140.i:                                      ; preds = %if.then127.i
  %179 = ptrtoint ptr %seg_fw.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %seg_fw.i, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %180, align 4
  %183 = ptrtoint ptr %p_filesz.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %p_filesz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %182, i32 %184)
  %cmp143.not.i = icmp eq i32 %182, %184
  br i1 %cmp143.not.i, label %if.end150.i, label %do.end148.i

do.end148.i:                                      ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #12
  %185 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %186, ptr noundef nonnull @.str.143, i32 noundef %i.1518.i, ptr noundef nonnull %call2.i) #13
  %187 = ptrtoint ptr %seg_fw.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %seg_fw.i, align 4
  call void @release_firmware(ptr noundef %188) #10
  call void @memunmap(ptr noundef nonnull %call93.i) #10
  br label %release_firmware.i

if.end150.i:                                      ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @release_firmware(ptr noundef %180) #10
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.end150.i, %if.end120.i, %if.end102.i.if.end152.i_crit_edge
  %189 = ptrtoint ptr %p_memsz.i426.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %p_memsz.i426.i, align 4
  %191 = ptrtoint ptr %p_filesz.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %p_filesz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %192)
  %cmp155.i = icmp ugt i32 %190, %192
  br i1 %cmp155.i, label %if.then157.i, label %if.end152.i.if.end163.i_crit_edge

if.end152.i.if.end163.i_crit_edge:                ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163.i

if.then157.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr159.i = getelementptr i8, ptr %call93.i, i32 %192
  %sub162.i = sub i32 %190, %192
  %193 = call ptr @memset(ptr %add.ptr159.i, i32 0, i32 %sub162.i)
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.then157.i, %if.end152.i.if.end163.i_crit_edge
  call void @memunmap(ptr noundef nonnull %call93.i) #10
  %194 = ptrtoint ptr %p_memsz.i426.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %p_memsz.i426.i, align 4
  %add165.i = add i32 %195, %size.0516.i
  %196 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr167.i = getelementptr i8, ptr %197, i32 24
  %198 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr167.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !444
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool170.not.i = icmp eq i32 %198, 0
  br i1 %tobool170.not.i, label %if.then171.i, label %if.end163.i.do.body190.i_crit_edge

if.end163.i.do.body190.i_crit_edge:               ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body190.i

if.then171.i:                                     ; preds = %if.end163.i
  br i1 %relocate.0.off0.lcssa.i, label %cond.true174.i, label %if.then171.i.cond.end177.i_crit_edge

if.then171.i.cond.end177.i_crit_edge:             ; preds = %if.then171.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end177.i

cond.true174.i:                                   ; preds = %if.then171.i
  call void @__sanitizer_cov_trace_pc() #12
  %199 = ptrtoint ptr %mpss_phys.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %mpss_phys.i, align 4
  br label %cond.end177.i

cond.end177.i:                                    ; preds = %cond.true174.i, %if.then171.i.cond.end177.i_crit_edge
  %cond178.i = phi i32 [ %200, %cond.true174.i ], [ %min_addr.0.lcssa.i, %if.then171.i.cond.end177.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !445
  call void @arm_heavy_mb() #10
  %201 = call i32 @llvm.bswap.i32(i32 %cond178.i) #10
  %202 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr183.i = getelementptr i8, ptr %203, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183.i, i32 %201) #10, !srcloc !439
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !446
  call void @arm_heavy_mb() #10
  %204 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr188.i = getelementptr i8, ptr %205, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188.i, i32 33554432) #10, !srcloc !439
  br label %do.body190.i

do.body190.i:                                     ; preds = %cond.end177.i, %if.end163.i.do.body190.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !447
  call void @arm_heavy_mb() #10
  %206 = call i32 @llvm.bswap.i32(i32 %add165.i) #10
  %207 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr194.i = getelementptr i8, ptr %208, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194.i, i32 %206) #10, !srcloc !439
  %209 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr198.i = getelementptr i8, ptr %210, i32 12
  %211 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr198.i) #10, !srcloc !442
  %212 = call i32 @llvm.bswap.i32(i32 %211) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp202.i = icmp slt i32 %212, 0
  br i1 %cmp202.i, label %do.end207.i, label %do.body190.i.for.inc210.i_crit_edge

do.body190.i.for.inc210.i_crit_edge:              ; preds = %do.body190.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc210.i

do.end207.i:                                      ; preds = %do.body190.i
  call void @__sanitizer_cov_trace_pc() #12
  %213 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %214, ptr noundef nonnull @.str.152, i32 noundef %212) #13
  br label %release_firmware.i

for.inc210.i:                                     ; preds = %do.body190.i.for.inc210.i_crit_edge, %q6v5_phdr_valid.exit430.i.for.inc210.i_crit_edge, %if.end.i425.i.for.inc210.i_crit_edge, %for.body62.i.for.inc210.i_crit_edge
  %size.1.i = phi i32 [ %add165.i, %do.body190.i.for.inc210.i_crit_edge ], [ %size.0516.i, %q6v5_phdr_valid.exit430.i.for.inc210.i_crit_edge ], [ %size.0516.i, %for.body62.i.for.inc210.i_crit_edge ], [ %size.0516.i, %if.end.i425.i.for.inc210.i_crit_edge ]
  %ret.1.i = phi i32 [ %212, %do.body190.i.for.inc210.i_crit_edge ], [ %ret.0517.i, %q6v5_phdr_valid.exit430.i.for.inc210.i_crit_edge ], [ %ret.0517.i, %for.body62.i.for.inc210.i_crit_edge ], [ %ret.0517.i, %if.end.i425.i.for.inc210.i_crit_edge ]
  %inc211.i = add nuw nsw i32 %i.1518.i, 1
  %215 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %e_phnum.i, align 4
  %conv59.i = zext i16 %216 to i32
  %cmp60.i = icmp ult i32 %inc211.i, %conv59.i
  br i1 %cmp60.i, label %for.inc210.i.for.body62.i_crit_edge, label %for.inc210.i.for.end212.i_crit_edge

for.inc210.i.for.end212.i_crit_edge:              ; preds = %for.inc210.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end212.i

for.inc210.i.for.body62.i_crit_edge:              ; preds = %for.inc210.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body62.i

for.end212.i:                                     ; preds = %for.inc210.i.for.end212.i_crit_edge, %cond.end.i.for.end212.i_crit_edge
  %217 = ptrtoint ptr %mpss_phys.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %mpss_phys.i, align 4
  %219 = ptrtoint ptr %mpss_size.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %mpss_size.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %next.i431.i) #10
  %221 = getelementptr inbounds i8, ptr %next.i431.i, i32 8
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_storeN_noabort(i32 %222, i32 8)
  store i64 -1, ptr %221, align 4
  %223 = ptrtoint ptr %need_mem_protection.i.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %need_mem_protection.i.i, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool.not.i433.i = icmp eq i8 %224, 0
  br i1 %tobool.not.i433.i, label %for.end212.i.q6v5_xfer_mem_ownership.exit444.thread.i_crit_edge, label %if.end.i434.i

for.end212.i.q6v5_xfer_mem_ownership.exit444.thread.i_crit_edge: ; preds = %for.end212.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit444.thread.i

if.end.i434.i:                                    ; preds = %for.end212.i
  %225 = ptrtoint ptr %mpss_perm.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %mpss_perm.i, align 4
  %227 = and i32 %226, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %227)
  %.not521.i = icmp eq i32 %227, 32768
  br i1 %.not521.i, label %if.end.i434.i.q6v5_xfer_mem_ownership.exit444.thread.i_crit_edge, label %q6v5_xfer_mem_ownership.exit444.i

if.end.i434.i.q6v5_xfer_mem_ownership.exit444.thread.i_crit_edge: ; preds = %if.end.i434.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit444.thread.i

q6v5_xfer_mem_ownership.exit444.thread.i:         ; preds = %if.end.i434.i.q6v5_xfer_mem_ownership.exit444.thread.i_crit_edge, %for.end212.i.q6v5_xfer_mem_ownership.exit444.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i431.i) #10
  br label %if.end223.i

q6v5_xfer_mem_ownership.exit444.i:                ; preds = %if.end.i434.i
  %228 = ptrtoint ptr %next.i431.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 15, ptr %next.i431.i, align 4
  %perm27.i439.i = getelementptr inbounds [2 x %struct.qcom_scm_vmperm], ptr %next.i431.i, i32 0, i32 0, i32 1
  %229 = ptrtoint ptr %perm27.i439.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 6, ptr %perm27.i439.i, align 4
  %add.i440.i = add i32 %220, 4095
  %and30.i441.i = and i32 %add.i440.i, -4096
  %call.i442.i = call i32 @qcom_scm_assign_mem(i32 noundef %218, i32 noundef %and30.i441.i, ptr noundef %mpss_perm.i, ptr noundef nonnull %next.i431.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i431.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i442.i)
  %tobool217.not.i = icmp eq i32 %call.i442.i, 0
  br i1 %tobool217.not.i, label %q6v5_xfer_mem_ownership.exit444.i.if.end223.i_crit_edge, label %do.end221.i

q6v5_xfer_mem_ownership.exit444.i.if.end223.i_crit_edge: ; preds = %q6v5_xfer_mem_ownership.exit444.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end223.i

do.end221.i:                                      ; preds = %q6v5_xfer_mem_ownership.exit444.i
  call void @__sanitizer_cov_trace_pc() #12
  %230 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %231, ptr noundef nonnull @.str.75, i32 noundef %call.i442.i) #13
  br label %release_firmware.i

if.end223.i:                                      ; preds = %q6v5_xfer_mem_ownership.exit444.i.if.end223.i_crit_edge, %q6v5_xfer_mem_ownership.exit444.thread.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %232 = load volatile i32, ptr @jiffies, align 128
  %add.i445.i = add i32 %232, 1000
  %233 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %234, i32 12
  %235 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i) #10, !srcloc !442
  %236 = call i32 @llvm.bswap.i32(i32 %235) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !443
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %cmp24.i.i = icmp slt i32 %236, 0
  br i1 %cmp24.i.i, label %if.end223.i.q6v5_rmb_mba_wait.exit.i_crit_edge, label %if.end223.i.if.end.i447.i_crit_edge

if.end223.i.if.end.i447.i_crit_edge:              ; preds = %if.end223.i
  br label %if.end.i447.i

if.end223.i.q6v5_rmb_mba_wait.exit.i_crit_edge:   ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_rmb_mba_wait.exit.i

if.end.i447.i:                                    ; preds = %if.end13.i.i.if.end.i447.i_crit_edge, %if.end223.i.if.end.i447.i_crit_edge
  %237 = phi i32 [ %242, %if.end13.i.i.if.end.i447.i_crit_edge ], [ %236, %if.end223.i.if.end.i447.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %237)
  %cmp7.i.i = icmp eq i32 %237, 4
  br i1 %cmp7.i.i, label %if.end.i447.i.if.end241.i_crit_edge, label %if.end10.i.i

if.end.i447.i.if.end241.i_crit_edge:              ; preds = %if.end.i447.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end241.i

if.end10.i.i:                                     ; preds = %if.end.i447.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %238 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i445.i, %238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp11.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp11.i.i, label %if.end10.i.i.do.end230.i_crit_edge, label %if.end13.i.i

if.end10.i.i.do.end230.i_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end230.i

if.end13.i.i:                                     ; preds = %if.end10.i.i
  call void @msleep(i32 noundef 1) #10
  %239 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr.i448.i = getelementptr i8, ptr %240, i32 12
  %241 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i448.i) #10, !srcloc !442
  %242 = call i32 @llvm.bswap.i32(i32 %241) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !443
  %cmp.i449.i = icmp slt i32 %242, 0
  br i1 %cmp.i449.i, label %if.end13.i.i.q6v5_rmb_mba_wait.exit.i_crit_edge, label %if.end13.i.i.if.end.i447.i_crit_edge

if.end13.i.i.if.end.i447.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i447.i

if.end13.i.i.q6v5_rmb_mba_wait.exit.i_crit_edge:  ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_rmb_mba_wait.exit.i

q6v5_rmb_mba_wait.exit.i:                         ; preds = %if.end13.i.i.q6v5_rmb_mba_wait.exit.i_crit_edge, %if.end223.i.q6v5_rmb_mba_wait.exit.i_crit_edge
  %retval.0.i450.i = phi i32 [ %236, %if.end223.i.q6v5_rmb_mba_wait.exit.i_crit_edge ], [ %242, %if.end13.i.i.q6v5_rmb_mba_wait.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %retval.0.i450.i)
  %cmp225.i = icmp eq i32 %retval.0.i450.i, -110
  br i1 %cmp225.i, label %q6v5_rmb_mba_wait.exit.i.do.end230.i_crit_edge, label %do.end238.i

q6v5_rmb_mba_wait.exit.i.do.end230.i_crit_edge:   ; preds = %q6v5_rmb_mba_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end230.i

do.end230.i:                                      ; preds = %q6v5_rmb_mba_wait.exit.i.do.end230.i_crit_edge, %if.end10.i.i.do.end230.i_crit_edge
  %243 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %244, ptr noundef nonnull @.str.157) #13
  br label %if.end241.i

do.end238.i:                                      ; preds = %q6v5_rmb_mba_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %245 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %246, ptr noundef nonnull @.str.152, i32 noundef %retval.0.i450.i) #13
  br label %if.end241.i

if.end241.i:                                      ; preds = %do.end238.i, %do.end230.i, %if.end.i447.i.if.end241.i_crit_edge
  %retval.0.i450462.i = phi i32 [ %retval.0.i450.i, %do.end238.i ], [ -110, %do.end230.i ], [ 4, %if.end.i447.i.if.end241.i_crit_edge ]
  %247 = ptrtoint ptr %mpss_phys.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %mpss_phys.i, align 4
  %249 = ptrtoint ptr %mpss_size.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %mpss_size.i, align 4
  %call244.i = call i32 @qcom_pil_info_store(ptr noundef nonnull @.str.35, i32 noundef %248, i32 noundef %250) #10
  br label %release_firmware.i

release_firmware.i:                               ; preds = %if.end241.i, %do.end221.i, %do.end207.i, %do.end148.i, %do.end138.i, %do.end118.i, %do.end98.i, %do.end87.i, %do.end78.i, %do.end50.i, %q6v5_mpss_init_image.exit.i.release_firmware.i_crit_edge, %q6v5_mpss_init_image.exit.thread.i
  %ret.2.i = phi i32 [ %retval.0.i.i, %q6v5_mpss_init_image.exit.i.release_firmware.i_crit_edge ], [ -11, %do.end50.i ], [ -22, %do.end78.i ], [ -22, %do.end87.i ], [ -22, %do.end118.i ], [ %212, %do.end207.i ], [ %call133.i, %do.end138.i ], [ -22, %do.end148.i ], [ %ret.0517.i, %do.end98.i ], [ -11, %do.end221.i ], [ %retval.0.i450462.i, %if.end241.i ], [ -12, %q6v5_mpss_init_image.exit.thread.i ]
  %251 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %252) #10
  br label %q6v5_mpss_load.exit

q6v5_mpss_load.exit.thread:                       ; preds = %if.end.i.q6v5_mpss_load.exit.thread_crit_edge, %do.end.q6v5_mpss_load.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.i.q6v5_mpss_load.exit.thread_crit_edge ], [ -22, %do.end.q6v5_mpss_load.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seg_fw.i) #10
  br label %reclaim_mpss

q6v5_mpss_load.exit:                              ; preds = %release_firmware.i, %do.end.i
  %ret.3.i = phi i32 [ %call5.i, %do.end.i ], [ %ret.2.i, %release_firmware.i ]
  call void @kfree(ptr noundef nonnull %call2.i) #10
  %253 = call i32 @llvm.smin.i32(i32 %ret.3.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seg_fw.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.3.i)
  %tobool3.not = icmp sgt i32 %ret.3.i, -1
  br i1 %tobool3.not, label %if.end5, label %q6v5_mpss_load.exit.reclaim_mpss_crit_edge

q6v5_mpss_load.exit.reclaim_mpss_crit_edge:       ; preds = %q6v5_mpss_load.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %reclaim_mpss

if.end5:                                          ; preds = %q6v5_mpss_load.exit
  %q6v5 = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 20
  %call7 = call i32 @qcom_q6v5_wait_for_start(ptr noundef %q6v5, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call7)
  %cmp = icmp eq i32 %call7, -110
  br i1 %cmp, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %254 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %255, ptr noundef nonnull @.str.43) #13
  br label %reclaim_mpss

if.end13:                                         ; preds = %if.end5
  %mba_perm = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 56
  %mba_phys = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 38
  %256 = ptrtoint ptr %mba_phys to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %mba_phys, align 4
  %mba_size = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 39
  %258 = ptrtoint ptr %mba_size to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %mba_size, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %next.i) #10
  %260 = getelementptr inbounds %struct.qcom_scm_vmperm, ptr %next.i, i32 0, i32 1
  %need_mem_protection.i = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 48
  %261 = getelementptr inbounds i8, ptr %next.i, i32 8
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_storeN_noabort(i32 %262, i32 8)
  store i64 -1, ptr %261, align 4
  %263 = ptrtoint ptr %need_mem_protection.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %need_mem_protection.i, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool.not.i41 = icmp eq i8 %264, 0
  br i1 %tobool.not.i41, label %if.end13.q6v5_xfer_mem_ownership.exit.thread_crit_edge, label %if.end.i43

if.end13.q6v5_xfer_mem_ownership.exit.thread_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit.thread

if.end.i43:                                       ; preds = %if.end13
  %265 = ptrtoint ptr %mba_perm to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %mba_perm, align 4
  %267 = and i32 %266, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %267)
  %268 = icmp eq i32 %267, 8
  br i1 %268, label %if.end.i43.q6v5_xfer_mem_ownership.exit.thread_crit_edge, label %q6v5_xfer_mem_ownership.exit

if.end.i43.q6v5_xfer_mem_ownership.exit.thread_crit_edge: ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit.thread

q6v5_xfer_mem_ownership.exit.thread:              ; preds = %if.end.i43.q6v5_xfer_mem_ownership.exit.thread_crit_edge, %if.end13.q6v5_xfer_mem_ownership.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i) #10
  br label %if.end21

q6v5_xfer_mem_ownership.exit:                     ; preds = %if.end.i43
  %269 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 3, ptr %next.i, align 4
  %270 = ptrtoint ptr %260 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 7, ptr %260, align 4
  %add.i45 = add i32 %259, 4095
  %and30.i = and i32 %add.i45, -4096
  %call.i46 = call i32 @qcom_scm_assign_mem(i32 noundef %257, i32 noundef %and30.i, ptr noundef %mba_perm, ptr noundef nonnull %next.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool15.not = icmp eq i32 %call.i46, 0
  br i1 %tobool15.not, label %q6v5_xfer_mem_ownership.exit.if.end21_crit_edge, label %do.end19

q6v5_xfer_mem_ownership.exit.if.end21_crit_edge:  ; preds = %q6v5_xfer_mem_ownership.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end19:                                         ; preds = %q6v5_xfer_mem_ownership.exit
  call void @__sanitizer_cov_trace_pc() #12
  %271 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %272, ptr noundef nonnull @.str.46) #13
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %q6v5_xfer_mem_ownership.exit.if.end21_crit_edge, %q6v5_xfer_mem_ownership.exit.thread
  %current_dump_size = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 36
  %273 = ptrtoint ptr %current_dump_size to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 0, ptr %current_dump_size, align 4
  br label %cleanup

reclaim_mpss:                                     ; preds = %do.end11, %q6v5_mpss_load.exit.reclaim_mpss_crit_edge, %q6v5_mpss_load.exit.thread
  %ret.0 = phi i32 [ %253, %q6v5_mpss_load.exit.reclaim_mpss_crit_edge ], [ -110, %do.end11 ], [ %retval.0.i.ph, %q6v5_mpss_load.exit.thread ]
  call fastcc void @q6v5_mba_reclaim(ptr noundef %1)
  call fastcc void @q6v5_dump_mba_logs(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %reclaim_mpss, %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %reclaim_mpss ], [ 0, %if.end21 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6v5_stop(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %q6v5 = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 20
  %sysmon = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %sysmon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysmon, align 4
  %call = tail call i32 @qcom_q6v5_request_stop(ptr noundef %q6v5, ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call)
  %cmp = icmp eq i32 %call, -110
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.180) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @q6v5_mba_reclaim(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_q6v5_register_dump_segments(ptr noundef %rproc, ptr nocapture noundef readnone %mba_fw) #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !437
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %hexagon_mdt_image = getelementptr inbounds %struct.q6v5, ptr %2, i32 0, i32 57
  %3 = ptrtoint ptr %hexagon_mdt_image to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hexagon_mdt_image, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %4, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %9 = ptrtoint ptr %hexagon_mdt_image to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hexagon_mdt_image, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.129, ptr noundef %10) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @rproc_coredump_set_elf_info(ptr noundef %rproc, i8 noundef zeroext 1, i16 noundef zeroext 0) #10
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr %struct.elf32_hdr, ptr %14, i32 1
  %total_dump_size = getelementptr inbounds %struct.q6v5, ptr %2, i32 0, i32 37
  %15 = ptrtoint ptr %total_dump_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %total_dump_size, align 4
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %14, i32 0, i32 10
  %16 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %e_phnum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp438.not = icmp eq i16 %17, 0
  br i1 %cmp438.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %ret.040 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ %call, %if.end.for.body_crit_edge ]
  %i.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.elf32_phdr, ptr %add.ptr, i32 %i.039
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 1
  br i1 %cmp.not.i, label %if.end.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %p_flags.i = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx, i32 0, i32 6
  %20 = ptrtoint ptr %p_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %p_flags.i, align 4
  %and.i = and i32 %21, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 33554432
  br i1 %cmp1.i, label %if.end.i.for.inc_crit_edge, label %q6v5_phdr_valid.exit

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

q6v5_phdr_valid.exit:                             ; preds = %if.end.i
  %p_memsz.i = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx, i32 0, i32 5
  %22 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p_memsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.not = icmp eq i32 %23, 0
  br i1 %tobool.not.i.not, label %q6v5_phdr_valid.exit.for.inc_crit_edge, label %if.end8

q6v5_phdr_valid.exit.for.inc_crit_edge:           ; preds = %q6v5_phdr_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end8:                                          ; preds = %q6v5_phdr_valid.exit
  %p_paddr = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx, i32 0, i32 3
  %24 = ptrtoint ptr %p_paddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %p_paddr, align 4
  %26 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %p_memsz.i, align 4
  %call9 = call i32 @rproc_coredump_add_custom_segment(ptr noundef %rproc, i32 noundef %25, i32 noundef %27, ptr noundef nonnull @qcom_q6v5_dump_segment, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %p_memsz.i, align 4
  %30 = ptrtoint ptr %total_dump_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %total_dump_size, align 4
  %add = add i32 %31, %29
  store i32 %add, ptr %total_dump_size, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %q6v5_phdr_valid.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ 0, %if.end11 ], [ %ret.040, %q6v5_phdr_valid.exit.for.inc_crit_edge ], [ %ret.040, %for.body.for.inc_crit_edge ], [ %ret.040, %if.end.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.039, 1
  %32 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %e_phnum, align 4
  %conv = zext i16 %33 to i32
  %cmp4 = icmp ult i32 %inc, %conv
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge, %if.end.for.end_crit_edge
  %ret.2 = phi i32 [ %call, %if.end.for.end_crit_edge ], [ %call9, %if.end8.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  %34 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %35) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.2, %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6v5_load(ptr nocapture noundef readonly %rproc, ptr nocapture noundef readonly %fw) #2 align 64 {
entry:
  %dp_fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw, align 4
  %mba_size = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %mba_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mba_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %3)
  %cmp2 = icmp ugt i32 %3, 1048576
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.183) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mba_phys = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 38
  %8 = ptrtoint ptr %mba_phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mba_phys, align 4
  %call = tail call ptr @memremap(i32 noundef %9, i32 noundef %5, i32 noundef 4) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %mba_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mba_size, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.186, ptr noundef %mba_phys, i32 noundef %13) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw, align 4
  %18 = call ptr @memcpy(ptr %call, ptr %15, i32 %17)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dp_fw.i) #10
  %19 = ptrtoint ptr %dp_fw.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %dp_fw.i, align 4, !annotation !437
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @request_firmware_direct(ptr noundef nonnull %dp_fw.i, ptr noundef nonnull @.str.188, ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.q6v5_debug_policy_load.exit_crit_edge

if.end11.q6v5_debug_policy_load.exit_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_debug_policy_load.exit

if.end.i:                                         ; preds = %if.end11
  %22 = ptrtoint ptr %dp_fw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dp_fw.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add.i = add i32 %25, 1048576
  %26 = ptrtoint ptr %mba_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mba_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %27)
  %cmp.not.i = icmp ugt i32 %add.i, %27
  br i1 %cmp.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then1.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %call, i32 1048576
  %data.i = getelementptr inbounds %struct.firmware, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %30 = call ptr @memcpy(ptr %add.ptr.i, ptr %29, i32 %25)
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %23, align 4
  %dp_size.i = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 40
  %33 = ptrtoint ptr %dp_size.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %dp_size.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then1.i, %if.end.i.if.end4.i_crit_edge
  call void @release_firmware(ptr noundef %23) #10
  br label %q6v5_debug_policy_load.exit

q6v5_debug_policy_load.exit:                      ; preds = %if.end4.i, %if.end11.q6v5_debug_policy_load.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dp_fw.i) #10
  call void @memunmap(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %q6v5_debug_policy_load.exit, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %q6v5_debug_policy_load.exit ], [ -16, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @q6v5_mba_load(ptr noundef %qproc) unnamed_addr #2 align 64 {
entry:
  %next.i350 = alloca [2 x %struct.qcom_scm_vmperm], align 4
  %next.i321 = alloca [2 x %struct.qcom_scm_vmperm], align 4
  %next.i = alloca [2 x %struct.qcom_scm_vmperm], align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %q6v5 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 20
  %call = tail call i32 @qcom_q6v5_prepare(ptr noundef %q6v5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %proxy_pds = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 24
  %proxy_pd_count = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 28
  %0 = ptrtoint ptr %proxy_pd_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %proxy_pd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not.i = icmp eq i32 %1, 0
  br i1 %cmp4.not.i, label %if.end.if.end3_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %proxy_pds, i32 %i.05.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %3, i32 noundef 2147483647) #10
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i.le = getelementptr ptr, ptr %proxy_pds, i32 %i.05.i
  %6 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.le, align 4
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !449
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !450
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_put_noidle.exit.i_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_put_noidle.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit.i

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !451
  br label %pm_runtime_put_noidle.exit.i

pm_runtime_put_noidle.exit.i:                     ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_put_noidle.exit.i_crit_edge
  %9 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.le, align 4
  %call6.i = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %10, i32 noundef 0) #10
  %i.16.i = add i32 %i.05.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.16.i)
  %cmp87.i = icmp sgt i32 %i.16.i, -1
  br i1 %cmp87.i, label %pm_runtime_put_noidle.exit.i.for.body9.i_crit_edge, label %pm_runtime_put_noidle.exit.i.do.end_crit_edge

pm_runtime_put_noidle.exit.i.do.end_crit_edge:    ; preds = %pm_runtime_put_noidle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

pm_runtime_put_noidle.exit.i.for.body9.i_crit_edge: ; preds = %pm_runtime_put_noidle.exit.i
  br label %for.body9.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.if.end3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end3_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

for.body9.i:                                      ; preds = %for.body9.i.for.body9.i_crit_edge, %pm_runtime_put_noidle.exit.i.for.body9.i_crit_edge
  %i.18.i = phi i32 [ %i.1.i, %for.body9.i.for.body9.i_crit_edge ], [ %i.16.i, %pm_runtime_put_noidle.exit.i.for.body9.i_crit_edge ]
  %arrayidx10.i = getelementptr ptr, ptr %proxy_pds, i32 %i.18.i
  %11 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx10.i, align 4
  %call11.i = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %12, i32 noundef 0) #10
  %13 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx10.i, align 4
  %call.i1.i = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 5) #10
  %i.1.i = add nsw i32 %i.18.i, -1
  %cmp8.i.not = icmp eq i32 %i.18.i, 0
  br i1 %cmp8.i.not, label %for.body9.i.do.end_crit_edge, label %for.body9.i.for.body9.i_crit_edge

for.body9.i.for.body9.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9.i

for.body9.i.do.end_crit_edge:                     ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %for.body9.i.do.end_crit_edge, %pm_runtime_put_noidle.exit.i.do.end_crit_edge
  %15 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qproc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.48) #13
  br label %disable_irqs

if.end3:                                          ; preds = %for.inc.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %fallback_proxy_regs = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 31
  %fallback_proxy_reg_count = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 34
  %17 = ptrtoint ptr %fallback_proxy_reg_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fallback_proxy_reg_count, align 4
  %call5 = tail call fastcc i32 @q6v5_regulator_enable(ptr noundef %qproc, ptr noundef %fallback_proxy_regs, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qproc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.51) #13
  br label %disable_proxy_pds

if.end12:                                         ; preds = %if.end3
  %proxy_regs = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 30
  %proxy_reg_count = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 33
  %21 = ptrtoint ptr %proxy_reg_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %proxy_reg_count, align 4
  %call14 = tail call fastcc i32 @q6v5_regulator_enable(ptr noundef %qproc, ptr noundef %proxy_regs, i32 noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %23 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qproc, align 4
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.54) #13
  br label %disable_fallback_proxy_reg

if.end21:                                         ; preds = %if.end12
  %proxy_clks = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 23
  %proxy_clk_count = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 27
  %25 = ptrtoint ptr %proxy_clk_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %proxy_clk_count, align 4
  %call24 = tail call fastcc i32 @q6v5_clk_enable(ptr noundef %24, ptr noundef %proxy_clks, i32 noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qproc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.57) #13
  br label %disable_proxy_reg

if.end31:                                         ; preds = %if.end21
  %active_regs = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 29
  %active_reg_count = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 32
  %29 = ptrtoint ptr %active_reg_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %active_reg_count, align 4
  %call33 = tail call fastcc i32 @q6v5_regulator_enable(ptr noundef %qproc, ptr noundef %active_regs, i32 noundef %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  %31 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qproc, align 4
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.60) #13
  br label %disable_proxy_clk

if.end40:                                         ; preds = %if.end31
  %reset_clks = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 22
  %reset_clk_count = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 26
  %33 = ptrtoint ptr %reset_clk_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reset_clk_count, align 4
  %call43 = tail call fastcc i32 @q6v5_clk_enable(ptr noundef %32, ptr noundef %reset_clks, i32 noundef %34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end50, label %do.end48

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %qproc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.63) #13
  br label %disable_vdd

if.end50:                                         ; preds = %if.end40
  %call51 = tail call fastcc i32 @q6v5_reset_deassert(ptr noundef %qproc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  %37 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %qproc, align 4
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.66) #13
  br label %disable_reset_clks

if.end58:                                         ; preds = %if.end50
  %active_clks = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 21
  %active_clk_count = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 25
  %39 = ptrtoint ptr %active_clk_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %active_clk_count, align 4
  %call61 = tail call fastcc i32 @q6v5_clk_enable(ptr noundef %38, ptr noundef %active_clks, i32 noundef %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %qproc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.69) #13
  br label %assert_reset

if.end68:                                         ; preds = %if.end58
  %halt_map = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 4
  %43 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %halt_map, align 4
  %qaccept_axi = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 13
  %45 = ptrtoint ptr %qaccept_axi to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %qaccept_axi, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %47 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %val.i, align 4, !annotation !437
  %has_qaccept_regs.i = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 52
  %48 = ptrtoint ptr %has_qaccept_regs.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %has_qaccept_regs.i, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i, label %if.end68.if.end76_crit_edge, label %if.end.i

if.end68.if.end76_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.end.i:                                         ; preds = %if.end68
  %has_ext_cntl_regs.i = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 53
  %50 = ptrtoint ptr %has_ext_cntl_regs.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %has_ext_cntl_regs.i, align 1, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool1.not.i = icmp eq i8 %51, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end43.i_crit_edge, label %if.then2.i

if.end.i.if.end43.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.then2.i:                                       ; preds = %if.end.i
  %conn_map.i = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 5
  %52 = ptrtoint ptr %conn_map.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %conn_map.i, align 4
  %rscc_disable.i = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 17
  %54 = ptrtoint ptr %rscc_disable.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rscc_disable.i, align 4
  %call.i314 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef %55, i32 noundef 0) #10
  %56 = ptrtoint ptr %conn_map.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %conn_map.i, align 4
  %force_clk_on.i = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 16
  %58 = ptrtoint ptr %force_clk_on.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %force_clk_on.i, align 4
  %call4.i = tail call i32 @regmap_write(ptr noundef %57, i32 noundef %59, i32 noundef 1) #10
  %call5.i = tail call i64 @ktime_get() #10
  %add.i.i = add i64 %call5.i, 200000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 834) #10
  %axim1_clk_off.i = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 14
  %60 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %halt_map, align 4
  %62 = ptrtoint ptr %axim1_clk_off.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %axim1_clk_off.i, align 4
  %call15169.i = call i32 @regmap_read(ptr noundef %61, i32 noundef %63, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15169.i)
  %tobool16.not170.i = icmp eq i32 %call15169.i, 0
  br i1 %tobool16.not170.i, label %if.then2.i.lor.lhs.false.i_crit_edge, label %if.then2.i.do.end74_crit_edge

if.then2.i.do.end74_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end74

if.then2.i.lor.lhs.false.i_crit_edge:             ; preds = %if.then2.i
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then30.i.lor.lhs.false.i_crit_edge, %if.then2.i.lor.lhs.false.i_crit_edge
  %64 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool17.not.i = icmp eq i32 %65, 0
  br i1 %tobool17.not.i, label %lor.lhs.false.i.if.end43.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end43.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call21.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call21.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call21.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then30.i

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #10
  %66 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %halt_map, align 4
  %68 = ptrtoint ptr %axim1_clk_off.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %axim1_clk_off.i, align 4
  %call15.i = call i32 @regmap_read(ptr noundef %67, i32 noundef %69, ptr noundef nonnull %val.i) #10
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then30.i.lor.lhs.false.i_crit_edge, label %if.then30.i.do.end74_crit_edge

if.then30.i.do.end74_crit_edge:                   ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end74

if.then30.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %70 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %halt_map, align 4
  %72 = ptrtoint ptr %axim1_clk_off.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %axim1_clk_off.i, align 4
  %call27.i = call i32 @regmap_read(ptr noundef %71, i32 noundef %73, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool32.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool32.not.i, label %lor.rhs.i, label %for.end.i.do.end74_crit_edge

for.end.i.do.end74_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end74

lor.rhs.i:                                        ; preds = %for.end.i
  %74 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr.i = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool33.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool33.not.i, label %lor.rhs.i.if.end43.i_crit_edge, label %lor.rhs.i.do.end74_crit_edge

lor.rhs.i.do.end74_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end74

lor.rhs.i.if.end43.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.end43.i:                                       ; preds = %lor.rhs.i.if.end43.i_crit_edge, %lor.lhs.false.i.if.end43.i_crit_edge, %if.end.i.if.end43.i_crit_edge
  %add44.i = add i32 %46, 12
  %call45.i = call i32 @regmap_write(ptr noundef %44, i32 noundef %add44.i, i32 noundef 1) #10
  %call51.i = call i64 @ktime_get() #10
  %add.i138.i = add i64 %call51.i, 50000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 845) #10
  %call67171.i = call i32 @regmap_read(ptr noundef %44, i32 noundef %46, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67171.i)
  %tobool68.not172.i = icmp eq i32 %call67171.i, 0
  br i1 %tobool68.not172.i, label %if.end43.i.lor.lhs.false69.i_crit_edge, label %if.end43.i.do.end74_crit_edge

if.end43.i.do.end74_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end74

if.end43.i.lor.lhs.false69.i_crit_edge:           ; preds = %if.end43.i
  br label %lor.lhs.false69.i

lor.lhs.false69.i:                                ; preds = %if.then83.i.lor.lhs.false69.i_crit_edge, %if.end43.i.lor.lhs.false69.i_crit_edge
  %75 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool70.not.i = icmp eq i32 %76, 0
  br i1 %tobool70.not.i, label %land.lhs.true74.i, label %lor.lhs.false69.i.if.end76_crit_edge

lor.lhs.false69.i.if.end76_crit_edge:             ; preds = %lor.lhs.false69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

land.lhs.true74.i:                                ; preds = %lor.lhs.false69.i
  %call75.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call75.i, i64 %add.i138.i)
  %cmp3.i140.i = icmp sgt i64 %call75.i, %add.i138.i
  br i1 %cmp3.i140.i, label %for.end87.i, label %if.then83.i

if.then83.i:                                      ; preds = %land.lhs.true74.i
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #10
  %call67.i = call i32 @regmap_read(ptr noundef %44, i32 noundef %46, ptr noundef nonnull %val.i) #10
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.then83.i.lor.lhs.false69.i_crit_edge, label %if.then83.i.do.end74_crit_edge

if.then83.i.do.end74_crit_edge:                   ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end74

if.then83.i.lor.lhs.false69.i_crit_edge:          ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false69.i

for.end87.i:                                      ; preds = %land.lhs.true74.i
  %call80.i = call i32 @regmap_read(ptr noundef %44, i32 noundef %46, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool89.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool89.not.i, label %lor.rhs90.i, label %for.end87.i.do.end74_crit_edge

for.end87.i.do.end74_crit_edge:                   ; preds = %for.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end74

lor.rhs90.i:                                      ; preds = %for.end87.i
  %77 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr180.i = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr180.i)
  %tobool91.not.i = icmp eq i32 %.pr180.i, 0
  br i1 %tobool91.not.i, label %lor.rhs90.i.do.end74_crit_edge, label %lor.rhs90.i.if.end76_crit_edge

lor.rhs90.i.if.end76_crit_edge:                   ; preds = %lor.rhs90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

lor.rhs90.i.do.end74_crit_edge:                   ; preds = %lor.rhs90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end74

do.end74:                                         ; preds = %lor.rhs90.i.do.end74_crit_edge, %for.end87.i.do.end74_crit_edge, %if.then83.i.do.end74_crit_edge, %if.end43.i.do.end74_crit_edge, %lor.rhs.i.do.end74_crit_edge, %for.end.i.do.end74_crit_edge, %if.then30.i.do.end74_crit_edge, %if.then2.i.do.end74_crit_edge
  %.str.102.sink.i = phi ptr [ @.str.99, %for.end.i.do.end74_crit_edge ], [ @.str.99, %lor.rhs.i.do.end74_crit_edge ], [ @.str.99, %if.then2.i.do.end74_crit_edge ], [ @.str.102, %lor.rhs90.i.do.end74_crit_edge ], [ @.str.102, %for.end87.i.do.end74_crit_edge ], [ @.str.102, %if.end43.i.do.end74_crit_edge ], [ @.str.102, %if.then83.i.do.end74_crit_edge ], [ @.str.99, %if.then30.i.do.end74_crit_edge ]
  %78 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull %.str.102.sink.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %80 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.72) #13
  br label %disable_active_clks

if.end76:                                         ; preds = %lor.rhs90.i.if.end76_crit_edge, %lor.lhs.false69.i.if.end76_crit_edge, %if.end68.if.end76_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %mpss_perm = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 55
  %mpss_phys = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 41
  %82 = ptrtoint ptr %mpss_phys to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mpss_phys, align 4
  %mpss_size = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 43
  %84 = ptrtoint ptr %mpss_size to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mpss_size, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %next.i) #10
  %need_mem_protection.i = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 48
  %86 = getelementptr inbounds i8, ptr %next.i, i32 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 8)
  store i64 -1, ptr %86, align 4
  %88 = ptrtoint ptr %need_mem_protection.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %need_mem_protection.i, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i316 = icmp eq i8 %89, 0
  br i1 %tobool.not.i316, label %if.end76.q6v5_xfer_mem_ownership.exit.thread_crit_edge, label %if.end.i317

if.end76.q6v5_xfer_mem_ownership.exit.thread_crit_edge: ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit.thread

if.end.i317:                                      ; preds = %if.end76
  %90 = ptrtoint ptr %mpss_perm to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mpss_perm, align 4
  %92 = and i32 %91, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %92)
  %.not471 = icmp eq i32 %92, 32768
  br i1 %.not471, label %if.end.i317.q6v5_xfer_mem_ownership.exit.thread_crit_edge, label %q6v5_xfer_mem_ownership.exit

if.end.i317.q6v5_xfer_mem_ownership.exit.thread_crit_edge: ; preds = %if.end.i317
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit.thread

q6v5_xfer_mem_ownership.exit.thread:              ; preds = %if.end.i317.q6v5_xfer_mem_ownership.exit.thread_crit_edge, %if.end76.q6v5_xfer_mem_ownership.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i) #10
  br label %if.end84

q6v5_xfer_mem_ownership.exit:                     ; preds = %if.end.i317
  %93 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 15, ptr %next.i, align 4
  %perm27.i = getelementptr inbounds [2 x %struct.qcom_scm_vmperm], ptr %next.i, i32 0, i32 0, i32 1
  %94 = ptrtoint ptr %perm27.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 6, ptr %perm27.i, align 4
  %add.i = add i32 %85, 4095
  %and30.i = and i32 %add.i, -4096
  %call.i319 = call i32 @qcom_scm_assign_mem(i32 noundef %83, i32 noundef %and30.i, ptr noundef %mpss_perm, ptr noundef nonnull %next.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i319)
  %tobool78.not = icmp eq i32 %call.i319, 0
  br i1 %tobool78.not, label %q6v5_xfer_mem_ownership.exit.if.end84_crit_edge, label %do.end82

q6v5_xfer_mem_ownership.exit.if.end84_crit_edge:  ; preds = %q6v5_xfer_mem_ownership.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.end82:                                         ; preds = %q6v5_xfer_mem_ownership.exit
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.75, i32 noundef %call.i319) #13
  br label %disable_active_clks

if.end84:                                         ; preds = %q6v5_xfer_mem_ownership.exit.if.end84_crit_edge, %q6v5_xfer_mem_ownership.exit.thread
  %mba_perm = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 56
  %mba_phys = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 38
  %97 = ptrtoint ptr %mba_phys to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mba_phys, align 4
  %mba_size = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 39
  %99 = ptrtoint ptr %mba_size to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mba_size, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %next.i321) #10
  %101 = getelementptr inbounds i8, ptr %next.i321, i32 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 8)
  store i64 -1, ptr %101, align 4
  %103 = ptrtoint ptr %need_mem_protection.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %need_mem_protection.i, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i323 = icmp eq i8 %104, 0
  br i1 %tobool.not.i323, label %if.end84.q6v5_xfer_mem_ownership.exit333.thread_crit_edge, label %if.end.i324

if.end84.q6v5_xfer_mem_ownership.exit333.thread_crit_edge: ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit333.thread

if.end.i324:                                      ; preds = %if.end84
  %105 = ptrtoint ptr %mba_perm to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mba_perm, align 4
  %107 = and i32 %106, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %107)
  %.not = icmp eq i32 %107, 32768
  br i1 %.not, label %if.end.i324.q6v5_xfer_mem_ownership.exit333.thread_crit_edge, label %q6v5_xfer_mem_ownership.exit333

if.end.i324.q6v5_xfer_mem_ownership.exit333.thread_crit_edge: ; preds = %if.end.i324
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit333.thread

q6v5_xfer_mem_ownership.exit333.thread:           ; preds = %if.end.i324.q6v5_xfer_mem_ownership.exit333.thread_crit_edge, %if.end84.q6v5_xfer_mem_ownership.exit333.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i321) #10
  br label %do.body93

q6v5_xfer_mem_ownership.exit333:                  ; preds = %if.end.i324
  %108 = ptrtoint ptr %next.i321 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 15, ptr %next.i321, align 4
  %perm27.i328 = getelementptr inbounds [2 x %struct.qcom_scm_vmperm], ptr %next.i321, i32 0, i32 0, i32 1
  %109 = ptrtoint ptr %perm27.i328 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 6, ptr %perm27.i328, align 4
  %add.i329 = add i32 %100, 4095
  %and30.i330 = and i32 %add.i329, -4096
  %call.i331 = call i32 @qcom_scm_assign_mem(i32 noundef %98, i32 noundef %and30.i330, ptr noundef %mba_perm, ptr noundef nonnull %next.i321, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i321) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i331)
  %tobool86.not = icmp eq i32 %call.i331, 0
  br i1 %tobool86.not, label %q6v5_xfer_mem_ownership.exit333.do.body93_crit_edge, label %do.end90

q6v5_xfer_mem_ownership.exit333.do.body93_crit_edge: ; preds = %q6v5_xfer_mem_ownership.exit333
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body93

do.end90:                                         ; preds = %q6v5_xfer_mem_ownership.exit333
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.78, i32 noundef %call.i331) #13
  br label %disable_active_clks

do.body93:                                        ; preds = %q6v5_xfer_mem_ownership.exit333.do.body93_crit_edge, %q6v5_xfer_mem_ownership.exit333.thread
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !452
  call void @arm_heavy_mb() #10
  %112 = ptrtoint ptr %mba_phys to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mba_phys, align 4
  %114 = call i32 @llvm.bswap.i32(i32 %113)
  %rmb_base = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 3
  %115 = ptrtoint ptr %rmb_base to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rmb_base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #10, !srcloc !439
  %dp_size = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 40
  %117 = ptrtoint ptr %dp_size to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dp_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool97.not = icmp eq i32 %118, 0
  br i1 %tobool97.not, label %do.body93.if.end111_crit_edge, label %do.body99

do.body93.if.end111_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

do.body99:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !453
  call void @arm_heavy_mb() #10
  %119 = ptrtoint ptr %mba_phys to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mba_phys, align 4
  %add = add i32 %120, 1048576
  %121 = call i32 @llvm.bswap.i32(i32 %add)
  %122 = ptrtoint ptr %rmb_base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rmb_base, align 4
  %add.ptr104 = getelementptr i8, ptr %123, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %121) #10, !srcloc !439
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !454
  call void @arm_heavy_mb() #10
  %124 = ptrtoint ptr %dp_size to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dp_size, align 4
  %126 = call i32 @llvm.bswap.i32(i32 %125)
  %127 = ptrtoint ptr %rmb_base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rmb_base, align 4
  %add.ptr110 = getelementptr i8, ptr %128, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 %126) #10, !srcloc !439
  br label %if.end111

if.end111:                                        ; preds = %do.body99, %do.body93.if.end111_crit_edge
  %version.i = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 58
  %129 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %version.i, align 4
  %131 = zext i32 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values)
  switch i32 %130, label %if.else545.i [
    i32 6, label %if.then.i336
    i32 4, label %if.end111.if.then125.i_crit_edge
    i32 5, label %if.end111.if.then125.i_crit_edge503
    i32 2, label %if.end111.if.then364.i_crit_edge
    i32 3, label %if.end111.if.then364.i_crit_edge504
  ]

if.end111.if.then364.i_crit_edge504:              ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then364.i

if.end111.if.then364.i_crit_edge:                 ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then364.i

if.end111.if.then125.i_crit_edge503:              ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then125.i

if.end111.if.then125.i_crit_edge:                 ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then125.i

if.then.i336:                                     ; preds = %if.end111
  %reg_base.i = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 2
  %132 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %133, i32 60
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !455
  %135 = or i32 %134, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !456
  call void @arm_heavy_mb() #10
  %136 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %reg_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %137, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %135) #10, !srcloc !439
  %call4.i334 = call i64 @ktime_get() #10
  %add.i.i335 = add i64 %call4.i334, 200000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 617) #10
  %138 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg_base.i, align 4
  %add.ptr20926.i = getelementptr i8, ptr %139, i32 60
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20926.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  %.mask904927.i = and i32 %140, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask904927.i)
  %tobool.not928.i = icmp eq i32 %.mask904927.i, 0
  br i1 %tobool.not928.i, label %if.then.i336.do.body51.i_crit_edge, label %if.then.i336.land.lhs.true.i339_crit_edge

if.then.i336.land.lhs.true.i339_crit_edge:        ; preds = %if.then.i336
  br label %land.lhs.true.i339

if.then.i336.do.body51.i_crit_edge:               ; preds = %if.then.i336
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body51.i

land.lhs.true.i339:                               ; preds = %if.then40.i.land.lhs.true.i339_crit_edge, %if.then.i336.land.lhs.true.i339_crit_edge
  %call27.i337 = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call27.i337, i64 %add.i.i335)
  %cmp3.i.i338 = icmp sgt i64 %call27.i337, %add.i.i335
  br i1 %cmp3.i.i338, label %for.end.i341, label %if.then40.i

if.then40.i:                                      ; preds = %land.lhs.true.i339
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #10
  %141 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %reg_base.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %142, i32 60
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  %.mask904.i = and i32 %143, 128
  %tobool.not.i340 = icmp eq i32 %.mask904.i, 0
  br i1 %tobool.not.i340, label %if.then40.i.do.body51.i_crit_edge, label %if.then40.i.land.lhs.true.i339_crit_edge

if.then40.i.land.lhs.true.i339_crit_edge:         ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i339

if.then40.i.do.body51.i_crit_edge:                ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body51.i

for.end.i341:                                     ; preds = %land.lhs.true.i339
  %144 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %reg_base.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %145, i32 60
  %146 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  %.mask905.i = and i32 %146, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask905.i)
  %tobool44.not.i = icmp eq i32 %.mask905.i, 0
  br i1 %tobool44.not.i, label %for.end.i341.do.body51.i_crit_edge, label %do.end49.i

for.end.i341.do.body51.i_crit_edge:               ; preds = %for.end.i341
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body51.i

do.end49.i:                                       ; preds = %for.end.i341
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.104) #13
  br label %reclaim_mba

do.body51.i:                                      ; preds = %for.end.i341.do.body51.i_crit_edge, %if.then40.i.do.body51.i_crit_edge, %if.then.i336.do.body51.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !459
  call void @arm_heavy_mb() #10
  %149 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %reg_base.i, align 4
  %add.ptr55.i = getelementptr i8, ptr %150, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 16777216) #10, !srcloc !439
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !460
  call void @arm_heavy_mb() #10
  %151 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %reg_base.i, align 4
  %add.ptr60.i = getelementptr i8, ptr %152, i32 1028
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i, i32 16777216) #10, !srcloc !439
  %call64.i = call i64 @ktime_get() #10
  %add.i854.i = add i64 %call64.i, 10000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 629) #10
  %153 = ptrtoint ptr %rmb_base to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rmb_base, align 4
  %add.ptr81929.i = getelementptr i8, ptr %154, i32 64
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81929.i) #10, !srcloc !442
  %156 = call i32 @llvm.bswap.i32(i32 %155) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !461
  %and85930.i = and i32 %156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85930.i)
  %cmp86.not931.i = icmp eq i32 %and85930.i, 0
  br i1 %cmp86.not931.i, label %do.body51.i.land.lhs.true90.i_crit_edge, label %do.body51.i.for.end108.i_crit_edge

do.body51.i.for.end108.i_crit_edge:               ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end108.i

do.body51.i.land.lhs.true90.i_crit_edge:          ; preds = %do.body51.i
  br label %land.lhs.true90.i

land.lhs.true90.i:                                ; preds = %if.then104.i.land.lhs.true90.i_crit_edge, %do.body51.i.land.lhs.true90.i_crit_edge
  %call91.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call91.i, i64 %add.i854.i)
  %cmp3.i856.i = icmp sgt i64 %call91.i, %add.i854.i
  br i1 %cmp3.i856.i, label %if.then94.i, label %if.then104.i

if.then94.i:                                      ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #12
  %157 = ptrtoint ptr %rmb_base to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rmb_base, align 4
  %add.ptr98.i = getelementptr i8, ptr %158, i32 64
  %159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98.i) #10, !srcloc !442
  %160 = call i32 @llvm.bswap.i32(i32 %159) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !462
  br label %for.end108.i

if.then104.i:                                     ; preds = %land.lhs.true90.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %161 = ptrtoint ptr %rmb_base to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rmb_base, align 4
  %add.ptr81.i = getelementptr i8, ptr %162, i32 64
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i) #10, !srcloc !442
  %164 = call i32 @llvm.bswap.i32(i32 %163) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !461
  %and85.i = and i32 %164, 1
  %cmp86.not.i = icmp eq i32 %and85.i, 0
  br i1 %cmp86.not.i, label %if.then104.i.land.lhs.true90.i_crit_edge, label %if.then104.i.for.end108.i_crit_edge

if.then104.i.for.end108.i_crit_edge:              ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end108.i

if.then104.i.land.lhs.true90.i_crit_edge:         ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true90.i

for.end108.i:                                     ; preds = %if.then104.i.for.end108.i_crit_edge, %if.then94.i, %do.body51.i.for.end108.i_crit_edge
  %val.1.i = phi i32 [ %160, %if.then94.i ], [ %156, %do.body51.i.for.end108.i_crit_edge ], [ %164, %if.then104.i.for.end108.i_crit_edge ]
  %and110.i = and i32 %val.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.i)
  %cmp111.not.i = icmp eq i32 %and110.i, 0
  br i1 %cmp111.not.i, label %do.end117.i, label %for.end108.i.pbl_wait.i_crit_edge

for.end108.i.pbl_wait.i_crit_edge:                ; preds = %for.end108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pbl_wait.i

do.end117.i:                                      ; preds = %for.end108.i
  call void @__sanitizer_cov_trace_pc() #12
  %165 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.107) #13
  %call119.i = call fastcc i32 @q6v5_reset_deassert(ptr noundef %qproc) #10
  br label %reclaim_mba

if.then125.i:                                     ; preds = %if.end111.if.then125.i_crit_edge, %if.end111.if.then125.i_crit_edge503
  %reg_base128.i = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 2
  %167 = ptrtoint ptr %reg_base128.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %reg_base128.i, align 4
  %add.ptr129.i = getelementptr i8, ptr %168, i32 60
  %169 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  %170 = or i32 %169, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !464
  call void @arm_heavy_mb() #10
  %171 = ptrtoint ptr %reg_base128.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %reg_base128.i, align 4
  %add.ptr138.i = getelementptr i8, ptr %172, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138.i, i32 %170) #10, !srcloc !439
  %call142.i = call i64 @ktime_get() #10
  %add.i859.i = add i64 %call142.i, 200000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 645) #10
  %173 = ptrtoint ptr %reg_base128.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %reg_base128.i, align 4
  %add.ptr160917.i = getelementptr i8, ptr %174, i32 60
  %175 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160917.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !465
  %.mask900918.i = and i32 %175, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask900918.i)
  %tobool165.not919.i = icmp eq i32 %.mask900918.i, 0
  br i1 %tobool165.not919.i, label %if.then125.i.if.end199.i_crit_edge, label %if.then125.i.land.lhs.true169.i_crit_edge

if.then125.i.land.lhs.true169.i_crit_edge:        ; preds = %if.then125.i
  br label %land.lhs.true169.i

if.then125.i.if.end199.i_crit_edge:               ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199.i

land.lhs.true169.i:                               ; preds = %if.then183.i.land.lhs.true169.i_crit_edge, %if.then125.i.land.lhs.true169.i_crit_edge
  %call170.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call170.i, i64 %add.i859.i)
  %cmp3.i861.i = icmp sgt i64 %call170.i, %add.i859.i
  br i1 %cmp3.i861.i, label %for.end187.i, label %if.then183.i

if.then183.i:                                     ; preds = %land.lhs.true169.i
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #10
  %176 = ptrtoint ptr %reg_base128.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %reg_base128.i, align 4
  %add.ptr160.i = getelementptr i8, ptr %177, i32 60
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !465
  %.mask900.i = and i32 %178, 128
  %tobool165.not.i = icmp eq i32 %.mask900.i, 0
  br i1 %tobool165.not.i, label %if.then183.i.if.end199.i_crit_edge, label %if.then183.i.land.lhs.true169.i_crit_edge

if.then183.i.land.lhs.true169.i_crit_edge:        ; preds = %if.then183.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true169.i

if.then183.i.if.end199.i_crit_edge:               ; preds = %if.then183.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199.i

for.end187.i:                                     ; preds = %land.lhs.true169.i
  %179 = ptrtoint ptr %reg_base128.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %reg_base128.i, align 4
  %add.ptr177.i = getelementptr i8, ptr %180, i32 60
  %181 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr177.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !466
  %.mask901.i = and i32 %181, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask901.i)
  %tobool190.not.i = icmp eq i32 %.mask901.i, 0
  br i1 %tobool190.not.i, label %for.end187.i.if.end199.i_crit_edge, label %do.end197.i

for.end187.i.if.end199.i_crit_edge:               ; preds = %for.end187.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199.i

do.end197.i:                                      ; preds = %for.end187.i
  call void @__sanitizer_cov_trace_pc() #12
  %182 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %183, ptr noundef nonnull @.str.104) #13
  br label %reclaim_mba

if.end199.i:                                      ; preds = %for.end187.i.if.end199.i_crit_edge, %if.then183.i.if.end199.i_crit_edge, %if.then125.i.if.end199.i_crit_edge
  %184 = ptrtoint ptr %reg_base128.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %reg_base128.i, align 4
  %add.ptr203.i = getelementptr i8, ptr %185, i32 56
  %186 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr203.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !467
  %187 = or i32 %186, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !468
  call void @arm_heavy_mb() #10
  %188 = ptrtoint ptr %reg_base128.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %reg_base128.i, align 4
  %add.ptr212.i = getelementptr i8, ptr %189, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr212.i, i32 %187) #10, !srcloc !439
  %call216.i = call i64 @ktime_get() #10
  %add.i864.i = add i64 %call216.i, 200000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 658) #10
  %190 = ptrtoint ptr %reg_base128.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %reg_base128.i, align 4
  %add.ptr234920.i = getelementptr i8, ptr %191, i32 56
  %192 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr234920.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !469
  %.mask902921.i = and i32 %192, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask902921.i)
  %tobool239.not922.i = icmp eq i32 %.mask902921.i, 0
  br i1 %tobool239.not922.i, label %if.end199.i.if.end273.i_crit_edge, label %if.end199.i.land.lhs.true243.i_crit_edge

if.end199.i.land.lhs.true243.i_crit_edge:         ; preds = %if.end199.i
  br label %land.lhs.true243.i

if.end199.i.if.end273.i_crit_edge:                ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end273.i

land.lhs.true243.i:                               ; preds = %if.then257.i.land.lhs.true243.i_crit_edge, %if.end199.i.land.lhs.true243.i_crit_edge
  %call244.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call244.i, i64 %add.i864.i)
  %cmp3.i866.i = icmp sgt i64 %call244.i, %add.i864.i
  br i1 %cmp3.i866.i, label %for.end261.i, label %if.then257.i

if.then257.i:                                     ; preds = %land.lhs.true243.i
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #10
  %193 = ptrtoint ptr %reg_base128.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %reg_base128.i, align 4
  %add.ptr234.i = getelementptr i8, ptr %194, i32 56
  %195 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr234.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !469
  %.mask902.i = and i32 %195, 128
  %tobool239.not.i = icmp eq i32 %.mask902.i, 0
  br i1 %tobool239.not.i, label %if.then257.i.if.end273.i_crit_edge, label %if.then257.i.land.lhs.true243.i_crit_edge

if.then257.i.land.lhs.true243.i_crit_edge:        ; preds = %if.then257.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true243.i

if.then257.i.if.end273.i_crit_edge:               ; preds = %if.then257.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end273.i

for.end261.i:                                     ; preds = %land.lhs.true243.i
  %196 = ptrtoint ptr %reg_base128.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %reg_base128.i, align 4
  %add.ptr251.i = getelementptr i8, ptr %197, i32 56
  %198 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr251.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !470
  %.mask903.i = and i32 %198, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask903.i)
  %tobool264.not.i = icmp eq i32 %.mask903.i, 0
  br i1 %tobool264.not.i, label %for.end261.i.if.end273.i_crit_edge, label %do.end271.i

for.end261.i.if.end273.i_crit_edge:               ; preds = %for.end261.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end273.i

do.end271.i:                                      ; preds = %for.end261.i
  call void @__sanitizer_cov_trace_pc() #12
  %199 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %200, ptr noundef nonnull @.str.112) #13
  br label %reclaim_mba

if.end273.i:                                      ; preds = %for.end261.i.if.end273.i_crit_edge, %if.then257.i.if.end273.i_crit_edge, %if.end199.i.if.end273.i_crit_edge
  %201 = ptrtoint ptr %reg_base128.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %reg_base128.i, align 4
  %add.ptr277.i = getelementptr i8, ptr %202, i32 32
  %203 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr277.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !471
  %204 = or i32 %203, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !472
  call void @arm_heavy_mb() #10
  %205 = ptrtoint ptr %reg_base128.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %reg_base128.i, align 4
  %add.ptr286.i = getelementptr i8, ptr %206, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr286.i, i32 %204) #10, !srcloc !439
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !473
  call void @arm_heavy_mb() #10
  %207 = ptrtoint ptr %reg_base128.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %reg_base128.i, align 4
  %add.ptr291.i = getelementptr i8, ptr %208, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr291.i, i32 16777216) #10, !srcloc !439
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !474
  call void @arm_heavy_mb() #10
  %209 = ptrtoint ptr %reg_base128.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %reg_base128.i, align 4
  %add.ptr296.i = getelementptr i8, ptr %210, i32 1028
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr296.i, i32 16777216) #10, !srcloc !439
  %call300.i = call i64 @ktime_get() #10
  %add.i869.i = add i64 %call300.i, 10000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 680) #10
  %211 = ptrtoint ptr %rmb_base to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %rmb_base, align 4
  %add.ptr318923.i = getelementptr i8, ptr %212, i32 64
  %213 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr318923.i) #10, !srcloc !442
  %214 = call i32 @llvm.bswap.i32(i32 %213) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !475
  %and322924.i = and i32 %214, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and322924.i)
  %cmp323.not925.i = icmp eq i32 %and322924.i, 0
  br i1 %cmp323.not925.i, label %if.end273.i.land.lhs.true327.i_crit_edge, label %if.end273.i.for.end345.i_crit_edge

if.end273.i.for.end345.i_crit_edge:               ; preds = %if.end273.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end345.i

if.end273.i.land.lhs.true327.i_crit_edge:         ; preds = %if.end273.i
  br label %land.lhs.true327.i

land.lhs.true327.i:                               ; preds = %if.then341.i.land.lhs.true327.i_crit_edge, %if.end273.i.land.lhs.true327.i_crit_edge
  %call328.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call328.i, i64 %add.i869.i)
  %cmp3.i871.i = icmp sgt i64 %call328.i, %add.i869.i
  br i1 %cmp3.i871.i, label %if.then331.i, label %if.then341.i

if.then331.i:                                     ; preds = %land.lhs.true327.i
  call void @__sanitizer_cov_trace_pc() #12
  %215 = ptrtoint ptr %rmb_base to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %rmb_base, align 4
  %add.ptr335.i = getelementptr i8, ptr %216, i32 64
  %217 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr335.i) #10, !srcloc !442
  %218 = call i32 @llvm.bswap.i32(i32 %217) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !476
  br label %for.end345.i

if.then341.i:                                     ; preds = %land.lhs.true327.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %219 = ptrtoint ptr %rmb_base to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rmb_base, align 4
  %add.ptr318.i = getelementptr i8, ptr %220, i32 64
  %221 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr318.i) #10, !srcloc !442
  %222 = call i32 @llvm.bswap.i32(i32 %221) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !475
  %and322.i = and i32 %222, 1
  %cmp323.not.i = icmp eq i32 %and322.i, 0
  br i1 %cmp323.not.i, label %if.then341.i.land.lhs.true327.i_crit_edge, label %if.then341.i.for.end345.i_crit_edge

if.then341.i.for.end345.i_crit_edge:              ; preds = %if.then341.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end345.i

if.then341.i.land.lhs.true327.i_crit_edge:        ; preds = %if.then341.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true327.i

for.end345.i:                                     ; preds = %if.then341.i.for.end345.i_crit_edge, %if.then331.i, %if.end273.i.for.end345.i_crit_edge
  %val.4.i = phi i32 [ %218, %if.then331.i ], [ %214, %if.end273.i.for.end345.i_crit_edge ], [ %222, %if.then341.i.for.end345.i_crit_edge ]
  %and347.i = and i32 %val.4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and347.i)
  %cmp348.not.i = icmp eq i32 %and347.i, 0
  br i1 %cmp348.not.i, label %do.end354.i, label %for.end345.i.pbl_wait.i_crit_edge

for.end345.i.pbl_wait.i_crit_edge:                ; preds = %for.end345.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pbl_wait.i

do.end354.i:                                      ; preds = %for.end345.i
  call void @__sanitizer_cov_trace_pc() #12
  %223 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %224, ptr noundef nonnull @.str.107) #13
  %call356.i = call fastcc i32 @q6v5_reset_deassert(ptr noundef %qproc) #10
  br label %reclaim_mba

if.then364.i:                                     ; preds = %if.end111.if.then364.i_crit_edge, %if.end111.if.then364.i_crit_edge504
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !477
  call void @arm_heavy_mb() #10
  %reg_base368.i = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 2
  %225 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr369.i = getelementptr i8, ptr %226, i32 272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr369.i, i32 536870912) #10, !srcloc !439
  %227 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr373.i = getelementptr i8, ptr %228, i32 20
  %229 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr373.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !478
  %230 = or i32 %229, 117440512
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !479
  call void @arm_heavy_mb() #10
  %231 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr382.i = getelementptr i8, ptr %232, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr382.i, i32 %230) #10, !srcloc !439
  %233 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr386.i = getelementptr i8, ptr %234, i32 56
  %235 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr386.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !480
  %236 = or i32 %235, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !481
  call void @arm_heavy_mb() #10
  %237 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr395.i = getelementptr i8, ptr %238, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr395.i, i32 %236) #10, !srcloc !439
  %call399.i = call i64 @ktime_get() #10
  %add.i874.i = add i64 %call399.i, 200000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 709) #10
  %239 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr417912.i = getelementptr i8, ptr %240, i32 56
  %241 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr417912.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !482
  %.mask913.i = and i32 %241, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask913.i)
  %tobool422.not914.i = icmp eq i32 %.mask913.i, 0
  br i1 %tobool422.not914.i, label %if.then364.i.if.end456.i_crit_edge, label %if.then364.i.land.lhs.true426.i_crit_edge

if.then364.i.land.lhs.true426.i_crit_edge:        ; preds = %if.then364.i
  br label %land.lhs.true426.i

if.then364.i.if.end456.i_crit_edge:               ; preds = %if.then364.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end456.i

land.lhs.true426.i:                               ; preds = %if.then440.i.land.lhs.true426.i_crit_edge, %if.then364.i.land.lhs.true426.i_crit_edge
  %call427.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call427.i, i64 %add.i874.i)
  %cmp3.i876.i = icmp sgt i64 %call427.i, %add.i874.i
  br i1 %cmp3.i876.i, label %for.end444.i, label %if.then440.i

if.then440.i:                                     ; preds = %land.lhs.true426.i
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #10
  %242 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr417.i = getelementptr i8, ptr %243, i32 56
  %244 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr417.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !482
  %.mask.i = and i32 %244, 128
  %tobool422.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool422.not.i, label %if.then440.i.if.end456.i_crit_edge, label %if.then440.i.land.lhs.true426.i_crit_edge

if.then440.i.land.lhs.true426.i_crit_edge:        ; preds = %if.then440.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true426.i

if.then440.i.if.end456.i_crit_edge:               ; preds = %if.then440.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end456.i

for.end444.i:                                     ; preds = %land.lhs.true426.i
  %245 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr434.i = getelementptr i8, ptr %246, i32 56
  %247 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr434.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !483
  %.mask899.i = and i32 %247, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask899.i)
  %tobool447.not.i = icmp eq i32 %.mask899.i, 0
  br i1 %tobool447.not.i, label %for.end444.i.if.end456.i_crit_edge, label %cleanup.thread.i

for.end444.i.if.end456.i_crit_edge:               ; preds = %for.end444.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end456.i

cleanup.thread.i:                                 ; preds = %for.end444.i
  call void @__sanitizer_cov_trace_pc() #12
  %248 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %249, ptr noundef nonnull @.str.117, i32 noundef -110) #13
  br label %reclaim_mba

if.end456.i:                                      ; preds = %for.end444.i.if.end456.i_crit_edge, %if.then440.i.if.end456.i_crit_edge, %if.then364.i.if.end456.i_crit_edge
  %250 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr460.i = getelementptr i8, ptr %251, i32 48
  %252 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr460.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !484
  %253 = or i32 %252, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !485
  call void @arm_heavy_mb() #10
  %254 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr469.i = getelementptr i8, ptr %255, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr469.i, i32 %253) #10, !srcloc !439
  %256 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr473.i = getelementptr i8, ptr %257, i32 48
  %258 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr473.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !486
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %259 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %259(i32 noundef 214748) #10
  %260 = or i32 %252, %258
  %261 = or i32 %260, 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !487
  call void @arm_heavy_mb() #10
  %262 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr483.i = getelementptr i8, ptr %263, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr483.i, i32 %261) #10, !srcloc !439
  %264 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr487.i = getelementptr i8, ptr %265, i32 48
  %266 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr487.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !488
  %267 = and i32 %266, -16385
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !489
  call void @arm_heavy_mb() #10
  %268 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr496.i = getelementptr i8, ptr %269, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr496.i, i32 %267) #10, !srcloc !439
  %270 = or i32 %267, 3072
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !490
  call void @arm_heavy_mb() #10
  %271 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr502.i = getelementptr i8, ptr %272, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr502.i, i32 %270) #10, !srcloc !439
  %273 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %274)
  %cmp504.i = icmp eq i32 %274, 2
  %..i = select i1 %cmp504.i, i32 176, i32 52
  %.853.i = select i1 %cmp504.i, i32 19, i32 28
  %275 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr511.i = getelementptr i8, ptr %276, i32 %..i
  %277 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr511.i) #10, !srcloc !442
  %278 = call i32 @llvm.bswap.i32(i32 %277) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !491
  br label %for.body.i342

for.body.i342:                                    ; preds = %for.body.i342.for.body.i342_crit_edge, %if.end456.i
  %val.6916.i = phi i32 [ %278, %if.end456.i ], [ %or530.i, %for.body.i342.for.body.i342_crit_edge ]
  %i.1915.i = phi i32 [ %.853.i, %if.end456.i ], [ %dec.i, %for.body.i342.for.body.i342_crit_edge ]
  %shl.i = shl nuw i32 1, %i.1915.i
  %or517.i = or i32 %shl.i, %val.6916.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !492
  call void @arm_heavy_mb() #10
  %279 = call i32 @llvm.bswap.i32(i32 %or517.i) #10
  %280 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr522.i = getelementptr i8, ptr %281, i32 %..i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr522.i, i32 %279) #10, !srcloc !439
  %282 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr526.i = getelementptr i8, ptr %283, i32 %..i
  %284 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr526.i) #10, !srcloc !442
  %285 = call i32 @llvm.bswap.i32(i32 %284) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !493
  %or530.i = or i32 %285, %or517.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %286 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %286(i32 noundef 214748) #10
  %dec.i = add nsw i32 %i.1915.i, -1
  %cmp516.not.i = icmp eq i32 %i.1915.i, 0
  br i1 %cmp516.not.i, label %cleanup.i, label %for.body.i342.for.body.i342_crit_edge

for.body.i342.for.body.i342_crit_edge:            ; preds = %for.body.i342
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i342

cleanup.i:                                        ; preds = %for.body.i342
  call void @__sanitizer_cov_trace_pc() #12
  %287 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr535.i = getelementptr i8, ptr %288, i32 48
  %289 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr535.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !494
  %290 = and i32 %289, -8193
  %291 = call i32 @llvm.bswap.i32(i32 %290) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !495
  call void @arm_heavy_mb() #10
  %292 = ptrtoint ptr %reg_base368.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %reg_base368.i, align 4
  %add.ptr544.i = getelementptr i8, ptr %293, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr544.i, i32 %290) #10, !srcloc !439
  br label %if.end613.i

if.else545.i:                                     ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  %reg_base548.i = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 2
  %294 = ptrtoint ptr %reg_base548.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %reg_base548.i, align 4
  %add.ptr549.i = getelementptr i8, ptr %295, i32 20
  %296 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr549.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !496
  %297 = or i32 %296, 117440512
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !497
  call void @arm_heavy_mb() #10
  %298 = ptrtoint ptr %reg_base548.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %reg_base548.i, align 4
  %add.ptr558.i = getelementptr i8, ptr %299, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr558.i, i32 %297) #10, !srcloc !439
  %300 = ptrtoint ptr %reg_base548.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %reg_base548.i, align 4
  %add.ptr562.i = getelementptr i8, ptr %301, i32 48
  %302 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr562.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !498
  %303 = or i32 %302, 24576
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !499
  call void @arm_heavy_mb() #10
  %304 = ptrtoint ptr %reg_base548.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %reg_base548.i, align 4
  %add.ptr571.i = getelementptr i8, ptr %305, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr571.i, i32 %303) #10, !srcloc !439
  %306 = ptrtoint ptr %reg_base548.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %reg_base548.i, align 4
  %add.ptr575.i = getelementptr i8, ptr %307, i32 48
  %308 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr575.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %309 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %309(i32 noundef 214748) #10
  %310 = ptrtoint ptr %reg_base548.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %reg_base548.i, align 4
  %add.ptr583.i = getelementptr i8, ptr %311, i32 48
  %312 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr583.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !501
  %313 = or i32 %312, 3840
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !502
  call void @arm_heavy_mb() #10
  %314 = ptrtoint ptr %reg_base548.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %reg_base548.i, align 4
  %add.ptr592.i = getelementptr i8, ptr %315, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr592.i, i32 %313) #10, !srcloc !439
  %316 = or i32 %312, 67112704
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !503
  call void @arm_heavy_mb() #10
  %317 = ptrtoint ptr %reg_base548.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %reg_base548.i, align 4
  %add.ptr598.i = getelementptr i8, ptr %318, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr598.i, i32 %316) #10, !srcloc !439
  %319 = or i32 %312, 100667136
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !504
  call void @arm_heavy_mb() #10
  %320 = ptrtoint ptr %reg_base548.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %reg_base548.i, align 4
  %add.ptr604.i = getelementptr i8, ptr %321, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr604.i, i32 %319) #10, !srcloc !439
  %322 = or i32 %312, 117444352
  %323 = call i32 @llvm.bswap.i32(i32 %322) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !505
  call void @arm_heavy_mb() #10
  %324 = ptrtoint ptr %reg_base548.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %reg_base548.i, align 4
  %add.ptr610.i = getelementptr i8, ptr %325, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr610.i, i32 %322) #10, !srcloc !439
  br label %if.end613.i

if.end613.i:                                      ; preds = %if.else545.i, %cleanup.i
  %val.8.i = phi i32 [ %291, %cleanup.i ], [ %323, %if.else545.i ]
  %and614.i = and i32 %val.8.i, -1048577
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !506
  call void @arm_heavy_mb() #10
  %326 = call i32 @llvm.bswap.i32(i32 %and614.i) #10
  %reg_base618.i = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 2
  %327 = ptrtoint ptr %reg_base618.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %reg_base618.i, align 4
  %add.ptr619.i = getelementptr i8, ptr %328, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr619.i, i32 %326) #10, !srcloc !439
  %329 = ptrtoint ptr %reg_base618.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %reg_base618.i, align 4
  %add.ptr623.i = getelementptr i8, ptr %330, i32 20
  %331 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr623.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !507
  %332 = and i32 %331, -33554433
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !508
  call void @arm_heavy_mb() #10
  %333 = ptrtoint ptr %reg_base618.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %reg_base618.i, align 4
  %add.ptr632.i = getelementptr i8, ptr %334, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr632.i, i32 %332) #10, !srcloc !439
  %335 = ptrtoint ptr %reg_base618.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %reg_base618.i, align 4
  %add.ptr636.i = getelementptr i8, ptr %336, i32 32
  %337 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr636.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !509
  %338 = or i32 %337, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  call void @arm_heavy_mb() #10
  %339 = ptrtoint ptr %reg_base618.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %reg_base618.i, align 4
  %add.ptr645.i = getelementptr i8, ptr %340, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr645.i, i32 %338) #10, !srcloc !439
  %341 = ptrtoint ptr %reg_base618.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %reg_base618.i, align 4
  %add.ptr649.i = getelementptr i8, ptr %342, i32 20
  %343 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr649.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  %344 = and i32 %343, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !512
  call void @arm_heavy_mb() #10
  %345 = ptrtoint ptr %reg_base618.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %reg_base618.i, align 4
  %add.ptr658.i = getelementptr i8, ptr %346, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr658.i, i32 %344) #10, !srcloc !439
  br label %pbl_wait.i

pbl_wait.i:                                       ; preds = %if.end613.i, %for.end345.i.pbl_wait.i_crit_edge, %for.end108.i.pbl_wait.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %347 = load volatile i32, ptr @jiffies, align 128
  %add.i879.i = add i32 %347, 100
  %348 = ptrtoint ptr %rmb_base to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %rmb_base, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %349, i32 4
  %350 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !513
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %tobool.not3.i.i = icmp eq i32 %350, 0
  br i1 %tobool.not3.i.i, label %pbl_wait.i.if.end.i.i_crit_edge, label %pbl_wait.i.q6v5_rmb_pbl_wait.exit.i_crit_edge

pbl_wait.i.q6v5_rmb_pbl_wait.exit.i_crit_edge:    ; preds = %pbl_wait.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_rmb_pbl_wait.exit.i

pbl_wait.i.if.end.i.i_crit_edge:                  ; preds = %pbl_wait.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end4.i.i.if.end.i.i_crit_edge, %pbl_wait.i.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %351 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i879.i, %351
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i880.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i880.i, label %if.end.i.i.do.end664.i_crit_edge, label %if.end4.i.i

if.end.i.i.do.end664.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end664.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @msleep(i32 noundef 1) #10
  %352 = ptrtoint ptr %rmb_base to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %rmb_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %353, i32 4
  %354 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !513
  %tobool.not.i.i = icmp eq i32 %354, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i.if.end.i.i_crit_edge, label %if.end4.i.i.q6v5_rmb_pbl_wait.exit.i_crit_edge

if.end4.i.i.q6v5_rmb_pbl_wait.exit.i_crit_edge:   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_rmb_pbl_wait.exit.i

if.end4.i.i.if.end.i.i_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

q6v5_rmb_pbl_wait.exit.i:                         ; preds = %if.end4.i.i.q6v5_rmb_pbl_wait.exit.i_crit_edge, %pbl_wait.i.q6v5_rmb_pbl_wait.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %350, %pbl_wait.i.q6v5_rmb_pbl_wait.exit.i_crit_edge ], [ %354, %if.end4.i.i.q6v5_rmb_pbl_wait.exit.i_crit_edge ]
  %355 = call i32 @llvm.bswap.i32(i32 %.lcssa.i.i) #10
  %356 = zext i32 %355 to i64
  call void @__sanitizer_cov_trace_switch(i64 %356, ptr @__sancov_gen_cov_switch_values.273)
  switch i32 %355, label %do.end671.i [
    i32 -110, label %q6v5_rmb_pbl_wait.exit.i.do.end664.i_crit_edge
    i32 1, label %if.end115
  ]

q6v5_rmb_pbl_wait.exit.i.do.end664.i_crit_edge:   ; preds = %q6v5_rmb_pbl_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end664.i

do.end664.i:                                      ; preds = %q6v5_rmb_pbl_wait.exit.i.do.end664.i_crit_edge, %if.end.i.i.do.end664.i_crit_edge
  %357 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %358, ptr noundef nonnull @.str.120) #13
  br label %reclaim_mba

do.end671.i:                                      ; preds = %q6v5_rmb_pbl_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %359 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %360, ptr noundef nonnull @.str.123, i32 noundef %355) #13
  br label %reclaim_mba

if.end115:                                        ; preds = %q6v5_rmb_pbl_wait.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %361 = load volatile i32, ptr @jiffies, align 128
  %add.i344 = add i32 %361, 500
  %362 = ptrtoint ptr %rmb_base to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %rmb_base, align 4
  %add.ptr23.i = getelementptr i8, ptr %363, i32 12
  %364 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #10, !srcloc !442
  %365 = call i32 @llvm.bswap.i32(i32 %364) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !443
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %365)
  %cmp24.i = icmp sgt i32 %365, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %tobool3.not.i.not468 = icmp eq i32 %364, 0
  %or.cond470 = select i1 %cmp24.i, i1 %tobool3.not.i.not468, i1 false
  br i1 %or.cond470, label %if.end115.if.end10.i_crit_edge, label %if.end115.q6v5_rmb_mba_wait.exit_crit_edge

if.end115.q6v5_rmb_mba_wait.exit_crit_edge:       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_rmb_mba_wait.exit

if.end115.if.end10.i_crit_edge:                   ; preds = %if.end115
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end13.i.if.end10.i_crit_edge, %if.end115.if.end10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %366 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i344, %366
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp11.i = icmp slt i32 %sub.i, 0
  br i1 %cmp11.i, label %if.end10.i.do.end121_crit_edge, label %if.end13.i

if.end10.i.do.end121_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end121

if.end13.i:                                       ; preds = %if.end10.i
  call void @msleep(i32 noundef 1) #10
  %367 = ptrtoint ptr %rmb_base to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %rmb_base, align 4
  %add.ptr.i347 = getelementptr i8, ptr %368, i32 12
  %369 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i347) #10, !srcloc !442
  %370 = call i32 @llvm.bswap.i32(i32 %369) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !443
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %370)
  %cmp.i = icmp sgt i32 %370, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %369)
  %tobool3.not.i.not = icmp eq i32 %369, 0
  %or.cond = select i1 %cmp.i, i1 %tobool3.not.i.not, i1 false
  br i1 %or.cond, label %if.end13.i.if.end10.i_crit_edge, label %if.end13.i.q6v5_rmb_mba_wait.exit_crit_edge

if.end13.i.q6v5_rmb_mba_wait.exit_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_rmb_mba_wait.exit

if.end13.i.if.end10.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

q6v5_rmb_mba_wait.exit:                           ; preds = %if.end13.i.q6v5_rmb_mba_wait.exit_crit_edge, %if.end115.q6v5_rmb_mba_wait.exit_crit_edge
  %retval.0.i348 = phi i32 [ %365, %if.end115.q6v5_rmb_mba_wait.exit_crit_edge ], [ %370, %if.end13.i.q6v5_rmb_mba_wait.exit_crit_edge ]
  %371 = zext i32 %retval.0.i348 to i64
  call void @__sanitizer_cov_trace_switch(i64 %371, ptr @__sancov_gen_cov_switch_values.274)
  switch i32 %retval.0.i348, label %do.end128 [
    i32 -110, label %q6v5_rmb_mba_wait.exit.do.end121_crit_edge
    i32 1, label %q6v5_rmb_mba_wait.exit.if.end131_crit_edge
    i32 2, label %q6v5_rmb_mba_wait.exit.if.end131_crit_edge505
  ]

q6v5_rmb_mba_wait.exit.if.end131_crit_edge505:    ; preds = %q6v5_rmb_mba_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

q6v5_rmb_mba_wait.exit.if.end131_crit_edge:       ; preds = %q6v5_rmb_mba_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

q6v5_rmb_mba_wait.exit.do.end121_crit_edge:       ; preds = %q6v5_rmb_mba_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end121

do.end121:                                        ; preds = %q6v5_rmb_mba_wait.exit.do.end121_crit_edge, %if.end10.i.do.end121_crit_edge
  %372 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %373, ptr noundef nonnull @.str.81) #13
  br label %halt_axi_ports

do.end128:                                        ; preds = %q6v5_rmb_mba_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  %374 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %375, ptr noundef nonnull @.str.84, i32 noundef %retval.0.i348) #13
  br label %halt_axi_ports

if.end131:                                        ; preds = %q6v5_rmb_mba_wait.exit.if.end131_crit_edge, %q6v5_rmb_mba_wait.exit.if.end131_crit_edge505
  %dump_mba_loaded = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 35
  %376 = ptrtoint ptr %dump_mba_loaded to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 1, ptr %dump_mba_loaded, align 4
  br label %cleanup

halt_axi_ports:                                   ; preds = %do.end128, %do.end121
  %ret.0 = phi i32 [ -110, %do.end121 ], [ -22, %do.end128 ]
  %377 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %halt_map, align 4
  %halt_q6 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 6
  %379 = ptrtoint ptr %halt_q6 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %halt_q6, align 4
  call fastcc void @q6v5proc_halt_axi_port(ptr noundef %qproc, ptr noundef %378, i32 noundef %380)
  %has_vq6 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 54
  %381 = ptrtoint ptr %has_vq6 to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %has_vq6, align 2, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %382)
  %tobool133.not = icmp eq i8 %382, 0
  br i1 %tobool133.not, label %halt_axi_ports.if.end136_crit_edge, label %if.then134

halt_axi_ports.if.end136_crit_edge:               ; preds = %halt_axi_ports
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

if.then134:                                       ; preds = %halt_axi_ports
  call void @__sanitizer_cov_trace_pc() #12
  %383 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %halt_map, align 4
  %halt_vq6 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 9
  %385 = ptrtoint ptr %halt_vq6 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %halt_vq6, align 4
  call fastcc void @q6v5proc_halt_axi_port(ptr noundef %qproc, ptr noundef %384, i32 noundef %386)
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %halt_axi_ports.if.end136_crit_edge
  %387 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %halt_map, align 4
  %halt_modem = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 7
  %389 = ptrtoint ptr %halt_modem to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %halt_modem, align 4
  call fastcc void @q6v5proc_halt_axi_port(ptr noundef %qproc, ptr noundef %388, i32 noundef %390)
  %391 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %halt_map, align 4
  %halt_nc = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 8
  %393 = ptrtoint ptr %halt_nc to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %halt_nc, align 4
  call fastcc void @q6v5proc_halt_axi_port(ptr noundef %qproc, ptr noundef %392, i32 noundef %394)
  %395 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %halt_map, align 4
  %qaccept_mdm = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 11
  %397 = ptrtoint ptr %qaccept_mdm to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %qaccept_mdm, align 4
  call fastcc void @q6v5proc_disable_qchannel(ptr noundef %qproc, ptr noundef %396, i32 noundef %398)
  %399 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %halt_map, align 4
  %qaccept_cx = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 12
  %401 = ptrtoint ptr %qaccept_cx to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %qaccept_cx, align 4
  call fastcc void @q6v5proc_disable_qchannel(ptr noundef %qproc, ptr noundef %400, i32 noundef %402)
  %403 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %halt_map, align 4
  %405 = ptrtoint ptr %qaccept_axi to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %qaccept_axi, align 4
  call fastcc void @q6v5proc_disable_qchannel(ptr noundef %qproc, ptr noundef %404, i32 noundef %406)
  br label %reclaim_mba

reclaim_mba:                                      ; preds = %if.end136, %do.end671.i, %do.end664.i, %cleanup.thread.i, %do.end354.i, %do.end271.i, %do.end197.i, %do.end117.i, %do.end49.i
  %tobool113.not453 = phi i1 [ true, %if.end136 ], [ false, %do.end49.i ], [ false, %do.end117.i ], [ false, %do.end197.i ], [ false, %do.end271.i ], [ false, %do.end354.i ], [ false, %do.end664.i ], [ false, %do.end671.i ], [ false, %cleanup.thread.i ]
  %ret.1 = phi i32 [ %ret.0, %if.end136 ], [ -110, %do.end49.i ], [ -110, %do.end117.i ], [ -110, %do.end197.i ], [ -110, %do.end271.i ], [ -110, %do.end354.i ], [ -110, %do.end664.i ], [ -22, %do.end671.i ], [ -110, %cleanup.thread.i ]
  %407 = ptrtoint ptr %mba_phys to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %mba_phys, align 4
  %409 = ptrtoint ptr %mba_size to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %mba_size, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %next.i350) #10
  %411 = getelementptr inbounds %struct.qcom_scm_vmperm, ptr %next.i350, i32 0, i32 1
  %412 = getelementptr inbounds i8, ptr %next.i350, i32 8
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_storeN_noabort(i32 %413, i32 8)
  store i64 -1, ptr %412, align 4
  %414 = ptrtoint ptr %need_mem_protection.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %need_mem_protection.i, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %415)
  %tobool.not.i352 = icmp eq i8 %415, 0
  br i1 %tobool.not.i352, label %reclaim_mba.q6v5_xfer_mem_ownership.exit362.thread_crit_edge, label %if.end.i354

reclaim_mba.q6v5_xfer_mem_ownership.exit362.thread_crit_edge: ; preds = %reclaim_mba
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit362.thread

if.end.i354:                                      ; preds = %reclaim_mba
  %416 = ptrtoint ptr %mba_perm to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %mba_perm, align 4
  %418 = and i32 %417, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %418)
  %419 = icmp eq i32 %418, 8
  br i1 %419, label %if.end.i354.q6v5_xfer_mem_ownership.exit362.thread_crit_edge, label %q6v5_xfer_mem_ownership.exit362

if.end.i354.q6v5_xfer_mem_ownership.exit362.thread_crit_edge: ; preds = %if.end.i354
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit362.thread

q6v5_xfer_mem_ownership.exit362.thread:           ; preds = %if.end.i354.q6v5_xfer_mem_ownership.exit362.thread_crit_edge, %reclaim_mba.q6v5_xfer_mem_ownership.exit362.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i350) #10
  br label %if.else153

q6v5_xfer_mem_ownership.exit362:                  ; preds = %if.end.i354
  %420 = ptrtoint ptr %next.i350 to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 3, ptr %next.i350, align 4
  %421 = ptrtoint ptr %411 to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 7, ptr %411, align 4
  %add.i357 = add i32 %410, 4095
  %and30.i358 = and i32 %add.i357, -4096
  %call.i359 = call i32 @qcom_scm_assign_mem(i32 noundef %408, i32 noundef %and30.i358, ptr noundef %mba_perm, ptr noundef nonnull %next.i350, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i350) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i359)
  %tobool147.not = icmp eq i32 %call.i359, 0
  br i1 %tobool147.not, label %q6v5_xfer_mem_ownership.exit362.if.else153_crit_edge, label %do.end151

q6v5_xfer_mem_ownership.exit362.if.else153_crit_edge: ; preds = %q6v5_xfer_mem_ownership.exit362
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else153

do.end151:                                        ; preds = %q6v5_xfer_mem_ownership.exit362
  call void @__sanitizer_cov_trace_pc() #12
  %422 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %423, ptr noundef nonnull @.str.87) #13
  br label %disable_active_clks

if.else153:                                       ; preds = %q6v5_xfer_mem_ownership.exit362.if.else153_crit_edge, %q6v5_xfer_mem_ownership.exit362.thread
  br i1 %tobool113.not453, label %if.then155, label %if.else153.disable_active_clks_crit_edge

if.else153.disable_active_clks_crit_edge:         ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_active_clks

if.then155:                                       ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @q6v5_dump_mba_logs(ptr noundef %qproc)
  br label %disable_active_clks

disable_active_clks:                              ; preds = %if.then155, %if.else153.disable_active_clks_crit_edge, %do.end151, %do.end90, %do.end82, %do.end74
  %ret.2 = phi i32 [ -110, %do.end74 ], [ %call.i319, %do.end82 ], [ %call.i331, %do.end90 ], [ %ret.1, %do.end151 ], [ %ret.1, %if.then155 ], [ %ret.1, %if.else153.disable_active_clks_crit_edge ]
  %424 = ptrtoint ptr %active_clk_count to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %active_clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %425)
  %cmp1.i = icmp sgt i32 %425, 0
  br i1 %cmp1.i, label %disable_active_clks.for.body.i366_crit_edge, label %disable_active_clks.assert_reset_crit_edge

disable_active_clks.assert_reset_crit_edge:       ; preds = %disable_active_clks
  call void @__sanitizer_cov_trace_pc() #12
  br label %assert_reset

disable_active_clks.for.body.i366_crit_edge:      ; preds = %disable_active_clks
  br label %for.body.i366

for.body.i366:                                    ; preds = %for.body.i366.for.body.i366_crit_edge, %disable_active_clks.for.body.i366_crit_edge
  %i.02.i = phi i32 [ %inc.i364, %for.body.i366.for.body.i366_crit_edge ], [ 0, %disable_active_clks.for.body.i366_crit_edge ]
  %arrayidx.i363 = getelementptr ptr, ptr %active_clks, i32 %i.02.i
  %426 = ptrtoint ptr %arrayidx.i363 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %arrayidx.i363, align 4
  call void @clk_disable(ptr noundef %427) #10
  call void @clk_unprepare(ptr noundef %427) #10
  %inc.i364 = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i365 = icmp eq i32 %inc.i364, %425
  br i1 %exitcond.not.i365, label %for.body.i366.assert_reset_crit_edge, label %for.body.i366.for.body.i366_crit_edge

for.body.i366.for.body.i366_crit_edge:            ; preds = %for.body.i366
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i366

for.body.i366.assert_reset_crit_edge:             ; preds = %for.body.i366
  call void @__sanitizer_cov_trace_pc() #12
  br label %assert_reset

assert_reset:                                     ; preds = %for.body.i366.assert_reset_crit_edge, %disable_active_clks.assert_reset_crit_edge, %do.end66
  %ret.3 = phi i32 [ %call61, %do.end66 ], [ %ret.2, %disable_active_clks.assert_reset_crit_edge ], [ %ret.2, %for.body.i366.assert_reset_crit_edge ]
  call fastcc void @q6v5_reset_assert(ptr noundef %qproc)
  br label %disable_reset_clks

disable_reset_clks:                               ; preds = %assert_reset, %do.end56
  %ret.4 = phi i32 [ %call51, %do.end56 ], [ %ret.3, %assert_reset ]
  %428 = ptrtoint ptr %reset_clk_count to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %reset_clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %429)
  %cmp1.i368 = icmp sgt i32 %429, 0
  br i1 %cmp1.i368, label %disable_reset_clks.for.body.i373_crit_edge, label %disable_reset_clks.disable_vdd_crit_edge

disable_reset_clks.disable_vdd_crit_edge:         ; preds = %disable_reset_clks
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_vdd

disable_reset_clks.for.body.i373_crit_edge:       ; preds = %disable_reset_clks
  br label %for.body.i373

for.body.i373:                                    ; preds = %for.body.i373.for.body.i373_crit_edge, %disable_reset_clks.for.body.i373_crit_edge
  %i.02.i369 = phi i32 [ %inc.i371, %for.body.i373.for.body.i373_crit_edge ], [ 0, %disable_reset_clks.for.body.i373_crit_edge ]
  %arrayidx.i370 = getelementptr ptr, ptr %reset_clks, i32 %i.02.i369
  %430 = ptrtoint ptr %arrayidx.i370 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %arrayidx.i370, align 4
  call void @clk_disable(ptr noundef %431) #10
  call void @clk_unprepare(ptr noundef %431) #10
  %inc.i371 = add nuw nsw i32 %i.02.i369, 1
  %exitcond.not.i372 = icmp eq i32 %inc.i371, %429
  br i1 %exitcond.not.i372, label %for.body.i373.disable_vdd_crit_edge, label %for.body.i373.for.body.i373_crit_edge

for.body.i373.for.body.i373_crit_edge:            ; preds = %for.body.i373
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i373

for.body.i373.disable_vdd_crit_edge:              ; preds = %for.body.i373
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_vdd

disable_vdd:                                      ; preds = %for.body.i373.disable_vdd_crit_edge, %disable_reset_clks.disable_vdd_crit_edge, %do.end48
  %ret.5 = phi i32 [ %call43, %do.end48 ], [ %ret.4, %disable_reset_clks.disable_vdd_crit_edge ], [ %ret.4, %for.body.i373.disable_vdd_crit_edge ]
  %432 = ptrtoint ptr %active_reg_count to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %active_reg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %433)
  %cmp2.i = icmp sgt i32 %433, 0
  br i1 %cmp2.i, label %disable_vdd.for.body.i378_crit_edge, label %disable_vdd.disable_proxy_clk_crit_edge

disable_vdd.disable_proxy_clk_crit_edge:          ; preds = %disable_vdd
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_proxy_clk

disable_vdd.for.body.i378_crit_edge:              ; preds = %disable_vdd
  br label %for.body.i378

for.body.i378:                                    ; preds = %if.end9.i.for.body.i378_crit_edge, %disable_vdd.for.body.i378_crit_edge
  %i.03.i = phi i32 [ %inc.i382, %if.end9.i.for.body.i378_crit_edge ], [ 0, %disable_vdd.for.body.i378_crit_edge ]
  %arrayidx.i376 = getelementptr %struct.reg_info, ptr %active_regs, i32 %i.03.i
  %uV.i = getelementptr %struct.reg_info, ptr %active_regs, i32 %i.03.i, i32 1
  %434 = ptrtoint ptr %uV.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %uV.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %435)
  %cmp1.i377 = icmp sgt i32 %435, 0
  br i1 %cmp1.i377, label %if.then.i380, label %for.body.i378.if.end.i381_crit_edge

for.body.i378.if.end.i381_crit_edge:              ; preds = %for.body.i378
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i381

if.then.i380:                                     ; preds = %for.body.i378
  call void @__sanitizer_cov_trace_pc() #12
  %436 = ptrtoint ptr %arrayidx.i376 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %arrayidx.i376, align 4
  %call.i379 = call i32 @regulator_set_voltage(ptr noundef %437, i32 noundef 0, i32 noundef 2147483647) #10
  br label %if.end.i381

if.end.i381:                                      ; preds = %if.then.i380, %for.body.i378.if.end.i381_crit_edge
  %uA.i = getelementptr %struct.reg_info, ptr %active_regs, i32 %i.03.i, i32 2
  %438 = ptrtoint ptr %uA.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %uA.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %439)
  %cmp4.i = icmp sgt i32 %439, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i381.if.end9.i_crit_edge

if.end.i381.if.end9.i_crit_edge:                  ; preds = %if.end.i381
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i381
  call void @__sanitizer_cov_trace_pc() #12
  %440 = ptrtoint ptr %arrayidx.i376 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %arrayidx.i376, align 4
  %call8.i = call i32 @regulator_set_load(ptr noundef %441, i32 noundef 0) #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i, %if.end.i381.if.end9.i_crit_edge
  %442 = ptrtoint ptr %arrayidx.i376 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %arrayidx.i376, align 4
  %call12.i = call i32 @regulator_disable(ptr noundef %443) #10
  %inc.i382 = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i383 = icmp eq i32 %inc.i382, %433
  br i1 %exitcond.not.i383, label %if.end9.i.disable_proxy_clk_crit_edge, label %if.end9.i.for.body.i378_crit_edge

if.end9.i.for.body.i378_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i378

if.end9.i.disable_proxy_clk_crit_edge:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_proxy_clk

disable_proxy_clk:                                ; preds = %if.end9.i.disable_proxy_clk_crit_edge, %disable_vdd.disable_proxy_clk_crit_edge, %do.end38
  %ret.6 = phi i32 [ %call33, %do.end38 ], [ %ret.5, %disable_vdd.disable_proxy_clk_crit_edge ], [ %ret.5, %if.end9.i.disable_proxy_clk_crit_edge ]
  %444 = ptrtoint ptr %proxy_clk_count to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %proxy_clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %445)
  %cmp1.i385 = icmp sgt i32 %445, 0
  br i1 %cmp1.i385, label %disable_proxy_clk.for.body.i390_crit_edge, label %disable_proxy_clk.disable_proxy_reg_crit_edge

disable_proxy_clk.disable_proxy_reg_crit_edge:    ; preds = %disable_proxy_clk
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_proxy_reg

disable_proxy_clk.for.body.i390_crit_edge:        ; preds = %disable_proxy_clk
  br label %for.body.i390

for.body.i390:                                    ; preds = %for.body.i390.for.body.i390_crit_edge, %disable_proxy_clk.for.body.i390_crit_edge
  %i.02.i386 = phi i32 [ %inc.i388, %for.body.i390.for.body.i390_crit_edge ], [ 0, %disable_proxy_clk.for.body.i390_crit_edge ]
  %arrayidx.i387 = getelementptr ptr, ptr %proxy_clks, i32 %i.02.i386
  %446 = ptrtoint ptr %arrayidx.i387 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %arrayidx.i387, align 4
  call void @clk_disable(ptr noundef %447) #10
  call void @clk_unprepare(ptr noundef %447) #10
  %inc.i388 = add nuw nsw i32 %i.02.i386, 1
  %exitcond.not.i389 = icmp eq i32 %inc.i388, %445
  br i1 %exitcond.not.i389, label %for.body.i390.disable_proxy_reg_crit_edge, label %for.body.i390.for.body.i390_crit_edge

for.body.i390.for.body.i390_crit_edge:            ; preds = %for.body.i390
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i390

for.body.i390.disable_proxy_reg_crit_edge:        ; preds = %for.body.i390
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_proxy_reg

disable_proxy_reg:                                ; preds = %for.body.i390.disable_proxy_reg_crit_edge, %disable_proxy_clk.disable_proxy_reg_crit_edge, %do.end29
  %ret.7 = phi i32 [ %call24, %do.end29 ], [ %ret.6, %disable_proxy_clk.disable_proxy_reg_crit_edge ], [ %ret.6, %for.body.i390.disable_proxy_reg_crit_edge ]
  %448 = ptrtoint ptr %proxy_reg_count to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %proxy_reg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %449)
  %cmp2.i393 = icmp sgt i32 %449, 0
  br i1 %cmp2.i393, label %disable_proxy_reg.for.body.i398_crit_edge, label %disable_proxy_reg.disable_fallback_proxy_reg_crit_edge

disable_proxy_reg.disable_fallback_proxy_reg_crit_edge: ; preds = %disable_proxy_reg
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_fallback_proxy_reg

disable_proxy_reg.for.body.i398_crit_edge:        ; preds = %disable_proxy_reg
  br label %for.body.i398

for.body.i398:                                    ; preds = %if.end9.i409.for.body.i398_crit_edge, %disable_proxy_reg.for.body.i398_crit_edge
  %i.03.i394 = phi i32 [ %inc.i407, %if.end9.i409.for.body.i398_crit_edge ], [ 0, %disable_proxy_reg.for.body.i398_crit_edge ]
  %arrayidx.i395 = getelementptr %struct.reg_info, ptr %proxy_regs, i32 %i.03.i394
  %uV.i396 = getelementptr %struct.reg_info, ptr %proxy_regs, i32 %i.03.i394, i32 1
  %450 = ptrtoint ptr %uV.i396 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %uV.i396, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %451)
  %cmp1.i397 = icmp sgt i32 %451, 0
  br i1 %cmp1.i397, label %if.then.i400, label %for.body.i398.if.end.i403_crit_edge

for.body.i398.if.end.i403_crit_edge:              ; preds = %for.body.i398
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i403

if.then.i400:                                     ; preds = %for.body.i398
  call void @__sanitizer_cov_trace_pc() #12
  %452 = ptrtoint ptr %arrayidx.i395 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %arrayidx.i395, align 4
  %call.i399 = call i32 @regulator_set_voltage(ptr noundef %453, i32 noundef 0, i32 noundef 2147483647) #10
  br label %if.end.i403

if.end.i403:                                      ; preds = %if.then.i400, %for.body.i398.if.end.i403_crit_edge
  %uA.i401 = getelementptr %struct.reg_info, ptr %proxy_regs, i32 %i.03.i394, i32 2
  %454 = ptrtoint ptr %uA.i401 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %uA.i401, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %455)
  %cmp4.i402 = icmp sgt i32 %455, 0
  br i1 %cmp4.i402, label %if.then5.i405, label %if.end.i403.if.end9.i409_crit_edge

if.end.i403.if.end9.i409_crit_edge:               ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i409

if.then5.i405:                                    ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #12
  %456 = ptrtoint ptr %arrayidx.i395 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %arrayidx.i395, align 4
  %call8.i404 = call i32 @regulator_set_load(ptr noundef %457, i32 noundef 0) #10
  br label %if.end9.i409

if.end9.i409:                                     ; preds = %if.then5.i405, %if.end.i403.if.end9.i409_crit_edge
  %458 = ptrtoint ptr %arrayidx.i395 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %arrayidx.i395, align 4
  %call12.i406 = call i32 @regulator_disable(ptr noundef %459) #10
  %inc.i407 = add nuw nsw i32 %i.03.i394, 1
  %exitcond.not.i408 = icmp eq i32 %inc.i407, %449
  br i1 %exitcond.not.i408, label %if.end9.i409.disable_fallback_proxy_reg_crit_edge, label %if.end9.i409.for.body.i398_crit_edge

if.end9.i409.for.body.i398_crit_edge:             ; preds = %if.end9.i409
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i398

if.end9.i409.disable_fallback_proxy_reg_crit_edge: ; preds = %if.end9.i409
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_fallback_proxy_reg

disable_fallback_proxy_reg:                       ; preds = %if.end9.i409.disable_fallback_proxy_reg_crit_edge, %disable_proxy_reg.disable_fallback_proxy_reg_crit_edge, %do.end19
  %ret.8 = phi i32 [ %call14, %do.end19 ], [ %ret.7, %disable_proxy_reg.disable_fallback_proxy_reg_crit_edge ], [ %ret.7, %if.end9.i409.disable_fallback_proxy_reg_crit_edge ]
  %460 = ptrtoint ptr %fallback_proxy_reg_count to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %fallback_proxy_reg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %461)
  %cmp2.i412 = icmp sgt i32 %461, 0
  br i1 %cmp2.i412, label %disable_fallback_proxy_reg.for.body.i417_crit_edge, label %disable_fallback_proxy_reg.disable_proxy_pds_crit_edge

disable_fallback_proxy_reg.disable_proxy_pds_crit_edge: ; preds = %disable_fallback_proxy_reg
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_proxy_pds

disable_fallback_proxy_reg.for.body.i417_crit_edge: ; preds = %disable_fallback_proxy_reg
  br label %for.body.i417

for.body.i417:                                    ; preds = %if.end9.i428.for.body.i417_crit_edge, %disable_fallback_proxy_reg.for.body.i417_crit_edge
  %i.03.i413 = phi i32 [ %inc.i426, %if.end9.i428.for.body.i417_crit_edge ], [ 0, %disable_fallback_proxy_reg.for.body.i417_crit_edge ]
  %arrayidx.i414 = getelementptr %struct.reg_info, ptr %fallback_proxy_regs, i32 %i.03.i413
  %uV.i415 = getelementptr %struct.reg_info, ptr %fallback_proxy_regs, i32 %i.03.i413, i32 1
  %462 = ptrtoint ptr %uV.i415 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %uV.i415, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %463)
  %cmp1.i416 = icmp sgt i32 %463, 0
  br i1 %cmp1.i416, label %if.then.i419, label %for.body.i417.if.end.i422_crit_edge

for.body.i417.if.end.i422_crit_edge:              ; preds = %for.body.i417
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i422

if.then.i419:                                     ; preds = %for.body.i417
  call void @__sanitizer_cov_trace_pc() #12
  %464 = ptrtoint ptr %arrayidx.i414 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %arrayidx.i414, align 4
  %call.i418 = call i32 @regulator_set_voltage(ptr noundef %465, i32 noundef 0, i32 noundef 2147483647) #10
  br label %if.end.i422

if.end.i422:                                      ; preds = %if.then.i419, %for.body.i417.if.end.i422_crit_edge
  %uA.i420 = getelementptr %struct.reg_info, ptr %fallback_proxy_regs, i32 %i.03.i413, i32 2
  %466 = ptrtoint ptr %uA.i420 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %uA.i420, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %467)
  %cmp4.i421 = icmp sgt i32 %467, 0
  br i1 %cmp4.i421, label %if.then5.i424, label %if.end.i422.if.end9.i428_crit_edge

if.end.i422.if.end9.i428_crit_edge:               ; preds = %if.end.i422
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i428

if.then5.i424:                                    ; preds = %if.end.i422
  call void @__sanitizer_cov_trace_pc() #12
  %468 = ptrtoint ptr %arrayidx.i414 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %arrayidx.i414, align 4
  %call8.i423 = call i32 @regulator_set_load(ptr noundef %469, i32 noundef 0) #10
  br label %if.end9.i428

if.end9.i428:                                     ; preds = %if.then5.i424, %if.end.i422.if.end9.i428_crit_edge
  %470 = ptrtoint ptr %arrayidx.i414 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %arrayidx.i414, align 4
  %call12.i425 = call i32 @regulator_disable(ptr noundef %471) #10
  %inc.i426 = add nuw nsw i32 %i.03.i413, 1
  %exitcond.not.i427 = icmp eq i32 %inc.i426, %461
  br i1 %exitcond.not.i427, label %if.end9.i428.disable_proxy_pds_crit_edge, label %if.end9.i428.for.body.i417_crit_edge

if.end9.i428.for.body.i417_crit_edge:             ; preds = %if.end9.i428
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i417

if.end9.i428.disable_proxy_pds_crit_edge:         ; preds = %if.end9.i428
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_proxy_pds

disable_proxy_pds:                                ; preds = %if.end9.i428.disable_proxy_pds_crit_edge, %disable_fallback_proxy_reg.disable_proxy_pds_crit_edge, %do.end10
  %ret.9 = phi i32 [ %call5, %do.end10 ], [ %ret.8, %disable_fallback_proxy_reg.disable_proxy_pds_crit_edge ], [ %ret.8, %if.end9.i428.disable_proxy_pds_crit_edge ]
  %472 = ptrtoint ptr %proxy_pd_count to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %proxy_pd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %473)
  %cmp1.not.i = icmp eq i32 %473, 0
  br i1 %cmp1.not.i, label %disable_proxy_pds.disable_irqs_crit_edge, label %disable_proxy_pds.for.body.i437_crit_edge

disable_proxy_pds.for.body.i437_crit_edge:        ; preds = %disable_proxy_pds
  br label %for.body.i437

disable_proxy_pds.disable_irqs_crit_edge:         ; preds = %disable_proxy_pds
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_irqs

for.body.i437:                                    ; preds = %for.body.i437.for.body.i437_crit_edge, %disable_proxy_pds.for.body.i437_crit_edge
  %i.02.i431 = phi i32 [ %inc.i435, %for.body.i437.for.body.i437_crit_edge ], [ 0, %disable_proxy_pds.for.body.i437_crit_edge ]
  %arrayidx.i432 = getelementptr ptr, ptr %proxy_pds, i32 %i.02.i431
  %474 = ptrtoint ptr %arrayidx.i432 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %arrayidx.i432, align 4
  %call.i433 = call i32 @dev_pm_genpd_set_performance_state(ptr noundef %475, i32 noundef 0) #10
  %476 = ptrtoint ptr %arrayidx.i432 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %arrayidx.i432, align 4
  %call.i.i434 = call i32 @__pm_runtime_idle(ptr noundef %477, i32 noundef 5) #10
  %inc.i435 = add nuw i32 %i.02.i431, 1
  %exitcond.not.i436 = icmp eq i32 %inc.i435, %473
  br i1 %exitcond.not.i436, label %for.body.i437.disable_irqs_crit_edge, label %for.body.i437.for.body.i437_crit_edge

for.body.i437.for.body.i437_crit_edge:            ; preds = %for.body.i437
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i437

for.body.i437.disable_irqs_crit_edge:             ; preds = %for.body.i437
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_irqs

disable_irqs:                                     ; preds = %for.body.i437.disable_irqs_crit_edge, %disable_proxy_pds.disable_irqs_crit_edge, %do.end
  %ret.10 = phi i32 [ %call.i.i, %do.end ], [ %ret.9, %disable_proxy_pds.disable_irqs_crit_edge ], [ %ret.9, %for.body.i437.disable_irqs_crit_edge ]
  %call184 = call i32 @qcom_q6v5_unprepare(ptr noundef %q6v5) #10
  br label %cleanup

cleanup:                                          ; preds = %disable_irqs, %if.end131, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.10, %disable_irqs ], [ 0, %if.end131 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_wait_for_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @q6v5_mba_reclaim(ptr noundef %qproc) unnamed_addr #2 align 64 {
entry:
  %next.i = alloca [2 x %struct.qcom_scm_vmperm], align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !437
  %dump_mba_loaded = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 35
  %1 = ptrtoint ptr %dump_mba_loaded to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %dump_mba_loaded, align 4
  %dp_size = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 40
  %2 = ptrtoint ptr %dp_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dp_size, align 4
  %halt_map = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 4
  %3 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %halt_map, align 4
  %halt_q6 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 6
  %5 = ptrtoint ptr %halt_q6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %halt_q6, align 4
  tail call fastcc void @q6v5proc_halt_axi_port(ptr noundef %qproc, ptr noundef %4, i32 noundef %6)
  %has_vq6 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 54
  %7 = ptrtoint ptr %has_vq6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_vq6, align 2, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %halt_map, align 4
  %halt_vq6 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 9
  %11 = ptrtoint ptr %halt_vq6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %halt_vq6, align 4
  tail call fastcc void @q6v5proc_halt_axi_port(ptr noundef %qproc, ptr noundef %10, i32 noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %halt_map, align 4
  %halt_modem = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 7
  %15 = ptrtoint ptr %halt_modem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %halt_modem, align 4
  tail call fastcc void @q6v5proc_halt_axi_port(ptr noundef %qproc, ptr noundef %14, i32 noundef %16)
  %17 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %halt_map, align 4
  %halt_nc = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 8
  %19 = ptrtoint ptr %halt_nc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %halt_nc, align 4
  tail call fastcc void @q6v5proc_halt_axi_port(ptr noundef %qproc, ptr noundef %18, i32 noundef %20)
  %version = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 58
  %21 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp = icmp eq i32 %22, 2
  br i1 %cmp, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %reg_base = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 2
  %23 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 48
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !514
  %26 = or i32 %25, 28672
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !515
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_base, align 4
  %add.ptr7 = getelementptr i8, ptr %30, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %26) #10, !srcloc !439
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %has_ext_cntl_regs = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 53
  %31 = ptrtoint ptr %has_ext_cntl_regs to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %has_ext_cntl_regs, align 1, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool9.not = icmp eq i8 %32, 0
  br i1 %tobool9.not, label %if.end8.if.end119_crit_edge, label %if.then10

if.end8.if.end119_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then10:                                        ; preds = %if.end8
  %conn_map = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 5
  %33 = ptrtoint ptr %conn_map to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %conn_map, align 4
  %rscc_disable = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 17
  %35 = ptrtoint ptr %rscc_disable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rscc_disable, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef %36, i32 noundef 1) #10
  %call12 = tail call i64 @ktime_get() #10
  %add.i = add i64 %call12, 200000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1193) #10
  %axim1_clk_off = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 14
  %37 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %halt_map, align 4
  %39 = ptrtoint ptr %axim1_clk_off to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %axim1_clk_off, align 4
  %call27349 = call i32 @regmap_read(ptr noundef %38, i32 noundef %40, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27349)
  %tobool28.not350 = icmp eq i32 %call27349, 0
  br i1 %tobool28.not350, label %if.then10.lor.lhs.false_crit_edge, label %if.then10.do.end54_crit_edge

if.then10.do.end54_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

if.then10.lor.lhs.false_crit_edge:                ; preds = %if.then10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then42.lor.lhs.false_crit_edge, %if.then10.lor.lhs.false_crit_edge
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool29.not = icmp eq i32 %42, 0
  br i1 %tobool29.not, label %lor.lhs.false.if.end55_crit_edge, label %land.lhs.true

lor.lhs.false.if.end55_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call33 = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call33, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call33, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then42

if.then42:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #10
  %43 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %halt_map, align 4
  %45 = ptrtoint ptr %axim1_clk_off to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %axim1_clk_off, align 4
  %call27 = call i32 @regmap_read(ptr noundef %44, i32 noundef %46, ptr noundef nonnull %val) #10
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then42.lor.lhs.false_crit_edge, label %if.then42.do.end54_crit_edge

if.then42.do.end54_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

if.then42.lor.lhs.false_crit_edge:                ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %47 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %halt_map, align 4
  %49 = ptrtoint ptr %axim1_clk_off to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %axim1_clk_off, align 4
  %call39 = call i32 @regmap_read(ptr noundef %48, i32 noundef %50, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool45.not = icmp eq i32 %call39, 0
  br i1 %tobool45.not, label %lor.rhs, label %for.end.do.end54_crit_edge

for.end.do.end54_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

lor.rhs:                                          ; preds = %for.end
  %51 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool46.not = icmp eq i32 %.pr, 0
  br i1 %tobool46.not, label %lor.rhs.if.end55_crit_edge, label %lor.rhs.do.end54_crit_edge

lor.rhs.do.end54_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

lor.rhs.if.end55_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

do.end54:                                         ; preds = %lor.rhs.do.end54_crit_edge, %for.end.do.end54_crit_edge, %if.then42.do.end54_crit_edge, %if.then10.do.end54_crit_edge
  %52 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.99) #13
  br label %if.end55

if.end55:                                         ; preds = %do.end54, %lor.rhs.if.end55_crit_edge, %lor.lhs.false.if.end55_crit_edge
  %call61 = call i64 @ktime_get() #10
  %add.i249 = add i64 %call61, 200000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1198) #10
  %crypto_clk_off = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 15
  %54 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %halt_map, align 4
  %56 = ptrtoint ptr %crypto_clk_off to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %crypto_clk_off, align 4
  %call77351 = call i32 @regmap_read(ptr noundef %55, i32 noundef %57, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77351)
  %tobool78.not352 = icmp eq i32 %call77351, 0
  br i1 %tobool78.not352, label %if.end55.lor.lhs.false79_crit_edge, label %if.end55.do.end116_crit_edge

if.end55.do.end116_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

if.end55.lor.lhs.false79_crit_edge:               ; preds = %if.end55
  br label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.then94.lor.lhs.false79_crit_edge, %if.end55.lor.lhs.false79_crit_edge
  %58 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool80.not = icmp eq i32 %59, 0
  br i1 %tobool80.not, label %lor.lhs.false79.if.end119_crit_edge, label %land.lhs.true84

lor.lhs.false79.if.end119_crit_edge:              ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

land.lhs.true84:                                  ; preds = %lor.lhs.false79
  %call85 = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call85, i64 %add.i249)
  %cmp3.i251 = icmp sgt i64 %call85, %add.i249
  br i1 %cmp3.i251, label %for.end98, label %if.then94

if.then94:                                        ; preds = %land.lhs.true84
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #10
  %60 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %halt_map, align 4
  %62 = ptrtoint ptr %crypto_clk_off to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %crypto_clk_off, align 4
  %call77 = call i32 @regmap_read(ptr noundef %61, i32 noundef %63, ptr noundef nonnull %val) #10
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then94.lor.lhs.false79_crit_edge, label %if.then94.do.end116_crit_edge

if.then94.do.end116_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

if.then94.lor.lhs.false79_crit_edge:              ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false79

for.end98:                                        ; preds = %land.lhs.true84
  %64 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %halt_map, align 4
  %66 = ptrtoint ptr %crypto_clk_off to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %crypto_clk_off, align 4
  %call91 = call i32 @regmap_read(ptr noundef %65, i32 noundef %67, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool100.not = icmp eq i32 %call91, 0
  br i1 %tobool100.not, label %lor.rhs101, label %for.end98.do.end116_crit_edge

for.end98.do.end116_crit_edge:                    ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

lor.rhs101:                                       ; preds = %for.end98
  %68 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr360 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr360)
  %tobool102.not = icmp eq i32 %.pr360, 0
  br i1 %tobool102.not, label %lor.rhs101.if.end119_crit_edge, label %lor.rhs101.do.end116_crit_edge

lor.rhs101.do.end116_crit_edge:                   ; preds = %lor.rhs101
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

lor.rhs101.if.end119_crit_edge:                   ; preds = %lor.rhs101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

do.end116:                                        ; preds = %lor.rhs101.do.end116_crit_edge, %for.end98.do.end116_crit_edge, %if.then94.do.end116_crit_edge, %if.end55.do.end116_crit_edge
  %69 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.178) #13
  br label %if.end119

if.end119:                                        ; preds = %do.end116, %lor.rhs101.if.end119_crit_edge, %lor.lhs.false79.if.end119_crit_edge, %if.end8.if.end119_crit_edge
  %71 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %halt_map, align 4
  %qaccept_mdm = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 11
  %73 = ptrtoint ptr %qaccept_mdm to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %qaccept_mdm, align 4
  call fastcc void @q6v5proc_disable_qchannel(ptr noundef %qproc, ptr noundef %72, i32 noundef %74)
  %75 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %halt_map, align 4
  %qaccept_cx = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 12
  %77 = ptrtoint ptr %qaccept_cx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %qaccept_cx, align 4
  call fastcc void @q6v5proc_disable_qchannel(ptr noundef %qproc, ptr noundef %76, i32 noundef %78)
  %79 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %halt_map, align 4
  %qaccept_axi = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 13
  %81 = ptrtoint ptr %qaccept_axi to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %qaccept_axi, align 4
  call fastcc void @q6v5proc_disable_qchannel(ptr noundef %qproc, ptr noundef %80, i32 noundef %82)
  call fastcc void @q6v5_reset_assert(ptr noundef %qproc)
  %reset_clks = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 22
  %reset_clk_count = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 26
  %83 = ptrtoint ptr %reset_clk_count to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %reset_clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp1.i = icmp sgt i32 %84, 0
  br i1 %cmp1.i, label %if.end119.for.body.i_crit_edge, label %if.end119.q6v5_clk_disable.exit_crit_edge

if.end119.q6v5_clk_disable.exit_crit_edge:        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_clk_disable.exit

if.end119.for.body.i_crit_edge:                   ; preds = %if.end119
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end119.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end119.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %reset_clks, i32 %i.02.i
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i, align 4
  call void @clk_disable(ptr noundef %86) #10
  call void @clk_unprepare(ptr noundef %86) #10
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %84
  br i1 %exitcond.not.i, label %for.body.i.q6v5_clk_disable.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.q6v5_clk_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_clk_disable.exit

q6v5_clk_disable.exit:                            ; preds = %for.body.i.q6v5_clk_disable.exit_crit_edge, %if.end119.q6v5_clk_disable.exit_crit_edge
  %active_clks = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 21
  %active_clk_count = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 25
  %87 = ptrtoint ptr %active_clk_count to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %active_clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp1.i254 = icmp sgt i32 %88, 0
  br i1 %cmp1.i254, label %q6v5_clk_disable.exit.for.body.i259_crit_edge, label %q6v5_clk_disable.exit.q6v5_clk_disable.exit260_crit_edge

q6v5_clk_disable.exit.q6v5_clk_disable.exit260_crit_edge: ; preds = %q6v5_clk_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_clk_disable.exit260

q6v5_clk_disable.exit.for.body.i259_crit_edge:    ; preds = %q6v5_clk_disable.exit
  br label %for.body.i259

for.body.i259:                                    ; preds = %for.body.i259.for.body.i259_crit_edge, %q6v5_clk_disable.exit.for.body.i259_crit_edge
  %i.02.i255 = phi i32 [ %inc.i257, %for.body.i259.for.body.i259_crit_edge ], [ 0, %q6v5_clk_disable.exit.for.body.i259_crit_edge ]
  %arrayidx.i256 = getelementptr ptr, ptr %active_clks, i32 %i.02.i255
  %89 = ptrtoint ptr %arrayidx.i256 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i256, align 4
  call void @clk_disable(ptr noundef %90) #10
  call void @clk_unprepare(ptr noundef %90) #10
  %inc.i257 = add nuw nsw i32 %i.02.i255, 1
  %exitcond.not.i258 = icmp eq i32 %inc.i257, %88
  br i1 %exitcond.not.i258, label %for.body.i259.q6v5_clk_disable.exit260_crit_edge, label %for.body.i259.for.body.i259_crit_edge

for.body.i259.for.body.i259_crit_edge:            ; preds = %for.body.i259
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i259

for.body.i259.q6v5_clk_disable.exit260_crit_edge: ; preds = %for.body.i259
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_clk_disable.exit260

q6v5_clk_disable.exit260:                         ; preds = %for.body.i259.q6v5_clk_disable.exit260_crit_edge, %q6v5_clk_disable.exit.q6v5_clk_disable.exit260_crit_edge
  %active_regs = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 29
  %active_reg_count = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 32
  %91 = ptrtoint ptr %active_reg_count to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %active_reg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp2.i = icmp sgt i32 %92, 0
  br i1 %cmp2.i, label %q6v5_clk_disable.exit260.for.body.i263_crit_edge, label %q6v5_clk_disable.exit260.q6v5_regulator_disable.exit_crit_edge

q6v5_clk_disable.exit260.q6v5_regulator_disable.exit_crit_edge: ; preds = %q6v5_clk_disable.exit260
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_regulator_disable.exit

q6v5_clk_disable.exit260.for.body.i263_crit_edge: ; preds = %q6v5_clk_disable.exit260
  br label %for.body.i263

for.body.i263:                                    ; preds = %if.end9.i.for.body.i263_crit_edge, %q6v5_clk_disable.exit260.for.body.i263_crit_edge
  %i.03.i = phi i32 [ %inc.i264, %if.end9.i.for.body.i263_crit_edge ], [ 0, %q6v5_clk_disable.exit260.for.body.i263_crit_edge ]
  %arrayidx.i261 = getelementptr %struct.reg_info, ptr %active_regs, i32 %i.03.i
  %uV.i = getelementptr %struct.reg_info, ptr %active_regs, i32 %i.03.i, i32 1
  %93 = ptrtoint ptr %uV.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %uV.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp1.i262 = icmp sgt i32 %94, 0
  br i1 %cmp1.i262, label %if.then.i, label %for.body.i263.if.end.i_crit_edge

for.body.i263.if.end.i_crit_edge:                 ; preds = %for.body.i263
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i263
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %arrayidx.i261 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i261, align 4
  %call.i = call i32 @regulator_set_voltage(ptr noundef %96, i32 noundef 0, i32 noundef 2147483647) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i263.if.end.i_crit_edge
  %uA.i = getelementptr %struct.reg_info, ptr %active_regs, i32 %i.03.i, i32 2
  %97 = ptrtoint ptr %uA.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %uA.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp4.i = icmp sgt i32 %98, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %arrayidx.i261 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i261, align 4
  %call8.i = call i32 @regulator_set_load(ptr noundef %100, i32 noundef 0) #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i, %if.end.i.if.end9.i_crit_edge
  %101 = ptrtoint ptr %arrayidx.i261 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i261, align 4
  %call12.i = call i32 @regulator_disable(ptr noundef %102) #10
  %inc.i264 = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i265 = icmp eq i32 %inc.i264, %92
  br i1 %exitcond.not.i265, label %if.end9.i.q6v5_regulator_disable.exit_crit_edge, label %if.end9.i.for.body.i263_crit_edge

if.end9.i.for.body.i263_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i263

if.end9.i.q6v5_regulator_disable.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_regulator_disable.exit

q6v5_regulator_disable.exit:                      ; preds = %if.end9.i.q6v5_regulator_disable.exit_crit_edge, %q6v5_clk_disable.exit260.q6v5_regulator_disable.exit_crit_edge
  %mba_perm = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 56
  %mba_phys = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 38
  %103 = ptrtoint ptr %mba_phys to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mba_phys, align 4
  %mba_size = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 39
  %105 = ptrtoint ptr %mba_size to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mba_size, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %next.i) #10
  %107 = getelementptr inbounds %struct.qcom_scm_vmperm, ptr %next.i, i32 0, i32 1
  %need_mem_protection.i = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 48
  %108 = getelementptr inbounds i8, ptr %next.i, i32 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 8)
  store i64 -1, ptr %108, align 4
  %110 = ptrtoint ptr %need_mem_protection.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %need_mem_protection.i, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i = icmp eq i8 %111, 0
  br i1 %tobool.not.i, label %q6v5_regulator_disable.exit.q6v5_xfer_mem_ownership.exit.thread_crit_edge, label %if.end.i267

q6v5_regulator_disable.exit.q6v5_xfer_mem_ownership.exit.thread_crit_edge: ; preds = %q6v5_regulator_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit.thread

if.end.i267:                                      ; preds = %q6v5_regulator_disable.exit
  %112 = ptrtoint ptr %mba_perm to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mba_perm, align 4
  %114 = and i32 %113, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %114)
  %115 = icmp eq i32 %114, 8
  br i1 %115, label %if.end.i267.q6v5_xfer_mem_ownership.exit.thread_crit_edge, label %q6v5_xfer_mem_ownership.exit

if.end.i267.q6v5_xfer_mem_ownership.exit.thread_crit_edge: ; preds = %if.end.i267
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit.thread

q6v5_xfer_mem_ownership.exit.thread:              ; preds = %if.end.i267.q6v5_xfer_mem_ownership.exit.thread_crit_edge, %q6v5_regulator_disable.exit.q6v5_xfer_mem_ownership.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i) #10
  br label %if.end148

q6v5_xfer_mem_ownership.exit:                     ; preds = %if.end.i267
  %116 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 3, ptr %next.i, align 4
  %117 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 7, ptr %107, align 4
  %add.i268 = add i32 %106, 4095
  %and30.i = and i32 %add.i268, -4096
  %call.i269 = call i32 @qcom_scm_assign_mem(i32 noundef %104, i32 noundef %and30.i, ptr noundef %mba_perm, ptr noundef nonnull %next.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %tobool129.not = icmp eq i32 %call.i269, 0
  br i1 %tobool129.not, label %q6v5_xfer_mem_ownership.exit.if.end148_crit_edge, label %do.end142, !prof !516

q6v5_xfer_mem_ownership.exit.if.end148_crit_edge: ; preds = %q6v5_xfer_mem_ownership.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

do.end142:                                        ; preds = %q6v5_xfer_mem_ownership.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1222, i32 noundef 9, ptr noundef null) #10
  br label %if.end148

if.end148:                                        ; preds = %do.end142, %q6v5_xfer_mem_ownership.exit.if.end148_crit_edge, %q6v5_xfer_mem_ownership.exit.thread
  %q6v5 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 20
  %call156 = call i32 @qcom_q6v5_unprepare(ptr noundef %q6v5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end148.if.end164_crit_edge, label %if.then158

if.end148.if.end164_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.then158:                                       ; preds = %if.end148
  %proxy_pds = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 24
  %proxy_pd_count = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 28
  %118 = ptrtoint ptr %proxy_pd_count to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %proxy_pd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp1.not.i = icmp eq i32 %119, 0
  br i1 %cmp1.not.i, label %if.then158.q6v5_pds_disable.exit_crit_edge, label %if.then158.for.body.i276_crit_edge

if.then158.for.body.i276_crit_edge:               ; preds = %if.then158
  br label %for.body.i276

if.then158.q6v5_pds_disable.exit_crit_edge:       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_pds_disable.exit

for.body.i276:                                    ; preds = %for.body.i276.for.body.i276_crit_edge, %if.then158.for.body.i276_crit_edge
  %i.02.i271 = phi i32 [ %inc.i274, %for.body.i276.for.body.i276_crit_edge ], [ 0, %if.then158.for.body.i276_crit_edge ]
  %arrayidx.i272 = getelementptr ptr, ptr %proxy_pds, i32 %i.02.i271
  %120 = ptrtoint ptr %arrayidx.i272 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i272, align 4
  %call.i273 = call i32 @dev_pm_genpd_set_performance_state(ptr noundef %121, i32 noundef 0) #10
  %122 = ptrtoint ptr %arrayidx.i272 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx.i272, align 4
  %call.i.i = call i32 @__pm_runtime_idle(ptr noundef %123, i32 noundef 5) #10
  %inc.i274 = add nuw i32 %i.02.i271, 1
  %exitcond.not.i275 = icmp eq i32 %inc.i274, %119
  br i1 %exitcond.not.i275, label %for.body.i276.q6v5_pds_disable.exit_crit_edge, label %for.body.i276.for.body.i276_crit_edge

for.body.i276.for.body.i276_crit_edge:            ; preds = %for.body.i276
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i276

for.body.i276.q6v5_pds_disable.exit_crit_edge:    ; preds = %for.body.i276
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_pds_disable.exit

q6v5_pds_disable.exit:                            ; preds = %for.body.i276.q6v5_pds_disable.exit_crit_edge, %if.then158.q6v5_pds_disable.exit_crit_edge
  %proxy_clks = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 23
  %proxy_clk_count = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 27
  %124 = ptrtoint ptr %proxy_clk_count to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %proxy_clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp1.i277 = icmp sgt i32 %125, 0
  br i1 %cmp1.i277, label %q6v5_pds_disable.exit.for.body.i282_crit_edge, label %q6v5_pds_disable.exit.q6v5_clk_disable.exit283_crit_edge

q6v5_pds_disable.exit.q6v5_clk_disable.exit283_crit_edge: ; preds = %q6v5_pds_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_clk_disable.exit283

q6v5_pds_disable.exit.for.body.i282_crit_edge:    ; preds = %q6v5_pds_disable.exit
  br label %for.body.i282

for.body.i282:                                    ; preds = %for.body.i282.for.body.i282_crit_edge, %q6v5_pds_disable.exit.for.body.i282_crit_edge
  %i.02.i278 = phi i32 [ %inc.i280, %for.body.i282.for.body.i282_crit_edge ], [ 0, %q6v5_pds_disable.exit.for.body.i282_crit_edge ]
  %arrayidx.i279 = getelementptr ptr, ptr %proxy_clks, i32 %i.02.i278
  %126 = ptrtoint ptr %arrayidx.i279 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i279, align 4
  call void @clk_disable(ptr noundef %127) #10
  call void @clk_unprepare(ptr noundef %127) #10
  %inc.i280 = add nuw nsw i32 %i.02.i278, 1
  %exitcond.not.i281 = icmp eq i32 %inc.i280, %125
  br i1 %exitcond.not.i281, label %for.body.i282.q6v5_clk_disable.exit283_crit_edge, label %for.body.i282.for.body.i282_crit_edge

for.body.i282.for.body.i282_crit_edge:            ; preds = %for.body.i282
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i282

for.body.i282.q6v5_clk_disable.exit283_crit_edge: ; preds = %for.body.i282
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_clk_disable.exit283

q6v5_clk_disable.exit283:                         ; preds = %for.body.i282.q6v5_clk_disable.exit283_crit_edge, %q6v5_pds_disable.exit.q6v5_clk_disable.exit283_crit_edge
  %fallback_proxy_regs = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 31
  %fallback_proxy_reg_count = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 34
  %128 = ptrtoint ptr %fallback_proxy_reg_count to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %fallback_proxy_reg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp2.i284 = icmp sgt i32 %129, 0
  br i1 %cmp2.i284, label %q6v5_clk_disable.exit283.for.body.i289_crit_edge, label %q6v5_clk_disable.exit283.q6v5_regulator_disable.exit301_crit_edge

q6v5_clk_disable.exit283.q6v5_regulator_disable.exit301_crit_edge: ; preds = %q6v5_clk_disable.exit283
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_regulator_disable.exit301

q6v5_clk_disable.exit283.for.body.i289_crit_edge: ; preds = %q6v5_clk_disable.exit283
  br label %for.body.i289

for.body.i289:                                    ; preds = %if.end9.i300.for.body.i289_crit_edge, %q6v5_clk_disable.exit283.for.body.i289_crit_edge
  %i.03.i285 = phi i32 [ %inc.i298, %if.end9.i300.for.body.i289_crit_edge ], [ 0, %q6v5_clk_disable.exit283.for.body.i289_crit_edge ]
  %arrayidx.i286 = getelementptr %struct.reg_info, ptr %fallback_proxy_regs, i32 %i.03.i285
  %uV.i287 = getelementptr %struct.reg_info, ptr %fallback_proxy_regs, i32 %i.03.i285, i32 1
  %130 = ptrtoint ptr %uV.i287 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %uV.i287, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp1.i288 = icmp sgt i32 %131, 0
  br i1 %cmp1.i288, label %if.then.i291, label %for.body.i289.if.end.i294_crit_edge

for.body.i289.if.end.i294_crit_edge:              ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i294

if.then.i291:                                     ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %arrayidx.i286 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx.i286, align 4
  %call.i290 = call i32 @regulator_set_voltage(ptr noundef %133, i32 noundef 0, i32 noundef 2147483647) #10
  br label %if.end.i294

if.end.i294:                                      ; preds = %if.then.i291, %for.body.i289.if.end.i294_crit_edge
  %uA.i292 = getelementptr %struct.reg_info, ptr %fallback_proxy_regs, i32 %i.03.i285, i32 2
  %134 = ptrtoint ptr %uA.i292 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %uA.i292, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp4.i293 = icmp sgt i32 %135, 0
  br i1 %cmp4.i293, label %if.then5.i296, label %if.end.i294.if.end9.i300_crit_edge

if.end.i294.if.end9.i300_crit_edge:               ; preds = %if.end.i294
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i300

if.then5.i296:                                    ; preds = %if.end.i294
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %arrayidx.i286 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i286, align 4
  %call8.i295 = call i32 @regulator_set_load(ptr noundef %137, i32 noundef 0) #10
  br label %if.end9.i300

if.end9.i300:                                     ; preds = %if.then5.i296, %if.end.i294.if.end9.i300_crit_edge
  %138 = ptrtoint ptr %arrayidx.i286 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i286, align 4
  %call12.i297 = call i32 @regulator_disable(ptr noundef %139) #10
  %inc.i298 = add nuw nsw i32 %i.03.i285, 1
  %exitcond.not.i299 = icmp eq i32 %inc.i298, %129
  br i1 %exitcond.not.i299, label %if.end9.i300.q6v5_regulator_disable.exit301_crit_edge, label %if.end9.i300.for.body.i289_crit_edge

if.end9.i300.for.body.i289_crit_edge:             ; preds = %if.end9.i300
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i289

if.end9.i300.q6v5_regulator_disable.exit301_crit_edge: ; preds = %if.end9.i300
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_regulator_disable.exit301

q6v5_regulator_disable.exit301:                   ; preds = %if.end9.i300.q6v5_regulator_disable.exit301_crit_edge, %q6v5_clk_disable.exit283.q6v5_regulator_disable.exit301_crit_edge
  %proxy_regs = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 30
  %proxy_reg_count = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 33
  %140 = ptrtoint ptr %proxy_reg_count to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %proxy_reg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp2.i302 = icmp sgt i32 %141, 0
  br i1 %cmp2.i302, label %q6v5_regulator_disable.exit301.for.body.i307_crit_edge, label %q6v5_regulator_disable.exit301.if.end164_crit_edge

q6v5_regulator_disable.exit301.if.end164_crit_edge: ; preds = %q6v5_regulator_disable.exit301
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

q6v5_regulator_disable.exit301.for.body.i307_crit_edge: ; preds = %q6v5_regulator_disable.exit301
  br label %for.body.i307

for.body.i307:                                    ; preds = %if.end9.i318.for.body.i307_crit_edge, %q6v5_regulator_disable.exit301.for.body.i307_crit_edge
  %i.03.i303 = phi i32 [ %inc.i316, %if.end9.i318.for.body.i307_crit_edge ], [ 0, %q6v5_regulator_disable.exit301.for.body.i307_crit_edge ]
  %arrayidx.i304 = getelementptr %struct.reg_info, ptr %proxy_regs, i32 %i.03.i303
  %uV.i305 = getelementptr %struct.reg_info, ptr %proxy_regs, i32 %i.03.i303, i32 1
  %142 = ptrtoint ptr %uV.i305 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %uV.i305, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp1.i306 = icmp sgt i32 %143, 0
  br i1 %cmp1.i306, label %if.then.i309, label %for.body.i307.if.end.i312_crit_edge

for.body.i307.if.end.i312_crit_edge:              ; preds = %for.body.i307
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i312

if.then.i309:                                     ; preds = %for.body.i307
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %arrayidx.i304 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx.i304, align 4
  %call.i308 = call i32 @regulator_set_voltage(ptr noundef %145, i32 noundef 0, i32 noundef 2147483647) #10
  br label %if.end.i312

if.end.i312:                                      ; preds = %if.then.i309, %for.body.i307.if.end.i312_crit_edge
  %uA.i310 = getelementptr %struct.reg_info, ptr %proxy_regs, i32 %i.03.i303, i32 2
  %146 = ptrtoint ptr %uA.i310 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %uA.i310, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp4.i311 = icmp sgt i32 %147, 0
  br i1 %cmp4.i311, label %if.then5.i314, label %if.end.i312.if.end9.i318_crit_edge

if.end.i312.if.end9.i318_crit_edge:               ; preds = %if.end.i312
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i318

if.then5.i314:                                    ; preds = %if.end.i312
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %arrayidx.i304 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i304, align 4
  %call8.i313 = call i32 @regulator_set_load(ptr noundef %149, i32 noundef 0) #10
  br label %if.end9.i318

if.end9.i318:                                     ; preds = %if.then5.i314, %if.end.i312.if.end9.i318_crit_edge
  %150 = ptrtoint ptr %arrayidx.i304 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i304, align 4
  %call12.i315 = call i32 @regulator_disable(ptr noundef %151) #10
  %inc.i316 = add nuw nsw i32 %i.03.i303, 1
  %exitcond.not.i317 = icmp eq i32 %inc.i316, %141
  br i1 %exitcond.not.i317, label %if.end9.i318.if.end164_crit_edge, label %if.end9.i318.for.body.i307_crit_edge

if.end9.i318.for.body.i307_crit_edge:             ; preds = %if.end9.i318
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i307

if.end9.i318.if.end164_crit_edge:                 ; preds = %if.end9.i318
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.end164:                                        ; preds = %if.end9.i318.if.end164_crit_edge, %q6v5_regulator_disable.exit301.if.end164_crit_edge, %if.end148.if.end164_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @q6v5_dump_mba_logs(ptr noundef %qproc) unnamed_addr #2 align 64 {
entry:
  %next.i = alloca [2 x %struct.qcom_scm_vmperm], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rproc1 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 1
  %0 = ptrtoint ptr %rproc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rproc1, align 4
  %has_mba_logs = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 50
  %2 = ptrtoint ptr %has_mba_logs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_mba_logs, align 2, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mba_perm = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 56
  %mba_phys = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 38
  %4 = ptrtoint ptr %mba_phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mba_phys, align 4
  %mba_size = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 39
  %6 = ptrtoint ptr %mba_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mba_size, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %next.i) #10
  %8 = getelementptr inbounds %struct.qcom_scm_vmperm, ptr %next.i, i32 0, i32 1
  %need_mem_protection.i = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 48
  %9 = getelementptr inbounds i8, ptr %next.i, i32 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 -1, ptr %9, align 4
  %11 = ptrtoint ptr %need_mem_protection.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %need_mem_protection.i, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end.q6v5_xfer_mem_ownership.exit.thread_crit_edge, label %if.end.i

if.end.q6v5_xfer_mem_ownership.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit.thread

if.end.i:                                         ; preds = %if.end
  %13 = ptrtoint ptr %mba_perm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mba_perm, align 4
  %15 = and i32 %14, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %if.end.i.q6v5_xfer_mem_ownership.exit.thread_crit_edge, label %q6v5_xfer_mem_ownership.exit

if.end.i.q6v5_xfer_mem_ownership.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit.thread

q6v5_xfer_mem_ownership.exit.thread:              ; preds = %if.end.i.q6v5_xfer_mem_ownership.exit.thread_crit_edge, %if.end.q6v5_xfer_mem_ownership.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i) #10
  br label %if.end4

q6v5_xfer_mem_ownership.exit:                     ; preds = %if.end.i
  %17 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %next.i, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 7, ptr %8, align 4
  %add.i = add i32 %7, 4095
  %and30.i = and i32 %add.i, -4096
  %call.i = call i32 @qcom_scm_assign_mem(i32 noundef %5, i32 noundef %and30.i, ptr noundef %mba_perm, ptr noundef nonnull %next.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %q6v5_xfer_mem_ownership.exit.if.end4_crit_edge, label %q6v5_xfer_mem_ownership.exit.cleanup_crit_edge

q6v5_xfer_mem_ownership.exit.cleanup_crit_edge:   ; preds = %q6v5_xfer_mem_ownership.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

q6v5_xfer_mem_ownership.exit.if.end4_crit_edge:   ; preds = %q6v5_xfer_mem_ownership.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %q6v5_xfer_mem_ownership.exit.if.end4_crit_edge, %q6v5_xfer_mem_ownership.exit.thread
  %19 = ptrtoint ptr %mba_phys to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mba_phys, align 4
  %21 = ptrtoint ptr %mba_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mba_size, align 4
  %call7 = call ptr @memremap(i32 noundef %20, i32 noundef %22, i32 noundef 4) #10
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %call11 = call noalias ptr @vmalloc(i32 noundef 4096) #15
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %23 = call ptr @memcpy(ptr %call11, ptr %call7, i32 4096)
  %dev = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 6
  call void @dev_coredumpv(ptr noundef %dev, ptr noundef nonnull %call11, i32 noundef 4096, i32 noundef 3264) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  call void @memunmap(ptr noundef nonnull %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end4.cleanup_crit_edge, %q6v5_xfer_mem_ownership.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @q6v5_regulator_enable(ptr nocapture noundef readonly %qproc, ptr nocapture noundef readonly %regs, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp96 = icmp sgt i32 %count, 0
  br i1 %cmp96, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.097 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.reg_info, ptr %regs, i32 %i.097
  %uV = getelementptr %struct.reg_info, ptr %regs, i32 %i.097, i32 1
  %0 = ptrtoint ptr %uV to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uV, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then, label %for.body.if.end6_crit_edge

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %for.body
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @regulator_set_voltage(ptr noundef %3, i32 noundef %1, i32 noundef 2147483647) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qproc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.89, i32 noundef %i.097) #13
  br label %for.body35.preheader

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %for.body.if.end6_crit_edge
  %uA = getelementptr %struct.reg_info, ptr %regs, i32 %i.097, i32 2
  %6 = ptrtoint ptr %uA to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uA, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8 = icmp sgt i32 %7, 0
  br i1 %cmp8, label %if.then9, label %if.end6.if.end22_crit_edge

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then9:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call14 = tail call i32 @regulator_set_load(ptr noundef %9, i32 noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.then9.if.end22_crit_edge

if.then9.if.end22_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.end19:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qproc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.92) #13
  br label %for.body35.preheader

if.end22:                                         ; preds = %if.then9.if.end22_crit_edge, %if.end6.if.end22_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call25 = tail call i32 @regulator_enable(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.inc, label %do.end30

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qproc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.95) #13
  br label %for.body35.preheader

for.inc:                                          ; preds = %if.end22
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body35.preheader:                             ; preds = %do.end30, %do.end19, %do.end
  %ret.0 = phi i32 [ %call, %do.end ], [ %call14, %do.end19 ], [ %call25, %do.end30 ]
  br label %for.body35

for.body35:                                       ; preds = %if.end51.for.body35_crit_edge, %for.body35.preheader
  %i.199 = phi i32 [ %dec, %if.end51.for.body35_crit_edge ], [ %i.097, %for.body35.preheader ]
  %arrayidx36 = getelementptr %struct.reg_info, ptr %regs, i32 %i.199
  %uV37 = getelementptr %struct.reg_info, ptr %regs, i32 %i.199, i32 1
  %16 = ptrtoint ptr %uV37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uV37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp38 = icmp sgt i32 %17, 0
  br i1 %cmp38, label %if.then39, label %for.body35.if.end43_crit_edge

for.body35.if.end43_crit_edge:                    ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then39:                                        ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx36, align 4
  %call42 = tail call i32 @regulator_set_voltage(ptr noundef %19, i32 noundef 0, i32 noundef 2147483647) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %for.body35.if.end43_crit_edge
  %uA45 = getelementptr %struct.reg_info, ptr %regs, i32 %i.199, i32 2
  %20 = ptrtoint ptr %uA45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uA45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp46 = icmp sgt i32 %21, 0
  br i1 %cmp46, label %if.then47, label %if.end43.if.end51_crit_edge

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx36, align 4
  %call50 = tail call i32 @regulator_set_load(ptr noundef %23, i32 noundef 0) #10
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.end43.if.end51_crit_edge
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx36, align 4
  %call54 = tail call i32 @regulator_disable(ptr noundef %25) #10
  %dec = add nsw i32 %i.199, -1
  %cmp34 = icmp sgt i32 %i.199, 0
  br i1 %cmp34, label %if.end51.for.body35_crit_edge, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end51.for.body35_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35

cleanup:                                          ; preds = %if.end51.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.end51.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @q6v5_clk_enable(ptr noundef %dev, ptr nocapture noundef readonly %clks, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp26 = icmp sgt i32 %count, 0
  br i1 %cmp26, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %clks, i32 %i.027
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %for.body.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %for.body.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.97) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.027)
  %cmp229.not = icmp eq i32 %i.027, 0
  br i1 %cmp229.not, label %do.end.cleanup_crit_edge, label %do.end.for.body3_crit_edge

do.end.for.body3_crit_edge:                       ; preds = %do.end
  br label %for.body3

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %if.end.i
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %do.end.for.body3_crit_edge
  %i.130.in = phi i32 [ %i.130, %for.body3.for.body3_crit_edge ], [ %i.027, %do.end.for.body3_crit_edge ]
  %i.130 = add nsw i32 %i.130.in, -1
  %arrayidx4 = getelementptr ptr, ptr %clks, i32 %i.130
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %cmp2 = icmp sgt i32 %i.130.in, 1
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.cleanup_crit_edge

for.body3.cleanup_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3

cleanup:                                          ; preds = %for.body3.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %for.body3.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @q6v5_reset_deassert(ptr nocapture noundef readonly %qproc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %has_alt_reset = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 49
  %0 = ptrtoint ptr %has_alt_reset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_alt_reset, align 1, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdc_reset = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 19
  %2 = ptrtoint ptr %pdc_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdc_reset, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !517
  tail call void @arm_heavy_mb() #10
  %rmb_base = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 3
  %4 = ptrtoint ptr %rmb_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmb_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #10, !srcloc !439
  %mss_restart = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 18
  %6 = ptrtoint ptr %mss_restart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mss_restart, align 4
  %call1 = tail call i32 @reset_control_reset(ptr noundef %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !518
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %rmb_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmb_base, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #10, !srcloc !439
  %10 = ptrtoint ptr %pdc_reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdc_reset, align 4
  %call8 = tail call i32 @reset_control_deassert(ptr noundef %11) #10
  br label %if.end17

if.else:                                          ; preds = %entry
  %has_spare_reg = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 51
  %12 = ptrtoint ptr %has_spare_reg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_spare_reg, align 1, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.else.if.then11_crit_edge

if.else.if.then11_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.else
  %has_ext_cntl_regs = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 53
  %14 = ptrtoint ptr %has_ext_cntl_regs to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_ext_cntl_regs, align 1, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool10.not = icmp eq i8 %15, 0
  br i1 %tobool10.not, label %if.else14, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.else.if.then11_crit_edge
  %mss_restart12 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 18
  %16 = ptrtoint ptr %mss_restart12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mss_restart12, align 4
  %call13 = tail call i32 @reset_control_reset(ptr noundef %17) #10
  br label %if.end17

if.else14:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %mss_restart15 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 18
  %18 = ptrtoint ptr %mss_restart15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mss_restart15, align 4
  %call16 = tail call i32 @reset_control_deassert(ptr noundef %19) #10
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then11, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call13, %if.then11 ], [ %call16, %if.else14 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @q6v5proc_halt_axi_port(ptr nocapture noundef readonly %qproc, ptr noundef %halt_map, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !437
  %add = add i32 %offset, 8
  %call = call i32 @regmap_read(ptr noundef %halt_map, i32 noundef %add, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call i32 @regmap_write(ptr noundef %halt_map, i32 noundef %offset, i32 noundef 1) #10
  %call4 = call i64 @ktime_get() #10
  %add.i = add i64 %call4, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 921) #10
  %add14 = add i32 %offset, 4
  %call1569 = call i32 @regmap_read(ptr noundef %halt_map, i32 noundef %add14, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1569)
  %tobool16.not70 = icmp eq i32 %call1569, 0
  br i1 %tobool16.not70, label %if.end.lor.lhs.false_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then30.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool17.not = icmp eq i32 %4, 0
  br i1 %tobool17.not, label %land.lhs.true21, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true21:                                  ; preds = %lor.lhs.false
  %call22 = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call22, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call22, %add.i
  br i1 %cmp3.i, label %if.then25, label %if.then30

if.then25:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = call i32 @regmap_read(ptr noundef %halt_map, i32 noundef %add14, ptr noundef nonnull %val) #10
  br label %for.end

if.then30:                                        ; preds = %land.lhs.true21
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #10
  %call15 = call i32 @regmap_read(ptr noundef %halt_map, i32 noundef %add14, ptr noundef nonnull %val) #10
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then30.lor.lhs.false_crit_edge, label %if.then30.for.end_crit_edge

if.then30.for.end_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then30.lor.lhs.false_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

for.end:                                          ; preds = %if.then30.for.end_crit_edge, %if.then25, %lor.lhs.false.for.end_crit_edge, %if.end.for.end_crit_edge
  %call39 = call i32 @regmap_read(ptr noundef %halt_map, i32 noundef %add, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %for.end.do.end46_crit_edge

for.end.do.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

lor.lhs.false41:                                  ; preds = %for.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool42.not = icmp eq i32 %6, 0
  br i1 %tobool42.not, label %lor.lhs.false41.do.end46_crit_edge, label %lor.lhs.false41.if.end47_crit_edge

lor.lhs.false41.if.end47_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

lor.lhs.false41.do.end46_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

do.end46:                                         ; preds = %lor.lhs.false41.do.end46_crit_edge, %for.end.do.end46_crit_edge
  %7 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.125) #13
  br label %if.end47

if.end47:                                         ; preds = %do.end46, %lor.lhs.false41.if.end47_crit_edge
  %call49 = call i32 @regmap_write(ptr noundef %halt_map, i32 noundef %offset, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @q6v5proc_disable_qchannel(ptr nocapture noundef readonly %qproc, ptr noundef %map, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !437
  %has_qaccept_regs = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 52
  %1 = ptrtoint ptr %has_qaccept_regs to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %has_qaccept_regs, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %add = add i32 %offset, 4
  %add34 = add i32 %offset, 12
  %add40 = add i32 %offset, 8
  br label %while.cond

while.cond:                                       ; preds = %while.end.while.cond_crit_edge, %while.cond.preheader
  %nretry.0 = phi i32 [ %dec, %while.end.while.cond_crit_edge ], [ 10, %while.cond.preheader ]
  %takedown_complete.0.off0 = phi i1 [ %takedown_complete.1.off0, %while.end.while.cond_crit_edge ], [ false, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nretry.0)
  %tobool2.not = icmp eq i32 %nretry.0, 0
  %or.cond = select i1 %takedown_complete.0.off0, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %while.cond.while.end59_crit_edge, label %while.body

while.cond.while.end59_crit_edge:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end59

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %nretry.0, -1
  %call = call i64 @ktime_get() #10
  %add.i = add i64 %call, 50000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 869) #10
  %call12104 = call i32 @regmap_read(ptr noundef %map, i32 noundef %add, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12104)
  %tobool13.not105 = icmp eq i32 %call12104, 0
  br i1 %tobool13.not105, label %while.body.lor.lhs.false_crit_edge, label %while.body.for.end_crit_edge

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

while.body.lor.lhs.false_crit_edge:               ; preds = %while.body
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then26.lor.lhs.false_crit_edge, %while.body.lor.lhs.false_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool14.not = icmp eq i32 %4, 0
  br i1 %tobool14.not, label %lor.lhs.false.for.end_crit_edge, label %land.lhs.true

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call18 = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %if.then21, label %if.then26

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = call i32 @regmap_read(ptr noundef %map, i32 noundef %add, ptr noundef nonnull %val) #10
  br label %for.end

if.then26:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #10
  %call12 = call i32 @regmap_read(ptr noundef %map, i32 noundef %add, ptr noundef nonnull %val) #10
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then26.lor.lhs.false_crit_edge, label %if.then26.for.end_crit_edge

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then26.lor.lhs.false_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

for.end:                                          ; preds = %if.then26.for.end_crit_edge, %if.then21, %lor.lhs.false.for.end_crit_edge, %while.body.for.end_crit_edge
  %call35 = call i32 @regmap_write(ptr noundef %map, i32 noundef %add34, i32 noundef 0) #10
  br label %while.body38

while.body38:                                     ; preds = %if.end55.while.body38_crit_edge, %for.end
  %retry.0106 = phi i32 [ 10, %for.end ], [ %dec39, %if.end55.while.body38_crit_edge ]
  call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #10
  %dec39 = add nsw i32 %retry.0106, -1
  %call41 = call i32 @regmap_read(ptr noundef %map, i32 noundef %add40, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true43, label %while.body38.if.end48_crit_edge

while.body38.if.end48_crit_edge:                  ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

land.lhs.true43:                                  ; preds = %while.body38
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool44.not = icmp eq i32 %6, 0
  br i1 %tobool44.not, label %land.lhs.true43.if.end48_crit_edge, label %if.then45

land.lhs.true43.if.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  %call47 = call i32 @regmap_write(ptr noundef %map, i32 noundef %add34, i32 noundef 1) #10
  br label %while.end

if.end48:                                         ; preds = %land.lhs.true43.if.end48_crit_edge, %while.body38.if.end48_crit_edge
  %call50 = call i32 @regmap_read(ptr noundef %map, i32 noundef %offset, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true52, label %if.end48.if.end55_crit_edge

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true52:                                  ; preds = %if.end48
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool53.not = icmp eq i32 %8, 0
  br i1 %tobool53.not, label %land.lhs.true52.while.end_crit_edge, label %land.lhs.true52.if.end55_crit_edge

land.lhs.true52.if.end55_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true52.while.end_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end55:                                         ; preds = %land.lhs.true52.if.end55_crit_edge, %if.end48.if.end55_crit_edge
  %tobool37.not = icmp eq i32 %dec39, 0
  br i1 %tobool37.not, label %if.end55.do.end64_crit_edge, label %if.end55.while.body38_crit_edge

if.end55.while.body38_crit_edge:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body38

if.end55.do.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end64

while.end:                                        ; preds = %land.lhs.true52.while.end_crit_edge, %if.then45
  %takedown_complete.1.off0 = phi i1 [ false, %if.then45 ], [ true, %land.lhs.true52.while.end_crit_edge ]
  %tobool56.not = icmp eq i32 %dec39, 0
  br i1 %tobool56.not, label %while.end.while.end59_crit_edge, label %while.end.while.cond_crit_edge

while.end.while.cond_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end.while.end59_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end59

while.end59:                                      ; preds = %while.end.while.end59_crit_edge, %while.cond.while.end59_crit_edge
  %takedown_complete.2.off0 = phi i1 [ %takedown_complete.0.off0, %while.cond.while.end59_crit_edge ], [ %takedown_complete.1.off0, %while.end.while.end59_crit_edge ]
  br i1 %takedown_complete.2.off0, label %while.end59.cleanup_crit_edge, label %while.end59.do.end64_crit_edge

while.end59.do.end64_crit_edge:                   ; preds = %while.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end64

while.end59.cleanup_crit_edge:                    ; preds = %while.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end64:                                         ; preds = %while.end59.do.end64_crit_edge, %if.end55.do.end64_crit_edge
  %9 = ptrtoint ptr %qproc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qproc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.127) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %while.end59.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @q6v5_reset_assert(ptr nocapture noundef readonly %qproc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %has_alt_reset = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 49
  %0 = ptrtoint ptr %has_alt_reset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_alt_reset, align 1, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdc_reset = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 19
  %2 = ptrtoint ptr %pdc_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdc_reset, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %3) #10
  %mss_restart = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 18
  %4 = ptrtoint ptr %mss_restart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mss_restart, align 4
  %call1 = tail call i32 @reset_control_reset(ptr noundef %5) #10
  %6 = ptrtoint ptr %pdc_reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdc_reset, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %7) #10
  br label %if.end35

if.else:                                          ; preds = %entry
  %has_spare_reg = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 51
  %8 = ptrtoint ptr %has_spare_reg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_spare_reg, align 1, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.else18, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %pdc_reset6 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 19
  %10 = ptrtoint ptr %pdc_reset6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdc_reset6, align 4
  %call7 = tail call i32 @reset_control_assert(ptr noundef %11) #10
  %conn_map = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 5
  %12 = ptrtoint ptr %conn_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conn_map, align 4
  %conn_box = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 10
  %14 = ptrtoint ptr %conn_box to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %conn_box, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %15, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %mss_restart9 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 18
  %16 = ptrtoint ptr %mss_restart9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mss_restart9, align 4
  %call10 = tail call i32 @reset_control_assert(ptr noundef %17) #10
  %18 = ptrtoint ptr %pdc_reset6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdc_reset6, align 4
  %call12 = tail call i32 @reset_control_deassert(ptr noundef %19) #10
  %20 = ptrtoint ptr %conn_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %conn_map, align 4
  %22 = ptrtoint ptr %conn_box to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %conn_box, align 4
  %call.i1 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %23, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %24 = ptrtoint ptr %mss_restart9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mss_restart9, align 4
  %call17 = tail call i32 @reset_control_deassert(ptr noundef %25) #10
  br label %if.end35

if.else18:                                        ; preds = %if.else
  %has_ext_cntl_regs = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 53
  %26 = ptrtoint ptr %has_ext_cntl_regs to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %has_ext_cntl_regs, align 1, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool19.not = icmp eq i8 %27, 0
  br i1 %tobool19.not, label %if.else31, label %if.then20

if.then20:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  %conn_map21 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 5
  %28 = ptrtoint ptr %conn_map21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %conn_map21, align 4
  %rscc_disable = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 17
  %30 = ptrtoint ptr %rscc_disable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rscc_disable, align 4
  %call22 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %31, i32 noundef 0) #10
  %pdc_reset23 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 19
  %32 = ptrtoint ptr %pdc_reset23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdc_reset23, align 4
  %call24 = tail call i32 @reset_control_assert(ptr noundef %33) #10
  %mss_restart25 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 18
  %34 = ptrtoint ptr %mss_restart25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mss_restart25, align 4
  %call26 = tail call i32 @reset_control_assert(ptr noundef %35) #10
  %36 = ptrtoint ptr %pdc_reset23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdc_reset23, align 4
  %call28 = tail call i32 @reset_control_deassert(ptr noundef %37) #10
  %38 = ptrtoint ptr %mss_restart25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mss_restart25, align 4
  %call30 = tail call i32 @reset_control_deassert(ptr noundef %39) #10
  br label %if.end35

if.else31:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  %mss_restart32 = getelementptr inbounds %struct.q6v5, ptr %qproc, i32 0, i32 18
  %40 = ptrtoint ptr %mss_restart32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mss_restart32, align 4
  %call33 = tail call i32 @reset_control_assert(ptr noundef %41) #10
  br label %if.end35

if.end35:                                         ; preds = %if.else31, %if.then20, %if.then5, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_genpd_set_performance_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_into_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_pil_info_store(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_mdt_read_metadata(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_assign_mem(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_request_stop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_coredump_add_custom_segment(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_q6v5_dump_segment(ptr nocapture noundef readonly %rproc, ptr nocapture noundef readonly %segment, ptr nocapture noundef writeonly %dest, i32 noundef %cp_offset, i32 noundef %size) #2 align 64 {
entry:
  %next.i53 = alloca [2 x %struct.qcom_scm_vmperm], align 4
  %next.i = alloca [2 x %struct.qcom_scm_vmperm], align 4
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %da = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment, i32 0, i32 1
  %2 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %da, align 8
  %mpss_reloc = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 42
  %4 = ptrtoint ptr %mpss_reloc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mpss_reloc, align 4
  %dump_mba_loaded = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %dump_mba_loaded to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dump_mba_loaded, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #10
  %8 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !437
  %firmware.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 3
  %9 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %firmware.i, align 8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef %10, ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %q6v5_reload_mba.exit.thread, label %q6v5_reload_mba.exit

q6v5_reload_mba.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #10
  br label %if.else

q6v5_reload_mba.exit:                             ; preds = %if.then
  %13 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw.i, align 4
  %call1.i = call i32 @q6v5_load(ptr noundef %rproc, ptr noundef %14) #10
  %call2.i = call fastcc i32 @q6v5_mba_load(ptr noundef %1) #10
  %15 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool1.not = icmp eq i32 %call2.i, 0
  br i1 %tobool1.not, label %if.then2, label %q6v5_reload_mba.exit.if.else_crit_edge

q6v5_reload_mba.exit.if.else_crit_edge:           ; preds = %q6v5_reload_mba.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then2:                                         ; preds = %q6v5_reload_mba.exit
  %mpss_perm = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 55
  %mpss_phys = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 41
  %17 = ptrtoint ptr %mpss_phys to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mpss_phys, align 4
  %mpss_size = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 43
  %19 = ptrtoint ptr %mpss_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mpss_size, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %next.i) #10
  %21 = getelementptr inbounds %struct.qcom_scm_vmperm, ptr %next.i, i32 0, i32 1
  %need_mem_protection.i = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 48
  %22 = getelementptr inbounds i8, ptr %next.i, i32 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 -1, ptr %22, align 4
  %24 = ptrtoint ptr %need_mem_protection.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %need_mem_protection.i, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.then2.if.end4.thread72_crit_edge, label %if.end.i50

if.then2.if.end4.thread72_crit_edge:              ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.thread72

if.end.i50:                                       ; preds = %if.then2
  %26 = ptrtoint ptr %mpss_perm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mpss_perm, align 4
  %28 = and i32 %27, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %28)
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %if.end.i50.if.end4.thread72_crit_edge, label %if.end4

if.end.i50.if.end4.thread72_crit_edge:            ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.thread72

if.end4.thread72:                                 ; preds = %if.end.i50.if.end4.thread72_crit_edge, %if.then2.if.end4.thread72_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i) #10
  br label %if.end10

if.end4:                                          ; preds = %if.end.i50
  %30 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %next.i, align 4
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 7, ptr %21, align 4
  %add.i = add i32 %20, 4095
  %and30.i = and i32 %add.i, -4096
  %call.i51 = call i32 @qcom_scm_assign_mem(i32 noundef %18, i32 noundef %and30.i, ptr noundef %mpss_perm, ptr noundef nonnull %next.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool5.not = icmp eq i32 %call.i51, 0
  br i1 %tobool5.not, label %if.end4.if.end10_crit_edge, label %if.end4.if.else_crit_edge

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end10:                                         ; preds = %if.end4.if.end10_crit_edge, %if.end4.thread72, %entry.if.end10_crit_edge
  %mpss_phys7 = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 41
  %32 = ptrtoint ptr %mpss_phys7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mpss_phys7, align 4
  %sub = add i32 %3, %cp_offset
  %add = sub i32 %sub, %5
  %add8 = add i32 %add, %33
  %call9 = call ptr @memremap(i32 noundef %add8, i32 noundef %size, i32 noundef 4) #10
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end10.if.else_crit_edge, label %if.then12

if.end10.if.else_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %34 = call ptr @memcpy(ptr %dest, ptr %call9, i32 %size)
  call void @memunmap(ptr noundef nonnull %call9) #10
  br label %if.end13

if.else:                                          ; preds = %if.end10.if.else_crit_edge, %if.end4.if.else_crit_edge, %q6v5_reload_mba.exit.if.else_crit_edge, %q6v5_reload_mba.exit.thread
  %35 = call ptr @memset(ptr %dest, i32 255, i32 %size)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  %current_dump_size = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 36
  %36 = ptrtoint ptr %current_dump_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %current_dump_size, align 4
  %add14 = add i32 %37, %size
  store i32 %add14, ptr %current_dump_size, align 4
  %total_dump_size = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 37
  %38 = ptrtoint ptr %total_dump_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %total_dump_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %39)
  %cmp = icmp eq i32 %add14, %39
  br i1 %cmp, label %if.then16, label %if.end13.if.end25_crit_edge

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then16:                                        ; preds = %if.end13
  %40 = ptrtoint ptr %dump_mba_loaded to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dump_mba_loaded, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool18.not = icmp eq i8 %41, 0
  br i1 %tobool18.not, label %if.then16.if.end25_crit_edge, label %if.then19

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then19:                                        ; preds = %if.then16
  %mpss_perm20 = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 55
  %mpss_phys21 = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 41
  %42 = ptrtoint ptr %mpss_phys21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mpss_phys21, align 4
  %mpss_size22 = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 43
  %44 = ptrtoint ptr %mpss_size22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mpss_size22, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %next.i53) #10
  %need_mem_protection.i54 = getelementptr inbounds %struct.q6v5, ptr %1, i32 0, i32 48
  %46 = getelementptr inbounds i8, ptr %next.i53, i32 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 -1, ptr %46, align 4
  %48 = ptrtoint ptr %need_mem_protection.i54 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %need_mem_protection.i54, align 4, !range !436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i55 = icmp eq i8 %49, 0
  br i1 %tobool.not.i55, label %if.then19.q6v5_xfer_mem_ownership.exit63_crit_edge, label %if.end.i56

if.then19.q6v5_xfer_mem_ownership.exit63_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit63

if.end.i56:                                       ; preds = %if.then19
  %50 = ptrtoint ptr %mpss_perm20 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mpss_perm20, align 4
  %52 = and i32 %51, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %52)
  %.not = icmp eq i32 %52, 32768
  br i1 %.not, label %if.end.i56.q6v5_xfer_mem_ownership.exit63_crit_edge, label %if.end17.i58

if.end.i56.q6v5_xfer_mem_ownership.exit63_crit_edge: ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6v5_xfer_mem_ownership.exit63

if.end17.i58:                                     ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %next.i53 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 15, ptr %next.i53, align 4
  %perm27.i = getelementptr inbounds [2 x %struct.qcom_scm_vmperm], ptr %next.i53, i32 0, i32 0, i32 1
  %54 = ptrtoint ptr %perm27.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 6, ptr %perm27.i, align 4
  %add.i59 = add i32 %45, 4095
  %and30.i60 = and i32 %add.i59, -4096
  %call.i61 = call i32 @qcom_scm_assign_mem(i32 noundef %43, i32 noundef %and30.i60, ptr noundef %mpss_perm20, ptr noundef nonnull %next.i53, i32 noundef 1) #10
  br label %q6v5_xfer_mem_ownership.exit63

q6v5_xfer_mem_ownership.exit63:                   ; preds = %if.end17.i58, %if.end.i56.q6v5_xfer_mem_ownership.exit63_crit_edge, %if.then19.q6v5_xfer_mem_ownership.exit63_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next.i53) #10
  call fastcc void @q6v5_mba_reclaim(ptr noundef %1)
  br label %if.end25

if.end25:                                         ; preds = %q6v5_xfer_mem_ownership.exit63, %if.then16.if.end25_crit_edge, %if.end13.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_q6v5_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 247)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 247)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !69, !70, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !180, !181, !182, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !207, !209, !210, !211, !212, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !235, !236, !237, !239, !240, !242, !243, !244, !246, !247, !249, !250, !251, !253, !254, !256, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !289, !291, !292, !293, !295, !296, !297, !298, !300, !301, !302, !304, !306, !308, !310, !312, !313, !314, !315, !317, !319, !320, !321, !323, !325, !326, !327, !329, !330, !331, !333, !335, !336, !337, !339, !341, !343, !344, !345, !346, !348, !349, !350, !352, !353, !354, !355, !357, !358, !359, !360, !362, !364, !365, !366, !367, !369, !371, !372, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425}
!llvm.module.flags = !{!427, !428, !429, !430, !431, !432, !433, !434}
!llvm.ident = !{!435}

!0 = !{ptr @__initcall__kmod_qcom_q6v5_mss__291_2308_q6v5_driver_init6, !1, !"__initcall__kmod_qcom_q6v5_mss__291_2308_q6v5_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2308, i32 1}
!2 = !{ptr @__exitcall_q6v5_driver_exit, !1, !"__exitcall_q6v5_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description292, !4, !"__UNIQUE_ID_description292", i1 false, i1 false}
!4 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2310, i32 1}
!5 = !{ptr @__UNIQUE_ID_file293, !6, !"__UNIQUE_ID_file293", i1 false, i1 false}
!6 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2311, i32 1}
!7 = !{ptr @__UNIQUE_ID_license294, !6, !"__UNIQUE_ID_license294", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2304, i32 11}
!10 = !{ptr @q6v5_driver, !11, !"q6v5_driver", i1 false, i1 false}
!11 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2300, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1862, i32 57}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1865, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @q6v5_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @q6v5_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1872, i32 3}
!24 = !{ptr @q6v5_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @q6v5_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1882, i32 29}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1886, i32 3}
!30 = !{ptr @q6v5_probe._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @q6v5_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1907, i32 3}
!34 = !{ptr @q6v5_probe._entry.14, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @q6v5_probe._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1915, i32 3}
!38 = !{ptr @q6v5_probe._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @q6v5_probe._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1923, i32 3}
!42 = !{ptr @q6v5_probe._entry.20, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @q6v5_probe._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1931, i32 3}
!46 = !{ptr @q6v5_probe._entry.23, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @q6v5_probe._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1939, i32 3}
!50 = !{ptr @q6v5_probe._entry.26, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @q6v5_probe._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1952, i32 4}
!54 = !{ptr @q6v5_probe._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @q6v5_probe._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1957, i32 3}
!58 = !{ptr @q6v5_probe._entry.32, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @q6v5_probe._entry_ptr.34, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1972, i32 74}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1979, i32 53}
!64 = !{ptr @q6v5_ops, !65, !"q6v5_ops", i1 false, i1 false}
!65 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1595, i32 31}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1505, i32 2}
!68 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @q6v5_start._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @q6v5_start._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.41, !67, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1514, i32 3}
!76 = !{ptr @q6v5_start._entry.42, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @q6v5_start._entry_ptr.44, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1522, i32 3}
!80 = !{ptr @q6v5_start._entry.45, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @q6v5_start._entry_ptr.47, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1015, i32 3}
!84 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @q6v5_mba_load._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @q6v5_mba_load._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1022, i32 3}
!89 = !{ptr @q6v5_mba_load._entry.50, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @q6v5_mba_load._entry_ptr.52, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.54, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1029, i32 3}
!93 = !{ptr @q6v5_mba_load._entry.53, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @q6v5_mba_load._entry_ptr.55, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.57, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1036, i32 3}
!97 = !{ptr @q6v5_mba_load._entry.56, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @q6v5_mba_load._entry_ptr.58, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.60, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1043, i32 3}
!101 = !{ptr @q6v5_mba_load._entry.59, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @q6v5_mba_load._entry_ptr.61, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.63, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1050, i32 3}
!105 = !{ptr @q6v5_mba_load._entry.62, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @q6v5_mba_load._entry_ptr.64, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.66, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1056, i32 3}
!109 = !{ptr @q6v5_mba_load._entry.65, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @q6v5_mba_load._entry_ptr.67, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.69, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1063, i32 3}
!113 = !{ptr @q6v5_mba_load._entry.68, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @q6v5_mba_load._entry_ptr.70, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.72, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1069, i32 3}
!117 = !{ptr @q6v5_mba_load._entry.71, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @q6v5_mba_load._entry_ptr.73, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.75, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1080, i32 3}
!121 = !{ptr @q6v5_mba_load._entry.74, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @q6v5_mba_load._entry_ptr.76, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.78, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1088, i32 3}
!125 = !{ptr @q6v5_mba_load._entry.77, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @q6v5_mba_load._entry_ptr.79, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.81, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1105, i32 3}
!129 = !{ptr @q6v5_mba_load._entry.80, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @q6v5_mba_load._entry_ptr.82, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.84, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1109, i32 3}
!133 = !{ptr @q6v5_mba_load._entry.83, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @q6v5_mba_load._entry_ptr.85, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.87, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1132, i32 3}
!137 = !{ptr @q6v5_mba_load._entry.86, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @q6v5_mba_load._entry_ptr.88, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.89, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 281, i32 5}
!141 = !{ptr @.str.90, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @q6v5_regulator_enable._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @q6v5_regulator_enable._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.92, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 292, i32 5}
!146 = !{ptr @q6v5_regulator_enable._entry.91, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @q6v5_regulator_enable._entry_ptr.93, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.95, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 300, i32 4}
!150 = !{ptr @q6v5_regulator_enable._entry.94, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @q6v5_regulator_enable._entry_ptr.96, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.97, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 345, i32 4}
!154 = !{ptr @.str.98, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @q6v5_clk_enable._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @q6v5_clk_enable._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.99, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 836, i32 4}
!159 = !{ptr @.str.100, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @q6v5proc_enable_qchannel._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @q6v5proc_enable_qchannel._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.102, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 847, i32 3}
!164 = !{ptr @q6v5proc_enable_qchannel._entry.101, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @q6v5proc_enable_qchannel._entry_ptr.103, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.104, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 619, i32 4}
!168 = !{ptr @.str.105, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @q6v5proc_reset._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @q6v5proc_reset._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.107, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 631, i32 4}
!173 = !{ptr @q6v5proc_reset._entry.106, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @q6v5proc_reset._entry_ptr.108, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @q6v5proc_reset._entry.109, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 647, i32 4}
!177 = !{ptr @q6v5proc_reset._entry_ptr.110, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.112, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 660, i32 4}
!180 = !{ptr @q6v5proc_reset._entry.111, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @q6v5proc_reset._entry_ptr.113, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @q6v5proc_reset._entry.114, !183, !"_entry", i1 false, i1 false}
!183 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 682, i32 4}
!184 = !{ptr @q6v5proc_reset._entry_ptr.115, !183, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.117, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 711, i32 4}
!187 = !{ptr @q6v5proc_reset._entry.116, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @q6v5proc_reset._entry_ptr.118, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.120, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 810, i32 3}
!191 = !{ptr @q6v5proc_reset._entry.119, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @q6v5proc_reset._entry_ptr.121, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.123, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 812, i32 3}
!195 = !{ptr @q6v5proc_reset._entry.122, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @q6v5proc_reset._entry_ptr.124, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.125, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 925, i32 3}
!199 = !{ptr @.str.126, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @q6v5proc_halt_axi_port._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @q6v5proc_halt_axi_port._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.127, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 901, i32 3}
!204 = !{ptr @.str.128, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @q6v5proc_disable_qchannel._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @q6v5proc_disable_qchannel._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.129, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1285, i32 3}
!209 = !{ptr @.str.130, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @q6v5_mpss_load._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @q6v5_mpss_load._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @q6v5_mpss_load._entry.131, !213, !"_entry", i1 false, i1 false}
!213 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1326, i32 3}
!214 = !{ptr @q6v5_mpss_load._entry_ptr.132, !213, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.134, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1343, i32 4}
!217 = !{ptr @q6v5_mpss_load._entry.133, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @q6v5_mpss_load._entry_ptr.135, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.137, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1349, i32 4}
!221 = !{ptr @q6v5_mpss_load._entry.136, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @q6v5_mpss_load._entry_ptr.138, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.140, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1358, i32 4}
!225 = !{ptr @q6v5_mpss_load._entry.139, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @q6v5_mpss_load._entry_ptr.141, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.143, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1367, i32 5}
!229 = !{ptr @q6v5_mpss_load._entry.142, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @q6v5_mpss_load._entry_ptr.144, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.145, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1378, i32 39}
!233 = !{ptr @.str.147, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1382, i32 5}
!235 = !{ptr @q6v5_mpss_load._entry.146, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @q6v5_mpss_load._entry_ptr.148, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @q6v5_mpss_load._entry.149, !238, !"_entry", i1 false, i1 false}
!238 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1388, i32 5}
!239 = !{ptr @q6v5_mpss_load._entry_ptr.150, !238, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.152, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1417, i32 4}
!242 = !{ptr @q6v5_mpss_load._entry.151, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @q6v5_mpss_load._entry_ptr.153, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @q6v5_mpss_load._entry.154, !245, !"_entry", i1 false, i1 false}
!245 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1427, i32 3}
!246 = !{ptr @q6v5_mpss_load._entry_ptr.155, !245, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.157, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1435, i32 3}
!249 = !{ptr @q6v5_mpss_load._entry.156, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @q6v5_mpss_load._entry_ptr.158, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @q6v5_mpss_load._entry.159, !252, !"_entry", i1 false, i1 false}
!252 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1437, i32 3}
!253 = !{ptr @q6v5_mpss_load._entry_ptr.160, !252, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.161, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 949, i32 3}
!256 = !{ptr @.str.162, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @q6v5_mpss_init_image._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @q6v5_mpss_init_image._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.164, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 960, i32 3}
!261 = !{ptr @q6v5_mpss_init_image._entry.163, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @q6v5_mpss_init_image._entry_ptr.165, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.167, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 971, i32 3}
!265 = !{ptr @q6v5_mpss_init_image._entry.166, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @q6v5_mpss_init_image._entry_ptr.168, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.170, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 973, i32 3}
!269 = !{ptr @q6v5_mpss_init_image._entry.169, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @q6v5_mpss_init_image._entry_ptr.171, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.173, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 979, i32 3}
!273 = !{ptr @.str.174, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @q6v5_mpss_init_image._entry.172, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @q6v5_mpss_init_image._entry_ptr.175, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.176, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1195, i32 4}
!278 = !{ptr @q6v5_mba_reclaim._entry, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @q6v5_mba_reclaim._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.178, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1200, i32 4}
!282 = !{ptr @q6v5_mba_reclaim._entry.177, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @q6v5_mba_reclaim._entry_ptr.179, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.180, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1544, i32 3}
!286 = !{ptr @.str.181, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @q6v5_stop._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @q6v5_stop._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.182, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1564, i32 3}
!291 = !{ptr @qcom_q6v5_register_dump_segments._entry, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @qcom_q6v5_register_dump_segments._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.183, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 457, i32 3}
!295 = !{ptr @.str.184, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @q6v5_load._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @q6v5_load._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.186, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 463, i32 3}
!300 = !{ptr @q6v5_load._entry.185, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @q6v5_load._entry_ptr.187, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.188, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 439, i32 38}
!304 = !{ptr @.str.189, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1621, i32 64}
!306 = !{ptr @.str.190, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1625, i32 64}
!308 = !{ptr @.str.191, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1633, i32 13}
!310 = !{ptr @.str.192, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1635, i32 3}
!312 = !{ptr @.str.193, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @q6v5_init_mem._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @q6v5_init_mem._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.194, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1653, i32 14}
!317 = !{ptr @.str.196, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1656, i32 4}
!319 = !{ptr @q6v5_init_mem._entry.195, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @q6v5_init_mem._entry_ptr.197, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.198, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1667, i32 14}
!323 = !{ptr @.str.200, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1670, i32 4}
!325 = !{ptr @q6v5_init_mem._entry.199, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @q6v5_init_mem._entry_ptr.201, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.203, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1686, i32 4}
!329 = !{ptr @q6v5_init_mem._entry.202, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @q6v5_init_mem._entry_ptr.204, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.205, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1696, i32 14}
!333 = !{ptr @.str.207, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1699, i32 4}
!335 = !{ptr @q6v5_init_mem._entry.206, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @q6v5_init_mem._entry_ptr.208, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.209, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1808, i32 52}
!339 = !{ptr @.str.210, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1811, i32 6}
!341 = !{ptr @.str.211, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1817, i32 3}
!343 = !{ptr @.str.212, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @q6v5_alloc_memory_region._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @q6v5_alloc_memory_region._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.214, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1835, i32 3}
!348 = !{ptr @q6v5_alloc_memory_region._entry.213, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @q6v5_alloc_memory_region._entry_ptr.215, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.216, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1728, i32 5}
!352 = !{ptr @.str.217, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @q6v5_init_clocks._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @q6v5_init_clocks._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.218, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 258, i32 5}
!357 = !{ptr @.str.219, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @q6v5_regulator_init._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @q6v5_regulator_init._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.220, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1779, i32 14}
!362 = !{ptr @.str.221, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1781, i32 3}
!364 = !{ptr @.str.222, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @q6v5_init_reset._entry, !363, !"_entry", i1 false, i1 false}
!366 = !{ptr @q6v5_init_reset._entry_ptr, !363, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.223, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1787, i32 13}
!369 = !{ptr @.str.225, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 1789, i32 4}
!371 = !{ptr @q6v5_init_reset._entry.224, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @q6v5_init_reset._entry_ptr.226, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @q6v5_of_match, !374, !"q6v5_of_match", i1 false, i1 false}
!374 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2287, i32 34}
!375 = !{ptr @.str.227, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2190, i32 23}
!377 = !{ptr @.str.228, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2193, i32 14}
!379 = !{ptr @.str.229, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2200, i32 14}
!381 = !{ptr @.str.230, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2204, i32 14}
!383 = !{ptr @.str.232, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2210, i32 3}
!385 = !{ptr @.str.234, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2214, i32 3}
!387 = !{ptr @.str.235, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2215, i32 3}
!389 = !{ptr @.str.236, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2216, i32 3}
!391 = !{ptr @msm8916_mss, !392, !"msm8916_mss", i1 false, i1 false}
!392 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2189, i32 39}
!393 = !{ptr @.str.239, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2235, i32 23}
!395 = !{ptr @.str.242, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2256, i32 14}
!397 = !{ptr @msm8974_mss, !398, !"msm8974_mss", i1 false, i1 false}
!398 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2234, i32 39}
!399 = !{ptr @.str.248, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2166, i32 4}
!401 = !{ptr @.str.249, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2167, i32 4}
!403 = !{ptr @.str.251, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2174, i32 4}
!405 = !{ptr @.str.252, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2175, i32 4}
!407 = !{ptr @.str.253, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2176, i32 4}
!409 = !{ptr @msm8996_mss, !410, !"msm8996_mss", i1 false, i1 false}
!410 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2155, i32 39}
!411 = !{ptr @msm8998_mss, !412, !"msm8998_mss", i1 false, i1 false}
!412 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2124, i32 39}
!413 = !{ptr @.str.260, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2042, i32 3}
!415 = !{ptr @sc7180_mss, !416, !"sc7180_mss", i1 false, i1 false}
!416 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2028, i32 39}
!417 = !{ptr @.str.263, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2065, i32 3}
!419 = !{ptr @.str.265, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2070, i32 3}
!421 = !{ptr @sc7280_mss, !422, !"sc7280_mss", i1 false, i1 false}
!422 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2061, i32 39}
!423 = !{ptr @.str.268, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2093, i32 4}
!425 = !{ptr @sdm845_mss, !426, !"sdm845_mss", i1 false, i1 false}
!426 = !{!"../drivers/remoteproc/qcom_q6v5_mss.c", i32 2089, i32 39}
!427 = !{i32 1, !"wchar_size", i32 2}
!428 = !{i32 1, !"min_enum_size", i32 4}
!429 = !{i32 8, !"branch-target-enforcement", i32 0}
!430 = !{i32 8, !"sign-return-address", i32 0}
!431 = !{i32 8, !"sign-return-address-all", i32 0}
!432 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!433 = !{i32 7, !"uwtable", i32 1}
!434 = !{i32 7, !"frame-pointer", i32 2}
!435 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!436 = !{i8 0, i8 2}
!437 = !{!"auto-init"}
!438 = !{i64 2155547376}
!439 = !{i64 6305403}
!440 = !{i64 2155502654}
!441 = !{i64 2155503065}
!442 = !{i64 6305821}
!443 = !{i64 2155434854}
!444 = !{i64 2155561033}
!445 = !{i64 2155561263}
!446 = !{i64 2155561689}
!447 = !{i64 2155562094}
!448 = !{i64 2155562788}
!449 = !{i64 2148294905}
!450 = !{i64 779728, i64 779753, i64 779775, i64 779791, i64 779803, i64 779823, i64 779847, i64 779863, i64 779875}
!451 = !{i64 2148295093}
!452 = !{i64 2155527555}
!453 = !{i64 2155528031}
!454 = !{i64 2155528521}
!455 = !{i64 2155435947}
!456 = !{i64 2155436253}
!457 = !{i64 2155438228}
!458 = !{i64 2155438734}
!459 = !{i64 2155440631}
!460 = !{i64 2155441030}
!461 = !{i64 2155443014}
!462 = !{i64 2155443520}
!463 = !{i64 2155445691}
!464 = !{i64 2155445997}
!465 = !{i64 2155447972}
!466 = !{i64 2155448478}
!467 = !{i64 2155450672}
!468 = !{i64 2155450982}
!469 = !{i64 2155452977}
!470 = !{i64 2155453491}
!471 = !{i64 2155455648}
!472 = !{i64 2155455954}
!473 = !{i64 2155456358}
!474 = !{i64 2155456757}
!475 = !{i64 2155458741}
!476 = !{i64 2155459247}
!477 = !{i64 2155461139}
!478 = !{i64 2155461839}
!479 = !{i64 2155462311}
!480 = !{i64 2155463013}
!481 = !{i64 2155463323}
!482 = !{i64 2155465318}
!483 = !{i64 2155465832}
!484 = !{i64 2155468070}
!485 = !{i64 2155468380}
!486 = !{i64 2155469077}
!487 = !{i64 2155469923}
!488 = !{i64 2155470620}
!489 = !{i64 2155470930}
!490 = !{i64 2155471505}
!491 = !{i64 2155472232}
!492 = !{i64 2155472533}
!493 = !{i64 2155473254}
!494 = !{i64 2155474306}
!495 = !{i64 2155474616}
!496 = !{i64 2155475313}
!497 = !{i64 2155475785}
!498 = !{i64 2155476482}
!499 = !{i64 2155476876}
!500 = !{i64 2155477573}
!501 = !{i64 2155478625}
!502 = !{i64 2155479187}
!503 = !{i64 2155479676}
!504 = !{i64 2155480165}
!505 = !{i64 2155480654}
!506 = !{i64 2155481145}
!507 = !{i64 2155481842}
!508 = !{i64 2155482150}
!509 = !{i64 2155482847}
!510 = !{i64 2155483155}
!511 = !{i64 2155483852}
!512 = !{i64 2155484160}
!513 = !{i64 2155433993}
!514 = !{i64 2155534451}
!515 = !{i64 2155534929}
!516 = !{!"branch_weights", i32 2000, i32 1}
!517 = !{i64 2155432912}
!518 = !{i64 2155433308}
