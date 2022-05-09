; ModuleID = '/llk/IR_all_yes/drivers/bus/mhi/pci_generic.c_pt.bc'
source_filename = "../drivers/bus/mhi/pci_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mhi_pci_dev_info = type { ptr, ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.mhi_controller_config = type { i32, i32, i32, i32, ptr, i32, ptr, i8, i8 }
%struct.mhi_channel_config = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.mhi_event_config = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.70 = type { ptr }
%struct.mhi_pci_device = type { %struct.mhi_controller, ptr, %struct.work_struct, %struct.timer_list, i32 }
%struct.mhi_controller = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], ptr, ptr, ptr, %struct.mutex, %struct.rwlock_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.mhi_link_info, %struct.work_struct, ptr, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mhi_link_info = type { i32, i32 }

@__initcall__kmod_mhi_pci_generic__280_1100_mhi_pci_driver_init6 = internal global ptr @mhi_pci_driver_init, section ".initcall6.init", align 4
@mhi_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @mhi_pci_id_table, ptr @mhi_pci_probe, ptr @mhi_pci_remove, ptr null, ptr null, ptr @mhi_pci_shutdown, ptr null, ptr null, ptr null, ptr @mhi_pci_err_handler, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mhi_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mhi_pci_driver_exit = internal global ptr @mhi_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author281 = internal constant [62 x i8] c"mhi_pci_generic.author=Loic Poulain <loic.poulain@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description282 = internal constant [77 x i8] c"mhi_pci_generic.description=Modem Host Interface (MHI) PCI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file283 = internal constant [53 x i8] c"mhi_pci_generic.file=drivers/bus/mhi/mhi_pci_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license284 = internal constant [28 x i8] c"mhi_pci_generic.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mhi_pci_generic\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mhi-pci-generic\00", [16 x i8] zeroinitializer }, align 32
@mhi_pci_id_table = internal constant { [12 x %struct.pci_device_id], [96 x i8] } { [12 x %struct.pci_device_id] [%struct.pci_device_id { i32 6091, i32 774, i32 6359, i32 512, i32 0, i32 0, i32 ptrtoint (ptr @mhi_sierra_em919x_info to i32), i32 0 }, %struct.pci_device_id { i32 6091, i32 774, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @mhi_qcom_sdx55_info to i32), i32 0 }, %struct.pci_device_id { i32 6091, i32 772, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @mhi_qcom_sdx24_info to i32), i32 0 }, %struct.pci_device_id { i32 7852, i32 4097, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @mhi_quectel_em1xx_info to i32), i32 0 }, %struct.pci_device_id { i32 7852, i32 4098, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @mhi_quectel_em1xx_info to i32), i32 0 }, %struct.pci_device_id { i32 6091, i32 776, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @mhi_qcom_sdx65_info to i32), i32 0 }, %struct.pci_device_id { i32 4187, i32 57515, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @mhi_foxconn_sdx55_info to i32), i32 0 }, %struct.pci_device_id { i32 4187, i32 57520, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @mhi_foxconn_sdx55_info to i32), i32 0 }, %struct.pci_device_id { i32 4187, i32 57521, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @mhi_foxconn_sdx55_info to i32), i32 0 }, %struct.pci_device_id { i32 4187, i32 57535, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @mhi_foxconn_sdx55_info to i32), i32 0 }, %struct.pci_device_id { i32 4713, i32 179, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @mhi_mv31_info to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@mhi_pci_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @mhi_pci_error_detected, ptr null, ptr @mhi_pci_slot_reset, ptr @mhi_pci_reset_prepare, ptr @mhi_pci_reset_done, ptr @mhi_pci_io_resume }, [40 x i8] zeroinitializer }, align 32
@mhi_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mhi_pci_suspend, ptr @mhi_pci_resume, ptr @mhi_pci_freeze, ptr @mhi_pci_restore, ptr null, ptr @mhi_pci_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mhi_pci_runtime_suspend, ptr @mhi_pci_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mhi_sierra_em919x_info = internal constant { %struct.mhi_pci_dev_info, [32 x i8] } { %struct.mhi_pci_dev_info { ptr @modem_sierra_em919x_config, ptr @.str.2, ptr null, ptr null, i32 0, i32 32, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@mhi_qcom_sdx55_info = internal constant { %struct.mhi_pci_dev_info, [32 x i8] } { %struct.mhi_pci_dev_info { ptr @modem_qcom_v1_mhiv_config, ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 0, i32 32, i32 32768, i8 0 }, [32 x i8] zeroinitializer }, align 32
@mhi_qcom_sdx24_info = internal constant { %struct.mhi_pci_dev_info, [32 x i8] } { %struct.mhi_pci_dev_info { ptr @modem_qcom_v1_mhiv_config, ptr @.str.14, ptr null, ptr @.str.15, i32 0, i32 32, i32 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@mhi_quectel_em1xx_info = internal constant { %struct.mhi_pci_dev_info, [32 x i8] } { %struct.mhi_pci_dev_info { ptr @modem_quectel_em1xx_config, ptr @.str.16, ptr null, ptr @.str.15, i32 0, i32 32, i32 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@mhi_qcom_sdx65_info = internal constant { %struct.mhi_pci_dev_info, [32 x i8] } { %struct.mhi_pci_dev_info { ptr @modem_qcom_v1_mhiv_config, ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 0, i32 32, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@mhi_foxconn_sdx55_info = internal constant { %struct.mhi_pci_dev_info, [32 x i8] } { %struct.mhi_pci_dev_info { ptr @modem_foxconn_sdx55_config, ptr @.str.22, ptr @.str.10, ptr @.str.11, i32 0, i32 32, i32 32768, i8 0 }, [32 x i8] zeroinitializer }, align 32
@mhi_mv31_info = internal constant { %struct.mhi_pci_dev_info, [32 x i8] } { %struct.mhi_pci_dev_info { ptr @modem_mv31_config, ptr @.str.24, ptr null, ptr null, i32 0, i32 32, i32 32768, i8 0 }, [32 x i8] zeroinitializer }, align 32
@modem_sierra_em919x_config = internal constant { %struct.mhi_controller_config, [32 x i8] } { %struct.mhi_controller_config { i32 128, i32 24000, i32 0, i32 12, ptr @mhi_sierra_em919x_channels, i32 3, ptr @modem_sierra_em919x_mhi_events, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sierra-em919x\00", [18 x i8] zeroinitializer }, align 32
@mhi_sierra_em919x_channels = internal constant { [12 x %struct.mhi_channel_config], [128 x i8] } { [12 x %struct.mhi_channel_config] [%struct.mhi_channel_config { ptr @.str.3, i32 2, i32 32, i32 0, i32 0, i32 1, i32 0, i32 2, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.3, i32 3, i32 256, i32 0, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.4, i32 4, i32 32, i32 0, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.4, i32 5, i32 32, i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.5, i32 12, i32 128, i32 0, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.5, i32 13, i32 128, i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.6, i32 14, i32 32, i32 0, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.6, i32 15, i32 32, i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.7, i32 32, i32 32, i32 0, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.7, i32 33, i32 32, i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.8, i32 100, i32 512, i32 0, i32 1, i32 1, i32 0, i32 4, i32 0, i32 3, i8 0, i8 0, i8 1, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.8, i32 101, i32 512, i32 0, i32 2, i32 2, i32 0, i32 4, i32 0, i32 3, i8 0, i8 0, i8 1, i8 0, i8 0 }], [128 x i8] zeroinitializer }, align 32
@modem_sierra_em919x_mhi_events = internal global { [3 x %struct.mhi_event_config], [32 x i8] } { [3 x %struct.mhi_event_config] [%struct.mhi_event_config { i32 2048, i32 0, i32 1, i32 0, i32 1, i32 2, i32 1, i8 0, i8 0, i8 0 }, %struct.mhi_event_config { i32 2048, i32 1, i32 2, i32 100, i32 1, i32 2, i32 0, i8 1, i8 0, i8 0 }, %struct.mhi_event_config { i32 2048, i32 1, i32 3, i32 101, i32 1, i32 2, i32 0, i8 1, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SAHARA\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DIAG\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MBIM\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"QMI\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DUN\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IP_HW0\00", [25 x i8] zeroinitializer }, align 32
@modem_qcom_v1_mhiv_config = internal constant { %struct.mhi_controller_config, [32 x i8] } { %struct.mhi_controller_config { i32 128, i32 8000, i32 0, i32 12, ptr @modem_qcom_v1_mhi_channels, i32 4, ptr @modem_qcom_v1_mhi_events, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qcom-sdx55m\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom/sdx55m/sbl1.mbn\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom/sdx55m/edl.mbn\00", [44 x i8] zeroinitializer }, align 32
@modem_qcom_v1_mhi_channels = internal constant { [12 x %struct.mhi_channel_config], [128 x i8] } { [12 x %struct.mhi_channel_config] [%struct.mhi_channel_config { ptr @.str.4, i32 4, i32 16, i32 0, i32 1, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.4, i32 5, i32 16, i32 0, i32 1, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.5, i32 12, i32 4, i32 0, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.5, i32 13, i32 4, i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.6, i32 14, i32 4, i32 0, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.6, i32 15, i32 4, i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.12, i32 20, i32 8, i32 0, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.12, i32 21, i32 8, i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 1, i8 0 }, %struct.mhi_channel_config { ptr @.str.13, i32 34, i32 32, i32 0, i32 0, i32 1, i32 0, i32 128, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.13, i32 35, i32 32, i32 0, i32 0, i32 2, i32 0, i32 128, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.8, i32 100, i32 128, i32 0, i32 2, i32 1, i32 0, i32 4, i32 0, i32 3, i8 0, i8 0, i8 1, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.8, i32 101, i32 128, i32 0, i32 3, i32 2, i32 0, i32 4, i32 0, i32 3, i8 0, i8 0, i8 1, i8 0, i8 0 }], [128 x i8] zeroinitializer }, align 32
@modem_qcom_v1_mhi_events = internal global { [4 x %struct.mhi_event_config], [32 x i8] } { [4 x %struct.mhi_event_config] [%struct.mhi_event_config { i32 64, i32 0, i32 1, i32 0, i32 1, i32 2, i32 1, i8 0, i8 0, i8 0 }, %struct.mhi_event_config { i32 128, i32 5, i32 2, i32 0, i32 1, i32 2, i32 0, i8 0, i8 0, i8 0 }, %struct.mhi_event_config { i32 1024, i32 1, i32 3, i32 100, i32 1, i32 2, i32 0, i8 1, i8 0, i8 0 }, %struct.mhi_event_config { i32 2048, i32 1, i32 4, i32 101, i32 1, i32 2, i32 0, i8 1, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IPCR\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FIREHOSE\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom-sdx24\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcom/prog_firehose_sdx24.mbn\00", [35 x i8] zeroinitializer }, align 32
@modem_quectel_em1xx_config = internal constant { %struct.mhi_controller_config, [32 x i8] } { %struct.mhi_controller_config { i32 128, i32 20000, i32 0, i32 14, ptr @mhi_quectel_em1xx_channels, i32 4, ptr @mhi_quectel_em1xx_events, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"quectel-em1xx\00", [18 x i8] zeroinitializer }, align 32
@mhi_quectel_em1xx_channels = internal constant { [14 x %struct.mhi_channel_config], [160 x i8] } { [14 x %struct.mhi_channel_config] [%struct.mhi_channel_config { ptr @.str.17, i32 0, i32 32, i32 0, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.17, i32 1, i32 32, i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.3, i32 2, i32 32, i32 0, i32 0, i32 1, i32 0, i32 2, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.3, i32 3, i32 32, i32 0, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.4, i32 4, i32 32, i32 0, i32 1, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.4, i32 5, i32 32, i32 0, i32 1, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.5, i32 12, i32 32, i32 0, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.5, i32 13, i32 32, i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.7, i32 32, i32 32, i32 0, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.7, i32 33, i32 32, i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.13, i32 34, i32 32, i32 0, i32 0, i32 1, i32 0, i32 128, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.13, i32 35, i32 32, i32 0, i32 0, i32 2, i32 0, i32 128, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.18, i32 100, i32 128, i32 0, i32 2, i32 1, i32 0, i32 4, i32 0, i32 3, i8 0, i8 0, i8 1, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.18, i32 101, i32 128, i32 0, i32 3, i32 2, i32 0, i32 4, i32 0, i32 3, i8 0, i8 0, i8 1, i8 0, i8 0 }], [160 x i8] zeroinitializer }, align 32
@mhi_quectel_em1xx_events = internal global { [4 x %struct.mhi_event_config], [32 x i8] } { [4 x %struct.mhi_event_config] [%struct.mhi_event_config { i32 128, i32 0, i32 1, i32 0, i32 1, i32 2, i32 1, i8 0, i8 0, i8 0 }, %struct.mhi_event_config { i32 128, i32 5, i32 2, i32 0, i32 1, i32 2, i32 0, i8 0, i8 0, i8 0 }, %struct.mhi_event_config { i32 1024, i32 1, i32 3, i32 100, i32 1, i32 2, i32 0, i8 1, i8 0, i8 0 }, %struct.mhi_event_config { i32 1024, i32 1, i32 4, i32 101, i32 1, i32 2, i32 0, i8 1, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NMEA\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IP_HW0_MBIM\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qcom-sdx65m\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom/sdx65m/xbl.elf\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom/sdx65m/edl.mbn\00", [44 x i8] zeroinitializer }, align 32
@modem_foxconn_sdx55_config = internal constant { %struct.mhi_controller_config, [32 x i8] } { %struct.mhi_controller_config { i32 128, i32 20000, i32 0, i32 10, ptr @mhi_foxconn_sdx55_channels, i32 4, ptr @mhi_foxconn_sdx55_events, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"foxconn-sdx55\00", [18 x i8] zeroinitializer }, align 32
@mhi_foxconn_sdx55_channels = internal constant { [10 x %struct.mhi_channel_config], [96 x i8] } { [10 x %struct.mhi_channel_config] [%struct.mhi_channel_config { ptr @.str.23, i32 0, i32 32, i32 0, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.23, i32 1, i32 32, i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.4, i32 4, i32 32, i32 0, i32 1, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.4, i32 5, i32 32, i32 0, i32 1, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.5, i32 12, i32 32, i32 0, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.5, i32 13, i32 32, i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.7, i32 32, i32 32, i32 0, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.7, i32 33, i32 32, i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.18, i32 100, i32 128, i32 0, i32 2, i32 1, i32 0, i32 4, i32 0, i32 3, i8 0, i8 0, i8 1, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.18, i32 101, i32 128, i32 0, i32 3, i32 2, i32 0, i32 4, i32 0, i32 3, i8 0, i8 0, i8 1, i8 0, i8 0 }], [96 x i8] zeroinitializer }, align 32
@mhi_foxconn_sdx55_events = internal global { [4 x %struct.mhi_event_config], [32 x i8] } { [4 x %struct.mhi_event_config] [%struct.mhi_event_config { i32 128, i32 0, i32 1, i32 0, i32 1, i32 2, i32 1, i8 0, i8 0, i8 0 }, %struct.mhi_event_config { i32 128, i32 5, i32 2, i32 0, i32 1, i32 2, i32 0, i8 0, i8 0, i8 0 }, %struct.mhi_event_config { i32 1024, i32 1, i32 3, i32 100, i32 1, i32 2, i32 0, i8 1, i8 0, i8 0 }, %struct.mhi_event_config { i32 1024, i32 1, i32 4, i32 101, i32 1, i32 2, i32 0, i8 1, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOOPBACK\00", [23 x i8] zeroinitializer }, align 32
@modem_mv31_config = internal constant { %struct.mhi_controller_config, [32 x i8] } { %struct.mhi_controller_config { i32 128, i32 20000, i32 0, i32 6, ptr @mhi_mv31_channels, i32 4, ptr @mhi_mv31_events, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cinterion-mv31\00", [17 x i8] zeroinitializer }, align 32
@mhi_mv31_channels = internal constant { [6 x %struct.mhi_channel_config], [64 x i8] } { [6 x %struct.mhi_channel_config] [%struct.mhi_channel_config { ptr @.str.23, i32 0, i32 64, i32 0, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.23, i32 1, i32 64, i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.5, i32 12, i32 64, i32 0, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.5, i32 13, i32 64, i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.18, i32 100, i32 512, i32 0, i32 2, i32 1, i32 0, i32 4, i32 0, i32 3, i8 0, i8 0, i8 1, i8 0, i8 0 }, %struct.mhi_channel_config { ptr @.str.18, i32 101, i32 512, i32 0, i32 3, i32 2, i32 0, i32 4, i32 0, i32 3, i8 0, i8 0, i8 1, i8 0, i8 0 }], [64 x i8] zeroinitializer }, align 32
@mhi_mv31_events = internal global { [4 x %struct.mhi_event_config], [32 x i8] } { [4 x %struct.mhi_event_config] [%struct.mhi_event_config { i32 256, i32 0, i32 1, i32 0, i32 1, i32 2, i32 1, i8 0, i8 0, i8 0 }, %struct.mhi_event_config { i32 256, i32 5, i32 2, i32 0, i32 1, i32 2, i32 0, i8 0, i8 0, i8 0 }, %struct.mhi_event_config { i32 1024, i32 1, i32 3, i32 100, i32 1, i32 2, i32 0, i8 1, i8 0, i8 0 }, %struct.mhi_event_config { i32 1024, i32 1, i32 4, i32 101, i32 1, i32 2, i32 0, i8 1, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mhi_pci_probe.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.26, ptr @.str.27, i8 0, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mhi_pci_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/bus/mhi/pci_generic.c\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MHI PCI device found: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@mhi_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&mhi_pdev->recovery_work)\00", [52 x i8] zeroinitializer }, align 32
@mhi_pci_probe.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(&mhi_pdev->health_check_timer)\00", [32 x i8] zeroinitializer }, align 32
@mhi_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.25, ptr @.str.26, i32 784, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to prepare MHI controller\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mhi_pci_probe._entry_ptr = internal global ptr @mhi_pci_probe._entry, section ".printk_index", align 4
@mhi_pci_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.25, ptr @.str.26, i32 790, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to power up MHI controller\0A\00", [61 x i8] zeroinitializer }, align 32
@mhi_pci_probe._entry_ptr.36 = internal global ptr @mhi_pci_probe._entry.34, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mhi_pci_recovery_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.26, i32 660, ptr @.str.39, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"device recovery started\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mhi_pci_recovery_work\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mhi_pci_recovery_work._entry_ptr = internal global ptr @mhi_pci_recovery_work._entry, section ".printk_index", align 4
@mhi_pci_recovery_work.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.26, ptr @.str.40, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Recovery completed\0A\00", [44 x i8] zeroinitializer }, align 32
@mhi_pci_recovery_work._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.38, ptr @.str.26, i32 696, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Recovery failed\0A\00", [47 x i8] zeroinitializer }, align 32
@mhi_pci_recovery_work._entry_ptr.43 = internal global ptr @mhi_pci_recovery_work._entry.41, section ".printk_index", align 4
@health_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.26, i32 709, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Device died\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"health_check\00", [19 x i8] zeroinitializer }, align 32
@health_check._entry_ptr = internal global ptr @health_check._entry, section ".printk_index", align 4
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@mhi_pci_status_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.26, i32 516, ptr @.str.39, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"firmware crashed (%u)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mhi_pci_status_cb\00", [46 x i8] zeroinitializer }, align 32
@mhi_pci_status_cb._entry_ptr = internal global ptr @mhi_pci_status_cb._entry, section ".printk_index", align 4
@mhi_pci_claim._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.26, i32 568, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable pci device: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mhi_pci_claim\00", [18 x i8] zeroinitializer }, align 32
@mhi_pci_claim._entry_ptr = internal global ptr @mhi_pci_claim._entry, section ".printk_index", align 4
@mhi_pci_claim._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.26, i32 574, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to map pci region: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mhi_pci_claim._entry_ptr.52 = internal global ptr @mhi_pci_claim._entry.50, section ".printk_index", align 4
@mhi_pci_claim._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.26, i32 582, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot set proper DMA mask\0A\00", [36 x i8] zeroinitializer }, align 32
@mhi_pci_claim._entry_ptr.55 = internal global ptr @mhi_pci_claim._entry.53, section ".printk_index", align 4
@mhi_pci_get_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.26, i32 607, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error allocating MSI vectors %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mhi_pci_get_irqs\00", [47 x i8] zeroinitializer }, align 32
@mhi_pci_get_irqs._entry_ptr = internal global ptr @mhi_pci_get_irqs._entry, section ".printk_index", align 4
@mhi_pci_get_irqs._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.26, i32 612, ptr @.str.39, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"using shared MSI\0A\00", [46 x i8] zeroinitializer }, align 32
@mhi_pci_get_irqs._entry_ptr.60 = internal global ptr @mhi_pci_get_irqs._entry.58, section ".printk_index", align 4
@mhi_pci_error_detected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.26, i32 907, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PCI error detected, state = %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mhi_pci_error_detected\00", [41 x i8] zeroinitializer }, align 32
@mhi_pci_error_detected._entry_ptr = internal global ptr @mhi_pci_error_detected._entry, section ".printk_index", align 4
@mhi_pci_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.26, i32 929, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mhi_pci_slot_reset\00", [45 x i8] zeroinitializer }, align 32
@mhi_pci_slot_reset._entry_ptr = internal global ptr @mhi_pci_slot_reset._entry, section ".printk_index", align 4
@mhi_pci_reset_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.26, i32 851, ptr @.str.67, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reset\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mhi_pci_reset_prepare\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mhi_pci_reset_prepare._entry_ptr = internal global ptr @mhi_pci_reset_prepare._entry, section ".printk_index", align 4
@mhi_pci_reset_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.26, i32 880, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reset failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mhi_pci_reset_done\00", [45 x i8] zeroinitializer }, align 32
@mhi_pci_reset_done._entry_ptr = internal global ptr @mhi_pci_reset_done._entry, section ".printk_index", align 4
@mhi_pci_reset_done._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.69, ptr @.str.26, i32 886, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@mhi_pci_reset_done._entry_ptr.71 = internal global ptr @mhi_pci_reset_done._entry.70, section ".printk_index", align 4
@mhi_pci_reset_done._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.69, ptr @.str.26, i32 892, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@mhi_pci_reset_done._entry_ptr.73 = internal global ptr @mhi_pci_reset_done._entry.72, section ".printk_index", align 4
@mhi_pci_io_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.26, i32 940, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCI slot reset done\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mhi_pci_io_resume\00", [46 x i8] zeroinitializer }, align 32
@mhi_pci_io_resume._entry_ptr = internal global ptr @mhi_pci_io_resume._entry, section ".printk_index", align 4
@mhi_pci_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.26, i32 973, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to suspend device: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mhi_pci_runtime_suspend\00", [40 x i8] zeroinitializer }, align 32
@mhi_pci_runtime_suspend._entry_ptr = internal global ptr @mhi_pci_runtime_suspend._entry, section ".printk_index", align 4
@mhi_pci_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.26, i32 1009, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to resume device: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mhi_pci_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@mhi_pci_runtime_resume._entry_ptr = internal global ptr @mhi_pci_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 7]
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"mhi_pci_driver\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1091, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1100, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1092, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"mhi_pci_id_table\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 448, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant [20 x i8] c"mhi_pci_err_handler\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 945, i32 40 }
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"mhi_pci_pm_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1080, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant [23 x i8] c"mhi_sierra_em919x_info\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 440, i32 38 }
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c"mhi_qcom_sdx55_info\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 270, i32 38 }
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c"mhi_qcom_sdx24_info\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 281, i32 38 }
@___asan_gen_.107 = private unnamed_addr constant [23 x i8] c"mhi_quectel_em1xx_info\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 324, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"mhi_qcom_sdx65_info\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 260, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant [23 x i8] c"mhi_foxconn_sdx55_info\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 362, i32 38 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"mhi_mv31_info\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 400, i32 38 }
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"modem_sierra_em919x_config\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 431, i32 43 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 441, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant [27 x i8] c"mhi_sierra_em919x_channels\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 408, i32 40 }
@___asan_gen_.128 = private unnamed_addr constant [31 x i8] c"modem_sierra_em919x_mhi_events\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 423, i32 32 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 409, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 411, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 413, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 415, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 417, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 419, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [26 x i8] c"modem_qcom_v1_mhiv_config\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 251, i32 43 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 271, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 272, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 273, i32 9 }
@___asan_gen_.161 = private unnamed_addr constant [27 x i8] c"modem_qcom_v1_mhi_channels\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 226, i32 40 }
@___asan_gen_.164 = private unnamed_addr constant [25 x i8] c"modem_qcom_v1_mhi_events\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 241, i32 32 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 233, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 235, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 282, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 283, i32 9 }
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"modem_quectel_em1xx_config\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 315, i32 43 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 325, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant [27 x i8] c"mhi_quectel_em1xx_channels\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 290, i32 40 }
@___asan_gen_.188 = private unnamed_addr constant [25 x i8] c"mhi_quectel_em1xx_events\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 308, i32 32 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 291, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 304, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 261, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 262, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 263, i32 9 }
@___asan_gen_.206 = private unnamed_addr constant [27 x i8] c"modem_foxconn_sdx55_config\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 353, i32 43 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 363, i32 10 }
@___asan_gen_.212 = private unnamed_addr constant [27 x i8] c"mhi_foxconn_sdx55_channels\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 333, i32 40 }
@___asan_gen_.215 = private unnamed_addr constant [25 x i8] c"mhi_foxconn_sdx55_events\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 346, i32 32 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 334, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [18 x i8] c"modem_mv31_config\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 391, i32 43 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 401, i32 10 }
@___asan_gen_.227 = private unnamed_addr constant [18 x i8] c"mhi_mv31_channels\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 373, i32 40 }
@___asan_gen_.230 = private unnamed_addr constant [16 x i8] c"mhi_mv31_events\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 384, i32 32 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 726, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 733, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 734, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 784, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 790, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 660, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 686, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 696, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 709, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 516, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 568, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 574, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 582, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 606, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 612, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 907, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 929, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 851, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 880, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 886, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 892, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 940, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 973, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.417 = private constant [33 x i8] c"../drivers/bus/mhi/pci_generic.c\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1009, i32 3 }
@llvm.compiler.used = appending global [140 x ptr] [ptr @__UNIQUE_ID_author281, ptr @__UNIQUE_ID_description282, ptr @__UNIQUE_ID_file283, ptr @__UNIQUE_ID_license284, ptr @__exitcall_mhi_pci_driver_exit, ptr @__initcall__kmod_mhi_pci_generic__280_1100_mhi_pci_driver_init6, ptr @health_check._entry, ptr @health_check._entry_ptr, ptr @mhi_pci_claim._entry, ptr @mhi_pci_claim._entry.50, ptr @mhi_pci_claim._entry.53, ptr @mhi_pci_claim._entry_ptr, ptr @mhi_pci_claim._entry_ptr.52, ptr @mhi_pci_claim._entry_ptr.55, ptr @mhi_pci_driver_exit, ptr @mhi_pci_error_detected._entry, ptr @mhi_pci_error_detected._entry_ptr, ptr @mhi_pci_get_irqs._entry, ptr @mhi_pci_get_irqs._entry.58, ptr @mhi_pci_get_irqs._entry_ptr, ptr @mhi_pci_get_irqs._entry_ptr.60, ptr @mhi_pci_io_resume._entry, ptr @mhi_pci_io_resume._entry_ptr, ptr @mhi_pci_probe._entry, ptr @mhi_pci_probe._entry.34, ptr @mhi_pci_probe._entry_ptr, ptr @mhi_pci_probe._entry_ptr.36, ptr @mhi_pci_recovery_work._entry, ptr @mhi_pci_recovery_work._entry.41, ptr @mhi_pci_recovery_work._entry_ptr, ptr @mhi_pci_recovery_work._entry_ptr.43, ptr @mhi_pci_reset_done._entry, ptr @mhi_pci_reset_done._entry.70, ptr @mhi_pci_reset_done._entry.72, ptr @mhi_pci_reset_done._entry_ptr, ptr @mhi_pci_reset_done._entry_ptr.71, ptr @mhi_pci_reset_done._entry_ptr.73, ptr @mhi_pci_reset_prepare._entry, ptr @mhi_pci_reset_prepare._entry_ptr, ptr @mhi_pci_runtime_resume._entry, ptr @mhi_pci_runtime_resume._entry_ptr, ptr @mhi_pci_runtime_suspend._entry, ptr @mhi_pci_runtime_suspend._entry_ptr, ptr @mhi_pci_slot_reset._entry, ptr @mhi_pci_slot_reset._entry_ptr, ptr @mhi_pci_status_cb._entry, ptr @mhi_pci_status_cb._entry_ptr, ptr @mhi_pci_driver, ptr @.str, ptr @.str.1, ptr @mhi_pci_id_table, ptr @mhi_pci_err_handler, ptr @mhi_pci_pm_ops, ptr @mhi_sierra_em919x_info, ptr @mhi_qcom_sdx55_info, ptr @mhi_qcom_sdx24_info, ptr @mhi_quectel_em1xx_info, ptr @mhi_qcom_sdx65_info, ptr @mhi_foxconn_sdx55_info, ptr @mhi_mv31_info, ptr @modem_sierra_em919x_config, ptr @.str.2, ptr @mhi_sierra_em919x_channels, ptr @modem_sierra_em919x_mhi_events, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @modem_qcom_v1_mhiv_config, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @modem_qcom_v1_mhi_channels, ptr @modem_qcom_v1_mhi_events, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @modem_quectel_em1xx_config, ptr @.str.16, ptr @mhi_quectel_em1xx_channels, ptr @mhi_quectel_em1xx_events, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @modem_foxconn_sdx55_config, ptr @.str.22, ptr @mhi_foxconn_sdx55_channels, ptr @mhi_foxconn_sdx55_events, ptr @.str.23, ptr @modem_mv31_config, ptr @.str.24, ptr @mhi_mv31_channels, ptr @mhi_mv31_events, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @mhi_pci_probe.__key, ptr @.str.28, ptr @mhi_pci_probe.__key.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_id_table to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_sierra_em919x_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_qcom_sdx55_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_qcom_sdx24_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_quectel_em1xx_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_qcom_sdx65_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_foxconn_sdx55_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mv31_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modem_sierra_em919x_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_sierra_em919x_channels to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modem_sierra_em919x_mhi_events to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modem_qcom_v1_mhiv_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modem_qcom_v1_mhi_channels to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modem_qcom_v1_mhi_events to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modem_quectel_em1xx_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_quectel_em1xx_channels to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_quectel_em1xx_events to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modem_foxconn_sdx55_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_foxconn_sdx55_channels to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_foxconn_sdx55_events to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modem_mv31_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mv31_channels to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mv31_events to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_probe.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_recovery_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_recovery_work._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @health_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_status_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_claim._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_claim._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_claim._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_get_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_get_irqs._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_error_detected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_reset_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_reset_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_reset_done._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_reset_done._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_io_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_pci_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @mhi_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mhi_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @mhi_pci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mhi_pci_probe.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mhi_pci_probe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !228

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %name = getelementptr inbounds %struct.mhi_pci_dev_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mhi_pci_probe.__UNIQUE_ID_ddebug279, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef %4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef 744, i32 noundef 3520) #9
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %do.body8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body8:                                         ; preds = %do.end
  %recovery_work = getelementptr inbounds %struct.mhi_pci_device, ptr %call.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %recovery_work, i32 noundef 0) #9
  %5 = ptrtoint ptr %recovery_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %recovery_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mhi_pci_device, ptr %call.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.28, ptr noundef nonnull @mhi_pci_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry12 = getelementptr inbounds %struct.mhi_pci_device, ptr %call.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.mhi_pci_device, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mhi_pci_device, ptr %call.i, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mhi_pci_recovery_work, ptr %func, align 4
  %health_check_timer = getelementptr inbounds %struct.mhi_pci_device, ptr %call.i, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %health_check_timer, ptr noundef nonnull @health_check, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @mhi_pci_probe.__key.29) #9
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev3, ptr %call.i, align 4
  %iova_start = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %iova_start to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %iova_start, align 4
  %dma_data_width = getelementptr inbounds %struct.mhi_pci_dev_info, ptr %2, i32 0, i32 5
  %13 = ptrtoint ptr %dma_data_width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_data_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %14)
  %cmp = icmp eq i32 %14, 64
  %sh_prom = zext i32 %14 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %15 = trunc i64 %notmask to i32
  %extract.t = xor i32 %15, -1
  %cond.off0 = select i1 %cmp, i32 -1, i32 %extract.t
  %iova_stop = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %iova_stop to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond.off0, ptr %iova_stop, align 4
  %fw = getelementptr inbounds %struct.mhi_pci_dev_info, ptr %2, i32 0, i32 2
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 4
  %fw_image = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 9
  %19 = ptrtoint ptr %fw_image to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %fw_image, align 4
  %edl = getelementptr inbounds %struct.mhi_pci_dev_info, ptr %2, i32 0, i32 3
  %20 = ptrtoint ptr %edl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %edl, align 4
  %edl_image = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %edl_image to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %edl_image, align 4
  %read_reg = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 61
  %23 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mhi_pci_read_reg, ptr %read_reg, align 4
  %write_reg = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 62
  %24 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mhi_pci_write_reg, ptr %write_reg, align 4
  %status_cb = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 53
  %25 = ptrtoint ptr %status_cb to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mhi_pci_status_cb, ptr %status_cb, align 4
  %runtime_get = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 57
  %26 = ptrtoint ptr %runtime_get to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mhi_pci_runtime_get, ptr %runtime_get, align 4
  %runtime_put = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 58
  %27 = ptrtoint ptr %runtime_put to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mhi_pci_runtime_put, ptr %runtime_put, align 4
  %mru_default = getelementptr inbounds %struct.mhi_pci_dev_info, ptr %2, i32 0, i32 6
  %28 = ptrtoint ptr %mru_default to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mru_default, align 4
  %mru = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 70
  %30 = ptrtoint ptr %mru to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %mru, align 4
  %sideband_wake = getelementptr inbounds %struct.mhi_pci_dev_info, ptr %2, i32 0, i32 7
  %31 = ptrtoint ptr %sideband_wake to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sideband_wake, align 4, !range !229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool22.not = icmp eq i8 %32, 0
  br i1 %tobool22.not, label %do.body8.if.end24_crit_edge, label %if.then23

do.body8.if.end24_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %wake_get = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 54
  %33 = ptrtoint ptr %wake_get to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mhi_pci_wake_get_nop, ptr %wake_get, align 4
  %wake_put = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 55
  %34 = ptrtoint ptr %wake_put to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mhi_pci_wake_put_nop, ptr %wake_put, align 4
  %wake_toggle = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 56
  %35 = ptrtoint ptr %wake_toggle to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @mhi_pci_wake_toggle_nop, ptr %wake_toggle, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %do.body8.if.end24_crit_edge
  %bar_num = getelementptr inbounds %struct.mhi_pci_dev_info, ptr %2, i32 0, i32 4
  %36 = ptrtoint ptr %bar_num to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bar_num, align 4
  %38 = ptrtoint ptr %dma_data_width to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_data_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %39)
  %cmp26 = icmp eq i32 %39, 64
  br i1 %cmp26, label %if.end24.cond.end34_crit_edge, label %cond.false29

if.end24.cond.end34_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end34

cond.false29:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %sh_prom31 = zext i32 %39 to i64
  %notmask147 = shl nsw i64 -1, %sh_prom31
  %sub33 = xor i64 %notmask147, -1
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false29, %if.end24.cond.end34_crit_edge
  %cond35 = phi i64 [ %sub33, %cond.false29 ], [ -1, %if.end24.cond.end34_crit_edge ]
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 -136
  %call.i148 = tail call i32 @pci_assign_resource(ptr noundef %add.ptr.i, i32 noundef %37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool.not.i = icmp eq i32 %call.i148, 0
  br i1 %tobool.not.i, label %if.end.i, label %cond.end34.cleanup_crit_edge

cond.end34.cleanup_crit_edge:                     ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %cond.end34
  %call1.i = tail call i32 @pcim_enable_device(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.48, i32 noundef %call1.i) #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %shl.i = shl nuw i32 1, %37
  %init_name.i.i.i = getelementptr i8, ptr %41, i32 144
  %42 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end4.i.pci_name.exit.i_crit_edge

if.end4.i.pci_name.exit.i_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %if.end4.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %45, %if.end.i.i.i ], [ %43, %if.end4.i.pci_name.exit.i_crit_edge ]
  %call6.i = tail call i32 @pcim_iomap_regions(ptr noundef %add.ptr.i, i32 noundef %shl.i, ptr noundef %retval.0.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end13.i, label %do.end11.i

do.end11.i:                                       ; preds = %pci_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.51, i32 noundef %call6.i) #12
  br label %cleanup

if.end13.i:                                       ; preds = %pci_name.exit.i
  %call14.i = tail call ptr @pcim_iomap_table(ptr noundef %add.ptr.i) #9
  %arrayidx.i = getelementptr ptr, ptr %call14.i, i32 %37
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %regs.i = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 3
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %regs.i, align 4
  %resource.i = getelementptr i8, ptr %41, i32 936
  %arrayidx15.i = getelementptr [17 x %struct.resource], ptr %resource.i, i32 0, i32 %37
  %end.i = getelementptr inbounds %struct.resource, ptr %arrayidx15.i, i32 0, i32 1
  %49 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i = icmp eq i32 %50, 0
  br i1 %cmp.i, label %if.end13.i.cond.end.i_crit_edge, label %cond.false.i

if.end13.i.cond.end.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx15.i, align 8
  %sub.i = add i32 %50, 1
  %add.i = sub i32 %sub.i, %52
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end13.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %if.end13.i.cond.end.i_crit_edge ]
  %reg_len.i = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 14
  %53 = ptrtoint ptr %reg_len.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %cond.i, ptr %reg_len.i, align 4
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %41, i64 noundef %cond35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end39, label %do.end27.i

do.end27.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end39:                                         ; preds = %cond.end.i
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %41, i64 noundef %cond35) #9
  tail call void @pci_set_master(ptr noundef %add.ptr.i) #9
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %55, i32 -136
  %num_events.i = getelementptr inbounds %struct.mhi_controller_config, ptr %10, i32 0, i32 5
  %56 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_events.i, align 4
  %add.i151 = add i32 %57, 1
  %nr_irqs.i = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 24
  %58 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add.i151, ptr %nr_irqs.i, align 4
  %call.i.i152 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %add.ptr.i150, i32 noundef 1, i32 noundef %add.i151, i32 noundef 2, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i152)
  %cmp.i153 = icmp slt i32 %call.i.i152, 0
  br i1 %cmp.i153, label %do.end.i154, label %if.end.i155

do.end.i154:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.56, i32 noundef %call.i.i152) #12
  br label %cleanup

if.end.i155:                                      ; preds = %if.end39
  %59 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_irqs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i152, i32 %60)
  %cmp3.i = icmp ult i32 %call.i.i152, %60
  br i1 %cmp3.i, label %do.end7.i, label %if.end.i155.if.end13.i156_crit_edge

if.end.i155.if.end13.i156_crit_edge:              ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i156

do.end7.i:                                        ; preds = %if.end.i155
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.59) #12
  %61 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_events.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp1062.not.i = icmp eq i32 %62, 0
  br i1 %cmp1062.not.i, label %do.end7.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.end7.i.for.end.i_crit_edge:                    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end7.i
  %event_cfg.i = getelementptr inbounds %struct.mhi_controller_config, ptr %10, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.063.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %63 = ptrtoint ptr %event_cfg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %event_cfg.i, align 4
  %irq11.i = getelementptr %struct.mhi_event_config, ptr %64, i32 %i.063.i, i32 2
  %65 = ptrtoint ptr %irq11.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %irq11.i, align 4
  %inc.i = add nuw i32 %i.063.i, 1
  %66 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_events.i, align 4
  %cmp10.i = icmp ult i32 %inc.i, %67
  br i1 %cmp10.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end7.i.for.end.i_crit_edge
  %68 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %nr_irqs.i, align 4
  br label %if.end13.i156

if.end13.i156:                                    ; preds = %for.end.i, %if.end.i155.if.end13.i156_crit_edge
  %69 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr_irqs.i, align 4
  %71 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %70, i32 4) #9
  %72 = extractvalue { i32, i1 } %71, 1
  br i1 %72, label %if.end13.i156.cleanup_crit_edge, label %devm_kcalloc.exit.i, !prof !230

if.end13.i156.cleanup_crit_edge:                  ; preds = %if.end13.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.end13.i156
  %73 = extractvalue { i32, i1 } %71, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %55, i32 noundef %73, i32 noundef 3520) #9
  %tobool.not.i157 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i157, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %for.cond19.preheader.i

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond19.preheader.i:                           ; preds = %devm_kcalloc.exit.i
  %74 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nr_irqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp2164.not.i = icmp eq i32 %75, 0
  br i1 %cmp2164.not.i, label %for.cond19.preheader.i.if.end43_crit_edge, label %for.body22.lr.ph.i

for.cond19.preheader.i.if.end43_crit_edge:        ; preds = %for.cond19.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

for.body22.lr.ph.i:                               ; preds = %for.cond19.preheader.i
  %sub.i158 = add i32 %call.i.i152, -1
  br label %for.body22.i

for.body22.i:                                     ; preds = %for.body22.i.for.body22.i_crit_edge, %for.body22.lr.ph.i
  %i.165.i = phi i32 [ 0, %for.body22.lr.ph.i ], [ %inc27.i, %for.body22.i.for.body22.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.165.i, i32 %call.i.i152)
  %cmp23.not.i = icmp slt i32 %i.165.i, %call.i.i152
  %cond.i159 = select i1 %cmp23.not.i, i32 %i.165.i, i32 %sub.i158
  %call24.i = tail call i32 @pci_irq_vector(ptr noundef %add.ptr.i150, i32 noundef %cond.i159) #9
  %arrayidx25.i = getelementptr i32, ptr %call5.i.i.i, i32 %i.165.i
  %76 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call24.i, ptr %arrayidx25.i, align 4
  %inc27.i = add nuw i32 %i.165.i, 1
  %77 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nr_irqs.i, align 4
  %cmp21.i = icmp ult i32 %inc27.i, %78
  br i1 %cmp21.i, label %for.body22.i.for.body22.i_crit_edge, label %for.body22.i.if.end43_crit_edge

for.body22.i.if.end43_crit_edge:                  ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

for.body22.i.for.body22.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22.i

if.end43:                                         ; preds = %for.body22.i.if.end43_crit_edge, %for.cond19.preheader.i.if.end43_crit_edge
  %irq29.i = getelementptr inbounds %struct.mhi_controller, ptr %call.i, i32 0, i32 19
  %79 = ptrtoint ptr %irq29.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call5.i.i.i, ptr %irq29.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %80 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call44 = tail call i32 @pci_save_state(ptr noundef %pdev) #9
  %call45 = tail call ptr @pci_store_saved_state(ptr noundef %pdev) #9
  %pci_state = getelementptr inbounds %struct.mhi_pci_device, ptr %call.i, i32 0, i32 1
  %81 = ptrtoint ptr %pci_state to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call45, ptr %pci_state, align 4
  %call46 = tail call i32 @pci_load_saved_state(ptr noundef %pdev, ptr noundef null) #9
  %call47 = tail call i32 @pci_enable_pcie_error_reporting(ptr noundef %pdev) #9
  %call48 = tail call i32 @mhi_register_controller(ptr noundef nonnull %call.i, ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end43.err_disable_reporting_crit_edge

if.end43.err_disable_reporting_crit_edge:         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_reporting

if.end51:                                         ; preds = %if.end43
  %call52 = tail call i32 @mhi_prepare_for_power_up(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.31) #12
  br label %err_unregister

if.end59:                                         ; preds = %if.end51
  %call60 = tail call i32 @mhi_sync_power_up(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end67, label %do.end65

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.35) #12
  tail call void @mhi_unprepare_after_power_down(ptr noundef nonnull %call.i) #9
  br label %err_unregister

if.end67:                                         ; preds = %if.end59
  %status = getelementptr inbounds %struct.mhi_pci_device, ptr %call.i, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %status) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %82, 200
  %call69 = tail call i32 @mod_timer(ptr noundef %health_check_timer, i32 noundef %add) #9
  %call70 = tail call zeroext i1 @pci_pme_capable(ptr noundef %pdev, i32 noundef 3) #9
  br i1 %call70, label %if.then71, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev3, i32 noundef 2000) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev3, i1 noundef zeroext true) #9
  %call.i161 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 12, i32 22
  %83 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store volatile i64 %call.i161, ptr %last_busy.i, align 8
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev3)
  br label %cleanup

err_unregister:                                   ; preds = %do.end65, %do.end57
  %err.0 = phi i32 [ %call52, %do.end57 ], [ %call60, %do.end65 ]
  tail call void @mhi_unregister_controller(ptr noundef nonnull %call.i) #9
  br label %err_disable_reporting

err_disable_reporting:                            ; preds = %err_unregister, %if.end43.err_disable_reporting_crit_edge
  %err.1 = phi i32 [ %call48, %if.end43.err_disable_reporting_crit_edge ], [ %err.0, %err_unregister ]
  %call77 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pdev) #9
  br label %cleanup

cleanup:                                          ; preds = %err_disable_reporting, %if.then71, %if.end67.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %if.end13.i156.cleanup_crit_edge, %do.end.i154, %do.end27.i, %do.end11.i, %do.end.i, %cond.end34.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_disable_reporting ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.then71 ], [ 0, %if.end67.cleanup_crit_edge ], [ %call.i148, %cond.end34.cleanup_crit_edge ], [ %call.i.i, %do.end27.i ], [ %call6.i, %do.end11.i ], [ %call1.i, %do.end.i ], [ -12, %if.end13.i156.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ %call.i.i152, %do.end.i154 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %health_check_timer = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @del_timer_sync(ptr noundef %health_check_timer) #9
  %recovery_work = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 2
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %recovery_work) #9
  %status = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 4
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mhi_power_down(ptr noundef %1, i1 noundef zeroext true) #9
  tail call void @mhi_unprepare_after_power_down(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = tail call zeroext i1 @pci_pme_capable(ptr noundef %pdev, i32 noundef 3) #9
  br i1 %call5, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !231
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  tail call void @mhi_unregister_controller(ptr noundef %1) #9
  %call8 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pdev) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_pci_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mhi_pci_remove(ptr noundef %pdev)
  %call = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 3) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_pci_recovery_work(ptr noundef %work) #2 align 64 {
