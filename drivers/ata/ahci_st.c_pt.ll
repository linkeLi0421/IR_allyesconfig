; ModuleID = '/llk/IR_all_yes/drivers/ata/ahci_st.c_pt.bc'
source_filename = "../drivers/ata/ahci_st.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.st_ahci_drv_data = type { ptr, ptr, ptr, ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__initcall__kmod_ahci_st__321_248_st_ahci_driver_init6 = internal global ptr @st_ahci_driver_init, section ".initcall6.init", align 4
@st_ahci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @st_ahci_probe, ptr @ata_platform_remove_one, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_ahci_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_ahci_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_st_ahci_driver_exit = internal global ptr @st_ahci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author322 = internal constant [58 x i8] c"ahci_st.author=Alexandre Torgue <alexandre.torgue@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author323 = internal constant [62 x i8] c"ahci_st.author=Francesco Virlinzi <francesco.virlinzi@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description324 = internal constant [56 x i8] c"ahci_st.description=STMicroelectronics SATA AHCI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file325 = internal constant [33 x i8] c"ahci_st.file=drivers/ata/ahci_st\00", section ".modinfo", align 1
@__UNIQUE_ID_license326 = internal constant [23 x i8] c"ahci_st.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"st_ahci\00", [24 x i8] zeroinitializer }, align 32
@st_ahci_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@st_ahci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @st_ahci_suspend, ptr @st_ahci_resume, ptr @st_ahci_suspend, ptr @st_ahci_resume, ptr @st_ahci_suspend, ptr @st_ahci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ports-implemented\00", [46 x i8] zeroinitializer }, align 32
@st_ahci_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @st_ahci_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ahci_platform_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwr-dwn\00", [24 x i8] zeroinitializer }, align 32
@st_ahci_probe_resets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 110, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"power reset control not defined\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st_ahci_probe_resets\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/ata/ahci_st.c\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_ahci_probe_resets._entry_ptr = internal global ptr @st_ahci_probe_resets._entry, section ".printk_index", align 4
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sw-rst\00", [25 x i8] zeroinitializer }, align 32
@st_ahci_probe_resets._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 116, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"soft reset control not defined\0A\00", [32 x i8] zeroinitializer }, align 32
@st_ahci_probe_resets._entry_ptr.11 = internal global ptr @st_ahci_probe_resets._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwr-rst\00", [24 x i8] zeroinitializer }, align 32
@st_ahci_probe_resets.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.4, ptr @.str.5, ptr @.str.14, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ahci_st\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"power soft reset control not defined\0A\00", [58 x i8] zeroinitializer }, align 32
@st_ahci_deassert_resets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 63, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to bring out of pwrdwn\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st_ahci_deassert_resets\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@st_ahci_deassert_resets._entry_ptr = internal global ptr @st_ahci_deassert_resets._entry, section ".printk_index", align 4
@st_ahci_deassert_resets._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.5, i32 71, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to bring out of sw-rst\0A\00", [33 x i8] zeroinitializer }, align 32
@st_ahci_deassert_resets._entry_ptr.20 = internal global ptr @st_ahci_deassert_resets._entry.18, section ".printk_index", align 4
@st_ahci_deassert_resets._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.5, i32 79, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to bring out of pwr-rst\0A\00", [32 x i8] zeroinitializer }, align 32
@st_ahci_deassert_resets._entry_ptr.23 = internal global ptr @st_ahci_deassert_resets._entry.21, section ".printk_index", align 4
@st_ahci_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_ahci_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_platform_ops }, [44 x i8] zeroinitializer }, align 32
@ahci_platform_ops = external dso_local global %struct.ata_port_operations, align 4
@st_ahci_host_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 97, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unable to pwrdwn\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st_ahci_host_stop\00", [46 x i8] zeroinitializer }, align 32
@st_ahci_host_stop._entry_ptr = internal global ptr @st_ahci_host_stop._entry, section ".printk_index", align 4
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@st_ahci_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 199, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unable to pwrdwn\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st_ahci_suspend\00", [16 x i8] zeroinitializer }, align 32
@st_ahci_suspend._entry_ptr = internal global ptr @st_ahci_suspend._entry, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"st_ahci_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 239, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 241, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"st_ahci_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 233, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"st_ahci_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 231, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 172, i32 9 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"st_ahci_port_info\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 134, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"ahci_platform_sht\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 141, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 108, i32 46 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 110, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 114, i32 49 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 116, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 120, i32 50 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 122, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 63, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 71, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 79, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"st_ahci_port_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 129, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 97, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [25 x i8] c"../drivers/ata/ahci_st.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 199, i32 4 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_description324, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_license326, ptr @__exitcall_st_ahci_driver_exit, ptr @__initcall__kmod_ahci_st__321_248_st_ahci_driver_init6, ptr @st_ahci_deassert_resets._entry, ptr @st_ahci_deassert_resets._entry.18, ptr @st_ahci_deassert_resets._entry.21, ptr @st_ahci_deassert_resets._entry_ptr, ptr @st_ahci_deassert_resets._entry_ptr.20, ptr @st_ahci_deassert_resets._entry_ptr.23, ptr @st_ahci_driver_exit, ptr @st_ahci_host_stop._entry, ptr @st_ahci_host_stop._entry_ptr, ptr @st_ahci_probe_resets._entry, ptr @st_ahci_probe_resets._entry.9, ptr @st_ahci_probe_resets._entry_ptr, ptr @st_ahci_probe_resets._entry_ptr.11, ptr @st_ahci_suspend._entry, ptr @st_ahci_suspend._entry_ptr, ptr @st_ahci_driver, ptr @.str, ptr @st_ahci_match, ptr @st_ahci_pm_ops, ptr @.str.1, ptr @st_ahci_port_info, ptr @ahci_platform_sht, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @st_ahci_port_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ahci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ahci_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ahci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ahci_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_platform_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ahci_probe_resets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ahci_probe_resets._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ahci_deassert_resets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ahci_deassert_resets._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ahci_deassert_resets._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ahci_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ahci_host_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ahci_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st_ahci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_ahci_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_ahci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_ahci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_ahci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @ahci_platform_get_resources(ptr noundef %pdev, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %call3, i32 0, i32 23
  %1 = ptrtoint ptr %plat_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %plat_data, align 4
  %call9 = tail call fastcc i32 @st_ahci_probe_resets(ptr noundef %call3, ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call13 = tail call i32 @ahci_platform_enable_resources(ptr noundef %call3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %mmio = getelementptr inbounds %struct.ahci_host_priv, ptr %call3, i32 0, i32 3
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 188
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %5 = or i32 %4, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #4, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 201852034) #4, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 201851906) #4, !srcloc !86
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %force_port_map = getelementptr inbounds %struct.ahci_host_priv, ptr %call3, i32 0, i32 1
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef %force_port_map, i32 noundef 1, i32 noundef 0) #4
  %call18 = tail call i32 @ahci_platform_init_host(ptr noundef %pdev, ptr noundef %call3, ptr noundef nonnull @st_ahci_port_info, ptr noundef nonnull @ahci_platform_sht) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %if.then20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ahci_platform_disable_resources(ptr noundef %call3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then5 ], [ %call18, %if.then20 ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_platform_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahci_platform_get_resources(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st_ahci_probe_resets(ptr nocapture noundef readonly %hpriv, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 23
  %0 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_data, align 4
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %pwr = getelementptr inbounds %struct.st_ahci_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pwr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %pwr, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  %3 = ptrtoint ptr %pwr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pwr, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i.i43 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %sw_rst = getelementptr inbounds %struct.st_ahci_drv_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %sw_rst to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i43, ptr %sw_rst, align 4
  %cmp.i44 = icmp ugt ptr %call.i.i43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44, label %do.end10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10) #7
  %5 = ptrtoint ptr %sw_rst to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sw_rst, align 4
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %if.end.if.end12_crit_edge
  %call.i.i45 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %pwr_rst = getelementptr inbounds %struct.st_ahci_drv_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pwr_rst to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i45, ptr %pwr_rst, align 4
  %cmp.i46 = icmp ugt ptr %call.i.i45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %do.body17, label %if.end12.if.end26_crit_edge

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

do.body17:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_ahci_probe_resets.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_ahci_probe_resets, %if.then21)) #4
          to label %do.end24 [label %if.then21], !srcloc !89

if.then21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_ahci_probe_resets.__UNIQUE_ID_ddebug320, ptr noundef %dev, ptr noundef nonnull @.str.14) #4
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body17
  %7 = ptrtoint ptr %pwr_rst to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pwr_rst, align 4
  br label %if.end26

