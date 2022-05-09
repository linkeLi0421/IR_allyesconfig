; ModuleID = '/llk/IR_all_yes/drivers/slimbus/qcom-ngd-ctrl.c_pt.bc'
source_filename = "../drivers/slimbus/qcom-ngd-ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qmi_msg_handler = type { i32, i32, ptr, i32, ptr }
%struct.qmi_elem_info = type { i32, i32, i32, i32, i8, i32, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngd_reg_offset_data = type { i32, i32 }
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
%struct.qcom_slim_ngd_ctrl = type { %struct.slim_framer, %struct.slim_controller, %struct.qcom_slim_ngd_qmi, ptr, ptr, ptr, ptr, ptr, [32 x %struct.qcom_slim_ngd_dma_desc], [32 x %struct.qcom_slim_ngd_dma_desc], %struct.completion, %struct.work_struct, %struct.work_struct, ptr, %struct.completion, %struct.spinlock, %struct.mutex, %struct.mutex, %struct.notifier_block, ptr, ptr, i32, i32, i32, ptr, ptr, i32, i32, i32 }
%struct.slim_framer = type { %struct.device, %struct.slim_eaddr, i32, i32 }
%struct.slim_eaddr = type { i8, i8, i16, i16 }
%struct.slim_controller = type { ptr, i32, [32 x i8], i32, i32, i32, %struct.ida, ptr, %struct.mutex, %struct.list_head, %struct.idr, %struct.spinlock, %struct.slim_sched, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.slim_sched = type { i32, %struct.completion, %struct.mutex }
%struct.qcom_slim_ngd_qmi = type { %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.qmi_handle, %struct.qmi_response_type_v01, ptr, %struct.completion }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.qmi_response_type_v01 = type { i16, i16 }
%struct.qcom_slim_ngd_dma_desc = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.qcom_slim_ngd = type { ptr, ptr, i32 }
%struct.slim_val_inf = type { i16, i8, ptr, ptr, ptr }
%struct.slim_msg_txn = type { i8, i8, i8, i8, i16, i8, i8, ptr, ptr }
%struct.slim_stream_runtime = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.list_head }
%struct.slim_device = type { %struct.device, %struct.slim_eaddr, ptr, i32, i8, i8, %struct.list_head, %struct.spinlock }
%struct.slim_port = type { i32, i32, i32, %struct.slim_channel }
%struct.slim_channel = type { i32, i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.slimbus_select_inst_resp_msg_v01 = type { %struct.qmi_response_type_v01 }
%struct.qmi_txn = type { ptr, i16, %struct.mutex, %struct.completion, i32, ptr, ptr }
%struct.slimbus_select_inst_req_msg_v01 = type { i32, i8, i32 }
%struct.slimbus_power_resp_msg_v01 = type { %struct.qmi_response_type_v01 }
%struct.slimbus_power_req_msg_v01 = type { i32, i8, i32 }
%struct.qmi_service = type { i32, i32, i32, i32, i32, ptr, %struct.list_head }

@__initcall__kmod_slim_qcom_ngd_ctrl__458_1664_qcom_slim_ngd_ctrl_driver_init6 = internal global ptr @qcom_slim_ngd_ctrl_driver_init, section ".initcall6.init", align 4
@qcom_slim_ngd_ctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_slim_ngd_ctrl_probe, ptr @qcom_slim_ngd_ctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_slim_ngd_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_slim_ngd_ctrl_driver_exit = internal global ptr @qcom_slim_ngd_ctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file459 = internal constant [59 x i8] c"slim_qcom_ngd_ctrl.file=drivers/slimbus/slim-qcom-ngd-ctrl\00", section ".modinfo", align 1
@__UNIQUE_ID_license460 = internal constant [34 x i8] c"slim_qcom_ngd_ctrl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description461 = internal constant [63 x i8] c"slim_qcom_ngd_ctrl.description=Qualcomm SLIMBus NGD controller\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom,slim-ngd-ctrl\00", [45 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,slim-ngd-v1.5.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ngd_v1_5_offset_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,slim-ngd-v2.1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ngd_v1_5_offset_info }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_ctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1531, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no slimbus IRQ resource\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_slim_ngd_ctrl_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/slimbus/qcom-ngd-ctrl.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_ctrl_probe._entry_ptr = internal global ptr @qcom_slim_ngd_ctrl_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slim-ngd\00", [23 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_ctrl_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1538, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request IRQ failed\0A\00", [44 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_ctrl_probe._entry_ptr.9 = internal global ptr @qcom_slim_ngd_ctrl_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lpass\00", [26 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_ctrl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ctrl->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_ctrl_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctrl->ssr_lock\00", [16 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_ctrl_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ctrl->tx_buf_lock\00", [45 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_ctrl_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1569, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to init PDR handle\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_ctrl_probe._entry_ptr.18 = internal global ptr @qcom_slim_ngd_ctrl_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"avs/audio\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msm/adsp/audio_pd\00", [46 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_ctrl_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1575, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pdr add lookup failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_ctrl_probe._entry_ptr.23 = internal global ptr @qcom_slim_ngd_ctrl_probe._entry.21, section ".printk_index", align 4
@qcom_slim_ngd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_slim_ngd_probe, ptr @qcom_slim_ngd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.114, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_slim_ngd_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 771, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error Interrupt received 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom_slim_ngd_interrupt\00", [40 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_interrupt._entry_ptr = internal global ptr @qcom_slim_ngd_interrupt._entry, section ".printk_index", align 4
@qcom_slim_ngd_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 1257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qmi init fail, ret:%d, state:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom_slim_ngd_enable\00", [43 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_enable._entry_ptr = internal global ptr @qcom_slim_ngd_enable._entry, section ".printk_index", align 4
@qcom_slim_ngd_enable._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 1273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error adding slim controller\0A\00", [34 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_enable._entry_ptr.30 = internal global ptr @qcom_slim_ngd_enable._entry.28, section ".printk_index", align 4
@qcom_slim_ngd_enable._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 1277, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SLIM controller Registered\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_enable._entry_ptr.34 = internal global ptr @qcom_slim_ngd_enable._entry.31, section ".printk_index", align 4
@qcom_slim_qmi_msg_handlers = internal constant { [2 x %struct.qmi_msg_handler], [56 x i8] } { [2 x %struct.qmi_msg_handler] [%struct.qmi_msg_handler { i32 2, i32 33, ptr @slimbus_power_resp_msg_v01_ei, i32 4, ptr @qcom_slim_qmi_power_resp_cb }, %struct.qmi_msg_handler zeroinitializer], [56 x i8] zeroinitializer }, align 32
@qcom_slim_qmi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 462, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"QMI client init failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom_slim_qmi_init\00", [45 x i8] zeroinitializer }, align 32
@qcom_slim_qmi_init._entry_ptr = internal global ptr @qcom_slim_qmi_init._entry, section ".printk_index", align 4
@qcom_slim_qmi_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Remote Service connect failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@qcom_slim_qmi_init._entry_ptr.39 = internal global ptr @qcom_slim_qmi_init._entry.37, section ".printk_index", align 4
@qcom_slim_qmi_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.3, i32 488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to select h/w instance\0A\00", [33 x i8] zeroinitializer }, align 32
@qcom_slim_qmi_init._entry_ptr.42 = internal global ptr @qcom_slim_qmi_init._entry.40, section ".printk_index", align 4
@slimbus_power_resp_msg_v01_ei = internal global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@qmi_response_type_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@qcom_slim_qmi_power_resp_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013QMI power request failed 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qcom_slim_qmi_power_resp_cb\00", [36 x i8] zeroinitializer }, align 32
@qcom_slim_qmi_power_resp_cb._entry_ptr = internal global ptr @qcom_slim_qmi_power_resp_cb._entry, section ".printk_index", align 4
@slimbus_select_inst_resp_msg_v01_ei = internal global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@qcom_slim_qmi_send_select_inst_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 358, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"QMI TXN init fail: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"qcom_slim_qmi_send_select_inst_req\00", [61 x i8] zeroinitializer }, align 32
@qcom_slim_qmi_send_select_inst_req._entry_ptr = internal global ptr @qcom_slim_qmi_send_select_inst_req._entry, section ".printk_index", align 4
@slimbus_select_inst_req_msg_v01_ei = internal global { [4 x %struct.qmi_elem_info], [48 x i8] } { [4 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 1, i32 0, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 4, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 16, i32 8, ptr null }, %struct.qmi_elem_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@qcom_slim_qmi_send_select_inst_req._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 367, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"QMI send req fail %d\0A\00", [42 x i8] zeroinitializer }, align 32
@qcom_slim_qmi_send_select_inst_req._entry_ptr.49 = internal global ptr @qcom_slim_qmi_send_select_inst_req._entry.47, section ".printk_index", align 4
@qcom_slim_qmi_send_select_inst_req._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.3, i32 374, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"QMI TXN wait fail: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@qcom_slim_qmi_send_select_inst_req._entry_ptr.52 = internal global ptr @qcom_slim_qmi_send_select_inst_req._entry.50, section ".printk_index", align 4
@qcom_slim_qmi_send_select_inst_req._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"QMI request failed 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@qcom_slim_qmi_send_select_inst_req._entry_ptr.55 = internal global ptr @qcom_slim_qmi_send_select_inst_req._entry.53, section ".printk_index", align 4
@qcom_slim_ngd_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 1242, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HW wakeup attempt during SSR\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcom_slim_ngd_runtime_resume\00", [35 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_runtime_resume._entry_ptr = internal global ptr @qcom_slim_ngd_runtime_resume._entry, section ".printk_index", align 4
@qcom_slim_ngd_power_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 1116, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SLIM QMI power request failed:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_slim_ngd_power_up\00", [41 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_power_up._entry_ptr = internal global ptr @qcom_slim_ngd_power_up._entry, section ".printk_index", align 4
@qcom_slim_ngd_power_up._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 1132, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Subsys restart: ADSP active framer\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_power_up._entry_ptr.62 = internal global ptr @qcom_slim_ngd_power_up._entry.60, section ".printk_index", align 4
@qcom_slim_ngd_power_up._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.3, i32 1148, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"capability exchange timed-out\0A\00", [33 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_power_up._entry_ptr.65 = internal global ptr @qcom_slim_ngd_power_up._entry.63, section ".printk_index", align 4
@slimbus_power_req_msg_v01_ei = internal global { [4 x %struct.qmi_elem_info], [48 x i8] } { [4 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 1, i32 0, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 4, ptr null }, %struct.qmi_elem_info { i32 8, i32 1, i32 4, i32 0, i8 16, i32 8, ptr null }, %struct.qmi_elem_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@qcom_slim_qmi_send_power_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.66, ptr @.str.3, i32 416, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qcom_slim_qmi_send_power_request\00", [63 x i8] zeroinitializer }, align 32
@qcom_slim_qmi_send_power_request._entry_ptr = internal global ptr @qcom_slim_qmi_send_power_request._entry, section ".printk_index", align 4
@qcom_slim_qmi_send_power_request._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.66, ptr @.str.3, i32 423, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qcom_slim_qmi_send_power_request._entry_ptr.68 = internal global ptr @qcom_slim_qmi_send_power_request._entry.67, section ".printk_index", align 4
@qcom_slim_qmi_send_power_request._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.66, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qcom_slim_qmi_send_power_request._entry_ptr.70 = internal global ptr @qcom_slim_qmi_send_power_request._entry.69, section ".printk_index", align 4
@qcom_slim_ngd_init_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 751, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx dma init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_slim_ngd_init_dma\00", [41 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_init_dma._entry_ptr = internal global ptr @qcom_slim_ngd_init_dma._entry, section ".printk_index", align 4
@qcom_slim_ngd_init_dma._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.3, i32 757, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx dma init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_init_dma._entry_ptr.75 = internal global ptr @qcom_slim_ngd_init_dma._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_init_rx_msgq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 682, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request RX dma channel\00", [63 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom_slim_ngd_init_rx_msgq\00", [37 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_init_rx_msgq._entry_ptr = internal global ptr @qcom_slim_ngd_init_rx_msgq._entry, section ".printk_index", align 4
@qcom_slim_ngd_init_rx_msgq._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.3, i32 698, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"post_rx_msgq() failed 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_init_rx_msgq._entry_ptr.81 = internal global ptr @qcom_slim_ngd_init_rx_msgq._entry.79, section ".printk_index", align 4
@qcom_slim_ngd_post_rx_msgq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 662, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to prepare rx channel\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom_slim_ngd_post_rx_msgq\00", [37 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_post_rx_msgq._entry_ptr = internal global ptr @qcom_slim_ngd_post_rx_msgq._entry, section ".printk_index", align 4
@qcom_slim_ngd_rx_msgq_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.84, ptr @.str.3, i32 637, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_slim_ngd_rx_msgq_cb\00", [39 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_rx_msgq_cb._entry_ptr = internal global ptr @qcom_slim_ngd_rx_msgq_cb._entry, section ".printk_index", align 4
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_init_tx_msgq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 720, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request TX dma channel\00", [63 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom_slim_ngd_init_tx_msgq\00", [37 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_init_tx_msgq._entry_ptr = internal global ptr @qcom_slim_ngd_init_tx_msgq._entry, section ".printk_index", align 4
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@qcom_slim_ngd_xfer_msg_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 926, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TX timed out:MC:0x%x,mt:0x%x\00", [35 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qcom_slim_ngd_xfer_msg_sync\00", [36 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_xfer_msg_sync._entry_ptr = internal global ptr @qcom_slim_ngd_xfer_msg_sync._entry, section ".printk_index", align 4
@qcom_slim_ngd_enable_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 979, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Fail to allocate TID\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qcom_slim_ngd_enable_stream\00", [36 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_enable_stream._entry_ptr = internal global ptr @qcom_slim_ngd_enable_stream._entry, section ".printk_index", align 4
@qcom_slim_ngd_enable_stream._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.92, ptr @.str.3, i32 993, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_enable_stream._entry_ptr.94 = internal global ptr @qcom_slim_ngd_enable_stream._entry.93, section ".printk_index", align 4
@qcom_slim_ngd_enable_stream._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 1004, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_enable_stream._entry_ptr.96 = internal global ptr @qcom_slim_ngd_enable_stream._entry.95, section ".printk_index", align 4
@qcom_slim_ngd_enable_stream._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.92, ptr @.str.3, i32 1013, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_enable_stream._entry_ptr.98 = internal global ptr @qcom_slim_ngd_enable_stream._entry.97, section ".printk_index", align 4
@qcom_slim_ngd_xfer_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 803, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"msg exceeds HW limit\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_slim_ngd_xfer_msg\00", [41 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_xfer_msg._entry_ptr = internal global ptr @qcom_slim_ngd_xfer_msg._entry, section ".printk_index", align 4
@qcom_slim_ngd_xfer_msg._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.3, i32 809, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Message buffer unavailable\0A\00", [36 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_xfer_msg._entry_ptr.103 = internal global ptr @qcom_slim_ngd_xfer_msg._entry.101, section ".printk_index", align 4
@qcom_slim_ngd_xfer_msg._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.3, i32 843, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to allocate TID\0A\00", [40 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_xfer_msg._entry_ptr.106 = internal global ptr @qcom_slim_ngd_xfer_msg._entry.104, section ".printk_index", align 4
@qcom_slim_ngd_xfer_msg._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.100, ptr @.str.3, i32 890, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_xfer_msg._entry_ptr.108 = internal global ptr @qcom_slim_ngd_xfer_msg._entry.107, section ".printk_index", align 4
@qcom_slim_ngd_xfer_msg._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.100, ptr @.str.3, i32 899, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_xfer_msg._entry_ptr.110 = internal global ptr @qcom_slim_ngd_xfer_msg._entry.109, section ".printk_index", align 4
@qcom_slim_ngd_tx_msg_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.3, i32 589, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to prepare channel\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcom_slim_ngd_tx_msg_post\00", [38 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_tx_msg_post._entry_ptr = internal global ptr @qcom_slim_ngd_tx_msg_post._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom,slim-ngd\00", [18 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_slim_ngd_runtime_suspend, ptr @qcom_slim_ngd_runtime_resume, ptr @qcom_slim_ngd_runtime_idle }, [36 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.3, i32 1488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"QMI service registration failed:%d\00", [61 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_slim_ngd_probe\00", [44 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_probe._entry_ptr = internal global ptr @qcom_slim_ngd_probe._entry, section ".printk_index", align 4
@qcom_slim_ngd_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.117 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&ctrl->m_work)\00", [63 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_probe.__key.118 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.119 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&ctrl->ngd_up_work)\00", [58 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ngd_master\00", [21 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_probe._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.116, ptr @.str.3, i32 1496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to start master worker\0A\00", [33 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_probe._entry_ptr.124 = internal global ptr @qcom_slim_ngd_probe._entry.122, section ".printk_index", align 4
@qcom_slim_ngd_qmi_svc_event_ops = internal constant { %struct.qmi_ops, [40 x i8] } { %struct.qmi_ops { ptr @qcom_slim_ngd_qmi_new_server, ptr @qcom_slim_ngd_qmi_del_server, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_qmi_svc_event_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.3, i32 1329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qmi_handle_init failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qcom_slim_ngd_qmi_svc_event_init\00", [63 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_qmi_svc_event_init._entry_ptr = internal global ptr @qcom_slim_ngd_qmi_svc_event_init._entry, section ".printk_index", align 4
@qcom_slim_ngd_qmi_svc_event_init._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.3, i32 1336, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qmi_add_lookup failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_qmi_svc_event_init._entry_ptr.129 = internal global ptr @qcom_slim_ngd_qmi_svc_event_init._entry.127, section ".printk_index", align 4
@qcom_slim_ngd_master_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.3, i32 1194, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SLIM SAT: Rcvd master capability\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qcom_slim_ngd_master_worker\00", [36 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_master_worker._entry_ptr = internal global ptr @qcom_slim_ngd_master_worker._entry, section ".printk_index", align 4
@qcom_slim_ngd_master_worker._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.3, i32 1203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unexpected state:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_master_worker._entry_ptr.134 = internal global ptr @qcom_slim_ngd_master_worker._entry.132, section ".printk_index", align 4
@qcom_slim_ngd_master_worker._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.131, ptr @.str.3, i32 1209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"capability message NACKed, retrying\0A\00", [59 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_master_worker._entry_ptr.137 = internal global ptr @qcom_slim_ngd_master_worker._entry.135, section ".printk_index", align 4
@qcom_slim_ngd_master_worker._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.131, ptr @.str.3, i32 1216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SLIM: capability TX failed:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_master_worker._entry_ptr.140 = internal global ptr @qcom_slim_ngd_master_worker._entry.138, section ".printk_index", align 4
@qcom_slim_ngd_notify_slaves._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.3, i32 1166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get logical address\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qcom_slim_ngd_notify_slaves\00", [36 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_notify_slaves._entry_ptr = internal global ptr @qcom_slim_ngd_notify_slaves._entry, section ".printk_index", align 4
@qcom_slim_ngd_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.3, i32 1629, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"slim resource not idle:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qcom_slim_ngd_runtime_suspend\00", [34 x i8] zeroinitializer }, align 32
@qcom_slim_ngd_runtime_suspend._entry_ptr = internal global ptr @qcom_slim_ngd_runtime_suspend._entry, section ".printk_index", align 4
@.str.145 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ngd_v1_5_offset_info = internal constant { %struct.ngd_reg_offset_data, [24 x i8] } { %struct.ngd_reg_offset_data { i32 4096, i32 4096 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 16, i64 17, i64 20]
@__sancov_gen_cov_switch_values.146 = internal global [5 x i64] [i64 3, i64 8, i64 16, i64 17, i64 20]
@__sancov_gen_cov_switch_values.147 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 268435455, i64 536870911]
@__sancov_gen_cov_switch_values.148 = internal global [6 x i64] [i64 4, i64 7, i64 14, i64 36, i64 37, i64 100]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.161 = private unnamed_addr constant [26 x i8] c"qcom_slim_ngd_ctrl_driver\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1646, i32 31 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1650, i32 11 }
@___asan_gen_.167 = private unnamed_addr constant [23 x i8] c"qcom_slim_ngd_dt_match\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1350, i32 34 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1531, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1536, i32 30 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1538, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1543, i32 46 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1560, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1561, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1562, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1569, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1573, i32 34 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1573, i32 47 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1575, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [21 x i8] c"qcom_slim_ngd_driver\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1655, i32 31 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 771, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1256, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1273, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1277, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [27 x i8] c"qcom_slim_qmi_msg_handlers\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 437, i32 37 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 462, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 470, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 488, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant [30 x i8] c"slimbus_power_resp_msg_v01_ei\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 327, i32 29 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 395, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [36 x i8] c"slimbus_select_inst_resp_msg_v01_ei\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 265, i32 29 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 358, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [35 x i8] c"slimbus_select_inst_req_msg_v01_ei\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 223, i32 29 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 367, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 374, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 379, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1242, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1115, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1132, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1148, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant [29 x i8] c"slimbus_power_req_msg_v01_ei\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 287, i32 29 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 416, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 423, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 429, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 751, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 757, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 680, i32 47 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 682, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 698, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 662, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 637, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 718, i32 47 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 720, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1169, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 925, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 979, i32 5 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 992, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1004, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1012, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 803, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 809, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 843, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 889, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 898, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 589, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 87, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1659, i32 11 }
@___asan_gen_.521 = private unnamed_addr constant [25 x i8] c"qcom_slim_ngd_dev_pm_ops\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1636, i32 32 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1488, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1492, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1493, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1494, i32 14 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1496, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant [32 x i8] c"qcom_slim_ngd_qmi_svc_event_ops\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1316, i32 29 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1329, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1336, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1194, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1202, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1209, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1216, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1166, i32 4 }
@___asan_gen_.611 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1629, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1441, i32 34 }
@___asan_gen_.623 = private unnamed_addr constant [21 x i8] c"ngd_v1_5_offset_info\00", align 1
@___asan_gen_.624 = private constant [35 x i8] c"../drivers/slimbus/qcom-ngd-ctrl.c\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 110, i32 41 }
@llvm.compiler.used = appending global [212 x ptr] [ptr @__UNIQUE_ID_description461, ptr @__UNIQUE_ID_file459, ptr @__UNIQUE_ID_license460, ptr @__exitcall_qcom_slim_ngd_ctrl_driver_exit, ptr @__initcall__kmod_slim_qcom_ngd_ctrl__458_1664_qcom_slim_ngd_ctrl_driver_init6, ptr @qcom_slim_ngd_ctrl_driver_exit, ptr @qcom_slim_ngd_ctrl_probe._entry, ptr @qcom_slim_ngd_ctrl_probe._entry.16, ptr @qcom_slim_ngd_ctrl_probe._entry.21, ptr @qcom_slim_ngd_ctrl_probe._entry.7, ptr @qcom_slim_ngd_ctrl_probe._entry_ptr, ptr @qcom_slim_ngd_ctrl_probe._entry_ptr.18, ptr @qcom_slim_ngd_ctrl_probe._entry_ptr.23, ptr @qcom_slim_ngd_ctrl_probe._entry_ptr.9, ptr @qcom_slim_ngd_enable._entry, ptr @qcom_slim_ngd_enable._entry.28, ptr @qcom_slim_ngd_enable._entry.31, ptr @qcom_slim_ngd_enable._entry_ptr, ptr @qcom_slim_ngd_enable._entry_ptr.30, ptr @qcom_slim_ngd_enable._entry_ptr.34, ptr @qcom_slim_ngd_enable_stream._entry, ptr @qcom_slim_ngd_enable_stream._entry.93, ptr @qcom_slim_ngd_enable_stream._entry.95, ptr @qcom_slim_ngd_enable_stream._entry.97, ptr @qcom_slim_ngd_enable_stream._entry_ptr, ptr @qcom_slim_ngd_enable_stream._entry_ptr.94, ptr @qcom_slim_ngd_enable_stream._entry_ptr.96, ptr @qcom_slim_ngd_enable_stream._entry_ptr.98, ptr @qcom_slim_ngd_init_dma._entry, ptr @qcom_slim_ngd_init_dma._entry.73, ptr @qcom_slim_ngd_init_dma._entry_ptr, ptr @qcom_slim_ngd_init_dma._entry_ptr.75, ptr @qcom_slim_ngd_init_rx_msgq._entry, ptr @qcom_slim_ngd_init_rx_msgq._entry.79, ptr @qcom_slim_ngd_init_rx_msgq._entry_ptr, ptr @qcom_slim_ngd_init_rx_msgq._entry_ptr.81, ptr @qcom_slim_ngd_init_tx_msgq._entry, ptr @qcom_slim_ngd_init_tx_msgq._entry_ptr, ptr @qcom_slim_ngd_interrupt._entry, ptr @qcom_slim_ngd_interrupt._entry_ptr, ptr @qcom_slim_ngd_master_worker._entry, ptr @qcom_slim_ngd_master_worker._entry.132, ptr @qcom_slim_ngd_master_worker._entry.135, ptr @qcom_slim_ngd_master_worker._entry.138, ptr @qcom_slim_ngd_master_worker._entry_ptr, ptr @qcom_slim_ngd_master_worker._entry_ptr.134, ptr @qcom_slim_ngd_master_worker._entry_ptr.137, ptr @qcom_slim_ngd_master_worker._entry_ptr.140, ptr @qcom_slim_ngd_notify_slaves._entry, ptr @qcom_slim_ngd_notify_slaves._entry_ptr, ptr @qcom_slim_ngd_post_rx_msgq._entry, ptr @qcom_slim_ngd_post_rx_msgq._entry_ptr, ptr @qcom_slim_ngd_power_up._entry, ptr @qcom_slim_ngd_power_up._entry.60, ptr @qcom_slim_ngd_power_up._entry.63, ptr @qcom_slim_ngd_power_up._entry_ptr, ptr @qcom_slim_ngd_power_up._entry_ptr.62, ptr @qcom_slim_ngd_power_up._entry_ptr.65, ptr @qcom_slim_ngd_probe._entry, ptr @qcom_slim_ngd_probe._entry.122, ptr @qcom_slim_ngd_probe._entry_ptr, ptr @qcom_slim_ngd_probe._entry_ptr.124, ptr @qcom_slim_ngd_qmi_svc_event_init._entry, ptr @qcom_slim_ngd_qmi_svc_event_init._entry.127, ptr @qcom_slim_ngd_qmi_svc_event_init._entry_ptr, ptr @qcom_slim_ngd_qmi_svc_event_init._entry_ptr.129, ptr @qcom_slim_ngd_runtime_resume._entry, ptr @qcom_slim_ngd_runtime_resume._entry_ptr, ptr @qcom_slim_ngd_runtime_suspend._entry, ptr @qcom_slim_ngd_runtime_suspend._entry_ptr, ptr @qcom_slim_ngd_rx_msgq_cb._entry, ptr @qcom_slim_ngd_rx_msgq_cb._entry_ptr, ptr @qcom_slim_ngd_tx_msg_post._entry, ptr @qcom_slim_ngd_tx_msg_post._entry_ptr, ptr @qcom_slim_ngd_xfer_msg._entry, ptr @qcom_slim_ngd_xfer_msg._entry.101, ptr @qcom_slim_ngd_xfer_msg._entry.104, ptr @qcom_slim_ngd_xfer_msg._entry.107, ptr @qcom_slim_ngd_xfer_msg._entry.109, ptr @qcom_slim_ngd_xfer_msg._entry_ptr, ptr @qcom_slim_ngd_xfer_msg._entry_ptr.103, ptr @qcom_slim_ngd_xfer_msg._entry_ptr.106, ptr @qcom_slim_ngd_xfer_msg._entry_ptr.108, ptr @qcom_slim_ngd_xfer_msg._entry_ptr.110, ptr @qcom_slim_ngd_xfer_msg_sync._entry, ptr @qcom_slim_ngd_xfer_msg_sync._entry_ptr, ptr @qcom_slim_qmi_init._entry, ptr @qcom_slim_qmi_init._entry.37, ptr @qcom_slim_qmi_init._entry.40, ptr @qcom_slim_qmi_init._entry_ptr, ptr @qcom_slim_qmi_init._entry_ptr.39, ptr @qcom_slim_qmi_init._entry_ptr.42, ptr @qcom_slim_qmi_power_resp_cb._entry, ptr @qcom_slim_qmi_power_resp_cb._entry_ptr, ptr @qcom_slim_qmi_send_power_request._entry, ptr @qcom_slim_qmi_send_power_request._entry.67, ptr @qcom_slim_qmi_send_power_request._entry.69, ptr @qcom_slim_qmi_send_power_request._entry_ptr, ptr @qcom_slim_qmi_send_power_request._entry_ptr.68, ptr @qcom_slim_qmi_send_power_request._entry_ptr.70, ptr @qcom_slim_qmi_send_select_inst_req._entry, ptr @qcom_slim_qmi_send_select_inst_req._entry.47, ptr @qcom_slim_qmi_send_select_inst_req._entry.50, ptr @qcom_slim_qmi_send_select_inst_req._entry.53, ptr @qcom_slim_qmi_send_select_inst_req._entry_ptr, ptr @qcom_slim_qmi_send_select_inst_req._entry_ptr.49, ptr @qcom_slim_qmi_send_select_inst_req._entry_ptr.52, ptr @qcom_slim_qmi_send_select_inst_req._entry_ptr.55, ptr @qcom_slim_ngd_ctrl_driver, ptr @.str, ptr @qcom_slim_ngd_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @qcom_slim_ngd_ctrl_probe.__key, ptr @.str.11, ptr @qcom_slim_ngd_ctrl_probe.__key.12, ptr @.str.13, ptr @qcom_slim_ngd_ctrl_probe.__key.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @qcom_slim_ngd_driver, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @qcom_slim_qmi_msg_handlers, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @slimbus_power_resp_msg_v01_ei, ptr @.str.43, ptr @.str.44, ptr @slimbus_select_inst_resp_msg_v01_ei, ptr @.str.45, ptr @.str.46, ptr @slimbus_select_inst_req_msg_v01_ei, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @slimbus_power_req_msg_v01_ei, ptr @.str.66, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.111, ptr @.str.112, ptr @init_completion.__key, ptr @.str.113, ptr @.str.114, ptr @qcom_slim_ngd_dev_pm_ops, ptr @.str.115, ptr @.str.116, ptr @qcom_slim_ngd_probe.__key, ptr @.str.117, ptr @qcom_slim_ngd_probe.__key.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @qcom_slim_ngd_qmi_svc_event_ops, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @ngd_v1_5_offset_info], section "llvm.metadata"
@0 = internal global [155 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_ctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_ctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_ctrl_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_ctrl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_ctrl_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_ctrl_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_ctrl_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_ctrl_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_enable._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_enable._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_qmi_msg_handlers to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_qmi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_qmi_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_qmi_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slimbus_power_resp_msg_v01_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_qmi_power_resp_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slimbus_select_inst_resp_msg_v01_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_qmi_send_select_inst_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slimbus_select_inst_req_msg_v01_ei to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_qmi_send_select_inst_req._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_qmi_send_select_inst_req._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_qmi_send_select_inst_req._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_power_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_power_up._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_power_up._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slimbus_power_req_msg_v01_ei to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_qmi_send_power_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_qmi_send_power_request._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_qmi_send_power_request._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_init_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_init_dma._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_init_rx_msgq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_init_rx_msgq._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_post_rx_msgq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_rx_msgq_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_init_tx_msgq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_xfer_msg_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_enable_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_enable_stream._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_enable_stream._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_enable_stream._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_xfer_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_xfer_msg._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_xfer_msg._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_xfer_msg._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_xfer_msg._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_tx_msg_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_probe.__key.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_probe._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_qmi_svc_event_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_qmi_svc_event_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_qmi_svc_event_init._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_master_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_master_worker._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_master_worker._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_master_worker._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_notify_slaves._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_ngd_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngd_v1_5_offset_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_ngd_ctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_slim_ngd_ctrl_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_slim_ngd_ctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_slim_ngd_ctrl_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_ngd_ctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4288, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call2) #10
  %base = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #10
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %3 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call10, align 4
  %call.i129 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %4, ptr noundef nonnull @qcom_slim_ngd_interrupt, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.6, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool16.not = icmp eq i32 %call.i129, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %nb = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 18
  %5 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @qcom_slim_ngd_ssr_notify, ptr %nb, align 8
  %call24 = tail call ptr @qcom_register_ssr_notifier(ptr noundef nonnull @.str.10, ptr noundef %nb) #10
  %notifier = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 19
  %6 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call24, ptr %notifier, align 4
  %cmp.i130 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %dev31 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %dev31 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %dev31, align 8
  %rootfreq = getelementptr inbounds %struct.slim_framer, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %rootfreq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3072000, ptr %rootfreq, align 8
  %superfreq = getelementptr inbounds %struct.slim_framer, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %superfreq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4000, ptr %superfreq, align 4
  %a_framer = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 1, i32 7
  %11 = ptrtoint ptr %a_framer to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %a_framer, align 8
  %clkgear = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %clkgear to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %clkgear, align 8
  %get_laddr = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 1, i32 15
  %13 = ptrtoint ptr %get_laddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @qcom_slim_ngd_get_laddr, ptr %get_laddr, align 8
  %enable_stream = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 1, i32 16
  %14 = ptrtoint ptr %enable_stream to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @qcom_slim_ngd_enable_stream, ptr %enable_stream, align 4
  %xfer_msg = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 1, i32 13
  %15 = ptrtoint ptr %xfer_msg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @qcom_slim_ngd_xfer_msg, ptr %xfer_msg, align 8
  %wakeup = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 1, i32 18
  %16 = ptrtoint ptr %wakeup to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %wakeup, align 4
  %state = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 21
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %state, align 4
  %tx_lock = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @qcom_slim_ngd_ctrl_probe.__key) #10
  %ssr_lock = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %ssr_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @qcom_slim_ngd_ctrl_probe.__key.12) #10
  %tx_buf_lock = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %tx_buf_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @qcom_slim_ngd_ctrl_probe.__key.14, i16 noundef signext 3) #10
  %reconf = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 10
  %18 = ptrtoint ptr %reconf to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %reconf, align 4
  %wait.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.113, ptr noundef nonnull @init_completion.__key) #10
  %qmi_comp = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 2, i32 5
  %19 = ptrtoint ptr %qmi_comp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %qmi_comp, align 4
  %wait.i131 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 2, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i131, ptr noundef nonnull @.str.113, ptr noundef nonnull @init_completion.__key) #10
  %qmi_up = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 14
  %20 = ptrtoint ptr %qmi_up to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %qmi_up, align 4
  %wait.i132 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i132, ptr noundef nonnull @.str.113, ptr noundef nonnull @init_completion.__key) #10
  %call52 = tail call ptr @pdr_handle_alloc(ptr noundef nonnull @slim_pd_status, ptr noundef nonnull %call.i) #10
  %pdr = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 20
  %21 = ptrtoint ptr %pdr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call52, ptr %pdr, align 8
  %cmp.i133 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %do.end58, label %if.end61

do.end58:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #13
  %22 = ptrtoint ptr %pdr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdr, align 8
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup

if.end61:                                         ; preds = %if.end30
  %call63 = tail call ptr @pdr_add_lookup(ptr noundef %call52, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #10
  %cmp.i134 = icmp ule ptr %call63, inttoptr (i32 -4096 to ptr)
  %cmp.not = icmp eq ptr %call63, inttoptr (i32 -114 to ptr)
  %or.cond = or i1 %cmp.i134, %cmp.not
  br i1 %or.cond, label %if.end71, label %do.end69

do.end69:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %call63 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef 0) #13
  br label %cleanup

if.end71:                                         ; preds = %if.end61
  %call72 = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_slim_ngd_driver, ptr noundef null) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #10
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %id.i, align 4, !annotation !302
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %27 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node.i, align 8
  %call.i135 = tail call ptr @of_match_node(ptr noundef nonnull @qcom_slim_ngd_dt_match, ptr noundef %28) #10
  %data1.i = getelementptr inbounds %struct.of_device_id, ptr %call.i135, i32 0, i32 3
  %29 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data1.i, align 4
  %31 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node.i, align 8
  %call3.i = tail call ptr @of_get_next_available_child(ptr noundef %32, ptr noundef null) #10
  %cmp.not58.i = icmp eq ptr %call3.i, null
  br i1 %cmp.not58.i, label %if.end71.of_qcom_slim_ngd_register.exit_crit_edge, label %if.end71.for.body.i_crit_edge

if.end71.for.body.i_crit_edge:                    ; preds = %if.end71
  br label %for.body.i

if.end71.of_qcom_slim_ngd_register.exit_crit_edge: ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_qcom_slim_ngd_register.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end71.for.body.i_crit_edge
  %node.059.i = phi ptr [ %call30.i, %for.inc.i.for.body.i_crit_edge ], [ %call3.i, %if.end71.for.body.i_crit_edge ]
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.059.i, ptr noundef nonnull @.str.145, ptr noundef nonnull %id.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 12) #14
  %tobool6.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @of_node_put(ptr noundef nonnull %node.059.i) #10
  br label %of_qcom_slim_ngd_register.exit

if.end8.i:                                        ; preds = %if.end.i
  %34 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id.i, align 4
  %call9.i = call ptr @platform_device_alloc(ptr noundef nonnull @.str.114, i32 noundef %35) #10
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call9.i, ptr %call7.i.i.i, align 8
  %tobool11.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @of_node_put(ptr noundef nonnull %node.059.i) #10
  br label %of_qcom_slim_ngd_register.exit

if.end13.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id.i, align 4
  %id14.i = getelementptr inbounds %struct.qcom_slim_ngd, ptr %call7.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %id14.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %id14.i, align 8
  %parent16.i = getelementptr inbounds %struct.platform_device, ptr %call9.i, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %parent16.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev1, ptr %parent16.i, align 8
  %41 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call7.i.i.i, align 8
  %driver_override.i = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %driver_override.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.114, ptr %driver_override.i, align 8
  %44 = load ptr, ptr %call7.i.i.i, align 8
  %of_node20.i = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3, i32 27
  %45 = ptrtoint ptr %of_node20.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %node.059.i, ptr %of_node20.i, align 8
  %ngd21.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %call.i, i32 0, i32 3
  %46 = ptrtoint ptr %ngd21.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i.i, ptr %ngd21.i, align 4
  %47 = load ptr, ptr %call7.i.i.i, align 8
  %call23.i = call i32 @platform_device_add(ptr noundef %47) #10
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %50 = ptrtoint ptr %id14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id14.i, align 8
  %52 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %30, align 4
  %mul.i = mul i32 %53, %51
  %add.ptr.i = getelementptr i8, ptr %49, i32 %mul.i
  %sub.i = add i32 %51, -1
  %size.i = getelementptr inbounds %struct.ngd_reg_offset_data, ptr %30, i32 0, i32 1
  %54 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size.i, align 4
  %mul26.i = mul i32 %55, %sub.i
  %add.ptr27.i = getelementptr i8, ptr %add.ptr.i, i32 %mul26.i
  %base28.i = getelementptr inbounds %struct.qcom_slim_ngd, ptr %call7.i.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %base28.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr27.i, ptr %base28.i, align 4
  br label %of_qcom_slim_ngd_register.exit

for.inc.i:                                        ; preds = %for.body.i
  %57 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %of_node.i, align 8
  %call30.i = call ptr @of_get_next_available_child(ptr noundef %58, ptr noundef nonnull %node.059.i) #10
  %cmp.not.i = icmp eq ptr %call30.i, null
  br i1 %cmp.not.i, label %for.inc.i.of_qcom_slim_ngd_register.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.of_qcom_slim_ngd_register.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_qcom_slim_ngd_register.exit

of_qcom_slim_ngd_register.exit:                   ; preds = %for.inc.i.of_qcom_slim_ngd_register.exit_crit_edge, %if.end13.i, %if.then12.i, %if.then7.i, %if.end71.of_qcom_slim_ngd_register.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end13.i ], [ -12, %if.then12.i ], [ -12, %if.then7.i ], [ -19, %if.end71.of_qcom_slim_ngd_register.exit_crit_edge ], [ -19, %for.inc.i.of_qcom_slim_ngd_register.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #10
  br label %cleanup

cleanup:                                          ; preds = %of_qcom_slim_ngd_register.exit, %do.end69, %do.end58, %if.then27, %do.end20, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %call.i129, %do.end20 ], [ %7, %if.then27 ], [ %24, %do.end58 ], [ %25, %do.end69 ], [ %retval.0.i, %of_qcom_slim_ngd_register.exit ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_ngd_ctrl_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_slim_ngd_driver) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_ngd_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ngd = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %ngd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ngd, align 4
  %base1 = getelementptr inbounds %struct.qcom_slim_ngd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !303
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %6 = and i32 %5, 771751936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.do.body11_crit_edge, label %do.end

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %d, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.24, i32 noundef %5) #13
  br label %do.body11

do.body11:                                        ; preds = %do.end, %entry.do.body11_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void @arm_heavy_mb() #10
  %add.ptr14 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %4) #10, !srcloc !306
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_ngd_ssr_notify(ptr noundef %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -4232
  tail call fastcc void @qcom_slim_ngd_ssr_pdr_notify(ptr noundef %add.ptr, i32 noundef %action)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_register_ssr_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_ngd_get_laddr(ptr noundef %ctrl, ptr nocapture noundef readonly %ea, ptr nocapture noundef writeonly %laddr) #2 align 64 {
entry:
  %msg = alloca %struct.slim_val_inf, align 4
  %failed_ea = alloca [6 x i8], align 1
  %txn = alloca %struct.slim_msg_txn, align 4
  %wbuf = alloca [10 x i8], align 1
  %rbuf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #10
  %0 = call ptr @memset(ptr %msg, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %failed_ea) #10
  %1 = call ptr @memset(ptr %failed_ea, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txn) #10
  %2 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 1
  %3 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 2
  %4 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 3
  %5 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 4
  %6 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 6
  %7 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 7
  %8 = getelementptr inbounds i8, ptr %txn, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %wbuf) #10
  %10 = call ptr @memset(ptr %wbuf, i32 0, i32 10)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %rbuf) #10
  %11 = call ptr @memset(ptr %rbuf, i32 0, i32 10)
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %2, align 1
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %4, align 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %6, align 1
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %5, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 13, ptr %3, align 2
  %17 = ptrtoint ptr %txn to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 11, ptr %txn, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg, ptr %7, align 4
  %num_bytes = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 1
  %19 = ptrtoint ptr %num_bytes to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 7, ptr %num_bytes, align 2
  %wbuf4 = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 3
  %20 = ptrtoint ptr %wbuf4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %wbuf, ptr %wbuf4, align 4
  %rbuf7 = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 2
  %21 = ptrtoint ptr %rbuf7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rbuf, ptr %rbuf7, align 4
  %call = call i32 @slim_alloc_txn_tid(ptr noundef %ctrl, ptr noundef nonnull %txn) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 2
  %25 = ptrtoint ptr %wbuf to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %wbuf, align 1
  %arrayidx8 = getelementptr inbounds [10 x i8], ptr %wbuf, i32 0, i32 1
  %26 = call ptr @memcpy(ptr %arrayidx8, ptr %ea, i32 6)
  %call9 = call fastcc i32 @qcom_slim_ngd_xfer_msg_sync(ptr noundef %ctrl, ptr noundef nonnull %txn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @slim_free_txn_tid(ptr noundef %ctrl, ptr noundef nonnull %txn) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %rbuf, ptr noundef nonnull dereferenceable(6) %failed_ea, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool15.not = icmp eq i32 %bcmp, 0
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx18 = getelementptr inbounds [10 x i8], ptr %rbuf, i32 0, i32 6
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx18, align 1
  %29 = ptrtoint ptr %laddr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %laddr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end11.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then10 ], [ 0, %if.end17 ], [ %call, %entry.cleanup_crit_edge ], [ -6, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %rbuf) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %wbuf) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txn) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %failed_ea) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_ngd_enable_stream(ptr nocapture noundef readonly %rt) #2 align 64 {
