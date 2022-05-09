; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic7xxx/aic7xxx_pci.c_pt.bc'
source_filename = "../drivers/scsi/aic7xxx/aic7xxx_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ahc_pci_identity = type { i64, i64, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.88, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.88 = type { ptr }
%struct.ahc_softc = type { i32, %union.bus_space_handle_t, ptr, ptr, %struct.anon.87, i32, [16 x %struct.scb_tailq], %union.ahc_bus_softc, ptr, ptr, ptr, ptr, ptr, [16 x ptr], ptr, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, ptr, i8, i8, i8, i32, [12 x i8], [12 x i8], i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i16, i16 }
%union.bus_space_handle_t = type { i32 }
%struct.anon.87 = type { ptr }
%struct.scb_tailq = type { ptr, ptr }
%union.ahc_bus_softc = type { %struct.ahc_pci_softc }
%struct.ahc_pci_softc = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.seeprom_descriptor = type { ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.seeprom_config = type { [16 x i16], i16, i16, i16, i16, [10 x i16], i16, i16 }

@ahc_pci_ident_table = internal constant { [62 x %struct.ahc_pci_identity], [368 x i8] } { [62 x %struct.ahc_pci_identity] [%struct.ahc_pci_identity { i64 5798542869112328196, i64 -1, ptr @.str.6, ptr @ahc_aic785X_setup }, %struct.ahc_pci_identity { i64 4062405211688898564, i64 -1, ptr @.str.7, ptr @ahc_aic7860_setup }, %struct.ahc_pci_identity { i64 6950619946770497536, i64 -4294967296, ptr @.str.8, ptr @ahc_apa1480_setup }, %struct.ahc_pci_identity { i64 7023521965738557440, i64 -4294967296, ptr @.str.9, ptr @ahc_aic7860_setup }, %struct.ahc_pci_identity { i64 2411835947311169536, i64 -4294967296, ptr @.str.10, ptr @ahc_aic7860_setup }, %struct.ahc_pci_identity { i64 6933449973191147520, i64 -4294967296, ptr @.str.11, ptr @ahc_aic7860_setup }, %struct.ahc_pci_identity { i64 8176443470345404416, i64 -1, ptr @.str.12, ptr @ahc_aic7870_setup }, %struct.ahc_pci_identity { i64 8248501064383332352, i64 -1, ptr @.str.13, ptr @ahc_aha394X_setup }, %struct.ahc_pci_identity { i64 8320558658421260288, i64 -1, ptr @.str.14, ptr @ahc_aha398X_setup }, %struct.ahc_pci_identity { i64 8392616252459188224, i64 -1, ptr @.str.15, ptr @ahc_aic7870h_setup }, %struct.ahc_pci_identity { i64 8464673846497116160, i64 -1, ptr @.str.16, ptr @ahc_aha394Xh_setup }, %struct.ahc_pci_identity { i64 8536731440535044096, i64 -1, ptr @.str.17, ptr @ahc_aha494Xh_setup }, %struct.ahc_pci_identity { i64 -9117379098757300224, i64 -4294967296, ptr @.str.18, ptr @ahc_aic7880_setup }, %struct.ahc_pci_identity { i64 -9045321504719372288, i64 -4294967296, ptr @.str.19, ptr @ahc_aha394XU_setup }, %struct.ahc_pci_identity { i64 -8901206316643516416, i64 -4294967296, ptr @.str.20, ptr @ahc_aic7880h_setup }, %struct.ahc_pci_identity { i64 -8829148722605588480, i64 -4294967296, ptr @.str.21, ptr @ahc_aha394XUh_setup }, %struct.ahc_pci_identity { i64 -8973263910681444352, i64 -4294967296, ptr @.str.22, ptr @ahc_aha398XU_setup }, %struct.ahc_pci_identity { i64 -8757091128567660544, i64 -4294967296, ptr @.str.23, ptr @ahc_aic7880h_setup }, %struct.ahc_pci_identity { i64 -8612975940491804672, i64 -4294967296, ptr @.str.24, ptr @ahc_aic7880_setup }, %struct.ahc_pci_identity { i64 -8685033534529732608, i64 -4294967296, ptr @.str.25, ptr @ahc_aha2940Pro_setup }, %struct.ahc_pci_identity { i64 33935344059547648, i64 -4294967296, ptr @.str.26, ptr @ahc_aic7880_setup }, %struct.ahc_pci_identity { i64 1565726032789504, i64 4503595332403200, ptr null, ptr null }, %struct.ahc_pci_identity { i64 4943425778585605, i64 -1, ptr @.str.27, ptr @ahc_aic7890_setup }, %struct.ahc_pci_identity { i64 4661953477775365, i64 -1, ptr @.str.28, ptr @ahc_aic7890_setup }, %struct.ahc_pci_identity { i64 4661951338680325, i64 -1, ptr @.str.29, ptr @ahc_aic7890_setup }, %struct.ahc_pci_identity { i64 4661953486163973, i64 -1, ptr @.str.30, ptr @ahc_aic7890_setup }, %struct.ahc_pci_identity { i64 4661954551517189, i64 -1, ptr @.str.31, ptr @ahc_aic7890_setup }, %struct.ahc_pci_identity { i64 5506375707758597, i64 -1, ptr @.str.32, ptr @ahc_aic7890_setup }, %struct.ahc_pci_identity { i64 5506375706972165, i64 -1, ptr @.str.33, ptr @ahc_aic7890_setup }, %struct.ahc_pci_identity { i64 36187151970373637, i64 -1, ptr @.str.34, ptr @ahc_aic7892_setup }, %struct.ahc_pci_identity { i64 36187151970340369, i64 -1, ptr @.str.35, ptr @ahc_aic7892_setup }, %struct.ahc_pci_identity { i64 36187149822889989, i64 -1, ptr @.str.36, ptr @ahc_aic7892_setup }, %struct.ahc_pci_identity { i64 36187149814501381, i64 -1, ptr @.str.37, ptr @ahc_aha29160C_setup }, %struct.ahc_pci_identity { i64 36187151961985029, i64 -1, ptr @.str.38, ptr @ahc_aic7892_setup }, %struct.ahc_pci_identity { i64 36468624799666181, i64 -1, ptr @.str.39, ptr @ahc_aic7892_setup }, %struct.ahc_pci_identity { i64 37031577393270789, i64 -1, ptr @.str.40, ptr @ahc_aic7892_setup }, %struct.ahc_pci_identity { i64 36750098156261381, i64 -1, ptr @.str.41, ptr @ahc_aic7892_setup }, %struct.ahc_pci_identity { i64 8689009404958314500, i64 -1, ptr @.str.42, ptr @ahc_aic7895_setup }, %struct.ahc_pci_identity { i64 8689009404958380036, i64 -1, ptr @.str.43, ptr @ahc_aic7895_setup }, %struct.ahc_pci_identity { i64 8689009404958511108, i64 -1, ptr @.str.44, ptr @ahc_aic7895h_setup }, %struct.ahc_pci_identity { i64 8687602030074892292, i64 -4222124650659841, ptr @.str.45, ptr @ahc_aic7895_setup }, %struct.ahc_pci_identity { i64 22676353581027333, i64 -1, ptr @.str.46, ptr @ahc_aic7896_setup }, %struct.ahc_pci_identity { i64 22676353396543493, i64 -1, ptr @.str.46, ptr @ahc_aic7896_setup }, %struct.ahc_pci_identity { i64 22957828557737989, i64 -1, ptr @.str.47, ptr @ahc_aic7896_setup }, %struct.ahc_pci_identity { i64 22957827299512325, i64 -1, ptr @.str.47, ptr @ahc_aic7896_setup }, %struct.ahc_pci_identity { i64 23520778511159301, i64 -1, ptr @.str.48, ptr @ahc_aic7896_setup }, %struct.ahc_pci_identity { i64 54201550807011333, i64 -1, ptr @.str.49, ptr @ahc_aic7899_setup }, %struct.ahc_pci_identity { i64 54201550806978065, i64 -1, ptr @.str.50, ptr @ahc_aic7899_setup }, %struct.ahc_pci_identity { i64 55045975902752773, i64 -1, ptr @.str.51, ptr @ahc_aic7899_setup }, %struct.ahc_pci_identity { i64 5798542867093782528, i64 -4294967296, ptr @.str.52, ptr @ahc_aic785X_setup }, %struct.ahc_pci_identity { i64 6158830837283422208, i64 -4294967296, ptr @.str.53, ptr @ahc_aic785X_setup }, %struct.ahc_pci_identity { i64 4062405210742456320, i64 -4294967296, ptr @.str.54, ptr @ahc_aic7860_setup }, %struct.ahc_pci_identity { i64 6951464371700629504, i64 -4294967296, ptr @.str.55, ptr @ahc_aic7860_setup }, %struct.ahc_pci_identity { i64 8104385876307476480, i64 -4294967296, ptr @.str.56, ptr @ahc_aic7870_setup }, %struct.ahc_pci_identity { i64 -9189436692795228160, i64 -4294967296, ptr @.str.57, ptr @ahc_aic7880_setup }, %struct.ahc_pci_identity { i64 4661950776606720, i64 -4222128945627136, ptr @.str.58, ptr @ahc_aic7890_setup }, %struct.ahc_pci_identity { i64 36187148168200192, i64 -4222128945627136, ptr @.str.59, ptr @ahc_aic7892_setup }, %struct.ahc_pci_identity { i64 8689009402935508992, i64 -4294967296, ptr @.str.60, ptr @ahc_aic7895_setup }, %struct.ahc_pci_identity { i64 22676349286088704, i64 -4222128945627136, ptr @.str.61, ptr @ahc_aic7896_setup }, %struct.ahc_pci_identity { i64 54201546677682176, i64 -4222128945627136, ptr @.str.62, ptr @ahc_aic7899_setup }, %struct.ahc_pci_identity { i64 1186856848666394624, i64 -4294967296, ptr @.str.63, ptr @ahc_raid_setup }, %struct.ahc_pci_identity { i64 8652980605916545024, i64 -4294967296, ptr @.str.64, ptr @ahc_raid_setup }], [368 x i8] zeroinitializer }, align 32
@aic7xxx_verbose = external dso_local local_unnamed_addr global i32, align 4
@ahc_pci_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Enabling 39Bit Addressing\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ahc_pci_config\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/aic7xxx/aic7xxx_pci.c\00", [61 x i8] zeroinitializer }, align 32
@ahc_pci_config._entry_ptr = internal global ptr @ahc_pci_config._entry, section ".printk_index", align 4
@ahc_pci_config._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Using left over BIOS settings\0A\00", [61 x i8] zeroinitializer }, align 32
@ahc_pci_config._entry_ptr.5 = internal global ptr @ahc_pci_config._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Adaptec 2902/04/10/15/20C/30C SCSI adapter\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Adaptec 2930CU SCSI adapter\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Adaptec 1480A Ultra SCSI adapter\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Adaptec 2940A Ultra SCSI adapter\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Adaptec 2940A/CN Ultra SCSI adapter\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Adaptec 2930C Ultra SCSI adapter (VAR)\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Adaptec 2940 SCSI adapter\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Adaptec 3940 SCSI adapter\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Adaptec 398X SCSI RAID adapter\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Adaptec 2944 SCSI adapter\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Adaptec 3944 SCSI adapter\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Adaptec 4944 SCSI adapter\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Adaptec 2940 Ultra SCSI adapter\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Adaptec 3940 Ultra SCSI adapter\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Adaptec 2944 Ultra SCSI adapter\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Adaptec 3944 Ultra SCSI adapter\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Adaptec 398X Ultra SCSI RAID adapter\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Adaptec 4944 Ultra SCSI adapter\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Adaptec 2930 Ultra SCSI adapter\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Adaptec 2940 Pro Ultra SCSI adapter\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Adaptec 2940/CN Ultra SCSI adapter\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Adaptec 2930 Ultra2 SCSI adapter\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Adaptec 2940B Ultra2 SCSI adapter\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Adaptec 2940 Ultra2 SCSI adapter (OEM)\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Adaptec 2940 Ultra2 SCSI adapter\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Adaptec 2950 Ultra2 SCSI adapter\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Adaptec aic7890/91 Ultra2 SCSI adapter (ARO)\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Adaptec AAA-131 Ultra2 RAID adapter\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Adaptec 29160 Ultra160 SCSI adapter\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Adaptec (Compaq OEM) 29160 Ultra160 SCSI adapter\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Adaptec 29160N Ultra160 SCSI adapter\00", [59 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Adaptec 29160C Ultra160 SCSI adapter\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Adaptec 29160B Ultra160 SCSI adapter\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Adaptec 19160B Ultra160 SCSI adapter\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Adaptec aic7892 Ultra160 SCSI adapter (ARO)\00", [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Adaptec 2915/30LP Ultra160 SCSI adapter\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Adaptec 2940/DUAL Ultra SCSI adapter\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Adaptec 3940A Ultra SCSI adapter\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Adaptec 3944A Ultra SCSI adapter\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Adaptec aic7895 Ultra SCSI adapter (ARO)\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Adaptec 3950B Ultra2 SCSI adapter\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Adaptec 3950D Ultra2 SCSI adapter\00", [62 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Adaptec aic7896/97 Ultra2 SCSI adapter (ARO)\00", [51 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Adaptec 3960D Ultra160 SCSI adapter\00", [60 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Adaptec (Compaq OEM) 3960D Ultra160 SCSI adapter\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Adaptec aic7899 Ultra160 SCSI adapter (ARO)\00", [52 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Adaptec aic7850 SCSI adapter\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Adaptec aic7855 SCSI adapter\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Adaptec aic7859 SCSI adapter\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Adaptec aic7860 Ultra SCSI adapter\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Adaptec aic7870 SCSI adapter\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Adaptec aic7880 Ultra SCSI adapter\00", [61 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Adaptec aic7890/91 Ultra2 SCSI adapter\00", [57 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Adaptec aic7892 Ultra160 SCSI adapter\00", [58 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Adaptec aic7895 Ultra SCSI adapter\00", [61 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Adaptec aic7896/97 Ultra2 SCSI adapter\00", [57 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Adaptec aic7899 Ultra160 SCSI adapter\00", [58 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Adaptec aic7810 RAID memory controller\00", [57 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Adaptec aic7815 RAID memory controller\00", [57 x i8] zeroinitializer }, align 32
@ahc_aha394XX_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 2400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"adapter at unexpected slot %d\0Aunable to map to a channel\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ahc_aha394XX_setup\00", [45 x i8] zeroinitializer }, align 32
@ahc_aha394XX_setup._entry_ptr = internal global ptr @ahc_aha394XX_setup._entry, section ".printk_index", align 4
@ahc_aha398XX_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.67, ptr @.str.2, i32 2425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ahc_aha398XX_setup\00", [45 x i8] zeroinitializer }, align 32
@ahc_aha398XX_setup._entry_ptr = internal global ptr @ahc_aha398XX_setup._entry, section ".printk_index", align 4
@ahc_aha494XX_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.68, ptr @.str.2, i32 2455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ahc_aha494XX_setup\00", [45 x i8] zeroinitializer }, align 32
@ahc_aha494XX_setup._entry_ptr = internal global ptr @ahc_aha494XX_setup._entry, section ".printk_index", align 4
@ahc_raid_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 2380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RAID functionality unsupported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ahc_raid_setup\00", [17 x i8] zeroinitializer }, align 32
@ahc_raid_setup._entry_ptr = internal global ptr @ahc_raid_setup._entry, section ".printk_index", align 4
@ahc_probe_ext_scbram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 1154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: External SRAM, %s access%s, %dbytes/SCB\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ahc_probe_ext_scbram\00", [43 x i8] zeroinitializer }, align 32
@ahc_probe_ext_scbram._entry_ptr = internal global ptr @ahc_probe_ext_scbram._entry, section ".printk_index", align 4
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fast\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slow\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c", parity checking enabled\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@check_extport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 1288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Reading SEEPROM...\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"check_extport\00", [18 x i8] zeroinitializer }, align 32
@check_extport._entry_ptr = internal global ptr @check_extport._entry, section ".printk_index", align 4
@check_extport._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"checksum error\0A\00", [16 x i8] zeroinitializer }, align 32
@check_extport._entry_ptr.81 = internal global ptr @check_extport._entry.79, section ".printk_index", align 4
@check_extport._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.2, i32 1307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"done.\0A\00", [25 x i8] zeroinitializer }, align 32
@check_extport._entry_ptr.84 = internal global ptr @check_extport._entry.82, section ".printk_index", align 4
@check_extport._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.2, i32 1358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: No SEEPROM available.\0A\00", [37 x i8] zeroinitializer }, align 32
@check_extport._entry_ptr.87 = internal global ptr @check_extport._entry.85, section ".printk_index", align 4
@check_extport._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.78, ptr @.str.2, i32 1397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Low byte termination %sabled\0A\00", [62 x i8] zeroinitializer }, align 32
@check_extport._entry_ptr.90 = internal global ptr @check_extport._entry.88, section ".printk_index", align 4
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@ahc_pci_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 1935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: PCI error Interrupt at seqaddr = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ahc_pci_intr\00", [19 x i8] zeroinitializer }, align 32
@ahc_pci_intr._entry_ptr = internal global ptr @ahc_pci_intr._entry, section ".printk_index", align 4
@ahc_pci_intr._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 1940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: Data Parity Error Detected during address or write data phase\0A\00", [61 x i8] zeroinitializer }, align 32
@ahc_pci_intr._entry_ptr.97 = internal global ptr @ahc_pci_intr._entry.95, section ".printk_index", align 4
@ahc_pci_intr._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.2, i32 1943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Signal System Error Detected\0A\00", [62 x i8] zeroinitializer }, align 32
@ahc_pci_intr._entry_ptr.100 = internal global ptr @ahc_pci_intr._entry.98, section ".printk_index", align 4
@ahc_pci_intr._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.94, ptr @.str.2, i32 1946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Received a Master Abort\0A\00", [35 x i8] zeroinitializer }, align 32
@ahc_pci_intr._entry_ptr.103 = internal global ptr @ahc_pci_intr._entry.101, section ".printk_index", align 4
@ahc_pci_intr._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.94, ptr @.str.2, i32 1949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Received a Target Abort\0A\00", [35 x i8] zeroinitializer }, align 32
@ahc_pci_intr._entry_ptr.106 = internal global ptr @ahc_pci_intr._entry.104, section ".printk_index", align 4
@ahc_pci_intr._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.94, ptr @.str.2, i32 1952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Signaled a Target Abort\0A\00", [35 x i8] zeroinitializer }, align 32
@ahc_pci_intr._entry_ptr.109 = internal global ptr @ahc_pci_intr._entry.107, section ".printk_index", align 4
@ahc_pci_intr._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.94, ptr @.str.2, i32 1956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: Data Parity Error has been reported via PERR#\0A\00", [45 x i8] zeroinitializer }, align 32
@ahc_pci_intr._entry_ptr.112 = internal global ptr @ahc_pci_intr._entry.110, section ".printk_index", align 4
@ahc_pci_intr._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.94, ptr @.str.2, i32 1965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: Latched PCIERR interrupt with no status bits set\0A\00", [42 x i8] zeroinitializer }, align 32
@ahc_pci_intr._entry_ptr.115 = internal global ptr @ahc_pci_intr._entry.113, section ".printk_index", align 4
@ahc_pci_intr._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.94, ptr @.str.2, i32 1979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [302 x i8], [82 x i8] } { [302 x i8] c"%s: WARNING WARNING WARNING WARNING\0A%s: Too many PCI parity errors observed as a target.\0A%s: Some device on this bus is generating bad parity.\0A%s: This is an error *observed by*, not *generated by*, this controller.\0A%s: PCI parity error checking has been disabled.\0A%s: WARNING WARNING WARNING WARNING\0A\00", [82 x i8] zeroinitializer }, align 32
@ahc_pci_intr._entry_ptr.118 = internal global ptr @ahc_pci_intr._entry.116, section ".printk_index", align 4
@configure_termination._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 1566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Manual SE Termination\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"configure_termination\00", [42 x i8] zeroinitializer }, align 32
@configure_termination._entry_ptr = internal global ptr @configure_termination._entry, section ".printk_index", align 4
@configure_termination._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.2, i32 1574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Manual LVD Termination\0A\00", [36 x i8] zeroinitializer }, align 32
@configure_termination._entry_ptr.123 = internal global ptr @configure_termination._entry.121, section ".printk_index", align 4
@configure_termination._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.120, ptr @.str.2, i32 1602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: internal 50 cable %s present\00", [63 x i8] zeroinitializer }, align 32
@configure_termination._entry_ptr.126 = internal global ptr @configure_termination._entry.124, section ".printk_index", align 4
@.str.127 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"is\00", [29 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"not\00", [28 x i8] zeroinitializer }, align 32
@configure_termination._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.120, ptr @.str.2, i32 1606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c", internal 68 cable %s present\00", [33 x i8] zeroinitializer }, align 32
@configure_termination._entry_ptr.131 = internal global ptr @configure_termination._entry.129, section ".printk_index", align 4
@configure_termination._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.120, ptr @.str.2, i32 1609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\0A%s: external cable %s present\0A\00", [32 x i8] zeroinitializer }, align 32
@configure_termination._entry_ptr.134 = internal global ptr @configure_termination._entry.132, section ".printk_index", align 4
@configure_termination._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.120, ptr @.str.2, i32 1613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: BIOS eeprom %s present\0A\00", [36 x i8] zeroinitializer }, align 32
@configure_termination._entry_ptr.137 = internal global ptr @configure_termination._entry.135, section ".printk_index", align 4
@configure_termination._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.120, ptr @.str.2, i32 1641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"%s: Illegal cable configuration!!. Only two connectors on the adapter may be used at a time!\0A\00", [34 x i8] zeroinitializer }, align 32
@configure_termination._entry_ptr.140 = internal global ptr @configure_termination._entry.138, section ".printk_index", align 4
@configure_termination._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.120, ptr @.str.2, i32 1661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: 68 pin termination Enabled\0A\00", [32 x i8] zeroinitializer }, align 32
@configure_termination._entry_ptr.143 = internal global ptr @configure_termination._entry.141, section ".printk_index", align 4
@configure_termination._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.120, ptr @.str.2, i32 1666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: %sHigh byte termination Enabled\0A\00", [59 x i8] zeroinitializer }, align 32
@configure_termination._entry_ptr.146 = internal global ptr @configure_termination._entry.144, section ".printk_index", align 4
@.str.147 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Secondary \00", [21 x i8] zeroinitializer }, align 32
@configure_termination._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.120, ptr @.str.2, i32 1680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: 50 pin termination Enabled\0A\00", [32 x i8] zeroinitializer }, align 32
@configure_termination._entry_ptr.150 = internal global ptr @configure_termination._entry.148, section ".printk_index", align 4
@configure_termination._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.120, ptr @.str.2, i32 1685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: %sLow byte termination Enabled\0A\00", [60 x i8] zeroinitializer }, align 32
@configure_termination._entry_ptr.153 = internal global ptr @configure_termination._entry.151, section ".printk_index", align 4
@configure_termination._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.120, ptr @.str.2, i32 1693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Primary Low Byte termination Enabled\0A\00", [54 x i8] zeroinitializer }, align 32
@configure_termination._entry_ptr.156 = internal global ptr @configure_termination._entry.154, section ".printk_index", align 4
@configure_termination._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.120, ptr @.str.2, i32 1707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Primary High Byte termination Enabled\0A\00", [53 x i8] zeroinitializer }, align 32
@configure_termination._entry_ptr.159 = internal global ptr @configure_termination._entry.157, section ".printk_index", align 4
@configure_termination._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.120, ptr @.str.2, i32 1720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@configure_termination._entry_ptr.161 = internal global ptr @configure_termination._entry.160, section ".printk_index", align 4
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Primary \00", [23 x i8] zeroinitializer }, align 32
@configure_termination._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.120, ptr @.str.2, i32 1730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@configure_termination._entry_ptr.164 = internal global ptr @configure_termination._entry.163, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 4, i64 0, i64 1, i64 3, i64 15]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 16, i64 592, i64 768]
@__sancov_gen_cov_switch_values.166 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 9]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.168 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 12]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.172 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 12]
@___asan_gen_.173 = private unnamed_addr constant [20 x i8] c"ahc_pci_ident_table\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 164, i32 38 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 748, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 892, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 169, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 176, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 182, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 188, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 194, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 200, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 207, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 213, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 219, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 225, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 231, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 237, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 244, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 250, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 256, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 262, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 268, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 278, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 284, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 290, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 296, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 310, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 316, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 322, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 328, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 334, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 340, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 346, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 353, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 359, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 365, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 371, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 377, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 383, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 389, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 395, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 402, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 408, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 414, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 420, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 427, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 439, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 451, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 458, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 464, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 470, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 477, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 483, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 489, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 495, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 501, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 507, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 513, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 519, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 525, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 531, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 537, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 543, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 549, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2398, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2423, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2453, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2380, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1151, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1288, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1305, i32 7 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1307, i32 7 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1358, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1395, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1933, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1939, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1943, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1946, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1949, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1952, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1955, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1964, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1971, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1565, i32 6 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1573, i32 6 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1600, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1605, i32 5 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1607, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1612, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1638, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1660, i32 6 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1663, i32 6 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1679, i32 6 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1682, i32 6 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1692, i32 5 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1705, i32 5 }
@___asan_gen_.611 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1717, i32 5 }
@___asan_gen_.614 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.615 = private constant [38 x i8] c"../drivers/scsi/aic7xxx/aic7xxx_pci.c\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1727, i32 5 }
@llvm.compiler.used = appending global [184 x ptr] [ptr @ahc_aha394XX_setup._entry, ptr @ahc_aha394XX_setup._entry_ptr, ptr @ahc_aha398XX_setup._entry, ptr @ahc_aha398XX_setup._entry_ptr, ptr @ahc_aha494XX_setup._entry, ptr @ahc_aha494XX_setup._entry_ptr, ptr @ahc_pci_config._entry, ptr @ahc_pci_config._entry.3, ptr @ahc_pci_config._entry_ptr, ptr @ahc_pci_config._entry_ptr.5, ptr @ahc_pci_intr._entry, ptr @ahc_pci_intr._entry.101, ptr @ahc_pci_intr._entry.104, ptr @ahc_pci_intr._entry.107, ptr @ahc_pci_intr._entry.110, ptr @ahc_pci_intr._entry.113, ptr @ahc_pci_intr._entry.116, ptr @ahc_pci_intr._entry.95, ptr @ahc_pci_intr._entry.98, ptr @ahc_pci_intr._entry_ptr, ptr @ahc_pci_intr._entry_ptr.100, ptr @ahc_pci_intr._entry_ptr.103, ptr @ahc_pci_intr._entry_ptr.106, ptr @ahc_pci_intr._entry_ptr.109, ptr @ahc_pci_intr._entry_ptr.112, ptr @ahc_pci_intr._entry_ptr.115, ptr @ahc_pci_intr._entry_ptr.118, ptr @ahc_pci_intr._entry_ptr.97, ptr @ahc_probe_ext_scbram._entry, ptr @ahc_probe_ext_scbram._entry_ptr, ptr @ahc_raid_setup._entry, ptr @ahc_raid_setup._entry_ptr, ptr @check_extport._entry, ptr @check_extport._entry.79, ptr @check_extport._entry.82, ptr @check_extport._entry.85, ptr @check_extport._entry.88, ptr @check_extport._entry_ptr, ptr @check_extport._entry_ptr.81, ptr @check_extport._entry_ptr.84, ptr @check_extport._entry_ptr.87, ptr @check_extport._entry_ptr.90, ptr @configure_termination._entry, ptr @configure_termination._entry.121, ptr @configure_termination._entry.124, ptr @configure_termination._entry.129, ptr @configure_termination._entry.132, ptr @configure_termination._entry.135, ptr @configure_termination._entry.138, ptr @configure_termination._entry.141, ptr @configure_termination._entry.144, ptr @configure_termination._entry.148, ptr @configure_termination._entry.151, ptr @configure_termination._entry.154, ptr @configure_termination._entry.157, ptr @configure_termination._entry.160, ptr @configure_termination._entry.163, ptr @configure_termination._entry_ptr, ptr @configure_termination._entry_ptr.123, ptr @configure_termination._entry_ptr.126, ptr @configure_termination._entry_ptr.131, ptr @configure_termination._entry_ptr.134, ptr @configure_termination._entry_ptr.137, ptr @configure_termination._entry_ptr.140, ptr @configure_termination._entry_ptr.143, ptr @configure_termination._entry_ptr.146, ptr @configure_termination._entry_ptr.150, ptr @configure_termination._entry_ptr.153, ptr @configure_termination._entry_ptr.156, ptr @configure_termination._entry_ptr.159, ptr @configure_termination._entry_ptr.161, ptr @configure_termination._entry_ptr.164, ptr @ahc_pci_ident_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.158, ptr @.str.162], section "llvm.metadata"
@0 = internal global [148 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_pci_ident_table to i32), i32 1488, i32 1856, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_pci_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_pci_config._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_aha394XX_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_aha398XX_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_aha494XX_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_raid_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_probe_ext_scbram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_extport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_extport._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_extport._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_extport._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_extport._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_pci_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_pci_intr._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_pci_intr._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_pci_intr._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_pci_intr._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_pci_intr._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_pci_intr._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_pci_intr._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_pci_intr._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 302, i32 384, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_termination._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_termination._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_termination._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_termination._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_termination._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_termination._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_termination._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_termination._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_termination._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_termination._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_termination._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_termination._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_termination._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_termination._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_termination._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ahc_find_pci_device(ptr noundef %pci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ahc_pci_read_config(ptr noundef %pci, i32 noundef 0, i32 noundef 2) #6
  %call2 = tail call i32 @ahc_pci_read_config(ptr noundef %pci, i32 noundef 2, i32 noundef 2) #6
  %call4 = tail call i32 @ahc_pci_read_config(ptr noundef %pci, i32 noundef 44, i32 noundef 2) #6
  %call6 = tail call i32 @ahc_pci_read_config(ptr noundef %pci, i32 noundef 46, i32 noundef 2) #6
  %conv8 = and i32 %call2, 65535
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
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 6
  %0 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devfn.i, align 4
  %and.i = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 0
  br i1 %cmp.not, label %entry.for.body.preheader_crit_edge, label %land.lhs.true

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

land.lhs.true:                                    ; preds = %entry
  %conv5 = trunc i32 %call4 to i16
  %conv7 = trunc i32 %call6 to i16
  %conv = trunc i32 %call to i16
  %conv3 = trunc i32 %call2 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28667, i16 %conv)
  %cmp.i = icmp ne i16 %conv, -28667
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28667, i16 %conv5)
  %cmp3.i = icmp ne i16 %conv5, -28667
  %or.cond.not.i = or i1 %cmp.i, %cmp3.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv7, i16 %conv3)
  %cmp8.not.i = icmp eq i16 %conv7, %conv3
  %or.cond43.i = or i1 %cmp8.not.i, %or.cond.not.i
  br i1 %or.cond43.i, label %land.lhs.true.for.body.preheader_crit_edge, label %land.lhs.true10.i

