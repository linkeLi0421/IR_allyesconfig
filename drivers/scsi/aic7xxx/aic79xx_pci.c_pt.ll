; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic7xxx/aic79xx_pci.c_pt.bc'
source_filename = "../drivers/scsi/aic7xxx/aic79xx_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ahd_pci_identity = type { i64, i64, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ahd_softc = type { [2 x i32], [2 x %union.bus_space_handle_t], %struct.scb_data, ptr, ptr, %struct.anon.95, i32, i32, i32, i32, ptr, ptr, ptr, [16 x ptr], ptr, ptr, %struct.timer_list, i32, [4 x i32], i32, i32, i32, i32, i32, ptr, ptr, i16, i16, i16, [512 x i16], i16, i8, i8, ptr, i32, ptr, %struct.anon.97, i8, i8, ptr, i8, i8, i8, i32, i32, [12 x i8], [12 x i8], i32, i32, i32, ptr, ptr, %struct.map_node, %struct.ahd_suspend_state, i32, i32, i32, [4 x i8], i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%union.bus_space_handle_t = type { i32 }
%struct.scb_data = type { %struct.scb_tailq, [1024 x %struct.scb_list], %struct.scb_list, [512 x ptr], ptr, ptr, ptr, %struct.anon.92, %struct.anon.93, %struct.anon.94, i32, i32, i32, i16, i16, i8 }
%struct.scb_tailq = type { ptr, ptr }
%struct.scb_list = type { ptr }
%struct.anon.92 = type { ptr }
%struct.anon.93 = type { ptr }
%struct.anon.94 = type { ptr }
%struct.anon.95 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.97 = type { ptr, ptr }
%struct.map_node = type { i32, i32, ptr, %struct.anon.91 }
%struct.anon.91 = type { ptr }
%struct.ahd_suspend_state = type { [2 x %struct.ahd_suspend_channel_state], %struct.ahd_suspend_pci_state, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.ahd_suspend_channel_state = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.ahd_suspend_pci_state = type { i32, i8, i8 }
%struct.vpd_config = type { i8, [21 x i8], i8, [2 x i8], [8 x i8], i8, i16, [2 x i8], i8, i8, i8, [2 x i8], i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, i16, i8, i8, [4 x i8] }
%struct.seeprom_config = type { [16 x i16], i16, i16, i16, i16, [10 x i16], i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.96, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.10 }
%union.anon.10 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.96 = type { ptr }

@ahd_pci_ident_table = internal constant { [17 x %struct.ahd_pci_identity], [104 x i8] } { [17 x %struct.ahd_pci_identity] [%struct.ahd_pci_identity { i64 -9223213685699211259, i64 -1, ptr @.str.3, ptr @ahd_aic7901_setup }, %struct.ahd_pci_identity { i64 -9216739761236701179, i64 -1, ptr @.str.4, ptr @ahd_aic7901_setup }, %struct.ahd_pci_identity { i64 -9216739761236635643, i64 -1, ptr @.str.5, ptr @ahd_aic7901_setup }, %struct.ahd_pci_identity { i64 -9217584186166833147, i64 -1, ptr @.str.6, ptr @ahd_aic7901A_setup }, %struct.ahd_pci_identity { i64 -9218147136120385531, i64 -1, ptr @.str.7, ptr @ahd_aic7902_setup }, %struct.ahd_pci_identity { i64 -9217865661143609339, i64 -1, ptr @.str.8, ptr @ahd_aic7902_setup }, %struct.ahd_pci_identity { i64 -9218710086073937915, i64 -1, ptr @.str.9, ptr @ahd_aic7902_setup }, %struct.ahd_pci_identity { i64 -9217302711190384635, i64 -1, ptr @.str.9, ptr @ahd_aic7902_setup }, %struct.ahd_pci_identity { i64 -9217302711171018712, i64 -1, ptr @.str.10, ptr @ahd_aic7902_setup }, %struct.ahd_pci_identity { i64 -9217021236213673979, i64 -1, ptr @.str.11, ptr @ahd_aic7902_setup }, %struct.ahd_pci_identity { i64 -9218428611097161723, i64 -1, ptr @.str.12, ptr @ahd_aic7902_setup }, %struct.ahd_pci_identity { i64 -9218428611090182639, i64 -1, ptr @.str.13, ptr @ahd_aic7902_setup }, %struct.ahd_pci_identity { i64 -9215332386353344507, i64 -1, ptr @.str.12, ptr @ahd_aic7902_setup }, %struct.ahd_pci_identity { i64 -9215332386346365423, i64 -1, ptr @.str.13, ptr @ahd_aic7902_setup }, %struct.ahd_pci_identity { i64 -9223213685705539584, i64 -4222128945627136, ptr @.str.14, ptr @ahd_aic7901_setup }, %struct.ahd_pci_identity { i64 -9214769436404219904, i64 -4294967296, ptr @.str.15, ptr @ahd_aic7901A_setup }, %struct.ahd_pci_identity { i64 -9218710086078169088, i64 -4222128945627136, ptr @.str.16, ptr @ahd_aic7902_setup }], [104 x i8] zeroinitializer }, align 32
@pci_bus_modes = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.19, ptr @.str.19, ptr @.str.19, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], [32 x i8] zeroinitializer }, align 32
@aic79xx_verbose = external dso_local local_unnamed_addr global i32, align 4
@ahd_pci_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Enabling 39Bit Addressing\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ahd_pci_config\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/aic7xxx/aic79xx_pci.c\00", [61 x i8] zeroinitializer }, align 32
@ahd_pci_config._entry_ptr = internal global ptr @ahd_pci_config._entry, section ".printk_index", align 4
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Adaptec 29320A Ultra320 SCSI adapter\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Adaptec 29320ALP PCIx Ultra320 SCSI adapter\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Adaptec 29320LPE PCIe Ultra320 SCSI adapter\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Adaptec 29320LP Ultra320 SCSI adapter\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Adaptec 29320 Ultra320 SCSI adapter\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Adaptec 29320B Ultra320 SCSI adapter\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Adaptec 39320 Ultra320 SCSI adapter\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Adaptec (Dell OEM) 39320 Ultra320 SCSI adapter\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Adaptec 39320A Ultra320 SCSI adapter\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Adaptec 39320D Ultra320 SCSI adapter\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Adaptec (HP OEM) 39320D Ultra320 SCSI adapter\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Adaptec AIC7901 Ultra320 SCSI adapter\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Adaptec AIC7901A Ultra320 SCSI adapter\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Adaptec AIC7902 Ultra320 SCSI adapter\00", [58 x i8] zeroinitializer }, align 32
@ahd_aic790X_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: Unable to attach to unsupported chip revision %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ahd_aic790X_setup\00", [46 x i8] zeroinitializer }, align 32
@ahd_aic790X_setup._entry_ptr = internal global ptr @ahd_aic790X_setup._entry, section ".printk_index", align 4
@aic79xx_slowcrc = external dso_local local_unnamed_addr global i32, align 4
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCI bus mode unknown\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCI-X 101-133MHz\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCI-X 67-100MHz\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCI-X 50-66MHz\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCI 33 or 66MHz\00", [16 x i8] zeroinitializer }, align 32
@ahd_check_extport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Reading VPD from SEEPROM...\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ahd_check_extport\00", [46 x i8] zeroinitializer }, align 32
@ahd_check_extport._entry_ptr = internal global ptr @ahd_check_extport._entry, section ".printk_index", align 4
@ahd_check_extport._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: VPD parsing %s\0A\00", [44 x i8] zeroinitializer }, align 32
@ahd_check_extport._entry_ptr.28 = internal global ptr @ahd_check_extport._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"successful\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@ahd_check_extport._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.25, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Reading SEEPROM...\00", [41 x i8] zeroinitializer }, align 32
@ahd_check_extport._entry_ptr.33 = internal global ptr @ahd_check_extport._entry.31, section ".printk_index", align 4
@ahd_check_extport._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.25, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to read SEEPROM\0A\00", [40 x i8] zeroinitializer }, align 32
@ahd_check_extport._entry_ptr.36 = internal global ptr @ahd_check_extport._entry.34, section ".printk_index", align 4
@ahd_check_extport._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.25, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"checksum error\0A\00", [16 x i8] zeroinitializer }, align 32
@ahd_check_extport._entry_ptr.39 = internal global ptr @ahd_check_extport._entry.37, section ".printk_index", align 4
@ahd_check_extport._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.25, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"done.\0A\00", [25 x i8] zeroinitializer }, align 32
@ahd_check_extport._entry_ptr.42 = internal global ptr @ahd_check_extport._entry.40, section ".printk_index", align 4
@ahd_debug = external dso_local local_unnamed_addr global i32, align 4
@ahd_check_extport._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.25, ptr @.str.2, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Seeprom Contents:\00", [42 x i8] zeroinitializer }, align 32
@ahd_check_extport._entry_ptr.45 = internal global ptr @ahd_check_extport._entry.43, section ".printk_index", align 4
@ahd_check_extport._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.25, ptr @.str.2, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0A\090x%.4x\00", [23 x i8] zeroinitializer }, align 32
@ahd_check_extport._entry_ptr.48 = internal global ptr @ahd_check_extport._entry.46, section ".printk_index", align 4
@ahd_check_extport._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.25, ptr @.str.2, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@ahd_check_extport._entry_ptr.51 = internal global ptr @ahd_check_extport._entry.49, section ".printk_index", align 4
@ahd_check_extport._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.25, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: No SEEPROM available.\0A\00", [37 x i8] zeroinitializer }, align 32
@ahd_check_extport._entry_ptr.54 = internal global ptr @ahd_check_extport._entry.52, section ".printk_index", align 4
@ahd_configure_termination._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: STPWLEVEL is %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ahd_configure_termination\00", [38 x i8] zeroinitializer }, align 32
@ahd_configure_termination._entry_ptr = internal global ptr @ahd_configure_termination._entry, section ".printk_index", align 4
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@ahd_configure_termination._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.56, ptr @.str.2, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Manual Primary Termination\0A\00", [32 x i8] zeroinitializer }, align 32
@ahd_configure_termination._entry_ptr.61 = internal global ptr @ahd_configure_termination._entry.59, section ".printk_index", align 4
@ahd_configure_termination._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.56, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: Primary Auto-Term Sensing failed! Using Defaults.\0A\00", [41 x i8] zeroinitializer }, align 32
@ahd_configure_termination._entry_ptr.64 = internal global ptr @ahd_configure_termination._entry.62, section ".printk_index", align 4
@ahd_configure_termination._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.56, ptr @.str.2, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Manual Secondary Termination\0A\00", [62 x i8] zeroinitializer }, align 32
@ahd_configure_termination._entry_ptr.67 = internal global ptr @ahd_configure_termination._entry.65, section ".printk_index", align 4
@ahd_configure_termination._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.56, ptr @.str.2, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: Secondary Auto-Term Sensing failed! Using Defaults.\0A\00", [39 x i8] zeroinitializer }, align 32
@ahd_configure_termination._entry_ptr.70 = internal global ptr @ahd_configure_termination._entry.68, section ".printk_index", align 4
@ahd_configure_termination._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.56, ptr @.str.2, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Unable to set termination settings!\0A\00", [55 x i8] zeroinitializer }, align 32
@ahd_configure_termination._entry_ptr.73 = internal global ptr @ahd_configure_termination._entry.71, section ".printk_index", align 4
@ahd_configure_termination._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.56, ptr @.str.2, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Primary High byte termination %sabled\0A\00", [53 x i8] zeroinitializer }, align 32
@ahd_configure_termination._entry_ptr.76 = internal global ptr @ahd_configure_termination._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"En\00", [29 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Dis\00", [28 x i8] zeroinitializer }, align 32
@ahd_configure_termination._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.56, ptr @.str.2, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Primary Low byte termination %sabled\0A\00", [54 x i8] zeroinitializer }, align 32
@ahd_configure_termination._entry_ptr.81 = internal global ptr @ahd_configure_termination._entry.79, section ".printk_index", align 4
@ahd_configure_termination._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.56, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Secondary High byte termination %sabled\0A\00", [51 x i8] zeroinitializer }, align 32
@ahd_configure_termination._entry_ptr.84 = internal global ptr @ahd_configure_termination._entry.82, section ".printk_index", align 4
@ahd_configure_termination._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.56, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Secondary Low byte termination %sabled\0A\00", [52 x i8] zeroinitializer }, align 32
@ahd_configure_termination._entry_ptr.87 = internal global ptr @ahd_configure_termination._entry.85, section ".printk_index", align 4
@ahd_pci_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: PCI error Interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ahd_pci_intr\00", [19 x i8] zeroinitializer }, align 32
@ahd_pci_intr._entry_ptr = internal global ptr @ahd_pci_intr._entry, section ".printk_index", align 4
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Signaled Target Abort\0A\00", [37 x i8] zeroinitializer }, align 32
@ahd_pci_intr._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.89, ptr @.str.2, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ahd_pci_intr._entry_ptr.92 = internal global ptr @ahd_pci_intr._entry.91, section ".printk_index", align 4
@pci_status_source = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.108, ptr @.str.109, ptr @.str.99, ptr @.str.111, ptr @.str.110, ptr @.str.120, ptr @.str.121, ptr @.str.122], [32 x i8] zeroinitializer }, align 32
@ahd_pci_split_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: PCI Split Interrupt - PCI-X status = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ahd_pci_split_intr\00", [45 x i8] zeroinitializer }, align 32
@ahd_pci_split_intr._entry_ptr = internal global ptr @ahd_pci_split_intr._entry, section ".printk_index", align 4
@ahd_pci_split_intr._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.94, ptr @.str.2, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ahd_pci_split_intr._entry_ptr.96 = internal global ptr @ahd_pci_split_intr._entry.95, section ".printk_index", align 4
@split_status_strings = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], [32 x i8] zeroinitializer }, align 32
@ahd_pci_split_intr._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.94, ptr @.str.2, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ahd_pci_split_intr._entry_ptr.98 = internal global ptr @ahd_pci_split_intr._entry.97, section ".printk_index", align 4
@.str.99 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SG\00", [29 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Received split response in %s.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: Received split completion error message in %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Receive overrun in %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Count not complete in %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Split completion data bucket in %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Split completion address error in %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Split completion byte count error in %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: Signaled Target-abort to early terminate a split in %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DFF0\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DFF1\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OVLY\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CMC\00", [28 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: Data Parity Error has been reported via PERR# in %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Target initial wait state error in %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: Split completion read data parity error in %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: Split completion address attribute parity error in %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Received a Target Abort in %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Received a Master Abort in %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Signal System Error Detected in %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: Address or Write Phase Parity Error Detected in %s.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TARG\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"ahd_pci_ident_table\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 94, i32 38 }
@___asan_gen_.126 = private unnamed_addr constant [14 x i8] c"pci_bus_modes\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 214, i32 20 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 333, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 100, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 106, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 112, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 119, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 126, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 132, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 138, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 150, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 156, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 162, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 168, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 187, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 193, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 199, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 935, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 216, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 220, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 221, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 222, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 223, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 521, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 534, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 539, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 549, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 556, i32 6 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 558, i32 6 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 608, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 611, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 612, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 618, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 649, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 664, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 672, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 679, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 687, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 707, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 710, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 714, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 718, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 722, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 798, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 824, i32 10 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 825, i32 5 }
@___asan_gen_.366 = private unnamed_addr constant [18 x i8] c"pci_status_source\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 744, i32 20 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 855, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 881, i32 5 }
@___asan_gen_.381 = private unnamed_addr constant [21 x i8] c"split_status_strings\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 756, i32 20 }
@___asan_gen_.384 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 888, i32 5 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 758, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 759, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 760, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 761, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 762, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 763, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 764, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 765, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 738, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 739, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 740, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 741, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 770, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 771, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 772, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 773, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 774, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 775, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 776, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 777, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 751, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 752, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.457 = private constant [38 x i8] c"../drivers/scsi/aic7xxx/aic79xx_pci.c\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 753, i32 2 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @ahd_aic790X_setup._entry, ptr @ahd_aic790X_setup._entry_ptr, ptr @ahd_check_extport._entry, ptr @ahd_check_extport._entry.26, ptr @ahd_check_extport._entry.31, ptr @ahd_check_extport._entry.34, ptr @ahd_check_extport._entry.37, ptr @ahd_check_extport._entry.40, ptr @ahd_check_extport._entry.43, ptr @ahd_check_extport._entry.46, ptr @ahd_check_extport._entry.49, ptr @ahd_check_extport._entry.52, ptr @ahd_check_extport._entry_ptr, ptr @ahd_check_extport._entry_ptr.28, ptr @ahd_check_extport._entry_ptr.33, ptr @ahd_check_extport._entry_ptr.36, ptr @ahd_check_extport._entry_ptr.39, ptr @ahd_check_extport._entry_ptr.42, ptr @ahd_check_extport._entry_ptr.45, ptr @ahd_check_extport._entry_ptr.48, ptr @ahd_check_extport._entry_ptr.51, ptr @ahd_check_extport._entry_ptr.54, ptr @ahd_configure_termination._entry, ptr @ahd_configure_termination._entry.59, ptr @ahd_configure_termination._entry.62, ptr @ahd_configure_termination._entry.65, ptr @ahd_configure_termination._entry.68, ptr @ahd_configure_termination._entry.71, ptr @ahd_configure_termination._entry.74, ptr @ahd_configure_termination._entry.79, ptr @ahd_configure_termination._entry.82, ptr @ahd_configure_termination._entry.85, ptr @ahd_configure_termination._entry_ptr, ptr @ahd_configure_termination._entry_ptr.61, ptr @ahd_configure_termination._entry_ptr.64, ptr @ahd_configure_termination._entry_ptr.67, ptr @ahd_configure_termination._entry_ptr.70, ptr @ahd_configure_termination._entry_ptr.73, ptr @ahd_configure_termination._entry_ptr.76, ptr @ahd_configure_termination._entry_ptr.81, ptr @ahd_configure_termination._entry_ptr.84, ptr @ahd_configure_termination._entry_ptr.87, ptr @ahd_pci_config._entry, ptr @ahd_pci_config._entry_ptr, ptr @ahd_pci_intr._entry, ptr @ahd_pci_intr._entry.91, ptr @ahd_pci_intr._entry_ptr, ptr @ahd_pci_intr._entry_ptr.92, ptr @ahd_pci_split_intr._entry, ptr @ahd_pci_split_intr._entry.95, ptr @ahd_pci_split_intr._entry.97, ptr @ahd_pci_split_intr._entry_ptr, ptr @ahd_pci_split_intr._entry_ptr.96, ptr @ahd_pci_split_intr._entry_ptr.98, ptr @ahd_pci_ident_table, ptr @pci_bus_modes, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @pci_status_source, ptr @.str.93, ptr @.str.94, ptr @split_status_strings, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_pci_ident_table to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bus_modes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_pci_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_aic790X_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_check_extport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_check_extport._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_check_extport._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_check_extport._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_check_extport._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_check_extport._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_check_extport._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_check_extport._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_check_extport._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_check_extport._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_configure_termination._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_configure_termination._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_configure_termination._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_configure_termination._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_configure_termination._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_configure_termination._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_configure_termination._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_configure_termination._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_configure_termination._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_configure_termination._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_pci_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_pci_intr._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_status_source to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_pci_split_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_pci_split_intr._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @split_status_strings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_pci_split_intr._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ahd_find_pci_device(ptr noundef %pci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ahd_pci_read_config(ptr noundef %pci, i32 noundef 0, i32 noundef 2) #4
  %call2 = tail call i32 @ahd_pci_read_config(ptr noundef %pci, i32 noundef 2, i32 noundef 2) #4
  %call4 = tail call i32 @ahd_pci_read_config(ptr noundef %pci, i32 noundef 44, i32 noundef 2) #4
  %call6 = tail call i32 @ahd_pci_read_config(ptr noundef %pci, i32 noundef 46, i32 noundef 2) #4
  %conv8 = and i32 %call2, 65407
  %conv9 = and i32 %call, 65535
  %conv11 = and i32 %call4, 65535
  %conv10 = shl i32 %call6, 16
  %or.i = or i32 %conv10, %conv11
  %conv.i = zext i32 %or.i to i64
  %conv1.i = zext i32 %conv9 to i64
  %shl2.i = shl nuw nsw i64 %conv1.i, 32
  %or3.i = or i64 %shl2.i, %conv.i
  %conv4.i = zext i32 %conv8 to i64
  %shl5.i = shl nuw i64 %conv4.i, 48
  %or6.i = or i64 %or3.i, %shl5.i
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.037 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [17 x %struct.ahd_pci_identity], ptr @ahd_pci_ident_table, i32 0, i32 %i.037
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  %id_mask = getelementptr [17 x %struct.ahd_pci_identity], ptr @ahd_pci_ident_table, i32 0, i32 %i.037, i32 1
  %2 = ptrtoint ptr %id_mask to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %id_mask, align 8
  %and15 = and i64 %3, %or6.i
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %and15)
  %cmp16 = icmp eq i64 %1, %and15
  br i1 %cmp16, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_pci_read_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahd_pci_config(ptr noundef %ahd, ptr nocapture noundef readonly %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.ahd_pci_identity, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  %description = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 60
  %2 = ptrtoint ptr %description to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %description, align 4
  %dev_softc = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_softc, align 4
  %call = tail call i32 @ahd_pci_read_config(ptr noundef %4, i32 noundef 44, i32 noundef 2) #4
  %conv2 = and i32 %call, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 3601, i32 %conv2)
  %cmp = icmp eq i32 %conv2, 3601
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %flags = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 23
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or = or i32 %6, 1048576
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %setup = getelementptr inbounds %struct.ahd_pci_identity, ptr %entry1, i32 0, i32 3
  %7 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %setup, align 4
  %call4 = tail call i32 %8(ptr noundef %ahd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_softc, align 4
  %call10 = tail call i32 @ahd_pci_read_config(ptr noundef %10, i32 noundef 64, i32 noundef 4) #4
  %and = and i32 %call10, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 57344, i32 %and)
  %cmp11 = icmp eq i32 %and, 57344
  %chip = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 20
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chip, align 4
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %or14 = or i32 %12, 256
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or14, ptr %chip, align 4
  %bugs = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 22
  %14 = ptrtoint ptr %bugs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bugs, align 4
  %and15 = and i32 %15, -449
  store i32 %and15, ptr %bugs, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %or17 = or i32 %12, 512
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or17, ptr %chip, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then13
  %shr = lshr exact i32 %and, 13
  %arrayidx = getelementptr [8 x ptr], ptr @pci_bus_modes, i32 0, i32 %shr
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %bus_description = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 61
  %19 = ptrtoint ptr %bus_description to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %bus_description, align 4
  tail call void @ahd_power_state_change(ptr noundef %ahd, i32 noundef 0) #4
  %call20 = tail call i32 @ahd_pci_map_registers(ptr noundef %ahd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.end24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %flags25 = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 23
  %20 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags25, align 4
  %and26 = and i32 %21, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp27.not = icmp eq i32 %and26, 0
  br i1 %cmp27.not, label %if.end24.if.end38_crit_edge, label %if.then29

if.end24.if.end38_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then29:                                        ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic79xx_verbose to i32))
  %22 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.then29.if.end33_crit_edge, label %do.end