entry:
  %msg = alloca %struct.slim_val_inf, align 4
  %wbuf = alloca [40 x i8], align 1
  %rbuf = alloca [40 x i8], align 1
  %txn = alloca %struct.slim_msg_txn, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.slim_stream_runtime, ptr %rt, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ctrl1 = getelementptr inbounds %struct.slim_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #10
  %4 = call ptr @memset(ptr %msg, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wbuf) #10
  %5 = call ptr @memset(ptr %wbuf, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %rbuf) #10
  %6 = call ptr @memset(ptr %rbuf, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txn) #10
  %7 = call ptr @memset(ptr %txn, i32 0, i32 16)
  %mt = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 1
  %8 = ptrtoint ptr %mt to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %mt, align 1
  %la = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 6
  %9 = ptrtoint ptr %la to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %la, align 1
  %msg2 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 7
  %10 = ptrtoint ptr %msg2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg, ptr %msg2, align 4
  %num_bytes = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %num_bytes to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %num_bytes, align 2
  %wbuf5 = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %wbuf5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %wbuf, ptr %wbuf5, align 4
  %rbuf8 = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %rbuf8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rbuf, ptr %rbuf8, align 4
  %num_ports = getelementptr inbounds %struct.slim_stream_runtime, ptr %rt, i32 0, i32 7
  %14 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp172 = icmp sgt i32 %15, 0
  br i1 %cmp172, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ports = getelementptr inbounds %struct.slim_stream_runtime, ptr %rt, i32 0, i32 8
  %ratem = getelementptr inbounds %struct.slim_stream_runtime, ptr %rt, i32 0, i32 6
  %laddr = getelementptr inbounds %struct.slim_device, ptr %1, i32 0, i32 4
  %bps = getelementptr inbounds %struct.slim_stream_runtime, ptr %rt, i32 0, i32 5
  %prot = getelementptr inbounds %struct.slim_stream_runtime, ptr %rt, i32 0, i32 3
  %tid = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end71.for.body_crit_edge, %for.body.lr.ph
  %i.0173 = phi i32 [ 0, %for.body.lr.ph ], [ %inc82, %if.end71.for.body_crit_edge ]
  %16 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ports, align 4
  %18 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %msg2, align 4
  %num_bytes10 = getelementptr inbounds %struct.slim_val_inf, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %num_bytes10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_bytes10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp11 = icmp eq i8 %21, 0
  br i1 %cmp11, label %if.then, label %for.body.if.end71_crit_edge

