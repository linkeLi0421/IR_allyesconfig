; ModuleID = '/llk/IR_all_yes/drivers/mfd/lpc_ich.c_pt.bc'
source_filename = "../drivers/mfd/lpc_ich.c"
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
%struct.lpc_ich_info = type { [32 x i8], i32, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.lpc_ich_priv = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.itco_wdt_platform_data = type { [32 x i8], i32, i8 }
%struct.intel_spi_boardinfo = type { i32, i8 }

@__initcall__kmod_lpc_ich__236_1235_lpc_ich_driver_init6 = internal global ptr @lpc_ich_driver_init, section ".initcall6.init", align 4
@lpc_ich_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @lpc_ich_ids, ptr @lpc_ich_probe, ptr @lpc_ich_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_lpc_ich_driver_exit = internal global ptr @lpc_ich_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [50 x i8] c"lpc_ich.author=Aaron Sierra <asierra@xes-inc.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [48 x i8] c"lpc_ich.description=LPC interface for Intel ICH\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [33 x i8] c"lpc_ich.file=drivers/mfd/lpc_ich\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [20 x i8] c"lpc_ich.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lpc_ich\00", [24 x i8] zeroinitializer }, align 32
@lpc_ich_ids = internal constant { [236 x %struct.pci_device_id], [1888 x i8] } { [236 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 3868, i32 -1, i32 -1, i32 0, i32 0, i32 61, i32 0 }, %struct.pci_device_id { i32 32902, i32 7233, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7234, i32 -1, i32 -1, i32 0, i32 0, i32 52, i32 0 }, %struct.pci_device_id { i32 32902, i32 7235, i32 -1, i32 -1, i32 0, i32 0, i32 53, i32 0 }, %struct.pci_device_id { i32 32902, i32 7236, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7237, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7238, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7239, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7240, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7241, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7242, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7243, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7244, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7245, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7246, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7247, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7248, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7249, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7250, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7251, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7252, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7253, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7254, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7255, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7256, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7257, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7258, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7259, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7260, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7261, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7262, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7263, i32 -1, i32 -1, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 32902, i32 7488, i32 -1, i32 -1, i32 0, i32 0, i32 54, i32 0 }, %struct.pci_device_id { i32 32902, i32 7489, i32 -1, i32 -1, i32 0, i32 0, i32 54, i32 0 }, %struct.pci_device_id { i32 32902, i32 7744, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7745, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7746, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7747, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7748, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7749, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7750, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7751, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7752, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7753, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7754, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7755, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7756, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7757, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7758, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7759, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7760, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7761, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7762, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7763, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7764, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7765, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7766, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7767, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7768, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7769, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7770, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7771, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7772, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7773, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7774, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7775, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 32902, i32 7992, i32 -1, i32 -1, i32 0, i32 0, i32 60, i32 0 }, %struct.pci_device_id { i32 32902, i32 7993, i32 -1, i32 -1, i32 0, i32 0, i32 60, i32 0 }, %struct.pci_device_id { i32 32902, i32 7994, i32 -1, i32 -1, i32 0, i32 0, i32 60, i32 0 }, %struct.pci_device_id { i32 32902, i32 7995, i32 -1, i32 -1, i32 0, i32 0, i32 60, i32 0 }, %struct.pci_device_id { i32 32902, i32 8860, i32 -1, i32 -1, i32 0, i32 0, i32 64, i32 0 }, %struct.pci_device_id { i32 32902, i32 8976, i32 -1, i32 -1, i32 0, i32 0, i32 55, i32 0 }, %struct.pci_device_id { i32 32902, i32 9104, i32 -1, i32 -1, i32 0, i32 0, i32 62, i32 0 }, %struct.pci_device_id { i32 32902, i32 9232, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9248, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 9280, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 9292, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 9296, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 32902, i32 9344, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 9356, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 9408, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 9420, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 9424, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 9633, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 9792, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 32902, i32 9793, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 32902, i32 9794, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 32902, i32 9840, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 9841, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 9842, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 9843, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 9844, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 9845, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 9846, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 9847, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 9848, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 9849, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 9850, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 9851, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 9852, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 9853, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 9854, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 9855, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 10160, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 10168, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 10169, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 10172, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 32902, i32 10173, i32 -1, i32 -1, i32 0, i32 0, i32 18, i32 0 }, %struct.pci_device_id { i32 32902, i32 10256, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 32902, i32 10257, i32 -1, i32 -1, i32 0, i32 0, i32 24, i32 0 }, %struct.pci_device_id { i32 32902, i32 10258, i32 -1, i32 -1, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 32902, i32 10260, i32 -1, i32 -1, i32 0, i32 0, i32 22, i32 0 }, %struct.pci_device_id { i32 32902, i32 10261, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 32902, i32 10514, i32 -1, i32 -1, i32 0, i32 0, i32 27, i32 0 }, %struct.pci_device_id { i32 32902, i32 10516, i32 -1, i32 -1, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 32902, i32 10518, i32 -1, i32 -1, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 32902, i32 10519, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 32902, i32 10520, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 32902, i32 10521, i32 -1, i32 -1, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 32902, i32 12695, i32 -1, i32 -1, i32 0, i32 0, i32 68, i32 0 }, %struct.pci_device_id { i32 32902, i32 11164, i32 -1, i32 -1, i32 0, i32 0, i32 69, i32 0 }, %struct.pci_device_id { i32 32902, i32 14868, i32 -1, i32 -1, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 32902, i32 14870, i32 -1, i32 -1, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 32902, i32 14872, i32 -1, i32 -1, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 32902, i32 14874, i32 -1, i32 -1, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 32902, i32 15104, i32 -1, i32 -1, i32 0, i32 0, i32 35, i32 0 }, %struct.pci_device_id { i32 32902, i32 15105, i32 -1, i32 -1, i32 0, i32 0, i32 36, i32 0 }, %struct.pci_device_id { i32 32902, i32 15106, i32 -1, i32 -1, i32 0, i32 0, i32 37, i32 0 }, %struct.pci_device_id { i32 32902, i32 15107, i32 -1, i32 -1, i32 0, i32 0, i32 38, i32 0 }, %struct.pci_device_id { i32 32902, i32 15110, i32 -1, i32 -1, i32 0, i32 0, i32 39, i32 0 }, %struct.pci_device_id { i32 32902, i32 15111, i32 -1, i32 -1, i32 0, i32 0, i32 40, i32 0 }, %struct.pci_device_id { i32 32902, i32 15112, i32 -1, i32 -1, i32 0, i32 0, i32 41, i32 0 }, %struct.pci_device_id { i32 32902, i32 15113, i32 -1, i32 -1, i32 0, i32 0, i32 42, i32 0 }, %struct.pci_device_id { i32 32902, i32 15114, i32 -1, i32 -1, i32 0, i32 0, i32 43, i32 0 }, %struct.pci_device_id { i32 32902, i32 15115, i32 -1, i32 -1, i32 0, i32 0, i32 44, i32 0 }, %struct.pci_device_id { i32 32902, i32 15117, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 32902, i32 15119, i32 -1, i32 -1, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 32902, i32 15122, i32 -1, i32 -1, i32 0, i32 0, i32 47, i32 0 }, %struct.pci_device_id { i32 32902, i32 15124, i32 -1, i32 -1, i32 0, i32 0, i32 48, i32 0 }, %struct.pci_device_id { i32 32902, i32 15126, i32 -1, i32 -1, i32 0, i32 0, i32 49, i32 0 }, %struct.pci_device_id { i32 32902, i32 20529, i32 -1, i32 -1, i32 0, i32 0, i32 50, i32 0 }, %struct.pci_device_id { i32 32902, i32 23272, i32 -1, i32 -1, i32 0, i32 0, i32 67, i32 0 }, %struct.pci_device_id { i32 32902, i32 35904, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35905, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35906, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35907, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35908, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35909, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35910, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35911, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35912, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35913, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35914, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35915, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35916, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35917, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35918, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35919, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35920, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35921, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35922, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35923, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35924, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35925, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35926, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35927, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35928, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35929, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35930, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35931, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35932, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35933, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35934, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 35935, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 36033, i32 -1, i32 -1, i32 0, i32 0, i32 66, i32 0 }, %struct.pci_device_id { i32 32902, i32 36034, i32 -1, i32 -1, i32 0, i32 0, i32 66, i32 0 }, %struct.pci_device_id { i32 32902, i32 36035, i32 -1, i32 -1, i32 0, i32 0, i32 66, i32 0 }, %struct.pci_device_id { i32 32902, i32 36036, i32 -1, i32 -1, i32 0, i32 0, i32 66, i32 0 }, %struct.pci_device_id { i32 32902, i32 36038, i32 -1, i32 -1, i32 0, i32 0, i32 66, i32 0 }, %struct.pci_device_id { i32 32902, i32 36160, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36161, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36162, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36163, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36164, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36165, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36166, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36167, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36168, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36169, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36170, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36171, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36172, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36173, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36174, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36175, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36176, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36177, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36178, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36179, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36180, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36181, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36182, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36183, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36184, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36185, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36186, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36187, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36188, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36189, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36190, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 36191, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 32902, i32 40000, i32 -1, i32 -1, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 32902, i32 40001, i32 -1, i32 -1, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 32902, i32 40002, i32 -1, i32 -1, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 32902, i32 40003, i32 -1, i32 -1, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 32902, i32 40004, i32 -1, i32 -1, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 32902, i32 40005, i32 -1, i32 -1, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 32902, i32 40006, i32 -1, i32 -1, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 32902, i32 40007, i32 -1, i32 -1, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 32902, i32 40129, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 40130, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 40131, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 40133, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 40134, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 40135, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 40137, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 41409, i32 -1, i32 -1, i32 0, i32 0, i32 65, i32 0 }, %struct.pci_device_id { i32 32902, i32 41410, i32 -1, i32 -1, i32 0, i32 0, i32 65, i32 0 }, %struct.pci_device_id { i32 32902, i32 41411, i32 -1, i32 -1, i32 0, i32 0, i32 65, i32 0 }, %struct.pci_device_id { i32 32902, i32 41412, i32 -1, i32 -1, i32 0, i32 0, i32 65, i32 0 }, %struct.pci_device_id { i32 32902, i32 41413, i32 -1, i32 -1, i32 0, i32 0, i32 65, i32 0 }, %struct.pci_device_id { i32 32902, i32 41414, i32 -1, i32 -1, i32 0, i32 0, i32 65, i32 0 }, %struct.pci_device_id { i32 32902, i32 41415, i32 -1, i32 -1, i32 0, i32 0, i32 65, i32 0 }, %struct.pci_device_id { i32 32902, i32 41538, i32 -1, i32 -1, i32 0, i32 0, i32 65, i32 0 }, %struct.pci_device_id { i32 32902, i32 41539, i32 -1, i32 -1, i32 0, i32 0, i32 65, i32 0 }, %struct.pci_device_id zeroinitializer], [1888 x i8] zeroinitializer }, align 32
@lpc_chipset_info = internal global { [70 x %struct.lpc_ich_info], [832 x i8] } { [70 x %struct.lpc_ich_info] [%struct.lpc_ich_info { [32 x i8] c"ICH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH2-M\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH3-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH3-M\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH4-M\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"C-ICH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH5 or ICH5R\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"6300ESB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH6 or ICH6R\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 2, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH6-M\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 2, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH6W or ICH6RW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 2, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"631xESB/632xESB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 2, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH7 or ICH7R\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 3, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH7DH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 3, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH7-M or ICH7-U\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 3, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH7-M DH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 3, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"NM10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 3, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH8 or ICH8R\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 3, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH8DH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 3, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH8DO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 3, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH8M\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 3, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH8M-E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 3, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH9R\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH9DH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH9DO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH9M\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH9M-E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 6, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH10R\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 6, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH10D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 5, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"ICH10DO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 5, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"PCH Desktop Full Featured\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"PCH Mobile Full Featured\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"P55\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"PM55\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"H55\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"QM57\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"H57\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"HM55\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Q57\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"HM57\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"PCH Mobile SFF Full Featured\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"QS57\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"3400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"3420\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"3450\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"EP80579\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Cougar Point\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Cougar Point Desktop\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Cougar Point Mobile\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Patsburg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"DH89xxCC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Panther Point\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Lynx Point\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 2, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Lynx Point_LP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 2, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Wellsburg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Avoton SoC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 7, i32 1, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Bay Trail SoC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 0, i32 1, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Coleto Creek\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Wildcat Point_LP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 2, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Braswell SoC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 0, i32 1, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Lewisburg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"9 Series\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Apollo Lake SoC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 0, i32 3, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Gemini Lake SoC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 3, i8 0 }, %struct.lpc_ich_info { [32 x i8] c"Cougar Mountain SoC\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 0, i32 0, i8 0 }], [832 x i8] zeroinitializer }, align 32
@lpc_ich_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No MFD cells added\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpc_ich_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mfd/lpc_ich.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpc_ich_probe._entry_ptr = internal global ptr @lpc_ich_probe._entry, section ".printk_index", align 4
@lpc_ich_init_wdt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 1025, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"I/O space for ACPI uninitialized\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lpc_ich_init_wdt\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@lpc_ich_init_wdt._entry_ptr = internal global ptr @lpc_ich_init_wdt._entry, section ".printk_index", align 4
@wdt_ich_res = internal global { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr null, i32 256, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr null, i32 256, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@lpc_ich_wdt_cell = internal global { %struct.mfd_cell, [40 x i8] } { %struct.mfd_cell { ptr @.str.12, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 3, ptr @wdt_ich_res, i8 1, i8 0, ptr null, i32 0 }, [40 x i8] zeroinitializer }, align 32
@lpc_ich_init_wdt._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 1059, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"RCBA is disabled by hardware/BIOS, device disabled\0A\00", [44 x i8] zeroinitializer }, align 32
@lpc_ich_init_wdt._entry_ptr.11 = internal global ptr @lpc_ich_init_wdt._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iTCO_wdt\00", [23 x i8] zeroinitializer }, align 32
@lpc_ich_init_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.13, ptr @.str.3, i32 945, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpc_ich_init_gpio\00", [46 x i8] zeroinitializer }, align 32
@lpc_ich_init_gpio._entry_ptr = internal global ptr @lpc_ich_init_gpio._entry, section ".printk_index", align 4
@lpc_ich_gpio_cell = internal global { %struct.mfd_cell, [40 x i8] } { %struct.mfd_cell { ptr @.str.20, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @gpio_ich_res, i8 1, i8 0, ptr null, i32 0 }, [40 x i8] zeroinitializer }, align 32
@gpio_ich_res = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr null, i32 256, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr null, i32 256, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@lpc_ich_init_gpio._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 971, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"I/O space for GPIO uninitialized\0A\00", [62 x i8] zeroinitializer }, align 32
@lpc_ich_init_gpio._entry_ptr.16 = internal global ptr @lpc_ich_init_gpio._entry.14, section ".printk_index", align 4
@lpc_ich_init_gpio._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.3, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014lpc_ich: Resource conflict(s) found affecting %s\0A\00", [44 x i8] zeroinitializer }, align 32
@lpc_ich_init_gpio._entry_ptr.19 = internal global ptr @lpc_ich_init_gpio._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_ich\00", [23 x i8] zeroinitializer }, align 32
@intel_spi_res = internal global { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@lpc_ich_spi_cell = internal global { %struct.mfd_cell, [40 x i8] } { %struct.mfd_cell { ptr @.str.24, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @intel_spi_res, i8 1, i8 0, ptr null, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intel-spi\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"lpc_ich_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1228, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1235, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"lpc_ich_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 569, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"lpc_chipset_info\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 226, i32 28 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1214, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1025, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"wdt_ich_res\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 98, i32 24 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"lpc_ich_wdt_cell\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 130, i32 24 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1058, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 131, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 945, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"lpc_ich_gpio_cell\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 137, i32 24 }
@___asan_gen_.92 = private unnamed_addr constant [13 x i8] c"gpio_ich_res\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 113, i32 24 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 971, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1004, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 138, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"intel_spi_res\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 124, i32 24 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"lpc_ich_spi_cell\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 145, i32 24 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [25 x i8] c"../drivers/mfd/lpc_ich.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 146, i32 10 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_lpc_ich_driver_exit, ptr @__initcall__kmod_lpc_ich__236_1235_lpc_ich_driver_init6, ptr @lpc_ich_driver_exit, ptr @lpc_ich_init_gpio._entry, ptr @lpc_ich_init_gpio._entry.14, ptr @lpc_ich_init_gpio._entry.17, ptr @lpc_ich_init_gpio._entry_ptr, ptr @lpc_ich_init_gpio._entry_ptr.16, ptr @lpc_ich_init_gpio._entry_ptr.19, ptr @lpc_ich_init_wdt._entry, ptr @lpc_ich_init_wdt._entry.9, ptr @lpc_ich_init_wdt._entry_ptr, ptr @lpc_ich_init_wdt._entry_ptr.11, ptr @lpc_ich_probe._entry, ptr @lpc_ich_probe._entry_ptr, ptr @lpc_ich_driver, ptr @.str, ptr @lpc_ich_ids, ptr @lpc_chipset_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @wdt_ich_res, ptr @lpc_ich_wdt_cell, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @lpc_ich_gpio_cell, ptr @gpio_ich_res, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @intel_spi_res, ptr @lpc_ich_spi_cell, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_ich_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_ich_ids to i32), i32 7552, i32 9440, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_chipset_info to i32), i32 3360, i32 4192, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_ich_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_ich_init_wdt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_ich_res to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_ich_wdt_cell to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_ich_init_wdt._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_ich_init_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_ich_gpio_cell to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_ich_res to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_ich_init_gpio._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_ich_init_gpio._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_spi_res to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_ich_spi_cell to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_ich_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @lpc_ich_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpc_ich_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @lpc_ich_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_ich_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %spi_base.i = alloca i32, align 4
  %rcba.i = alloca i32, align 4
  %bcr.i = alloca i32, align 4
  %reg_save.i.i67 = alloca i8, align 1
  %base_addr_cfg.i68 = alloca i32, align 4
  %reg_save.i.i = alloca i8, align 1
  %base_addr_cfg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call.i, align 4
  %actrl_pbase_save = getelementptr inbounds %struct.lpc_ich_priv, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %actrl_pbase_save to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %actrl_pbase_save, align 4
  %abase_save = getelementptr inbounds %struct.lpc_ich_priv, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %abase_save to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %abase_save, align 4
  %abase = getelementptr inbounds %struct.lpc_ich_priv, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %abase to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 64, ptr %abase, align 4
  %actrl_pbase = getelementptr inbounds %struct.lpc_ich_priv, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %actrl_pbase to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 68, ptr %actrl_pbase, align 4
  %gctrl_save = getelementptr inbounds %struct.lpc_ich_priv, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %gctrl_save to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %gctrl_save, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp = icmp slt i32 %1, 10
  %spec.select = select i1 %cmp, i32 88, i32 72
  %spec.select99 = select i1 %cmp, i32 92, i32 76
  %8 = getelementptr inbounds %struct.lpc_ich_priv, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %8, align 4
  %10 = getelementptr inbounds %struct.lpc_ich_priv, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select99, ptr %10, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %iTCO_version = getelementptr [70 x %struct.lpc_ich_info], ptr @lpc_chipset_info, i32 0, i32 %1, i32 1
  %13 = ptrtoint ptr %iTCO_version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iTCO_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %if.end.if.end14_crit_edge, label %if.then9

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then9:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base_addr_cfg.i) #6
  %15 = ptrtoint ptr %base_addr_cfg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %base_addr_cfg.i, align 4, !annotation !80
  %16 = ptrtoint ptr %abase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %abase, align 4
  %call2.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %17, ptr noundef nonnull %base_addr_cfg.i) #6
  %18 = ptrtoint ptr %base_addr_cfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_addr_cfg.i, align 4
  %and.i = and i32 %19, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.6) #9
  br label %lpc_ich_init_wdt.exit