entry:
  %vendor.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -648
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 -136
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.37) #12
  %health_check_timer = getelementptr i8, ptr %work, i32 44
  %call = tail call i32 @del_timer(ptr noundef %health_check_timer) #9
  tail call void @pm_runtime_forbid(ptr noundef %1) #9
  %status = getelementptr i8, ptr %work, i32 92
  %call6 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mhi_power_down(ptr noundef %add.ptr, i1 noundef zeroext false) #9
  tail call void @mhi_unprepare_after_power_down(ptr noundef %add.ptr) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call7 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr4, i32 noundef 0) #9
  %pci_state = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %pci_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_state, align 4
  %call8 = tail call i32 @pci_load_saved_state(ptr noundef %add.ptr4, ptr noundef %3) #9
  tail call void @pci_restore_state(ptr noundef %add.ptr4) #9
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor.i) #9
  %6 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %vendor.i, align 2
  %call.i = call i32 @pci_read_config_word(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull %vendor.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mhi_pci_is_alive.exit, label %mhi_pci_is_alive.exit.thread

mhi_pci_is_alive.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor.i) #9
  br label %err_try_reset

mhi_pci_is_alive.exit:                            ; preds = %if.end
  %7 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vendor.i, align 2
  %9 = add i16 %8, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %9)
  %switch.selectcmp.i = icmp ult i16 %9, -2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor.i) #9
  br i1 %switch.selectcmp.i, label %if.end11, label %mhi_pci_is_alive.exit.err_try_reset_crit_edge