for.body.if.end71_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then:                                          ; preds = %for.body
  %22 = ptrtoint ptr %ratem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ratem, align 4
  %div = udiv i32 1536, %23
  %24 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %laddr, align 8
  %26 = ptrtoint ptr %num_bytes10 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %num_bytes10, align 2
  %27 = ptrtoint ptr %wbuf to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %25, ptr %wbuf, align 1
  %28 = ptrtoint ptr %bps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bps, align 4
  %shr = lshr i32 %29, 2
  %aux_fmt = getelementptr %struct.slim_port, ptr %17, i32 %i.0173, i32 3, i32 4
  %30 = ptrtoint ptr %aux_fmt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %aux_fmt, align 4
  %shl = shl i32 %31, 6
  %or = or i32 %shl, %shr
  %conv16 = trunc i32 %or to i8
  %32 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %msg2, align 4
  %num_bytes18 = getelementptr inbounds %struct.slim_val_inf, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %num_bytes18 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_bytes18, align 2
  %idxprom19 = zext i8 %35 to i32
  %arrayidx20 = getelementptr [40 x i8], ptr %wbuf, i32 0, i32 %idxprom19
  %36 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv16, ptr %arrayidx20, align 1
  %rem.lhs.trunc = trunc i32 %div to i16
  %rem171 = urem i16 %rem.lhs.trunc, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem171)
  %tobool.not = icmp eq i16 %rem171, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then21

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %num_bytes18 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_bytes18, align 2
  %idxprom24 = zext i8 %38 to i32
  %arrayidx25 = getelementptr [40 x i8], ptr %wbuf, i32 0, i32 %idxprom24
  %39 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx25, align 1
  %41 = or i8 %40, 32
  store i8 %41, ptr %arrayidx25, align 1
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then.if.end_crit_edge
  %42 = ptrtoint ptr %num_bytes18 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_bytes18, align 2
  %inc31 = add i8 %43, 1
  store i8 %inc31, ptr %num_bytes18, align 2
  %44 = shl nuw nsw i16 %rem171, 4
  %shl32 = zext i16 %44 to i32
  %45 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %prot, align 4
  %or33 = or i32 %46, %shl32
  %conv34 = trunc i32 %or33 to i8
  %47 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %msg2, align 4
  %num_bytes36 = getelementptr inbounds %struct.slim_val_inf, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %num_bytes36 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %num_bytes36, align 2
  %inc37 = add i8 %50, 1
  store i8 %inc37, ptr %num_bytes36, align 2
  %idxprom38 = zext i8 %50 to i32
  %arrayidx39 = getelementptr [40 x i8], ptr %wbuf, i32 0, i32 %idxprom38
  %51 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv34, ptr %arrayidx39, align 1
  %52 = load i32, ptr %prot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp41 = icmp eq i32 %52, 0
  %prrate = getelementptr %struct.slim_port, ptr %17, i32 %i.0173, i32 3, i32 1
  %53 = ptrtoint ptr %prrate to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %prrate, align 4
  %55 = trunc i32 %54 to i8
  %conv46 = or i8 %55, -128
  %.sink = select i1 %cmp41, i8 %conv46, i8 %55
  %56 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %msg2, align 4
  %num_bytes56 = getelementptr inbounds %struct.slim_val_inf, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %num_bytes56 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %num_bytes56, align 2
  %inc57 = add i8 %59, 1
  store i8 %inc57, ptr %num_bytes56, align 2
  %idxprom58 = zext i8 %59 to i32
  %arrayidx59 = getelementptr [40 x i8], ptr %wbuf, i32 0, i32 %idxprom58
  %60 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %.sink, ptr %arrayidx59, align 1
  %call = call i32 @slim_alloc_txn_tid(ptr noundef %3, ptr noundef nonnull %txn) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool61.not = icmp eq i32 %call, 0
  br i1 %tobool61.not, label %if.end64, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.91) #13
  br label %cleanup132

if.end64:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %tid, align 2
  %63 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %msg2, align 4
  %num_bytes66 = getelementptr inbounds %struct.slim_val_inf, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %num_bytes66 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %num_bytes66, align 2
  %inc67 = add i8 %66, 1
  store i8 %inc67, ptr %num_bytes66, align 2
  %idxprom68 = zext i8 %66 to i32
  %arrayidx69 = getelementptr [40 x i8], ptr %wbuf, i32 0, i32 %idxprom68
  %67 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %62, ptr %arrayidx69, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.end64, %for.body.if.end71_crit_edge
  %ch72 = getelementptr %struct.slim_port, ptr %17, i32 %i.0173, i32 3
  %68 = ptrtoint ptr %ch72 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ch72, align 4
  %conv73 = trunc i32 %69 to i8
  %70 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %msg2, align 4
  %num_bytes75 = getelementptr inbounds %struct.slim_val_inf, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %num_bytes75 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %num_bytes75, align 2
  %inc76 = add i8 %73, 1
  store i8 %inc76, ptr %num_bytes75, align 2
  %idxprom77 = zext i8 %73 to i32
  %arrayidx78 = getelementptr [40 x i8], ptr %wbuf, i32 0, i32 %idxprom77
  %74 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv73, ptr %arrayidx78, align 1
  %inc82 = add nuw nsw i32 %i.0173, 1
  %75 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_ports, align 4
  %cmp = icmp slt i32 %inc82, %76
  br i1 %cmp, label %if.end71.for.body_crit_edge, label %if.end71.for.end_crit_edge

if.end71.for.end_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end71.for.body_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end71.for.end_crit_edge, %entry.for.end_crit_edge
  %mc = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 2
  %77 = ptrtoint ptr %mc to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 33, ptr %mc, align 2
  %78 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %msg2, align 4
  %num_bytes84 = getelementptr inbounds %struct.slim_val_inf, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %num_bytes84 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %num_bytes84, align 2
  %add = add i8 %81, 4
  %82 = ptrtoint ptr %txn to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %add, ptr %txn, align 4
  %call87 = call fastcc i32 @qcom_slim_ngd_xfer_msg_sync(ptr noundef %3, ptr noundef nonnull %txn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end98, label %if.then89

if.then89:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @slim_free_txn_tid(ptr noundef %3, ptr noundef nonnull %txn) #10
  %83 = ptrtoint ptr %mc to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %mc, align 2
  %conv95 = zext i8 %84 to i32
  %85 = ptrtoint ptr %mt to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %mt, align 1
  %conv97 = zext i8 %86 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.89, i32 noundef %conv95, i32 noundef %conv97) #13
  br label %cleanup132

if.end98:                                         ; preds = %for.end
  %87 = ptrtoint ptr %mc to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 36, ptr %mc, align 2
  %88 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %msg2, align 4
  %num_bytes101 = getelementptr inbounds %struct.slim_val_inf, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %num_bytes101 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 2, ptr %num_bytes101, align 2
  %laddr102 = getelementptr inbounds %struct.slim_device, ptr %1, i32 0, i32 4
  %91 = ptrtoint ptr %laddr102 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %laddr102, align 8
  %arrayidx103 = getelementptr inbounds [40 x i8], ptr %wbuf, i32 0, i32 1
  %93 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx103, align 1
  %94 = load ptr, ptr %msg2, align 4
  %num_bytes105 = getelementptr inbounds %struct.slim_val_inf, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %num_bytes105 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %num_bytes105, align 2
  %add107 = add i8 %96, 4
  %97 = ptrtoint ptr %txn to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %add107, ptr %txn, align 4
  %call110 = call i32 @slim_alloc_txn_tid(ptr noundef %3, ptr noundef nonnull %txn) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end117, label %do.end115

do.end115:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.91) #13
  br label %cleanup132