land.lhs.true.for.body.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

land.lhs.true10.i:                                ; preds = %land.lhs.true
  %trunc.i = trunc i32 %call6 to i4
  %2 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc.i, label %land.lhs.true10.i.for.body.preheader_crit_edge [
    i4 -1, label %land.lhs.true10.i.ahc_9005_subdevinfo_valid.exit_crit_edge
    i4 0, label %land.lhs.true10.i.ahc_9005_subdevinfo_valid.exit_crit_edge75
    i4 1, label %land.lhs.true10.i.ahc_9005_subdevinfo_valid.exit_crit_edge76
    i4 3, label %land.lhs.true10.i.ahc_9005_subdevinfo_valid.exit_crit_edge77
  ]

land.lhs.true10.i.ahc_9005_subdevinfo_valid.exit_crit_edge77: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_9005_subdevinfo_valid.exit

land.lhs.true10.i.ahc_9005_subdevinfo_valid.exit_crit_edge76: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_9005_subdevinfo_valid.exit

land.lhs.true10.i.ahc_9005_subdevinfo_valid.exit_crit_edge75: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_9005_subdevinfo_valid.exit

land.lhs.true10.i.ahc_9005_subdevinfo_valid.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_9005_subdevinfo_valid.exit

land.lhs.true10.i.for.body.preheader_crit_edge:   ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

ahc_9005_subdevinfo_valid.exit:                   ; preds = %land.lhs.true10.i.ahc_9005_subdevinfo_valid.exit_crit_edge, %land.lhs.true10.i.ahc_9005_subdevinfo_valid.exit_crit_edge75, %land.lhs.true10.i.ahc_9005_subdevinfo_valid.exit_crit_edge76, %land.lhs.true10.i.ahc_9005_subdevinfo_valid.exit_crit_edge77
  %3 = and i16 %conv7, 14
  %4 = and i16 %conv3, 15
  %5 = or i16 %3, %4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %.not = icmp eq i16 %5, 0
  br i1 %.not, label %land.lhs.true16, label %ahc_9005_subdevinfo_valid.exit.for.body.preheader_crit_edge

ahc_9005_subdevinfo_valid.exit.for.body.preheader_crit_edge: ; preds = %ahc_9005_subdevinfo_valid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

land.lhs.true16:                                  ; preds = %ahc_9005_subdevinfo_valid.exit
  %and = and i32 %call6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp18 = icmp eq i32 %and, 15
  %6 = select i1 %cmp18, i32 2048, i32 4096
  %7 = and i32 %6, %call6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp25 = icmp eq i32 %7, 0
  br i1 %cmp25, label %land.lhs.true16.cleanup_crit_edge, label %land.lhs.true16.for.body.preheader_crit_edge

land.lhs.true16.for.body.preheader_crit_edge:     ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %land.lhs.true16.for.body.preheader_crit_edge, %ahc_9005_subdevinfo_valid.exit.for.body.preheader_crit_edge, %land.lhs.true10.i.for.body.preheader_crit_edge, %land.lhs.true.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.064 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [62 x %struct.ahc_pci_identity], ptr @ahc_pci_ident_table, i32 0, i32 %i.064
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  %id_mask = getelementptr [62 x %struct.ahc_pci_identity], ptr @ahc_pci_ident_table, i32 0, i32 %i.064, i32 1
  %10 = ptrtoint ptr %id_mask to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %id_mask, align 8
  %and30 = and i64 %11, %or6.i
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %and30)
  %cmp31 = icmp eq i64 %9, %and30
  br i1 %cmp31, label %if.then33, label %for.inc

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %i.064)
  %cmp34 = icmp eq i32 %i.064, 21
  %.arrayidx = select i1 %cmp34, ptr null, ptr %arrayidx
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 62
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then33, %land.lhs.true16.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %land.lhs.true16.cleanup_crit_edge ], [ %.arrayidx, %if.then33 ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_pci_read_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_pci_config(ptr noundef %ahc, ptr nocapture noundef readonly %entry1) local_unnamed_addr #0 align 64 {
entry:
  %sxfrctl1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sxfrctl1) #6
  %setup = getelementptr inbounds %struct.ahc_pci_identity, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %setup, align 4
  %call = tail call i32 %1(ptr noundef %ahc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 4
  %or = or i32 %3, 1024
  store i32 %or, ptr %chip, align 4
  %name = getelementptr inbounds %struct.ahc_pci_identity, ptr %entry1, i32 0, i32 2
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %description = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 54
  %6 = ptrtoint ptr %description to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %description, align 4
  %dev_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %7 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_softc, align 4
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %8, i32 noundef 0) #6
  %call3 = tail call i32 @ahc_pci_map_registers(ptr noundef %ahc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @ahc_intr_enable(ptr noundef %ahc, i32 noundef 0) #6
  %9 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_softc, align 4
  %call8 = tail call i32 @ahc_pci_read_config(ptr noundef %10, i32 noundef 64, i32 noundef 4) #6
  %flags = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9.not = icmp eq i32 %and, 0
  br i1 %cmp9.not, label %if.end6.if.end16_crit_edge, label %if.then10

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then10:                                        ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %13 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then10.if.end14_crit_edge, label %do.end

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %15) #9
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.then10.if.end14_crit_edge
  %or15 = or i32 %call8, 4
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.end6.if.end16_crit_edge
  %devconfig.0 = phi i32 [ %or15, %if.end14 ], [ %call8, %if.end6.if.end16_crit_edge ]
  %or17 = or i32 %devconfig.0, -2147483648
  %16 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_softc, align 4
  tail call void @ahc_pci_write_config(ptr noundef %17, i32 noundef 64, i32 noundef %or17, i32 noundef 4) #6
  %18 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_softc, align 4
  %call20 = tail call i32 @ahc_pci_read_config(ptr noundef %19, i32 noundef 4, i32 noundef 2) #6
  %or21 = or i32 %call20, 4
  %20 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_softc, align 4
  tail call void @ahc_pci_write_config(ptr noundef %21, i32 noundef 4, i32 noundef %or21, i32 noundef 2) #6
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %or24 = or i32 %23, 4194304
  store i32 %or24, ptr %flags, align 4
  %call25 = tail call i32 @ahc_softc_init(ptr noundef %ahc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %if.end28, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and30 = and i32 %25, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %cmp31.not = icmp eq i32 %and30, 0
  br i1 %cmp31.not, label %if.end28.if.end35_crit_edge, label %if.then32

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %seqctl = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 36
  %26 = ptrtoint ptr %seqctl to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %seqctl, align 1
  %28 = or i8 %27, 32
  store i8 %28, ptr %seqctl, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end28.if.end35_crit_edge
  %bus_intr = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 11
  %29 = ptrtoint ptr %bus_intr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ahc_pci_intr, ptr %bus_intr, align 4
  %bus_chip_init = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 12
  %30 = ptrtoint ptr %bus_chip_init to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ahc_pci_chip_init, ptr %bus_chip_init, align 4
  %call36 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 135) #6
  %31 = and i8 %call36, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp39 = icmp eq i8 %31, 0
  br i1 %cmp39, label %if.then41, label %if.else58

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ahc_pause(ptr noundef %ahc) #6
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %32 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %features, align 4
  %and42 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %cmp43.not = icmp eq i32 %and42, 0
  %. = select i1 %cmp43.not, i32 5, i32 15
  %call49 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef %.) #6
  %our_id.0.in = and i8 %call49, 15
  %call53 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 2) #6
  %34 = and i8 %call53, 1
  %and55 = zext i8 %34 to i32
  %35 = ptrtoint ptr %sxfrctl1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and55, ptr %sxfrctl1, align 4
  %call56 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 0) #6
  %conv57 = zext i8 %call56 to i32
  br label %if.end59

if.else58:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %sxfrctl1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %sxfrctl1, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then41
  %scsiseq.0 = phi i32 [ %conv57, %if.then41 ], [ 0, %if.else58 ]
  %our_id.1 = phi i8 [ %our_id.0.in, %if.then41 ], [ 7, %if.else58 ]
  %call60 = tail call i32 @ahc_reset(ptr noundef %ahc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61.not = icmp eq i32 %call60, 0
  br i1 %cmp61.not, label %if.end64, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %if.end59
  %features65 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %37 = ptrtoint ptr %features65 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %features65, align 4
  %and66 = and i32 %38, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %cmp67.not = icmp eq i32 %and66, 0
  br i1 %cmp67.not, label %if.end64.if.end76_crit_edge, label %if.then69

if.end64.if.end76_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %call70 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 159) #6
  %39 = and i8 %call70, 127
  %or73 = or i8 %call70, -128
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 159, i8 noundef zeroext %or73) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 8, i8 noundef zeroext 91) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 159, i8 noundef zeroext %39) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 157, i8 noundef zeroext 120) #6
  br label %if.end76

if.end76:                                         ; preds = %if.then69, %if.end64.if.end76_crit_edge
  %call77 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 132) #6
  %40 = or i8 %call77, -96
  %or79 = zext i8 %40 to i32
  %41 = ptrtoint ptr %features65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %features65, align 4
  %and81 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %cmp82.not = icmp eq i32 %and81, 0
  %and85 = and i32 %or79, 191
  %spec.select = select i1 %cmp82.not, i32 %or79, i32 %and85
  %bugs = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %43 = ptrtoint ptr %bugs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bugs, align 4
  %and94 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %cmp95.not = icmp eq i32 %and94, 0
  %and98 = and i32 %spec.select, 127
  %dscommand0.2 = select i1 %cmp95.not, i32 %spec.select, i32 %and98
  %conv100 = trunc i32 %dscommand0.2 to i8
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 132, i8 noundef zeroext %conv100) #6
  %45 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_softc, align 4
  %call102 = tail call i32 @ahc_pci_read_config(ptr noundef %46, i32 noundef 12, i32 noundef 1) #6
  %pci_cachesize = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 51
  %and103 = shl i32 %call102, 2
  %mul = and i32 %and103, 252
  %47 = ptrtoint ptr %pci_cachesize to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul, ptr %pci_cachesize, align 4
  %48 = ptrtoint ptr %bugs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bugs, align 4
  %and106 = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %cmp107.not = icmp ne i32 %and106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul)
  %cmp110 = icmp eq i32 %mul, 4
  %or.cond = select i1 %cmp107.not, i1 %cmp110, i1 false
  br i1 %or.cond, label %if.then112, label %if.end76.if.end115_crit_edge

if.end76.if.end115_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.then112:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_softc, align 4
  tail call void @ahc_pci_write_config(ptr noundef %51, i32 noundef 12, i32 noundef 0, i32 noundef 1) #6
  %52 = ptrtoint ptr %pci_cachesize to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %pci_cachesize, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %if.end76.if.end115_crit_edge
  %53 = ptrtoint ptr %features65 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %features65, align 4
  %and117 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %cmp118.not = icmp eq i32 %and117, 0
  br i1 %cmp118.not, label %if.end115.if.end131_crit_edge, label %if.then120

if.end115.if.end131_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.then120:                                       ; preds = %if.end115
  %55 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_softc, align 4
  %call123 = tail call i32 @ahc_pci_read_config(ptr noundef %56, i32 noundef 64, i32 noundef 4) #6
  %and124 = and i32 %call123, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %cmp125 = icmp eq i32 %and124, 0
  br i1 %cmp125, label %if.then127, label %if.then120.if.end131_crit_edge

if.then120.if.end131_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.then127:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %features65 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %features65, align 4
  %and129 = and i32 %58, -2
  store i32 %and129, ptr %features65, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then127, %if.then120.if.end131_crit_edge, %if.end115.if.end131_crit_edge
  call fastcc void @check_extport(ptr noundef %ahc, ptr noundef nonnull %sxfrctl1)
  %call132 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 31) #6
  %59 = and i8 %call132, 63
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 31, i8 noundef zeroext %59) #6
  %60 = ptrtoint ptr %features65 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %features65, align 4
  %and137 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %cmp138.not = icmp eq i32 %and137, 0
  br i1 %cmp138.not, label %if.else141, label %if.then140

if.then140:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 251, i8 noundef zeroext 119) #6
  br label %if.end142