if.end5.i:                                        ; preds = %if.then9
  %add.i = or i32 %and.i, 96
  store i32 %add.i, ptr @wdt_ich_res, align 4
  %add6.i = or i32 %and.i, 127
  store i32 %add6.i, ptr getelementptr inbounds ([3 x %struct.resource], ptr @wdt_ich_res, i32 0, i32 0, i32 1), align 4
  %add7.i = or i32 %and.i, 48
  store i32 %add7.i, ptr getelementptr inbounds ([3 x %struct.resource], ptr @wdt_ich_res, i32 0, i32 1), align 4
  %add9.i = or i32 %and.i, 51
  store i32 %add9.i, ptr getelementptr inbounds ([3 x %struct.resource], ptr @wdt_ich_res, i32 0, i32 1, i32 1), align 4
  call fastcc void @lpc_ich_enable_acpi_space(ptr noundef %dev) #6
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call.i, align 4
  %iTCO_version.i = getelementptr [70 x %struct.lpc_ich_info], ptr @lpc_chipset_info, i32 0, i32 %21, i32 1
  %22 = ptrtoint ptr %iTCO_version.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iTCO_version.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %if.end5.i.if.end45.i_crit_edge [
    i32 1, label %if.then11.i
    i32 2, label %if.then16.i
    i32 3, label %if.then36.i
  ]