if.end117:                                        ; preds = %if.end98
  %tid118 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 5
  %100 = ptrtoint ptr %tid118 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %tid118, align 2
  %102 = ptrtoint ptr %wbuf to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %wbuf, align 1
  %call120 = call fastcc i32 @qcom_slim_ngd_xfer_msg_sync(ptr noundef %3, ptr noundef nonnull %txn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end117.cleanup132_crit_edge, label %if.then122

if.end117.cleanup132_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132

if.then122:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  call void @slim_free_txn_tid(ptr noundef %3, ptr noundef nonnull %txn) #10
  %103 = ptrtoint ptr %mc to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %mc, align 2
  %conv128 = zext i8 %104 to i32
  %105 = ptrtoint ptr %mt to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %mt, align 1
  %conv130 = zext i8 %106 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.89, i32 noundef %conv128, i32 noundef %conv130) #13
  br label %cleanup132

cleanup132:                                       ; preds = %if.then122, %if.end117.cleanup132_crit_edge, %do.end115, %if.then89, %do.end
  %retval.4 = phi i32 [ -6, %do.end ], [ %call87, %if.then89 ], [ %call110, %do.end115 ], [ %call120, %if.then122 ], [ 0, %if.end117.cleanup132_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txn) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %rbuf) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wbuf) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #10
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_ngd_xfer_msg(ptr noundef %sctrl, ptr noundef %txn) #2 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  %tx_sent = alloca %struct.completion, align 4
  %done = alloca %struct.completion, align 4
  %wbuf = alloca [40 x i8], align 1
  %rbuf = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctrl, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tx_sent) #10
  %4 = getelementptr inbounds i8, ptr %tx_sent, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 52)
  %6 = ptrtoint ptr %tx_sent to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tx_sent, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %tx_sent, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.113, ptr noundef nonnull @init_completion.__key) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #10
  %7 = getelementptr inbounds i8, ptr %done, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 52)
  %9 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %done, align 4
  %wait.i302 = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i302, ptr noundef nonnull @.str.113, ptr noundef nonnull @init_completion.__key) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wbuf) #10
  %10 = call ptr @memset(ptr %wbuf, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %rbuf) #10
  %11 = call ptr @memset(ptr %rbuf, i32 255, i32 40)
  %la2 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 6
  %12 = ptrtoint ptr %la2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %la2, align 1
  %mt = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 1
  %14 = ptrtoint ptr %mt to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp = icmp eq i8 %15, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mc = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 2
  %16 = ptrtoint ptr %mc to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mc, align 2
  %18 = and i8 %17, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %18)
  %19 = icmp eq i8 %18, 64
  br i1 %19, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dt = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 3
  %20 = ptrtoint ptr %dt to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp13 = icmp eq i8 %21, 1
  br i1 %cmp13, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %msg = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 7
  %22 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %msg, align 4
  %num_bytes = getelementptr inbounds %struct.slim_val_inf, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_bytes, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %25)
  %cmp18 = icmp ugt i8 %25, 40
  br i1 %cmp18, label %if.end16.do.end_crit_edge, label %lor.lhs.false

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end16
  %26 = ptrtoint ptr %txn to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %txn, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %27)
  %cmp21 = icmp ugt i8 %27, 40
  br i1 %cmp21, label %lor.lhs.false.do.end_crit_edge, label %if.end25

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end16.do.end_crit_edge
  %dev24 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev24, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.99) #13
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false
  %tx_buf_lock.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 15
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_buf_lock.i) #10
  %tx_tail.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 26
  %30 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_tail.i, align 8
  %add.i = add i32 %31, 1
  %rem.i = srem i32 %add.i, 32
  %tx_head.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 27
  %32 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %33)
  %cmp5.i = icmp eq i32 %rem.i, %33
  br i1 %cmp5.i, label %qcom_slim_ngd_tx_msg_get.exit.thread, label %qcom_slim_ngd_tx_msg_get.exit

qcom_slim_ngd_tx_msg_get.exit.thread:             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_buf_lock.i, i32 noundef %call2.i) #10
  br label %do.end32

qcom_slim_ngd_tx_msg_get.exit:                    ; preds = %if.end25
  %tx_base.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 25
  %34 = ptrtoint ptr %tx_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_base.i, align 4
  %mul.i = mul i32 %31, 40
  %add.ptr.i = getelementptr i8, ptr %35, i32 %mul.i
  %base.i = getelementptr %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 9, i32 %31, i32 5
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i, ptr %base.i, align 4
  %comp10.i = getelementptr %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 9, i32 %31, i32 2
  %37 = ptrtoint ptr %comp10.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %tx_sent, ptr %comp10.i, align 4
  %38 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_tail.i, align 8
  %add12.i = add i32 %39, 1
  %rem13.i = srem i32 %add12.i, 32
  store i32 %rem13.i, ptr %tx_tail.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_buf_lock.i, i32 noundef %call2.i) #10
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %tobool.not = icmp eq ptr %41, null
  br i1 %tobool.not, label %qcom_slim_ngd_tx_msg_get.exit.do.end32_crit_edge, label %if.end34

qcom_slim_ngd_tx_msg_get.exit.do.end32_crit_edge: ; preds = %qcom_slim_ngd_tx_msg_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.end32:                                         ; preds = %qcom_slim_ngd_tx_msg_get.exit.do.end32_crit_edge, %qcom_slim_ngd_tx_msg_get.exit.thread
  %dev33 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 4
  %42 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev33, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.102) #13
  br label %cleanup

if.end34:                                         ; preds = %qcom_slim_ngd_tx_msg_get.exit
  %44 = ptrtoint ptr %mt to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp37 = icmp eq i8 %45, 0
  br i1 %cmp37, label %land.lhs.true39, label %if.end34.if.end103_crit_edge

if.end34.if.end103_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

land.lhs.true39:                                  ; preds = %if.end34
  %mc40 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 2
  %46 = ptrtoint ptr %mc40 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %mc40, align 2
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i8 %47, label %land.lhs.true39.if.end103_crit_edge [
    i8 16, label %land.lhs.true39.if.then54_crit_edge
    i8 17, label %land.lhs.true39.if.then54_crit_edge320
    i8 20, label %land.lhs.true39.if.then54_crit_edge321
  ]

land.lhs.true39.if.then54_crit_edge321:           ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

land.lhs.true39.if.then54_crit_edge320:           ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

land.lhs.true39.if.then54_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

land.lhs.true39.if.end103_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.then54:                                        ; preds = %land.lhs.true39.if.then54_crit_edge, %land.lhs.true39.if.then54_crit_edge320, %land.lhs.true39.if.then54_crit_edge321
  %49 = ptrtoint ptr %mt to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %mt, align 1
  %50 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %47, label %if.then54.cleanup_crit_edge [
    i8 16, label %if.then54.sw.epilog_crit_edge
    i8 17, label %sw.bb59
    i8 20, label %sw.bb61
  ]

if.then54.sw.epilog_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb59:                                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb61, %sw.bb59, %if.then54.sw.epilog_crit_edge
  %.sink = phi i8 [ 46, %sw.bb61 ], [ 45, %sw.bb59 ], [ 44, %if.then54.sw.epilog_crit_edge ]
  %51 = ptrtoint ptr %mc40 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %.sink, ptr %mc40, align 2
  %52 = ptrtoint ptr %la2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %la2, align 1
  %54 = ptrtoint ptr %wbuf to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %wbuf, align 1
  %55 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %msg, align 4
  %wbuf65 = getelementptr inbounds %struct.slim_val_inf, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %wbuf65 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wbuf65, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  %arrayidx68 = getelementptr inbounds [40 x i8], ptr %wbuf, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx68, align 1
  %62 = load i8, ptr %mc40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %62)
  %cmp71.not = icmp eq i8 %62, 46
  br i1 %cmp71.not, label %sw.epilog.if.end79_crit_edge, label %if.then73

sw.epilog.if.end79_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then73:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx76 = getelementptr i8, ptr %58, i32 1
  %63 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx76, align 1
  %arrayidx78 = getelementptr inbounds [40 x i8], ptr %wbuf, i32 0, i32 2
  %65 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx78, align 1
  br label %if.end79

if.end79:                                         ; preds = %if.then73, %sw.epilog.if.end79_crit_edge
  %i.0 = phi i32 [ 3, %if.then73 ], [ 2, %sw.epilog.if.end79_crit_edge ]
  %comp = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 8
  %66 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %done, ptr %comp, align 4
  %call80 = call i32 @slim_alloc_txn_tid(ptr noundef %sctrl, ptr noundef %txn) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end87, label %do.end85

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %dev86 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 4
  %67 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev86, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.105) #13
  br label %cleanup

if.end87:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %tid = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 5
  %69 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %tid, align 2
  %arrayidx89 = getelementptr [40 x i8], ptr %wbuf, i32 0, i32 %i.0
  %71 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx89, align 1
  %72 = trunc i32 %i.0 to i8
  %conv90 = add nuw nsw i8 %72, 1
  %73 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %msg, align 4
  %num_bytes92 = getelementptr inbounds %struct.slim_val_inf, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %num_bytes92 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv90, ptr %num_bytes92, align 2
  %76 = load ptr, ptr %msg, align 4
  %wbuf94 = getelementptr inbounds %struct.slim_val_inf, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %wbuf94 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %wbuf, ptr %wbuf94, align 4
  %78 = load ptr, ptr %msg, align 4
  %rbuf97 = getelementptr inbounds %struct.slim_val_inf, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %rbuf97 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %rbuf, ptr %rbuf97, align 4
  %80 = load ptr, ptr %msg, align 4
  %num_bytes99 = getelementptr inbounds %struct.slim_val_inf, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %num_bytes99 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %num_bytes99, align 2
  %add = add i8 %82, 4
  %83 = ptrtoint ptr %txn to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %add, ptr %txn, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.end87, %land.lhs.true39.if.end103_crit_edge, %if.end34.if.end103_crit_edge
  %la.0 = phi i8 [ -1, %if.end87 ], [ %13, %if.end34.if.end103_crit_edge ], [ %13, %land.lhs.true39.if.end103_crit_edge ]
  %usr_msg.0.off0 = phi i1 [ true, %if.end87 ], [ false, %if.end34.if.end103_crit_edge ], [ false, %land.lhs.true39.if.end103_crit_edge ]
  %84 = ptrtoint ptr %txn to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %txn, align 4
  %dec = add i8 %85, -1
  store i8 %dec, ptr %txn, align 4
  %86 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %41, align 4
  %87 = ptrtoint ptr %dt to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %dt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp107 = icmp eq i8 %88, 0
  %89 = ptrtoint ptr %txn to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %txn, align 4
  %conv111 = zext i8 %90 to i32
  %91 = ptrtoint ptr %mt to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %mt, align 1
  %conv113 = zext i8 %92 to i32
  %shl = shl nuw nsw i32 %conv113, 5
  %or = or i32 %shl, %conv111
  %mc114 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 2
  %93 = ptrtoint ptr %mc114 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %mc114, align 2
  %conv115 = zext i8 %94 to i32
  %shl116 = shl nuw nsw i32 %conv115, 8
  %or117 = or i32 %or, %shl116
  %conv119 = zext i8 %la.0 to i32
  %shl120 = shl nuw nsw i32 %conv119, 16
  %or121 = or i32 %or117, %shl120
  %or135 = or i32 %or121, 32768
  %or135.sink = select i1 %cmp107, i32 %or121, i32 %or135
  %.sink319 = select i1 %cmp107, i32 3, i32 2
  %95 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or135.sink, ptr %41, align 4
  %add.ptr136 = getelementptr i8, ptr %41, i32 %.sink319
  %96 = load i8, ptr %mt, align 1
  %mc139 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 2
  %97 = ptrtoint ptr %mc139 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %mc139, align 2
  %99 = add i8 %98, -32
  %switch.and.i = and i8 %99, -66
  %100 = or i8 %switch.and.i, %96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %if.then141, label %if.end103.if.end143_crit_edge

if.end103.if.end143_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

if.then141:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  %tid142 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 5
  %102 = ptrtoint ptr %tid142 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %tid142, align 2
  %incdec.ptr = getelementptr i8, ptr %add.ptr136, i32 1
  %104 = ptrtoint ptr %add.ptr136 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %add.ptr136, align 1
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %if.end103.if.end143_crit_edge
  %puc.1 = phi ptr [ %incdec.ptr, %if.then141 ], [ %add.ptr136, %if.end103.if.end143_crit_edge ]
  %105 = ptrtoint ptr %mt to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %mt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp.i = icmp eq i8 %106, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end143.if.end156_crit_edge

if.end143.if.end156_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156

land.rhs.i:                                       ; preds = %if.end143
  %107 = ptrtoint ptr %mc139 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %mc139, align 2
  %109 = add i8 %108, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %109)
  %110 = icmp ult i8 %109, 10
  %111 = add i8 %108, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %111)
  %112 = icmp ult i8 %111, 9
  %or.cond318 = or i1 %110, %112
  br i1 %or.cond318, label %if.then147, label %land.rhs.i.if.end156_crit_edge

land.rhs.i.if.end156_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156

if.then147:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %ec = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 4
  %113 = ptrtoint ptr %ec to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %ec, align 4
  %conv149 = trunc i16 %114 to i8
  %incdec.ptr150 = getelementptr i8, ptr %puc.1, i32 1
  %115 = ptrtoint ptr %puc.1 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv149, ptr %puc.1, align 1
  %116 = load i16, ptr %ec, align 4
  %117 = lshr i16 %116, 8
  %conv154 = trunc i16 %117 to i8
  %incdec.ptr155 = getelementptr i8, ptr %puc.1, i32 2
  %118 = ptrtoint ptr %incdec.ptr150 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv154, ptr %incdec.ptr150, align 1
  br label %if.end156

if.end156:                                        ; preds = %if.then147, %land.rhs.i.if.end156_crit_edge, %if.end143.if.end156_crit_edge
  %puc.2 = phi ptr [ %incdec.ptr155, %if.then147 ], [ %puc.1, %if.end143.if.end156_crit_edge ], [ %puc.1, %land.rhs.i.if.end156_crit_edge ]
  %119 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %msg, align 4
  %tobool158.not = icmp eq ptr %120, null
  br i1 %tobool158.not, label %if.end156.if.end169_crit_edge, label %land.lhs.true159

if.end156.if.end169_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

land.lhs.true159:                                 ; preds = %if.end156
  %wbuf161 = getelementptr inbounds %struct.slim_val_inf, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %wbuf161 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %wbuf161, align 4
  %tobool162.not = icmp eq ptr %122, null
  br i1 %tobool162.not, label %land.lhs.true159.if.end169_crit_edge, label %if.then163

land.lhs.true159.if.end169_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

if.then163:                                       ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #12
  %num_bytes167 = getelementptr inbounds %struct.slim_val_inf, ptr %120, i32 0, i32 1
  %123 = ptrtoint ptr %num_bytes167 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %num_bytes167, align 2
  %conv168 = zext i8 %124 to i32
  %125 = call ptr @memcpy(ptr %puc.2, ptr %122, i32 %conv168)
  br label %if.end169

if.end169:                                        ; preds = %if.then163, %land.lhs.true159.if.end169_crit_edge, %if.end156.if.end169_crit_edge
  %tx_lock = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #10
  %126 = ptrtoint ptr %txn to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %txn, align 4
  %call2.i304 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_buf_lock.i) #10
  %128 = ptrtoint ptr %tx_base.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %tx_base.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %129 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %div.i = sdiv i32 %sub.ptr.sub.i, 40
  %arrayidx.i = getelementptr %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 9, i32 %div.i
  %tx_phys_base.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 23
  %130 = ptrtoint ptr %tx_phys_base.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tx_phys_base.i, align 4
  %add.i306 = add i32 %sub.ptr.sub.i, %131
  %phys.i = getelementptr %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 9, i32 %div.i, i32 4
  %132 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %add.i306, ptr %phys.i, align 4
  %add.ptr.i307 = getelementptr i8, ptr %129, i32 %sub.ptr.sub.i
  %base.i308 = getelementptr %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 9, i32 %div.i, i32 5
  %133 = ptrtoint ptr %base.i308 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %add.ptr.i307, ptr %base.i308, align 4
  %ctrl6.i = getelementptr %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 9, i32 %div.i, i32 1
  %134 = ptrtoint ptr %ctrl6.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %3, ptr %ctrl6.i, align 4
  %135 = add i8 %127, 3
  %136 = and i8 %135, -4
  %and.i = zext i8 %136 to i32
  %dma_tx_channel.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 7
  %137 = ptrtoint ptr %dma_tx_channel.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dma_tx_channel.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #10
  %139 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %140 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %141 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #10
  %142 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %add.i306, ptr %139, align 4
  %143 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %and.i, ptr %140, align 4
  %tobool.not.i.i = icmp eq ptr %138, null
  br i1 %tobool.not.i.i, label %if.end169.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end169.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end169
  %144 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %138, align 4
  %tobool1.not.i.i = icmp eq ptr %145, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %145, i32 0, i32 39
  %146 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %147, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %if.end169.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #10
  %148 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.then174

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i.i = call ptr %147(ptr noundef nonnull %138, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #10
  %149 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %dmaengine_prep_slave_single.exit.i.if.then174_crit_edge, label %if.end176

dmaengine_prep_slave_single.exit.i.if.then174_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then174

if.then174:                                       ; preds = %dmaengine_prep_slave_single.exit.i.if.then174_crit_edge, %dmaengine_prep_slave_single.exit.thread.i
  %dev.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 4
  %150 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.111) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_buf_lock.i, i32 noundef %call2.i304) #10
  call void @mutex_unlock(ptr noundef %tx_lock) #10
  br label %cleanup

if.end176:                                        ; preds = %dmaengine_prep_slave_single.exit.i
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %152 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @qcom_slim_ngd_tx_msg_dma_cb, ptr %callback.i, align 4
  %153 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %154, i32 0, i32 8
  %155 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %arrayidx.i, ptr %callback_param.i, align 4
  %156 = load ptr, ptr %arrayidx.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %156, i32 0, i32 4
  %157 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i50.i = call i32 %158(ptr noundef %156) #10
  %159 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %call.i50.i, ptr %160, align 4
  %162 = ptrtoint ptr %dma_tx_channel.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dma_tx_channel.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %165, i32 0, i32 50
  %166 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %167(ptr noundef %163) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_buf_lock.i, i32 noundef %call2.i304) #10
  %call177 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %tx_sent, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %do.end182, label %if.end189