if.else141:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 134, i8 noundef zeroext -64) #6
  br label %if.end142

if.end142:                                        ; preds = %if.else141, %if.then140
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 4
  %and144 = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end142.if.end172_crit_edge, label %if.then146

if.end142.if.end172_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172

if.then146:                                       ; preds = %if.end142
  %and148 = and i32 %63, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %cmp149 = icmp ne i32 %and148, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scsiseq.0)
  %cmp152.not = icmp eq i32 %scsiseq.0, 0
  %or.cond354 = select i1 %cmp149, i1 true, i1 %cmp152.not
  br i1 %or.cond354, label %if.else165, label %do.end157

do.end157:                                        ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #8
  %name.i355 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %64 = ptrtoint ptr %name.i355 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name.i355, align 4
  %call160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %65) #9
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 4
  %and162 = and i32 %67, -524293
  %or164 = or i32 %and162, 524288
  store i32 %or164, ptr %flags, align 4
  br label %if.end166

if.else165:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %sxfrctl1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %sxfrctl1, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.else165, %do.end157
  %our_id.2 = phi i8 [ %our_id.1, %do.end157 ], [ 7, %if.else165 ]
  %conv169 = or i8 %our_id.2, 96
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 90, i8 noundef zeroext %conv169) #6
  %our_id171 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 31
  %69 = ptrtoint ptr %our_id171 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %our_id.2, ptr %our_id171, align 2
  br label %if.end172

if.end172:                                        ; preds = %if.end166, %if.end142.if.end172_crit_edge
  tail call fastcc void @ahc_probe_ext_scbram(ptr noundef %ahc)
  %70 = ptrtoint ptr %sxfrctl1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sxfrctl1, align 4
  %and173 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %cmp174.not = icmp eq i32 %and173, 0
  br i1 %cmp174.not, label %if.end172.if.end179_crit_edge, label %if.then176

if.end172.if.end179_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end179

if.then176:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags, align 4
  %or178 = or i32 %73, 1024
  store i32 %or178, ptr %flags, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.then176, %if.end172.if.end179_crit_edge
  %74 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_softc, align 4
  %call181 = tail call i32 @ahc_pci_read_config(ptr noundef %75, i32 noundef 64, i32 noundef 4) #6
  %bus_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7
  %76 = ptrtoint ptr %bus_softc to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call181, ptr %bus_softc, align 4
  %77 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_softc, align 4
  %call184 = tail call i32 @ahc_pci_read_config(ptr noundef %78, i32 noundef 4, i32 noundef 1) #6
  %conv185 = trunc i32 %call184 to i8
  %command187 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 2
  %79 = ptrtoint ptr %command187 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv185, ptr %command187, align 2
  %80 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_softc, align 4
  %call189 = tail call i32 @ahc_pci_read_config(ptr noundef %81, i32 noundef 12, i32 noundef 1) #6
  %conv190 = trunc i32 %call189 to i8
  %csize_lattime = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 3
  %82 = ptrtoint ptr %csize_lattime to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv190, ptr %csize_lattime, align 1
  %call192 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 132) #6
  %dscommand0194 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 6
  %83 = ptrtoint ptr %dscommand0194 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %call192, ptr %dscommand0194, align 2
  %call195 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 134) #6
  %dspcistatus = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 7
  %84 = ptrtoint ptr %dspcistatus to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %call195, ptr %dspcistatus, align 1
  %85 = ptrtoint ptr %features65 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %features65, align 4
  %and198 = and i32 %86, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %cmp199.not = icmp eq i32 %and198, 0
  br i1 %cmp199.not, label %if.end179.if.end215_crit_edge, label %if.then201

if.end179.if.end215_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end215

if.then201:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  %call203 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 159) #6
  %87 = and i8 %call203, 127
  %or206 = or i8 %call203, -128
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 159, i8 noundef zeroext %or206) #6
  %call208 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 8) #6
  %optionmode = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 4
  %88 = ptrtoint ptr %optionmode to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %call208, ptr %optionmode, align 4
  %call210 = tail call zeroext i16 @ahc_inw(ptr noundef %ahc, i32 noundef 10) #6
  %targcrccnt = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 1
  %89 = ptrtoint ptr %targcrccnt to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %call210, ptr %targcrccnt, align 4
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 159, i8 noundef zeroext %87) #6
  %call213 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 157) #6
  %crccontrol1 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 5
  %90 = ptrtoint ptr %crccontrol1 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %call213, ptr %crccontrol1, align 1
  br label %if.end215

if.end215:                                        ; preds = %if.then201, %if.end179.if.end215_crit_edge
  %91 = ptrtoint ptr %features65 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %features65, align 4
  %and217 = and i32 %92, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %cmp218.not = icmp eq i32 %and217, 0
  br i1 %cmp218.not, label %if.end215.if.end223_crit_edge, label %if.then220

if.end215.if.end223_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end223

if.then220:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #8
  %call221 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 240) #6
  %scbbaddr = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 8
  %93 = ptrtoint ptr %scbbaddr to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %call221, ptr %scbbaddr, align 4
  br label %if.end223

if.end223:                                        ; preds = %if.then220, %if.end215.if.end223_crit_edge
  %94 = ptrtoint ptr %features65 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %features65, align 4
  %and225 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %cmp226.not = icmp eq i32 %and225, 0
  br i1 %cmp226.not, label %if.end223.if.end231_crit_edge, label %if.then228

if.end223.if.end231_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end231

if.then228:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #8
  %call229 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 251) #6
  %dff_thrsh = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 9
  %96 = ptrtoint ptr %dff_thrsh to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %call229, ptr %dff_thrsh, align 1
  br label %if.end231

if.end231:                                        ; preds = %if.then228, %if.end223.if.end231_crit_edge
  %call232 = tail call i32 @ahc_init(ptr noundef %ahc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %cmp233.not = icmp eq i32 %call232, 0
  br i1 %cmp233.not, label %if.end236, label %if.end231.cleanup_crit_edge

if.end231.cleanup_crit_edge:                      ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end236:                                        ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #8
  %init_level = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 50
  %97 = ptrtoint ptr %init_level to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %init_level, align 4
  %inc = add i32 %98, 1
  store i32 %inc, ptr %init_level, align 4
  %call237 = tail call i32 @ahc_pci_map_int(ptr noundef %ahc) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end236, %if.end231.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call237, %if.end236 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call25, %if.end16.cleanup_crit_edge ], [ 6, %if.end59.cleanup_crit_edge ], [ %call232, %if.end231.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sxfrctl1) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_pci_map_registers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_intr_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_pci_write_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_softc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahc_pci_intr(ptr noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 146) #6
  %0 = and i8 %call, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %1 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_softc, align 4
  %call2 = tail call i32 @ahc_pci_read_config(ptr noundef %2, i32 noundef 7, i32 noundef 1) #6
  %name.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %3 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name.i, align 4
  %call4 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 98) #6
  %conv5 = zext i8 %call4 to i32
  %call6 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 99) #6
  %conv7 = zext i8 %call6 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %or = or i32 %shl, %conv5
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %4, i32 noundef %or) #9
  %and9 = and i32 %call2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %if.then10

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pci_target_perr_count = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 52
  %5 = ptrtoint ptr %pci_target_perr_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pci_target_perr_count, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %pci_target_perr_count, align 4
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %8) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.end.if.end17_crit_edge
  %and18 = and i32 %call2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end27_crit_edge, label %do.end23

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name.i, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %10) #9
  br label %if.end27

if.end27:                                         ; preds = %do.end23, %if.end17.if.end27_crit_edge
  %and28 = and i32 %call2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end37_crit_edge, label %do.end33

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name.i, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %12) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end33, %if.end27.if.end37_crit_edge
  %and38 = and i32 %call2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end47_crit_edge, label %do.end43

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name.i, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %14) #9
  br label %if.end47

if.end47:                                         ; preds = %do.end43, %if.end37.if.end47_crit_edge
  %and48 = and i32 %call2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end57_crit_edge, label %do.end53

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 4
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %16) #9
  br label %if.end57

if.end57:                                         ; preds = %do.end53, %if.end47.if.end57_crit_edge
  %and58 = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end67_crit_edge, label %do.end63

if.end57.if.end67_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.i, align 4
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %18) #9
  br label %if.end67

if.end67:                                         ; preds = %do.end63, %if.end57.if.end67_crit_edge
  %19 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_softc, align 4
  tail call void @ahc_pci_write_config(ptr noundef %20, i32 noundef 7, i32 noundef %call2, i32 noundef 1) #6
  %and69 = and i32 %call2, 249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %cmp70 = icmp eq i32 %and69, 0
  br i1 %cmp70, label %do.end75, label %if.else

do.end75:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name.i, align 4
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %22) #9
  br label %if.end79

if.else:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 146, i8 noundef zeroext 16) #6
  br label %if.end79

if.end79:                                         ; preds = %if.else, %do.end75
  %pci_target_perr_count80 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 52
  %23 = ptrtoint ptr %pci_target_perr_count80 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pci_target_perr_count80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %24)
  %cmp81 = icmp ugt i32 %24, 10
  br i1 %cmp81, label %do.end86, label %if.end79.if.end99_crit_edge

if.end79.if.end99_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name.i, align 4
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %26, ptr noundef %26, ptr noundef %26, ptr noundef %26, ptr noundef %26, ptr noundef %26) #9
  %seqctl = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 36
  %27 = ptrtoint ptr %seqctl to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %seqctl, align 1
  %29 = or i8 %28, 32
  store i8 %29, ptr %seqctl, align 1
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 96, i8 noundef zeroext %29) #6
  br label %if.end99

if.end99:                                         ; preds = %do.end86, %if.end79.if.end99_crit_edge
  tail call void @ahc_unpause(ptr noundef %ahc) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_pci_chip_init(ptr noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dscommand0 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 6
  %0 = ptrtoint ptr %dscommand0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dscommand0, align 2
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 132, i8 noundef zeroext %1) #6
  %dspcistatus = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 7
  %2 = ptrtoint ptr %dspcistatus to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dspcistatus, align 1
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 134, i8 noundef zeroext %3) #6
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 159) #6
  %6 = and i8 %call, 127
  %or = or i8 %call, -128
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 159, i8 noundef zeroext %or) #6
  %optionmode = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 4
  %7 = ptrtoint ptr %optionmode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %optionmode, align 4
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 8, i8 noundef zeroext %8) #6
  %targcrccnt = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 1
  %9 = ptrtoint ptr %targcrccnt to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %targcrccnt, align 4
  %conv6 = zext i16 %10 to i32
  tail call void @ahc_outw(ptr noundef %ahc, i32 noundef 10, i32 noundef %conv6) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 159, i8 noundef zeroext %6) #6
  %crccontrol1 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 5
  %11 = ptrtoint ptr %crccontrol1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %crccontrol1, align 1
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 157, i8 noundef zeroext %12) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %features, align 4
  %and10 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11.not = icmp eq i32 %and10, 0
  br i1 %cmp11.not, label %if.end.if.end15_crit_edge, label %if.then13

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %scbbaddr = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 8
  %15 = ptrtoint ptr %scbbaddr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %scbbaddr, align 4
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 240, i8 noundef zeroext %16) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  %17 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %features, align 4
  %and17 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18.not = icmp eq i32 %and17, 0
  br i1 %cmp18.not, label %if.end15.if.end22_crit_edge, label %if.then20

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %dff_thrsh = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 9
  %19 = ptrtoint ptr %dff_thrsh to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dff_thrsh, align 1
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 251, i8 noundef zeroext %20) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end15.if.end22_crit_edge
  %call23 = tail call i32 @ahc_chip_init(ptr noundef %ahc) #6
  ret i32 %call23
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ahc_inb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_outb(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_extport(ptr noundef %ahc, ptr nocapture noundef %sxfrctl1) unnamed_addr #0 align 64 {
entry:
  %sd = alloca %struct.seeprom_descriptor, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sd) #6
  %0 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 3
  %3 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 4
  %4 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 5
  %5 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 6
  %6 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 7
  %7 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 8
  %8 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 9
  %9 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 10
  %10 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ahc, ptr %sd, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 30, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 30, ptr %1, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 30, ptr %2, align 4
  %seep_config = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 20
  %14 = ptrtoint ptr %seep_config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %seep_config, align 4
  %flags = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 6, i32 8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %., ptr %3, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 32, ptr %4, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 16, ptr %5, align 2
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 8, ptr %6, align 4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 4, ptr %7, align 2
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2, ptr %8, align 4
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %9, align 2
  %call = call i32 @ahc_acquire_seeprom(ptr noundef %ahc, ptr noundef nonnull %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %entry.if.then47_crit_edge, label %if.then3

entry.if.then47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47

if.then3:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %25 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool4.not = icmp eq i32 %25, 0
  br i1 %tobool4.not, label %if.then3.if.end8_crit_edge, label %do.end

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %26 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name.i, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %27) #9
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then3.if.end8_crit_edge
  %channel = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end8
  %28 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %channel, align 4
  %conv = zext i8 %29 to i32
  %sub = shl nuw nsw i32 %conv, 5
  %mul = add nsw i32 %sub, -2080
  %call9 = call i32 @ahc_read_seeprom(ptr noundef nonnull %sd, ptr noundef %15, i32 noundef %mul, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.cond.lor.lhs.false_crit_edge, label %if.end13

for.cond.lor.lhs.false_crit_edge:                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

if.end13:                                         ; preds = %for.cond
  %call12 = call i32 @ahc_verify_cksum(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp.not = icmp eq i32 %call12, 0
  br i1 %cmp.not, label %if.end13.lor.lhs.false_crit_edge, label %if.then18.thread

if.end13.lor.lhs.false_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13.lor.lhs.false_crit_edge, %for.cond.lor.lhs.false_crit_edge
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %3, align 4
  %cmp16 = icmp eq i32 %31, 8
  br i1 %cmp16, label %if.then18, label %cleanup

if.then18:                                        ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %32 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool19.not = icmp eq i32 %32, 0
  br i1 %tobool19.not, label %if.then18.for.end_crit_edge, label %if.then18.for.end.sink.split_crit_edge

if.then18.for.end.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.then18.for.end_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then18.thread:                                 ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %33 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool19.not225 = icmp eq i32 %33, 0
  br i1 %tobool19.not225, label %if.then18.thread.for.end_crit_edge, label %if.then18.thread.for.end.sink.split_crit_edge

if.then18.thread.for.end.sink.split_crit_edge:    ; preds = %if.then18.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.then18.thread.for.end_crit_edge:               ; preds = %if.then18.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %3, align 4
  br label %for.cond

for.end.sink.split:                               ; preds = %if.then18.thread.for.end.sink.split_crit_edge, %if.then18.for.end.sink.split_crit_edge
  %.str.80.sink = phi ptr [ @.str.80, %if.then18.for.end.sink.split_crit_edge ], [ @.str.83, %if.then18.thread.for.end.sink.split_crit_edge ]
  %have_seeprom.0203228.ph = phi i32 [ 0, %if.then18.for.end.sink.split_crit_edge ], [ %call12, %if.then18.thread.for.end.sink.split_crit_edge ]
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.80.sink) #9
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %if.then18.thread.for.end_crit_edge, %if.then18.for.end_crit_edge
  %have_seeprom.0203228 = phi i32 [ %call12, %if.then18.thread.for.end_crit_edge ], [ 0, %if.then18.for.end_crit_edge ], [ %have_seeprom.0203228.ph, %for.end.sink.split ]
  %35 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sd, align 4
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %0, align 4
  call void @ahc_outb(ptr noundef %36, i32 noundef %38, i8 noundef zeroext 0) #6
  %39 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sd, align 4
  %call.i.i = call zeroext i8 @ahc_inb(ptr noundef %40, i32 noundef 145) #6
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %42)
  %cmp40 = icmp eq i32 %42, 8
  br i1 %cmp40, label %if.then42, label %for.end.if.end45_crit_edge

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %or = or i32 %44, 32
  store i32 %or, ptr %flags, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %for.end.if.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have_seeprom.0203228)
  %tobool46.not = icmp eq i32 %have_seeprom.0203228, 0
  br i1 %tobool46.not, label %if.end45.if.then47_crit_edge, label %if.end45.if.else103_crit_edge

if.end45.if.else103_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else103

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47

if.then47:                                        ; preds = %if.end45.if.then47_crit_edge, %entry.if.then47_crit_edge
  call void @ahc_outb(ptr noundef %ahc, i32 noundef 144, i8 noundef zeroext 2) #6
  %call48 = call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 160) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %call48)
  %cmp50 = icmp eq i8 %call48, 65
  br i1 %cmp50, label %land.lhs.true, label %if.then47.if.end87_crit_edge

if.then47.if.end87_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

land.lhs.true:                                    ; preds = %if.then47
  %call52 = call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 161) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %call52)
  %cmp54 = icmp eq i8 %call52, 68
  br i1 %cmp54, label %land.lhs.true56, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

land.lhs.true56:                                  ; preds = %land.lhs.true
  %call57 = call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 162) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %call57)
  %cmp59 = icmp eq i8 %call57, 80
  br i1 %cmp59, label %land.lhs.true61, label %land.lhs.true56.if.end87_crit_edge

land.lhs.true56.if.end87_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

land.lhs.true61:                                  ; preds = %land.lhs.true56
  %call62 = call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 163) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %call62)
  %cmp64 = icmp eq i8 %call62, 84
  br i1 %cmp64, label %land.lhs.true61.for.body_crit_edge, label %land.lhs.true61.if.end87_crit_edge

land.lhs.true61.if.end87_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

land.lhs.true61.for.body_crit_edge:               ; preds = %land.lhs.true61
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %land.lhs.true61.for.body_crit_edge
  %i.0222 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %land.lhs.true61.for.body_crit_edge ]
  %sc_data.0221 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %15, %land.lhs.true61.for.body_crit_edge ]
  %mul70 = shl nuw i32 %i.0222, 1
  %add = add nuw nsw i32 %mul70, 112
  %call71 = call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef %add) #6
  %conv72 = zext i8 %call71 to i16
  %add74 = add nuw nsw i32 %mul70, 113
  %call75 = call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef %add74) #6
  %conv76 = zext i8 %call75 to i16
  %shl = shl nuw i16 %conv76, 8
  %or77 = or i16 %shl, %conv72
  %45 = ptrtoint ptr %sc_data.0221 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %or77, ptr %sc_data.0221, align 2
  %inc = add nuw nsw i32 %i.0222, 1
  %incdec.ptr = getelementptr i16, ptr %sc_data.0221, i32 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end79, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end79:                                        ; preds = %for.body
  %call80 = call i32 @ahc_verify_cksum(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %for.end79.if.end87_crit_edge, label %if.then82

for.end79.if.end87_crit_edge:                     ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then82:                                        ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %or84 = or i32 %47, 67108864
  store i32 %or84, ptr %flags, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %for.end79.if.end87_crit_edge, %land.lhs.true61.if.end87_crit_edge, %land.lhs.true56.if.end87_crit_edge, %land.lhs.true.if.end87_crit_edge, %if.then47.if.end87_crit_edge
  %have_seeprom.2 = phi i32 [ 0, %land.lhs.true61.if.end87_crit_edge ], [ 0, %land.lhs.true56.if.end87_crit_edge ], [ 0, %land.lhs.true.if.end87_crit_edge ], [ 0, %if.then47.if.end87_crit_edge ], [ %call80, %if.then82 ], [ 0, %for.end79.if.end87_crit_edge ]
  call void @ahc_outb(ptr noundef %ahc, i32 noundef 146, i8 noundef zeroext 16) #6
  call void @ahc_outb(ptr noundef %ahc, i32 noundef 146, i8 noundef zeroext 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have_seeprom.2)
  %tobool88.not = icmp eq i32 %have_seeprom.2, 0
  br i1 %tobool88.not, label %if.then89, label %if.end87.if.else103_crit_edge

if.end87.if.else103_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else103

if.then89:                                        ; preds = %if.end87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %48 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool90.not = icmp eq i32 %48, 0
  br i1 %tobool90.not, label %if.then89.if.end104.thread_crit_edge, label %do.end94

if.then89.if.end104.thread_crit_edge:             ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104.thread

do.end94:                                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  %name.i196 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %49 = ptrtoint ptr %name.i196 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name.i196, align 4
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %50) #9
  br label %if.end104.thread

if.else103:                                       ; preds = %if.end87.if.else103_crit_edge, %if.end45.if.else103_crit_edge
  %have_seeprom.3216 = phi i32 [ %have_seeprom.2, %if.end87.if.else103_crit_edge ], [ %have_seeprom.0203228, %if.end45.if.else103_crit_edge ]
  %max_targets.i = getelementptr inbounds %struct.seeprom_config, ptr %15, i32 0, i32 4
  %51 = ptrtoint ptr %max_targets.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %max_targets.i, align 2
  %53 = and i16 %52, 255
  %and.i = zext i16 %53 to i32
  %adapter_control.i = getelementptr inbounds %struct.seeprom_config, ptr %15, i32 0, i32 2
  %54 = ptrtoint ptr %adapter_control.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %adapter_control.i, align 2
  %56 = and i16 %55, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp.not.i = icmp ne i16 %56, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp4321.i = icmp ne i16 %53, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp4321.i, i1 false
  br i1 %or.cond.i, label %if.else103.for.body.i_crit_edge, label %if.else103.if.end11.i_crit_edge