if.then29.if.end33_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

do.end:                                           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 62
  %23 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name.i, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %24) #7
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.then29.if.end33_crit_edge
  %25 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_softc, align 4
  %call35 = tail call i32 @ahd_pci_read_config(ptr noundef %26, i32 noundef 64, i32 noundef 4) #4
  %or36 = or i32 %call35, 4
  %27 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_softc, align 4
  tail call void @ahd_pci_write_config(ptr noundef %28, i32 noundef 64, i32 noundef %or36, i32 noundef 4) #4
  br label %if.end38

if.end38:                                         ; preds = %if.end33, %if.end24.if.end38_crit_edge
  %29 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_softc, align 4
  %call40 = tail call i32 @ahd_pci_read_config(ptr noundef %30, i32 noundef 4, i32 noundef 2) #4
  %or41 = or i32 %call40, 4
  %31 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_softc, align 4
  tail call void @ahd_pci_write_config(ptr noundef %32, i32 noundef 4, i32 noundef %or41, i32 noundef 2) #4
  %call43 = tail call i32 @ahd_softc_init(ptr noundef %ahd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.end47, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  %bus_intr = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 12
  %33 = ptrtoint ptr %bus_intr to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ahd_pci_intr, ptr %bus_intr, align 4
  %call48 = tail call i32 @ahd_reset(ptr noundef %ahd, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 0
  br i1 %cmp49.not, label %if.end52, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %34 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_softc, align 4
  %call54 = tail call i32 @ahd_pci_read_config(ptr noundef %35, i32 noundef 12, i32 noundef 1) #4
  %pci_cachesize = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 56
  %and55 = shl i32 %call54, 2
  %mul = and i32 %and55, 1020
  %36 = ptrtoint ptr %pci_cachesize to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul, ptr %pci_cachesize, align 4
  tail call void @ahd_set_modes(ptr noundef %ahd, i32 noundef 3, i32 noundef 3) #4
  %call57 = tail call fastcc i32 @ahd_check_extport(ptr noundef %ahd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58.not = icmp eq i32 %call57, 0
  br i1 %cmp58.not, label %if.end61, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end61:                                         ; preds = %if.end52
  %call62 = tail call i32 @ahd_init(ptr noundef %ahd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63.not = icmp eq i32 %call62, 0
  br i1 %cmp63.not, label %if.end66, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end66:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  %init_level = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 55
  %37 = ptrtoint ptr %init_level to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %init_level, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %init_level, align 4
  %call67 = tail call i32 @ahd_pci_map_int(ptr noundef %ahd) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end61.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call67, %if.end66 ], [ %call4, %if.end.cleanup_crit_edge ], [ %call20, %if.end18.cleanup_crit_edge ], [ %call43, %if.end38.cleanup_crit_edge ], [ 6, %if.end47.cleanup_crit_edge ], [ %call57, %if.end52.cleanup_crit_edge ], [ %call62, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_power_state_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_pci_map_registers(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_pci_write_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_softc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_pci_intr(ptr noundef %ahd) #0 align 64 {
entry:
  %pci_status = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pci_status) #4
  %0 = getelementptr inbounds [8 x i8], ptr %pci_status, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %pci_status, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %pci_status, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %pci_status, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %pci_status, i32 0, i32 6
  %5 = getelementptr inbounds [8 x i8], ptr %pci_status, i32 0, i32 7
  %6 = getelementptr inbounds i8, ptr %pci_status, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1
  %call = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 1) #4
  %conv = zext i8 %call to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %dev_softc.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 11
  %8 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_softc.i, align 4
  %call.i = tail call i32 @ahd_pci_read_config(ptr noundef %9, i32 noundef 154, i32 noundef 2) #4
  %name.i.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 62
  %10 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i.i, align 4
  %conv2.i = and i32 %call.i, 65535
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %11, i32 noundef %conv2.i) #7
  %call4.i = tail call zeroext i8 @ahd_save_modes(ptr noundef %ahd) #4
  tail call void @ahd_set_modes(ptr noundef %ahd, i32 noundef 0, i32 noundef 0) #4
  %call6.peel.i = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 150) #4
  %call7.peel.i = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 151) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 150, i8 noundef zeroext %call6.peel.i) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 151, i8 noundef zeroext %call7.peel.i) #4
  %call13.peel.i = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 158) #4
  %call15.peel.i = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 159) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 158, i8 noundef zeroext %call13.peel.i) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 159, i8 noundef zeroext %call15.peel.i) #4
  tail call void @ahd_set_modes(ptr noundef %ahd, i32 noundef 1, i32 noundef 1) #4
  %call6.peel10.i = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 150) #4
  %call7.peel12.i = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 151) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 150, i8 noundef zeroext %call6.peel10.i) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 151, i8 noundef zeroext %call7.peel12.i) #4
  %call13.peel15.i = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 158) #4
  %call15.peel17.i = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 159) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 158, i8 noundef zeroext %call13.peel15.i) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 159, i8 noundef zeroext %call15.peel17.i) #4
  tail call void @ahd_set_modes(ptr noundef %ahd, i32 noundef 2, i32 noundef 2) #4
  %call6.i = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 150) #4
  %call7.i = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 151) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 150, i8 noundef zeroext %call6.i) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 151, i8 noundef zeroext %call7.i) #4
  tail call void @ahd_set_modes(ptr noundef %ahd, i32 noundef 3, i32 noundef 3) #4
  %call6.i.1 = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 150) #4
  %call7.i.1 = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 151) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 150, i8 noundef zeroext %call6.i.1) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 151, i8 noundef zeroext %call7.i.1) #4
  %conv28.i = zext i8 %call6.peel.i to i32
  %conv48.i = zext i8 %call13.peel.i to i32
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.inc64.i.for.body26.i_crit_edge, %if.then
  %bit.05.i = phi i32 [ 0, %if.then ], [ %inc65.i, %for.inc64.i.for.body26.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %bit.05.i
  %and.i = and i32 %shl.i, %conv28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp29.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp29.not.i, label %for.body26.i.if.end46.i_crit_edge, label %do.end36.i

for.body26.i.if.end46.i_crit_edge:                ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46.i

do.end36.i:                                       ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx38.i = getelementptr [8 x ptr], ptr @split_status_strings, i32 0, i32 %bit.05.i
  %12 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx38.i, align 4
  %14 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i.i, align 4
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef %13, ptr noundef %15, ptr noundef nonnull @.str.108) #7
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end36.i, %for.body26.i.if.end46.i_crit_edge
  %and50.i = and i32 %shl.i, %conv48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %cmp51.not.i = icmp eq i32 %and50.i, 0
  br i1 %cmp51.not.i, label %if.end46.i.for.inc64.i_crit_edge, label %do.end58.i