if.end26:                                         ; preds = %do.end24, %if.end12.if.end26_crit_edge
  %8 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plat_data, align 4
  %pwr.i = getelementptr inbounds %struct.st_ahci_drv_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pwr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pwr.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end26.if.end4.i_crit_edge, label %if.then.i

if.end26.if.end4.i_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end26
  %call.i = tail call i32 @reset_control_deassert(ptr noundef nonnull %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.cleanup.sink.split.i_crit_edge

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.end26.if.end4.i_crit_edge
  %sw_rst.i = getelementptr inbounds %struct.st_ahci_drv_data, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %sw_rst.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw_rst.i, align 4
  %tobool5.not.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end15.i_crit_edge, label %if.then6.i

if.end4.i.if.end15.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

if.then6.i:                                       ; preds = %if.end4.i
  %call8.i = tail call i32 @reset_control_deassert(ptr noundef nonnull %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then6.i.if.end15.i_crit_edge, label %if.then6.i.cleanup.sink.split.i_crit_edge

if.then6.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.then6.i.if.end15.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then6.i.if.end15.i_crit_edge, %if.end4.i.if.end15.i_crit_edge
  %pwr_rst.i = getelementptr inbounds %struct.st_ahci_drv_data, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %pwr_rst.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pwr_rst.i, align 4
  %tobool16.not.i = icmp eq ptr %15, null
  br i1 %tobool16.not.i, label %if.end15.i.st_ahci_deassert_resets.exit_crit_edge, label %if.then17.i

if.end15.i.st_ahci_deassert_resets.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_ahci_deassert_resets.exit

if.then17.i:                                      ; preds = %if.end15.i
  %call19.i = tail call i32 @reset_control_deassert(ptr noundef nonnull %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.then17.i.st_ahci_deassert_resets.exit_crit_edge, label %if.then17.i.cleanup.sink.split.i_crit_edge

if.then17.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.then17.i.st_ahci_deassert_resets.exit_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_ahci_deassert_resets.exit

cleanup.sink.split.i:                             ; preds = %if.then17.i.cleanup.sink.split.i_crit_edge, %if.then6.i.cleanup.sink.split.i_crit_edge, %if.then.i.cleanup.sink.split.i_crit_edge
  %.str.22.sink.i = phi ptr [ @.str.15, %if.then.i.cleanup.sink.split.i_crit_edge ], [ @.str.19, %if.then6.i.cleanup.sink.split.i_crit_edge ], [ @.str.22, %if.then17.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %if.then.i.cleanup.sink.split.i_crit_edge ], [ %call8.i, %if.then6.i.cleanup.sink.split.i_crit_edge ], [ %call19.i, %if.then17.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.22.sink.i) #7
  br label %st_ahci_deassert_resets.exit

st_ahci_deassert_resets.exit:                     ; preds = %cleanup.sink.split.i, %if.then17.i.st_ahci_deassert_resets.exit_crit_edge, %if.end15.i.st_ahci_deassert_resets.exit_crit_edge
  %retval.0.i47 = phi i32 [ 0, %if.then17.i.st_ahci_deassert_resets.exit_crit_edge ], [ 0, %if.end15.i.st_ahci_deassert_resets.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_init_host(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_ahci_host_stop(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_data, align 4
  %dev1 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %pwr = getelementptr inbounds %struct.st_ahci_drv_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pwr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwr, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 @reset_control_assert(ptr noundef nonnull %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.24) #7
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  tail call void @ahci_platform_disable_resources(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_change_queue_depth(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_ahci_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_data, align 4
  %call1 = tail call i32 @ahci_platform_suspend_host(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %pwr = getelementptr inbounds %struct.st_ahci_drv_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pwr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwr, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %call5 = tail call i32 @reset_control_assert(ptr noundef nonnull %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then3.if.end9_crit_edge, label %do.end

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #7
  br label %cleanup

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  tail call void @ahci_platform_disable_resources(ptr noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ 0, %if.end9 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_ahci_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call1 = tail call i32 @ahci_platform_enable_resources(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %plat_data.i = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_data.i, align 4
  %pwr.i = getelementptr inbounds %struct.st_ahci_drv_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pwr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwr.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.if.end4.i_crit_edge, label %if.then.i

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i32 @reset_control_deassert(ptr noundef nonnull %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.if.then4_crit_edge

if.then.i.if.then4_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.end.if.end4.i_crit_edge
  %sw_rst.i = getelementptr inbounds %struct.st_ahci_drv_data, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %sw_rst.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw_rst.i, align 4
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end15.i_crit_edge, label %if.then6.i

if.end4.i.if.end15.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

if.then6.i:                                       ; preds = %if.end4.i
  %call8.i = tail call i32 @reset_control_deassert(ptr noundef nonnull %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then6.i.if.end15.i_crit_edge, label %if.then6.i.if.then4_crit_edge

if.then6.i.if.then4_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.then6.i.if.end15.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then6.i.if.end15.i_crit_edge, %if.end4.i.if.end15.i_crit_edge
  %pwr_rst.i = getelementptr inbounds %struct.st_ahci_drv_data, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %pwr_rst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pwr_rst.i, align 4
  %tobool16.not.i = icmp eq ptr %11, null
  br i1 %tobool16.not.i, label %if.end15.i.if.end5_crit_edge, label %if.then17.i

if.end15.i.if.end5_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then17.i:                                      ; preds = %if.end15.i
  %call19.i = tail call i32 @reset_control_deassert(ptr noundef nonnull %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.then17.i.if.end5_crit_edge, label %if.then17.i.if.then4_crit_edge

if.then17.i.if.then4_crit_edge:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.then17.i.if.end5_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %if.then17.i.if.then4_crit_edge, %if.then6.i.if.then4_crit_edge, %if.then.i.if.then4_crit_edge
  %.str.22.sink.i = phi ptr [ @.str.15, %if.then.i.if.then4_crit_edge ], [ @.str.19, %if.then6.i.if.then4_crit_edge ], [ @.str.22, %if.then17.i.if.then4_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %if.then.i.if.then4_crit_edge ], [ %call8.i, %if.then6.i.if.then4_crit_edge ], [ %call19.i, %if.then17.i.if.then4_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.22.sink.i) #7
  tail call void @ahci_platform_disable_resources(ptr noundef %3) #4
  br label %cleanup

if.end5:                                          ; preds = %if.then17.i.if.end5_crit_edge, %if.end15.i.if.end5_crit_edge
  %mmio = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 188
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %15 = or i32 %14, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #4, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 201852034) #4, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 201851906) #4, !srcloc !86
  %call6 = tail call i32 @ahci_platform_resume_host(ptr noundef %dev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph.i, %if.then4 ], [ %call6, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !61, !62, !63, !65, !67, !69, !71, !72, !73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_ahci_st__321_248_st_ahci_driver_init6, !1, !"__initcall__kmod_ahci_st__321_248_st_ahci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/ahci_st.c", i32 248, i32 1}
!2 = !{ptr @__exitcall_st_ahci_driver_exit, !1, !"__exitcall_st_ahci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author322, !4, !"__UNIQUE_ID_author322", i1 false, i1 false}
!4 = !{!"../drivers/ata/ahci_st.c", i32 250, i32 1}
!5 = !{ptr @__UNIQUE_ID_author323, !6, !"__UNIQUE_ID_author323", i1 false, i1 false}
!6 = !{!"../drivers/ata/ahci_st.c", i32 251, i32 1}
!7 = !{ptr @__UNIQUE_ID_description324, !8, !"__UNIQUE_ID_description324", i1 false, i1 false}
!8 = !{!"../drivers/ata/ahci_st.c", i32 252, i32 1}
!9 = !{ptr @__UNIQUE_ID_file325, !10, !"__UNIQUE_ID_file325", i1 false, i1 false}
!10 = !{!"../drivers/ata/ahci_st.c", i32 253, i32 1}
!11 = !{ptr @__UNIQUE_ID_license326, !10, !"__UNIQUE_ID_license326", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/ata/ahci_st.c", i32 241, i32 11}
!14 = !{ptr @st_ahci_driver, !15, !"st_ahci_driver", i1 false, i1 false}
!15 = !{!"../drivers/ata/ahci_st.c", i32 239, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ata/ahci_st.c", i32 172, i32 9}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/ata/ahci_st.c", i32 108, i32 46}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/ata/ahci_st.c", i32 110, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @st_ahci_probe_resets._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @st_ahci_probe_resets._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ata/ahci_st.c", i32 114, i32 49}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/ahci_st.c", i32 116, i32 3}
!32 = !{ptr @st_ahci_probe_resets._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @st_ahci_probe_resets._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ata/ahci_st.c", i32 120, i32 50}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/ahci_st.c", i32 122, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @st_ahci_probe_resets.__UNIQUE_ID_ddebug320, !37, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ata/ahci_st.c", i32 63, i32 4}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @st_ahci_deassert_resets._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @st_ahci_deassert_resets._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ata/ahci_st.c", i32 71, i32 4}
!48 = !{ptr @st_ahci_deassert_resets._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @st_ahci_deassert_resets._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ata/ahci_st.c", i32 79, i32 4}
!52 = !{ptr @st_ahci_deassert_resets._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @st_ahci_deassert_resets._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @st_ahci_port_info, !55, !"st_ahci_port_info", i1 false, i1 false}
!55 = !{!"../drivers/ata/ahci_st.c", i32 134, i32 35}
!56 = !{ptr @st_ahci_port_ops, !57, !"st_ahci_port_ops", i1 false, i1 false}
!57 = !{!"../drivers/ata/ahci_st.c", i32 129, i32 35}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/ata/ahci_st.c", i32 97, i32 4}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @st_ahci_host_stop._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @st_ahci_host_stop._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @ahci_platform_sht, !64, !"ahci_platform_sht", i1 false, i1 false}
!64 = !{!"../drivers/ata/ahci_st.c", i32 141, i32 34}
!65 = !{ptr @st_ahci_match, !66, !"st_ahci_match", i1 false, i1 false}
!66 = !{!"../drivers/ata/ahci_st.c", i32 233, i32 34}
!67 = !{ptr @st_ahci_pm_ops, !68, !"st_ahci_pm_ops", i1 false, i1 false}
!68 = !{!"../drivers/ata/ahci_st.c", i32 231, i32 8}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/ata/ahci_st.c", i32 199, i32 4}
!71 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @st_ahci_suspend._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @st_ahci_suspend._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 5099897}
!84 = !{i64 2156421556}
!85 = !{i64 2156421888}
!86 = !{i64 5099479}
!87 = !{i64 2156422494}
!88 = !{i64 2156422985}
!89 = !{i64 2148957436, i64 2148957441, i64 2148957454, i64 2148957498, i64 2148957532, i64 2148957553}