if.else103.if.end11.i_crit_edge:                  ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.else103.for.body.i_crit_edge:                  ; preds = %if.else103
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0322.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %and.i
  br i1 %exitcond.not.i, label %for.cond.i.if.end11.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.if.end11.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.else103.for.body.i_crit_edge
  %i.0322.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.else103.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x i16], ptr %15, i32 0, i32 %i.0322.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx.i, align 2
  %59 = and i16 %58, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp8.not.i = icmp eq i16 %59, 0
  br i1 %cmp8.not.i, label %for.cond.i, label %if.then10.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags, align 4
  %or.i = or i32 %61, 16384
  store i32 %or.i, ptr %flags, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %for.cond.i.if.end11.i_crit_edge, %if.else103.if.end11.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp13323.not.i = icmp eq i16 %53, 0
  br i1 %cmp13323.not.i, label %if.end11.i.for.end135.i_crit_edge, label %for.body15.lr.ph.i

if.end11.i.for.end135.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end135.i

for.body15.lr.ph.i:                               ; preds = %if.end11.i
  %features.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  br label %for.body15.i

for.body15.i:                                     ; preds = %if.end130.i.for.body15.i_crit_edge, %for.body15.lr.ph.i
  %ultraenb.0327.i = phi i16 [ 0, %for.body15.lr.ph.i ], [ %ultraenb.2.i, %if.end130.i.for.body15.i_crit_edge ]
  %discenable.0326.i = phi i16 [ 0, %for.body15.lr.ph.i ], [ %discenable.1.i, %if.end130.i.for.body15.i_crit_edge ]
  %i.1324.i = phi i32 [ 0, %for.body15.lr.ph.i ], [ %inc134.i, %if.end130.i.for.body15.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.1324.i
  %arrayidx18.i = getelementptr [16 x i16], ptr %15, i32 0, i32 %i.1324.i
  %62 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx18.i, align 2
  %64 = and i16 %63, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool.not.i = icmp eq i16 %64, 0
  %65 = trunc i32 %shl.i to i16
  %conv25.i = select i1 %tobool.not.i, i16 0, i16 %65
  %discenable.1.i = or i16 %conv25.i, %discenable.0326.i
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 4
  %and28.i = and i32 %67, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %cmp29.not.i = icmp eq i32 %and28.i, 0
  br i1 %cmp29.not.i, label %if.else.i, label %if.then31.i

if.then31.i:                                      ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #8
  %68 = and i16 %63, 64
  br label %if.end55.i

if.else.i:                                        ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %adapter_control.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %adapter_control.i, align 2
  %71 = and i16 %70, 2
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else.i, %if.then31.i
  %.sink.i = phi i16 [ %71, %if.else.i ], [ %68, %if.then31.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.sink.i)
  %cmp47.not.i = icmp eq i16 %.sink.i, 0
  %conv53.i = select i1 %cmp47.not.i, i16 0, i16 %65
  %ultraenb.1.i = or i16 %conv53.i, %ultraenb.0327.i
  %72 = and i16 %63, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %72)
  %cmp60.i = icmp eq i16 %72, 4
  br i1 %cmp60.i, label %land.lhs.true.i, label %if.end55.i.if.end77.i_crit_edge

if.end55.i.if.end77.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77.i

land.lhs.true.i:                                  ; preds = %if.end55.i
  %conv62.i = zext i16 %ultraenb.1.i to i32
  %and64.i = and i32 %shl.i, %conv62.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %cmp65.not.i = icmp eq i32 %and64.i, 0
  br i1 %cmp65.not.i, label %land.lhs.true.i.if.end77.i_crit_edge, label %if.then67.i

land.lhs.true.i.if.end77.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77.i

if.then67.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %and71.i = and i16 %63, -8
  %73 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %and71.i, ptr %arrayidx18.i, align 2
  %74 = xor i16 %65, -1
  %conv76.i = and i16 %ultraenb.0327.i, %74
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then67.i, %land.lhs.true.i.if.end77.i_crit_edge, %if.end55.i.if.end77.i_crit_edge
  %ultraenb.2.i = phi i16 [ %conv76.i, %if.then67.i ], [ %ultraenb.1.i, %land.lhs.true.i.if.end77.i_crit_edge ], [ %ultraenb.1.i, %if.end55.i.if.end77.i_crit_edge ]
  %75 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %features.i, align 4
  %and78.i = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %cmp79.not.i = icmp eq i32 %and78.i, 0
  %77 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx18.i, align 2
  br i1 %cmp79.not.i, label %if.else108.i, label %if.then81.i

if.then81.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = and i16 %78, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool86.not.i = icmp eq i16 %79, 0
  %..i = select i1 %tobool86.not.i, i8 0, i8 127
  %add.i = add nuw nsw i32 %i.1324.i, 112
  call void @ahc_outb(ptr noundef %ahc, i32 noundef %add.i, i8 noundef zeroext %..i) #6
  %80 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx18.i, align 2
  %conv93.i = zext i16 %81 to i32
  %and94.i = and i32 %conv93.i, 7
  %conv95.i = zext i16 %ultraenb.2.i to i32
  %and97.i = and i32 %shl.i, %conv95.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  %cond.i = select i1 %tobool98.not.i, i32 0, i32 8
  %or99.i = or i32 %and94.i, %cond.i
  %and103.i = shl nuw nsw i32 %conv93.i, 2
  %82 = and i32 %and103.i, 128
  %83 = or i32 %or99.i, %82
  br label %if.end130.i

if.else108.i:                                     ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv111.i = zext i16 %78 to i32
  %and112.i = shl nuw nsw i32 %conv111.i, 4
  %shl113.i = and i32 %and112.i, 112
  %and117.i = and i32 %conv111.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  %or120.i = or i32 %shl113.i, 15
  %spec.select.i = select i1 %tobool118.not.i, i32 %shl113.i, i32 %or120.i
  %84 = shl i16 %78, 2
  %85 = and i16 %84, 128
  %86 = zext i16 %85 to i32
  %87 = or i32 %spec.select.i, %86
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.else108.i, %if.then81.i
  %scsirate.2.i = phi i32 [ %83, %if.then81.i ], [ %87, %if.else108.i ]
  %add131.i = add nuw nsw i32 %i.1324.i, 32
  %conv132.i = trunc i32 %scsirate.2.i to i8
  call void @ahc_outb(ptr noundef %ahc, i32 noundef %add131.i, i8 noundef zeroext %conv132.i) #6
  %inc134.i = add nuw nsw i32 %i.1324.i, 1
  %exitcond333.not.i = icmp eq i32 %inc134.i, %and.i
  br i1 %exitcond333.not.i, label %for.end135.loopexit.i, label %if.end130.i.for.body15.i_crit_edge

if.end130.i.for.body15.i_crit_edge:               ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15.i

for.end135.loopexit.i:                            ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #8
  %extract331.i = lshr i16 %ultraenb.2.i, 8
  %extract.t332.i = trunc i16 %extract331.i to i8
  %extract.t330.i = trunc i16 %ultraenb.2.i to i8
  %extract.i = lshr i16 %discenable.1.i, 8
  %extract.t329.i = trunc i16 %extract.i to i8
  %extract.t.i = trunc i16 %discenable.1.i to i8
  %phi.bo.i = xor i8 %extract.t.i, -1
  %phi.bo334.i = xor i8 %extract.t329.i, -1
  br label %for.end135.i

for.end135.i:                                     ; preds = %for.end135.loopexit.i, %if.end11.i.for.end135.i_crit_edge
  %discenable.0.lcssa.off0.i = phi i8 [ -1, %if.end11.i.for.end135.i_crit_edge ], [ %phi.bo.i, %for.end135.loopexit.i ]
  %discenable.0.lcssa.off8.i = phi i8 [ -1, %if.end11.i.for.end135.i_crit_edge ], [ %phi.bo334.i, %for.end135.loopexit.i ]
  %ultraenb.0.lcssa.off0.i = phi i8 [ 0, %if.end11.i.for.end135.i_crit_edge ], [ %extract.t330.i, %for.end135.loopexit.i ]
  %ultraenb.0.lcssa.off8.i = phi i8 [ 0, %if.end11.i.for.end135.i_crit_edge ], [ %extract.t332.i, %for.end135.loopexit.i ]
  %brtime_id.i = getelementptr inbounds %struct.seeprom_config, ptr %15, i32 0, i32 3
  %88 = ptrtoint ptr %brtime_id.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %brtime_id.i, align 2
  %90 = trunc i16 %89 to i8
  %conv138.i = and i8 %90, 15
  %our_id.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 31
  %91 = ptrtoint ptr %our_id.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv138.i, ptr %our_id.i, align 2
  %92 = ptrtoint ptr %adapter_control.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %adapter_control.i, align 2
  %94 = lshr i16 %93, 8
  %95 = and i16 %94, 3
  %96 = zext i16 %95 to i32
  %97 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags, align 4
  %or160.i = or i32 %98, %96
  store i32 %or160.i, ptr %flags, align 4
  %bios_control.i = getelementptr inbounds %struct.seeprom_config, ptr %15, i32 0, i32 1
  %99 = ptrtoint ptr %bios_control.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %bios_control.i, align 2
  %101 = and i16 %100, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %tobool163.not.i = icmp eq i16 %101, 0
  br i1 %tobool163.not.i, label %for.end135.i.if.end167.i_crit_edge, label %if.then164.i

for.end135.i.if.end167.i_crit_edge:               ; preds = %for.end135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167.i

if.then164.i:                                     ; preds = %for.end135.i
  call void @__sanitizer_cov_trace_pc() #8
  %or166.i = or i32 %or160.i, 256
  %102 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or166.i, ptr %flags, align 4
  br label %if.end167.i

if.end167.i:                                      ; preds = %if.then164.i, %for.end135.i.if.end167.i_crit_edge
  %103 = ptrtoint ptr %bios_control.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %bios_control.i, align 2
  %105 = and i16 %104, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool171.not.i = icmp eq i16 %105, 0
  br i1 %tobool171.not.i, label %if.end167.i.if.end175.i_crit_edge, label %if.then172.i

if.end167.i.if.end175.i_crit_edge:                ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175.i

if.then172.i:                                     ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags, align 4
  %or174.i = or i32 %107, 524288
  store i32 %or174.i, ptr %flags, align 4
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.then172.i, %if.end167.i.if.end175.i_crit_edge
  %features176.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %108 = ptrtoint ptr %features176.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %features176.i, align 4
  %and177.i = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177.i)
  %tobool178.not.i = icmp eq i32 %and177.i, 0
  br i1 %tobool178.not.i, label %if.end175.i.if.end191.i_crit_edge, label %land.lhs.true179.i

if.end175.i.if.end191.i_crit_edge:                ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191.i

land.lhs.true179.i:                               ; preds = %if.end175.i
  %110 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags, align 4
  %and181.i = and i32 %111, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181.i)
  %cmp182.i = icmp eq i32 %and181.i, 0
  br i1 %cmp182.i, label %if.then184.i, label %land.lhs.true179.i.if.end191.i_crit_edge

land.lhs.true179.i.if.end191.i_crit_edge:         ; preds = %land.lhs.true179.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191.i

if.then184.i:                                     ; preds = %land.lhs.true179.i
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %adapter_control.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %adapter_control.i, align 2
  %114 = and i16 %113, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool188.not.i = icmp eq i16 %114, 0
  %spec.select315.i = select i1 %tobool188.not.i, i8 0, i8 %ultraenb.0.lcssa.off0.i
  %spec.select316.i = select i1 %tobool188.not.i, i8 0, i8 %ultraenb.0.lcssa.off8.i
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.then184.i, %land.lhs.true179.i.if.end191.i_crit_edge, %if.end175.i.if.end191.i_crit_edge
  %ultraenb.3.off0.i = phi i8 [ %ultraenb.0.lcssa.off0.i, %land.lhs.true179.i.if.end191.i_crit_edge ], [ %ultraenb.0.lcssa.off0.i, %if.end175.i.if.end191.i_crit_edge ], [ %spec.select315.i, %if.then184.i ]
  %ultraenb.3.off8.i = phi i8 [ %ultraenb.0.lcssa.off8.i, %land.lhs.true179.i.if.end191.i_crit_edge ], [ %ultraenb.0.lcssa.off8.i, %if.end175.i.if.end191.i_crit_edge ], [ %spec.select316.i, %if.then184.i ]
  %signature.i = getelementptr inbounds %struct.seeprom_config, ptr %15, i32 0, i32 6
  %115 = ptrtoint ptr %signature.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %signature.i, align 2
  %117 = zext i16 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.165)
  switch i16 %116, label %if.end191.i.if.end104_crit_edge [
    i16 592, label %if.end191.i.if.then199.i_crit_edge
    i16 768, label %if.end191.i.if.then199.i_crit_edge257
  ]

if.end191.i.if.then199.i_crit_edge257:            ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then199.i

if.end191.i.if.then199.i_crit_edge:               ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then199.i

if.end191.i.if.end104_crit_edge:                  ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then199.i:                                     ; preds = %if.end191.i.if.then199.i_crit_edge, %if.end191.i.if.then199.i_crit_edge257
  %dev_softc.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %118 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev_softc.i, align 4
  %call.i = call i32 @ahc_pci_read_config(ptr noundef %119, i32 noundef 64, i32 noundef 4) #6
  %and200.i = and i32 %call.i, -3
  %120 = ptrtoint ptr %bios_control.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %bios_control.i, align 2
  %122 = lshr i16 %121, 3
  %123 = and i16 %122, 2
  %124 = zext i16 %123 to i32
  %spec.select317.i = or i32 %and200.i, %124
  %125 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev_softc.i, align 4
  call void @ahc_pci_write_config(ptr noundef %126, i32 noundef 64, i32 noundef %spec.select317.i, i32 noundef 4) #6
  br label %if.end104

if.end104:                                        ; preds = %if.then199.i, %if.end191.i.if.end104_crit_edge
  %127 = and i16 %93, 64
  %128 = shl i16 %93, 1
  %129 = and i16 %128, 32
  %130 = and i16 %89, 7
  %131 = or i16 %127, %130
  %132 = or i16 %131, %129
  %conv211.i = trunc i16 %132 to i8
  call void @ahc_outb(ptr noundef %ahc, i32 noundef 90, i8 noundef zeroext %conv211.i) #6
  call void @ahc_outb(ptr noundef %ahc, i32 noundef 50, i8 noundef zeroext %discenable.0.lcssa.off0.i) #6
  call void @ahc_outb(ptr noundef %ahc, i32 noundef 51, i8 noundef zeroext %discenable.0.lcssa.off8.i) #6
  call void @ahc_outb(ptr noundef %ahc, i32 noundef 48, i8 noundef zeroext %ultraenb.3.off0.i) #6
  call void @ahc_outb(ptr noundef %ahc, i32 noundef 49, i8 noundef zeroext %ultraenb.3.off8.i) #6
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %133 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %features, align 4
  %and105 = and i32 %134, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %cmp106.not = icmp eq i32 %and105, 0
  br i1 %cmp106.not, label %if.end116, label %if.end104.if.then108_crit_edge

if.end104.if.then108_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then108

if.end104.thread:                                 ; preds = %do.end94, %if.then89.if.end104.thread_crit_edge
  %135 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %flags, align 4
  %or100 = or i32 %136, 4
  store i32 %or100, ptr %flags, align 4
  %137 = ptrtoint ptr %seep_config to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %seep_config, align 4
  call void @kfree(ptr noundef %138) #6
  %139 = ptrtoint ptr %seep_config to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %seep_config, align 4
  %features235 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %140 = ptrtoint ptr %features235 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %features235, align 4
  %and105236 = and i32 %141, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105236)
  %cmp106.not237 = icmp eq i32 %and105236, 0
  br i1 %cmp106.not237, label %if.end104.thread.if.end147_crit_edge, label %if.end104.thread.if.then108_crit_edge

if.end104.thread.if.then108_crit_edge:            ; preds = %if.end104.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then108

if.end104.thread.if.end147_crit_edge:             ; preds = %if.end104.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

if.then108:                                       ; preds = %if.end104.thread.if.then108_crit_edge, %if.end104.if.then108_crit_edge
  %sc.0244 = phi ptr [ null, %if.end104.thread.if.then108_crit_edge ], [ %15, %if.end104.if.then108_crit_edge ]
  %have_seeprom.3215242 = phi i32 [ 0, %if.end104.thread.if.then108_crit_edge ], [ %have_seeprom.3216, %if.end104.if.then108_crit_edge ]
  %tobool88.not217239 = phi i1 [ true, %if.end104.thread.if.then108_crit_edge ], [ false, %if.end104.if.then108_crit_edge ]
  %call109 = call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 27) #6
  %142 = and i8 %call109, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %cmp112 = icmp eq i8 %142, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have_seeprom.3215242)
  %tobool117.not = icmp eq i32 %have_seeprom.3215242, 0
  %or.cond = select i1 %cmp112, i1 true, i1 %tobool117.not
  br i1 %or.cond, label %if.else123, label %if.then108.if.then118_crit_edge

if.then108.if.then118_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then118

if.end116:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have_seeprom.3216)
  %tobool117.not.old = icmp eq i32 %have_seeprom.3216, 0
  br i1 %tobool117.not.old, label %if.end116.if.then125_crit_edge, label %if.end116.if.then118_crit_edge

if.end116.if.then118_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then118

if.end116.if.then125_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then125

if.then118:                                       ; preds = %if.end116.if.then118_crit_edge, %if.then108.if.then118_crit_edge
  %sc.0243 = phi ptr [ %sc.0244, %if.then108.if.then118_crit_edge ], [ %15, %if.end116.if.then118_crit_edge ]
  %143 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %flags, align 4
  %or120 = or i32 %144, 536870912
  store i32 %or120, ptr %flags, align 4
  %call121 = call i32 @ahc_acquire_seeprom(ptr noundef %ahc, ptr noundef nonnull %sd)
  %adapter_control = getelementptr inbounds %struct.seeprom_config, ptr %sc.0243, i32 0, i32 2
  %145 = ptrtoint ptr %adapter_control to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %adapter_control, align 2
  %conv122 = zext i16 %146 to i32
  call fastcc void @configure_termination(ptr noundef %ahc, ptr noundef nonnull %sd, i32 noundef %conv122, ptr noundef %sxfrctl1)
  %147 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %sd, align 4
  %149 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %0, align 4
  call void @ahc_outb(ptr noundef %148, i32 noundef %150, i8 noundef zeroext 0) #6
  %151 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %sd, align 4
  %call.i.i198 = call zeroext i8 @ahc_inb(ptr noundef %152, i32 noundef 145) #6
  br label %if.end147

if.else123:                                       ; preds = %if.then108
  br i1 %tobool88.not217239, label %if.else123.if.end147_crit_edge, label %if.else123.if.then125_crit_edge

if.else123.if.then125_crit_edge:                  ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then125

if.else123.if.end147_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

if.then125:                                       ; preds = %if.else123.if.then125_crit_edge, %if.end116.if.then125_crit_edge
  %sc.0246256 = phi ptr [ %sc.0244, %if.else123.if.then125_crit_edge ], [ %15, %if.end116.if.then125_crit_edge ]
  %153 = ptrtoint ptr %sxfrctl1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %sxfrctl1, align 4
  %and126 = and i32 %154, -2
  store i32 %and126, ptr %sxfrctl1, align 4
  %adapter_control127 = getelementptr inbounds %struct.seeprom_config, ptr %sc.0246256, i32 0, i32 2
  %155 = ptrtoint ptr %adapter_control127 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %adapter_control127, align 2
  %157 = and i16 %156, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %cmp130.not = icmp eq i16 %157, 0
  br i1 %cmp130.not, label %if.then125.if.end134_crit_edge, label %if.then132

if.then125.if.end134_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.then132:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #8
  %or133 = or i32 %154, 1
  %158 = ptrtoint ptr %sxfrctl1 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %or133, ptr %sxfrctl1, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.then125.if.end134_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %159 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool135.not = icmp eq i32 %159, 0
  br i1 %tobool135.not, label %if.end134.if.end147_crit_edge, label %do.end139

if.end134.if.end147_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

do.end139:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  %name.i199 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %160 = ptrtoint ptr %name.i199 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %name.i199, align 4
  %162 = ptrtoint ptr %sxfrctl1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %sxfrctl1, align 4
  %and142 = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  %cond = select i1 %tobool143.not, ptr @.str.92, ptr @.str.91
  %call144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %161, ptr noundef nonnull %cond) #9
  br label %if.end147

if.end147:                                        ; preds = %do.end139, %if.end134.if.end147_crit_edge, %if.else123.if.end147_crit_edge, %if.then118, %if.end104.thread.if.end147_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sd) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahc_probe_ext_scbram(ptr noundef %ahc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %0 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip1.i, align 4
  %dev_softc.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %2 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_softc.i, align 4
  %call.i = tail call i32 @ahc_pci_read_config(ptr noundef %3, i32 noundef 64, i32 noundef 4) #6
  %and2.i = and i32 %call.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp.not.i = icmp eq i32 %and2.i, 0
  %features.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %4 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features.i, align 4
  %and3.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp4.not.i = icmp eq i32 %and3.i, 0
  br i1 %cmp4.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 132) #6
  %6 = and i8 %call6.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp9.i = icmp ne i8 %6, 0
  br label %if.end25.i

if.else.i:                                        ; preds = %entry
  %trunc.i = trunc i32 %1 to i8
  %7 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.166)
  switch i8 %trunc.i, label %if.then19.i [
    i8 9, label %if.else.i.done_crit_edge
    i8 8, label %if.else.i.done_crit_edge104
    i8 5, label %if.else.i.done_crit_edge105
    i8 4, label %if.else.i.done_crit_edge106
    i8 3, label %if.else.i.done_crit_edge107
    i8 2, label %if.else.i.done_crit_edge108
    i8 1, label %if.else.i.done_crit_edge109
    i8 0, label %if.else.i.done_crit_edge110
  ]