if.end46.i.for.inc64.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.i

do.end58.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx60.i = getelementptr [8 x ptr], ptr @split_status_strings, i32 0, i32 %bit.05.i
  %16 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx60.i, align 4
  %18 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name.i.i, align 4
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef %17, ptr noundef %19, ptr noundef nonnull @.str.99) #7
  br label %for.inc64.i

for.inc64.i:                                      ; preds = %do.end58.i, %if.end46.i.for.inc64.i_crit_edge
  %inc65.i = add nuw nsw i32 %bit.05.i, 1
  %exitcond22.not.i = icmp eq i32 %inc65.i, 8
  br i1 %exitcond22.not.i, label %for.end66.i, label %for.inc64.i.for.body26.i_crit_edge

for.inc64.i.for.body26.i_crit_edge:               ; preds = %for.inc64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body26.i

for.end66.i:                                      ; preds = %for.inc64.i
  %conv28.1.i = zext i8 %call6.peel10.i to i32
  %conv48.1.i = zext i8 %call13.peel15.i to i32
  br label %for.body26.1.i

for.body26.1.i:                                   ; preds = %for.inc64.1.i.for.body26.1.i_crit_edge, %for.end66.i
  %bit.05.1.i = phi i32 [ 0, %for.end66.i ], [ %inc65.1.i, %for.inc64.1.i.for.body26.1.i_crit_edge ]
  %shl.1.i = shl nuw nsw i32 1, %bit.05.1.i
  %and.1.i = and i32 %shl.1.i, %conv28.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %cmp29.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %cmp29.not.1.i, label %for.body26.1.i.if.end46.1.i_crit_edge, label %do.end36.1.i

for.body26.1.i.if.end46.1.i_crit_edge:            ; preds = %for.body26.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46.1.i

do.end36.1.i:                                     ; preds = %for.body26.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx38.1.i = getelementptr [8 x ptr], ptr @split_status_strings, i32 0, i32 %bit.05.1.i
  %20 = ptrtoint ptr %arrayidx38.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx38.1.i, align 4
  %22 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i.i, align 4
  %call41.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef %21, ptr noundef %23, ptr noundef nonnull @.str.109) #7
  br label %if.end46.1.i

if.end46.1.i:                                     ; preds = %do.end36.1.i, %for.body26.1.i.if.end46.1.i_crit_edge
  %and50.1.i = and i32 %shl.1.i, %conv48.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.1.i)
  %cmp51.not.1.i = icmp eq i32 %and50.1.i, 0
  br i1 %cmp51.not.1.i, label %if.end46.1.i.for.inc64.1.i_crit_edge, label %do.end58.1.i

if.end46.1.i.for.inc64.1.i_crit_edge:             ; preds = %if.end46.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.1.i

do.end58.1.i:                                     ; preds = %if.end46.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx60.1.i = getelementptr [8 x ptr], ptr @split_status_strings, i32 0, i32 %bit.05.1.i
  %24 = ptrtoint ptr %arrayidx60.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx60.1.i, align 4
  %26 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name.i.i, align 4
  %call62.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef %25, ptr noundef %27, ptr noundef nonnull @.str.99) #7
  br label %for.inc64.1.i

for.inc64.1.i:                                    ; preds = %do.end58.1.i, %if.end46.1.i.for.inc64.1.i_crit_edge
  %inc65.1.i = add nuw nsw i32 %bit.05.1.i, 1
  %exitcond22.1.not.i = icmp eq i32 %inc65.1.i, 8
  br i1 %exitcond22.1.not.i, label %for.end66.1.i, label %for.inc64.1.i.for.body26.1.i_crit_edge

for.inc64.1.i.for.body26.1.i_crit_edge:           ; preds = %for.inc64.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body26.1.i

for.end66.1.i:                                    ; preds = %for.inc64.1.i
  %conv28.2.i = zext i8 %call6.i to i32
  %and.2.i = and i32 %conv28.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %cmp29.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %cmp29.not.2.i, label %for.end66.1.i.for.inc64.2.i_crit_edge, label %do.end36.2.i

for.end66.1.i.for.inc64.2.i_crit_edge:            ; preds = %for.end66.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.2.i

do.end36.2.i:                                     ; preds = %for.end66.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name.i.i, align 4
  %call41.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %29, ptr noundef nonnull @.str.110) #7
  br label %for.inc64.2.i

for.inc64.2.i:                                    ; preds = %do.end36.2.i, %for.end66.1.i.for.inc64.2.i_crit_edge
  %and.2.i.1 = and i32 %conv28.2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.1)
  %cmp29.not.2.i.1 = icmp eq i32 %and.2.i.1, 0
  br i1 %cmp29.not.2.i.1, label %for.inc64.2.i.for.inc64.2.i.1_crit_edge, label %do.end36.2.i.1

for.inc64.2.i.for.inc64.2.i.1_crit_edge:          ; preds = %for.inc64.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.2.i.1

do.end36.2.i.1:                                   ; preds = %for.inc64.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name.i.i, align 4
  %call41.2.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %31, ptr noundef nonnull @.str.110) #7
  br label %for.inc64.2.i.1

for.inc64.2.i.1:                                  ; preds = %do.end36.2.i.1, %for.inc64.2.i.for.inc64.2.i.1_crit_edge
  %and.2.i.2 = and i32 %conv28.2.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.2)
  %cmp29.not.2.i.2 = icmp eq i32 %and.2.i.2, 0
  br i1 %cmp29.not.2.i.2, label %for.inc64.2.i.1.for.inc64.2.i.2_crit_edge, label %do.end36.2.i.2

for.inc64.2.i.1.for.inc64.2.i.2_crit_edge:        ; preds = %for.inc64.2.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.2.i.2

do.end36.2.i.2:                                   ; preds = %for.inc64.2.i.1
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name.i.i, align 4
  %call41.2.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %33, ptr noundef nonnull @.str.110) #7
  br label %for.inc64.2.i.2

for.inc64.2.i.2:                                  ; preds = %do.end36.2.i.2, %for.inc64.2.i.1.for.inc64.2.i.2_crit_edge
  %and.2.i.3 = and i32 %conv28.2.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.3)
  %cmp29.not.2.i.3 = icmp eq i32 %and.2.i.3, 0
  br i1 %cmp29.not.2.i.3, label %for.inc64.2.i.2.for.inc64.2.i.3_crit_edge, label %do.end36.2.i.3

for.inc64.2.i.2.for.inc64.2.i.3_crit_edge:        ; preds = %for.inc64.2.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.2.i.3

do.end36.2.i.3:                                   ; preds = %for.inc64.2.i.2
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name.i.i, align 4
  %call41.2.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %35, ptr noundef nonnull @.str.110) #7
  br label %for.inc64.2.i.3

for.inc64.2.i.3:                                  ; preds = %do.end36.2.i.3, %for.inc64.2.i.2.for.inc64.2.i.3_crit_edge
  %and.2.i.4 = and i32 %conv28.2.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.4)
  %cmp29.not.2.i.4 = icmp eq i32 %and.2.i.4, 0
  br i1 %cmp29.not.2.i.4, label %for.inc64.2.i.3.for.inc64.2.i.4_crit_edge, label %do.end36.2.i.4

for.inc64.2.i.3.for.inc64.2.i.4_crit_edge:        ; preds = %for.inc64.2.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.2.i.4