do.end182:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  %168 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %sctrl, align 4
  %170 = ptrtoint ptr %mc139 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %mc139, align 2
  %conv185 = zext i8 %171 to i32
  %172 = ptrtoint ptr %mt to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %mt, align 1
  %conv187 = zext i8 %173 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.89, i32 noundef %conv185, i32 noundef %conv187) #13
  call void @mutex_unlock(ptr noundef %tx_lock) #10
  br label %cleanup

if.end189:                                        ; preds = %if.end176
  br i1 %usr_msg.0.off0, label %if.then191, label %if.end189.if.end205_crit_edge

if.end189.if.end205_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end205

if.then191:                                       ; preds = %if.end189
  %call192 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %done, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %do.end197, label %if.then191.if.end205_crit_edge

if.then191.if.end205_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end205

do.end197:                                        ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #12
  %174 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %sctrl, align 4
  %176 = ptrtoint ptr %mc139 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %mc139, align 2
  %conv200 = zext i8 %177 to i32
  %178 = ptrtoint ptr %mt to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %mt, align 1
  %conv202 = zext i8 %179 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.89, i32 noundef %conv200, i32 noundef %conv202) #13
  call void @mutex_unlock(ptr noundef %tx_lock) #10
  br label %cleanup

if.end205:                                        ; preds = %if.then191.if.end205_crit_edge, %if.end189.if.end205_crit_edge
  call void @mutex_unlock(ptr noundef %tx_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end205, %do.end197, %do.end182, %if.then174, %do.end85, %if.then54.cleanup_crit_edge, %do.end32, %do.end, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call80, %do.end85 ], [ -22, %if.then174 ], [ 0, %if.end205 ], [ -110, %do.end197 ], [ -110, %do.end182 ], [ -12, %do.end32 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -93, %if.end.cleanup_crit_edge ], [ -22, %if.then54.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %rbuf) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wbuf) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tx_sent) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pdr_handle_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slim_pd_status(i32 noundef %state, ptr nocapture noundef readnone %svc_path, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @qcom_slim_ngd_ssr_pdr_notify(ptr noundef %priv, i32 noundef %state)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pdr_add_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_slim_ngd_ssr_pdr_notify(ptr noundef %ctrl, i32 noundef %action) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %action, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 268435455, label %entry.sw.bb_crit_edge1
    i32 1, label %entry.sw.bb4_crit_edge
    i32 536870911, label %entry.sw.bb4_crit_edge2
  ]

entry.sw.bb4_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb_crit_edge1:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge1
  %tx_lock = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #10
  %state = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 21
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp.not = icmp eq i32 %2, 3
  br i1 %cmp.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sw.bb
  %ctrl1 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 1
  %3 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrl1, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !307
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %state, align 4
  %ssr_lock.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %ssr_lock.i, i32 noundef 0) #10
  %7 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl1, align 8
  %call.i = tail call i32 @device_for_each_child(ptr noundef %8, ptr noundef null, ptr noundef nonnull @qcom_slim_ngd_update_device_status) #10
  %handle.i.i.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %handle.i.i.i, align 8
  %tobool.not.i8.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i8.i.i, label %if.then.qcom_slim_ngd_down.exit_crit_edge, label %if.end.i10.i.i

if.then.qcom_slim_ngd_down.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %qcom_slim_ngd_down.exit

if.end.i10.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qmi_handle_release(ptr noundef nonnull %10) #10
  %dev.i9.i.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 4
  %11 = ptrtoint ptr %dev.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i9.i.i, align 8
  %13 = ptrtoint ptr %handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handle.i.i.i, align 8
  tail call void @devm_kfree(ptr noundef %12, ptr noundef %14) #10
  %15 = ptrtoint ptr %handle.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %handle.i.i.i, align 8
  br label %qcom_slim_ngd_down.exit

qcom_slim_ngd_down.exit:                          ; preds = %if.end.i10.i.i, %if.then.qcom_slim_ngd_down.exit_crit_edge
  %call37.i.i = tail call i32 @slim_unregister_controller(ptr noundef %ctrl1) #10
  tail call void @mutex_unlock(ptr noundef %ssr_lock.i) #10
  tail call fastcc void @qcom_slim_ngd_exit_dma(ptr noundef %ctrl)
  br label %if.end

if.end:                                           ; preds = %qcom_slim_ngd_down.exit, %sw.bb.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %tx_lock) #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge2
  %ngd_up_work = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %ngd_up_work) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.end, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_slim_ngd_exit_dma(ptr nocapture noundef %ctrl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_rx_channel = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 6
  %0 = ptrtoint ptr %dma_rx_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_rx_channel, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

if.then.dmaengine_terminate_sync.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %if.then
  %call.i.i = tail call i32 %5(ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.88, i32 noundef 1169) #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %9, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %9(ptr noundef nonnull %1) #10
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %if.then.dmaengine_terminate_sync.exit_crit_edge
  %10 = ptrtoint ptr %dma_rx_channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_rx_channel, align 8
  tail call void @dma_release_channel(ptr noundef %11) #10
  br label %if.end

if.end:                                           ; preds = %dmaengine_terminate_sync.exit, %entry.if.end_crit_edge
  %dma_tx_channel = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 7
  %12 = ptrtoint ptr %dma_tx_channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_tx_channel, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %device_terminate_all.i.i1 = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 47
  %16 = ptrtoint ptr %device_terminate_all.i.i1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_terminate_all.i.i1, align 4
  %tobool.not.i.i2 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i2, label %if.then4.dmaengine_terminate_sync.exit10_crit_edge, label %dmaengine_terminate_async.exit.i5

if.then4.dmaengine_terminate_sync.exit10_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit10

dmaengine_terminate_async.exit.i5:                ; preds = %if.then4
  %call.i.i3 = tail call i32 %17(ptr noundef nonnull %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i3)
  %tobool.not.i4 = icmp eq i32 %call.i.i3, 0
  br i1 %tobool.not.i4, label %if.end.i8, label %dmaengine_terminate_async.exit.i5.dmaengine_terminate_sync.exit10_crit_edge

dmaengine_terminate_async.exit.i5.dmaengine_terminate_sync.exit10_crit_edge: ; preds = %dmaengine_terminate_async.exit.i5
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit10

if.end.i8:                                        ; preds = %dmaengine_terminate_async.exit.i5
  tail call void @__might_sleep(ptr noundef nonnull @.str.88, i32 noundef 1169) #10
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 4
  %device_synchronize.i.i6 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 48
  %20 = ptrtoint ptr %device_synchronize.i.i6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_synchronize.i.i6, align 4
  %tobool.not.i1.i7 = icmp eq ptr %21, null
  br i1 %tobool.not.i1.i7, label %if.end.i8.dmaengine_terminate_sync.exit10_crit_edge, label %if.then.i2.i9

if.end.i8.dmaengine_terminate_sync.exit10_crit_edge: ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit10

if.then.i2.i9:                                    ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %21(ptr noundef nonnull %13) #10
  br label %dmaengine_terminate_sync.exit10

dmaengine_terminate_sync.exit10:                  ; preds = %if.then.i2.i9, %if.end.i8.dmaengine_terminate_sync.exit10_crit_edge, %dmaengine_terminate_async.exit.i5.dmaengine_terminate_sync.exit10_crit_edge, %if.then4.dmaengine_terminate_sync.exit10_crit_edge
  %22 = ptrtoint ptr %dma_tx_channel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_tx_channel, align 4
  tail call void @dma_release_channel(ptr noundef %23) #10
  br label %if.end8

if.end8:                                          ; preds = %dmaengine_terminate_sync.exit10, %if.end.if.end8_crit_edge
  %24 = ptrtoint ptr %dma_rx_channel to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %dma_rx_channel, align 8
  %25 = ptrtoint ptr %dma_tx_channel to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %dma_tx_channel, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_ngd_update_device_status(ptr noundef %dev, ptr nocapture noundef readnone %null) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @slim_report_absent(ptr noundef %dev) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_slim_ngd_enable(ptr noundef %ctrl, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %resp.i.i = alloca %struct.slimbus_select_inst_resp_msg_v01, align 4
  %txn.i.i = alloca %struct.qmi_txn, align 4
  %req.i = alloca %struct.slimbus_select_inst_req_msg_v01, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else35

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #10
  %0 = call ptr @memset(ptr %req.i, i32 255, i32 12)
  %dev.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 4
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 368, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.do.end_crit_edge, label %if.end.i

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @qmi_handle_init(ptr noundef nonnull %call.i.i, i32 noundef 14, ptr noundef null, ptr noundef nonnull @qcom_slim_qmi_msg_handlers) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.35, i32 noundef %call1.i) #13
  br label %qmi_handle_init_failed.i

if.end4.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i.i, align 4
  %svc_info.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 2, i32 1
  %call5.i = tail call i32 @kernel_connect(ptr noundef %6, ptr noundef %svc_info.i, i32 noundef 12, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end10.i, label %if.end12.i

do.end10.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef %call5.i) #13
  br label %qmi_connect_to_service_failed.i

if.end12.i:                                       ; preds = %if.end4.i
  %ngd.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 3
  %9 = ptrtoint ptr %ngd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ngd.i, align 4
  %id.i = getelementptr inbounds %struct.qcom_slim_ngd, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  %shr.i = ashr i32 %12, 1
  %13 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr.i, ptr %req.i, align 4
  %mode_valid.i = getelementptr inbounds %struct.slimbus_select_inst_req_msg_v01, ptr %req.i, i32 0, i32 1
  %14 = ptrtoint ptr %mode_valid.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %mode_valid.i, align 4
  %mode15.i = getelementptr inbounds %struct.slimbus_select_inst_req_msg_v01, ptr %req.i, i32 0, i32 2
  %15 = ptrtoint ptr %mode15.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %mode15.i, align 4
  %handle18.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %handle18.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %handle18.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i.i) #10
  %17 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %resp.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn.i.i) #10
  %18 = call ptr @memset(ptr %txn.i.i, i32 255, i32 168)
  %call.i1.i = call i32 @qmi_txn_init(ptr noundef nonnull %call.i.i, ptr noundef nonnull %txn.i.i, ptr noundef nonnull @slimbus_select_inst_resp_msg_v01_ei, ptr noundef nonnull %resp.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp.i.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.45, i32 noundef %call.i1.i) #13
  br label %do.end24.i

if.end.i.i:                                       ; preds = %if.end12.i
  %21 = ptrtoint ptr %handle18.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handle18.i, align 8
  %call3.i.i = call i32 @qmi_send_request(ptr noundef %22, ptr noundef null, ptr noundef nonnull %txn.i.i, i32 noundef 32, i32 noundef 14, ptr noundef nonnull @slimbus_select_inst_req_msg_v01_ei, ptr noundef nonnull %req.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %do.end8.i.i, label %if.end10.i.i

do.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.48, i32 noundef %call3.i.i) #13
  call void @qmi_txn_cancel(ptr noundef nonnull %txn.i.i) #10
  br label %do.end24.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %call11.i.i = call i32 @qmi_txn_wait(ptr noundef nonnull %txn.i.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp12.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp12.i.i, label %do.end16.i.i, label %if.end18.i.i

do.end16.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.51, i32 noundef %call11.i.i) #13
  br label %do.end24.i

if.end18.i.i:                                     ; preds = %if.end10.i.i
  %27 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %resp.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp20.not.i.i = icmp eq i16 %28, 0
  br i1 %cmp20.not.i.i, label %if.end, label %do.end25.i.i

do.end25.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = zext i16 %28 to i32
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.54, i32 noundef %conv.i.i) #13
  br label %do.end24.i

do.end24.i:                                       ; preds = %do.end25.i.i, %do.end16.i.i, %do.end8.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -121, %do.end25.i.i ], [ %call11.i.i, %do.end16.i.i ], [ %call3.i.i, %do.end8.i.i ], [ %call.i1.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i.i) #10
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.41) #13
  %33 = ptrtoint ptr %handle18.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %handle18.i, align 8
  br label %qmi_connect_to_service_failed.i

qmi_connect_to_service_failed.i:                  ; preds = %do.end24.i, %do.end10.i
  %rc.0.i = phi i32 [ %call5.i, %do.end10.i ], [ %retval.0.i.ph.i, %do.end24.i ]
  call void @qmi_handle_release(ptr noundef nonnull %call.i.i) #10
  br label %qmi_handle_init_failed.i

qmi_handle_init_failed.i:                         ; preds = %qmi_connect_to_service_failed.i, %do.end.i
  %rc.1.i = phi i32 [ %call1.i, %do.end.i ], [ %rc.0.i, %qmi_connect_to_service_failed.i ]
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 8
  call void @devm_kfree(ptr noundef %35, ptr noundef nonnull %call.i.i) #10
  br label %do.end

do.end:                                           ; preds = %qmi_handle_init_failed.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.then.do.end_crit_edge ], [ %rc.1.i, %qmi_handle_init_failed.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #10
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 8
  %state = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 21
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i.ph, i32 noundef %39) #13
  br label %return

if.end:                                           ; preds = %if.end18.i.i
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #10
  %qmi_comp = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 2, i32 5
  call void @complete(ptr noundef %qmi_comp) #10
  %ctrl3 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 1
  %40 = ptrtoint ptr %ctrl3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrl3, align 8
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 12, i32 15
  %42 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i1 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i1, label %lor.lhs.false, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 12, i32 18
  %43 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.i2 = icmp eq i32 %44, 2
  br i1 %cmp.i2, label %if.else, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %call12 = call i32 @qcom_slim_ngd_runtime_resume(ptr noundef %41)
  br label %if.end16

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %41, i32 noundef 0) #10
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then9
  %45 = ptrtoint ptr %ctrl3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl3, align 8
  %call.i6 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 12, i32 22
  %47 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store volatile i64 %call.i6, ptr %last_busy.i, align 8
  %48 = ptrtoint ptr %ctrl3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctrl3, align 8
  %call.i7 = call i32 @__pm_runtime_idle(ptr noundef %49, i32 noundef 5) #10
  %call23 = call i32 @slim_register_controller(ptr noundef %ctrl3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 8
  br i1 %tobool24.not, label %do.end33, label %do.end28

do.end28:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.29) #13
  br label %return

do.end33:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.32) #13
  br label %return

if.else35:                                        ; preds = %entry
  %handle.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 2, i32 4
  %52 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %handle.i, align 8
  %tobool.not.i8 = icmp eq ptr %53, null
  br i1 %tobool.not.i8, label %if.else35.qcom_slim_qmi_exit.exit_crit_edge, label %if.end.i10

if.else35.qcom_slim_qmi_exit.exit_crit_edge:      ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #12
  br label %qcom_slim_qmi_exit.exit

if.end.i10:                                       ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qmi_handle_release(ptr noundef nonnull %53) #10
  %dev.i9 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 4
  %54 = ptrtoint ptr %dev.i9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i9, align 8
  %56 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %handle.i, align 8
  tail call void @devm_kfree(ptr noundef %55, ptr noundef %57) #10
  %58 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %handle.i, align 8
  br label %qcom_slim_qmi_exit.exit

qcom_slim_qmi_exit.exit:                          ; preds = %if.end.i10, %if.else35.qcom_slim_qmi_exit.exit_crit_edge
  %ctrl36 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 1
  %call37 = tail call i32 @slim_unregister_controller(ptr noundef %ctrl36) #10
  br label %return

return:                                           ; preds = %qcom_slim_qmi_exit.exit, %do.end33, %do.end28, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @slim_report_absent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_ngd_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %handle = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %if.then1, label %if.end.if.else12_crit_edge

if.end.if.else12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else12

if.then1:                                         ; preds = %if.end
  %ngd1.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ngd1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ngd1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i = icmp eq i32 %5, 3
  br i1 %cmp.i, label %if.then.i, label %if.then1.if.end4.i_crit_edge

if.then1.if.end4.i_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then1
  %qmi_comp.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 2, i32 5
  %call.i = tail call i32 @wait_for_completion_timeout(ptr noundef %qmi_comp.i, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.then5_crit_edge, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then.i.if.then5_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.then1.if.end4.i_crit_edge
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %10 = and i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch.i = icmp eq i32 %10, 2
  br i1 %switch.i, label %if.then9.i, label %if.end4.i.if.end14.i_crit_edge

if.end4.i.if.end14.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end4.i
  %call10.i = tail call fastcc i32 @qcom_slim_qmi_power_request(ptr noundef %1, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then9.i.if.end14.i_crit_edge, label %do.end.i

if.then9.i.if.end14.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

do.end.i:                                         ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.58, i32 noundef %call10.i) #13
  br label %if.then5

if.end14.i:                                       ; preds = %if.then9.i.if.end14.i_crit_edge, %if.end4.i.if.end14.i_crit_edge
  %base.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !303
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  %ver.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 28
  %shr.i = lshr i32 %16, 16
  %17 = ptrtoint ptr %ver.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr.i, ptr %ver.i, align 8
  %base18.i = getelementptr inbounds %struct.qcom_slim_ngd, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %base18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base18.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !303
  %21 = and i32 %20, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool21.not.i = icmp eq i32 %21, 0
  br i1 %tobool21.not.i, label %if.end30.i, label %if.end29.i

if.end29.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @qcom_slim_ngd_setup(ptr noundef %1) #10
  br label %if.else12

if.end30.i:                                       ; preds = %if.end14.i
  %22 = ptrtoint ptr %base18.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base18.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 254) #10, !srcloc !306
  %24 = ptrtoint ptr %base18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base18.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %25, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i) #10, !srcloc !303
  %27 = or i32 %26, 256
  %28 = ptrtoint ptr %base18.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base18.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 %27) #10, !srcloc !306
  tail call fastcc void @qcom_slim_ngd_setup(ptr noundef %1) #10
  %reconf.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 10
  %call40.i = tail call i32 @wait_for_completion_timeout(ptr noundef %reconf.i, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %do.end45.i, label %if.end30.i.if.else12_crit_edge

if.end30.i.if.else12_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else12

do.end45.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev46.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev46.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.64) #13
  br label %if.then5

if.then5:                                         ; preds = %do.end45.i, %do.end.i, %if.then.i.if.then5_crit_edge
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp7.not = icmp eq i32 %33, 3
  br i1 %cmp7.not, label %do.end, label %if.then8

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %state, align 4
  br label %cleanup

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %dev10 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.56) #13
  br label %cleanup