if.else.i.done_crit_edge110:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.else.i.done_crit_edge109:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.else.i.done_crit_edge108:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.else.i.done_crit_edge107:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.else.i.done_crit_edge106:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.else.i.done_crit_edge105:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.else.i.done_crit_edge104:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.else.i.done_crit_edge:                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %and20.i = and i32 %call.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %cmp21.i = icmp ne i32 %and20.i, 0
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then19.i, %if.then.i
  %ramps.0.shrunk.i = phi i1 [ %cmp9.i, %if.then.i ], [ %cmp21.i, %if.then19.i ]
  %ramps.0.shrunk.not.i = xor i1 %ramps.0.shrunk.i, true
  %brmerge.i = select i1 %ramps.0.shrunk.not.i, i1 true, i1 %cmp.not.i
  br i1 %brmerge.i, label %if.end25.i.done_crit_edge, label %if.end

if.end25.i.done_crit_edge:                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end:                                           ; preds = %if.end25.i
  tail call fastcc void @ahc_scbram_config(ptr noundef %ahc, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %call1 = tail call i32 @ahc_probe_scbs(ptr noundef %ahc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end.done_crit_edge, label %if.end4

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end4:                                          ; preds = %if.end
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 96, i8 noundef zeroext 0) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 146, i8 noundef zeroext 16) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 146, i8 noundef zeroext 8) #6
  tail call fastcc void @ahc_scbram_config(ptr noundef %ahc, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  %call5 = tail call i32 @ahc_probe_scbs(ptr noundef %ahc) #6
  %call6 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 145) #6
  %8 = and i8 %call6, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp7 = icmp eq i8 %8, 0
  br i1 %cmp7, label %if.end4.if.then14_crit_edge, label %lor.lhs.false

if.end4.if.then14_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end4
  %call9 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 146) #6
  %9 = and i8 %call9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp12 = icmp eq i8 %9, 0
  br i1 %cmp12, label %lor.lhs.false.if.then14_crit_edge, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.end4.if.then14_crit_edge
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %lor.lhs.false.if.end15_crit_edge
  %pcheck.0 = phi i32 [ 1, %if.then14 ], [ 0, %lor.lhs.false.if.end15_crit_edge ]
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 146, i8 noundef zeroext 16) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 146, i8 noundef zeroext 8) #6
  tail call fastcc void @ahc_scbram_config(ptr noundef %ahc, i32 noundef 1, i32 noundef %pcheck.0, i32 noundef 1, i32 noundef 0)
  %call16 = tail call i32 @ahc_probe_scbs(ptr noundef %ahc) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call16, i32 %call5)
  %cmp17 = icmp eq i32 %call16, %call5
  br i1 %cmp17, label %land.lhs.true, label %if.end15.if.end31_crit_edge

if.end15.if.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end15
  %call19 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 145) #6
  %10 = and i8 %call19, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp22 = icmp eq i8 %10, 0
  br i1 %cmp22, label %land.lhs.true.if.then30_crit_edge, label %lor.lhs.false24

land.lhs.true.if.then30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

lor.lhs.false24:                                  ; preds = %land.lhs.true
  %call25 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 146) #6
  %11 = and i8 %call25, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp28 = icmp eq i8 %11, 0
  br i1 %cmp28, label %lor.lhs.false24.if.then30_crit_edge, label %lor.lhs.false24.if.end31_crit_edge

lor.lhs.false24.if.end31_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

lor.lhs.false24.if.then30_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false24.if.then30_crit_edge, %land.lhs.true.if.then30_crit_edge
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %lor.lhs.false24.if.end31_crit_edge, %if.end15.if.end31_crit_edge
  %fast.0 = phi i32 [ 1, %if.then30 ], [ 0, %lor.lhs.false24.if.end31_crit_edge ], [ 0, %if.end15.if.end31_crit_edge ]
  %12 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %features.i, align 4
  %and32 = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %cmp33.not = icmp eq i32 %and32, 0
  br i1 %cmp33.not, label %if.end31.done_crit_edge, label %if.then35

if.end31.done_crit_edge:                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then35:                                        ; preds = %if.end31
  tail call fastcc void @ahc_scbram_config(ptr noundef %ahc, i32 noundef 1, i32 noundef %pcheck.0, i32 noundef %fast.0, i32 noundef 1)
  %call36 = tail call i32 @ahc_probe_scbs(ptr noundef %ahc) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call36, i32 %call5)
  %cmp37.not = icmp slt i32 %call36, %call5
  br i1 %cmp37.not, label %if.then35.done_crit_edge, label %if.then39

if.then35.done_crit_edge:                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %call36)
  %cmp40 = icmp sgt i32 %call36, 63
  br i1 %cmp40, label %if.then42, label %if.then39.done_crit_edge

if.then39.done_crit_edge:                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or = or i32 %15, 262144
  store i32 %or, ptr %flags, align 4
  br label %done

done:                                             ; preds = %if.then42, %if.then39.done_crit_edge, %if.then35.done_crit_edge, %if.end31.done_crit_edge, %if.end.done_crit_edge, %if.end25.i.done_crit_edge, %if.else.i.done_crit_edge, %if.else.i.done_crit_edge104, %if.else.i.done_crit_edge105, %if.else.i.done_crit_edge106, %if.else.i.done_crit_edge107, %if.else.i.done_crit_edge108, %if.else.i.done_crit_edge109, %if.else.i.done_crit_edge110
  %tobool47.not = phi i1 [ false, %if.end31.done_crit_edge ], [ false, %if.then39.done_crit_edge ], [ false, %if.then42 ], [ false, %if.then35.done_crit_edge ], [ true, %if.end.done_crit_edge ], [ true, %if.else.i.done_crit_edge ], [ true, %if.else.i.done_crit_edge104 ], [ true, %if.else.i.done_crit_edge105 ], [ true, %if.else.i.done_crit_edge106 ], [ true, %if.else.i.done_crit_edge107 ], [ true, %if.else.i.done_crit_edge108 ], [ true, %if.else.i.done_crit_edge109 ], [ true, %if.else.i.done_crit_edge110 ], [ true, %if.end25.i.done_crit_edge ]
  %enable.0 = phi i32 [ 1, %if.end31.done_crit_edge ], [ 1, %if.then39.done_crit_edge ], [ 1, %if.then42 ], [ 1, %if.then35.done_crit_edge ], [ 0, %if.end.done_crit_edge ], [ 0, %if.else.i.done_crit_edge ], [ 0, %if.else.i.done_crit_edge104 ], [ 0, %if.else.i.done_crit_edge105 ], [ 0, %if.else.i.done_crit_edge106 ], [ 0, %if.else.i.done_crit_edge107 ], [ 0, %if.else.i.done_crit_edge108 ], [ 0, %if.else.i.done_crit_edge109 ], [ 0, %if.else.i.done_crit_edge110 ], [ 0, %if.end25.i.done_crit_edge ]
  %pcheck.1 = phi i32 [ %pcheck.0, %if.end31.done_crit_edge ], [ %pcheck.0, %if.then39.done_crit_edge ], [ %pcheck.0, %if.then42 ], [ %pcheck.0, %if.then35.done_crit_edge ], [ 0, %if.end.done_crit_edge ], [ 0, %if.else.i.done_crit_edge ], [ 0, %if.else.i.done_crit_edge104 ], [ 0, %if.else.i.done_crit_edge105 ], [ 0, %if.else.i.done_crit_edge106 ], [ 0, %if.else.i.done_crit_edge107 ], [ 0, %if.else.i.done_crit_edge108 ], [ 0, %if.else.i.done_crit_edge109 ], [ 0, %if.else.i.done_crit_edge110 ], [ 0, %if.end25.i.done_crit_edge ]
  %fast.1 = phi i32 [ %fast.0, %if.end31.done_crit_edge ], [ %fast.0, %if.then39.done_crit_edge ], [ %fast.0, %if.then42 ], [ %fast.0, %if.then35.done_crit_edge ], [ 0, %if.end.done_crit_edge ], [ 0, %if.else.i.done_crit_edge ], [ 0, %if.else.i.done_crit_edge104 ], [ 0, %if.else.i.done_crit_edge105 ], [ 0, %if.else.i.done_crit_edge106 ], [ 0, %if.else.i.done_crit_edge107 ], [ 0, %if.else.i.done_crit_edge108 ], [ 0, %if.else.i.done_crit_edge109 ], [ 0, %if.else.i.done_crit_edge110 ], [ 0, %if.end25.i.done_crit_edge ]
  %tobool53.not = phi i32 [ 32, %if.end31.done_crit_edge ], [ 64, %if.then39.done_crit_edge ], [ 64, %if.then42 ], [ 32, %if.then35.done_crit_edge ], [ 32, %if.end.done_crit_edge ], [ 32, %if.else.i.done_crit_edge ], [ 32, %if.else.i.done_crit_edge104 ], [ 32, %if.else.i.done_crit_edge105 ], [ 32, %if.else.i.done_crit_edge106 ], [ 32, %if.else.i.done_crit_edge107 ], [ 32, %if.else.i.done_crit_edge108 ], [ 32, %if.else.i.done_crit_edge109 ], [ 32, %if.else.i.done_crit_edge110 ], [ 32, %if.end25.i.done_crit_edge ]
  %large.0 = phi i32 [ 0, %if.end31.done_crit_edge ], [ 1, %if.then39.done_crit_edge ], [ 1, %if.then42 ], [ 0, %if.then35.done_crit_edge ], [ 0, %if.end.done_crit_edge ], [ 0, %if.else.i.done_crit_edge ], [ 0, %if.else.i.done_crit_edge104 ], [ 0, %if.else.i.done_crit_edge105 ], [ 0, %if.else.i.done_crit_edge106 ], [ 0, %if.else.i.done_crit_edge107 ], [ 0, %if.else.i.done_crit_edge108 ], [ 0, %if.else.i.done_crit_edge109 ], [ 0, %if.else.i.done_crit_edge110 ], [ 0, %if.end25.i.done_crit_edge ]
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 96, i8 noundef zeroext -96) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 146, i8 noundef zeroext 16) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 146, i8 noundef zeroext 8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %16 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  %brmerge = or i1 %tobool47.not, %tobool.not
  br i1 %brmerge, label %done.if.end56_crit_edge, label %do.end

done.if.end56_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

do.end:                                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %17 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fast.1)
  %tobool50.not = icmp eq i32 %fast.1, 0
  %cond = select i1 %tobool50.not, ptr @.str.74, ptr @.str.73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pcheck.1)
  %tobool51.not = icmp eq i32 %pcheck.1, 0
  %cond52 = select i1 %tobool51.not, ptr @.str.76, ptr @.str.75
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %18, ptr noundef nonnull %cond, ptr noundef nonnull %cond52, i32 noundef %tobool53.not) #9
  br label %if.end56

if.end56:                                         ; preds = %do.end, %done.if.end56_crit_edge
  tail call fastcc void @ahc_scbram_config(ptr noundef %ahc, i32 noundef %enable.0, i32 noundef %pcheck.1, i32 noundef %fast.1, i32 noundef %large.0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ahc_inw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_pci_map_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_pci_test_register_access(ptr noundef %ahc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %call = tail call i32 @ahc_pci_read_config(ptr noundef %1, i32 noundef 4, i32 noundef 2) #6
  %2 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_softc, align 4
  %and = and i32 %call, -257
  tail call void @ahc_pci_write_config(ptr noundef %3, i32 noundef 4, i32 noundef %and, i32 noundef 2) #6
  %call2 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 135) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call2)
  %cmp = icmp eq i8 %call2, -1
  br i1 %cmp, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end:                                           ; preds = %entry
  %4 = and i8 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp6.not = icmp eq i8 %4, 0
  br i1 %cmp6.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or = or i32 %6, 134217728
  store i32 %or, ptr %flags, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %and11 = and i8 %call2, -6
  %7 = or i8 %and11, 4
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 135, i8 noundef zeroext %7) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end9
  %call16 = tail call i32 @ahc_is_paused(ptr noundef %ahc) #6
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_softc, align 4
  %call20 = tail call i32 @ahc_pci_read_config(ptr noundef %9, i32 noundef 7, i32 noundef 1) #6
  %10 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_softc, align 4
  tail call void @ahc_pci_write_config(ptr noundef %11, i32 noundef 7, i32 noundef %call20, i32 noundef 1) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 146, i8 noundef zeroext 16) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 96, i8 noundef zeroext -128) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 144, i8 noundef zeroext 0) #6
  tail call void @ahc_outl(ptr noundef %ahc, i32 noundef 160, i32 noundef 1520784810) #6
  %call22 = tail call i32 @ahc_inl(ptr noundef %ahc, i32 noundef 160) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1520784810, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 1520784810
  br i1 %cmp23.not, label %if.end26, label %while.end.fail_crit_edge

while.end.fail_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end26:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_softc, align 4
  %call28 = tail call i32 @ahc_pci_read_config(ptr noundef %13, i32 noundef 7, i32 noundef 1) #6
  %and29 = and i32 %call28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %cmp30.not = icmp eq i32 %and29, 0
  %spec.select = select i1 %cmp30.not, i32 0, i32 5
  br label %fail

fail:                                             ; preds = %if.end26, %while.end.fail_crit_edge, %entry.fail_crit_edge
  %error.0 = phi i32 [ 5, %entry.fail_crit_edge ], [ 5, %while.end.fail_crit_edge ], [ %spec.select, %if.end26 ]
  %14 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_softc, align 4
  %call35 = tail call i32 @ahc_pci_read_config(ptr noundef %15, i32 noundef 7, i32 noundef 1) #6
  %16 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_softc, align 4
  tail call void @ahc_pci_write_config(ptr noundef %17, i32 noundef 7, i32 noundef %call35, i32 noundef 1) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 146, i8 noundef zeroext 16) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 96, i8 noundef zeroext -96) #6
  %18 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_softc, align 4
  tail call void @ahc_pci_write_config(ptr noundef %19, i32 noundef 4, i32 noundef %call, i32 noundef 2) #6
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_is_paused(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_outl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_inl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_acquire_seeprom(ptr noundef %ahc, ptr nocapture noundef readonly %sd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 27) #6
  %2 = and i8 %call, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp2 = icmp eq i8 %2, 0
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %3 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sd, align 4
  %sd_control_offset = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 1
  %5 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sd_control_offset, align 4
  %sd_MS = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 5
  %7 = ptrtoint ptr %sd_MS to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sd_MS, align 4
  %conv4 = trunc i16 %8 to i8
  tail call void @ahc_outb(ptr noundef %4, i32 noundef %6, i8 noundef zeroext %conv4) #6
  %9 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd, align 4
  %call.i = tail call zeroext i8 @ahc_inb(ptr noundef %10, i32 noundef 145) #6
  %sd_status_offset = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 2
  %sd_RDY = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 6
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %do.body
  %dec44 = phi i32 [ 999, %do.body ], [ %dec, %while.body.land.rhs_crit_edge ]
  %11 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd, align 4
  %13 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sd_status_offset, align 4
  %call7 = tail call zeroext i8 @ahc_inb(ptr noundef %12, i32 noundef %14) #6
  %conv8 = zext i8 %call7 to i32
  %15 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sd_RDY, align 2
  %conv9 = zext i16 %16 to i32
  %and10 = and i32 %conv9, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11 = icmp eq i32 %and10, 0
  br i1 %cmp11, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %land.rhs
  tail call void @ahc_delay(i32 noundef 1000) #6
  %dec = add nsw i32 %dec44, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %17 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd, align 4
  %19 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sd_status_offset, align 4
  %call15 = tail call zeroext i8 @ahc_inb(ptr noundef %18, i32 noundef %20) #6
  %conv16 = zext i8 %call15 to i32
  %21 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sd_RDY, align 2
  %conv18 = zext i16 %22 to i32
  %and19 = and i32 %conv18, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 0
  br i1 %cmp20, label %do.body23, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body23:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sd, align 4
  %25 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sd_control_offset, align 4
  tail call void @ahc_outb(ptr noundef %24, i32 noundef %26, i8 noundef zeroext 0) #6
  %27 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sd, align 4
  %call.i43 = tail call zeroext i8 @ahc_inb(ptr noundef %28, i32 noundef 145) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body23, %while.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body23 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 1, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_delay(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahc_release_seeprom(ptr nocapture noundef readonly %sd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 4
  %sd_control_offset = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 1
  %2 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sd_control_offset, align 4
  tail call void @ahc_outb(ptr noundef %1, i32 noundef %3, i8 noundef zeroext 0) #6
  %4 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd, align 4
  %call.i = tail call zeroext i8 @ahc_inb(ptr noundef %5, i32 noundef 145) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahc_pci_resume(ptr noundef %ahc) local_unnamed_addr #0 align 64 {
entry:
  %sd = alloca %struct.seeprom_descriptor, align 4
  %sxfrctl1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %bus_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7
  %2 = ptrtoint ptr %bus_softc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_softc, align 4
  tail call void @ahc_pci_write_config(ptr noundef %1, i32 noundef 64, i32 noundef %3, i32 noundef 4) #6
  %4 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_softc, align 4
  %command = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 2
  %6 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %command, align 2
  %conv = zext i8 %7 to i32
  tail call void @ahc_pci_write_config(ptr noundef %5, i32 noundef 4, i32 noundef %conv, i32 noundef 1) #6
  %8 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_softc, align 4
  %csize_lattime = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 7, i32 0, i32 3
  %10 = ptrtoint ptr %csize_lattime to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %csize_lattime, align 1
  %conv5 = zext i8 %11 to i32
  tail call void @ahc_pci_write_config(ptr noundef %9, i32 noundef 12, i32 noundef %conv5, i32 noundef 1) #6
  %flags = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sd) #6
  %14 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 1
  %15 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 2
  %16 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 3
  %17 = getelementptr inbounds i8, ptr %sd, i32 16
  %18 = call ptr @memset(ptr %17, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sxfrctl1) #6
  %19 = ptrtoint ptr %sxfrctl1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %sxfrctl1, align 4, !annotation !289
  %20 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ahc, ptr %sd, align 4
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 30, ptr %14, align 4
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 30, ptr %15, align 4
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 30, ptr %16, align 4
  %call = call i32 @ahc_acquire_seeprom(ptr noundef %ahc, ptr noundef nonnull %sd)
  %seep_config = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 20
  %24 = ptrtoint ptr %seep_config to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %seep_config, align 4
  %adapter_control = getelementptr inbounds %struct.seeprom_config, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %adapter_control to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %adapter_control, align 2
  %conv7 = zext i16 %27 to i32
  call fastcc void @configure_termination(ptr noundef %ahc, ptr noundef nonnull %sd, i32 noundef %conv7, ptr noundef nonnull %sxfrctl1)
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 30, i8 noundef zeroext 0) #6
  %call.i.i = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 145) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sxfrctl1) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sd) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @configure_termination(ptr noundef %ahc, ptr nocapture noundef readonly %sd, i32 noundef %adapter_control, ptr nocapture noundef %sxfrctl1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sxfrctl1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sxfrctl1, align 4
  %1 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sd, align 4
  %sd_control_offset = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 1
  %3 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sd_control_offset, align 4
  %sd_MS = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 5
  %5 = ptrtoint ptr %sd_MS to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sd_MS, align 4
  %sd_CS = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 7
  %7 = ptrtoint ptr %sd_CS to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sd_CS, align 4
  %or367 = or i16 %8, %6
  %conv2 = trunc i16 %or367 to i8
  tail call void @ahc_outb(ptr noundef %2, i32 noundef %4, i8 noundef zeroext %conv2) #6
  %9 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd, align 4
  %call.i = tail call zeroext i8 @ahc_inb(ptr noundef %10, i32 noundef 145) #6
  %and = and i32 %adapter_control, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %11 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %features, align 4
  %and5 = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp6.not = icmp eq i32 %and5, 0
  br i1 %cmp6.not, label %if.else243, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %features8 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %13 = ptrtoint ptr %features8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %features8, align 4
  %and9 = and i32 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10.not = icmp eq i32 %and9, 0
  br i1 %cmp10.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then
  %chip.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %15 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chip.i.i, align 4
  %and.i.i = and i32 %16, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 8
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %channel.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %17 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %channel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %18)
  %cmp1.i.i = icmp eq i8 %18, 66
  %spec.select.i.i = select i1 %cmp1.i.i, i8 12, i8 4
  br label %ahc_new_term_detect.exit

if.else.i.i:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %cmp7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %cmp7.not.i.i, i8 12, i8 2
  br label %ahc_new_term_detect.exit

ahc_new_term_detect.exit:                         ; preds = %if.else.i.i, %if.then.i.i
  %brdctl.0.i.i = phi i8 [ %spec.select.i.i, %if.then.i.i ], [ %..i.i, %if.else.i.i ]
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 29, i8 noundef zeroext %brdctl.0.i.i) #6
  %call.i.i.i = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 145) #6
  %call.i.i = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 29) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 29, i8 noundef zeroext 0) #6
  %conv.i = zext i8 %call.i.i to i32
  %and.i = and i32 %conv.i, 128
  %and2.i = and i32 %conv.i, 64
  %and4.i = and i32 %conv.i, 32
  %and6.i = and i32 %conv.i, 16
  %and8.i = and i32 %conv.i, 8
  %and13 = and i32 %adapter_control, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp14 = icmp eq i32 %and13, 0
  br i1 %cmp14, label %if.then16, label %ahc_new_term_detect.exit.if.end24_crit_edge

ahc_new_term_detect.exit.if.end24_crit_edge:      ; preds = %ahc_new_term_detect.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then16:                                        ; preds = %ahc_new_term_detect.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %19 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.then16.if.end_crit_edge, label %do.end20