mhi_pci_is_alive.exit.err_try_reset_crit_edge:    ; preds = %mhi_pci_is_alive.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_try_reset

if.end11:                                         ; preds = %mhi_pci_is_alive.exit
  %call12 = call i32 @mhi_prepare_for_power_up(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.err_try_reset_crit_edge

if.end11.err_try_reset_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_try_reset

if.end15:                                         ; preds = %if.end11
  %call16 = call i32 @mhi_sync_power_up(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body20, label %err_unprepare

do.body20:                                        ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mhi_pci_recovery_work.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mhi_pci_recovery_work, %if.then26)) #9
          to label %do.end30 [label %if.then26], !srcloc !228

if.then26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mhi_pci_recovery_work.__UNIQUE_ID_ddebug278, ptr noundef %1, ptr noundef nonnull @.str.40) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body20
  call void @_set_bit(i32 noundef 0, ptr noundef %status) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %10, 200
  %call33 = call i32 @mod_timer(ptr noundef %health_check_timer, i32 noundef %add) #9
  br label %cleanup

err_unprepare:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  call void @mhi_unprepare_after_power_down(ptr noundef %add.ptr) #9
  br label %err_try_reset

err_try_reset:                                    ; preds = %err_unprepare, %if.end11.err_try_reset_crit_edge, %mhi_pci_is_alive.exit.err_try_reset_crit_edge, %mhi_pci_is_alive.exit.thread
  %call34 = call i32 @pci_reset_function(ptr noundef %add.ptr4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err_try_reset.cleanup_crit_edge, label %do.end39

err_try_reset.cleanup_crit_edge:                  ; preds = %err_try_reset
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end39:                                         ; preds = %err_try_reset
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.42) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %err_try_reset.cleanup_crit_edge, %do.end30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @health_check(ptr noundef %t) #2 align 64 {
entry:
  %vendor.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -692
  %status = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 -136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor.i) #9
  %7 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %vendor.i, align 2
  %call.i = call i32 @pci_read_config_word(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull %vendor.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mhi_pci_is_alive.exit, label %mhi_pci_is_alive.exit.thread

mhi_pci_is_alive.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor.i) #9
  br label %do.end