if.else12:                                        ; preds = %if.end30.i.if.else12_crit_edge, %if.end29.i, %if.end.if.else12_crit_edge
  %37 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else12, %do.end, %if.then8, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slim_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slim_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_handle_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qmi_handle_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_slim_qmi_power_resp_cb(ptr nocapture noundef readnone %handle, ptr nocapture noundef readnone %sq, ptr noundef %txn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %completion = getelementptr inbounds %struct.qmi_txn, ptr %txn, i32 0, i32 3
  tail call void @complete(ptr noundef %completion) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_txn_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_send_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qmi_txn_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_txn_wait(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_slim_qmi_power_request(ptr nocapture noundef readonly %ctrl, i1 noundef zeroext %active) unnamed_addr #2 align 64 {
entry:
  %resp.i = alloca %struct.slimbus_power_resp_msg_v01, align 4
  %txn.i = alloca %struct.qmi_txn, align 4
  %req = alloca %struct.slimbus_power_req_msg_v01, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #10
  %0 = getelementptr inbounds i8, ptr %req, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  %. = select i1 %active, i32 2, i32 1
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %., ptr %req, align 4
  %resp_type_valid = getelementptr inbounds %struct.slimbus_power_req_msg_v01, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %resp_type_valid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %resp_type_valid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i) #10
  %4 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %resp.i, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn.i) #10
  %5 = call ptr @memset(ptr %txn.i, i32 255, i32 168)
  %handle.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handle.i, align 8
  %call.i = call i32 @qmi_txn_init(ptr noundef %7, ptr noundef nonnull %txn.i, ptr noundef nonnull @slimbus_power_resp_msg_v01_ei, ptr noundef nonnull %resp.i) #10
  %8 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handle.i, align 8
  %call3.i = call i32 @qmi_send_request(ptr noundef %9, ptr noundef null, ptr noundef nonnull %txn.i, i32 noundef 33, i32 noundef 14, ptr noundef nonnull @slimbus_power_req_msg_v01_ei, ptr noundef nonnull %req) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 4
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.48, i32 noundef %call3.i) #13
  call void @qmi_txn_cancel(ptr noundef nonnull %txn.i) #10
  br label %qcom_slim_qmi_send_power_request.exit

if.end.i:                                         ; preds = %entry
  %call4.i = call i32 @qmi_txn_wait(ptr noundef nonnull %txn.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %if.end11.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev10.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 4
  %12 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.51, i32 noundef %call4.i) #13
  br label %qcom_slim_qmi_send_power_request.exit

if.end11.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %resp.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp13.not.i = icmp eq i16 %15, 0
  br i1 %cmp13.not.i, label %if.end11.i.qcom_slim_qmi_send_power_request.exit_crit_edge, label %do.end18.i

if.end11.i.qcom_slim_qmi_send_power_request.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qcom_slim_qmi_send_power_request.exit

do.end18.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i16 %15 to i32
  %dev19.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 4
  %16 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev19.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.54, i32 noundef %conv.i) #13
  br label %qcom_slim_qmi_send_power_request.exit

qcom_slim_qmi_send_power_request.exit:            ; preds = %do.end18.i, %if.end11.i.qcom_slim_qmi_send_power_request.exit_crit_edge, %do.end9.i, %do.end.i
  %retval.0.i = phi i32 [ %call3.i, %do.end.i ], [ %call4.i, %do.end9.i ], [ -121, %do.end18.i ], [ 0, %if.end11.i.qcom_slim_qmi_send_power_request.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_slim_ngd_setup(ptr noundef %ctrl) unnamed_addr #2 align 64 {
entry:
  %sg.i.i.i.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ngd = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 3
  %0 = ptrtoint ptr %ngd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ngd, align 4
  %base = getelementptr inbounds %struct.qcom_slim_ngd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !303
  %state = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 21
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %7 = and i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch = icmp eq i32 %7, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %dev1.i.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 4
  %8 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i.i, align 8
  %call.i.i = tail call ptr @dma_request_chan(ptr noundef %9, ptr noundef nonnull @.str.76) #10
  %dma_rx_channel.i.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 6
  %10 = ptrtoint ptr %dma_rx_channel.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %dma_rx_channel.i.i, align 8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %qcom_slim_ngd_init_rx_msgq.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then
  %rx_phys_base.i.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 22
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef 1280, ptr noundef %rx_phys_base.i.i, i32 noundef 3264, i32 noundef 0) #10
  %rx_base.i.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 24
  %11 = ptrtoint ptr %rx_base.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i.i, ptr %rx_base.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.qcom_slim_ngd_init_rx_msgq.exit.thread11.i_crit_edge, label %if.end10.i.i

if.end.i.i.qcom_slim_ngd_init_rx_msgq.exit.thread11.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qcom_slim_ngd_init_rx_msgq.exit.thread11.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %12 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i.i.i, i32 0, i32 3
  %13 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i.i.i, i32 0, i32 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %if.end10.i.i
  %i.037.i.i.i = phi i32 [ 0, %if.end10.i.i ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 8, i32 %i.037.i.i.i
  %14 = ptrtoint ptr %rx_phys_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_phys_base.i.i, align 8
  %mul.i.i.i = mul nuw nsw i32 %i.037.i.i.i, 40
  %add.i.i.i = add i32 %15, %mul.i.i.i
  %phys.i.i.i = getelementptr %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 8, i32 %i.037.i.i.i, i32 4
  %16 = ptrtoint ptr %phys.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i.i.i, ptr %phys.i.i.i, align 4
  %ctrl1.i.i.i = getelementptr %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 8, i32 %i.037.i.i.i, i32 1
  %17 = ptrtoint ptr %ctrl1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ctrl, ptr %ctrl1.i.i.i, align 4
  %18 = ptrtoint ptr %rx_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_base.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %mul.i.i.i
  %base.i.i.i = getelementptr %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 8, i32 %i.037.i.i.i, i32 5
  %20 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i.i.i, ptr %base.i.i.i, align 4
  %21 = ptrtoint ptr %dma_rx_channel.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_rx_channel.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i.i.i) #10
  %23 = call ptr @memset(ptr %sg.i.i.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i.i.i, i32 noundef 1) #10
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i.i.i, ptr %12, align 4
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 40, ptr %13, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

for.body.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_prep_slave_single.exit.thread.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %for.body.i.i.i
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %22, align 4
  %tobool1.not.i.i.i.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i.i_crit_edge, label %lor.lhs.false2.i.i.i.i

lor.lhs.false.i.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_prep_slave_single.exit.thread.i.i.i

lor.lhs.false2.i.i.i.i:                           ; preds = %lor.lhs.false.i.i.i.i
  %device_prep_slave_sg.i.i.i.i = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 39
  %28 = ptrtoint ptr %device_prep_slave_sg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device_prep_slave_sg.i.i.i.i, align 4
  %tobool4.not.i.i.i.i = icmp eq ptr %29, null
  br i1 %tobool4.not.i.i.i.i, label %lor.lhs.false2.i.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i.i_crit_edge, label %dmaengine_prep_slave_single.exit.i.i.i

lor.lhs.false2.i.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i.i_crit_edge: ; preds = %lor.lhs.false2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_prep_slave_single.exit.thread.i.i.i

dmaengine_prep_slave_single.exit.thread.i.i.i:    ; preds = %lor.lhs.false2.i.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i.i_crit_edge, %for.body.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i.i.i) #10
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  br label %do.end16.i.i

dmaengine_prep_slave_single.exit.i.i.i:           ; preds = %lor.lhs.false2.i.i.i.i
  %call.i.i.i.i = call ptr %29(ptr noundef nonnull %22, ptr noundef nonnull %sg.i.i.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i.i.i) #10
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i.i.i, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %dmaengine_prep_slave_single.exit.i.i.i.do.end16.i.i_crit_edge, label %if.end.i.i.i

dmaengine_prep_slave_single.exit.i.i.i.do.end16.i.i_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i.i

if.end.i.i.i:                                     ; preds = %dmaengine_prep_slave_single.exit.i.i.i
  %callback.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @qcom_slim_ngd_rx_msgq_cb, ptr %callback.i.i.i, align 4
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i.i, align 4
  %callback_param.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %callback_param.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx.i.i.i, ptr %callback_param.i.i.i, align 4
  %36 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tx_submit.i.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %tx_submit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_submit.i.i.i.i, align 4
  %call.i33.i.i.i = call i32 %38(ptr noundef %36) #10
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call.i33.i.i.i, ptr %40, align 4
  %inc.i.i.i = add nuw nsw i32 %i.037.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 32
  br i1 %exitcond.not.i.i.i, label %qcom_slim_ngd_init_rx_msgq.exit.thread.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

qcom_slim_ngd_init_rx_msgq.exit.thread.i:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %dma_rx_channel.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_rx_channel.i.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %device_issue_pending.i.i.i.i = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 50
  %46 = ptrtoint ptr %device_issue_pending.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device_issue_pending.i.i.i.i, align 4
  call void %47(ptr noundef %43) #10
  br label %if.end.i

do.end16.i.i:                                     ; preds = %dmaengine_prep_slave_single.exit.i.i.i.do.end16.i.i_crit_edge, %dmaengine_prep_slave_single.exit.thread.i.i.i
  %48 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev1.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.82) #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.80, i32 noundef -22) #13
  %50 = ptrtoint ptr %rx_base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_base.i.i, align 8
  %52 = ptrtoint ptr %rx_phys_base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_phys_base.i.i, align 8
  call void @dma_free_attrs(ptr noundef %9, i32 noundef 1280, ptr noundef %51, i32 noundef %53, i32 noundef 0) #10
  br label %qcom_slim_ngd_init_rx_msgq.exit.thread11.i

qcom_slim_ngd_init_rx_msgq.exit.thread11.i:       ; preds = %do.end16.i.i, %if.end.i.i.qcom_slim_ngd_init_rx_msgq.exit.thread11.i_crit_edge
  %54 = ptrtoint ptr %dma_rx_channel.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma_rx_channel.i.i, align 8
  call void @dma_release_channel(ptr noundef %55) #10
  br label %do.end.i

qcom_slim_ngd_init_rx_msgq.exit.i:                ; preds = %if.then
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.77) #13
  %56 = ptrtoint ptr %dma_rx_channel.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma_rx_channel.i.i, align 8
  store ptr null, ptr %dma_rx_channel.i.i, align 8
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %qcom_slim_ngd_init_rx_msgq.exit.i.if.end.i_crit_edge, label %qcom_slim_ngd_init_rx_msgq.exit.i.do.end.i_crit_edge

qcom_slim_ngd_init_rx_msgq.exit.i.do.end.i_crit_edge: ; preds = %qcom_slim_ngd_init_rx_msgq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

qcom_slim_ngd_init_rx_msgq.exit.i.if.end.i_crit_edge: ; preds = %qcom_slim_ngd_init_rx_msgq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %qcom_slim_ngd_init_rx_msgq.exit.i.do.end.i_crit_edge, %qcom_slim_ngd_init_rx_msgq.exit.thread11.i
  %58 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev1.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.71) #13
  br label %if.end

if.end.i:                                         ; preds = %qcom_slim_ngd_init_rx_msgq.exit.i.if.end.i_crit_edge, %qcom_slim_ngd_init_rx_msgq.exit.thread.i
  %60 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1.i.i, align 8
  %call.i2.i = call ptr @dma_request_chan(ptr noundef %61, ptr noundef nonnull @.str.85) #10
  %dma_tx_channel.i.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 7
  %62 = ptrtoint ptr %dma_tx_channel.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i2.i, ptr %dma_tx_channel.i.i, align 4
  %cmp.i.i3.i = icmp ugt ptr %call.i2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i3.i, label %qcom_slim_ngd_init_tx_msgq.exit.i, label %if.end.i7.i

if.end.i7.i:                                      ; preds = %if.end.i
  %tx_phys_base.i.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 23
  %call.i.i5.i = call ptr @dma_alloc_attrs(ptr noundef %61, i32 noundef 1320, ptr noundef %tx_phys_base.i.i, i32 noundef 3264, i32 noundef 0) #10
  %tx_base.i.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 25
  %63 = ptrtoint ptr %tx_base.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i.i5.i, ptr %tx_base.i.i, align 4
  %tobool.not.i6.i = icmp eq ptr %call.i.i5.i, null
  br i1 %tobool.not.i6.i, label %qcom_slim_ngd_init_tx_msgq.exit.thread16.i, label %qcom_slim_ngd_init_tx_msgq.exit.thread.i

qcom_slim_ngd_init_tx_msgq.exit.thread16.i:       ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %dma_tx_channel.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dma_tx_channel.i.i, align 4
  call void @dma_release_channel(ptr noundef %65) #10
  br label %do.end6.i

qcom_slim_ngd_init_tx_msgq.exit.thread.i:         ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_buf_lock.i.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 15
  %call14.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_buf_lock.i.i) #10
  %tx_tail.i.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 26
  %66 = ptrtoint ptr %tx_tail.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %tx_tail.i.i, align 8
  %tx_head.i.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %ctrl, i32 0, i32 27
  %67 = ptrtoint ptr %tx_head.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %tx_head.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_buf_lock.i.i, i32 noundef %call14.i.i) #10
  br label %if.end

qcom_slim_ngd_init_tx_msgq.exit.i:                ; preds = %if.end.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.86) #13
  %68 = ptrtoint ptr %dma_tx_channel.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dma_tx_channel.i.i, align 4
  store ptr null, ptr %dma_tx_channel.i.i, align 4
  %tobool2.not.i = icmp eq ptr %69, null
  br i1 %tobool2.not.i, label %qcom_slim_ngd_init_tx_msgq.exit.i.if.end_crit_edge, label %qcom_slim_ngd_init_tx_msgq.exit.i.do.end6.i_crit_edge

qcom_slim_ngd_init_tx_msgq.exit.i.do.end6.i_crit_edge: ; preds = %qcom_slim_ngd_init_tx_msgq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i

qcom_slim_ngd_init_tx_msgq.exit.i.if.end_crit_edge: ; preds = %qcom_slim_ngd_init_tx_msgq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end6.i:                                        ; preds = %qcom_slim_ngd_init_tx_msgq.exit.i.do.end6.i_crit_edge, %qcom_slim_ngd_init_tx_msgq.exit.thread16.i
  %70 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev1.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.74) #13
  br label %if.end

if.end:                                           ; preds = %do.end6.i, %qcom_slim_ngd_init_tx_msgq.exit.i.if.end_crit_edge, %qcom_slim_ngd_init_tx_msgq.exit.thread.i, %do.end.i, %entry.if.end_crit_edge
  %72 = or i32 %4, 117440512
  %73 = ptrtoint ptr %ngd to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ngd, align 4
  %base9 = getelementptr inbounds %struct.qcom_slim_ngd, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base9, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %72) #10, !srcloc !306
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_slim_ngd_rx_msgq_cb(ptr noundef %args) #2 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 4
  %base = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, ptr %args, i32 0, i32 5
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 31
  %arrayidx7.i = getelementptr i8, ptr %3, i32 1
  %7 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7.i, align 1
  %9 = and i8 %8, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i = icmp eq i8 %9, 0
  %.mask.i = and i8 %5, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %.mask.i)
  %cmp15.i = icmp eq i8 %.mask.i, -64
  %or.cond.i = select i1 %cmp.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mwq.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %mwq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mwq.i, align 8
  %m_work.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %m_work.i) #10
  br label %qcom_slim_ngd_rx.exit

if.end.i:                                         ; preds = %entry
  %trunc.i = trunc i8 %8 to i7
  %12 = zext i7 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.148)
  switch i7 %trunc.i, label %if.end.i.qcom_slim_ngd_rx.exit_crit_edge [
    i7 36, label %if.end.i.if.then39.i_crit_edge
    i7 -28, label %if.end.i.if.then39.i_crit_edge27
    i7 14, label %land.lhs.true27.i
    i7 37, label %land.lhs.true35.i
  ]

if.end.i.if.then39.i_crit_edge27:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39.i

if.end.i.if.then39.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39.i

if.end.i.qcom_slim_ngd_rx.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qcom_slim_ngd_rx.exit

land.lhs.true27.i:                                ; preds = %if.end.i
  br i1 %cmp15.i, label %land.lhs.true27.i.if.then39.i_crit_edge, label %land.lhs.true27.i.qcom_slim_ngd_rx.exit_crit_edge

land.lhs.true27.i.qcom_slim_ngd_rx.exit_crit_edge: ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qcom_slim_ngd_rx.exit

land.lhs.true27.i.if.then39.i_crit_edge:          ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39.i

land.lhs.true35.i:                                ; preds = %if.end.i
  br i1 %cmp15.i, label %land.lhs.true35.i.if.then39.i_crit_edge, label %land.lhs.true35.i.qcom_slim_ngd_rx.exit_crit_edge

land.lhs.true35.i.qcom_slim_ngd_rx.exit_crit_edge: ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qcom_slim_ngd_rx.exit

land.lhs.true35.i.if.then39.i_crit_edge:          ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39.i

if.then39.i:                                      ; preds = %land.lhs.true35.i.if.then39.i_crit_edge, %land.lhs.true27.i.if.then39.i_crit_edge, %if.end.i.if.then39.i_crit_edge, %if.end.i.if.then39.i_crit_edge27
  %ctrl40.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 1
  %arrayidx41.i = getelementptr i8, ptr %3, i32 4
  %arrayidx42.i = getelementptr i8, ptr %3, i32 3
  %13 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx42.i, align 1
  %sub.i = add nsw i8 %6, -4
  tail call void @slim_msg_response(ptr noundef %ctrl40.i, ptr noundef %arrayidx41.i, i8 noundef zeroext %14, i8 noundef zeroext %sub.i) #10
  %15 = ptrtoint ptr %ctrl40.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl40.i, align 8
  %call.i61.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 12, i32 22
  %17 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %call.i61.i, ptr %last_busy.i.i, align 8
  br label %qcom_slim_ngd_rx.exit

qcom_slim_ngd_rx.exit:                            ; preds = %if.then39.i, %land.lhs.true35.i.qcom_slim_ngd_rx.exit_crit_edge, %land.lhs.true27.i.qcom_slim_ngd_rx.exit_crit_edge, %if.end.i.qcom_slim_ngd_rx.exit_crit_edge, %if.end.thread.i
  %dma_rx_channel = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %dma_rx_channel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_rx_channel, align 8
  %phys = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, ptr %args, i32 0, i32 4
  %20 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #10
  %22 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %23 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %24 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #10
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %21, ptr %22, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 40, ptr %23, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %qcom_slim_ngd_rx.exit.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