if.end5.i.if.end45.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

if.then11.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = load i32, ptr getelementptr inbounds (%struct.mfd_cell, ptr @lpc_ich_wdt_cell, i32 0, i32 14), align 8
  %dec.i = add i32 %25, -1
  store i32 %dec.i, ptr getelementptr inbounds (%struct.mfd_cell, ptr @lpc_ich_wdt_cell, i32 0, i32 14), align 8
  br label %if.end45.i

if.then16.i:                                      ; preds = %if.end5.i
  %call17.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 240, ptr noundef nonnull %base_addr_cfg.i) #6
  %26 = ptrtoint ptr %base_addr_cfg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_addr_cfg.i, align 4
  %and19.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %do.end24.i, label %if.end26.i

do.end24.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %lpc_ich_init_wdt.exit

if.end26.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  %and18.i = and i32 %27, -16384
  %add27.i = or i32 %and18.i, 13328
  store i32 %add27.i, ptr getelementptr inbounds ([3 x %struct.resource], ptr @wdt_ich_res, i32 0, i32 2), align 4
  %add29.i = or i32 %and18.i, 13332
  store i32 %add29.i, ptr getelementptr inbounds ([3 x %struct.resource], ptr @wdt_ich_res, i32 0, i32 2, i32 1), align 4
  br label %if.end45.i