do.end36.2.i.4:                                   ; preds = %for.inc64.2.i.3
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name.i.i, align 4
  %call41.2.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %37, ptr noundef nonnull @.str.110) #7
  br label %for.inc64.2.i.4

for.inc64.2.i.4:                                  ; preds = %do.end36.2.i.4, %for.inc64.2.i.3.for.inc64.2.i.4_crit_edge
  %and.2.i.5 = and i32 %conv28.2.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.5)
  %cmp29.not.2.i.5 = icmp eq i32 %and.2.i.5, 0
  br i1 %cmp29.not.2.i.5, label %for.inc64.2.i.4.for.inc64.2.i.5_crit_edge, label %do.end36.2.i.5

for.inc64.2.i.4.for.inc64.2.i.5_crit_edge:        ; preds = %for.inc64.2.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.2.i.5

do.end36.2.i.5:                                   ; preds = %for.inc64.2.i.4
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name.i.i, align 4
  %call41.2.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %39, ptr noundef nonnull @.str.110) #7
  br label %for.inc64.2.i.5

for.inc64.2.i.5:                                  ; preds = %do.end36.2.i.5, %for.inc64.2.i.4.for.inc64.2.i.5_crit_edge
  %and.2.i.6 = and i32 %conv28.2.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.6)
  %cmp29.not.2.i.6 = icmp eq i32 %and.2.i.6, 0
  br i1 %cmp29.not.2.i.6, label %for.inc64.2.i.5.for.inc64.2.i.6_crit_edge, label %do.end36.2.i.6

for.inc64.2.i.5.for.inc64.2.i.6_crit_edge:        ; preds = %for.inc64.2.i.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.2.i.6

do.end36.2.i.6:                                   ; preds = %for.inc64.2.i.5
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name.i.i, align 4
  %call41.2.i.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %41, ptr noundef nonnull @.str.110) #7
  br label %for.inc64.2.i.6

for.inc64.2.i.6:                                  ; preds = %do.end36.2.i.6, %for.inc64.2.i.5.for.inc64.2.i.6_crit_edge
  %and.2.i.7 = and i32 %conv28.2.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.7)
  %cmp29.not.2.i.7 = icmp eq i32 %and.2.i.7, 0
  br i1 %cmp29.not.2.i.7, label %for.inc64.2.i.6.for.inc64.2.i.7_crit_edge, label %do.end36.2.i.7

for.inc64.2.i.6.for.inc64.2.i.7_crit_edge:        ; preds = %for.inc64.2.i.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.2.i.7

do.end36.2.i.7:                                   ; preds = %for.inc64.2.i.6
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name.i.i, align 4
  %call41.2.i.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %43, ptr noundef nonnull @.str.110) #7
  br label %for.inc64.2.i.7

for.inc64.2.i.7:                                  ; preds = %do.end36.2.i.7, %for.inc64.2.i.6.for.inc64.2.i.7_crit_edge
  %conv28.3.i = zext i8 %call6.i.1 to i32
  %and.3.i = and i32 %conv28.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %cmp29.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %cmp29.not.3.i, label %for.inc64.2.i.7.for.inc64.3.i_crit_edge, label %do.end36.3.i

for.inc64.2.i.7.for.inc64.3.i_crit_edge:          ; preds = %for.inc64.2.i.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.3.i

do.end36.3.i:                                     ; preds = %for.inc64.2.i.7
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name.i.i, align 4
  %call41.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %45, ptr noundef nonnull @.str.111) #7
  br label %for.inc64.3.i

for.inc64.3.i:                                    ; preds = %do.end36.3.i, %for.inc64.2.i.7.for.inc64.3.i_crit_edge
  %and.3.i.1 = and i32 %conv28.3.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.1)
  %cmp29.not.3.i.1 = icmp eq i32 %and.3.i.1, 0
  br i1 %cmp29.not.3.i.1, label %for.inc64.3.i.for.inc64.3.i.1_crit_edge, label %do.end36.3.i.1

for.inc64.3.i.for.inc64.3.i.1_crit_edge:          ; preds = %for.inc64.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.3.i.1

do.end36.3.i.1:                                   ; preds = %for.inc64.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name.i.i, align 4
  %call41.3.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %47, ptr noundef nonnull @.str.111) #7
  br label %for.inc64.3.i.1

for.inc64.3.i.1:                                  ; preds = %do.end36.3.i.1, %for.inc64.3.i.for.inc64.3.i.1_crit_edge
  %and.3.i.2 = and i32 %conv28.3.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.2)
  %cmp29.not.3.i.2 = icmp eq i32 %and.3.i.2, 0
  br i1 %cmp29.not.3.i.2, label %for.inc64.3.i.1.for.inc64.3.i.2_crit_edge, label %do.end36.3.i.2

for.inc64.3.i.1.for.inc64.3.i.2_crit_edge:        ; preds = %for.inc64.3.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.3.i.2

do.end36.3.i.2:                                   ; preds = %for.inc64.3.i.1
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name.i.i, align 4
  %call41.3.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %49, ptr noundef nonnull @.str.111) #7
  br label %for.inc64.3.i.2

for.inc64.3.i.2:                                  ; preds = %do.end36.3.i.2, %for.inc64.3.i.1.for.inc64.3.i.2_crit_edge
  %and.3.i.3 = and i32 %conv28.3.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.3)
  %cmp29.not.3.i.3 = icmp eq i32 %and.3.i.3, 0
  br i1 %cmp29.not.3.i.3, label %for.inc64.3.i.2.for.inc64.3.i.3_crit_edge, label %do.end36.3.i.3

for.inc64.3.i.2.for.inc64.3.i.3_crit_edge:        ; preds = %for.inc64.3.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.3.i.3

do.end36.3.i.3:                                   ; preds = %for.inc64.3.i.2
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name.i.i, align 4
  %call41.3.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %51, ptr noundef nonnull @.str.111) #7
  br label %for.inc64.3.i.3

for.inc64.3.i.3:                                  ; preds = %do.end36.3.i.3, %for.inc64.3.i.2.for.inc64.3.i.3_crit_edge
  %and.3.i.4 = and i32 %conv28.3.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.4)
  %cmp29.not.3.i.4 = icmp eq i32 %and.3.i.4, 0
  br i1 %cmp29.not.3.i.4, label %for.inc64.3.i.3.for.inc64.3.i.4_crit_edge, label %do.end36.3.i.4

for.inc64.3.i.3.for.inc64.3.i.4_crit_edge:        ; preds = %for.inc64.3.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.3.i.4

do.end36.3.i.4:                                   ; preds = %for.inc64.3.i.3
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name.i.i, align 4
  %call41.3.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %53, ptr noundef nonnull @.str.111) #7
  br label %for.inc64.3.i.4

for.inc64.3.i.4:                                  ; preds = %do.end36.3.i.4, %for.inc64.3.i.3.for.inc64.3.i.4_crit_edge
  %and.3.i.5 = and i32 %conv28.3.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.5)
  %cmp29.not.3.i.5 = icmp eq i32 %and.3.i.5, 0
  br i1 %cmp29.not.3.i.5, label %for.inc64.3.i.4.for.inc64.3.i.5_crit_edge, label %do.end36.3.i.5

for.inc64.3.i.4.for.inc64.3.i.5_crit_edge:        ; preds = %for.inc64.3.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.3.i.5

do.end36.3.i.5:                                   ; preds = %for.inc64.3.i.4
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name.i.i, align 4
  %call41.3.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %55, ptr noundef nonnull @.str.111) #7
  br label %for.inc64.3.i.5

for.inc64.3.i.5:                                  ; preds = %do.end36.3.i.5, %for.inc64.3.i.4.for.inc64.3.i.5_crit_edge
  %and.3.i.6 = and i32 %conv28.3.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.6)
  %cmp29.not.3.i.6 = icmp eq i32 %and.3.i.6, 0
  br i1 %cmp29.not.3.i.6, label %for.inc64.3.i.5.for.inc64.3.i.6_crit_edge, label %do.end36.3.i.6

for.inc64.3.i.5.for.inc64.3.i.6_crit_edge:        ; preds = %for.inc64.3.i.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.3.i.6

do.end36.3.i.6:                                   ; preds = %for.inc64.3.i.5
  call void @__sanitizer_cov_trace_pc() #6
  %56 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name.i.i, align 4
  %call41.3.i.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %57, ptr noundef nonnull @.str.111) #7
  br label %for.inc64.3.i.6

for.inc64.3.i.6:                                  ; preds = %do.end36.3.i.6, %for.inc64.3.i.5.for.inc64.3.i.6_crit_edge
  %and.3.i.7 = and i32 %conv28.3.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.7)
  %cmp29.not.3.i.7 = icmp eq i32 %and.3.i.7, 0
  br i1 %cmp29.not.3.i.7, label %for.inc64.3.i.6.for.inc64.3.i.7_crit_edge, label %do.end36.3.i.7

for.inc64.3.i.6.for.inc64.3.i.7_crit_edge:        ; preds = %for.inc64.3.i.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc64.3.i.7

do.end36.3.i.7:                                   ; preds = %for.inc64.3.i.6
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name.i.i, align 4
  %call41.3.i.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %59, ptr noundef nonnull @.str.111) #7
  br label %for.inc64.3.i.7

for.inc64.3.i.7:                                  ; preds = %do.end36.3.i.7, %for.inc64.3.i.6.for.inc64.3.i.7_crit_edge
  %60 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_softc.i, align 4
  tail call void @ahd_pci_write_config(ptr noundef %61, i32 noundef 154, i32 noundef %conv2.i, i32 noundef 2) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 3, i8 noundef zeroext 1) #4
  tail call void @ahd_restore_modes(ptr noundef %ahd, i8 noundef zeroext %call4.i) #4
  br label %if.end

if.end:                                           ; preds = %for.inc64.3.i.7, %entry.if.end_crit_edge
  %and2 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %if.end.cleanup62_crit_edge, label %for.inc.7

if.end.cleanup62_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup62

for.inc.7:                                        ; preds = %if.end
  %name.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 62
  %62 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name.i, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %63) #7
  %call9 = tail call zeroext i8 @ahd_save_modes(ptr noundef %ahd) #4
  tail call void @ahd_dump_card_state(ptr noundef %ahd) #4
  tail call void @ahd_set_modes(ptr noundef %ahd, i32 noundef 4, i32 noundef 4) #4
  %call16 = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 160) #4
  %64 = ptrtoint ptr %pci_status to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %call16, ptr %pci_status, align 1
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 160, i8 noundef zeroext %call16) #4
  %call16.1 = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 161) #4
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %call16.1, ptr %0, align 1
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 161, i8 noundef zeroext %call16.1) #4
  %call16.2 = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 162) #4
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %call16.2, ptr %1, align 1
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 162, i8 noundef zeroext %call16.2) #4
  %call16.3 = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 163) #4
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %call16.3, ptr %2, align 1
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 163, i8 noundef zeroext %call16.3) #4
  %call16.4 = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 164) #4
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %call16.4, ptr %3, align 1
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 164, i8 noundef zeroext %call16.4) #4
  %call16.6 = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 166) #4
  %69 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %call16.6, ptr %4, align 1
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 166, i8 noundef zeroext %call16.6) #4
  %call16.7 = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 167) #4
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %call16.7, ptr %5, align 1
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 167, i8 noundef zeroext %call16.7) #4
  br label %for.body22

for.body22:                                       ; preds = %cleanup.for.body22_crit_edge, %for.inc.7
  %i.1108 = phi i32 [ %inc58, %cleanup.for.body22_crit_edge ], [ 0, %for.inc.7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.1108)
  %cmp23 = icmp eq i32 %i.1108, 5
  br i1 %cmp23, label %for.body22.cleanup_crit_edge, label %for.cond27.preheader

for.body22.cleanup_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond27.preheader:                             ; preds = %for.body22
  %arrayidx31 = getelementptr [8 x i8], ptr %pci_status, i32 0, i32 %i.1108
  %71 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %72 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.1108)
  %cmp38 = icmp eq i32 %i.1108, 7
  %arrayidx51 = getelementptr [8 x ptr], ptr @pci_status_source, i32 0, i32 %i.1108
  %and33 = and i32 %conv32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %cmp34.not = icmp eq i32 %and33, 0
  br i1 %cmp34.not, label %for.cond27.preheader.for.inc54_crit_edge, label %if.then36