if.then16.if.end_crit_edge:                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end20:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %20 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name.i, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %21) #9
  br label %if.end

if.end:                                           ; preds = %do.end20, %if.then16.if.end_crit_edge
  %and22 = and i32 %adapter_control, 2048
  %and23 = and i32 %adapter_control, 4096
  br label %if.end24

if.end24:                                         ; preds = %if.end, %ahc_new_term_detect.exit.if.end24_crit_edge
  %enableSEC_low.0 = phi i32 [ %and22, %if.end ], [ %and4.i, %ahc_new_term_detect.exit.if.end24_crit_edge ]
  %enableSEC_high.0 = phi i32 [ %and23, %if.end ], [ %and2.i, %ahc_new_term_detect.exit.if.end24_crit_edge ]
  br i1 %cmp.not, label %if.then28, label %if.end24.if.end48_crit_edge

if.end24.if.end48_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then28:                                        ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %22 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool29.not = icmp eq i32 %22, 0
  br i1 %tobool29.not, label %if.then28.if.end37_crit_edge, label %do.end33

if.then28.if.end37_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end33:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %name.i368 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %23 = ptrtoint ptr %name.i368 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name.i368, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %24) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end33, %if.then28.if.end37_crit_edge
  %and38 = and i32 %adapter_control, 4
  %and39 = and i32 %adapter_control, 8
  br label %if.end48

if.else:                                          ; preds = %if.then
  %and42 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %cmp43.not = icmp eq i32 %and42, 0
  br i1 %cmp43.not, label %if.else46, label %if.then45

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call.i369 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 27) #6
  %25 = and i8 %call.i369, -49
  %26 = or i8 %25, 16
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 27, i8 noundef zeroext %26) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 29, i8 noundef zeroext 12) #6
  %call.i.i370 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 145) #6
  tail call void @ahc_delay(i32 noundef 500) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 29, i8 noundef zeroext 0) #6
  %call.i26.i = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 145) #6
  tail call void @ahc_delay(i32 noundef 500) #6
  %call4.i = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 29) #6
  %conv5.i = zext i8 %call4.i to i32
  %and6.i371 = lshr i32 %conv5.i, 5
  %and6.lobit.i = and i32 %and6.i371, 1
  %27 = xor i32 %and6.lobit.i, 1
  %and8.i372 = lshr i32 %conv5.i, 6
  %and8.lobit.i = and i32 %and8.i372, 1
  %28 = xor i32 %and8.lobit.i, 1
  %call11.i = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 27) #6
  %29 = lshr i8 %call11.i, 2
  %.lobit.i = and i8 %29, 1
  %30 = zext i8 %.lobit.i to i32
  br label %if.end48

if.else46:                                        ; preds = %if.else
  tail call fastcc void @write_brdctl(ptr noundef %ahc, i8 noundef zeroext 0) #6
  %chip.i.i373 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %31 = ptrtoint ptr %chip.i.i373 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip.i.i373, align 4
  %and.i.i374 = and i32 %32, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.i.i374)
  %cmp.i.i375 = icmp eq i32 %and.i.i374, 8
  br i1 %cmp.i.i375, label %if.then.i.i379, label %if.else.i.i384

if.then.i.i379:                                   ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #8
  %channel.i.i376 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %33 = ptrtoint ptr %channel.i.i376 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %channel.i.i376, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %34)
  %cmp1.i.i377 = icmp eq i8 %34, 66
  %spec.select.i.i378 = select i1 %cmp1.i.i377, i8 12, i8 4
  br label %read_brdctl.exit.i

if.else.i.i384:                                   ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %features8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %features8, align 4
  %and6.i.i381 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i381)
  %cmp7.not.i.i382 = icmp eq i32 %and6.i.i381, 0
  %..i.i383 = select i1 %cmp7.not.i.i382, i8 12, i8 2
  br label %read_brdctl.exit.i

read_brdctl.exit.i:                               ; preds = %if.else.i.i384, %if.then.i.i379
  %brdctl.0.i.i385 = phi i8 [ %spec.select.i.i378, %if.then.i.i379 ], [ %..i.i383, %if.else.i.i384 ]
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 29, i8 noundef zeroext %brdctl.0.i.i385) #6
  %call.i.i.i386 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 145) #6
  %call.i.i387 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 29) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 29, i8 noundef zeroext 0) #6
  %conv.i388 = zext i8 %call.i.i387 to i32
  %and.i389 = lshr i32 %conv.i388, 6
  %and.lobit.i = and i32 %and.i389, 1
  %37 = xor i32 %and.lobit.i, 1
  %and2.lobit.i = lshr i32 %conv.i388, 7
  %38 = xor i32 %and2.lobit.i, 1
  tail call fastcc void @write_brdctl(ptr noundef %ahc, i8 noundef zeroext 32) #6
  %39 = ptrtoint ptr %chip.i.i373 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chip.i.i373, align 4
  %and.i21.i = and i32 %40, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.i21.i)
  %cmp.i22.i = icmp eq i32 %and.i21.i, 8
  br i1 %cmp.i22.i, label %if.then.i26.i, label %if.else.i31.i

if.then.i26.i:                                    ; preds = %read_brdctl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %channel.i23.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %41 = ptrtoint ptr %channel.i23.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %channel.i23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %42)
  %cmp1.i24.i = icmp eq i8 %42, 66
  %spec.select.i25.i = select i1 %cmp1.i24.i, i8 12, i8 4
  br label %aic787X_cable_detect.exit

if.else.i31.i:                                    ; preds = %read_brdctl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %features8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %features8, align 4
  %and6.i28.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i28.i)
  %cmp7.not.i29.i = icmp eq i32 %and6.i28.i, 0
  %..i30.i = select i1 %cmp7.not.i29.i, i8 12, i8 2
  br label %aic787X_cable_detect.exit

aic787X_cable_detect.exit:                        ; preds = %if.else.i31.i, %if.then.i26.i
  %brdctl.0.i32.i = phi i8 [ %spec.select.i25.i, %if.then.i26.i ], [ %..i30.i, %if.else.i31.i ]
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 29, i8 noundef zeroext %brdctl.0.i32.i) #6
  %call.i.i33.i = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 145) #6
  %call.i34.i = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 29) #6
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 29, i8 noundef zeroext 0) #6
  %conv6.i = zext i8 %call.i34.i to i32
  %and7.i = lshr i32 %conv6.i, 6
  %and7.lobit.i = and i32 %and7.i, 1
  %45 = xor i32 %and7.lobit.i, 1
  %and11.lobit.i = lshr i32 %conv6.i, 7
  br label %if.end48

if.end48:                                         ; preds = %aic787X_cable_detect.exit, %if.then45, %if.end37, %if.end24.if.end48_crit_edge
  %internal50_present.0 = phi i32 [ %37, %aic787X_cable_detect.exit ], [ %27, %if.then45 ], [ 0, %if.end37 ], [ 0, %if.end24.if.end48_crit_edge ]
  %internal68_present.0 = phi i32 [ %38, %aic787X_cable_detect.exit ], [ 0, %if.then45 ], [ 1, %if.end37 ], [ 1, %if.end24.if.end48_crit_edge ]
  %externalcable_present.0 = phi i32 [ %45, %aic787X_cable_detect.exit ], [ %28, %if.then45 ], [ 1, %if.end37 ], [ 1, %if.end24.if.end48_crit_edge ]
  %eeprom_present.0 = phi i32 [ %and11.lobit.i, %aic787X_cable_detect.exit ], [ %30, %if.then45 ], [ %and.i, %if.end37 ], [ %and.i, %if.end24.if.end48_crit_edge ]
  %enableSEC_low.1 = phi i32 [ 0, %aic787X_cable_detect.exit ], [ 0, %if.then45 ], [ %enableSEC_low.0, %if.end37 ], [ %enableSEC_low.0, %if.end24.if.end48_crit_edge ]
  %enableSEC_high.1 = phi i32 [ 0, %aic787X_cable_detect.exit ], [ 0, %if.then45 ], [ %enableSEC_high.0, %if.end37 ], [ %enableSEC_high.0, %if.end24.if.end48_crit_edge ]
  %enablePRI_low.1 = phi i32 [ 0, %aic787X_cable_detect.exit ], [ 0, %if.then45 ], [ %and38, %if.end37 ], [ %and8.i, %if.end24.if.end48_crit_edge ]
  %enablePRI_high.1 = phi i32 [ 0, %aic787X_cable_detect.exit ], [ 0, %if.then45 ], [ %and39, %if.end37 ], [ %and6.i, %if.end24.if.end48_crit_edge ]
  %46 = ptrtoint ptr %features8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %features8, align 4
  %and50 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %cmp51 = icmp eq i32 %and50, 0
  %spec.select = select i1 %cmp51, i32 0, i32 %internal68_present.0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %48 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool55.not = icmp eq i32 %48, 0
  br i1 %tobool55.not, label %if.end48.if.end100_crit_edge, label %land.lhs.true

if.end48.if.end100_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

land.lhs.true:                                    ; preds = %if.end48
  %and57 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %cmp58 = icmp eq i32 %and57, 0
  br i1 %cmp58, label %do.end63, label %land.lhs.true.do.end94_crit_edge

land.lhs.true.do.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end94

do.end63:                                         ; preds = %land.lhs.true
  %name.i390 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %49 = ptrtoint ptr %name.i390 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name.i390, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %internal50_present.0)
  %tobool66.not = icmp eq i32 %internal50_present.0, 0
  %cond = select i1 %tobool66.not, ptr @.str.128, ptr @.str.127
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %50, ptr noundef nonnull %cond) #9
  %51 = ptrtoint ptr %features8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %features8, align 4
  %and69 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %cmp70.not = icmp eq i32 %and69, 0
  br i1 %cmp70.not, label %do.end63.if.end89_crit_edge, label %do.end75

do.end63.if.end89_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

do.end75:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool77.not = icmp eq i32 %spec.select, 0
  %cond78 = select i1 %tobool77.not, ptr @.str.128, ptr @.str.127
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull %cond78) #9
  br label %if.end89

if.end89:                                         ; preds = %do.end75, %do.end63.if.end89_crit_edge
  %53 = ptrtoint ptr %name.i390 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name.i390, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %externalcable_present.0)
  %tobool86.not = icmp eq i32 %externalcable_present.0, 0
  %cond87 = select i1 %tobool86.not, ptr @.str.128, ptr @.str.127
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %54, ptr noundef nonnull %cond87) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %.pr = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool90.not = icmp eq i32 %.pr, 0
  br i1 %tobool90.not, label %if.end89.if.end100_crit_edge, label %if.end89.do.end94_crit_edge

if.end89.do.end94_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end94

if.end89.if.end100_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

do.end94:                                         ; preds = %if.end89.do.end94_crit_edge, %land.lhs.true.do.end94_crit_edge
  %name.i392 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %55 = ptrtoint ptr %name.i392 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name.i392, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eeprom_present.0)
  %tobool97.not = icmp eq i32 %eeprom_present.0, 0
  %cond98 = select i1 %tobool97.not, ptr @.str.128, ptr @.str.127
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %56, ptr noundef nonnull %cond98) #9
  br label %if.end100

if.end100:                                        ; preds = %do.end94, %if.end89.if.end100_crit_edge, %if.end48.if.end100_crit_edge
  %flags = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags, align 4
  %and101 = and i32 %58, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %cmp102.not = icmp eq i32 %and101, 0
  br i1 %cmp102.not, label %if.end105, label %if.end100.if.end126_crit_edge

if.end100.if.end126_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

if.end105:                                        ; preds = %if.end100
  %59 = ptrtoint ptr %features8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %features8, align 4
  %and107 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %cmp108 = icmp eq i32 %and107, 0
  br i1 %cmp108, label %land.lhs.true110, label %if.end105.if.end126_crit_edge

if.end105.if.end126_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

land.lhs.true110:                                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %internal50_present.0)
  %cmp111.not = icmp eq i32 %internal50_present.0, 0
  br i1 %cmp111.not, label %land.lhs.true110.if.end126_crit_edge, label %land.lhs.true113

land.lhs.true110.if.end126_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

land.lhs.true113:                                 ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp114.not = icmp eq i32 %spec.select, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %externalcable_present.0)
  %cmp117.not = icmp eq i32 %externalcable_present.0, 0
  %or.cond = select i1 %cmp114.not, i1 true, i1 %cmp117.not
  br i1 %or.cond, label %land.lhs.true113.if.end126_crit_edge, label %if.end126.thread

land.lhs.true113.if.end126_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

if.end126:                                        ; preds = %land.lhs.true113.if.end126_crit_edge, %land.lhs.true110.if.end126_crit_edge, %if.end105.if.end126_crit_edge, %if.end100.if.end126_crit_edge
  %internal50_present.2 = phi i32 [ 0, %land.lhs.true110.if.end126_crit_edge ], [ %internal50_present.0, %land.lhs.true113.if.end126_crit_edge ], [ %internal50_present.0, %if.end105.if.end126_crit_edge ], [ 0, %if.end100.if.end126_crit_edge ]
  %61 = ptrtoint ptr %features8 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %features8, align 4
  %and128 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %cmp129.not = icmp eq i32 %and128, 0
  br i1 %cmp129.not, label %if.end126.if.end168_crit_edge, label %land.lhs.true131

if.end126.if.end168_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end168

if.end126.thread:                                 ; preds = %land.lhs.true113
  %name.i393 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %63 = ptrtoint ptr %name.i393 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name.i393, align 4
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %64) #9
  %65 = ptrtoint ptr %features8 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %features8, align 4
  %and128425 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128425)
  %cmp129.not426 = icmp eq i32 %and128425, 0
  br i1 %cmp129.not426, label %if.end126.thread.if.end168_crit_edge, label %if.end126.thread.if.then140_crit_edge

if.end126.thread.if.then140_crit_edge:            ; preds = %if.end126.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then140

if.end126.thread.if.end168_crit_edge:             ; preds = %if.end126.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end168

land.lhs.true131:                                 ; preds = %if.end126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %externalcable_present.0)
  %cmp132 = icmp eq i32 %externalcable_present.0, 0
  br i1 %cmp132, label %land.lhs.true131.if.then140_crit_edge, label %lor.lhs.false134

land.lhs.true131.if.then140_crit_edge:            ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then140

lor.lhs.false134:                                 ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp135 = icmp eq i32 %spec.select, 0
  br i1 %cmp135, label %lor.lhs.false134.if.then140_crit_edge, label %lor.lhs.false137

lor.lhs.false134.if.then140_crit_edge:            ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then140

lor.lhs.false137:                                 ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enableSEC_high.1)
  %cmp138.not = icmp eq i32 %enableSEC_high.1, 0
  br i1 %cmp138.not, label %lor.lhs.false137.if.end168_crit_edge, label %lor.lhs.false137.if.then140_crit_edge

lor.lhs.false137.if.then140_crit_edge:            ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then140

lor.lhs.false137.if.end168_crit_edge:             ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end168

if.then140:                                       ; preds = %lor.lhs.false137.if.then140_crit_edge, %lor.lhs.false134.if.then140_crit_edge, %land.lhs.true131.if.then140_crit_edge, %if.end126.thread.if.then140_crit_edge
  %internal50_present.2427439 = phi i32 [ %internal50_present.2, %lor.lhs.false137.if.then140_crit_edge ], [ %internal50_present.2, %lor.lhs.false134.if.then140_crit_edge ], [ %internal50_present.2, %land.lhs.true131.if.then140_crit_edge ], [ 0, %if.end126.thread.if.then140_crit_edge ]
  %internal68_present.2429438 = phi i32 [ %internal68_present.0, %lor.lhs.false137.if.then140_crit_edge ], [ 0, %lor.lhs.false134.if.then140_crit_edge ], [ %spec.select, %land.lhs.true131.if.then140_crit_edge ], [ 0, %if.end126.thread.if.then140_crit_edge ]
  %externalcable_present.1431437 = phi i32 [ %externalcable_present.0, %lor.lhs.false137.if.then140_crit_edge ], [ %externalcable_present.0, %lor.lhs.false134.if.then140_crit_edge ], [ 0, %land.lhs.true131.if.then140_crit_edge ], [ 0, %if.end126.thread.if.then140_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %67 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool144.not = icmp eq i32 %67, 0
  br i1 %tobool144.not, label %if.then140.if.end168_crit_edge, label %if.then145

if.then140.if.end168_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end168

if.then145:                                       ; preds = %if.then140
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  %and147 = and i32 %69, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %cmp148.not = icmp eq i32 %and147, 0
  %name.i395 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %70 = ptrtoint ptr %name.i395 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name.i395, align 4
  br i1 %cmp148.not, label %do.end160, label %do.end153

do.end153:                                        ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #8
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %71) #9
  br label %if.end168

do.end160:                                        ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enableSEC_high.1)
  %tobool163.not = icmp eq i32 %enableSEC_high.1, 0
  %cond164 = select i1 %tobool163.not, ptr @.str.76, ptr @.str.147
  %call165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %71, ptr noundef nonnull %cond164) #9
  br label %if.end168

if.end168:                                        ; preds = %do.end160, %do.end153, %if.then140.if.end168_crit_edge, %lor.lhs.false137.if.end168_crit_edge, %if.end126.thread.if.end168_crit_edge, %if.end126.if.end168_crit_edge
  %externalcable_present.1432 = phi i32 [ %externalcable_present.1431437, %do.end153 ], [ %externalcable_present.1431437, %do.end160 ], [ %externalcable_present.1431437, %if.then140.if.end168_crit_edge ], [ %externalcable_present.0, %lor.lhs.false137.if.end168_crit_edge ], [ %externalcable_present.0, %if.end126.if.end168_crit_edge ], [ 0, %if.end126.thread.if.end168_crit_edge ]
  %internal68_present.2430 = phi i32 [ %internal68_present.2429438, %do.end153 ], [ %internal68_present.2429438, %do.end160 ], [ %internal68_present.2429438, %if.then140.if.end168_crit_edge ], [ %internal68_present.0, %lor.lhs.false137.if.end168_crit_edge ], [ %spec.select, %if.end126.if.end168_crit_edge ], [ 0, %if.end126.thread.if.end168_crit_edge ]
  %internal50_present.2428 = phi i32 [ %internal50_present.2427439, %do.end153 ], [ %internal50_present.2427439, %do.end160 ], [ %internal50_present.2427439, %if.then140.if.end168_crit_edge ], [ %internal50_present.2, %lor.lhs.false137.if.end168_crit_edge ], [ %internal50_present.2, %if.end126.if.end168_crit_edge ], [ 0, %if.end126.thread.if.end168_crit_edge ]
  %brddat.0 = phi i8 [ 64, %do.end153 ], [ 64, %do.end160 ], [ 64, %if.then140.if.end168_crit_edge ], [ 0, %lor.lhs.false137.if.end168_crit_edge ], [ 0, %if.end126.if.end168_crit_edge ], [ 0, %if.end126.thread.if.end168_crit_edge ]
  %add = add i32 %internal68_present.2430, %externalcable_present.1432
  %add169 = add i32 %add, %internal50_present.2428
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add169)
  %cmp170 = icmp sgt i32 %add169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enableSEC_low.1)
  %cmp173.not = icmp eq i32 %enableSEC_low.1, 0
  %or.cond440 = select i1 %cmp170, i1 %cmp173.not, i1 false
  br i1 %or.cond440, label %if.end168.if.end211_crit_edge, label %if.then175

if.end168.if.end211_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end211

if.then175:                                       ; preds = %if.end168
  %72 = ptrtoint ptr %features8 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %features8, align 4
  %and177 = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %cmp178.not = icmp eq i32 %and177, 0
  br i1 %cmp178.not, label %if.else184, label %if.then180

if.then180:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #8
  %74 = or i8 %brddat.0, 32
  br label %if.end186

if.else184:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %sxfrctl1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sxfrctl1, align 4
  %or185 = or i32 %76, 1
  store i32 %or185, ptr %sxfrctl1, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.else184, %if.then180
  %brddat.1 = phi i8 [ %74, %if.then180 ], [ %brddat.0, %if.else184 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %77 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool187.not = icmp eq i32 %77, 0
  br i1 %tobool187.not, label %if.end186.if.end211_crit_edge, label %if.then188

if.end186.if.end211_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end211

if.then188:                                       ; preds = %if.end186
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags, align 4
  %and190 = and i32 %79, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %cmp191.not = icmp eq i32 %and190, 0
  %name.i397 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %80 = ptrtoint ptr %name.i397 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name.i397, align 4
  br i1 %cmp191.not, label %do.end203, label %do.end196

do.end196:                                        ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #8
  %call199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %81) #9
  br label %if.end211

do.end203:                                        ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #8
  %cond207 = select i1 %cmp173.not, ptr @.str.76, ptr @.str.147
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %81, ptr noundef nonnull %cond207) #9
  br label %if.end211

if.end211:                                        ; preds = %do.end203, %do.end196, %if.end186.if.end211_crit_edge, %if.end168.if.end211_crit_edge
  %brddat.2 = phi i8 [ %brddat.1, %do.end196 ], [ %brddat.1, %do.end203 ], [ %brddat.1, %if.end186.if.end211_crit_edge ], [ %brddat.0, %if.end168.if.end211_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enablePRI_low.1)
  %cmp212.not = icmp eq i32 %enablePRI_low.1, 0
  br i1 %cmp212.not, label %if.end211.if.end225_crit_edge, label %if.then214

if.end211.if.end225_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end225

if.then214:                                       ; preds = %if.end211
  %82 = ptrtoint ptr %sxfrctl1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sxfrctl1, align 4
  %or215 = or i32 %83, 1
  store i32 %or215, ptr %sxfrctl1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %84 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool216.not = icmp eq i32 %84, 0
  br i1 %tobool216.not, label %if.then214.if.end225_crit_edge, label %do.end220