if.then36.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_save.i.i) #6
  %30 = ptrtoint ptr %reg_save.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %reg_save.i.i, align 1, !annotation !80
  %actrl_pbase.i.i = getelementptr inbounds %struct.lpc_ich_priv, ptr %29, i32 0, i32 2
  %31 = ptrtoint ptr %actrl_pbase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %actrl_pbase.i.i, align 4
  %call1.i.i = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef %32, ptr noundef nonnull %reg_save.i.i) #6
  %33 = ptrtoint ptr %actrl_pbase.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %actrl_pbase.i.i, align 4
  %35 = ptrtoint ptr %reg_save.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %reg_save.i.i, align 1
  %37 = or i8 %36, 2
  %call4.i.i = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %34, i8 noundef zeroext %37) #6
  %38 = ptrtoint ptr %reg_save.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %reg_save.i.i, align 1
  %conv5.i.i = zext i8 %39 to i32
  %actrl_pbase_save.i.i = getelementptr inbounds %struct.lpc_ich_priv, ptr %29, i32 0, i32 6
  %40 = ptrtoint ptr %actrl_pbase_save.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv5.i.i, ptr %actrl_pbase_save.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_save.i.i) #6
  %call37.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 68, ptr noundef nonnull %base_addr_cfg.i) #6
  %41 = ptrtoint ptr %base_addr_cfg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base_addr_cfg.i, align 4
  %and38.i = and i32 %42, -512
  %add39.i = or i32 %and38.i, 8
  store i32 %add39.i, ptr getelementptr inbounds ([3 x %struct.resource], ptr @wdt_ich_res, i32 0, i32 2), align 4
  %add41.i = or i32 %and38.i, 12
  store i32 %add41.i, ptr getelementptr inbounds ([3 x %struct.resource], ptr @wdt_ich_res, i32 0, i32 2, i32 1), align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then36.i, %if.end26.i, %if.then11.i, %if.end5.i.if.end45.i_crit_edge
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i, align 4
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end45.i.lpc_ich_init_wdt.exit_crit_edge, label %if.end49.i

if.end45.i.lpc_ich_init_wdt.exit_crit_edge:       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lpc_ich_init_wdt.exit