for.cond27.preheader.for.inc54_crit_edge:         ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc54

if.then36:                                        ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %73 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name.i, align 4
  %75 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx51, align 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %74, ptr noundef %76) #7
  br label %for.inc54

for.inc54:                                        ; preds = %if.then36, %for.cond27.preheader.for.inc54_crit_edge
  %and33.1 = and i32 %conv32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.1)
  %cmp34.not.1 = icmp eq i32 %and33.1, 0
  br i1 %cmp34.not.1, label %for.inc54.for.inc54.1_crit_edge, label %if.then36.1

for.inc54.for.inc54.1_crit_edge:                  ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc54.1

if.then36.1:                                      ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #6
  %77 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name.i, align 4
  %79 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx51, align 4
  %call52.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %78, ptr noundef %80) #7
  br label %for.inc54.1

for.inc54.1:                                      ; preds = %if.then36.1, %for.inc54.for.inc54.1_crit_edge
  %and33.2 = and i32 %conv32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.2)
  %cmp34.not.2 = icmp eq i32 %and33.2, 0
  br i1 %cmp34.not.2, label %for.inc54.1.for.inc54.2_crit_edge, label %if.then36.2

for.inc54.1.for.inc54.2_crit_edge:                ; preds = %for.inc54.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc54.2

if.then36.2:                                      ; preds = %for.inc54.1
  call void @__sanitizer_cov_trace_pc() #6
  %81 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name.i, align 4
  %83 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx51, align 4
  %call52.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %82, ptr noundef %84) #7
  br label %for.inc54.2

for.inc54.2:                                      ; preds = %if.then36.2, %for.inc54.1.for.inc54.2_crit_edge
  %and33.3 = and i32 %conv32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.3)
  %cmp34.not.3 = icmp eq i32 %and33.3, 0
  br i1 %cmp34.not.3, label %for.inc54.2.for.inc54.3_crit_edge, label %if.then36.3

for.inc54.2.for.inc54.3_crit_edge:                ; preds = %for.inc54.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc54.3

if.then36.3:                                      ; preds = %for.inc54.2
  call void @__sanitizer_cov_trace_pc() #6
  %s.0.3 = select i1 %cmp38, ptr @.str.90, ptr @.str.115
  %85 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name.i, align 4
  %87 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx51, align 4
  %call52.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %s.0.3, ptr noundef %86, ptr noundef %88) #7
  br label %for.inc54.3

for.inc54.3:                                      ; preds = %if.then36.3, %for.inc54.2.for.inc54.3_crit_edge
  %and33.4 = and i32 %conv32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.4)
  %cmp34.not.4 = icmp eq i32 %and33.4, 0
  br i1 %cmp34.not.4, label %for.inc54.3.for.inc54.4_crit_edge, label %if.then36.4

for.inc54.3.for.inc54.4_crit_edge:                ; preds = %for.inc54.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc54.4

if.then36.4:                                      ; preds = %for.inc54.3
  call void @__sanitizer_cov_trace_pc() #6
  %89 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name.i, align 4
  %91 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx51, align 4
  %call52.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %90, ptr noundef %92) #7
  br label %for.inc54.4

for.inc54.4:                                      ; preds = %if.then36.4, %for.inc54.3.for.inc54.4_crit_edge
  %and33.5 = and i32 %conv32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.5)
  %cmp34.not.5 = icmp eq i32 %and33.5, 0
  br i1 %cmp34.not.5, label %for.inc54.4.for.inc54.5_crit_edge, label %if.then36.5

for.inc54.4.for.inc54.5_crit_edge:                ; preds = %for.inc54.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc54.5

if.then36.5:                                      ; preds = %for.inc54.4
  call void @__sanitizer_cov_trace_pc() #6
  %93 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name.i, align 4
  %95 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx51, align 4
  %call52.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %94, ptr noundef %96) #7
  br label %for.inc54.5

for.inc54.5:                                      ; preds = %if.then36.5, %for.inc54.4.for.inc54.5_crit_edge
  %and33.6 = and i32 %conv32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.6)
  %cmp34.not.6 = icmp eq i32 %and33.6, 0
  br i1 %cmp34.not.6, label %for.inc54.5.for.inc54.6_crit_edge, label %if.then36.6

for.inc54.5.for.inc54.6_crit_edge:                ; preds = %for.inc54.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc54.6

if.then36.6:                                      ; preds = %for.inc54.5
  call void @__sanitizer_cov_trace_pc() #6
  %97 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %name.i, align 4
  %99 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx51, align 4
  %call52.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %98, ptr noundef %100) #7
  br label %for.inc54.6

for.inc54.6:                                      ; preds = %if.then36.6, %for.inc54.5.for.inc54.6_crit_edge
  %and33.7 = and i32 %conv32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.7)
  %cmp34.not.7 = icmp eq i32 %and33.7, 0
  br i1 %cmp34.not.7, label %for.inc54.6.cleanup_crit_edge, label %if.then36.7

for.inc54.6.cleanup_crit_edge:                    ; preds = %for.inc54.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then36.7:                                      ; preds = %for.inc54.6
  call void @__sanitizer_cov_trace_pc() #6
  %101 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %name.i, align 4
  %103 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx51, align 4
  %call52.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %102, ptr noundef %104) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then36.7, %for.inc54.6.cleanup_crit_edge, %for.body22.cleanup_crit_edge
  %inc58 = add nuw nsw i32 %i.1108, 1
  %exitcond.not = icmp eq i32 %inc58, 8
  br i1 %exitcond.not, label %for.end59, label %cleanup.for.body22_crit_edge

cleanup.for.body22_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body22

for.end59:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  %dev_softc = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 11
  %105 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev_softc, align 4
  %call60 = tail call i32 @ahd_pci_read_config(ptr noundef %106, i32 noundef 7, i32 noundef 1) #4
  %107 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev_softc, align 4
  tail call void @ahd_pci_write_config(ptr noundef %108, i32 noundef 7, i32 noundef %call60, i32 noundef 1) #4
  tail call void @ahd_restore_modes(ptr noundef %ahd, i8 noundef zeroext %call9) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 3, i8 noundef zeroext 16) #4
  tail call void @ahd_unpause(ptr noundef %ahd) #4
  br label %cleanup62

cleanup62:                                        ; preds = %for.end59, %if.end.cleanup62_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pci_status) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_set_modes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ahd_check_extport(ptr noundef %ahd) unnamed_addr #0 align 64 {
entry:
  %termctl.i = alloca i8, align 1
  %vpd = alloca %struct.vpd_config, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vpd) #4
  %0 = call ptr @memset(ptr %vpd, i32 255, i32 64)
  %seep_config = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 24
  %1 = ptrtoint ptr %seep_config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %seep_config, align 4
  %call = tail call i32 @ahd_acquire_seeprom(ptr noundef %ahd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.then65_crit_edge, label %if.then

entry.if.then65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then65

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic79xx_verbose to i32))
  %3 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 62
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %channel = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 37
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %channel, align 4
  %conv = zext i8 %7 to i32
  %sub = shl nuw nsw i32 %conv, 6
  %add = add nsw i32 %sub, -4032
  %div246 = lshr exact i32 %add, 1
  %call5 = call i32 @ahd_read_seeprom(ptr noundef %ahd, ptr noundef nonnull %vpd, i32 noundef %div246, i32 noundef 32, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = call i32 @ahd_parse_vpddata(ptr noundef %ahd, ptr noundef nonnull %vpd) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %error.0 = phi i32 [ %call8, %if.then7 ], [ %call5, %if.end.if.end9_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic79xx_verbose to i32))
  %8 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.end9.if.end29_crit_edge, label %if.end20

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end20:                                         ; preds = %if.end9
  %name.i247 = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 62
  %9 = ptrtoint ptr %name.i247 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name.i247, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %cmp17 = icmp eq i32 %error.0, 0
  %cond = select i1 %cmp17, ptr @.str.29, ptr @.str.30
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %10, ptr noundef nonnull %cond) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic79xx_verbose to i32))
  %.pr = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool21.not = icmp eq i32 %.pr, 0
  br i1 %tobool21.not, label %if.end20.if.end29_crit_edge, label %do.end25

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %name.i247 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name.i247, align 4
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %12) #7
  br label %if.end29

if.end29:                                         ; preds = %do.end25, %if.end20.if.end29_crit_edge, %if.end9.if.end29_crit_edge
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %channel, align 4
  %conv31 = zext i8 %14 to i32
  %sub32 = shl nuw nsw i32 %conv31, 5
  %mul33 = add nsw i32 %sub32, -2080
  %call34 = call i32 @ahd_read_seeprom(ptr noundef %ahd, ptr noundef %2, i32 noundef %mul33, i32 noundef 32, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.else, label %if.end29.if.end63.thread254_crit_edge

if.end29.if.end63.thread254_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63.thread254

if.else:                                          ; preds = %if.end29
  %call43 = call i32 @ahd_verify_cksum(ptr noundef %2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic79xx_verbose to i32))
  %15 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool44.not = icmp eq i32 %15, 0
  br i1 %tobool44.not, label %if.end63, label %if.then45

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp46 = icmp eq i32 %call43, 0
  br i1 %cmp46, label %if.then45.if.end63.thread254_crit_edge, label %if.end63.thread257

if.then45.if.end63.thread254_crit_edge:           ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63.thread254

if.end63.thread257:                               ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #7
  call void @ahd_release_seeprom(ptr noundef %ahd) #4
  br label %land.lhs.true130

if.end63.thread254:                               ; preds = %if.then45.if.end63.thread254_crit_edge, %if.end29.if.end63.thread254_crit_edge
  %.str.35.sink = phi ptr [ @.str.35, %if.end29.if.end63.thread254_crit_edge ], [ @.str.38, %if.then45.if.end63.thread254_crit_edge ]
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.35.sink) #7
  call void @ahd_release_seeprom(ptr noundef %ahd) #4
  br label %if.then65

if.end63:                                         ; preds = %if.else
  call void @ahd_release_seeprom(ptr noundef %ahd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool64.not = icmp eq i32 %call43, 0
  br i1 %tobool64.not, label %if.end63.if.then65_crit_edge, label %if.end63.land.lhs.true130_crit_edge

if.end63.land.lhs.true130_crit_edge:              ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true130

if.end63.if.then65_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then65

if.then65:                                        ; preds = %if.end63.if.then65_crit_edge, %if.end63.thread254, %entry.if.then65_crit_edge
  call void @ahd_set_scbptr(ptr noundef %ahd, i32 noundef 255) #4
  %call66 = call i32 @ahd_inb_scbram(ptr noundef %ahd, i32 noundef 428) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call66)
  %cmp67.not = icmp eq i32 %call66, 255
  br i1 %cmp67.not, label %if.then65.if.then162_crit_edge, label %land.lhs.true

if.then65.if.then162_crit_edge:                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then162

land.lhs.true:                                    ; preds = %if.then65
  %call69 = call i32 @ahd_inb_scbram(ptr noundef %ahd, i32 noundef 384) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %call69)
  %cmp70 = icmp eq i32 %call69, 65
  br i1 %cmp70, label %land.lhs.true72, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

land.lhs.true72:                                  ; preds = %land.lhs.true
  %call73 = call i32 @ahd_inb_scbram(ptr noundef %ahd, i32 noundef 385) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %call73)
  %cmp74 = icmp eq i32 %call73, 68
  br i1 %cmp74, label %land.lhs.true76, label %land.lhs.true72.lor.lhs.false_crit_edge

land.lhs.true72.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

land.lhs.true76:                                  ; preds = %land.lhs.true72
  %call77 = call i32 @ahd_inb_scbram(ptr noundef %ahd, i32 noundef 386) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %call77)
  %cmp78 = icmp eq i32 %call77, 80
  br i1 %cmp78, label %land.lhs.true80, label %land.lhs.true76.lor.lhs.false_crit_edge

land.lhs.true76.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

land.lhs.true80:                                  ; preds = %land.lhs.true76
  %call81 = call i32 @ahd_inb_scbram(ptr noundef %ahd, i32 noundef 387) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %call81)
  %cmp82 = icmp eq i32 %call81, 84
  br i1 %cmp82, label %land.lhs.true80.if.then115_crit_edge, label %land.lhs.true80.lor.lhs.false_crit_edge

land.lhs.true80.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

land.lhs.true80.if.then115_crit_edge:             ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then115