qcom_slim_ngd_rx.exit.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %qcom_slim_ngd_rx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %qcom_slim_ngd_rx.exit
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %19, align 4
  %tobool1.not.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 39
  %29 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %30, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %qcom_slim_ngd_rx.exit.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #10
  %31 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %args, align 4
  br label %do.end

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i = call ptr %30(ptr noundef nonnull %19, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #10
  %32 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %args, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dmaengine_prep_slave_single.exit.do.end_crit_edge, label %if.end

dmaengine_prep_slave_single.exit.do.end_crit_edge: ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_slave_single.exit.do.end_crit_edge, %dmaengine_prep_slave_single.exit.thread
  %dev = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.82) #13
  br label %cleanup

if.end:                                           ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #12
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @qcom_slim_ngd_rx_msgq_cb, ptr %callback, align 4
  %36 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %args, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %args, ptr %callback_param, align 4
  %39 = load ptr, ptr %args, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_submit.i, align 4
  %call.i24 = call i32 %41(ptr noundef %39) #10
  %42 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %args, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call.i24, ptr %43, align 4
  %45 = ptrtoint ptr %dma_rx_channel to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma_rx_channel, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 50
  %49 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device_issue_pending.i, align 4
  call void %50(ptr noundef %46) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @slim_msg_response(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slim_alloc_txn_tid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_slim_ngd_xfer_msg_sync(ptr noundef %ctrl, ptr noundef %txn) unnamed_addr #2 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #10
  %0 = getelementptr inbounds i8, ptr %done, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.113, ptr noundef nonnull @init_completion.__key) #10
  %3 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrl, align 4
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #10
  %comp = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 8
  %5 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %done, ptr %comp, align 4
  %call1 = call i32 @qcom_slim_ngd_xfer_msg(ptr noundef %ctrl, ptr noundef %txn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %done, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl, align 4
  %mc = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 2
  %8 = ptrtoint ptr %mc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mc, align 2
  %conv = zext i8 %9 to i32
  %mt = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 1
  %10 = ptrtoint ptr %mt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mt, align 1
  %conv6 = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.89, i32 noundef %conv, i32 noundef %conv6) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @slim_free_txn_tid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_slim_ngd_tx_msg_dma_cb(ptr nocapture noundef %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 4
  %tx_buf_lock = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 15
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_buf_lock) #10
  %comp = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comp, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @complete(ptr noundef nonnull %3) #10
  %4 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %comp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_head = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_head, align 4
  %add = add i32 %6, 1
  %rem = srem i32 %add, 32
  store i32 %rem, ptr %tx_head, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_buf_lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_ngd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ctrl2 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %ctrl2, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %driver_data.i.i, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #10
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1000) #10
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #10
  tail call void @pm_runtime_enable(ptr noundef %dev1) #10
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !307
  %svc_event_hdl.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 2, i32 2
  %call.i73 = tail call i32 @qmi_handle_init(ptr noundef %svc_event_hdl.i, i32 noundef 0, ptr noundef nonnull @qcom_slim_ngd_qmi_svc_event_ops, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp.i = icmp slt i32 %call.i73, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.125, i32 noundef %call.i73) #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call3.i = tail call i32 @qmi_add_lookup(ptr noundef %svc_event_hdl.i, i32 noundef 769, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %qcom_slim_ngd_qmi_svc_event_init.exit

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev9.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev9.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.128, i32 noundef %call3.i) #13
  tail call void @qmi_handle_release(ptr noundef %svc_event_hdl.i) #10
  br label %do.end

qcom_slim_ngd_qmi_svc_event_init.exit:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %do.body7, label %qcom_slim_ngd_qmi_svc_event_init.exit.do.end_crit_edge

qcom_slim_ngd_qmi_svc_event_init.exit.do.end_crit_edge: ; preds = %qcom_slim_ngd_qmi_svc_event_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %qcom_slim_ngd_qmi_svc_event_init.exit.do.end_crit_edge, %do.end8.i, %do.end.i
  %retval.0.i78 = phi i32 [ %call3.i, %qcom_slim_ngd_qmi_svc_event_init.exit.do.end_crit_edge ], [ %call3.i, %do.end8.i ], [ %call.i73, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.115, i32 noundef %retval.0.i78) #13
  br label %cleanup

do.body7:                                         ; preds = %qcom_slim_ngd_qmi_svc_event_init.exit
  %m_work = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 11
  tail call void @__init_work(ptr noundef %m_work, i32 noundef 0) #10
  %11 = ptrtoint ptr %m_work to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %m_work, align 8
  %lockdep_map = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.117, ptr noundef nonnull @qcom_slim_ngd_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry11 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 11, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @qcom_slim_ngd_master_worker, ptr %func, align 4
  %ngd_up_work = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 12
  tail call void @__init_work(ptr noundef %ngd_up_work, i32 noundef 0) #10
  %15 = ptrtoint ptr %ngd_up_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %ngd_up_work, align 4
  %lockdep_map21 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map21, ptr noundef nonnull @.str.119, ptr noundef nonnull @qcom_slim_ngd_probe.__key.118, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry23 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i74 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 12, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry23, ptr %prev.i74, align 4
  %func25 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 12, i32 2
  %18 = ptrtoint ptr %func25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @qcom_slim_ngd_up_worker, ptr %func25, align 4
  %call28 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.120, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.121) #10
  %mwq = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %mwq to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call28, ptr %mwq, align 8
  %tobool30.not = icmp eq ptr %call28, null
  br i1 %tobool30.not, label %do.end34, label %do.body7.cleanup_crit_edge

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end34:                                         ; preds = %do.body7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.123) #13
  tail call void @qmi_handle_release(ptr noundef %svc_event_hdl.i) #10
  %20 = ptrtoint ptr %mwq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mwq, align 8
  %tobool38.not = icmp eq ptr %21, null
  br i1 %tobool38.not, label %do.end34.cleanup_crit_edge, label %if.then39

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then39:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @destroy_workqueue(ptr noundef nonnull %21) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.end34.cleanup_crit_edge, %do.body7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i78, %do.end ], [ 0, %do.body7.cleanup_crit_edge ], [ -12, %if.then39 ], [ -12, %do.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_ngd_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %pdr = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %pdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdr, align 8
  tail call void @pdr_handle_release(ptr noundef %3) #10
  %notifier = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notifier, align 4
  %nb = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 18
  %call1 = tail call i32 @qcom_unregister_ssr_notifier(ptr noundef %5, ptr noundef %nb) #10
  %handle.i.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handle.i.i, align 8
  %tobool.not.i8.i = icmp eq ptr %7, null
  br i1 %tobool.not.i8.i, label %entry.qcom_slim_ngd_enable.exit_crit_edge, label %if.end.i10.i

entry.qcom_slim_ngd_enable.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %qcom_slim_ngd_enable.exit

if.end.i10.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qmi_handle_release(ptr noundef nonnull %7) #10
  %dev.i9.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dev.i9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i9.i, align 8
  %10 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle.i.i, align 8
  tail call void @devm_kfree(ptr noundef %9, ptr noundef %11) #10
  %12 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %handle.i.i, align 8
  br label %qcom_slim_ngd_enable.exit

qcom_slim_ngd_enable.exit:                        ; preds = %if.end.i10.i, %entry.qcom_slim_ngd_enable.exit_crit_edge
  %ctrl36.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 1
  %call37.i = tail call i32 @slim_unregister_controller(ptr noundef %ctrl36.i) #10
  tail call fastcc void @qcom_slim_ngd_exit_dma(ptr noundef %1)
  %svc_event_hdl.i = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 2, i32 2
  tail call void @qmi_handle_release(ptr noundef %svc_event_hdl.i) #10
  %mwq = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %mwq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mwq, align 8
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %qcom_slim_ngd_enable.exit.if.end_crit_edge, label %if.then

qcom_slim_ngd_enable.exit.if.end_crit_edge:       ; preds = %qcom_slim_ngd_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %qcom_slim_ngd_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @destroy_workqueue(ptr noundef nonnull %14) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %qcom_slim_ngd_enable.exit.if.end_crit_edge
  %ngd = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %ngd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ngd, align 4
  tail call void @kfree(ptr noundef %16) #10
  %17 = ptrtoint ptr %ngd to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %ngd, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_slim_ngd_master_worker(ptr noundef %work) #2 align 64 {
entry:
  %txn = alloca %struct.slim_msg_txn, align 4
  %msg = alloca %struct.slim_val_inf, align 4
  %wbuf = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txn) #10
  %0 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 1
  %1 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 2
  %2 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 3
  %3 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 4
  %4 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 6
  %5 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 7
  %6 = getelementptr inbounds i8, ptr %txn, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #10
  %8 = call ptr @memset(ptr %msg, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wbuf) #10
  %9 = getelementptr inbounds [8 x i8], ptr %wbuf, i32 0, i32 1
  %10 = getelementptr inbounds [8 x i8], ptr %wbuf, i32 0, i32 2
  %11 = getelementptr inbounds [8 x i8], ptr %wbuf, i32 0, i32 3
  %12 = getelementptr inbounds i8, ptr %wbuf, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 -1, ptr %12, align 1
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %2, align 1
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %3, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %1, align 2
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 6, ptr %0, align 1
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %4, align 1
  %19 = ptrtoint ptr %wbuf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -39, ptr %wbuf, align 1
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -59, ptr %9, align 1
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %10, align 1
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %11, align 1
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg, ptr %5, align 4
  %wbuf6 = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 3
  %24 = ptrtoint ptr %wbuf6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %wbuf, ptr %wbuf6, align 4
  %num_bytes = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 1
  %25 = ptrtoint ptr %num_bytes to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %num_bytes, align 2
  %26 = ptrtoint ptr %txn to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 8, ptr %txn, align 4
  %dev = getelementptr i8, ptr %work, i32 -1608
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.130) #13
  %ctrl8 = getelementptr i8, ptr %work, i32 -2912
  %call = call i32 @qcom_slim_ngd_xfer_msg(ptr noundef %ctrl8, ptr noundef nonnull %txn)
  %29 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %call, label %entry.do.end32_crit_edge [
    i32 0, label %entry.if.then_crit_edge
    i32 -5, label %do.end24
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.do.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.then:                                          ; preds = %do.end24.9.if.then_crit_edge, %do.end24.8.if.then_crit_edge, %do.end24.7.if.then_crit_edge, %do.end24.6.if.then_crit_edge, %do.end24.5.if.then_crit_edge, %do.end24.4.if.then_crit_edge, %do.end24.3.if.then_crit_edge, %do.end24.2.if.then_crit_edge, %do.end24.1.if.then_crit_edge, %do.end24.if.then_crit_edge, %entry.if.then_crit_edge
  %state = getelementptr i8, ptr %work, i32 396
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp = icmp ugt i32 %31, 1
  br i1 %cmp, label %if.then9, label %do.end12

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %reconf = getelementptr i8, ptr %work, i32 -56
  call void @complete(ptr noundef %reconf) #10
  br label %if.end

do.end12:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.133, i32 noundef %31) #13
  br label %if.end

if.end:                                           ; preds = %do.end12, %if.then9
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp16 = icmp eq i32 %35, 3
  br i1 %cmp16, label %if.then17, label %if.end.if.end35_crit_edge

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then17:                                        ; preds = %if.end
  %ngd.i = getelementptr i8, ptr %work, i32 -1612
  %36 = ptrtoint ptr %ngd.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ngd.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3, i32 27
  %40 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node.i, align 8
  %call.i = call ptr @of_get_next_child(ptr noundef %41, ptr noundef null) #10
  %cmp.not19.i = icmp eq ptr %call.i, null
  br i1 %cmp.not19.i, label %if.then17.if.end35_crit_edge, label %if.then17.for.body.i_crit_edge

if.then17.for.body.i_crit_edge:                   ; preds = %if.then17
  br label %for.body.i

if.then17.if.end35_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then17.for.body.i_crit_edge
  %node.020.i = phi ptr [ %call12.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.then17.for.body.i_crit_edge ]
  %call2.i = call ptr @of_slim_get_device(ptr noundef %ctrl8, ptr noundef nonnull %node.020.i) #10
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call3.i = call i32 @slim_get_logical_addr(ptr noundef nonnull %call2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.for.inc.i_crit_edge, label %do.end.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.141) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %44 = ptrtoint ptr %ngd.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ngd.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %of_node11.i = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3, i32 27
  %48 = ptrtoint ptr %of_node11.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node11.i, align 8
  %call12.i = call ptr @of_get_next_child(ptr noundef %49, ptr noundef nonnull %node.020.i) #10
  %cmp.not.i = icmp eq ptr %call12.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.end35_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end35_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end24:                                         ; preds = %entry
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.136) #13
  call void @msleep(i32 noundef 10) #10
  %call.1 = call i32 @qcom_slim_ngd_xfer_msg(ptr noundef %ctrl8, ptr noundef nonnull %txn)
  %52 = zext i32 %call.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %call.1, label %do.end24.do.end32_crit_edge [
    i32 0, label %do.end24.if.then_crit_edge
    i32 -5, label %do.end24.1
  ]

do.end24.if.then_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.end24.do.end32_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.end24.1:                                       ; preds = %do.end24
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.136) #13
  call void @msleep(i32 noundef 10) #10
  %call.2 = call i32 @qcom_slim_ngd_xfer_msg(ptr noundef %ctrl8, ptr noundef nonnull %txn)
  %55 = zext i32 %call.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %call.2, label %do.end24.1.do.end32_crit_edge [
    i32 0, label %do.end24.1.if.then_crit_edge
    i32 -5, label %do.end24.2
  ]

do.end24.1.if.then_crit_edge:                     ; preds = %do.end24.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.end24.1.do.end32_crit_edge:                    ; preds = %do.end24.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.end24.2:                                       ; preds = %do.end24.1
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.136) #13
  call void @msleep(i32 noundef 10) #10
  %call.3 = call i32 @qcom_slim_ngd_xfer_msg(ptr noundef %ctrl8, ptr noundef nonnull %txn)
  %58 = zext i32 %call.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %call.3, label %do.end24.2.do.end32_crit_edge [
    i32 0, label %do.end24.2.if.then_crit_edge
    i32 -5, label %do.end24.3
  ]

do.end24.2.if.then_crit_edge:                     ; preds = %do.end24.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.end24.2.do.end32_crit_edge:                    ; preds = %do.end24.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.end24.3:                                       ; preds = %do.end24.2
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.136) #13
  call void @msleep(i32 noundef 10) #10
  %call.4 = call i32 @qcom_slim_ngd_xfer_msg(ptr noundef %ctrl8, ptr noundef nonnull %txn)
  %61 = zext i32 %call.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %call.4, label %do.end24.3.do.end32_crit_edge [
    i32 0, label %do.end24.3.if.then_crit_edge
    i32 -5, label %do.end24.4
  ]

do.end24.3.if.then_crit_edge:                     ; preds = %do.end24.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.end24.3.do.end32_crit_edge:                    ; preds = %do.end24.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.end24.4:                                       ; preds = %do.end24.3
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.136) #13
  call void @msleep(i32 noundef 10) #10
  %call.5 = call i32 @qcom_slim_ngd_xfer_msg(ptr noundef %ctrl8, ptr noundef nonnull %txn)
  %64 = zext i32 %call.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %call.5, label %do.end24.4.do.end32_crit_edge [
    i32 0, label %do.end24.4.if.then_crit_edge
    i32 -5, label %do.end24.5
  ]

do.end24.4.if.then_crit_edge:                     ; preds = %do.end24.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.end24.4.do.end32_crit_edge:                    ; preds = %do.end24.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.end24.5:                                       ; preds = %do.end24.4
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.136) #13
  call void @msleep(i32 noundef 10) #10
  %call.6 = call i32 @qcom_slim_ngd_xfer_msg(ptr noundef %ctrl8, ptr noundef nonnull %txn)
  %67 = zext i32 %call.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %call.6, label %do.end24.5.do.end32_crit_edge [
    i32 0, label %do.end24.5.if.then_crit_edge
    i32 -5, label %do.end24.6
  ]

do.end24.5.if.then_crit_edge:                     ; preds = %do.end24.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.end24.5.do.end32_crit_edge:                    ; preds = %do.end24.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.end24.6:                                       ; preds = %do.end24.5
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.136) #13
  call void @msleep(i32 noundef 10) #10
  %call.7 = call i32 @qcom_slim_ngd_xfer_msg(ptr noundef %ctrl8, ptr noundef nonnull %txn)
  %70 = zext i32 %call.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %call.7, label %do.end24.6.do.end32_crit_edge [
    i32 0, label %do.end24.6.if.then_crit_edge
    i32 -5, label %do.end24.7
  ]

do.end24.6.if.then_crit_edge:                     ; preds = %do.end24.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.end24.6.do.end32_crit_edge:                    ; preds = %do.end24.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.end24.7:                                       ; preds = %do.end24.6
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.136) #13
  call void @msleep(i32 noundef 10) #10
  %call.8 = call i32 @qcom_slim_ngd_xfer_msg(ptr noundef %ctrl8, ptr noundef nonnull %txn)
  %73 = zext i32 %call.8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %call.8, label %do.end24.7.do.end32_crit_edge [
    i32 0, label %do.end24.7.if.then_crit_edge
    i32 -5, label %do.end24.8
  ]

do.end24.7.if.then_crit_edge:                     ; preds = %do.end24.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.end24.7.do.end32_crit_edge:                    ; preds = %do.end24.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.end24.8:                                       ; preds = %do.end24.7
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.136) #13
  call void @msleep(i32 noundef 10) #10
  %call.9 = call i32 @qcom_slim_ngd_xfer_msg(ptr noundef %ctrl8, ptr noundef nonnull %txn)
  %76 = zext i32 %call.9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %call.9, label %do.end24.8.do.end32_crit_edge [
    i32 0, label %do.end24.8.if.then_crit_edge
    i32 -5, label %do.end24.9
  ]