if.then214.if.end225_crit_edge:                   ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end225

do.end220:                                        ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #8
  %name.i398 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %85 = ptrtoint ptr %name.i398 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name.i398, align 4
  %call223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef %86) #9
  br label %if.end225

if.end225:                                        ; preds = %do.end220, %if.then214.if.end225_crit_edge, %if.end211.if.end225_crit_edge
  %87 = ptrtoint ptr %sxfrctl1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sxfrctl1, align 4
  %conv226 = trunc i32 %88 to i8
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 2, i8 noundef zeroext %conv226) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enablePRI_high.1)
  %cmp227.not = icmp eq i32 %enablePRI_high.1, 0
  br i1 %cmp227.not, label %if.end225.do.body297.sink.split_crit_edge, label %if.then229

if.end225.do.body297.sink.split_crit_edge:        ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body297.sink.split

if.then229:                                       ; preds = %if.end225
  %89 = or i8 %brddat.2, 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %90 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool233.not = icmp eq i32 %90, 0
  br i1 %tobool233.not, label %if.then229.do.body297.sink.split_crit_edge, label %do.end237

if.then229.do.body297.sink.split_crit_edge:       ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body297.sink.split

do.end237:                                        ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #8
  %name.i399 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %91 = ptrtoint ptr %name.i399 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name.i399, align 4
  %call240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %92) #9
  br label %do.body297.sink.split

if.else243:                                       ; preds = %lor.lhs.false
  %and244 = and i32 %adapter_control, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %cmp245.not = icmp eq i32 %and244, 0
  br i1 %cmp245.not, label %if.else243.if.end262_crit_edge, label %if.then247

if.else243.if.end262_crit_edge:                   ; preds = %if.else243
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end262

if.then247:                                       ; preds = %if.else243
  %93 = ptrtoint ptr %sxfrctl1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sxfrctl1, align 4
  %or248 = or i32 %94, 1
  store i32 %or248, ptr %sxfrctl1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %95 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool249.not = icmp eq i32 %95, 0
  br i1 %tobool249.not, label %if.then247.if.end262_crit_edge, label %do.end253

if.then247.if.end262_crit_edge:                   ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end262

do.end253:                                        ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #8
  %name.i400 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %96 = ptrtoint ptr %name.i400 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %name.i400, align 4
  %98 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %features, align 4
  %and257 = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257)
  %tobool258.not = icmp eq i32 %and257, 0
  %cond259 = select i1 %tobool258.not, ptr @.str.76, ptr @.str.162
  %call260 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %97, ptr noundef nonnull %cond259) #9
  br label %if.end262

if.end262:                                        ; preds = %do.end253, %if.then247.if.end262_crit_edge, %if.else243.if.end262_crit_edge
  %and263 = and i32 %adapter_control, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263)
  %cmp264.not = icmp eq i32 %and263, 0
  br i1 %cmp264.not, label %if.end262.if.end288_crit_edge, label %land.lhs.true266

if.end262.if.end288_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end288

land.lhs.true266:                                 ; preds = %if.end262
  %100 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %features, align 4
  %and268 = and i32 %101, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and268)
  %cmp269.not = icmp eq i32 %and268, 0
  br i1 %cmp269.not, label %land.lhs.true266.if.end288_crit_edge, label %if.then271

land.lhs.true266.if.end288_crit_edge:             ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end288

if.then271:                                       ; preds = %land.lhs.true266
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_verbose to i32))
  %102 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool275.not = icmp eq i32 %102, 0
  br i1 %tobool275.not, label %if.then271.if.end288_crit_edge, label %do.end279

if.then271.if.end288_crit_edge:                   ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end288

do.end279:                                        ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #8
  %name.i401 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 55
  %103 = ptrtoint ptr %name.i401 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %name.i401, align 4
  %and283 = and i32 %101, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and283)
  %tobool284.not = icmp eq i32 %and283, 0
  %cond285 = select i1 %tobool284.not, ptr @.str.76, ptr @.str.147
  %call286 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %104, ptr noundef nonnull %cond285) #9
  br label %if.end288

if.end288:                                        ; preds = %do.end279, %if.then271.if.end288_crit_edge, %land.lhs.true266.if.end288_crit_edge, %if.end262.if.end288_crit_edge
  %brddat.4 = phi i8 [ 64, %do.end279 ], [ 64, %if.then271.if.end288_crit_edge ], [ 0, %land.lhs.true266.if.end288_crit_edge ], [ 0, %if.end262.if.end288_crit_edge ]
  %105 = ptrtoint ptr %sxfrctl1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sxfrctl1, align 4
  %conv289 = trunc i32 %106 to i8
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 2, i8 noundef zeroext %conv289) #6
  %107 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %features, align 4
  %and291 = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291)
  %cmp292.not = icmp eq i32 %and291, 0
  br i1 %cmp292.not, label %if.end288.do.body297_crit_edge, label %if.end288.do.body297.sink.split_crit_edge

if.end288.do.body297.sink.split_crit_edge:        ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body297.sink.split

if.end288.do.body297_crit_edge:                   ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body297

do.body297.sink.split:                            ; preds = %if.end288.do.body297.sink.split_crit_edge, %do.end237, %if.then229.do.body297.sink.split_crit_edge, %if.end225.do.body297.sink.split_crit_edge
  %brddat.3.sink = phi i8 [ %89, %do.end237 ], [ %89, %if.then229.do.body297.sink.split_crit_edge ], [ %brddat.2, %if.end225.do.body297.sink.split_crit_edge ], [ %brddat.4, %if.end288.do.body297.sink.split_crit_edge ]
  tail call fastcc void @write_brdctl(ptr noundef %ahc, i8 noundef zeroext %brddat.3.sink)
  br label %do.body297