lor.lhs.false:                                    ; preds = %land.lhs.true80.lor.lhs.false_crit_edge, %land.lhs.true76.lor.lhs.false_crit_edge, %land.lhs.true72.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge
  %call84 = call i32 @ahd_inb_scbram(ptr noundef %ahd, i32 noundef 384) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %call84)
  %cmp85 = icmp eq i32 %call84, 66
  br i1 %cmp85, label %land.lhs.true87, label %lor.lhs.false.lor.lhs.false99_crit_edge

lor.lhs.false.lor.lhs.false99_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false99

land.lhs.true87:                                  ; preds = %lor.lhs.false
  %call88 = call i32 @ahd_inb_scbram(ptr noundef %ahd, i32 noundef 385) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %call88)
  %cmp89 = icmp eq i32 %call88, 73
  br i1 %cmp89, label %land.lhs.true91, label %land.lhs.true87.lor.lhs.false99_crit_edge

land.lhs.true87.lor.lhs.false99_crit_edge:        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false99

land.lhs.true91:                                  ; preds = %land.lhs.true87
  %call92 = call i32 @ahd_inb_scbram(ptr noundef %ahd, i32 noundef 386) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %call92)
  %cmp93 = icmp eq i32 %call92, 79
  br i1 %cmp93, label %land.lhs.true95, label %land.lhs.true91.lor.lhs.false99_crit_edge

land.lhs.true91.lor.lhs.false99_crit_edge:        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false99

land.lhs.true95:                                  ; preds = %land.lhs.true91
  %call96 = call i32 @ahd_inb_scbram(ptr noundef %ahd, i32 noundef 387) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %call96)
  %cmp97 = icmp eq i32 %call96, 83
  br i1 %cmp97, label %land.lhs.true95.if.then115_crit_edge, label %land.lhs.true95.lor.lhs.false99_crit_edge

land.lhs.true95.lor.lhs.false99_crit_edge:        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false99

land.lhs.true95.if.then115_crit_edge:             ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then115

lor.lhs.false99:                                  ; preds = %land.lhs.true95.lor.lhs.false99_crit_edge, %land.lhs.true91.lor.lhs.false99_crit_edge, %land.lhs.true87.lor.lhs.false99_crit_edge, %lor.lhs.false.lor.lhs.false99_crit_edge
  %call100 = call i32 @ahd_inb_scbram(ptr noundef %ahd, i32 noundef 384) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %call100)
  %cmp101 = icmp eq i32 %call100, 65
  br i1 %cmp101, label %land.lhs.true103, label %lor.lhs.false99.if.then162_crit_edge

lor.lhs.false99.if.then162_crit_edge:             ; preds = %lor.lhs.false99
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then162

land.lhs.true103:                                 ; preds = %lor.lhs.false99
  %call104 = call i32 @ahd_inb_scbram(ptr noundef %ahd, i32 noundef 385) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %call104)
  %cmp105 = icmp eq i32 %call104, 83
  br i1 %cmp105, label %land.lhs.true107, label %land.lhs.true103.if.then162_crit_edge

land.lhs.true103.if.then162_crit_edge:            ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then162

land.lhs.true107:                                 ; preds = %land.lhs.true103
  %call108 = call i32 @ahd_inb_scbram(ptr noundef %ahd, i32 noundef 386) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %call108)
  %cmp109 = icmp eq i32 %call108, 80
  br i1 %cmp109, label %land.lhs.true111, label %land.lhs.true107.if.then162_crit_edge

land.lhs.true107.if.then162_crit_edge:            ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then162

land.lhs.true111:                                 ; preds = %land.lhs.true107
  %call112 = call i32 @ahd_inb_scbram(ptr noundef %ahd, i32 noundef 387) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %call112)
  %cmp113 = icmp eq i32 %call112, 73
  br i1 %cmp113, label %land.lhs.true111.if.then115_crit_edge, label %land.lhs.true111.if.then162_crit_edge

land.lhs.true111.if.then162_crit_edge:            ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then162

land.lhs.true111.if.then115_crit_edge:            ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then115

if.then115:                                       ; preds = %land.lhs.true111.if.then115_crit_edge, %land.lhs.true95.if.then115_crit_edge, %land.lhs.true80.if.then115_crit_edge
  call void @ahd_set_scbptr(ptr noundef %ahd, i32 noundef %call66) #4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then115
  %i.0263 = phi i32 [ 0, %if.then115 ], [ %add121, %for.body.for.body_crit_edge ]
  %sc_data.0262 = phi ptr [ %2, %if.then115 ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %add118 = add nuw nsw i32 %i.0263, 384
  %call119 = call i32 @ahd_inw_scbram(ptr noundef %ahd, i32 noundef %add118) #4
  %conv120 = trunc i32 %call119 to i16
  %incdec.ptr = getelementptr i16, ptr %sc_data.0262, i32 1
  %16 = ptrtoint ptr %sc_data.0262 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv120, ptr %sc_data.0262, align 2
  %add121 = add nuw nsw i32 %i.0263, 2
  %cmp116 = icmp ult i32 %i.0263, 62
  br i1 %cmp116, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %call122 = call i32 @ahd_verify_cksum(ptr noundef %2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %for.end.if.then162_crit_edge, label %if.then124

for.end.if.then162_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then162

if.then124:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %flags = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 23
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %or = or i32 %18, 524288
  store i32 %or, ptr %flags, align 4
  br label %land.lhs.true130

land.lhs.true130:                                 ; preds = %if.then124, %if.end63.land.lhs.true130_crit_edge, %if.end63.thread257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahd_debug to i32))
  %19 = load i32, ptr @ahd_debug, align 4
  %and = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp131.not = icmp eq i32 %and, 0
  br i1 %cmp131.not, label %land.lhs.true130.if.else177_crit_edge, label %if.then133

land.lhs.true130.if.else177_crit_edge:            ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else177

if.then133:                                       ; preds = %land.lhs.true130
  %name.i249 = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 62
  %20 = ptrtoint ptr %name.i249 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name.i249, align 4
  %call141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %21) #7
  br label %do.end148

do.end148:                                        ; preds = %do.end148.do.end148_crit_edge, %if.then133
  %i135.0264 = phi i32 [ 0, %if.then133 ], [ %add153, %do.end148.do.end148_crit_edge ]
  %arrayidx = getelementptr i16, ptr %2, i32 %i135.0264
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 2
  %conv150 = zext i16 %23 to i32
  %call151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %conv150) #7
  %add153 = add nuw nsw i32 %i135.0264, 2
  %cmp143 = icmp ult i32 %i135.0264, 62
  br i1 %cmp143, label %do.end148.do.end148_crit_edge, label %do.end157

do.end148.do.end148_crit_edge:                    ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end148

do.end157:                                        ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #6
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #7
  br label %if.else177

if.then162:                                       ; preds = %for.end.if.then162_crit_edge, %land.lhs.true111.if.then162_crit_edge, %land.lhs.true107.if.then162_crit_edge, %land.lhs.true103.if.then162_crit_edge, %lor.lhs.false99.if.then162_crit_edge, %if.then65.if.then162_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic79xx_verbose to i32))
  %24 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool163.not = icmp eq i32 %24, 0
  br i1 %tobool163.not, label %if.then162.if.end171_crit_edge, label %do.end167

if.then162.if.end171_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end171

do.end167:                                        ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #6
  %name.i250 = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 62
  %25 = ptrtoint ptr %name.i250 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name.i250, align 4
  %call170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %26) #7
  br label %if.end171

if.end171:                                        ; preds = %do.end167, %if.then162.if.end171_crit_edge
  %flags172 = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 23
  %27 = ptrtoint ptr %flags172 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags172, align 4
  %or173 = or i32 %28, 4
  store i32 %or173, ptr %flags172, align 4
  %call174 = call i32 @ahd_default_config(ptr noundef %ahd) #4
  %29 = ptrtoint ptr %seep_config to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %seep_config, align 4
  call void @kfree(ptr noundef %30) #4
  %31 = ptrtoint ptr %seep_config to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %seep_config, align 4
  br label %if.end181

if.else177:                                       ; preds = %do.end157, %land.lhs.true130.if.else177_crit_edge
  %call178 = call i32 @ahd_parse_cfgdata(ptr noundef %ahd, ptr noundef %2) #4
  %adapter_control179 = getelementptr inbounds %struct.seeprom_config, ptr %2, i32 0, i32 2
  %32 = ptrtoint ptr %adapter_control179 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %adapter_control179, align 2
  %conv180 = zext i16 %33 to i32
  br label %if.end181

if.end181:                                        ; preds = %if.else177, %if.end171
  %error.1 = phi i32 [ %call178, %if.else177 ], [ %call174, %if.end171 ]
  %adapter_control.0 = phi i32 [ %conv180, %if.else177 ], [ 9, %if.end171 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %cmp182.not = icmp eq i32 %error.1, 0
  br i1 %cmp182.not, label %if.end185, label %if.end181.cleanup_crit_edge

if.end181.cleanup_crit_edge:                      ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end185:                                        ; preds = %if.end181
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %termctl.i) #4
  %34 = ptrtoint ptr %termctl.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %termctl.i, align 1, !annotation !226
  %dev_softc.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 11
  %35 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_softc.i, align 4
  %call.i = call i32 @ahd_pci_read_config(ptr noundef %36, i32 noundef 64, i32 noundef 4) #4
  %and.i = and i32 %call.i, -3
  %flags.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 23
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 4
  %and1.i = lshr i32 %38, 7
  %39 = and i32 %and1.i, 2
  %spec.select.i = or i32 %39, %and.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic79xx_verbose to i32))
  %40 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %if.end185.if.end7.i_crit_edge, label %do.end.i

if.end185.if.end7.i_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i

do.end.i:                                         ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #6
  %name.i.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 62
  %41 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool5.not.i = icmp eq i32 %39, 0
  %cond.i = select i1 %tobool5.not.i, ptr @.str.58, ptr @.str.57
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %42, ptr noundef nonnull %cond.i) #7
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i, %if.end185.if.end7.i_crit_edge
  %43 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_softc.i, align 4
  call void @ahd_pci_write_config(ptr noundef %44, i32 noundef 64, i32 noundef %spec.select.i, i32 noundef 4) #4
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i, align 4
  %and10.i = and i32 %46, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %cmp11.not.i = icmp eq i32 %and10.i, 0
  br i1 %cmp11.not.i, label %if.end7.i.if.end14.i_crit_edge, label %if.then12.i

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  %call13.i = call i32 @ahd_write_flexport(ptr noundef %ahd, i32 noundef 1, i32 noundef 0) #4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end7.i.if.end14.i_crit_edge
  %call15.i = call i32 @ahd_read_flexport(ptr noundef %ahd, i32 noundef 0, ptr noundef nonnull %termctl.i) #4
  %and16.i = and i32 %adapter_control.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %cmp17.i = icmp eq i32 %and16.i, 0
  br i1 %cmp17.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic79xx_verbose to i32))
  %47 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool19.not.i = icmp eq i32 %47, 0
  br i1 %tobool19.not.i, label %if.then18.i.if.end27.i_crit_edge, label %do.end23.i

if.then18.i.if.end27.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27.i

do.end23.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i213.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 62
  %48 = ptrtoint ptr %name.i213.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name.i213.i, align 4
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %49) #7
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end23.i, %if.then18.i.if.end27.i_crit_edge
  %50 = ptrtoint ptr %termctl.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %termctl.i, align 1
  %52 = and i8 %51, -4
  %53 = trunc i32 %adapter_control.0 to i8
  %54 = lshr i8 %53, 1
  %55 = and i8 %54, 1
  %56 = or i8 %52, %55
  store i8 %56, ptr %termctl.i, align 1
  %and38.i = and i32 %adapter_control.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %cmp39.not.i = icmp eq i32 %and38.i, 0
  br i1 %cmp39.not.i, label %if.end27.i.if.end56.i_crit_edge, label %if.then41.i

if.end27.i.if.end56.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56.i

if.then41.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  %57 = or i8 %56, 2
  %58 = ptrtoint ptr %termctl.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %termctl.i, align 1
  br label %if.end56.i

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp46.not.i = icmp eq i32 %call15.i, 0
  br i1 %cmp46.not.i, label %if.end56.thread.i, label %do.end51.i

do.end51.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i214.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 62
  %59 = ptrtoint ptr %name.i214.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name.i214.i, align 4
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %60) #7
  %61 = ptrtoint ptr %termctl.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 3, ptr %termctl.i, align 1
  br label %if.end56.i