if.end49.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %arrayidx.i.i = getelementptr [70 x %struct.lpc_ich_info], ptr @lpc_chipset_info, i32 0, i32 %46
  %iTCO_version.i.i = getelementptr [70 x %struct.lpc_ich_info], ptr @lpc_chipset_info, i32 0, i32 %46, i32 1
  %47 = ptrtoint ptr %iTCO_version.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iTCO_version.i.i, align 4
  %version.i.i = getelementptr inbounds %struct.itco_wdt_platform_data, ptr %call.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %version.i.i, align 4
  %call5.i.i = call i32 @strlcpy(ptr noundef nonnull %call.i.i.i, ptr noundef %arrayidx.i.i, i32 noundef 32) #6
  store ptr %call.i.i.i, ptr getelementptr inbounds (%struct.mfd_cell, ptr @lpc_ich_wdt_cell, i32 0, i32 7), align 4
  store i32 40, ptr getelementptr inbounds (%struct.mfd_cell, ptr @lpc_ich_wdt_cell, i32 0, i32 8), align 8
  %call51.i = call i32 @mfd_add_devices(ptr noundef %dev1, i32 noundef -2, ptr noundef nonnull @lpc_ich_wdt_cell, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %phi.cmp = icmp eq i32 %call51.i, 0
  br label %lpc_ich_init_wdt.exit

lpc_ich_init_wdt.exit:                            ; preds = %if.end49.i, %if.end45.i.lpc_ich_init_wdt.exit_crit_edge, %do.end24.i, %do.end.i
  %ret.0.i = phi i1 [ %phi.cmp, %if.end49.i ], [ false, %do.end24.i ], [ false, %do.end.i ], [ false, %if.end45.i.lpc_ich_init_wdt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base_addr_cfg.i) #6
  br label %if.end14

if.end14:                                         ; preds = %lpc_ich_init_wdt.exit, %if.end.if.end14_crit_edge
  %cell_added.0.off0 = phi i1 [ false, %if.end.if.end14_crit_edge ], [ %ret.0.i, %lpc_ich_init_wdt.exit ]
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call.i, align 4
  %gpio_version = getelementptr [70 x %struct.lpc_ich_info], ptr @lpc_chipset_info, i32 0, i32 %51, i32 2
  %52 = ptrtoint ptr %gpio_version to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gpio_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool17.not = icmp eq i32 %53, 0
  br i1 %tobool17.not, label %if.end14.if.end23_crit_edge, label %if.then18

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then18:                                        ; preds = %if.end14
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base_addr_cfg.i68) #6
  %56 = ptrtoint ptr %base_addr_cfg.i68 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %base_addr_cfg.i68, align 4, !annotation !80
  %abase.i70 = getelementptr inbounds %struct.lpc_ich_priv, ptr %55, i32 0, i32 1
  %57 = ptrtoint ptr %abase.i70 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %abase.i70, align 4
  %call1.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %58, ptr noundef nonnull %base_addr_cfg.i68) #6
  %59 = ptrtoint ptr %base_addr_cfg.i68 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base_addr_cfg.i68, align 4
  %and.i71 = and i32 %60, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71)
  %tobool.not.i72 = icmp eq i32 %and.i71, 0
  br i1 %tobool.not.i72, label %do.end.i74, label %if.end.i

do.end.i74:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.6) #9
  %61 = load i32, ptr getelementptr inbounds (%struct.mfd_cell, ptr @lpc_ich_gpio_cell, i32 0, i32 14), align 8
  %dec.i73 = add i32 %61, -1
  store i32 %dec.i73, ptr getelementptr inbounds (%struct.mfd_cell, ptr @lpc_ich_gpio_cell, i32 0, i32 14), align 8
  br label %gpe0_done.i

if.end.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %add.i75 = or i32 %and.i71, 40
  store i32 %add.i75, ptr getelementptr inbounds ([2 x %struct.resource], ptr @gpio_ich_res, i32 0, i32 1), align 4
  %add3.i = or i32 %and.i71, 47
  store i32 %add3.i, ptr getelementptr inbounds ([2 x %struct.resource], ptr @gpio_ich_res, i32 0, i32 1, i32 1), align 4
  call fastcc void @lpc_ich_enable_acpi_space(ptr noundef %dev) #6
  br label %gpe0_done.i

gpe0_done.i:                                      ; preds = %if.end.i, %do.end.i74
  %gbase.i = getelementptr inbounds %struct.lpc_ich_priv, ptr %55, i32 0, i32 3
  %62 = ptrtoint ptr %gbase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %gbase.i, align 4
  %call9.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %63, ptr noundef nonnull %base_addr_cfg.i68) #6
  %64 = ptrtoint ptr %base_addr_cfg.i68 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %base_addr_cfg.i68, align 4
  %and10.i = and i32 %65, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.end15.i, label %if.end17.i

do.end15.i:                                       ; preds = %gpe0_done.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  br label %lpc_ich_init_gpio.exit

if.end17.i:                                       ; preds = %gpe0_done.i
  call void @__sanitizer_cov_trace_pc() #8
  store i32 %and10.i, ptr @gpio_ich_res, align 4
  %66 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %55, align 4
  %gpio_version.i = getelementptr [70 x %struct.lpc_ich_info], ptr @lpc_chipset_info, i32 0, i32 %67, i32 2
  %68 = ptrtoint ptr %gpio_version.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %gpio_version.i, align 4
  %70 = add i32 %69, -1
  %switch.and.i = and i32 %70, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %71 = select i1 %switch.selectcmp.i, i32 127, i32 63
  %sub24.i = or i32 %71, %and10.i
  store i32 %sub24.i, ptr getelementptr inbounds ([2 x %struct.resource], ptr @gpio_ich_res, i32 0, i32 0, i32 1), align 4
  %sub.i.i.i = sub nsw i32 1, %and10.i
  %add.i.i.i = add nsw i32 %sub.i.i.i, %sub24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %add.i.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i.i, 79
  %conv.i = select i1 %cmp.i.i, i8 7, i8 3
  %72 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %55, align 4
  %use_gpio.i = getelementptr [70 x %struct.lpc_ich_info], ptr @lpc_chipset_info, i32 0, i32 %73, i32 4
  %74 = ptrtoint ptr %use_gpio.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv.i, ptr %use_gpio.i, align 4
  %75 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_save.i.i67) #6
  %77 = ptrtoint ptr %reg_save.i.i67 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -1, ptr %reg_save.i.i67, align 1, !annotation !80
  %gctrl.i.i = getelementptr inbounds %struct.lpc_ich_priv, ptr %76, i32 0, i32 4
  %78 = ptrtoint ptr %gctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %gctrl.i.i, align 4
  %call1.i.i76 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef %79, ptr noundef nonnull %reg_save.i.i67) #6
  %80 = ptrtoint ptr %gctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %gctrl.i.i, align 4
  %82 = ptrtoint ptr %reg_save.i.i67 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %reg_save.i.i67, align 1
  %84 = or i8 %83, 16
  %call4.i.i77 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %81, i8 noundef zeroext %84) #6
  %85 = ptrtoint ptr %reg_save.i.i67 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %reg_save.i.i67, align 1
  %conv5.i.i78 = zext i8 %86 to i32
  %gctrl_save.i.i = getelementptr inbounds %struct.lpc_ich_priv, ptr %76, i32 0, i32 7
  %87 = ptrtoint ptr %gctrl_save.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv5.i.i78, ptr %gctrl_save.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_save.i.i67) #6
  %88 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %driver_data.i.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %arrayidx.i.i79 = getelementptr [70 x %struct.lpc_ich_info], ptr @lpc_chipset_info, i32 0, i32 %91
  store ptr %arrayidx.i.i79, ptr getelementptr inbounds (%struct.mfd_cell, ptr @lpc_ich_gpio_cell, i32 0, i32 7), align 4
  store i32 48, ptr getelementptr inbounds (%struct.mfd_cell, ptr @lpc_ich_gpio_cell, i32 0, i32 8), align 8
  %call32.i = call i32 @mfd_add_devices(ptr noundef %dev1, i32 noundef -2, ptr noundef nonnull @lpc_ich_gpio_cell, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %phi.cmp95 = icmp eq i32 %call32.i, 0
  %phi.sel = select i1 %phi.cmp95, i1 true, i1 %cell_added.0.off0
  br label %lpc_ich_init_gpio.exit

lpc_ich_init_gpio.exit:                           ; preds = %if.end17.i, %do.end15.i
  %ret.0.i80 = phi i1 [ %phi.sel, %if.end17.i ], [ %cell_added.0.off0, %do.end15.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base_addr_cfg.i68) #6
  br label %if.end23

if.end23:                                         ; preds = %lpc_ich_init_gpio.exit, %if.end14.if.end23_crit_edge
  %cell_added.1.off0 = phi i1 [ %cell_added.0.off0, %if.end14.if.end23_crit_edge ], [ %ret.0.i80, %lpc_ich_init_gpio.exit ]
  %92 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %call.i, align 4
  %spi_type = getelementptr [70 x %struct.lpc_ich_info], ptr @lpc_chipset_info, i32 0, i32 %93, i32 3
  %94 = ptrtoint ptr %spi_type to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %spi_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool26.not = icmp eq i32 %95, 0
  br i1 %tobool26.not, label %if.end32, label %if.then27

if.then27:                                        ; preds = %if.end23
  %96 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spi_base.i) #6
  %98 = ptrtoint ptr %spi_base.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %spi_base.i, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rcba.i) #6
  %99 = ptrtoint ptr %rcba.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %rcba.i, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcr.i) #6
  %100 = ptrtoint ptr %bcr.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %bcr.i, align 4, !annotation !80
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #6
  %tobool.not.i82 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i82, label %if.then27.lpc_ich_init_spi.exit_crit_edge, label %if.end.i83