mhi_pci_is_alive.exit:                            ; preds = %if.end
  %8 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vendor.i, align 2
  %10 = add i16 %9, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %10)
  %switch.selectcmp.i = icmp ult i16 %10, -2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor.i) #9
  br i1 %switch.selectcmp.i, label %if.end8, label %mhi_pci_is_alive.exit.do.end_crit_edge

mhi_pci_is_alive.exit.do.end_crit_edge:           ; preds = %mhi_pci_is_alive.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %mhi_pci_is_alive.exit.do.end_crit_edge, %mhi_pci_is_alive.exit.thread
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.44) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %13 = load ptr, ptr @system_long_wq, align 4
  %recovery_work = getelementptr i8, ptr %t, i32 -44
  %call.i17 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %recovery_work) #9
  br label %cleanup

if.end8:                                          ; preds = %mhi_pci_is_alive.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 200
  %call9 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_pci_read_reg(ptr nocapture noundef readnone %mhi_cntrl, ptr noundef %addr, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #9, !srcloc !232
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !233
  %2 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %out, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_pci_write_reg(ptr nocapture noundef readnone %mhi_cntrl, ptr noundef %addr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !234
  tail call void @arm_heavy_mb() #9
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #9, !srcloc !235
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_pci_status_cb(ptr nocapture noundef readonly %mhi_cntrl, i32 noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mhi_cntrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mhi_cntrl, align 4
  %2 = zext i32 %cb to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cb, label %entry.sw.epilog_crit_edge [
    i32 7, label %entry.do.end_crit_edge
    i32 6, label %entry.do.end_crit_edge7
    i32 5, label %sw.bb2
  ]

entry.do.end_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.46, i32 noundef %cb) #12
  tail call void @pm_runtime_forbid(ptr noundef %1) #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pm_runtime_allow(ptr noundef %1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %do.end, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_pci_runtime_get(ptr nocapture noundef readonly %mhi_cntrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mhi_cntrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mhi_cntrl, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 5) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_pci_runtime_put(ptr nocapture noundef readonly %mhi_cntrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mhi_cntrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mhi_cntrl, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 22
  %2 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %3 = ptrtoint ptr %mhi_cntrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mhi_cntrl, align 4
  %call.i3 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 5) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mhi_pci_wake_get_nop(ptr nocapture noundef %mhi_cntrl, i1 noundef zeroext %force) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mhi_pci_wake_put_nop(ptr nocapture noundef %mhi_cntrl, i1 noundef zeroext %override) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mhi_pci_wake_toggle_nop(ptr nocapture noundef %mhi_cntrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_store_saved_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_load_saved_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_pcie_error_reporting(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_prepare_for_power_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_sync_power_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_pme_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #9, !srcloc !237
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !238
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_unprepare_after_power_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_pcie_error_reporting(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_power_down(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reset_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_assign_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_pci_error_detected(ptr noundef %pdev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mhi_power_down(ptr noundef %1, i1 noundef zeroext false) #9
  tail call void @mhi_unprepare_after_power_down(ptr noundef %1) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.then3 ], [ 4, %entry.cleanup_crit_edge ], [ 5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_pci_slot_reset(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63) #12
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 4, %do.end ], [ 5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_pci_reset_prepare(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.65) #12
  %health_check_timer = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @del_timer(ptr noundef %health_check_timer) #9
  %status = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mhi_power_down(ptr noundef %1, i1 noundef zeroext false) #9
  tail call void @mhi_unprepare_after_power_down(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mhi_soc_reset(ptr noundef %1) #9
  tail call void @msleep(i32 noundef 2000) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_pci_reset_done(ptr noundef %pdev) #2 align 64 {
entry:
  %vendor.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pci_state = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pci_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_state, align 4
  %call2 = tail call i32 @pci_load_saved_state(ptr noundef %pdev, ptr noundef %3) #9
  tail call void @pci_restore_state(ptr noundef %pdev) #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor.i) #9
  %6 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %vendor.i, align 2
  %call.i = call i32 @pci_read_config_word(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull %vendor.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mhi_pci_is_alive.exit, label %mhi_pci_is_alive.exit.thread

mhi_pci_is_alive.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor.i) #9
  br label %do.end

mhi_pci_is_alive.exit:                            ; preds = %entry
  %7 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vendor.i, align 2
  %9 = add i16 %8, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %9)
  %switch.selectcmp.i = icmp ult i16 %9, -2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor.i) #9
  br i1 %switch.selectcmp.i, label %if.end, label %mhi_pci_is_alive.exit.do.end_crit_edge

mhi_pci_is_alive.exit.do.end_crit_edge:           ; preds = %mhi_pci_is_alive.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %mhi_pci_is_alive.exit.do.end_crit_edge, %mhi_pci_is_alive.exit.thread
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68) #12
  br label %cleanup

if.end:                                           ; preds = %mhi_pci_is_alive.exit
  %call4 = call i32 @mhi_prepare_for_power_up(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.31) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = call i32 @mhi_sync_power_up(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.35) #12
  call void @mhi_unprepare_after_power_down(ptr noundef %1) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 4
  call void @_set_bit(i32 noundef 0, ptr noundef %status) #9
  %health_check_timer = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %10, 200
  %call19 = call i32 @mod_timer(ptr noundef %health_check_timer, i32 noundef %add) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end16, %do.end8, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_pci_io_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.74) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %2 = load ptr, ptr @system_long_wq, align 4
  %recovery_work = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %recovery_work) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_soc_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_pci_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %call = tail call i32 @mhi_pci_runtime_suspend(ptr noundef %dev)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_pci_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mhi_pci_runtime_resume(ptr noundef %dev)
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_pci_freeze(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mhi_power_down(ptr noundef %1, i1 noundef zeroext true) #9
  tail call void @mhi_unprepare_after_power_down(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_pci_restore(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %2 = load ptr, ptr @system_long_wq, align 4
  %recovery_work = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %recovery_work) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_pci_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %health_check_timer = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @del_timer(ptr noundef %health_check_timer) #9
  %recovery_work = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 2
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %recovery_work) #9
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool7.not = icmp eq i32 %and1.i, 0
  br i1 %tobool7.not, label %if.end.pci_suspend_crit_edge, label %lor.lhs.false

if.end.pci_suspend_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_suspend

lor.lhs.false:                                    ; preds = %if.end
  %ee = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end9, label %lor.lhs.false.pci_suspend_crit_edge

lor.lhs.false.pci_suspend_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_suspend

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call i32 @mhi_pm_suspend(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.pci_suspend_crit_edge, label %do.end

if.end9.pci_suspend_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_suspend

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76, i32 noundef %call10) #12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %status) #9
  br label %cleanup

pci_suspend:                                      ; preds = %if.end9.pci_suspend_crit_edge, %lor.lhs.false.pci_suspend_crit_edge, %if.end.pci_suspend_crit_edge
  tail call void @pci_disable_device(ptr noundef %add.ptr) #9
  %call16 = tail call i32 @pci_wake_from_d3(ptr noundef %add.ptr, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %pci_suspend, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pci_suspend ], [ -16, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_pci_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.err_recovery_crit_edge

if.end.err_recovery_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_recovery

if.end6:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %add.ptr) #9
  %call7 = tail call i32 @pci_wake_from_d3(ptr noundef %add.ptr, i1 noundef zeroext false) #9
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool10.not = icmp eq i32 %and1.i, 0
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %lor.lhs.false

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end6
  %ee = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %call13 = tail call i32 @mhi_pm_resume(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78, i32 noundef %call13) #12
  br label %err_recovery

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %health_check_timer = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 200
  %call18 = tail call i32 @mod_timer(ptr noundef %health_check_timer, i32 noundef %add) #9
  br label %cleanup.sink.split

err_recovery:                                     ; preds = %do.end, %if.end.err_recovery_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %7 = load ptr, ptr @system_long_wq, align 4
  %recovery_work = getelementptr inbounds %struct.mhi_pci_device, ptr %1, i32 0, i32 2
  %call.i36 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %recovery_work) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_recovery, %if.end17
  %call.i37 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i38 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i38 to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i37, ptr %last_busy.i38, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_pm_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_wake_from_d3(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_pm_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !111, !112, !114, !115, !117, !118, !120, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !134, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !177, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !190, !191, !193, !194, !195, !196, !198, !199, !201, !202, !204, !205, !206, !207, !209, !211, !212, !213, !214, !216, !217, !218}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = !{ptr @__initcall__kmod_mhi_pci_generic__280_1100_mhi_pci_driver_init6, !1, !"__initcall__kmod_mhi_pci_generic__280_1100_mhi_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bus/mhi/pci_generic.c", i32 1100, i32 1}
!2 = !{ptr @__exitcall_mhi_pci_driver_exit, !1, !"__exitcall_mhi_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author281, !4, !"__UNIQUE_ID_author281", i1 false, i1 false}
!4 = !{!"../drivers/bus/mhi/pci_generic.c", i32 1102, i32 1}
!5 = !{ptr @__UNIQUE_ID_description282, !6, !"__UNIQUE_ID_description282", i1 false, i1 false}
!6 = !{!"../drivers/bus/mhi/pci_generic.c", i32 1103, i32 1}
!7 = !{ptr @__UNIQUE_ID_file283, !8, !"__UNIQUE_ID_file283", i1 false, i1 false}
!8 = !{!"../drivers/bus/mhi/pci_generic.c", i32 1104, i32 1}
!9 = !{ptr @__UNIQUE_ID_license284, !8, !"__UNIQUE_ID_license284", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/bus/mhi/pci_generic.c", i32 1092, i32 11}
!13 = !{ptr @mhi_pci_driver, !14, !"mhi_pci_driver", i1 false, i1 false}
!14 = !{!"../drivers/bus/mhi/pci_generic.c", i32 1091, i32 26}
!15 = !{ptr @mhi_pci_id_table, !16, !"mhi_pci_id_table", i1 false, i1 false}
!16 = !{!"../drivers/bus/mhi/pci_generic.c", i32 448, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/bus/mhi/pci_generic.c", i32 441, i32 10}
!19 = !{ptr @mhi_sierra_em919x_info, !20, !"mhi_sierra_em919x_info", i1 false, i1 false}
!20 = !{!"../drivers/bus/mhi/pci_generic.c", i32 440, i32 38}
!21 = !{ptr @modem_sierra_em919x_config, !22, !"modem_sierra_em919x_config", i1 false, i1 false}
!22 = !{!"../drivers/bus/mhi/pci_generic.c", i32 431, i32 43}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/bus/mhi/pci_generic.c", i32 409, i32 2}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/bus/mhi/pci_generic.c", i32 411, i32 2}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/bus/mhi/pci_generic.c", i32 413, i32 2}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bus/mhi/pci_generic.c", i32 415, i32 2}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/bus/mhi/pci_generic.c", i32 417, i32 2}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/bus/mhi/pci_generic.c", i32 419, i32 2}
!35 = !{ptr @mhi_sierra_em919x_channels, !36, !"mhi_sierra_em919x_channels", i1 false, i1 false}
!36 = !{!"../drivers/bus/mhi/pci_generic.c", i32 408, i32 40}
!37 = !{ptr @modem_sierra_em919x_mhi_events, !38, !"modem_sierra_em919x_mhi_events", i1 false, i1 false}
!38 = !{!"../drivers/bus/mhi/pci_generic.c", i32 423, i32 32}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/bus/mhi/pci_generic.c", i32 271, i32 10}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/bus/mhi/pci_generic.c", i32 272, i32 8}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/bus/mhi/pci_generic.c", i32 273, i32 9}
!45 = !{ptr @mhi_qcom_sdx55_info, !46, !"mhi_qcom_sdx55_info", i1 false, i1 false}
!46 = !{!"../drivers/bus/mhi/pci_generic.c", i32 270, i32 38}
!47 = !{ptr @modem_qcom_v1_mhiv_config, !48, !"modem_qcom_v1_mhiv_config", i1 false, i1 false}
!48 = !{!"../drivers/bus/mhi/pci_generic.c", i32 251, i32 43}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/bus/mhi/pci_generic.c", i32 233, i32 2}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/bus/mhi/pci_generic.c", i32 235, i32 2}
!53 = !{ptr @modem_qcom_v1_mhi_channels, !54, !"modem_qcom_v1_mhi_channels", i1 false, i1 false}
!54 = !{!"../drivers/bus/mhi/pci_generic.c", i32 226, i32 40}
!55 = !{ptr @modem_qcom_v1_mhi_events, !56, !"modem_qcom_v1_mhi_events", i1 false, i1 false}
!56 = !{!"../drivers/bus/mhi/pci_generic.c", i32 241, i32 32}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/bus/mhi/pci_generic.c", i32 282, i32 10}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/bus/mhi/pci_generic.c", i32 283, i32 9}
!61 = !{ptr @mhi_qcom_sdx24_info, !62, !"mhi_qcom_sdx24_info", i1 false, i1 false}
!62 = !{!"../drivers/bus/mhi/pci_generic.c", i32 281, i32 38}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/bus/mhi/pci_generic.c", i32 325, i32 10}
!65 = !{ptr @mhi_quectel_em1xx_info, !66, !"mhi_quectel_em1xx_info", i1 false, i1 false}
!66 = !{!"../drivers/bus/mhi/pci_generic.c", i32 324, i32 38}
!67 = !{ptr @modem_quectel_em1xx_config, !68, !"modem_quectel_em1xx_config", i1 false, i1 false}
!68 = !{!"../drivers/bus/mhi/pci_generic.c", i32 315, i32 43}
!69 = !{ptr @.str.17, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/bus/mhi/pci_generic.c", i32 291, i32 2}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/bus/mhi/pci_generic.c", i32 304, i32 2}
!73 = !{ptr @mhi_quectel_em1xx_channels, !74, !"mhi_quectel_em1xx_channels", i1 false, i1 false}
!74 = !{!"../drivers/bus/mhi/pci_generic.c", i32 290, i32 40}
!75 = !{ptr @mhi_quectel_em1xx_events, !76, !"mhi_quectel_em1xx_events", i1 false, i1 false}
!76 = !{!"../drivers/bus/mhi/pci_generic.c", i32 308, i32 32}
!77 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/bus/mhi/pci_generic.c", i32 261, i32 10}
!79 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/bus/mhi/pci_generic.c", i32 262, i32 8}
!81 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/bus/mhi/pci_generic.c", i32 263, i32 9}
!83 = !{ptr @mhi_qcom_sdx65_info, !84, !"mhi_qcom_sdx65_info", i1 false, i1 false}
!84 = !{!"../drivers/bus/mhi/pci_generic.c", i32 260, i32 38}
!85 = !{ptr @.str.22, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/bus/mhi/pci_generic.c", i32 363, i32 10}
!87 = !{ptr @mhi_foxconn_sdx55_info, !88, !"mhi_foxconn_sdx55_info", i1 false, i1 false}
!88 = !{!"../drivers/bus/mhi/pci_generic.c", i32 362, i32 38}
!89 = !{ptr @modem_foxconn_sdx55_config, !90, !"modem_foxconn_sdx55_config", i1 false, i1 false}
!90 = !{!"../drivers/bus/mhi/pci_generic.c", i32 353, i32 43}
!91 = !{ptr @.str.23, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/bus/mhi/pci_generic.c", i32 334, i32 2}
!93 = !{ptr @mhi_foxconn_sdx55_channels, !94, !"mhi_foxconn_sdx55_channels", i1 false, i1 false}
!94 = !{!"../drivers/bus/mhi/pci_generic.c", i32 333, i32 40}
!95 = !{ptr @mhi_foxconn_sdx55_events, !96, !"mhi_foxconn_sdx55_events", i1 false, i1 false}
!96 = !{!"../drivers/bus/mhi/pci_generic.c", i32 346, i32 32}
!97 = !{ptr @.str.24, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/bus/mhi/pci_generic.c", i32 401, i32 10}
!99 = !{ptr @mhi_mv31_info, !100, !"mhi_mv31_info", i1 false, i1 false}
!100 = !{!"../drivers/bus/mhi/pci_generic.c", i32 400, i32 38}
!101 = !{ptr @modem_mv31_config, !102, !"modem_mv31_config", i1 false, i1 false}
!102 = !{!"../drivers/bus/mhi/pci_generic.c", i32 391, i32 43}
!103 = !{ptr @mhi_mv31_channels, !104, !"mhi_mv31_channels", i1 false, i1 false}
!104 = !{!"../drivers/bus/mhi/pci_generic.c", i32 373, i32 40}
!105 = !{ptr @mhi_mv31_events, !106, !"mhi_mv31_events", i1 false, i1 false}
!106 = !{!"../drivers/bus/mhi/pci_generic.c", i32 384, i32 32}
!107 = !{ptr @.str.25, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/bus/mhi/pci_generic.c", i32 726, i32 2}
!109 = !{ptr @.str.26, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.27, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @mhi_pci_probe.__UNIQUE_ID_ddebug279, !108, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!112 = !{ptr @mhi_pci_probe.__key, !113, !"__key", i1 false, i1 false}
!113 = !{!"../drivers/bus/mhi/pci_generic.c", i32 733, i32 2}
!114 = !{ptr @.str.28, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @mhi_pci_probe.__key.29, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/bus/mhi/pci_generic.c", i32 734, i32 2}
!117 = !{ptr @.str.30, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.31, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/bus/mhi/pci_generic.c", i32 784, i32 3}
!120 = !{ptr @.str.32, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.33, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @mhi_pci_probe._entry, !119, !"_entry", i1 false, i1 false}
!123 = !{ptr @mhi_pci_probe._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.35, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/bus/mhi/pci_generic.c", i32 790, i32 3}
!126 = !{ptr @mhi_pci_probe._entry.34, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @mhi_pci_probe._entry_ptr.36, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.37, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/bus/mhi/pci_generic.c", i32 660, i32 2}
!130 = !{ptr @.str.38, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.39, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @mhi_pci_recovery_work._entry, !129, !"_entry", i1 false, i1 false}
!133 = !{ptr @mhi_pci_recovery_work._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/bus/mhi/pci_generic.c", i32 686, i32 2}
!136 = !{ptr @mhi_pci_recovery_work.__UNIQUE_ID_ddebug278, !135, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!137 = !{ptr @.str.42, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/bus/mhi/pci_generic.c", i32 696, i32 3}
!139 = !{ptr @mhi_pci_recovery_work._entry.41, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @mhi_pci_recovery_work._entry_ptr.43, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.44, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/bus/mhi/pci_generic.c", i32 709, i32 3}
!143 = !{ptr @.str.45, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @health_check._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @health_check._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.46, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/bus/mhi/pci_generic.c", i32 516, i32 3}
!148 = !{ptr @.str.47, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @mhi_pci_status_cb._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @mhi_pci_status_cb._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.48, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/bus/mhi/pci_generic.c", i32 568, i32 3}
!153 = !{ptr @.str.49, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @mhi_pci_claim._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @mhi_pci_claim._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.51, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/bus/mhi/pci_generic.c", i32 574, i32 3}
!158 = !{ptr @mhi_pci_claim._entry.50, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @mhi_pci_claim._entry_ptr.52, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.54, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/bus/mhi/pci_generic.c", i32 582, i32 3}
!162 = !{ptr @mhi_pci_claim._entry.53, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @mhi_pci_claim._entry_ptr.55, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.56, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/bus/mhi/pci_generic.c", i32 606, i32 3}
!166 = !{ptr @.str.57, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @mhi_pci_get_irqs._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @mhi_pci_get_irqs._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.59, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/bus/mhi/pci_generic.c", i32 612, i32 3}
!171 = !{ptr @mhi_pci_get_irqs._entry.58, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @mhi_pci_get_irqs._entry_ptr.60, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @mhi_pci_err_handler, !174, !"mhi_pci_err_handler", i1 false, i1 false}
!174 = !{!"../drivers/bus/mhi/pci_generic.c", i32 945, i32 40}
!175 = !{ptr @.str.61, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/bus/mhi/pci_generic.c", i32 907, i32 2}
!177 = !{ptr @.str.62, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @mhi_pci_error_detected._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @mhi_pci_error_detected._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.63, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/bus/mhi/pci_generic.c", i32 929, i32 3}
!182 = !{ptr @.str.64, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @mhi_pci_slot_reset._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @mhi_pci_slot_reset._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.65, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/bus/mhi/pci_generic.c", i32 851, i32 2}
!187 = !{ptr @.str.66, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.67, !186, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @mhi_pci_reset_prepare._entry, !186, !"_entry", i1 false, i1 false}
!190 = !{ptr @mhi_pci_reset_prepare._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.68, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/bus/mhi/pci_generic.c", i32 880, i32 3}
!193 = !{ptr @.str.69, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @mhi_pci_reset_done._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @mhi_pci_reset_done._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @mhi_pci_reset_done._entry.70, !197, !"_entry", i1 false, i1 false}
!197 = !{!"../drivers/bus/mhi/pci_generic.c", i32 886, i32 3}
!198 = !{ptr @mhi_pci_reset_done._entry_ptr.71, !197, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @mhi_pci_reset_done._entry.72, !200, !"_entry", i1 false, i1 false}
!200 = !{!"../drivers/bus/mhi/pci_generic.c", i32 892, i32 3}
!201 = !{ptr @mhi_pci_reset_done._entry_ptr.73, !200, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.74, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/bus/mhi/pci_generic.c", i32 940, i32 2}
!204 = !{ptr @.str.75, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @mhi_pci_io_resume._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @mhi_pci_io_resume._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @mhi_pci_pm_ops, !208, !"mhi_pci_pm_ops", i1 false, i1 false}
!208 = !{!"../drivers/bus/mhi/pci_generic.c", i32 1080, i32 32}
!209 = !{ptr @.str.76, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/bus/mhi/pci_generic.c", i32 973, i32 3}
!211 = !{ptr @.str.77, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @mhi_pci_runtime_suspend._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @mhi_pci_runtime_suspend._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.78, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/bus/mhi/pci_generic.c", i32 1009, i32 3}
!216 = !{ptr @.str.79, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @mhi_pci_runtime_resume._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @mhi_pci_runtime_resume._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{i32 1, !"wchar_size", i32 2}
!220 = !{i32 1, !"min_enum_size", i32 4}
!221 = !{i32 8, !"branch-target-enforcement", i32 0}
!222 = !{i32 8, !"sign-return-address", i32 0}
!223 = !{i32 8, !"sign-return-address-all", i32 0}
!224 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!225 = !{i32 7, !"uwtable", i32 1}
!226 = !{i32 7, !"frame-pointer", i32 2}
!227 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!228 = !{i64 2148797080, i64 2148797085, i64 2148797098, i64 2148797142, i64 2148797176, i64 2148797197}
!229 = !{i8 0, i8 2}
!230 = !{!"branch_weights", i32 1, i32 2000}
!231 = !{i64 2148229415, i64 2148229441, i64 2148229470, i64 2148229504, i64 2148229535, i64 2148229558}
!232 = !{i64 6502904}
!233 = !{i64 2155213885}
!234 = !{i64 2155214086}
!235 = !{i64 6502486}
!236 = !{i64 2148228834}
!237 = !{i64 713657, i64 713682, i64 713704, i64 713720, i64 713732, i64 713752, i64 713776, i64 713792, i64 713804}
!238 = !{i64 2148229022}