if.end56.i:                                       ; preds = %do.end51.i, %if.then41.i, %if.end27.i.if.end56.i_crit_edge
  %and57.i = and i32 %adapter_control.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %cmp58.i = icmp eq i32 %and57.i, 0
  br i1 %cmp58.i, label %if.end56.i.if.then60.i_crit_edge, label %if.else89.i

if.end56.i.if.then60.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then60.i

if.end56.thread.i:                                ; preds = %if.else.i
  %and57222.i = and i32 %adapter_control.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57222.i)
  %cmp58223.i = icmp eq i32 %and57222.i, 0
  br i1 %cmp58223.i, label %if.end56.thread.i.if.then60.i_crit_edge, label %if.end56.thread.i.if.end103.i_crit_edge

if.end56.thread.i.if.end103.i_crit_edge:          ; preds = %if.end56.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103.i

if.end56.thread.i.if.then60.i_crit_edge:          ; preds = %if.end56.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then60.i

if.then60.i:                                      ; preds = %if.end56.thread.i.if.then60.i_crit_edge, %if.end56.i.if.then60.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic79xx_verbose to i32))
  %62 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool61.not.i = icmp eq i32 %62, 0
  br i1 %tobool61.not.i, label %if.then60.i.if.end69.i_crit_edge, label %do.end65.i

if.then60.i.if.end69.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69.i

do.end65.i:                                       ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i215.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 62
  %63 = ptrtoint ptr %name.i215.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name.i215.i, align 4
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %64) #7
  br label %if.end69.i

if.end69.i:                                       ; preds = %do.end65.i, %if.then60.i.if.end69.i_crit_edge
  %65 = ptrtoint ptr %termctl.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %termctl.i, align 1
  %67 = and i8 %66, -13
  %68 = trunc i32 %adapter_control.0 to i8
  %69 = lshr i8 %68, 2
  %70 = and i8 %69, 4
  %71 = or i8 %67, %70
  store i8 %71, ptr %termctl.i, align 1
  %and81.i = and i32 %adapter_control.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %cmp82.not.i = icmp eq i32 %and81.i, 0
  br i1 %cmp82.not.i, label %if.end69.i.if.end103.i_crit_edge, label %if.then84.i

if.end69.i.if.end103.i_crit_edge:                 ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103.i

if.then84.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #6
  %72 = or i8 %71, 8
  %73 = ptrtoint ptr %termctl.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %termctl.i, align 1
  br label %if.end103.i

if.else89.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp90.not.i = icmp eq i32 %call15.i, 0
  br i1 %cmp90.not.i, label %if.else89.i.if.end103.i_crit_edge, label %do.end95.i

if.else89.i.if.end103.i_crit_edge:                ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103.i

do.end95.i:                                       ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i216.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 62
  %74 = ptrtoint ptr %name.i216.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %name.i216.i, align 4
  %call98.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %75) #7
  %76 = ptrtoint ptr %termctl.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %termctl.i, align 1
  %78 = or i8 %77, 12
  store i8 %78, ptr %termctl.i, align 1
  br label %if.end103.i

if.end103.i:                                      ; preds = %do.end95.i, %if.else89.i.if.end103.i_crit_edge, %if.then84.i, %if.end69.i.if.end103.i_crit_edge, %if.end56.thread.i.if.end103.i_crit_edge
  %call104.i = call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 61) #4
  %79 = and i8 %call104.i, -2
  %80 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags.i, align 4
  %and108.i = and i32 %81, -65
  store i32 %and108.i, ptr %flags.i, align 4
  %82 = ptrtoint ptr %termctl.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %termctl.i, align 1
  %84 = and i8 %83, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp111.not.i = icmp eq i8 %84, 0
  br i1 %cmp111.not.i, label %if.end103.i.if.end117.i_crit_edge, label %if.then113.i

if.end103.i.if.end117.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end117.i

if.then113.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #6
  %or115.i = or i32 %81, 64
  %85 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or115.i, ptr %flags.i, align 4
  %or116.i = or i8 %call104.i, 1
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then113.i, %if.end103.i.if.end117.i_crit_edge
  %sxfrctl1.0.i = phi i8 [ %or116.i, %if.then113.i ], [ %79, %if.end103.i.if.end117.i_crit_edge ]
  %conv119.i = or i8 %sxfrctl1.0.i, 1
  call void @ahd_outb(ptr noundef %ahd, i32 noundef 61, i8 noundef zeroext %conv119.i) #4
  call void @ahd_outb(ptr noundef %ahd, i32 noundef 61, i8 noundef zeroext %sxfrctl1.0.i) #4
  %86 = ptrtoint ptr %termctl.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %termctl.i, align 1
  %conv121.i = zext i8 %87 to i32
  %call122.i = call i32 @ahd_write_flexport(ptr noundef %ahd, i32 noundef 0, i32 noundef %conv121.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %cmp123.not.i = icmp eq i32 %call122.i, 0
  br i1 %cmp123.not.i, label %if.else132.i, label %do.end128.i

do.end128.i:                                      ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i217.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 62
  %88 = ptrtoint ptr %name.i217.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name.i217.i, align 4
  %call131.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %89) #7
  br label %ahd_configure_termination.exit

if.else132.i:                                     ; preds = %if.end117.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic79xx_verbose to i32))
  %90 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool133.not.i = icmp eq i32 %90, 0
  br i1 %tobool133.not.i, label %if.else132.i.ahd_configure_termination.exit_crit_edge, label %do.end137.i

if.else132.i.ahd_configure_termination.exit_crit_edge: ; preds = %if.else132.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ahd_configure_termination.exit

do.end137.i:                                      ; preds = %if.else132.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i218.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 62
  %91 = ptrtoint ptr %name.i218.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name.i218.i, align 4
  %93 = ptrtoint ptr %termctl.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %termctl.i, align 1
  %95 = and i8 %94, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool142.not.i = icmp eq i8 %95, 0
  %cond143.i = select i1 %tobool142.not.i, ptr @.str.78, ptr @.str.77
  %call144.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %92, ptr noundef nonnull %cond143.i) #7
  %96 = ptrtoint ptr %name.i218.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %name.i218.i, align 4
  %98 = ptrtoint ptr %termctl.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %termctl.i, align 1
  %100 = and i8 %99, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool152.not.i = icmp eq i8 %100, 0
  %cond153.i = select i1 %tobool152.not.i, ptr @.str.78, ptr @.str.77
  %call154.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %97, ptr noundef nonnull %cond153.i) #7
  %101 = ptrtoint ptr %name.i218.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %name.i218.i, align 4
  %103 = ptrtoint ptr %termctl.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %termctl.i, align 1
  %105 = and i8 %104, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool162.not.i = icmp eq i8 %105, 0
  %cond163.i = select i1 %tobool162.not.i, ptr @.str.78, ptr @.str.77
  %call164.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %102, ptr noundef nonnull %cond163.i) #7
  %106 = ptrtoint ptr %name.i218.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %name.i218.i, align 4
  %108 = ptrtoint ptr %termctl.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %termctl.i, align 1
  %110 = and i8 %109, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool172.not.i = icmp eq i8 %110, 0
  %cond173.i = select i1 %tobool172.not.i, ptr @.str.78, ptr @.str.77
  %call174.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %107, ptr noundef nonnull %cond173.i) #7
  br label %ahd_configure_termination.exit

ahd_configure_termination.exit:                   ; preds = %do.end137.i, %if.else132.i.ahd_configure_termination.exit_crit_edge, %do.end128.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %termctl.i) #4
  br label %cleanup

cleanup:                                          ; preds = %ahd_configure_termination.exit, %if.end181.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vpd) #4
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_pci_map_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahd_pci_suspend(ptr nocapture noundef %ahd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %call = tail call i32 @ahd_pci_read_config(ptr noundef %1, i32 noundef 64, i32 noundef 4) #4
  %pci_state = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 53, i32 1
  %2 = ptrtoint ptr %pci_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %pci_state, align 4
  %3 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_softc, align 4
  %call2 = tail call i32 @ahd_pci_read_config(ptr noundef %4, i32 noundef 4, i32 noundef 1) #4
  %conv = trunc i32 %call2 to i8
  %command = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 53, i32 1, i32 1
  %5 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %command, align 4
  %6 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_softc, align 4
  %call6 = tail call i32 @ahd_pci_read_config(ptr noundef %7, i32 noundef 12, i32 noundef 1) #4
  %conv7 = trunc i32 %call6 to i8
  %csize_lattime = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 53, i32 1, i32 2
  %8 = ptrtoint ptr %csize_lattime to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv7, ptr %csize_lattime, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahd_pci_resume(ptr nocapture noundef readonly %ahd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %pci_state = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 53, i32 1
  %2 = ptrtoint ptr %pci_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pci_state, align 4
  tail call void @ahd_pci_write_config(ptr noundef %1, i32 noundef 64, i32 noundef %3, i32 noundef 4) #4
  %4 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_softc, align 4
  %command = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 53, i32 1, i32 1
  %6 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %command, align 4
  %conv = zext i8 %7 to i32
  tail call void @ahd_pci_write_config(ptr noundef %5, i32 noundef 4, i32 noundef %conv, i32 noundef 1) #4
  %8 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_softc, align 4
  %csize_lattime = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 53, i32 1, i32 2
  %10 = ptrtoint ptr %csize_lattime to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %csize_lattime, align 1
  %conv7 = zext i8 %11 to i32
  tail call void @ahd_pci_write_config(ptr noundef %9, i32 noundef 12, i32 noundef %conv7, i32 noundef 1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahd_pci_test_register_access(ptr noundef %ahd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %call = tail call i32 @ahd_pci_read_config(ptr noundef %1, i32 noundef 4, i32 noundef 2) #4
  %2 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_softc, align 4
  %and = and i32 %call, -257
  tail call void @ahd_pci_write_config(ptr noundef %3, i32 noundef 4, i32 noundef %and, i32 noundef 2) #4
  %call2 = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call2)
  %cmp = icmp eq i8 %call2, -1
  br i1 %cmp, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.end:                                           ; preds = %entry
  %4 = and i8 %call2, -6
  %5 = or i8 %4, 4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 5, i8 noundef zeroext %5) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end
  %call9 = tail call i32 @ahd_is_paused(ptr noundef %ahd) #4
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  tail call void @ahd_set_modes(ptr noundef %ahd, i32 noundef 4, i32 noundef 4) #4
  %call12 = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 167) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 167, i8 noundef zeroext %call12) #4
  %6 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_softc, align 4
  %call16 = tail call i32 @ahd_pci_read_config(ptr noundef %7, i32 noundef 7, i32 noundef 1) #4
  %8 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_softc, align 4
  tail call void @ahd_pci_write_config(ptr noundef %9, i32 noundef 7, i32 noundef %call16, i32 noundef 1) #4
  tail call void @ahd_set_modes(ptr noundef %ahd, i32 noundef 3, i32 noundef 3) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 3, i8 noundef zeroext 16) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 214, i8 noundef zeroext -128) #4
  tail call void @ahd_outl(ptr noundef %ahd, i32 noundef 256, i32 noundef 1520784810) #4
  %call18 = tail call i32 @ahd_inl(ptr noundef %ahd, i32 noundef 256) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1520784810, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 1520784810
  br i1 %cmp19.not, label %if.end22, label %while.end.fail_crit_edge

while.end.fail_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.end22:                                         ; preds = %while.end
  %call23 = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 1) #4
  %10 = and i8 %call23, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp26.not = icmp eq i8 %10, 0
  br i1 %cmp26.not, label %if.end22.if.end36_crit_edge, label %if.then28

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then28:                                        ; preds = %if.end22
  tail call void @ahd_set_modes(ptr noundef %ahd, i32 noundef 4, i32 noundef 4) #4
  %call29 = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 167) #4
  %11 = and i8 %call29, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp32.not = icmp eq i8 %11, 0
  br i1 %cmp32.not, label %if.then28.if.end36_crit_edge, label %if.then28.fail_crit_edge

if.then28.fail_crit_edge:                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.end36:                                         ; preds = %if.then28.if.end36_crit_edge, %if.end22.if.end36_crit_edge
  br label %fail

fail:                                             ; preds = %if.end36, %if.then28.fail_crit_edge, %while.end.fail_crit_edge, %entry.fail_crit_edge
  %error.0 = phi i32 [ 5, %entry.fail_crit_edge ], [ 5, %while.end.fail_crit_edge ], [ 5, %if.then28.fail_crit_edge ], [ 0, %if.end36 ]
  %call37 = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 1) #4
  %12 = and i8 %call37, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp40.not = icmp eq i8 %12, 0
  br i1 %cmp40.not, label %fail.if.end49_crit_edge, label %if.then42