if.then27.lpc_ich_init_spi.exit_crit_edge:        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %lpc_ich_init_spi.exit

if.end.i83:                                       ; preds = %if.then27
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %97, align 4
  %spi_type.i = getelementptr [70 x %struct.lpc_ich_info], ptr @lpc_chipset_info, i32 0, i32 %102, i32 3
  %103 = ptrtoint ptr %spi_type.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %spi_type.i, align 4
  %105 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %call.i.i, align 4
  %106 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %104, label %if.end.i83.lpc_ich_init_spi.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb10.i
    i32 3, label %sw.bb27.i
  ]

if.end.i83.lpc_ich_init_spi.exit_crit_edge:       ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %lpc_ich_init_spi.exit

sw.bb.i:                                          ; preds = %if.end.i83
  %call4.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 84, ptr noundef nonnull %spi_base.i) #6
  %107 = ptrtoint ptr %spi_base.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %spi_base.i, align 4
  %and.i84 = and i32 %108, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool5.not.i = icmp eq i32 %and.i84, 0
  br i1 %tobool5.not.i, label %sw.bb.i.sw.epilogthread-pre-split.i_crit_edge, label %if.then6.i

sw.bb.i.sw.epilogthread-pre-split.i_crit_edge:    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilogthread-pre-split.i

if.then6.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %and7.i = and i32 %108, -512
  store i32 %and7.i, ptr @intel_spi_res, align 4
  %sub.i = or i32 %108, 511
  store i32 %sub.i, ptr getelementptr inbounds ([1 x %struct.resource], ptr @intel_spi_res, i32 0, i32 0, i32 1), align 4
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.end.i83
  %call11.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 240, ptr noundef nonnull %rcba.i) #6
  %109 = ptrtoint ptr %rcba.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rcba.i, align 4
  %and12.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %sw.bb10.i.sw.epilogthread-pre-split.i_crit_edge, label %if.then14.i

sw.bb10.i.sw.epilogthread-pre-split.i_crit_edge:  ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilogthread-pre-split.i

if.then14.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #8
  %and15.i = and i32 %110, -512
  %111 = ptrtoint ptr %spi_base.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %and15.i, ptr %spi_base.i, align 4
  %add16.i = add i32 %and15.i, 14336
  store i32 %add16.i, ptr @intel_spi_res, align 4
  %sub20.i = add i32 %and15.i, 14847
  store i32 %sub20.i, ptr getelementptr inbounds ([1 x %struct.resource], ptr @intel_spi_res, i32 0, i32 0, i32 1), align 4
  %call22.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 220, ptr noundef nonnull %bcr.i) #6
  %112 = ptrtoint ptr %bcr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %bcr.i, align 4
  %writeable.i = getelementptr inbounds %struct.intel_spi_boardinfo, ptr %call.i.i, i32 0, i32 1
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = ptrtoint ptr %writeable.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %writeable.i, align 4
  br label %sw.epilogthread-pre-split.i

sw.bb27.i:                                        ; preds = %if.end.i83
  %bus28.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %117 = ptrtoint ptr %bus28.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bus28.i, align 8
  %call29.i = call i32 @pci_bus_write_config_byte(ptr noundef %118, i32 noundef 104, i32 noundef 225, i8 noundef zeroext 0) #6
  %call30.i = call i32 @pci_bus_read_config_dword(ptr noundef %118, i32 noundef 106, i32 noundef 16, ptr noundef nonnull %spi_base.i) #6
  %119 = ptrtoint ptr %spi_base.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %spi_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %120)
  %cmp.not.i = icmp eq i32 %120, -1
  br i1 %cmp.not.i, label %sw.bb27.i.if.end45.i85_crit_edge, label %if.then31.i

sw.bb27.i.if.end45.i85_crit_edge:                 ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i85

if.then31.i:                                      ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #8
  %and32.i = and i32 %120, -16
  store i32 %and32.i, ptr @intel_spi_res, align 4
  %sub36.i = add i32 %and32.i, 4095
  store i32 %sub36.i, ptr getelementptr inbounds ([1 x %struct.resource], ptr @intel_spi_res, i32 0, i32 0, i32 1), align 4
  %call38.i = call i32 @pci_bus_read_config_dword(ptr noundef %118, i32 noundef 106, i32 noundef 220, ptr noundef nonnull %bcr.i) #6
  %121 = ptrtoint ptr %bcr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %bcr.i, align 4
  %writeable43.i = getelementptr inbounds %struct.intel_spi_boardinfo, ptr %call.i.i, i32 0, i32 1
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = ptrtoint ptr %writeable43.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %writeable43.i, align 4
  br label %if.end45.i85

if.end45.i85:                                     ; preds = %if.then31.i, %sw.bb27.i.if.end45.i85_crit_edge
  %call46.i = call i32 @pci_bus_write_config_byte(ptr noundef %118, i32 noundef 104, i32 noundef 225, i8 noundef zeroext 1) #6
  br label %sw.epilogthread-pre-split.i