do.body297:                                       ; preds = %do.body297.sink.split, %if.end288.do.body297_crit_edge
  %109 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sd, align 4
  %111 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %sd_control_offset, align 4
  %113 = ptrtoint ptr %sd_MS to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %sd_MS, align 4
  %conv301 = trunc i16 %114 to i8
  tail call void @ahc_outb(ptr noundef %110, i32 noundef %112, i8 noundef zeroext %conv301) #6
  %115 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sd, align 4
  %call.i402 = tail call zeroext i8 @ahc_inb(ptr noundef %116, i32 noundef 145) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_aic785X_setup(ptr nocapture noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %channel = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 65, ptr %channel, align 4
  %chip = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %chip, align 4
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %4 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196865, ptr %features, align 4
  %bugs = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %5 = ptrtoint ptr %bugs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bugs, align 4
  %or = or i32 %6, 37
  store i32 %or, ptr %bugs, align 4
  %call = tail call i32 @ahc_pci_read_config(ptr noundef %1, i32 noundef 8, i32 noundef 1) #6
  %conv1 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %cmp.not = icmp eq i32 %conv1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %bugs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bugs, align 4
  %or4 = or i32 %8, 16
  store i32 %or4, ptr %bugs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %instruction_ram_size = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %9 = ptrtoint ptr %instruction_ram_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 512, ptr %instruction_ram_size, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_aic7860_setup(ptr nocapture noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %channel = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 65, ptr %channel, align 4
  %chip = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %chip, align 4
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %4 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196865, ptr %features, align 4
  %bugs = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %5 = ptrtoint ptr %bugs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bugs, align 4
  %or = or i32 %6, 37
  store i32 %or, ptr %bugs, align 4
  %call = tail call i32 @ahc_pci_read_config(ptr noundef %1, i32 noundef 8, i32 noundef 1) #6
  %conv1 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %cmp.not = icmp eq i32 %conv1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %bugs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bugs, align 4
  %or4 = or i32 %8, 16
  store i32 %or4, ptr %bugs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %instruction_ram_size = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %9 = ptrtoint ptr %instruction_ram_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 512, ptr %instruction_ram_size, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_apa1480_setup(ptr nocapture noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc.i, align 4
  %channel.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %2 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 65, ptr %channel.i, align 4
  %chip.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %3 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %chip.i, align 4
  %features.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %4 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196865, ptr %features.i, align 4
  %bugs.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %5 = ptrtoint ptr %bugs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bugs.i, align 4
  %or.i = or i32 %6, 37
  store i32 %or.i, ptr %bugs.i, align 4
  %call.i = tail call i32 @ahc_pci_read_config(ptr noundef %1, i32 noundef 8, i32 noundef 1) #6
  %conv1.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %cmp.not.i = icmp eq i32 %conv1.i, 0
  br i1 %cmp.not.i, label %entry.ahc_aic7860_setup.exit_crit_edge, label %if.then.i

entry.ahc_aic7860_setup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_aic7860_setup.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %bugs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bugs.i, align 4
  %or4.i = or i32 %8, 16
  store i32 %or4.i, ptr %bugs.i, align 4
  br label %ahc_aic7860_setup.exit

ahc_aic7860_setup.exit:                           ; preds = %if.then.i, %entry.ahc_aic7860_setup.exit_crit_edge
  %instruction_ram_size.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %9 = ptrtoint ptr %instruction_ram_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 512, ptr %instruction_ram_size.i, align 4
  %10 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %features.i, align 4
  %or = or i32 %11, 524288
  store i32 %or, ptr %features.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ahc_aic7870_setup(ptr nocapture noundef %ahc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 65, ptr %channel, align 4
  %chip = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %chip, align 4
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %2 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 196608, ptr %features, align 4
  %bugs = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %3 = ptrtoint ptr %bugs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bugs, align 4
  %or = or i32 %4, 37
  store i32 %or, ptr %bugs, align 4
  %instruction_ram_size = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %5 = ptrtoint ptr %instruction_ram_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 512, ptr %instruction_ram_size, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_aha394X_setup(ptr nocapture noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %channel.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %0 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 65, ptr %channel.i, align 4
  %chip.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %1 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %chip.i, align 4
  %features.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %2 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 196608, ptr %features.i, align 4
  %bugs.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %3 = ptrtoint ptr %bugs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bugs.i, align 4
  %or.i = or i32 %4, 37
  store i32 %or.i, ptr %bugs.i, align 4
  %instruction_ram_size.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %5 = ptrtoint ptr %instruction_ram_size.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 512, ptr %instruction_ram_size.i, align 4
  %dev_softc.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %6 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_softc.i, align 4
  %devfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %devfn.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devfn.i.i, align 4
  %shr.i.i = lshr i32 %9, 3
  %and.i.i = and i32 %shr.i.i, 31
  %10 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %and.i.i, label %do.end.i [
    i32 4, label %entry.ahc_aha394XX_setup.exit_crit_edge
    i32 5, label %sw.bb1.i
  ]

entry.ahc_aha394XX_setup.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_aha394XX_setup.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_aha394XX_setup.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %and.i.i) #9
  br label %ahc_aha394XX_setup.exit

ahc_aha394XX_setup.exit:                          ; preds = %do.end.i, %sw.bb1.i, %entry.ahc_aha394XX_setup.exit_crit_edge
  %.sink.i = phi i8 [ 65, %do.end.i ], [ 66, %sw.bb1.i ], [ 65, %entry.ahc_aha394XX_setup.exit_crit_edge ]
  %11 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink.i, ptr %channel.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_aha398X_setup(ptr nocapture noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %channel.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %0 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 65, ptr %channel.i, align 4
  %chip.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %1 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %chip.i, align 4
  %features.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %2 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 196608, ptr %features.i, align 4
  %bugs.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %3 = ptrtoint ptr %bugs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bugs.i, align 4
  %or.i = or i32 %4, 37
  store i32 %or.i, ptr %bugs.i, align 4
  %instruction_ram_size.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %5 = ptrtoint ptr %instruction_ram_size.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 512, ptr %instruction_ram_size.i, align 4
  %dev_softc.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %6 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_softc.i, align 4
  %devfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %devfn.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devfn.i.i, align 4
  %shr.i.i = lshr i32 %9, 3
  %and.i.i = and i32 %shr.i.i, 31
  %10 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %and.i.i, label %do.end.i [
    i32 4, label %entry.ahc_aha398XX_setup.exit_crit_edge
    i32 8, label %sw.bb1.i
    i32 12, label %sw.bb3.i
  ]

entry.ahc_aha398XX_setup.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_aha398XX_setup.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_aha398XX_setup.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_aha398XX_setup.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %and.i.i) #9
  br label %ahc_aha398XX_setup.exit

ahc_aha398XX_setup.exit:                          ; preds = %do.end.i, %sw.bb3.i, %sw.bb1.i, %entry.ahc_aha398XX_setup.exit_crit_edge
  %.sink.i = phi i8 [ 65, %do.end.i ], [ 67, %sw.bb3.i ], [ 66, %sw.bb1.i ], [ 65, %entry.ahc_aha398XX_setup.exit_crit_edge ]
  %11 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink.i, ptr %channel.i, align 4
  %flags.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %or.i4 = or i32 %13, 32
  store i32 %or.i4, ptr %flags.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ahc_aic7870h_setup(ptr nocapture noundef %ahc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %channel.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %0 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 65, ptr %channel.i, align 4
  %chip.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %1 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %chip.i, align 4
  %features.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %bugs.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %2 = ptrtoint ptr %bugs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bugs.i, align 4
  %or.i = or i32 %3, 37
  store i32 %or.i, ptr %bugs.i, align 4
  %instruction_ram_size.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %4 = ptrtoint ptr %instruction_ram_size.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 512, ptr %instruction_ram_size.i, align 4
  %5 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1245184, ptr %features.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_aha394Xh_setup(ptr nocapture noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %channel.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %0 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 65, ptr %channel.i.i, align 4
  %chip.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %1 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %chip.i.i, align 4
  %features.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %2 = ptrtoint ptr %features.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 196608, ptr %features.i.i, align 4
  %bugs.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %3 = ptrtoint ptr %bugs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bugs.i.i, align 4
  %or.i.i = or i32 %4, 37
  store i32 %or.i.i, ptr %bugs.i.i, align 4
  %instruction_ram_size.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %5 = ptrtoint ptr %instruction_ram_size.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 512, ptr %instruction_ram_size.i.i, align 4
  %dev_softc.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %6 = ptrtoint ptr %dev_softc.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_softc.i.i, align 4
  %devfn.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %devfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devfn.i.i.i, align 4
  %shr.i.i.i = lshr i32 %9, 3
  %and.i.i.i = and i32 %shr.i.i.i, 31
  %10 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %and.i.i.i, label %do.end.i.i [
    i32 4, label %entry.ahc_aha394X_setup.exit_crit_edge
    i32 5, label %sw.bb1.i.i
  ]

entry.ahc_aha394X_setup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_aha394X_setup.exit

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_aha394X_setup.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %and.i.i.i) #9
  br label %ahc_aha394X_setup.exit

ahc_aha394X_setup.exit:                           ; preds = %do.end.i.i, %sw.bb1.i.i, %entry.ahc_aha394X_setup.exit_crit_edge
  %.sink.i.i = phi i8 [ 65, %do.end.i.i ], [ 66, %sw.bb1.i.i ], [ 65, %entry.ahc_aha394X_setup.exit_crit_edge ]
  %11 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink.i.i, ptr %channel.i.i, align 4
  %12 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %features.i.i, align 4
  %or = or i32 %13, 1048576
  store i32 %or, ptr %features.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_aha494Xh_setup(ptr nocapture noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %channel.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %0 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 65, ptr %channel.i.i, align 4
  %chip.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %1 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %chip.i.i, align 4
  %features.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %2 = ptrtoint ptr %features.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 196608, ptr %features.i.i, align 4
  %bugs.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %3 = ptrtoint ptr %bugs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bugs.i.i, align 4
  %or.i.i = or i32 %4, 37
  store i32 %or.i.i, ptr %bugs.i.i, align 4
  %instruction_ram_size.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %5 = ptrtoint ptr %instruction_ram_size.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 512, ptr %instruction_ram_size.i.i, align 4
  %dev_softc.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %6 = ptrtoint ptr %dev_softc.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_softc.i.i, align 4
  %devfn.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %devfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devfn.i.i.i, align 4
  %shr.i.i.i = lshr i32 %9, 3
  %and.i.i.i = and i32 %shr.i.i.i, 31
  %switch.tableidx = add nsw i32 %and.i.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 4
  br i1 %10, label %switch.lookup, label %do.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %and.i.i.i) #9
  br label %ahc_aha494X_setup.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.offset = add i8 %switch.idx.cast, 65
  br label %ahc_aha494X_setup.exit

ahc_aha494X_setup.exit:                           ; preds = %switch.lookup, %do.end.i.i
  %.sink.i.i = phi i8 [ 65, %do.end.i.i ], [ %switch.offset, %switch.lookup ]
  %11 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink.i.i, ptr %channel.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %or.i1.i = or i32 %13, 32
  store i32 %or.i1.i, ptr %flags.i.i, align 4
  %14 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %features.i.i, align 4
  %or = or i32 %15, 1048576
  store i32 %or, ptr %features.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_aic7880_setup(ptr nocapture noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %channel = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 65, ptr %channel, align 4
  %chip = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %chip, align 4
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %4 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196609, ptr %features, align 4
  %bugs = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %5 = ptrtoint ptr %bugs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bugs, align 4
  %or = or i32 %6, 1
  store i32 %or, ptr %bugs, align 4
  %call = tail call i32 @ahc_pci_read_config(ptr noundef %1, i32 noundef 8, i32 noundef 1) #6
  %conv1 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %cmp.not = icmp eq i32 %conv1, 0
  %7 = ptrtoint ptr %bugs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bugs, align 4
  %. = select i1 %cmp.not, i32 36, i32 16
  %or6 = or i32 %8, %.
  store i32 %or6, ptr %bugs, align 4
  %instruction_ram_size = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %9 = ptrtoint ptr %instruction_ram_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 512, ptr %instruction_ram_size, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_aha394XU_setup(ptr nocapture noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc.i, align 4
  %channel.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %2 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 65, ptr %channel.i, align 4
  %chip.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %3 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %chip.i, align 4
  %features.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %4 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196609, ptr %features.i, align 4
  %bugs.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %5 = ptrtoint ptr %bugs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bugs.i, align 4
  %or.i = or i32 %6, 1
  store i32 %or.i, ptr %bugs.i, align 4
  %call.i = tail call i32 @ahc_pci_read_config(ptr noundef %1, i32 noundef 8, i32 noundef 1) #6
  %conv1.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %cmp.not.i = icmp eq i32 %conv1.i, 0
  %7 = ptrtoint ptr %bugs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bugs.i, align 4
  %..i = select i1 %cmp.not.i, i32 36, i32 16
  %or6.i = or i32 %..i, %8
  store i32 %or6.i, ptr %bugs.i, align 4
  %instruction_ram_size.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %9 = ptrtoint ptr %instruction_ram_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 512, ptr %instruction_ram_size.i, align 4
  %10 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_softc.i, align 4
  %devfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %devfn.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn.i.i, align 4
  %shr.i.i = lshr i32 %13, 3
  %and.i.i = and i32 %shr.i.i, 31
  %14 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %and.i.i, label %do.end.i [
    i32 4, label %entry.ahc_aha394XX_setup.exit_crit_edge
    i32 5, label %sw.bb1.i
  ]

entry.ahc_aha394XX_setup.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_aha394XX_setup.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_aha394XX_setup.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %and.i.i) #9
  br label %ahc_aha394XX_setup.exit

ahc_aha394XX_setup.exit:                          ; preds = %do.end.i, %sw.bb1.i, %entry.ahc_aha394XX_setup.exit_crit_edge
  %.sink.i = phi i8 [ 65, %do.end.i ], [ 66, %sw.bb1.i ], [ 65, %entry.ahc_aha394XX_setup.exit_crit_edge ]
  %15 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink.i, ptr %channel.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_aic7880h_setup(ptr nocapture noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc.i, align 4
  %channel.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %2 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 65, ptr %channel.i, align 4
  %chip.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %3 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %chip.i, align 4
  %features.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %4 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196609, ptr %features.i, align 4
  %bugs.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %5 = ptrtoint ptr %bugs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bugs.i, align 4
  %or.i = or i32 %6, 1
  store i32 %or.i, ptr %bugs.i, align 4
  %call.i = tail call i32 @ahc_pci_read_config(ptr noundef %1, i32 noundef 8, i32 noundef 1) #6
  %conv1.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %cmp.not.i = icmp eq i32 %conv1.i, 0
  %7 = ptrtoint ptr %bugs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bugs.i, align 4
  %..i = select i1 %cmp.not.i, i32 36, i32 16
  %or6.i = or i32 %..i, %8
  store i32 %or6.i, ptr %bugs.i, align 4
  %instruction_ram_size.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %9 = ptrtoint ptr %instruction_ram_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 512, ptr %instruction_ram_size.i, align 4
  %10 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %features.i, align 4
  %or = or i32 %11, 1048576
  store i32 %or, ptr %features.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_aha394XUh_setup(ptr nocapture noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc.i.i, align 4
  %channel.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %2 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 65, ptr %channel.i.i, align 4
  %chip.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %3 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %chip.i.i, align 4
  %features.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %4 = ptrtoint ptr %features.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196609, ptr %features.i.i, align 4
  %bugs.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %5 = ptrtoint ptr %bugs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bugs.i.i, align 4
  %or.i.i = or i32 %6, 1
  store i32 %or.i.i, ptr %bugs.i.i, align 4
  %call.i.i = tail call i32 @ahc_pci_read_config(ptr noundef %1, i32 noundef 8, i32 noundef 1) #6
  %conv1.i.i = and i32 %call.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %cmp.not.i.i = icmp eq i32 %conv1.i.i, 0
  %7 = ptrtoint ptr %bugs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bugs.i.i, align 4
  %..i.i = select i1 %cmp.not.i.i, i32 36, i32 16
  %or6.i.i = or i32 %..i.i, %8
  store i32 %or6.i.i, ptr %bugs.i.i, align 4
  %instruction_ram_size.i.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %9 = ptrtoint ptr %instruction_ram_size.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 512, ptr %instruction_ram_size.i.i, align 4
  %10 = ptrtoint ptr %dev_softc.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_softc.i.i, align 4
  %devfn.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %devfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn.i.i.i, align 4
  %shr.i.i.i = lshr i32 %13, 3
  %and.i.i.i = and i32 %shr.i.i.i, 31
  %14 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %and.i.i.i, label %do.end.i.i [
    i32 4, label %entry.ahc_aha394XU_setup.exit_crit_edge
    i32 5, label %sw.bb1.i.i
  ]

entry.ahc_aha394XU_setup.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_aha394XU_setup.exit

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_aha394XU_setup.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %and.i.i.i) #9
  br label %ahc_aha394XU_setup.exit

ahc_aha394XU_setup.exit:                          ; preds = %do.end.i.i, %sw.bb1.i.i, %entry.ahc_aha394XU_setup.exit_crit_edge
  %.sink.i.i = phi i8 [ 65, %do.end.i.i ], [ 66, %sw.bb1.i.i ], [ 65, %entry.ahc_aha394XU_setup.exit_crit_edge ]
  %15 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink.i.i, ptr %channel.i.i, align 4
  %16 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %features.i.i, align 4
  %or = or i32 %17, 1048576
  store i32 %or, ptr %features.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_aha398XU_setup(ptr nocapture noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc.i, align 4
  %channel.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %2 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 65, ptr %channel.i, align 4
  %chip.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %3 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %chip.i, align 4
  %features.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %4 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196609, ptr %features.i, align 4
  %bugs.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %5 = ptrtoint ptr %bugs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bugs.i, align 4
  %or.i = or i32 %6, 1
  store i32 %or.i, ptr %bugs.i, align 4
  %call.i = tail call i32 @ahc_pci_read_config(ptr noundef %1, i32 noundef 8, i32 noundef 1) #6
  %conv1.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %cmp.not.i = icmp eq i32 %conv1.i, 0
  %7 = ptrtoint ptr %bugs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bugs.i, align 4
  %..i = select i1 %cmp.not.i, i32 36, i32 16
  %or6.i = or i32 %..i, %8
  store i32 %or6.i, ptr %bugs.i, align 4
  %instruction_ram_size.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %9 = ptrtoint ptr %instruction_ram_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 512, ptr %instruction_ram_size.i, align 4
  %10 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_softc.i, align 4
  %devfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %devfn.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn.i.i, align 4
  %shr.i.i = lshr i32 %13, 3
  %and.i.i = and i32 %shr.i.i, 31
  %14 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %and.i.i, label %do.end.i [
    i32 4, label %entry.ahc_aha398XX_setup.exit_crit_edge
    i32 8, label %sw.bb1.i
    i32 12, label %sw.bb3.i
  ]

entry.ahc_aha398XX_setup.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_aha398XX_setup.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_aha398XX_setup.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahc_aha398XX_setup.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %and.i.i) #9
  br label %ahc_aha398XX_setup.exit

ahc_aha398XX_setup.exit:                          ; preds = %do.end.i, %sw.bb3.i, %sw.bb1.i, %entry.ahc_aha398XX_setup.exit_crit_edge
  %.sink.i = phi i8 [ 65, %do.end.i ], [ 67, %sw.bb3.i ], [ 66, %sw.bb1.i ], [ 65, %entry.ahc_aha398XX_setup.exit_crit_edge ]
  %15 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink.i, ptr %channel.i, align 4
  %flags.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %or.i5 = or i32 %17, 32
  store i32 %or.i5, ptr %flags.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_aha2940Pro_setup(ptr nocapture noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 131072
  store i32 %or, ptr %flags, align 4
  %dev_softc.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %2 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_softc.i, align 4
  %channel.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %4 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 65, ptr %channel.i, align 4
  %chip.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %5 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %chip.i, align 4
  %features.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %6 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196609, ptr %features.i, align 4
  %bugs.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %7 = ptrtoint ptr %bugs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bugs.i, align 4
  %or.i = or i32 %8, 1
  store i32 %or.i, ptr %bugs.i, align 4
  %call.i = tail call i32 @ahc_pci_read_config(ptr noundef %3, i32 noundef 8, i32 noundef 1) #6
  %conv1.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %cmp.not.i = icmp eq i32 %conv1.i, 0
  %9 = ptrtoint ptr %bugs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bugs.i, align 4
  %..i = select i1 %cmp.not.i, i32 36, i32 16
  %or6.i = or i32 %..i, %10
  store i32 %or6.i, ptr %bugs.i, align 4
  %instruction_ram_size.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %11 = ptrtoint ptr %instruction_ram_size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 512, ptr %instruction_ram_size.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_aic7890_setup(ptr nocapture noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %channel = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 65, ptr %channel, align 4
  %chip = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10, ptr %chip, align 4
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %4 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 153330, ptr %features, align 4
  %flags = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or = or i32 %6, 16384
  store i32 %or, ptr %flags, align 4
  %call = tail call i32 @ahc_pci_read_config(ptr noundef %1, i32 noundef 8, i32 noundef 1) #6
  %conv1 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %cmp = icmp eq i32 %conv1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bugs = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %7 = ptrtoint ptr %bugs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bugs, align 4
  %or3 = or i32 %8, 6
  store i32 %or3, ptr %bugs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %instruction_ram_size = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %9 = ptrtoint ptr %instruction_ram_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 768, ptr %instruction_ram_size, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ahc_aic7892_setup(ptr nocapture noundef %ahc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 65, ptr %channel, align 4
  %chip = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12, ptr %chip, align 4
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %2 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 253682, ptr %features, align 4
  %flags = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %or = or i32 %4, 16384
  store i32 %or, ptr %flags, align 4
  %bugs = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %5 = ptrtoint ptr %bugs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bugs, align 4
  %or1 = or i32 %6, 64
  store i32 %or1, ptr %bugs, align 4
  %instruction_ram_size = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %7 = ptrtoint ptr %instruction_ram_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1024, ptr %instruction_ram_size, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ahc_aha29160C_setup(ptr nocapture noundef %ahc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc.i, align 4
  %devfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %devfn.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devfn.i.i, align 4
  %and.i.i = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 1
  %conv.i = select i1 %cmp.i, i8 66, i8 65
  %channel.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %4 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %channel.i, align 4
  %chip.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %5 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 13, ptr %chip.i, align 4
  %features.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %flags.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %7, 16384
  store i32 %or.i, ptr %flags.i, align 4
  %bugs.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %8 = ptrtoint ptr %bugs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bugs.i, align 4
  %or1.i = or i32 %9, 64
  store i32 %or1.i, ptr %bugs.i, align 4
  %instruction_ram_size.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %10 = ptrtoint ptr %instruction_ram_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1024, ptr %instruction_ram_size.i, align 4
  %11 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 786162, ptr %features.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_aic7895_setup(ptr nocapture noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devfn.i, align 4
  %and.i = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 1
  %conv = select i1 %cmp, i8 66, i8 65
  %channel = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %channel, align 4
  %call1 = tail call i32 @ahc_pci_read_config(ptr noundef %1, i32 noundef 8, i32 noundef 1) #6
  %conv3 = and i32 %call1, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %cmp4.not = icmp eq i32 %conv3, 0
  %chip6 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  br i1 %cmp4.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %chip6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 9, ptr %chip6, align 4
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %6 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 221745, ptr %features, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %chip6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %chip6, align 4
  %features7 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %8 = ptrtoint ptr %features7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 221233, ptr %features7, align 4
  %call8 = tail call i32 @ahc_pci_read_config(ptr noundef %1, i32 noundef 4, i32 noundef 1) #6
  %or = or i32 %call8, 16
  tail call void @ahc_pci_write_config(ptr noundef %1, i32 noundef 4, i32 noundef %or, i32 noundef 1) #6
  %bugs = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %9 = ptrtoint ptr %bugs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bugs, align 4
  %or9 = or i32 %10, 32
  store i32 %or9, ptr %bugs, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bugs10 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %11 = ptrtoint ptr %bugs10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bugs10, align 4
  %or11 = or i32 %12, 21
  store i32 %or11, ptr %bugs10, align 4
  %flags = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %or12 = or i32 %14, 16384
  store i32 %or12, ptr %flags, align 4
  %instruction_ram_size = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %15 = ptrtoint ptr %instruction_ram_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 512, ptr %instruction_ram_size, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_aic7895h_setup(ptr nocapture noundef %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ahc_aic7895_setup(ptr noundef %ahc)
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %or = or i32 %1, 1048576
  store i32 %or, ptr %features, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ahc_aic7896_setup(ptr nocapture noundef %ahc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devfn.i, align 4
  %and.i = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 1
  %conv = select i1 %cmp, i8 66, i8 65
  %channel = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %channel, align 4
  %chip = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 11, ptr %chip, align 4
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %6 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 161522, ptr %features, align 4
  %flags = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 16384
  store i32 %or, ptr %flags, align 4
  %bugs = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %9 = ptrtoint ptr %bugs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bugs, align 4
  %or1 = or i32 %10, 8
  store i32 %or1, ptr %bugs, align 4
  %instruction_ram_size = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %11 = ptrtoint ptr %instruction_ram_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 768, ptr %instruction_ram_size, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ahc_aic7899_setup(ptr nocapture noundef %ahc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devfn.i, align 4
  %and.i = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 1
  %conv = select i1 %cmp, i8 66, i8 65
  %channel = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %channel, align 4
  %chip = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 13, ptr %chip, align 4
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %6 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 261874, ptr %features, align 4
  %flags = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 16384
  store i32 %or, ptr %flags, align 4
  %bugs = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 18
  %9 = ptrtoint ptr %bugs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bugs, align 4
  %or1 = or i32 %10, 64
  store i32 %or1, ptr %bugs, align 4
  %instruction_ram_size = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 53
  %11 = ptrtoint ptr %instruction_ram_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1024, ptr %instruction_ram_size, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_raid_setup(ptr nocapture noundef readnone %ahc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #9
  ret i32 6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahc_scbram_config(ptr noundef %ahc, i32 noundef %enable, i32 noundef %pcheck, i32 noundef %fast, i32 noundef %large) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %2 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_softc, align 4
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devfn.i, align 4
  %6 = trunc i32 %5 to i8
  %conv = and i8 %6, 7
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 240, i8 noundef zeroext %conv) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and1 = and i32 %8, -33554433
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %large)
  %tobool2.not = icmp eq i32 %large, 0
  %masksel = select i1 %tobool2.not, i32 0, i32 33554432
  %spec.select = or i32 %and1, %masksel
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %flags, align 4
  %dev_softc6 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %10 = ptrtoint ptr %dev_softc6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_softc6, align 4
  %call7 = tail call i32 @ahc_pci_read_config(ptr noundef %11, i32 noundef 64, i32 noundef 4) #6
  %12 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %features, align 4
  %and9 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp.not = icmp eq i32 %and9, 0
  br i1 %cmp.not, label %if.else26, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 132) #6
  %conv13 = zext i8 %call12 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool14.not = icmp eq i32 %enable, 0
  %and16 = and i32 %conv13, 247
  %or17 = or i32 %conv13, 8
  %dscommand0.0 = select i1 %tobool14.not, i32 %or17, i32 %and16
  %and21 = and i32 %dscommand0.0, 253
  %or23 = or i32 %dscommand0.0, 2
  %dscommand0.1 = select i1 %tobool2.not, i32 %or23, i32 %and21
  %conv25 = trunc i32 %dscommand0.1 to i8
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 132, i8 noundef zeroext %conv25) #6
  br label %if.end45

if.else26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fast)
  %tobool27.not = icmp eq i32 %fast, 0
  %and29 = and i32 %call7, -161
  %masksel78 = select i1 %tobool27.not, i32 32, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool33.not = icmp eq i32 %enable, 0
  %masksel79 = select i1 %tobool33.not, i32 128, i32 0
  %devconfig.0 = or i32 %masksel78, %masksel79
  %devconfig.1 = or i32 %devconfig.0, %and29
  br i1 %tobool2.not, label %if.else42, label %if.then40

if.then40:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  %and41 = and i32 %devconfig.1, -65537
  br label %if.end45

if.else42:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  %or43 = or i32 %devconfig.1, 65536
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then40, %if.then11
  %devconfig.2 = phi i32 [ %call7, %if.then11 ], [ %and41, %if.then40 ], [ %or43, %if.else42 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pcheck)
  %tobool46.not = icmp eq i32 %pcheck, 0
  %and50 = and i32 %devconfig.2, -17
  %masksel77 = select i1 %tobool46.not, i32 0, i32 16
  %devconfig.3 = or i32 %and50, %masksel77
  %14 = ptrtoint ptr %dev_softc6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_softc6, align 4
  tail call void @ahc_pci_write_config(ptr noundef %15, i32 noundef 64, i32 noundef %devconfig.3, i32 noundef 4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_probe_scbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_read_seeprom(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_verify_cksum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_unpause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_outw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_chip_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_brdctl(ptr noundef %ahc, i8 noundef zeroext %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 16
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 4
  %and = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp = icmp eq i32 %and, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %channel = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 29
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %3)
  %cmp1 = icmp eq i8 %3, 66
  %spec.select = select i1 %cmp1, i8 24, i8 16
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7.not = icmp eq i32 %and6, 0
  %. = select i1 %cmp7.not, i8 24, i8 0
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then
  %brdctl.0 = phi i8 [ %spec.select, %if.then ], [ %., %if.else ]
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 29, i8 noundef zeroext %brdctl.0) #6
  %call.i = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 145) #6
  %or1559 = or i8 %brdctl.0, %value
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 29, i8 noundef zeroext %or1559) #6
  %call.i60 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 145) #6
  %features17 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %6 = ptrtoint ptr %features17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features17, align 4
  %and18 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %cmp19.not = icmp eq i32 %and18, 0
  %8 = or i8 %or1559, 1
  %9 = and i8 %or1559, -17
  %brdctl.1 = select i1 %cmp19.not, i8 %9, i8 %8
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 29, i8 noundef zeroext %brdctl.1) #6
  %call.i61 = tail call zeroext i8 @ahc_inb(ptr noundef %ahc, i32 noundef 145) #6
  %10 = ptrtoint ptr %features17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %features17, align 4
  %and31 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %cmp32.not = icmp eq i32 %and31, 0
  %12 = and i8 %brdctl.1, -9
  %brdctl.2 = select i1 %cmp32.not, i8 %12, i8 0
  tail call void @ahc_outb(ptr noundef %ahc, i32 noundef 29, i8 noundef zeroext %brdctl.2) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279}
!llvm.module.flags = !{!280, !281, !282, !283, !284, !285, !286, !287}
!llvm.ident = !{!288}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 748, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ahc_pci_config._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ahc_pci_config._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 892, i32 4}
!8 = !{ptr @ahc_pci_config._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ahc_pci_config._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 169, i32 3}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 176, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 182, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 188, i32 3}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 194, i32 3}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 200, i32 3}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 207, i32 3}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 213, i32 3}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 219, i32 3}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 225, i32 3}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 231, i32 3}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 237, i32 3}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 244, i32 3}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 250, i32 3}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 256, i32 3}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 262, i32 3}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 268, i32 3}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 278, i32 3}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 284, i32 3}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 290, i32 3}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 296, i32 3}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 310, i32 3}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 316, i32 3}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 322, i32 3}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 328, i32 3}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 334, i32 3}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 340, i32 3}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 346, i32 3}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 353, i32 3}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 359, i32 3}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 365, i32 3}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 371, i32 3}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 377, i32 3}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 383, i32 3}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 389, i32 3}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 395, i32 3}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 402, i32 3}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 408, i32 3}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 414, i32 3}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 420, i32 3}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 427, i32 3}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 439, i32 3}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 451, i32 3}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 458, i32 3}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 464, i32 3}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 470, i32 3}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 477, i32 3}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 483, i32 3}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 489, i32 3}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 495, i32 3}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 501, i32 3}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 507, i32 3}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 513, i32 3}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 519, i32 3}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 525, i32 3}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 531, i32 3}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 537, i32 3}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 543, i32 3}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 549, i32 3}
!128 = !{ptr @ahc_pci_ident_table, !129, !"ahc_pci_ident_table", i1 false, i1 false}
!129 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 164, i32 38}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 2398, i32 3}
!132 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ahc_aha394XX_setup._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @ahc_aha394XX_setup._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 2423, i32 3}
!137 = !{ptr @ahc_aha398XX_setup._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @ahc_aha398XX_setup._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 2453, i32 3}
!141 = !{ptr @ahc_aha494XX_setup._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @ahc_aha494XX_setup._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 2380, i32 2}
!145 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @ahc_raid_setup._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @ahc_raid_setup._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1151, i32 3}
!150 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @ahc_probe_ext_scbram._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @ahc_probe_ext_scbram._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.77, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1288, i32 4}
!159 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @check_extport._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @check_extport._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1305, i32 7}
!164 = !{ptr @check_extport._entry.79, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @check_extport._entry_ptr.81, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1307, i32 7}
!168 = !{ptr @check_extport._entry.82, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @check_extport._entry_ptr.84, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.86, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1358, i32 4}
!172 = !{ptr @check_extport._entry.85, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @check_extport._entry_ptr.87, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.89, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1395, i32 4}
!176 = !{ptr @check_extport._entry.88, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @check_extport._entry_ptr.90, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.91, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.92, !175, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1933, i32 2}
!182 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @ahc_pci_intr._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @ahc_pci_intr._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.96, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1939, i32 3}
!187 = !{ptr @ahc_pci_intr._entry.95, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @ahc_pci_intr._entry_ptr.97, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.99, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1943, i32 3}
!191 = !{ptr @ahc_pci_intr._entry.98, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @ahc_pci_intr._entry_ptr.100, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.102, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1946, i32 3}
!195 = !{ptr @ahc_pci_intr._entry.101, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @ahc_pci_intr._entry_ptr.103, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.105, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1949, i32 3}
!199 = !{ptr @ahc_pci_intr._entry.104, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @ahc_pci_intr._entry_ptr.106, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.108, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1952, i32 3}
!203 = !{ptr @ahc_pci_intr._entry.107, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @ahc_pci_intr._entry_ptr.109, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.111, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1955, i32 3}
!207 = !{ptr @ahc_pci_intr._entry.110, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @ahc_pci_intr._entry_ptr.112, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.114, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1964, i32 3}
!211 = !{ptr @ahc_pci_intr._entry.113, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @ahc_pci_intr._entry_ptr.115, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.117, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1971, i32 3}
!215 = !{ptr @ahc_pci_intr._entry.116, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @ahc_pci_intr._entry_ptr.118, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.119, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1565, i32 6}
!219 = !{ptr @.str.120, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @configure_termination._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @configure_termination._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.122, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1573, i32 6}
!224 = !{ptr @configure_termination._entry.121, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @configure_termination._entry_ptr.123, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.125, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1600, i32 4}
!228 = !{ptr @configure_termination._entry.124, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @configure_termination._entry_ptr.126, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.127, !227, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.128, !227, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.130, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1605, i32 5}
!234 = !{ptr @configure_termination._entry.129, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @configure_termination._entry_ptr.131, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.133, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1607, i32 4}
!238 = !{ptr @configure_termination._entry.132, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @configure_termination._entry_ptr.134, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.136, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1612, i32 4}
!242 = !{ptr @configure_termination._entry.135, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @configure_termination._entry_ptr.137, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.139, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1638, i32 4}
!246 = !{ptr @configure_termination._entry.138, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @configure_termination._entry_ptr.140, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.142, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1660, i32 6}
!250 = !{ptr @configure_termination._entry.141, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @configure_termination._entry_ptr.143, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.145, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1663, i32 6}
!254 = !{ptr @configure_termination._entry.144, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @configure_termination._entry_ptr.146, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.147, !253, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.149, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1679, i32 6}
!259 = !{ptr @configure_termination._entry.148, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @configure_termination._entry_ptr.150, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.152, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1682, i32 6}
!263 = !{ptr @configure_termination._entry.151, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @configure_termination._entry_ptr.153, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.155, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1692, i32 5}
!267 = !{ptr @configure_termination._entry.154, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @configure_termination._entry_ptr.156, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.158, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1705, i32 5}
!271 = !{ptr @configure_termination._entry.157, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @configure_termination._entry_ptr.159, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @configure_termination._entry.160, !274, !"_entry", i1 false, i1 false}
!274 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1717, i32 5}
!275 = !{ptr @configure_termination._entry_ptr.161, !274, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.162, !274, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @configure_termination._entry.163, !278, !"_entry", i1 false, i1 false}
!278 = !{!"../drivers/scsi/aic7xxx/aic7xxx_pci.c", i32 1727, i32 5}
!279 = !{ptr @configure_termination._entry_ptr.164, !278, !"_entry_ptr", i1 false, i1 false}
!280 = !{i32 1, !"wchar_size", i32 2}
!281 = !{i32 1, !"min_enum_size", i32 4}
!282 = !{i32 8, !"branch-target-enforcement", i32 0}
!283 = !{i32 8, !"sign-return-address", i32 0}
!284 = !{i32 8, !"sign-return-address-all", i32 0}
!285 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!286 = !{i32 7, !"uwtable", i32 1}
!287 = !{i32 7, !"frame-pointer", i32 2}
!288 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!289 = !{!"auto-init"}