fail.if.end49_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then42:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ahd_set_modes(ptr noundef %ahd, i32 noundef 4, i32 noundef 4) #4
  %call43 = tail call zeroext i8 @ahd_inb(ptr noundef %ahd, i32 noundef 167) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 167, i8 noundef zeroext %call43) #4
  %13 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_softc, align 4
  %call47 = tail call i32 @ahd_pci_read_config(ptr noundef %14, i32 noundef 7, i32 noundef 1) #4
  %15 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_softc, align 4
  tail call void @ahd_pci_write_config(ptr noundef %16, i32 noundef 7, i32 noundef %call47, i32 noundef 1) #4
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 3, i8 noundef zeroext 16) #4
  br label %if.end49

if.end49:                                         ; preds = %if.then42, %fail.if.end49_crit_edge
  tail call void @ahd_outb(ptr noundef %ahd, i32 noundef 214, i8 noundef zeroext -96) #4
  %17 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_softc, align 4
  tail call void @ahd_pci_write_config(ptr noundef %18, i32 noundef 4, i32 noundef %call, i32 noundef 2) #4
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ahd_inb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_outb(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_is_paused(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_outl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_inl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahd_aic7901_setup(ptr nocapture noundef %ahd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 20
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %chip, align 4
  %features = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 21
  %1 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %features, align 4
  %call = tail call fastcc i32 @ahd_aic790X_setup(ptr noundef %ahd)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahd_aic7901A_setup(ptr nocapture noundef %ahd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 20
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %chip, align 4
  %features = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 21
  %1 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %features, align 4
  %call = tail call fastcc i32 @ahd_aic790X_setup(ptr noundef %ahd)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahd_aic7902_setup(ptr nocapture noundef %ahd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 20
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %chip, align 4
  %features = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 21
  %1 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 256, ptr %features, align 4
  %call = tail call fastcc i32 @ahd_aic790X_setup(ptr noundef %ahd)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ahd_aic790X_setup(ptr nocapture noundef %ahd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %call = tail call i32 @ahd_pci_read_config(ptr noundef %1, i32 noundef 8, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp = icmp ult i32 %call, 3
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 62
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %3, i32 noundef %call) #7
  tail call void @ahd_pci_write_config(ptr noundef %1, i32 noundef 4, i32 noundef 0, i32 noundef 2) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devfn.i, align 4
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 7
  %conv = add nuw nsw i8 %7, 65
  %channel = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 37
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call)
  %cmp4 = icmp ult i32 %call, 16
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %bugs = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 22
  %9 = ptrtoint ptr %bugs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bugs, align 4
  %or = or i32 %10, 9437183
  store i32 %or, ptr %bugs, align 4
  %iocell_opts = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 57
  %11 = ptrtoint ptr %iocell_opts to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %iocell_opts, align 4
  %13 = and i8 %12, -8
  %14 = or i8 %13, 6
  store i8 %14, ptr %iocell_opts, align 4
  %flags = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 23
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and17 = and i32 %16, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %do.body21, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body21:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %17 = and i8 %14, -122
  %18 = or i8 %17, 64
  %19 = ptrtoint ptr %iocell_opts to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %iocell_opts, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %features = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 21
  %20 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %features, align 4
  %or35 = or i32 %21, 507904
  store i32 %or35, ptr %features, align 4
  %bugs36 = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 22
  %22 = ptrtoint ptr %bugs36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bugs36, align 4
  %or37 = or i32 %23, 5242880
  store i32 %or37, ptr %bugs36, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic79xx_slowcrc to i32))
  %24 = load i32, ptr @aic79xx_slowcrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.else.if.end41_crit_edge, label %if.then38

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %or40 = or i32 %21, 507906
  %25 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or40, ptr %features, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.else.if.end41_crit_edge
  %26 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %features, align 4
  %and43 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %cmp44.not = icmp eq i32 %and43, 0
  br i1 %cmp44.not, label %if.end41.do.body50_crit_edge, label %if.then46

if.end41.do.body50_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body50

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %or48 = or i32 %23, 7340034
  %28 = ptrtoint ptr %bugs36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or48, ptr %bugs36, align 4
  br label %do.body50

do.body50:                                        ; preds = %if.then46, %if.end41.do.body50_crit_edge
  %iocell_opts51 = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 57
  %29 = ptrtoint ptr %iocell_opts51 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %iocell_opts51, align 4
  %31 = and i8 %30, -128
  %32 = or i8 %31, 70
  store i8 %32, ptr %iocell_opts51, align 4
  %arrayidx78 = getelementptr %struct.ahd_softc, ptr %ahd, i32 0, i32 57, i32 2
  %33 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx78, align 2
  %35 = or i8 %34, 7
  store i8 %35, ptr %arrayidx78, align 2
  %call89 = tail call i32 @ahd_pci_read_config(ptr noundef %1, i32 noundef 68, i32 noundef 1) #4
  %or90 = or i32 %call89, 1
  tail call void @ahd_pci_write_config(ptr noundef %1, i32 noundef 68, i32 noundef %or90, i32 noundef 1) #4
  %call91 = tail call i32 @ahd_pci_read_config(ptr noundef %1, i32 noundef 68, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body50, %do.body21, %if.then6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 6, %do.end ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %do.body21 ], [ 0, %do.body50 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_acquire_seeprom(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_read_seeprom(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_parse_vpddata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_verify_cksum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_release_seeprom(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_set_scbptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_inb_scbram(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_inw_scbram(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_default_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_parse_cfgdata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_write_flexport(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_read_flexport(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ahd_save_modes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_dump_card_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_restore_modes(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_unpause(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !150, !151, !153, !154, !155, !156, !158, !159, !161, !162, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215}
!llvm.module.flags = !{!217, !218, !219, !220, !221, !222, !223, !224}
!llvm.ident = !{!225}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 333, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ahd_pci_config._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ahd_pci_config._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 100, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 106, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 112, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 119, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 126, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 132, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 138, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 150, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 156, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 162, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 168, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 187, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 193, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 199, i32 3}
!34 = !{ptr @ahd_pci_ident_table, !35, !"ahd_pci_ident_table", i1 false, i1 false}
!35 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 94, i32 38}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 935, i32 3}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ahd_aic790X_setup._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ahd_aic790X_setup._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 216, i32 2}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 220, i32 2}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 221, i32 2}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 222, i32 2}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 223, i32 2}
!51 = !{ptr @pci_bus_modes, !52, !"pci_bus_modes", i1 false, i1 false}
!52 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 214, i32 20}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 521, i32 4}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ahd_check_extport._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ahd_check_extport._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 534, i32 4}
!60 = !{ptr @ahd_check_extport._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ahd_check_extport._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 539, i32 4}
!66 = !{ptr @ahd_check_extport._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ahd_check_extport._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 549, i32 4}
!70 = !{ptr @ahd_check_extport._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ahd_check_extport._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 556, i32 6}
!74 = !{ptr @ahd_check_extport._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ahd_check_extport._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 558, i32 6}
!78 = !{ptr @ahd_check_extport._entry.40, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ahd_check_extport._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 608, i32 3}
!82 = !{ptr @ahd_check_extport._entry.43, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ahd_check_extport._entry_ptr.45, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 611, i32 4}
!86 = !{ptr @ahd_check_extport._entry.46, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ahd_check_extport._entry_ptr.48, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 612, i32 3}
!90 = !{ptr @ahd_check_extport._entry.49, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ahd_check_extport._entry_ptr.51, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 618, i32 4}
!94 = !{ptr @ahd_check_extport._entry.52, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ahd_check_extport._entry_ptr.54, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 649, i32 3}
!98 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ahd_configure_termination._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @ahd_configure_termination._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.57, !97, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.58, !97, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 664, i32 4}
!105 = !{ptr @ahd_configure_termination._entry.59, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ahd_configure_termination._entry_ptr.61, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.63, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 672, i32 3}
!109 = !{ptr @ahd_configure_termination._entry.62, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @ahd_configure_termination._entry_ptr.64, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.66, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 679, i32 4}
!113 = !{ptr @ahd_configure_termination._entry.65, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @ahd_configure_termination._entry_ptr.67, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.69, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 687, i32 3}
!117 = !{ptr @ahd_configure_termination._entry.68, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ahd_configure_termination._entry_ptr.70, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.72, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 707, i32 3}
!121 = !{ptr @ahd_configure_termination._entry.71, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @ahd_configure_termination._entry_ptr.73, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.75, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 710, i32 3}
!125 = !{ptr @ahd_configure_termination._entry.74, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @ahd_configure_termination._entry_ptr.76, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.77, !124, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.78, !124, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.80, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 714, i32 3}
!131 = !{ptr @ahd_configure_termination._entry.79, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @ahd_configure_termination._entry_ptr.81, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.83, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 718, i32 3}
!135 = !{ptr @ahd_configure_termination._entry.82, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @ahd_configure_termination._entry_ptr.84, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.86, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 722, i32 3}
!139 = !{ptr @ahd_configure_termination._entry.85, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @ahd_configure_termination._entry_ptr.87, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.88, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 798, i32 2}
!143 = !{ptr @.str.89, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @ahd_pci_intr._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @ahd_pci_intr._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.90, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 824, i32 10}
!148 = !{ptr @ahd_pci_intr._entry.91, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 825, i32 5}
!150 = !{ptr @ahd_pci_intr._entry_ptr.92, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.93, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 855, i32 2}
!153 = !{ptr @.str.94, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @ahd_pci_split_intr._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @ahd_pci_split_intr._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @ahd_pci_split_intr._entry.95, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 881, i32 5}
!158 = !{ptr @ahd_pci_split_intr._entry_ptr.96, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @ahd_pci_split_intr._entry.97, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 888, i32 5}
!161 = !{ptr @ahd_pci_split_intr._entry_ptr.98, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.99, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.100, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 758, i32 2}
!165 = !{ptr @.str.101, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 759, i32 2}
!167 = !{ptr @.str.102, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 760, i32 2}
!169 = !{ptr @.str.103, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 761, i32 2}
!171 = !{ptr @.str.104, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 762, i32 2}
!173 = !{ptr @.str.105, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 763, i32 2}
!175 = !{ptr @.str.106, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 764, i32 2}
!177 = !{ptr @.str.107, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 765, i32 2}
!179 = !{ptr @split_status_strings, !180, !"split_status_strings", i1 false, i1 false}
!180 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 756, i32 20}
!181 = !{ptr @.str.108, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 738, i32 2}
!183 = !{ptr @.str.109, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 739, i32 2}
!185 = !{ptr @.str.110, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 740, i32 2}
!187 = !{ptr @.str.111, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 741, i32 2}
!189 = distinct !{null, !190, !"split_status_source", i1 false, i1 false}
!190 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 736, i32 20}
!191 = !{ptr @.str.112, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 770, i32 2}
!193 = !{ptr @.str.113, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 771, i32 2}
!195 = !{ptr @.str.114, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 772, i32 2}
!197 = !{ptr @.str.115, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 773, i32 2}
!199 = !{ptr @.str.116, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 774, i32 2}
!201 = !{ptr @.str.117, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 775, i32 2}
!203 = !{ptr @.str.118, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 776, i32 2}
!205 = !{ptr @.str.119, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 777, i32 2}
!207 = distinct !{null, !208, !"pci_status_strings", i1 false, i1 false}
!208 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 768, i32 20}
!209 = !{ptr @.str.120, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 751, i32 2}
!211 = !{ptr @.str.121, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 752, i32 2}
!213 = !{ptr @.str.122, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 753, i32 2}
!215 = !{ptr @pci_status_source, !216, !"pci_status_source", i1 false, i1 false}
!216 = !{!"../drivers/scsi/aic7xxx/aic79xx_pci.c", i32 744, i32 20}
!217 = !{i32 1, !"wchar_size", i32 2}
!218 = !{i32 1, !"min_enum_size", i32 4}
!219 = !{i32 8, !"branch-target-enforcement", i32 0}
!220 = !{i32 8, !"sign-return-address", i32 0}
!221 = !{i32 8, !"sign-return-address-all", i32 0}
!222 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!223 = !{i32 7, !"uwtable", i32 1}
!224 = !{i32 7, !"frame-pointer", i32 2}
!225 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!226 = !{!"auto-init"}