sw.epilogthread-pre-split.i:                      ; preds = %if.end45.i85, %if.then14.i, %sw.bb10.i.sw.epilogthread-pre-split.i_crit_edge, %sw.bb.i.sw.epilogthread-pre-split.i_crit_edge
  %.pr.i = load i32, ptr @intel_spi_res, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilogthread-pre-split.i, %if.then6.i
  %126 = phi i32 [ %.pr.i, %sw.epilogthread-pre-split.i ], [ %and7.i, %if.then6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool48.not.i = icmp eq i32 %126, 0
  br i1 %tobool48.not.i, label %sw.epilog.i.lpc_ich_init_spi.exit_crit_edge, label %if.end50.i

sw.epilog.i.lpc_ich_init_spi.exit_crit_edge:      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lpc_ich_init_spi.exit

if.end50.i:                                       ; preds = %sw.epilog.i
  store ptr %call.i.i, ptr getelementptr inbounds (%struct.mfd_cell, ptr @lpc_ich_spi_cell, i32 0, i32 7), align 4
  store i32 8, ptr getelementptr inbounds (%struct.mfd_cell, ptr @lpc_ich_spi_cell, i32 0, i32 8), align 8
  %call52.i = call i32 @mfd_add_devices(ptr noundef %dev1, i32 noundef -1, ptr noundef nonnull @lpc_ich_spi_cell, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %phi.cmp96 = icmp eq i32 %call52.i, 0
  %phi.sel97 = select i1 %phi.cmp96, i1 true, i1 %cell_added.1.off0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcr.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rcba.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_base.i) #6
  br i1 %phi.sel97, label %if.end50.i.cleanup_crit_edge, label %if.end50.i.do.end_crit_edge

if.end50.i.do.end_crit_edge:                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end50.i.cleanup_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lpc_ich_init_spi.exit:                            ; preds = %sw.epilog.i.lpc_ich_init_spi.exit_crit_edge, %if.end.i83.lpc_ich_init_spi.exit_crit_edge, %if.then27.lpc_ich_init_spi.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcr.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rcba.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_base.i) #6
  br i1 %cell_added.1.off0, label %lpc_ich_init_spi.exit.cleanup_crit_edge, label %lpc_ich_init_spi.exit.do.end_crit_edge

lpc_ich_init_spi.exit.do.end_crit_edge:           ; preds = %lpc_ich_init_spi.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lpc_ich_init_spi.exit.cleanup_crit_edge:          ; preds = %lpc_ich_init_spi.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  br i1 %cell_added.1.off0, label %if.end32.cleanup_crit_edge, label %if.end32.do.end_crit_edge

if.end32.do.end_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end32.do.end_crit_edge, %lpc_ich_init_spi.exit.do.end_crit_edge, %if.end50.i.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %127 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %driver_data.i.i, align 4
  %abase_save.i = getelementptr inbounds %struct.lpc_ich_priv, ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %abase_save.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %abase_save.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %130)
  %cmp.i = icmp sgt i32 %130, -1
  br i1 %cmp.i, label %if.then.i, label %do.end.if.end.i90_crit_edge

do.end.if.end.i90_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i90

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %abase.i87 = getelementptr inbounds %struct.lpc_ich_priv, ptr %128, i32 0, i32 1
  %131 = ptrtoint ptr %abase.i87 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %abase.i87, align 4
  %conv.i88 = trunc i32 %130 to i8
  %call2.i89 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %132, i8 noundef zeroext %conv.i88) #6
  %133 = ptrtoint ptr %abase_save.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %abase_save.i, align 4
  br label %if.end.i90

if.end.i90:                                       ; preds = %if.then.i, %do.end.if.end.i90_crit_edge
  %actrl_pbase_save.i = getelementptr inbounds %struct.lpc_ich_priv, ptr %128, i32 0, i32 6
  %134 = ptrtoint ptr %actrl_pbase_save.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %actrl_pbase_save.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %135)
  %cmp4.i = icmp sgt i32 %135, -1
  br i1 %cmp4.i, label %if.then6.i92, label %if.end.i90.if.end11.i_crit_edge

if.end.i90.if.end11.i_crit_edge:                  ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then6.i92:                                     ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #8
  %actrl_pbase.i = getelementptr inbounds %struct.lpc_ich_priv, ptr %128, i32 0, i32 2
  %136 = ptrtoint ptr %actrl_pbase.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %actrl_pbase.i, align 4
  %conv8.i = trunc i32 %135 to i8
  %call9.i91 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %137, i8 noundef zeroext %conv8.i) #6
  %138 = ptrtoint ptr %actrl_pbase_save.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -1, ptr %actrl_pbase_save.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i92, %if.end.i90.if.end11.i_crit_edge
  %gctrl_save.i = getelementptr inbounds %struct.lpc_ich_priv, ptr %128, i32 0, i32 7
  %139 = ptrtoint ptr %gctrl_save.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %gctrl_save.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %140)
  %cmp12.i = icmp sgt i32 %140, -1
  br i1 %cmp12.i, label %if.then14.i94, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14.i94:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %gctrl.i = getelementptr inbounds %struct.lpc_ich_priv, ptr %128, i32 0, i32 4
  %141 = ptrtoint ptr %gctrl.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %gctrl.i, align 4
  %conv16.i = trunc i32 %140 to i8
  %call17.i93 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %142, i8 noundef zeroext %conv16.i) #6
  %143 = ptrtoint ptr %gctrl_save.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -1, ptr %gctrl_save.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then14.i94, %if.end11.i.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %lpc_ich_init_spi.exit.cleanup_crit_edge, %if.end50.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %lpc_ich_init_spi.exit.cleanup_crit_edge ], [ -19, %if.end11.i.cleanup_crit_edge ], [ -19, %if.then14.i94 ], [ 0, %if.end50.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc_ich_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @mfd_remove_devices(ptr noundef %dev1) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %abase_save.i = getelementptr inbounds %struct.lpc_ich_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %abase_save.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %abase_save.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %abase.i = getelementptr inbounds %struct.lpc_ich_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %abase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %abase.i, align 4
  %conv.i = trunc i32 %3 to i8
  %call2.i = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %5, i8 noundef zeroext %conv.i) #6
  %6 = ptrtoint ptr %abase_save.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %abase_save.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %actrl_pbase_save.i = getelementptr inbounds %struct.lpc_ich_priv, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %actrl_pbase_save.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actrl_pbase_save.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp4.i = icmp sgt i32 %8, -1
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %actrl_pbase.i = getelementptr inbounds %struct.lpc_ich_priv, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %actrl_pbase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actrl_pbase.i, align 4
  %conv8.i = trunc i32 %8 to i8
  %call9.i = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %10, i8 noundef zeroext %conv8.i) #6
  %11 = ptrtoint ptr %actrl_pbase_save.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %actrl_pbase_save.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i, %if.end.i.if.end11.i_crit_edge
  %gctrl_save.i = getelementptr inbounds %struct.lpc_ich_priv, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %gctrl_save.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gctrl_save.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp12.i = icmp sgt i32 %13, -1
  br i1 %cmp12.i, label %if.then14.i, label %if.end11.i.lpc_ich_restore_config_space.exit_crit_edge