do.end24.8.if.then_crit_edge:                     ; preds = %do.end24.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.end24.8.do.end32_crit_edge:                    ; preds = %do.end24.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.end24.9:                                       ; preds = %do.end24.8
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.136) #13
  call void @msleep(i32 noundef 10) #10
  %call.10 = call i32 @qcom_slim_ngd_xfer_msg(ptr noundef %ctrl8, ptr noundef nonnull %txn)
  %79 = zext i32 %call.10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %call.10, label %do.end24.9.do.end32_crit_edge [
    i32 0, label %do.end24.9.if.then_crit_edge
    i32 -5, label %if.end35.loopexit51
  ]

do.end24.9.if.then_crit_edge:                     ; preds = %do.end24.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.end24.9.do.end32_crit_edge:                    ; preds = %do.end24.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.end32:                                         ; preds = %do.end24.9.do.end32_crit_edge, %do.end24.8.do.end32_crit_edge, %do.end24.7.do.end32_crit_edge, %do.end24.6.do.end32_crit_edge, %do.end24.5.do.end32_crit_edge, %do.end24.4.do.end32_crit_edge, %do.end24.3.do.end32_crit_edge, %do.end24.2.do.end32_crit_edge, %do.end24.1.do.end32_crit_edge, %do.end24.do.end32_crit_edge, %entry.do.end32_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.end32_crit_edge ], [ %call.1, %do.end24.do.end32_crit_edge ], [ %call.2, %do.end24.1.do.end32_crit_edge ], [ %call.3, %do.end24.2.do.end32_crit_edge ], [ %call.4, %do.end24.3.do.end32_crit_edge ], [ %call.5, %do.end24.4.do.end32_crit_edge ], [ %call.6, %do.end24.5.do.end32_crit_edge ], [ %call.7, %do.end24.6.do.end32_crit_edge ], [ %call.8, %do.end24.7.do.end32_crit_edge ], [ %call.9, %do.end24.8.do.end32_crit_edge ], [ %call.10, %do.end24.9.do.end32_crit_edge ]
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.139, i32 noundef %call.lcssa) #13
  br label %if.end35

if.end35.loopexit51:                              ; preds = %do.end24.9
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.136) #13
  br label %if.end35

if.end35:                                         ; preds = %if.end35.loopexit51, %do.end32, %for.inc.i.if.end35_crit_edge, %if.then17.if.end35_crit_edge, %if.end.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wbuf) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txn) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_slim_ngd_up_worker(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3900
  %qmi_up = getelementptr i8, ptr %work, i32 48
  %call = tail call i32 @wait_for_completion_interruptible(ptr noundef %qmi_up) #10
  %ssr_lock = getelementptr i8, ptr %work, i32 240
  tail call void @mutex_lock_nested(ptr noundef %ssr_lock, i32 noundef 0) #10
  tail call fastcc void @qcom_slim_ngd_enable(ptr noundef %add.ptr, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %ssr_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_add_lookup(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_ngd_qmi_new_server(ptr noundef %hdl, ptr nocapture noundef readonly %service) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %svc_info = getelementptr i8, ptr %hdl, i32 -12
  %0 = ptrtoint ptr %svc_info to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 42, ptr %svc_info, align 4
  %node = getelementptr inbounds %struct.qmi_service, ptr %service, i32 0, i32 3
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node, align 4
  %sq_node = getelementptr i8, ptr %hdl, i32 -8
  %3 = ptrtoint ptr %sq_node to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %sq_node, align 4
  %port = getelementptr inbounds %struct.qmi_service, ptr %service, i32 0, i32 4
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %sq_port = getelementptr i8, ptr %hdl, i32 -4
  %6 = ptrtoint ptr %sq_port to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %sq_port, align 4
  %qmi_up = getelementptr i8, ptr %hdl, i32 2136
  tail call void @complete(ptr noundef %qmi_up) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @qcom_slim_ngd_qmi_del_server(ptr nocapture noundef writeonly %hdl, ptr nocapture noundef readnone %service) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qmi_up = getelementptr i8, ptr %hdl, i32 2136
  %0 = ptrtoint ptr %qmi_up to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %qmi_up, align 4
  %sq_node = getelementptr i8, ptr %hdl, i32 -8
  %1 = ptrtoint ptr %sq_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sq_node, align 4
  %sq_port = getelementptr i8, ptr %hdl, i32 -4
  %2 = ptrtoint ptr %sq_port to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sq_port, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_slim_get_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slim_get_logical_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pdr_handle_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_unregister_ssr_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_ngd_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @qcom_slim_ngd_exit_dma(ptr noundef %1)
  %handle = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @qcom_slim_qmi_power_request(ptr noundef %1, i1 noundef zeroext false)
  %4 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %call2, label %do.end [
    i32 0, label %if.end.if.then9_crit_edge
    i32 -16, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

do.end:                                           ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.143, i32 noundef %call2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call2)
  %cond = icmp eq i32 %call2, -110
  br i1 %cond, label %do.end.if.then9_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.if.then9_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %do.end.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %state = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %do.end.cleanup_crit_edge ], [ %call2, %if.then9 ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_ngd_runtime_idle(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 9) #10
  ret i32 -11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 155)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 155)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !138, !139, !141, !143, !144, !145, !146, !148, !149, !150, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !174, !175, !176, !177, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !216, !217, !219, !220, !221, !222, !224, !225, !227, !229, !231, !232, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !247, !249, !250, !251, !252, !254, !255, !256, !258, !260, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !280, !282, !284, !285, !286, !287, !289, !291}
!llvm.module.flags = !{!293, !294, !295, !296, !297, !298, !299, !300}
!llvm.ident = !{!301}

!0 = !{ptr @__initcall__kmod_slim_qcom_ngd_ctrl__458_1664_qcom_slim_ngd_ctrl_driver_init6, !1, !"__initcall__kmod_slim_qcom_ngd_ctrl__458_1664_qcom_slim_ngd_ctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1664, i32 1}
!2 = !{ptr @__exitcall_qcom_slim_ngd_ctrl_driver_exit, !1, !"__exitcall_qcom_slim_ngd_ctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file459, !4, !"__UNIQUE_ID_file459", i1 false, i1 false}
!4 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1665, i32 1}
!5 = !{ptr @__UNIQUE_ID_license460, !4, !"__UNIQUE_ID_license460", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description461, !7, !"__UNIQUE_ID_description461", i1 false, i1 false}
!7 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1666, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1650, i32 11}
!10 = !{ptr @qcom_slim_ngd_ctrl_driver, !11, !"qcom_slim_ngd_ctrl_driver", i1 false, i1 false}
!11 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1646, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1531, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @qcom_slim_ngd_ctrl_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @qcom_slim_ngd_ctrl_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1536, i32 30}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1538, i32 3}
!24 = !{ptr @qcom_slim_ngd_ctrl_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qcom_slim_ngd_ctrl_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1543, i32 46}
!28 = !{ptr @qcom_slim_ngd_ctrl_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1560, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @qcom_slim_ngd_ctrl_probe.__key.12, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1561, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @qcom_slim_ngd_ctrl_probe.__key.14, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1562, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1569, i32 3}
!39 = !{ptr @qcom_slim_ngd_ctrl_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @qcom_slim_ngd_ctrl_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1573, i32 34}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1573, i32 47}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1575, i32 3}
!47 = !{ptr @qcom_slim_ngd_ctrl_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @qcom_slim_ngd_ctrl_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 771, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @qcom_slim_ngd_interrupt._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @qcom_slim_ngd_interrupt._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1256, i32 4}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @qcom_slim_ngd_enable._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @qcom_slim_ngd_enable._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1273, i32 4}
!61 = !{ptr @qcom_slim_ngd_enable._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @qcom_slim_ngd_enable._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1277, i32 3}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @qcom_slim_ngd_enable._entry.31, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @qcom_slim_ngd_enable._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 462, i32 3}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @qcom_slim_qmi_init._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @qcom_slim_qmi_init._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 470, i32 3}
!75 = !{ptr @qcom_slim_qmi_init._entry.37, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @qcom_slim_qmi_init._entry_ptr.39, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 488, i32 3}
!79 = !{ptr @qcom_slim_qmi_init._entry.40, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @qcom_slim_qmi_init._entry_ptr.42, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @qcom_slim_qmi_msg_handlers, !82, !"qcom_slim_qmi_msg_handlers", i1 false, i1 false}
!82 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 437, i32 37}
!83 = !{ptr @slimbus_power_resp_msg_v01_ei, !84, !"slimbus_power_resp_msg_v01_ei", i1 false, i1 false}
!84 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 327, i32 29}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 395, i32 3}
!87 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @qcom_slim_qmi_power_resp_cb._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @qcom_slim_qmi_power_resp_cb._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 358, i32 3}
!92 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @qcom_slim_qmi_send_select_inst_req._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @qcom_slim_qmi_send_select_inst_req._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 367, i32 3}
!97 = !{ptr @qcom_slim_qmi_send_select_inst_req._entry.47, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @qcom_slim_qmi_send_select_inst_req._entry_ptr.49, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 374, i32 3}
!101 = !{ptr @qcom_slim_qmi_send_select_inst_req._entry.50, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @qcom_slim_qmi_send_select_inst_req._entry_ptr.52, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 379, i32 3}
!105 = !{ptr @qcom_slim_qmi_send_select_inst_req._entry.53, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @qcom_slim_qmi_send_select_inst_req._entry_ptr.55, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @slimbus_select_inst_resp_msg_v01_ei, !108, !"slimbus_select_inst_resp_msg_v01_ei", i1 false, i1 false}
!108 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 265, i32 29}
!109 = !{ptr @slimbus_select_inst_req_msg_v01_ei, !110, !"slimbus_select_inst_req_msg_v01_ei", i1 false, i1 false}
!110 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 223, i32 29}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1242, i32 4}
!113 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @qcom_slim_ngd_runtime_resume._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @qcom_slim_ngd_runtime_resume._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1115, i32 4}
!118 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @qcom_slim_ngd_power_up._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @qcom_slim_ngd_power_up._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1132, i32 4}
!123 = !{ptr @qcom_slim_ngd_power_up._entry.60, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @qcom_slim_ngd_power_up._entry_ptr.62, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1148, i32 3}
!127 = !{ptr @qcom_slim_ngd_power_up._entry.63, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @qcom_slim_ngd_power_up._entry_ptr.65, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 416, i32 3}
!131 = !{ptr @qcom_slim_qmi_send_power_request._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @qcom_slim_qmi_send_power_request._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @qcom_slim_qmi_send_power_request._entry.67, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 423, i32 3}
!135 = !{ptr @qcom_slim_qmi_send_power_request._entry_ptr.68, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @qcom_slim_qmi_send_power_request._entry.69, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 429, i32 3}
!138 = !{ptr @qcom_slim_qmi_send_power_request._entry_ptr.70, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @slimbus_power_req_msg_v01_ei, !140, !"slimbus_power_req_msg_v01_ei", i1 false, i1 false}
!140 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 287, i32 29}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 751, i32 3}
!143 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @qcom_slim_ngd_init_dma._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @qcom_slim_ngd_init_dma._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 757, i32 3}
!148 = !{ptr @qcom_slim_ngd_init_dma._entry.73, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @qcom_slim_ngd_init_dma._entry_ptr.75, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 680, i32 47}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 682, i32 3}
!154 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @qcom_slim_ngd_init_rx_msgq._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @qcom_slim_ngd_init_rx_msgq._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.80, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 698, i32 3}
!159 = !{ptr @qcom_slim_ngd_init_rx_msgq._entry.79, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @qcom_slim_ngd_init_rx_msgq._entry_ptr.81, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.82, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 662, i32 4}
!163 = !{ptr @.str.83, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @qcom_slim_ngd_post_rx_msgq._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @qcom_slim_ngd_post_rx_msgq._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.84, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 637, i32 3}
!168 = !{ptr @qcom_slim_ngd_rx_msgq_cb._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @qcom_slim_ngd_rx_msgq_cb._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 718, i32 47}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 720, i32 3}
!174 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @qcom_slim_ngd_init_tx_msgq._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @qcom_slim_ngd_init_tx_msgq._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!179 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 925, i32 3}
!181 = !{ptr @.str.90, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @qcom_slim_ngd_xfer_msg_sync._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @qcom_slim_ngd_xfer_msg_sync._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 979, i32 5}
!186 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @qcom_slim_ngd_enable_stream._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @qcom_slim_ngd_enable_stream._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @qcom_slim_ngd_enable_stream._entry.93, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 992, i32 3}
!191 = !{ptr @qcom_slim_ngd_enable_stream._entry_ptr.94, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @qcom_slim_ngd_enable_stream._entry.95, !193, !"_entry", i1 false, i1 false}
!193 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1004, i32 3}
!194 = !{ptr @qcom_slim_ngd_enable_stream._entry_ptr.96, !193, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @qcom_slim_ngd_enable_stream._entry.97, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1012, i32 3}
!197 = !{ptr @qcom_slim_ngd_enable_stream._entry_ptr.98, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 803, i32 3}
!200 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @qcom_slim_ngd_xfer_msg._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @qcom_slim_ngd_xfer_msg._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.102, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 809, i32 3}
!205 = !{ptr @qcom_slim_ngd_xfer_msg._entry.101, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @qcom_slim_ngd_xfer_msg._entry_ptr.103, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.105, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 843, i32 4}
!209 = !{ptr @qcom_slim_ngd_xfer_msg._entry.104, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @qcom_slim_ngd_xfer_msg._entry_ptr.106, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @qcom_slim_ngd_xfer_msg._entry.107, !212, !"_entry", i1 false, i1 false}
!212 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 889, i32 3}
!213 = !{ptr @qcom_slim_ngd_xfer_msg._entry_ptr.108, !212, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @qcom_slim_ngd_xfer_msg._entry.109, !215, !"_entry", i1 false, i1 false}
!215 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 898, i32 4}
!216 = !{ptr @qcom_slim_ngd_xfer_msg._entry_ptr.110, !215, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.111, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 589, i32 3}
!219 = !{ptr @.str.112, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @qcom_slim_ngd_tx_msg_post._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @qcom_slim_ngd_tx_msg_post._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @init_completion.__key, !223, !"__key", i1 false, i1 false}
!223 = !{!"../include/linux/completion.h", i32 87, i32 2}
!224 = !{ptr @.str.113, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.114, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1659, i32 11}
!227 = !{ptr @qcom_slim_ngd_driver, !228, !"qcom_slim_ngd_driver", i1 false, i1 false}
!228 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1655, i32 31}
!229 = !{ptr @.str.115, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1488, i32 3}
!231 = !{ptr @.str.116, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @qcom_slim_ngd_probe._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @qcom_slim_ngd_probe._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @qcom_slim_ngd_probe.__key, !235, !"__key", i1 false, i1 false}
!235 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1492, i32 2}
!236 = !{ptr @.str.117, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @qcom_slim_ngd_probe.__key.118, !238, !"__key", i1 false, i1 false}
!238 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1493, i32 2}
!239 = !{ptr @.str.119, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.120, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1494, i32 14}
!242 = !{ptr @.str.121, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.123, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1496, i32 3}
!245 = !{ptr @qcom_slim_ngd_probe._entry.122, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @qcom_slim_ngd_probe._entry_ptr.124, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.125, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1329, i32 3}
!249 = !{ptr @.str.126, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @qcom_slim_ngd_qmi_svc_event_init._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @qcom_slim_ngd_qmi_svc_event_init._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.128, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1336, i32 3}
!254 = !{ptr @qcom_slim_ngd_qmi_svc_event_init._entry.127, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @qcom_slim_ngd_qmi_svc_event_init._entry_ptr.129, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @qcom_slim_ngd_qmi_svc_event_ops, !257, !"qcom_slim_ngd_qmi_svc_event_ops", i1 false, i1 false}
!257 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1316, i32 29}
!258 = !{ptr @.str.130, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1194, i32 2}
!260 = !{ptr @.str.131, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @qcom_slim_ngd_master_worker._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @qcom_slim_ngd_master_worker._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.133, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1202, i32 4}
!265 = !{ptr @qcom_slim_ngd_master_worker._entry.132, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @qcom_slim_ngd_master_worker._entry_ptr.134, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.136, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1209, i32 3}
!269 = !{ptr @qcom_slim_ngd_master_worker._entry.135, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @qcom_slim_ngd_master_worker._entry_ptr.137, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.139, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1216, i32 3}
!273 = !{ptr @qcom_slim_ngd_master_worker._entry.138, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @qcom_slim_ngd_master_worker._entry_ptr.140, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.141, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1166, i32 4}
!277 = !{ptr @.str.142, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @qcom_slim_ngd_notify_slaves._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @qcom_slim_ngd_notify_slaves._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @qcom_slim_ngd_dev_pm_ops, !281, !"qcom_slim_ngd_dev_pm_ops", i1 false, i1 false}
!281 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1636, i32 32}
!282 = !{ptr @.str.143, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1629, i32 3}
!284 = !{ptr @.str.144, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @qcom_slim_ngd_runtime_suspend._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @qcom_slim_ngd_runtime_suspend._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.145, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1441, i32 34}
!289 = !{ptr @qcom_slim_ngd_dt_match, !290, !"qcom_slim_ngd_dt_match", i1 false, i1 false}
!290 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 1350, i32 34}
!291 = !{ptr @ngd_v1_5_offset_info, !292, !"ngd_v1_5_offset_info", i1 false, i1 false}
!292 = !{!"../drivers/slimbus/qcom-ngd-ctrl.c", i32 110, i32 41}
!293 = !{i32 1, !"wchar_size", i32 2}
!294 = !{i32 1, !"min_enum_size", i32 4}
!295 = !{i32 8, !"branch-target-enforcement", i32 0}
!296 = !{i32 8, !"sign-return-address", i32 0}
!297 = !{i32 8, !"sign-return-address-all", i32 0}
!298 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!299 = !{i32 7, !"uwtable", i32 1}
!300 = !{i32 7, !"frame-pointer", i32 2}
!301 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!302 = !{!"auto-init"}
!303 = !{i64 3669976}
!304 = !{i64 2157133651}
!305 = !{i64 2157135871}
!306 = !{i64 3669558}
!307 = !{i64 2148560479, i64 2148560505, i64 2148560534, i64 2148560568, i64 2148560599, i64 2148560622}