if.end11.i.lpc_ich_restore_config_space.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lpc_ich_restore_config_space.exit

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %gctrl.i = getelementptr inbounds %struct.lpc_ich_priv, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %gctrl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gctrl.i, align 4
  %conv16.i = trunc i32 %13 to i8
  %call17.i = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %15, i8 noundef zeroext %conv16.i) #6
  %16 = ptrtoint ptr %gctrl_save.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %gctrl_save.i, align 4
  br label %lpc_ich_restore_config_space.exit

lpc_ich_restore_config_space.exit:                ; preds = %if.then14.i, %if.end11.i.lpc_ich_restore_config_space.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpc_ich_enable_acpi_space(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %reg_save = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_save) #6
  %2 = ptrtoint ptr %reg_save to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reg_save, align 1, !annotation !80
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  %iTCO_version = getelementptr [70 x %struct.lpc_ich_info], ptr @lpc_chipset_info, i32 0, i32 %4, i32 1
  %5 = ptrtoint ptr %iTCO_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iTCO_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cond = icmp eq i32 %6, 3
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %abase = getelementptr inbounds %struct.lpc_ich_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %abase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %abase, align 4
  %call1 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef %8, ptr noundef nonnull %reg_save) #6
  %9 = ptrtoint ptr %abase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %abase, align 4
  %11 = ptrtoint ptr %reg_save to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reg_save, align 1
  %13 = or i8 %12, 2
  %call4 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %10, i8 noundef zeroext %13) #6
  %14 = ptrtoint ptr %reg_save to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_save, align 1
  %conv5 = zext i8 %15 to i32
  %abase_save = getelementptr inbounds %struct.lpc_ich_priv, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %abase_save to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv5, ptr %abase_save, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %actrl_pbase = getelementptr inbounds %struct.lpc_ich_priv, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %actrl_pbase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actrl_pbase, align 4
  %call6 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef %18, ptr noundef nonnull %reg_save) #6
  %19 = ptrtoint ptr %actrl_pbase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actrl_pbase, align 4
  %21 = ptrtoint ptr %reg_save to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg_save, align 1
  %23 = or i8 %22, -128
  %call11 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %20, i8 noundef zeroext %23) #6
  %24 = ptrtoint ptr %reg_save to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg_save, align 1
  %conv12 = zext i8 %25 to i32
  %actrl_pbase_save = getelementptr inbounds %struct.lpc_ich_priv, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %actrl_pbase_save to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv12, ptr %actrl_pbase_save, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_save) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_write_config_byte(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_read_config_dword(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_lpc_ich__236_1235_lpc_ich_driver_init6, !1, !"__initcall__kmod_lpc_ich__236_1235_lpc_ich_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/lpc_ich.c", i32 1235, i32 1}
!2 = !{ptr @__exitcall_lpc_ich_driver_exit, !1, !"__exitcall_lpc_ich_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/mfd/lpc_ich.c", i32 1237, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/mfd/lpc_ich.c", i32 1238, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/mfd/lpc_ich.c", i32 1239, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lpc_ich_driver, !12, !"lpc_ich_driver", i1 false, i1 false}
!12 = !{!"../drivers/mfd/lpc_ich.c", i32 1228, i32 26}
!13 = !{ptr @lpc_ich_ids, !14, !"lpc_ich_ids", i1 false, i1 false}
!14 = !{!"../drivers/mfd/lpc_ich.c", i32 569, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mfd/lpc_ich.c", i32 1214, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @lpc_ich_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @lpc_ich_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @lpc_chipset_info, !24, !"lpc_chipset_info", i1 false, i1 false}
!24 = !{!"../drivers/mfd/lpc_ich.c", i32 226, i32 28}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/lpc_ich.c", i32 1025, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @lpc_ich_init_wdt._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @lpc_ich_init_wdt._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/lpc_ich.c", i32 1058, i32 4}
!33 = !{ptr @lpc_ich_init_wdt._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @lpc_ich_init_wdt._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @wdt_ich_res, !36, !"wdt_ich_res", i1 false, i1 false}
!36 = !{!"../drivers/mfd/lpc_ich.c", i32 98, i32 24}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/lpc_ich.c", i32 131, i32 10}
!39 = !{ptr @lpc_ich_wdt_cell, !40, !"lpc_ich_wdt_cell", i1 false, i1 false}
!40 = !{!"../drivers/mfd/lpc_ich.c", i32 130, i32 24}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mfd/lpc_ich.c", i32 945, i32 3}
!43 = !{ptr @lpc_ich_init_gpio._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @lpc_ich_init_gpio._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/lpc_ich.c", i32 971, i32 3}
!47 = !{ptr @lpc_ich_init_gpio._entry.14, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @lpc_ich_init_gpio._entry_ptr.16, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mfd/lpc_ich.c", i32 1004, i32 3}
!51 = !{ptr @lpc_ich_init_gpio._entry.17, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @lpc_ich_init_gpio._entry_ptr.19, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mfd/lpc_ich.c", i32 138, i32 10}
!55 = !{ptr @lpc_ich_gpio_cell, !56, !"lpc_ich_gpio_cell", i1 false, i1 false}
!56 = !{!"../drivers/mfd/lpc_ich.c", i32 137, i32 24}
!57 = !{ptr @gpio_ich_res, !58, !"gpio_ich_res", i1 false, i1 false}
!58 = !{!"../drivers/mfd/lpc_ich.c", i32 113, i32 24}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/lpc_ich.c", i32 919, i32 50}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mfd/lpc_ich.c", i32 922, i32 50}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mfd/lpc_ich.c", i32 925, i32 51}
!65 = !{ptr @intel_spi_res, !66, !"intel_spi_res", i1 false, i1 false}
!66 = !{!"../drivers/mfd/lpc_ich.c", i32 124, i32 24}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mfd/lpc_ich.c", i32 146, i32 10}
!69 = !{ptr @lpc_ich_spi_cell, !70, !"lpc_ich_spi_cell", i1 false, i1 false}
!70 = !{!"../drivers/mfd/lpc_ich.c", i32 145, i32 24}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
