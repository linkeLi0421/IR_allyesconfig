; ModuleID = '/llk/IR_all_yes/drivers/scsi/elx/libefc/efc_cmds.c_pt.bc'
source_filename = "../drivers/scsi/elx/libefc/efc_cmds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.efc_nport = type { %struct.list_head, %struct.kref, ptr, ptr, i32, [32 x i8], i8, i8, i8, i8, i8, ptr, i64, i64, ptr, ptr, i32, i32, %struct.efc_dma, [32 x i8], i64, i64, %struct.efc_sm_ctx, %struct.xarray, i8, i8, i8, i8, i32, i32, [120 x i8], i32 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.efc_dma = type { ptr, ptr, i32, i32, i32, ptr }
%struct.efc_sm_ctx = type { ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.efc = type { ptr, ptr, ptr, i32, i64, i64, i64, i64, i64, ptr, ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.libefc_function_template, %struct.spinlock, i8, i8, i32, ptr, ptr, ptr, i64, i64, i8, i32, i32, ptr, %struct.atomic_t, i8, %struct.spinlock, %struct.list_head, i32 }
%struct.libefc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.efc_domain = type { ptr, [32 x i8], %struct.list_head, %struct.kref, ptr, ptr, ptr, i32, i32, i32, i32, %struct.efc_dma, i64, %struct.efc_sm_ctx, i8, i8, i8, i8, i8, i8, i8, i8, %struct.efc_domain_record, [120 x i8], [120 x i8], %struct.xarray, ptr }
%struct.efc_domain_record = type { i32, i32, [6 x i8], [8 x i8], %union.anon.79, i32, i32, i8, i8 }
%union.anon.79 = type { [512 x i8] }
%struct.sli4_mbox_command_header = type { i8, i8, i16 }
%struct.efc_remote_node = type { i32, i32, i32, i8, ptr, ptr }

@efc_cmd_nport_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 223, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VPI allocation failure\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efc_cmd_nport_alloc\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/elx/libefc/efc_cmds.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efc_cmd_nport_alloc._entry_ptr = internal global ptr @efc_cmd_nport_alloc._entry, section ".printk_index", align 4
@efc_cmd_nport_alloc._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 238, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"need WWN for physical port\0A\00", [36 x i8] zeroinitializer }, align 32
@efc_cmd_nport_alloc._entry_ptr.7 = internal global ptr @efc_cmd_nport_alloc._entry.5, section ".printk_index", align 4
@efc_cmd_nport_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 269, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bad param(s) nport=%p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"efc_cmd_nport_attach\00", [43 x i8] zeroinitializer }, align 32
@efc_cmd_nport_attach._entry_ptr = internal global ptr @efc_cmd_nport_attach._entry, section ".printk_index", align 4
@efc_cmd_nport_attach._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 280, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"REG_VPI format failure\0A\00", [40 x i8] zeroinitializer }, align 32
@efc_cmd_nport_attach._entry_ptr.12 = internal global ptr @efc_cmd_nport_attach._entry.10, section ".printk_index", align 4
@efc_cmd_nport_attach._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 288, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"REG_VPI command failure\0A\00", [39 x i8] zeroinitializer }, align 32
@efc_cmd_nport_attach._entry_ptr.15 = internal global ptr @efc_cmd_nport_attach._entry.13, section ".printk_index", align 4
@efc_cmd_nport_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 301, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad parameter(s) nport=%p\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efc_cmd_nport_free\00", [45 x i8] zeroinitializer }, align 32
@efc_cmd_nport_free._entry_ptr = internal global ptr @efc_cmd_nport_free._entry, section ".printk_index", align 4
@efc_cmd_domain_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 461, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bad parameter(s) domain=%p nport=%p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"efc_cmd_domain_alloc\00", [43 x i8] zeroinitializer }, align 32
@efc_cmd_domain_alloc._entry_ptr = internal global ptr @efc_cmd_domain_alloc._entry, section ".printk_index", align 4
@efc_cmd_domain_alloc._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 471, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate DMA memory\0A\00", [33 x i8] zeroinitializer }, align 32
@efc_cmd_domain_alloc._entry_ptr.22 = internal global ptr @efc_cmd_domain_alloc._entry.20, section ".printk_index", align 4
@efc_cmd_domain_alloc._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 481, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VFI allocation failure\0A\00", [40 x i8] zeroinitializer }, align 32
@efc_cmd_domain_alloc._entry_ptr.25 = internal global ptr @efc_cmd_domain_alloc._entry.23, section ".printk_index", align 4
@efc_cmd_domain_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 519, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bad param(s) domain=%p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"efc_cmd_domain_attach\00", [42 x i8] zeroinitializer }, align 32
@efc_cmd_domain_attach._entry_ptr = internal global ptr @efc_cmd_domain_attach._entry, section ".printk_index", align 4
@efc_cmd_domain_attach._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 530, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"REG_VFI format failure\0A\00", [40 x i8] zeroinitializer }, align 32
@efc_cmd_domain_attach._entry_ptr.30 = internal global ptr @efc_cmd_domain_attach._entry.28, section ".printk_index", align 4
@efc_cmd_domain_attach._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 537, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"REG_VFI command failure\0A\00", [39 x i8] zeroinitializer }, align 32
@efc_cmd_domain_attach._entry_ptr.33 = internal global ptr @efc_cmd_domain_attach._entry.31, section ".printk_index", align 4
@efc_cmd_domain_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 597, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bad parameter(s) domain=%p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efc_cmd_domain_free\00", [44 x i8] zeroinitializer }, align 32
@efc_cmd_domain_free._entry_ptr = internal global ptr @efc_cmd_domain_free._entry, section ".printk_index", align 4
@efc_cmd_node_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 613, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RPI allocation failure addr=%#x rpi=%#x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efc_cmd_node_alloc\00", [45 x i8] zeroinitializer }, align 32
@efc_cmd_node_alloc._entry_ptr = internal global ptr @efc_cmd_node_alloc._entry, section ".printk_index", align 4
@efc_cmd_node_alloc._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 623, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RPI allocation failure addr=%#x\0A\00", [63 x i8] zeroinitializer }, align 32
@efc_cmd_node_alloc._entry_ptr.40 = internal global ptr @efc_cmd_node_alloc._entry.38, section ".printk_index", align 4
@efc_cmd_node_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 665, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bad parameter(s) rnode=%p sparms=%p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efc_cmd_node_attach\00", [44 x i8] zeroinitializer }, align 32
@efc_cmd_node_attach._entry_ptr = internal global ptr @efc_cmd_node_attach._entry, section ".printk_index", align 4
@efc_cmd_node_attach._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 674, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad parameter rnode->index invalid\0A\00", [60 x i8] zeroinitializer }, align 32
@efc_cmd_node_attach._entry_ptr.45 = internal global ptr @efc_cmd_node_attach._entry.43, section ".printk_index", align 4
@efc_node_free_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 693, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bad parameter rnode=%p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efc_node_free_resources\00", [40 x i8] zeroinitializer }, align 32
@efc_node_free_resources._entry_ptr = internal global ptr @efc_node_free_resources._entry, section ".printk_index", align 4
@efc_node_free_resources._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 699, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rnode is still attached\0A\00", [39 x i8] zeroinitializer }, align 32
@efc_node_free_resources._entry_ptr.50 = internal global ptr @efc_node_free_resources._entry.48, section ".printk_index", align 4
@efc_node_free_resources._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 707, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RPI free fail RPI %d addr=%#x\0A\00", [33 x i8] zeroinitializer }, align 32
@efc_node_free_resources._entry_ptr.53 = internal global ptr @efc_node_free_resources._entry.51, section ".printk_index", align 4
@efc_cmd_node_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.54, ptr @.str.2, i32 760, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efc_cmd_node_detach\00", [44 x i8] zeroinitializer }, align 32
@efc_cmd_node_detach._entry_ptr = internal global ptr @efc_cmd_node_detach._entry, section ".printk_index", align 4
@efc_cmd_node_detach._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 776, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"UNREG_RPI failed\0A\00", [46 x i8] zeroinitializer }, align 32
@efc_cmd_node_detach._entry_ptr.57 = internal global ptr @efc_cmd_node_detach._entry.55, section ".printk_index", align 4
@efc_nport_alloc_read_sparm64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.58, ptr @.str.2, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"efc_nport_alloc_read_sparm64\00", [35 x i8] zeroinitializer }, align 32
@efc_nport_alloc_read_sparm64._entry_ptr = internal global ptr @efc_nport_alloc_read_sparm64._entry, section ".printk_index", align 4
@efc_nport_alloc_read_sparm64._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 192, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"READ_SPARM64 format failure\0A\00", [35 x i8] zeroinitializer }, align 32
@efc_nport_alloc_read_sparm64._entry_ptr.61 = internal global ptr @efc_nport_alloc_read_sparm64._entry.59, section ".printk_index", align 4
@efc_nport_alloc_read_sparm64._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 200, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"READ_SPARM64 command failure\0A\00", [34 x i8] zeroinitializer }, align 32
@efc_nport_alloc_read_sparm64._entry_ptr.64 = internal global ptr @efc_nport_alloc_read_sparm64._entry.62, section ".printk_index", align 4
@efc_nport_get_mbox_status.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.65, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"efct\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"efc_nport_get_mbox_status\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bad status vpi=%#x st=%x hdr=%x\0A\00", [63 x i8] zeroinitializer }, align 32
@efc_nport_alloc_init_vpi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 134, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"INIT_VPI format failure\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"efc_nport_alloc_init_vpi\00", [39 x i8] zeroinitializer }, align 32
@efc_nport_alloc_init_vpi._entry_ptr = internal global ptr @efc_nport_alloc_init_vpi._entry, section ".printk_index", align 4
@efc_nport_alloc_init_vpi._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 142, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"INIT_VPI command failure\0A\00", [38 x i8] zeroinitializer }, align 32
@efc_nport_alloc_init_vpi._entry_ptr.72 = internal global ptr @efc_nport_alloc_init_vpi._entry.70, section ".printk_index", align 4
@efc_nport_free_unreg_vpi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 74, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"UNREG_VPI format failure\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"efc_nport_free_unreg_vpi\00", [39 x i8] zeroinitializer }, align 32
@efc_nport_free_unreg_vpi._entry_ptr = internal global ptr @efc_nport_free_unreg_vpi._entry, section ".printk_index", align 4
@efc_nport_free_unreg_vpi._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 82, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"UNREG_VPI command failure\0A\00", [37 x i8] zeroinitializer }, align 32
@efc_nport_free_unreg_vpi._entry_ptr.77 = internal global ptr @efc_nport_free_unreg_vpi._entry.75, section ".printk_index", align 4
@efc_domain_alloc_init_vfi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 438, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"INIT_VFI format failure\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"efc_domain_alloc_init_vfi\00", [38 x i8] zeroinitializer }, align 32
@efc_domain_alloc_init_vfi._entry_ptr = internal global ptr @efc_domain_alloc_init_vfi._entry, section ".printk_index", align 4
@efc_domain_alloc_init_vfi._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 444, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s issue mbox\0A\00", [17 x i8] zeroinitializer }, align 32
@efc_domain_alloc_init_vfi._entry_ptr.82 = internal global ptr @efc_domain_alloc_init_vfi._entry.80, section ".printk_index", align 4
@efc_domain_alloc_init_vfi._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.2, i32 448, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"INIT_VFI command failure\0A\00", [38 x i8] zeroinitializer }, align 32
@efc_domain_alloc_init_vfi._entry_ptr.85 = internal global ptr @efc_domain_alloc_init_vfi._entry.83, section ".printk_index", align 4
@efc_domain_get_mbox_status.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.65, ptr @.str.86, ptr @.str.2, ptr @.str.87, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"efc_domain_get_mbox_status\00", [37 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bad status vfi=%#x st=%x hdr=%x\0A\00", [63 x i8] zeroinitializer }, align 32
@efc_domain_alloc_read_sparm64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.88, ptr @.str.2, i32 391, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"efc_domain_alloc_read_sparm64\00", [34 x i8] zeroinitializer }, align 32
@efc_domain_alloc_read_sparm64._entry_ptr = internal global ptr @efc_domain_alloc_read_sparm64._entry, section ".printk_index", align 4
@efc_domain_alloc_read_sparm64._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.88, ptr @.str.2, i32 400, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_domain_alloc_read_sparm64._entry_ptr.90 = internal global ptr @efc_domain_alloc_read_sparm64._entry.89, section ".printk_index", align 4
@efc_domain_free_unreg_vfi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 576, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"UNREG_VFI format failure\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"efc_domain_free_unreg_vfi\00", [38 x i8] zeroinitializer }, align 32
@efc_domain_free_unreg_vfi._entry_ptr = internal global ptr @efc_domain_free_unreg_vfi._entry, section ".printk_index", align 4
@efc_domain_free_unreg_vfi._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.2, i32 583, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"UNREG_VFI command failure\0A\00", [37 x i8] zeroinitializer }, align 32
@efc_domain_free_unreg_vfi._entry_ptr.95 = internal global ptr @efc_domain_free_unreg_vfi._entry.93, section ".printk_index", align 4
@efc_cmd_node_attach_cb.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.65, ptr @.str.96, ptr @.str.2, ptr @.str.97, i8 0, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efc_cmd_node_attach_cb\00", [41 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bad status cqe=%#x mqe=%#x\0A\00", [36 x i8] zeroinitializer }, align 32
@efc_cmd_node_free_cb.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.65, ptr @.str.98, ptr @.str.2, ptr @.str.97, i8 0, i8 -74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"efc_cmd_node_free_cb\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 223, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 238, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 269, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 280, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 288, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 301, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 460, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 471, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 481, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 519, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 530, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 537, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 597, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 611, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 622, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 664, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 674, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 693, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 699, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 705, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 760, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 776, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 184, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 192, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 200, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 41, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 134, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 142, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 74, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 82, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 438, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 444, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 448, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 324, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 391, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 400, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 576, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 583, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 642, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.382 = private constant [38 x i8] c"../drivers/scsi/elx/libefc/efc_cmds.c\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 729, i32 3 }
@llvm.compiler.used = appending global [131 x ptr] [ptr @efc_cmd_domain_alloc._entry, ptr @efc_cmd_domain_alloc._entry.20, ptr @efc_cmd_domain_alloc._entry.23, ptr @efc_cmd_domain_alloc._entry_ptr, ptr @efc_cmd_domain_alloc._entry_ptr.22, ptr @efc_cmd_domain_alloc._entry_ptr.25, ptr @efc_cmd_domain_attach._entry, ptr @efc_cmd_domain_attach._entry.28, ptr @efc_cmd_domain_attach._entry.31, ptr @efc_cmd_domain_attach._entry_ptr, ptr @efc_cmd_domain_attach._entry_ptr.30, ptr @efc_cmd_domain_attach._entry_ptr.33, ptr @efc_cmd_domain_free._entry, ptr @efc_cmd_domain_free._entry_ptr, ptr @efc_cmd_node_alloc._entry, ptr @efc_cmd_node_alloc._entry.38, ptr @efc_cmd_node_alloc._entry_ptr, ptr @efc_cmd_node_alloc._entry_ptr.40, ptr @efc_cmd_node_attach._entry, ptr @efc_cmd_node_attach._entry.43, ptr @efc_cmd_node_attach._entry_ptr, ptr @efc_cmd_node_attach._entry_ptr.45, ptr @efc_cmd_node_detach._entry, ptr @efc_cmd_node_detach._entry.55, ptr @efc_cmd_node_detach._entry_ptr, ptr @efc_cmd_node_detach._entry_ptr.57, ptr @efc_cmd_nport_alloc._entry, ptr @efc_cmd_nport_alloc._entry.5, ptr @efc_cmd_nport_alloc._entry_ptr, ptr @efc_cmd_nport_alloc._entry_ptr.7, ptr @efc_cmd_nport_attach._entry, ptr @efc_cmd_nport_attach._entry.10, ptr @efc_cmd_nport_attach._entry.13, ptr @efc_cmd_nport_attach._entry_ptr, ptr @efc_cmd_nport_attach._entry_ptr.12, ptr @efc_cmd_nport_attach._entry_ptr.15, ptr @efc_cmd_nport_free._entry, ptr @efc_cmd_nport_free._entry_ptr, ptr @efc_domain_alloc_init_vfi._entry, ptr @efc_domain_alloc_init_vfi._entry.80, ptr @efc_domain_alloc_init_vfi._entry.83, ptr @efc_domain_alloc_init_vfi._entry_ptr, ptr @efc_domain_alloc_init_vfi._entry_ptr.82, ptr @efc_domain_alloc_init_vfi._entry_ptr.85, ptr @efc_domain_alloc_read_sparm64._entry, ptr @efc_domain_alloc_read_sparm64._entry.89, ptr @efc_domain_alloc_read_sparm64._entry_ptr, ptr @efc_domain_alloc_read_sparm64._entry_ptr.90, ptr @efc_domain_free_unreg_vfi._entry, ptr @efc_domain_free_unreg_vfi._entry.93, ptr @efc_domain_free_unreg_vfi._entry_ptr, ptr @efc_domain_free_unreg_vfi._entry_ptr.95, ptr @efc_node_free_resources._entry, ptr @efc_node_free_resources._entry.48, ptr @efc_node_free_resources._entry.51, ptr @efc_node_free_resources._entry_ptr, ptr @efc_node_free_resources._entry_ptr.50, ptr @efc_node_free_resources._entry_ptr.53, ptr @efc_nport_alloc_init_vpi._entry, ptr @efc_nport_alloc_init_vpi._entry.70, ptr @efc_nport_alloc_init_vpi._entry_ptr, ptr @efc_nport_alloc_init_vpi._entry_ptr.72, ptr @efc_nport_alloc_read_sparm64._entry, ptr @efc_nport_alloc_read_sparm64._entry.59, ptr @efc_nport_alloc_read_sparm64._entry.62, ptr @efc_nport_alloc_read_sparm64._entry_ptr, ptr @efc_nport_alloc_read_sparm64._entry_ptr.61, ptr @efc_nport_alloc_read_sparm64._entry_ptr.64, ptr @efc_nport_free_unreg_vpi._entry, ptr @efc_nport_free_unreg_vpi._entry.75, ptr @efc_nport_free_unreg_vpi._entry_ptr, ptr @efc_nport_free_unreg_vpi._entry_ptr.77, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_nport_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_nport_alloc._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_nport_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_nport_attach._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_nport_attach._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_nport_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_domain_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_domain_alloc._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_domain_alloc._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_domain_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_domain_attach._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_domain_attach._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_domain_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_node_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_node_alloc._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_node_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_node_attach._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_free_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_free_resources._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_free_resources._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_node_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_cmd_node_detach._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_nport_alloc_read_sparm64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_nport_alloc_read_sparm64._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_nport_alloc_read_sparm64._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_nport_alloc_init_vpi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_nport_alloc_init_vpi._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_nport_free_unreg_vpi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_nport_free_unreg_vpi._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_domain_alloc_init_vfi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_domain_alloc_init_vfi._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_domain_alloc_init_vfi._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_domain_alloc_read_sparm64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_domain_alloc_read_sparm64._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_domain_free_unreg_vfi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_domain_free_unreg_vfi._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_cmd_nport_alloc(ptr nocapture noundef readonly %efc, ptr noundef %nport, ptr noundef readnone %domain, ptr noundef readonly %wwpn) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [256 x i8], align 1
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %index, align 4, !annotation !184
  %indicator = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 16
  %1 = ptrtoint ptr %indicator to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %indicator, align 8
  %free_req_pending = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 7
  %2 = ptrtoint ptr %free_req_pending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %free_req_pending, align 1
  %tobool.not = icmp eq ptr %wwpn, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sli_wwpn = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 20
  %3 = ptrtoint ptr %wwpn to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %wwpn, align 1
  %5 = ptrtoint ptr %sli_wwpn to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %sli_wwpn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sli = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 2
  %6 = ptrtoint ptr %sli to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sli, align 8
  %call = call i32 @sli_resource_alloc(ptr noundef %7, i32 noundef 1, ptr noundef %indicator, ptr noundef nonnull %index) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %domain, null
  br i1 %tobool5.not, label %if.else10, label %if.then6

if.then6:                                         ; preds = %if.end4
  br i1 %tobool.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %data.i) #5
  %10 = call ptr @memset(ptr %data.i, i32 255, i32 256)
  %dma.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18
  %size.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18, i32 3
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 112, ptr %size.i, align 4
  %pci.i = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %12 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %phys.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18, i32 2
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 112, ptr noundef %phys.i, i32 noundef 3264, i32 noundef 0) #5
  %14 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %dma.i, align 8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then8
  %15 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci.i, align 4
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.21) #8
  %efc1.i.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 3
  %17 = ptrtoint ptr %efc1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %efc1.i.i, align 8
  %attached.i.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 8
  %19 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %attached.i.i, align 2
  %20 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %do.end.i.efc_nport_alloc_read_sparm64.exit.sink.split_crit_edge, label %do.end.i.efc_nport_alloc_read_sparm64.exit.sink.split.sink.split_crit_edge

do.end.i.efc_nport_alloc_read_sparm64.exit.sink.split.sink.split_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_alloc_read_sparm64.exit.sink.split.sink.split

do.end.i.efc_nport_alloc_read_sparm64.exit.sink.split_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_alloc_read_sparm64.exit.sink.split

if.end.i:                                         ; preds = %if.then8
  %22 = ptrtoint ptr %sli to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sli, align 8
  %24 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %indicator, align 8
  %conv.i = trunc i32 %25 to i16
  %call11.i = call i32 @sli_cmd_read_sparm64(ptr noundef %23, ptr noundef nonnull %data.i, ptr noundef %dma.i, i16 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end20.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end.i
  %26 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci.i, align 4
  %dev18.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.60) #8
  %efc1.i51.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 3
  %28 = ptrtoint ptr %efc1.i51.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %efc1.i51.i, align 8
  %attached.i52.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 8
  %30 = ptrtoint ptr %attached.i52.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %attached.i52.i, align 2
  %31 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma.i, align 8
  %tobool.not.i54.i = icmp eq ptr %32, null
  br i1 %tobool.not.i54.i, label %do.end16.i.efc_nport_alloc_read_sparm64.exit.sink.split_crit_edge, label %do.end16.i.efc_nport_alloc_read_sparm64.exit.sink.split.sink.split_crit_edge

do.end16.i.efc_nport_alloc_read_sparm64.exit.sink.split.sink.split_crit_edge: ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_alloc_read_sparm64.exit.sink.split.sink.split

do.end16.i.efc_nport_alloc_read_sparm64.exit.sink.split_crit_edge: ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_alloc_read_sparm64.exit.sink.split

if.end20.i:                                       ; preds = %if.end.i
  %issue_mbox_rqst.i = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 15, i32 4
  %33 = ptrtoint ptr %issue_mbox_rqst.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %issue_mbox_rqst.i, align 4
  %35 = ptrtoint ptr %efc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %efc, align 8
  %call22.i = call i32 %34(ptr noundef %36, ptr noundef nonnull %data.i, ptr noundef nonnull @efc_nport_alloc_read_sparm64_cb, ptr noundef %nport) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end20.i.efc_nport_alloc_read_sparm64.exit_crit_edge, label %do.end27.i

if.end20.i.efc_nport_alloc_read_sparm64.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_alloc_read_sparm64.exit

do.end27.i:                                       ; preds = %if.end20.i
  %37 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci.i, align 4
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.63) #8
  %efc1.i64.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 3
  %39 = ptrtoint ptr %efc1.i64.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %efc1.i64.i, align 8
  %attached.i65.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 8
  %41 = ptrtoint ptr %attached.i65.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %attached.i65.i, align 2
  %42 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma.i, align 8
  %tobool.not.i67.i = icmp eq ptr %43, null
  br i1 %tobool.not.i67.i, label %do.end27.i.efc_nport_alloc_read_sparm64.exit.sink.split_crit_edge, label %do.end27.i.efc_nport_alloc_read_sparm64.exit.sink.split.sink.split_crit_edge

do.end27.i.efc_nport_alloc_read_sparm64.exit.sink.split.sink.split_crit_edge: ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_alloc_read_sparm64.exit.sink.split.sink.split

do.end27.i.efc_nport_alloc_read_sparm64.exit.sink.split_crit_edge: ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_alloc_read_sparm64.exit.sink.split

efc_nport_alloc_read_sparm64.exit.sink.split.sink.split: ; preds = %do.end27.i.efc_nport_alloc_read_sparm64.exit.sink.split.sink.split_crit_edge, %do.end16.i.efc_nport_alloc_read_sparm64.exit.sink.split.sink.split_crit_edge, %do.end.i.efc_nport_alloc_read_sparm64.exit.sink.split.sink.split_crit_edge
  %.sink = phi ptr [ %18, %do.end.i.efc_nport_alloc_read_sparm64.exit.sink.split.sink.split_crit_edge ], [ %29, %do.end16.i.efc_nport_alloc_read_sparm64.exit.sink.split.sink.split_crit_edge ], [ %40, %do.end27.i.efc_nport_alloc_read_sparm64.exit.sink.split.sink.split_crit_edge ]
  %.sink39 = phi ptr [ %21, %do.end.i.efc_nport_alloc_read_sparm64.exit.sink.split.sink.split_crit_edge ], [ %32, %do.end16.i.efc_nport_alloc_read_sparm64.exit.sink.split.sink.split_crit_edge ], [ %43, %do.end27.i.efc_nport_alloc_read_sparm64.exit.sink.split.sink.split_crit_edge ]
  %pci.i68.i = getelementptr inbounds %struct.efc, ptr %.sink, i32 0, i32 1
  %44 = ptrtoint ptr %pci.i68.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci.i68.i, align 4
  %dev.i69.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %46 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size.i, align 4
  %48 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %phys.i, align 8
  call void @dma_free_attrs(ptr noundef %dev.i69.i, i32 noundef %47, ptr noundef nonnull %.sink39, i32 noundef %49, i32 noundef 0) #5
  %50 = call ptr @memset(ptr %dma.i, i32 0, i32 24)
  br label %efc_nport_alloc_read_sparm64.exit.sink.split

efc_nport_alloc_read_sparm64.exit.sink.split:     ; preds = %efc_nport_alloc_read_sparm64.exit.sink.split.sink.split, %do.end27.i.efc_nport_alloc_read_sparm64.exit.sink.split_crit_edge, %do.end16.i.efc_nport_alloc_read_sparm64.exit.sink.split_crit_edge, %do.end.i.efc_nport_alloc_read_sparm64.exit.sink.split_crit_edge
  %.sink38 = phi ptr [ %18, %do.end.i.efc_nport_alloc_read_sparm64.exit.sink.split_crit_edge ], [ %29, %do.end16.i.efc_nport_alloc_read_sparm64.exit.sink.split_crit_edge ], [ %40, %do.end27.i.efc_nport_alloc_read_sparm64.exit.sink.split_crit_edge ], [ %.sink, %efc_nport_alloc_read_sparm64.exit.sink.split.sink.split ]
  %sli.i.i = getelementptr inbounds %struct.efc, ptr %.sink38, i32 0, i32 2
  %51 = ptrtoint ptr %sli.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sli.i.i, align 8
  %53 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %indicator, align 8
  %call.i50.i = call i32 @sli_resource_free(ptr noundef %52, i32 noundef 1, i32 noundef %54) #5
  call void @efc_nport_cb(ptr noundef %.sink38, i32 noundef 21, ptr noundef %nport) #5
  br label %efc_nport_alloc_read_sparm64.exit

efc_nport_alloc_read_sparm64.exit:                ; preds = %efc_nport_alloc_read_sparm64.exit.sink.split, %if.end20.i.efc_nport_alloc_read_sparm64.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %data.i) #5
  br label %cleanup

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @efc_nport_alloc_init_vpi(ptr noundef %nport)
  br label %cleanup

if.else10:                                        ; preds = %if.end4
  br i1 %tobool.not, label %do.end15, label %if.else10.cleanup_crit_edge

if.else10.cleanup_crit_edge:                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end15:                                         ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #7
  %pci16 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %55 = ptrtoint ptr %pci16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pci16, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.6) #8
  %57 = ptrtoint ptr %sli to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sli, align 8
  %59 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %indicator, align 8
  %call20 = call i32 @sli_resource_free(ptr noundef %58, i32 noundef 1, i32 noundef %60) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.else10.cleanup_crit_edge, %if.else, %efc_nport_alloc_read_sparm64.exit, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end15 ], [ 0, %if.else10.cleanup_crit_edge ], [ 0, %efc_nport_alloc_read_sparm64.exit ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_resource_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efc_nport_alloc_init_vpi(ptr noundef %nport) unnamed_addr #0 align 64 {
entry:
  %data = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %efc1 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 3
  %0 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efc1, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %data) #5
  %2 = call ptr @memset(ptr %data, i32 255, i32 256)
  %free_req_pending = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 7
  %3 = ptrtoint ptr %free_req_pending to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %free_req_pending, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %attached.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 8
  %5 = ptrtoint ptr %attached.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %attached.i, align 2
  %dma.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18
  %6 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.efc_nport_free_resources.exit_crit_edge, label %if.then.i

if.then.efc_nport_free_resources.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_free_resources.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18, i32 3
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  %phys.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18, i32 2
  %12 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phys.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %11, ptr noundef nonnull %7, i32 noundef %13, i32 noundef 0) #5
  %14 = call ptr @memset(ptr %dma.i, i32 0, i32 24)
  br label %efc_nport_free_resources.exit

efc_nport_free_resources.exit:                    ; preds = %if.then.i, %if.then.efc_nport_free_resources.exit_crit_edge
  %sli.i = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %sli.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sli.i, align 8
  %indicator.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 16
  %17 = ptrtoint ptr %indicator.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %indicator.i, align 8
  %call.i = tail call i32 @sli_resource_free(ptr noundef %16, i32 noundef 1, i32 noundef %18) #5
  tail call void @efc_nport_cb(ptr noundef %1, i32 noundef 24, ptr noundef %nport) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %sli = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %sli to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sli, align 8
  %indicator = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 16
  %21 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %indicator, align 8
  %conv = trunc i32 %22 to i16
  %domain = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 11
  %23 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %domain, align 8
  %indicator3 = getelementptr inbounds %struct.efc_domain, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %indicator3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %indicator3, align 4
  %conv4 = trunc i32 %26 to i16
  %call = call i32 @sli_cmd_init_vpi(ptr noundef %20, ptr noundef nonnull %data, i16 noundef zeroext %conv, i16 noundef zeroext %conv4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68) #8
  %29 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %efc1, align 8
  %attached.i35 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 8
  %31 = ptrtoint ptr %attached.i35 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %attached.i35, align 2
  %dma.i36 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18
  %32 = ptrtoint ptr %dma.i36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma.i36, align 8
  %tobool.not.i37 = icmp eq ptr %33, null
  br i1 %tobool.not.i37, label %do.end.efc_nport_free_resources.exit46_crit_edge, label %if.then.i42

do.end.efc_nport_free_resources.exit46_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_free_resources.exit46

if.then.i42:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i38 = getelementptr inbounds %struct.efc, ptr %30, i32 0, i32 1
  %34 = ptrtoint ptr %pci.i38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci.i38, align 4
  %dev.i39 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %size.i40 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18, i32 3
  %36 = ptrtoint ptr %size.i40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.i40, align 4
  %phys.i41 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18, i32 2
  %38 = ptrtoint ptr %phys.i41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %phys.i41, align 8
  call void @dma_free_attrs(ptr noundef %dev.i39, i32 noundef %37, ptr noundef nonnull %33, i32 noundef %39, i32 noundef 0) #5
  %40 = call ptr @memset(ptr %dma.i36, i32 0, i32 24)
  br label %efc_nport_free_resources.exit46

efc_nport_free_resources.exit46:                  ; preds = %if.then.i42, %do.end.efc_nport_free_resources.exit46_crit_edge
  %sli.i43 = getelementptr inbounds %struct.efc, ptr %30, i32 0, i32 2
  %41 = ptrtoint ptr %sli.i43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sli.i43, align 8
  %43 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %indicator, align 8
  %call.i45 = call i32 @sli_resource_free(ptr noundef %42, i32 noundef 1, i32 noundef %44) #5
  call void @efc_nport_cb(ptr noundef %30, i32 noundef 21, ptr noundef %nport) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %issue_mbox_rqst = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 15, i32 4
  %45 = ptrtoint ptr %issue_mbox_rqst to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %issue_mbox_rqst, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %call10 = call i32 %46(ptr noundef %48, ptr noundef nonnull %data, ptr noundef nonnull @efc_nport_alloc_init_vpi_cb, ptr noundef %nport) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %do.end15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end15:                                         ; preds = %if.end8
  %pci16 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %pci16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pci16, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.71) #8
  %51 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %efc1, align 8
  %attached.i48 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 8
  %53 = ptrtoint ptr %attached.i48 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %attached.i48, align 2
  %dma.i49 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18
  %54 = ptrtoint ptr %dma.i49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma.i49, align 8
  %tobool.not.i50 = icmp eq ptr %55, null
  br i1 %tobool.not.i50, label %do.end15.efc_nport_free_resources.exit59_crit_edge, label %if.then.i55

do.end15.efc_nport_free_resources.exit59_crit_edge: ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_free_resources.exit59

if.then.i55:                                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i51 = getelementptr inbounds %struct.efc, ptr %52, i32 0, i32 1
  %56 = ptrtoint ptr %pci.i51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pci.i51, align 4
  %dev.i52 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %size.i53 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18, i32 3
  %58 = ptrtoint ptr %size.i53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.i53, align 4
  %phys.i54 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18, i32 2
  %60 = ptrtoint ptr %phys.i54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %phys.i54, align 8
  call void @dma_free_attrs(ptr noundef %dev.i52, i32 noundef %59, ptr noundef nonnull %55, i32 noundef %61, i32 noundef 0) #5
  %62 = call ptr @memset(ptr %dma.i49, i32 0, i32 24)
  br label %efc_nport_free_resources.exit59

efc_nport_free_resources.exit59:                  ; preds = %if.then.i55, %do.end15.efc_nport_free_resources.exit59_crit_edge
  %sli.i56 = getelementptr inbounds %struct.efc, ptr %52, i32 0, i32 2
  %63 = ptrtoint ptr %sli.i56 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sli.i56, align 8
  %65 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %indicator, align 8
  %call.i58 = call i32 @sli_resource_free(ptr noundef %64, i32 noundef 1, i32 noundef %66) #5
  call void @efc_nport_cb(ptr noundef %52, i32 noundef 21, ptr noundef %nport) #5
  br label %cleanup

cleanup:                                          ; preds = %efc_nport_free_resources.exit59, %if.end8.cleanup_crit_edge, %efc_nport_free_resources.exit46, %efc_nport_free_resources.exit
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_resource_free(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_cmd_nport_attach(ptr nocapture noundef readonly %efc, ptr noundef %nport, i32 noundef %fc_id) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #5
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %tobool.not = icmp eq ptr %nport, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fc_id1 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 17
  %3 = ptrtoint ptr %fc_id1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %fc_id, ptr %fc_id1, align 4
  %sli = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 2
  %4 = ptrtoint ptr %sli to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sli, align 8
  %sli_wwpn = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 20
  %6 = ptrtoint ptr %sli_wwpn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sli_wwpn, align 8
  %indicator = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 16
  %8 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %indicator, align 8
  %conv = trunc i32 %9 to i16
  %domain = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 11
  %10 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %domain, align 8
  %indicator3 = getelementptr inbounds %struct.efc_domain, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %indicator3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %indicator3, align 4
  %conv4 = trunc i32 %13 to i16
  %call = call i32 @sli_cmd_reg_vpi(ptr noundef %5, ptr noundef nonnull %buf, i32 noundef %fc_id, i64 noundef %7, i16 noundef zeroext %conv, i16 noundef zeroext %conv4, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end13, label %do.end9

do.end9:                                          ; preds = %if.end
  %pci10 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %14 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.11) #8
  %efc1.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 3
  %16 = ptrtoint ptr %efc1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %efc1.i, align 8
  %attached.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 8
  %18 = ptrtoint ptr %attached.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %attached.i, align 2
  %dma.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18
  %19 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %do.end9.efc_nport_free_resources.exit_crit_edge, label %if.then.i

do.end9.efc_nport_free_resources.exit_crit_edge:  ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_free_resources.exit

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.efc, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18, i32 3
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 4
  %phys.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18, i32 2
  %25 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phys.i, align 8
  call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %24, ptr noundef nonnull %20, i32 noundef %26, i32 noundef 0) #5
  %27 = call ptr @memset(ptr %dma.i, i32 0, i32 24)
  br label %efc_nport_free_resources.exit

efc_nport_free_resources.exit:                    ; preds = %if.then.i, %do.end9.efc_nport_free_resources.exit_crit_edge
  %sli.i = getelementptr inbounds %struct.efc, ptr %17, i32 0, i32 2
  %28 = ptrtoint ptr %sli.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sli.i, align 8
  %30 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %indicator, align 8
  %call.i = call i32 @sli_resource_free(ptr noundef %29, i32 noundef 1, i32 noundef %31) #5
  call void @efc_nport_cb(ptr noundef %17, i32 noundef 23, ptr noundef nonnull %nport) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %issue_mbox_rqst = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 15, i32 4
  %32 = ptrtoint ptr %issue_mbox_rqst to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %issue_mbox_rqst, align 4
  %34 = ptrtoint ptr %efc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %efc, align 8
  %call15 = call i32 %33(ptr noundef %35, ptr noundef nonnull %buf, ptr noundef nonnull @efc_nport_attach_reg_vpi_cb, ptr noundef nonnull %nport) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else, label %do.end20

do.end20:                                         ; preds = %if.end13
  %pci21 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %36 = ptrtoint ptr %pci21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.14) #8
  %efc1.i44 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 3
  %38 = ptrtoint ptr %efc1.i44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %efc1.i44, align 8
  %attached.i45 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 8
  %40 = ptrtoint ptr %attached.i45 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %attached.i45, align 2
  %dma.i46 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18
  %41 = ptrtoint ptr %dma.i46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma.i46, align 8
  %tobool.not.i47 = icmp eq ptr %42, null
  br i1 %tobool.not.i47, label %do.end20.efc_nport_free_resources.exit56_crit_edge, label %if.then.i52

do.end20.efc_nport_free_resources.exit56_crit_edge: ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_free_resources.exit56

if.then.i52:                                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i48 = getelementptr inbounds %struct.efc, ptr %39, i32 0, i32 1
  %43 = ptrtoint ptr %pci.i48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci.i48, align 4
  %dev.i49 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %size.i50 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18, i32 3
  %45 = ptrtoint ptr %size.i50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size.i50, align 4
  %phys.i51 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18, i32 2
  %47 = ptrtoint ptr %phys.i51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %phys.i51, align 8
  call void @dma_free_attrs(ptr noundef %dev.i49, i32 noundef %46, ptr noundef nonnull %42, i32 noundef %48, i32 noundef 0) #5
  %49 = call ptr @memset(ptr %dma.i46, i32 0, i32 24)
  br label %efc_nport_free_resources.exit56

efc_nport_free_resources.exit56:                  ; preds = %if.then.i52, %do.end20.efc_nport_free_resources.exit56_crit_edge
  %sli.i53 = getelementptr inbounds %struct.efc, ptr %39, i32 0, i32 2
  %50 = ptrtoint ptr %sli.i53 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sli.i53, align 8
  %52 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %indicator, align 8
  %call.i55 = call i32 @sli_resource_free(ptr noundef %51, i32 noundef 1, i32 noundef %53) #5
  call void @efc_nport_cb(ptr noundef %39, i32 noundef 23, ptr noundef nonnull %nport) #5
  br label %cleanup

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %attaching = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 9
  %54 = ptrtoint ptr %attaching to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %attaching, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %efc_nport_free_resources.exit56, %efc_nport_free_resources.exit, %do.end
  %retval.0 = phi i32 [ %call, %efc_nport_free_resources.exit ], [ -5, %do.end ], [ 0, %if.else ], [ %call15, %efc_nport_free_resources.exit56 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_reg_vpi(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efc_nport_attach_reg_vpi_cb(ptr nocapture noundef readnone %efc, i32 noundef %status, ptr nocapture noundef readonly %mqe, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %attaching = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 9
  %0 = ptrtoint ptr %attaching to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %attaching, align 1
  %efc1.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 3
  %1 = ptrtoint ptr %efc1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %efc1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not.i = icmp eq i32 %status, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %entry
  %status2.i = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %3 = ptrtoint ptr %status2.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %status2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool3.not.i = icmp eq i16 %4, 0
  br i1 %tobool3.not.i, label %if.end, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_nport_get_mbox_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_nport_attach_reg_vpi_cb, %if.then7.i)) #5
          to label %if.then [label %if.then7.i], !srcloc !186

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.efc, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %indicator.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 16
  %7 = ptrtoint ptr %indicator.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %indicator.i, align 8
  %status8.i = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %9 = ptrtoint ptr %status8.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %status8.i, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #5
  %conv9.i = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_nport_get_mbox_status.__UNIQUE_ID_ddebug313, ptr noundef %dev.i, ptr noundef nonnull @.str.67, i32 noundef %8, i32 noundef %status, i32 noundef %conv9.i) #5
  br label %if.then

if.then:                                          ; preds = %if.then7.i, %do.body.i
  %12 = ptrtoint ptr %efc1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %efc1.i, align 8
  %attached.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 8
  %14 = ptrtoint ptr %attached.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %attached.i, align 2
  %dma.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 18
  %15 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma.i, align 8
  %tobool.not.i7 = icmp eq ptr %16, null
  br i1 %tobool.not.i7, label %if.then.efc_nport_free_resources.exit_crit_edge, label %if.then.i

if.then.efc_nport_free_resources.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_free_resources.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i8 = getelementptr inbounds %struct.efc, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %pci.i8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci.i8, align 4
  %dev.i9 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 18, i32 3
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i, align 4
  %phys.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 18, i32 2
  %21 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phys.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i9, i32 noundef %20, ptr noundef nonnull %16, i32 noundef %22, i32 noundef 0) #5
  %23 = call ptr @memset(ptr %dma.i, i32 0, i32 24)
  br label %efc_nport_free_resources.exit

efc_nport_free_resources.exit:                    ; preds = %if.then.i, %if.then.efc_nport_free_resources.exit_crit_edge
  %sli.i = getelementptr inbounds %struct.efc, ptr %13, i32 0, i32 2
  %24 = ptrtoint ptr %sli.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sli.i, align 8
  %indicator.i10 = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 16
  %26 = ptrtoint ptr %indicator.i10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %indicator.i10, align 8
  %call.i = tail call i32 @sli_resource_free(ptr noundef %25, i32 noundef 1, i32 noundef %27) #5
  tail call void @efc_nport_cb(ptr noundef %13, i32 noundef 23, ptr noundef %arg) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %28 = ptrtoint ptr %efc1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %efc1.i, align 8
  tail call void @efc_nport_cb(ptr noundef %29, i32 noundef 22, ptr noundef %arg) #5
  %attached.i12 = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 8
  %30 = ptrtoint ptr %attached.i12 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %attached.i12, align 2
  %free_req_pending.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 7
  %31 = ptrtoint ptr %free_req_pending.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %free_req_pending.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i14 = icmp eq i8 %32, 0
  br i1 %tobool.not.i14, label %if.end.cleanup_crit_edge, label %if.then2.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @efc_nport_free_unreg_vpi(ptr noundef %arg) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.end.cleanup_crit_edge, %efc_nport_free_resources.exit
  %retval.0 = phi i32 [ -5, %efc_nport_free_resources.exit ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then2.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_cmd_nport_free(ptr nocapture noundef readonly %efc, ptr noundef %nport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %nport, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %attached = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 8
  %2 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %attached, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @efc_nport_free_unreg_vpi(ptr noundef nonnull %nport)
  br label %return

if.else:                                          ; preds = %if.end
  %attaching = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 9
  %4 = ptrtoint ptr %attaching to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %attaching, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.else5, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %free_req_pending = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 7
  %6 = ptrtoint ptr %free_req_pending to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %free_req_pending, align 1
  br label %return

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %sm = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 22
  %call = tail call i32 @efc_sm_post_event(ptr noundef %sm, i32 noundef 24, ptr noundef null) #5
  br label %return

return:                                           ; preds = %if.else5, %if.then4, %if.then2, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then4 ], [ 0, %if.else5 ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efc_nport_free_unreg_vpi(ptr noundef %nport) unnamed_addr #0 align 64 {
entry:
  %data = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %efc1 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 3
  %0 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efc1, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %data) #5
  %2 = call ptr @memset(ptr %data, i32 255, i32 256)
  %sli = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %sli to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sli, align 8
  %indicator = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 16
  %5 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %indicator, align 8
  %conv = trunc i32 %6 to i16
  %call = call i32 @sli_cmd_unreg_vpi(ptr noundef %4, ptr noundef nonnull %data, i16 noundef zeroext %conv, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73) #8
  %9 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %efc1, align 8
  %attached.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 8
  %11 = ptrtoint ptr %attached.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %attached.i, align 2
  %dma.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18
  %12 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end.cleanup.sink.split_crit_edge, label %do.end.cleanup.sink.split.sink.split_crit_edge

do.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %issue_mbox_rqst = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 15, i32 4
  %14 = ptrtoint ptr %issue_mbox_rqst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %issue_mbox_rqst, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %call4 = call i32 %15(ptr noundef %17, ptr noundef nonnull %data, ptr noundef nonnull @efc_nport_free_unreg_vpi_cb, ptr noundef %nport) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end9:                                          ; preds = %if.end
  %pci10 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.76) #8
  %20 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %efc1, align 8
  %attached.i26 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 8
  %22 = ptrtoint ptr %attached.i26 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %attached.i26, align 2
  %dma.i27 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18
  %23 = ptrtoint ptr %dma.i27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma.i27, align 8
  %tobool.not.i28 = icmp eq ptr %24, null
  br i1 %tobool.not.i28, label %do.end9.cleanup.sink.split_crit_edge, label %do.end9.cleanup.sink.split.sink.split_crit_edge

do.end9.cleanup.sink.split.sink.split_crit_edge:  ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split

do.end9.cleanup.sink.split_crit_edge:             ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split.sink.split:                    ; preds = %do.end9.cleanup.sink.split.sink.split_crit_edge, %do.end.cleanup.sink.split.sink.split_crit_edge
  %.sink = phi ptr [ %10, %do.end.cleanup.sink.split.sink.split_crit_edge ], [ %21, %do.end9.cleanup.sink.split.sink.split_crit_edge ]
  %.sink41 = phi ptr [ %13, %do.end.cleanup.sink.split.sink.split_crit_edge ], [ %24, %do.end9.cleanup.sink.split.sink.split_crit_edge ]
  %dma.i27.sink = phi ptr [ %dma.i, %do.end.cleanup.sink.split.sink.split_crit_edge ], [ %dma.i27, %do.end9.cleanup.sink.split.sink.split_crit_edge ]
  %pci.i29 = getelementptr inbounds %struct.efc, ptr %.sink, i32 0, i32 1
  %25 = ptrtoint ptr %pci.i29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci.i29, align 4
  %dev.i30 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %size.i31 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18, i32 3
  %27 = ptrtoint ptr %size.i31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i31, align 4
  %phys.i32 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 18, i32 2
  %29 = ptrtoint ptr %phys.i32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %phys.i32, align 8
  call void @dma_free_attrs(ptr noundef %dev.i30, i32 noundef %28, ptr noundef nonnull %.sink41, i32 noundef %30, i32 noundef 0) #5
  %31 = call ptr @memset(ptr %dma.i27.sink, i32 0, i32 24)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %do.end9.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge
  %.sink40 = phi ptr [ %10, %do.end.cleanup.sink.split_crit_edge ], [ %21, %do.end9.cleanup.sink.split_crit_edge ], [ %.sink, %cleanup.sink.split.sink.split ]
  %sli.i34 = getelementptr inbounds %struct.efc, ptr %.sink40, i32 0, i32 2
  %32 = ptrtoint ptr %sli.i34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sli.i34, align 8
  %34 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %indicator, align 8
  %call.i36 = call i32 @sli_resource_free(ptr noundef %33, i32 noundef 1, i32 noundef %35) #5
  call void @efc_nport_cb(ptr noundef %.sink40, i32 noundef 25, ptr noundef %nport) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_sm_post_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_cmd_domain_alloc(ptr nocapture noundef readonly %efc, ptr noundef %domain, i32 noundef %fcf) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [256 x i8], align 1
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %index, align 4, !annotation !184
  %tobool.not = icmp eq ptr %domain, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %lor.lhs.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

lor.lhs.false:                                    ; preds = %entry
  %nport = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 26
  %1 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nport, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %cond.true, label %if.end

cond.true:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nport, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %4, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in, align 4
  %dev66 = getelementptr inbounds %struct.pci_dev, ptr %.pn, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev66, ptr noundef nonnull @.str.18, ptr noundef %domain, ptr noundef %cond) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dma = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 11
  %size = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 11, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 112, ptr %size, align 4
  %pci4 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %7 = ptrtoint ptr %pci4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci4, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %phys = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 11, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev5, i32 noundef 112, ptr noundef %phys, i32 noundef 3264, i32 noundef 0) #5
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %dma, align 4
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %pci4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci4, align 4
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %fcf20 = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 7
  %12 = ptrtoint ptr %fcf20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %fcf, ptr %fcf20, align 4
  %fcf_indicator = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 8
  %13 = ptrtoint ptr %fcf_indicator to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %fcf_indicator, align 8
  %indicator = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 9
  %14 = ptrtoint ptr %indicator to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %indicator, align 4
  %sli = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 2
  %15 = ptrtoint ptr %sli to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sli, align 8
  %call22 = call i32 @sli_resource_alloc(ptr noundef %16, i32 noundef 0, ptr noundef %indicator, ptr noundef nonnull %index) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end39, label %do.end27

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %pci4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci4, align 4
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.24) #8
  %19 = ptrtoint ptr %pci4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci4, align 4
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  %23 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma, align 4
  %25 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phys, align 4
  call void @dma_free_attrs(ptr noundef %dev31, i32 noundef %22, ptr noundef %24, i32 noundef %26, i32 noundef 0) #5
  %27 = call ptr @memset(ptr %dma, i32 0, i32 24)
  br label %cleanup

if.end39:                                         ; preds = %if.end19
  %28 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %domain, align 8
  %30 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nport, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %data.i) #5
  %32 = call ptr @memset(ptr %data.i, i32 255, i32 256)
  %fcfi.i = getelementptr inbounds %struct.efc, ptr %29, i32 0, i32 3
  %33 = ptrtoint ptr %fcfi.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fcfi.i, align 4
  %35 = ptrtoint ptr %fcf_indicator to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %fcf_indicator, align 8
  %sli.i = getelementptr inbounds %struct.efc, ptr %29, i32 0, i32 2
  %36 = ptrtoint ptr %sli.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sli.i, align 8
  %38 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %indicator, align 4
  %conv.i = trunc i32 %39 to i16
  %conv4.i = trunc i32 %34 to i16
  %indicator5.i = getelementptr inbounds %struct.efc_nport, ptr %31, i32 0, i32 16
  %40 = ptrtoint ptr %indicator5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %indicator5.i, align 8
  %conv6.i = trunc i32 %41 to i16
  %call.i63 = call i32 @sli_cmd_init_vfi(ptr noundef %37, ptr noundef nonnull %data.i, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv4.i, i16 noundef zeroext %conv6.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i = icmp eq i32 %call.i63, 0
  %pci11.i = getelementptr inbounds %struct.efc, ptr %29, i32 0, i32 1
  %42 = ptrtoint ptr %pci11.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci11.i, align 4
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  br i1 %tobool.not.i, label %do.end10.i, label %do.end.i

do.end.i:                                         ; preds = %if.end39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.78) #8
  %44 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %domain, align 8
  %46 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma, align 4
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %do.end.i.cleanup.sink.split.i_crit_edge, label %do.end.i.cleanup.sink.split.sink.split.i_crit_edge

do.end.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split.i

do.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

do.end10.i:                                       ; preds = %if.end39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79) #8
  %issue_mbox_rqst.i = getelementptr inbounds %struct.efc, ptr %29, i32 0, i32 15, i32 4
  %48 = ptrtoint ptr %issue_mbox_rqst.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %issue_mbox_rqst.i, align 4
  %50 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %29, align 8
  %call14.i = call i32 %49(ptr noundef %51, ptr noundef nonnull %data.i, ptr noundef nonnull @efc_domain_alloc_init_vfi_cb, ptr noundef nonnull %domain) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %do.end10.i.efc_domain_alloc_init_vfi.exit_crit_edge, label %do.end19.i

do.end10.i.efc_domain_alloc_init_vfi.exit_crit_edge: ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_domain_alloc_init_vfi.exit

do.end19.i:                                       ; preds = %do.end10.i
  %52 = ptrtoint ptr %pci11.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pci11.i, align 4
  %dev21.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21.i, ptr noundef nonnull @.str.84) #8
  %54 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %domain, align 8
  %56 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma, align 4
  %tobool.not.i42.i = icmp eq ptr %57, null
  br i1 %tobool.not.i42.i, label %do.end19.i.cleanup.sink.split.i_crit_edge, label %do.end19.i.cleanup.sink.split.sink.split.i_crit_edge

do.end19.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split.i

do.end19.i.cleanup.sink.split.i_crit_edge:        ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %do.end19.i.cleanup.sink.split.sink.split.i_crit_edge, %do.end.i.cleanup.sink.split.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %45, %do.end.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %55, %do.end19.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %.sink56.i = phi ptr [ %47, %do.end.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %57, %do.end19.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %pci.i43.i = getelementptr inbounds %struct.efc, ptr %.sink.i, i32 0, i32 1
  %58 = ptrtoint ptr %pci.i43.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pci.i43.i, align 4
  %dev.i44.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %60 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size, align 4
  %62 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %phys, align 4
  call void @dma_free_attrs(ptr noundef %dev.i44.i, i32 noundef %61, ptr noundef nonnull %.sink56.i, i32 noundef %63, i32 noundef 0) #5
  %64 = call ptr @memset(ptr %dma, i32 0, i32 24)
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %do.end19.i.cleanup.sink.split.i_crit_edge, %do.end.i.cleanup.sink.split.i_crit_edge
  %.sink55.i = phi ptr [ %45, %do.end.i.cleanup.sink.split.i_crit_edge ], [ %55, %do.end19.i.cleanup.sink.split.i_crit_edge ], [ %.sink.i, %cleanup.sink.split.sink.split.i ]
  %sli.i48.i = getelementptr inbounds %struct.efc, ptr %.sink55.i, i32 0, i32 2
  %65 = ptrtoint ptr %sli.i48.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sli.i48.i, align 8
  %67 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %indicator, align 4
  %call.i50.i = call i32 @sli_resource_free(ptr noundef %66, i32 noundef 0, i32 noundef %68) #5
  %call7.i51.i = call i32 @efc_domain_cb(ptr noundef %.sink55.i, i32 noundef 1, ptr noundef nonnull %domain) #5
  br label %efc_domain_alloc_init_vfi.exit

efc_domain_alloc_init_vfi.exit:                   ; preds = %cleanup.sink.split.i, %do.end10.i.efc_domain_alloc_init_vfi.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %data.i) #5
  br label %cleanup

cleanup:                                          ; preds = %efc_domain_alloc_init_vfi.exit, %do.end27, %do.end16, %cond.end
  %retval.0 = phi i32 [ -5, %do.end27 ], [ 0, %efc_domain_alloc_init_vfi.exit ], [ -5, %do.end16 ], [ -5, %cond.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_cmd_domain_attach(ptr nocapture noundef readonly %efc, ptr noundef %domain, i32 noundef %fc_id) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #5
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %tobool.not = icmp eq ptr %domain, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef null) #8
  br label %cleanup28

if.end:                                           ; preds = %entry
  %nport = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 26
  %3 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nport, align 4
  %fc_id1 = getelementptr inbounds %struct.efc_nport, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %fc_id1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %fc_id, ptr %fc_id1, align 4
  %sli = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 2
  %6 = ptrtoint ptr %sli to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sli, align 8
  %indicator = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 9
  %8 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %indicator, align 4
  %conv = trunc i32 %9 to i16
  %fcf_indicator = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 8
  %10 = ptrtoint ptr %fcf_indicator to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fcf_indicator, align 8
  %conv2 = trunc i32 %11 to i16
  %dma = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 11
  %12 = load ptr, ptr %nport, align 4
  %indicator4 = getelementptr inbounds %struct.efc_nport, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %indicator4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %indicator4, align 8
  %conv5 = trunc i32 %14 to i16
  %sli_wwpn = getelementptr inbounds %struct.efc_nport, ptr %12, i32 0, i32 20
  %15 = ptrtoint ptr %sli_wwpn to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %sli_wwpn, align 8
  %fc_id8 = getelementptr inbounds %struct.efc_nport, ptr %12, i32 0, i32 17
  %17 = ptrtoint ptr %fc_id8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fc_id8, align 4
  %19 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack = load i32, ptr %dma, align 4
  %20 = insertvalue [6 x i32] undef, i32 %.unpack, 0
  %.elt48 = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 11, i32 1
  %21 = ptrtoint ptr %.elt48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack49 = load i32, ptr %.elt48, align 4
  %22 = insertvalue [6 x i32] %20, i32 %.unpack49, 1
  %.elt50 = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 11, i32 2
  %23 = ptrtoint ptr %.elt50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack51 = load i32, ptr %.elt50, align 4
  %24 = insertvalue [6 x i32] %22, i32 %.unpack51, 2
  %.elt52 = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 11, i32 3
  %25 = ptrtoint ptr %.elt52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack53 = load i32, ptr %.elt52, align 4
  %26 = insertvalue [6 x i32] %24, i32 %.unpack53, 3
  %.elt54 = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 11, i32 4
  %27 = ptrtoint ptr %.elt54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack55 = load i32, ptr %.elt54, align 4
  %28 = insertvalue [6 x i32] %26, i32 %.unpack55, 4
  %.elt56 = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 11, i32 5
  %29 = ptrtoint ptr %.elt56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack57 = load i32, ptr %.elt56, align 4
  %30 = insertvalue [6 x i32] %28, i32 %.unpack57, 5
  %call = call i32 @sli_cmd_reg_vfi(ptr noundef %7, ptr noundef nonnull %buf, i32 noundef 256, i16 noundef zeroext %conv, i16 noundef zeroext %conv2, [6 x i32] %30, i16 noundef zeroext %conv5, i64 noundef %16, i32 noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %issue_mbox_rqst = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 15, i32 4
  %31 = ptrtoint ptr %issue_mbox_rqst to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %issue_mbox_rqst, align 4
  %33 = ptrtoint ptr %efc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %efc, align 8
  %call18 = call i32 %32(ptr noundef %34, ptr noundef nonnull %buf, ptr noundef nonnull @efc_domain_attach_reg_vfi_cb, ptr noundef nonnull %domain) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end16.cleanup28_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16.cleanup28_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup28

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %.str.32.sink = phi ptr [ @.str.29, %if.end.cleanup_crit_edge ], [ @.str.32, %if.end16.cleanup_crit_edge ]
  %rc.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ]
  %pci24 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %35 = ptrtoint ptr %pci24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci24, align 4
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull %.str.32.sink) #8
  %37 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %domain, align 8
  %39 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma, align 4
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %cleanup.efc_domain_free_resources.exit_crit_edge, label %if.then.i

cleanup.efc_domain_free_resources.exit_crit_edge: ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_domain_free_resources.exit

if.then.i:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.efc, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %43 = ptrtoint ptr %.elt52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %.elt52, align 4
  %45 = ptrtoint ptr %.elt50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %.elt50, align 4
  call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %44, ptr noundef nonnull %40, i32 noundef %46, i32 noundef 0) #5
  %47 = call ptr @memset(ptr %dma, i32 0, i32 24)
  br label %efc_domain_free_resources.exit

efc_domain_free_resources.exit:                   ; preds = %if.then.i, %cleanup.efc_domain_free_resources.exit_crit_edge
  %sli.i = getelementptr inbounds %struct.efc, ptr %38, i32 0, i32 2
  %48 = ptrtoint ptr %sli.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sli.i, align 8
  %50 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %indicator, align 4
  %call.i = call i32 @sli_resource_free(ptr noundef %49, i32 noundef 0, i32 noundef %51) #5
  %call7.i = call i32 @efc_domain_cb(ptr noundef %38, i32 noundef 3, ptr noundef nonnull %domain) #5
  br label %cleanup28

cleanup28:                                        ; preds = %efc_domain_free_resources.exit, %if.end16.cleanup28_crit_edge, %do.end
  %retval.0 = phi i32 [ %rc.0, %efc_domain_free_resources.exit ], [ -5, %do.end ], [ 0, %if.end16.cleanup28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_reg_vfi(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, [6 x i32], i16 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efc_domain_attach_reg_vfi_cb(ptr nocapture noundef readnone %efc, i32 noundef %status, ptr nocapture noundef readonly %mqe, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not.i = icmp eq i32 %status, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %entry
  %status2.i = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %2 = ptrtoint ptr %status2.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %status2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool3.not.i = icmp eq i16 %3, 0
  br i1 %tobool3.not.i, label %if.end, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_domain_get_mbox_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_domain_attach_reg_vfi_cb, %if.then7.i)) #5
          to label %if.then [label %if.then7.i], !srcloc !186

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %indicator.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 9
  %6 = ptrtoint ptr %indicator.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %indicator.i, align 4
  %status8.i = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %8 = ptrtoint ptr %status8.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %status8.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #5
  %conv9.i = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_domain_get_mbox_status.__UNIQUE_ID_ddebug314, ptr noundef %dev.i, ptr noundef nonnull @.str.87, i32 noundef %7, i32 noundef %status, i32 noundef %conv9.i) #5
  br label %if.then

if.then:                                          ; preds = %if.then7.i, %do.body.i
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg, align 8
  %dma.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 11
  %13 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma.i, align 4
  %tobool.not.i5 = icmp eq ptr %14, null
  br i1 %tobool.not.i5, label %if.then.efc_domain_free_resources.exit_crit_edge, label %if.then.i

if.then.efc_domain_free_resources.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_domain_free_resources.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i6 = getelementptr inbounds %struct.efc, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %pci.i6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci.i6, align 4
  %dev.i7 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 11, i32 3
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  %phys.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 11, i32 2
  %19 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i7, i32 noundef %18, ptr noundef nonnull %14, i32 noundef %20, i32 noundef 0) #5
  %21 = call ptr @memset(ptr %dma.i, i32 0, i32 24)
  br label %efc_domain_free_resources.exit

efc_domain_free_resources.exit:                   ; preds = %if.then.i, %if.then.efc_domain_free_resources.exit_crit_edge
  %sli.i = getelementptr inbounds %struct.efc, ptr %12, i32 0, i32 2
  %22 = ptrtoint ptr %sli.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sli.i, align 8
  %indicator.i8 = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 9
  %24 = ptrtoint ptr %indicator.i8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %indicator.i8, align 4
  %call.i = tail call i32 @sli_resource_free(ptr noundef %23, i32 noundef 0, i32 noundef %25) #5
  %call7.i = tail call i32 @efc_domain_cb(ptr noundef %12, i32 noundef 3, ptr noundef %arg) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %26 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arg, align 8
  %nport.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 26
  %28 = ptrtoint ptr %nport.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nport.i, align 4
  %efc1.i.i = getelementptr inbounds %struct.efc_nport, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %efc1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %efc1.i.i, align 8
  tail call void @efc_nport_cb(ptr noundef %31, i32 noundef 22, ptr noundef %29) #5
  %attached.i.i = getelementptr inbounds %struct.efc_nport, ptr %29, i32 0, i32 8
  %32 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %attached.i.i, align 2
  %free_req_pending.i.i = getelementptr inbounds %struct.efc_nport, ptr %29, i32 0, i32 7
  %33 = ptrtoint ptr %free_req_pending.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %free_req_pending.i.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i, label %if.end.efc_domain_send_nport_evt.exit_crit_edge, label %if.then2.i.i

if.end.efc_domain_send_nport_evt.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_domain_send_nport_evt.exit

if.then2.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @efc_nport_free_unreg_vpi(ptr noundef %29) #5
  br label %efc_domain_send_nport_evt.exit

efc_domain_send_nport_evt.exit:                   ; preds = %if.then2.i.i, %if.end.efc_domain_send_nport_evt.exit_crit_edge
  %call.i9 = tail call i32 @efc_domain_cb(ptr noundef %27, i32 noundef 2, ptr noundef %arg) #5
  br label %cleanup

cleanup:                                          ; preds = %efc_domain_send_nport_evt.exit, %efc_domain_free_resources.exit
  %retval.0 = phi i32 [ -5, %efc_domain_free_resources.exit ], [ 0, %efc_domain_send_nport_evt.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_cmd_domain_free(ptr nocapture noundef readonly %efc, ptr noundef %domain) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %domain, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %data.i) #5
  %4 = call ptr @memset(ptr %data.i, i32 255, i32 256)
  %sli.i = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %sli.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sli.i, align 8
  %indicator.i = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 9
  %7 = ptrtoint ptr %indicator.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %indicator.i, align 4
  %conv.i = trunc i32 %8 to i16
  %call.i = call i32 @sli_cmd_unreg_vfi(ptr noundef %6, ptr noundef nonnull %data.i, i16 noundef zeroext %conv.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup.i_crit_edge

if.end.cleanup.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end.i:                                         ; preds = %if.end
  %issue_mbox_rqst.i = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 15, i32 4
  %9 = ptrtoint ptr %issue_mbox_rqst.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %issue_mbox_rqst.i, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %call3.i = call i32 %10(ptr noundef %12, ptr noundef nonnull %data.i, ptr noundef nonnull @efc_domain_free_unreg_vfi_cb, ptr noundef nonnull %domain) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.efc_domain_free_unreg_vfi.exit_crit_edge, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end.i.efc_domain_free_unreg_vfi.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_domain_free_unreg_vfi.exit

cleanup.i:                                        ; preds = %if.end.i.cleanup.i_crit_edge, %if.end.cleanup.i_crit_edge
  %.str.94.sink.i = phi ptr [ @.str.91, %if.end.cleanup.i_crit_edge ], [ @.str.94, %if.end.i.cleanup.i_crit_edge ]
  %pci9.i = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %pci9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci9.i, align 4
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull %.str.94.sink.i) #8
  %15 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %domain, align 8
  %dma.i.i = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 11
  %17 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %cleanup.i.efc_domain_free_resources.exit.i_crit_edge, label %if.then.i.i

cleanup.i.efc_domain_free_resources.exit.i_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_domain_free_resources.exit.i

if.then.i.i:                                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %size.i.i = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 11, i32 3
  %21 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i.i, align 4
  %phys.i.i = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 11, i32 2
  %23 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phys.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef %22, ptr noundef nonnull %18, i32 noundef %24, i32 noundef 0) #5
  %25 = call ptr @memset(ptr %dma.i.i, i32 0, i32 24)
  br label %efc_domain_free_resources.exit.i

efc_domain_free_resources.exit.i:                 ; preds = %if.then.i.i, %cleanup.i.efc_domain_free_resources.exit.i_crit_edge
  %sli.i.i = getelementptr inbounds %struct.efc, ptr %16, i32 0, i32 2
  %26 = ptrtoint ptr %sli.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sli.i.i, align 8
  %28 = ptrtoint ptr %indicator.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %indicator.i, align 4
  %call.i.i = call i32 @sli_resource_free(ptr noundef %27, i32 noundef 0, i32 noundef %29) #5
  %call7.i.i = call i32 @efc_domain_cb(ptr noundef %16, i32 noundef 5, ptr noundef nonnull %domain) #5
  br label %efc_domain_free_unreg_vfi.exit

efc_domain_free_unreg_vfi.exit:                   ; preds = %efc_domain_free_resources.exit.i, %if.end.i.efc_domain_free_unreg_vfi.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %data.i) #5
  br label %return

return:                                           ; preds = %efc_domain_free_unreg_vfi.exit, %do.end
  %retval.0 = phi i32 [ 0, %efc_domain_free_unreg_vfi.exit ], [ -5, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_cmd_node_alloc(ptr nocapture noundef readonly %efc, ptr noundef %rnode, i32 noundef %fc_addr, ptr noundef %nport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rnode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %fc_addr, i32 noundef %1) #8
  br label %return

if.end:                                           ; preds = %entry
  %nport2 = getelementptr inbounds %struct.efc_remote_node, ptr %rnode, i32 0, i32 4
  %4 = ptrtoint ptr %nport2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %nport2, align 4
  %sli = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 2
  %5 = ptrtoint ptr %sli to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sli, align 8
  %index = getelementptr inbounds %struct.efc_remote_node, ptr %rnode, i32 0, i32 1
  %call = tail call i32 @sli_resource_alloc(ptr noundef %6, i32 noundef 2, ptr noundef %rnode, ptr noundef %index) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pci7 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %7 = ptrtoint ptr %pci7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci7, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.39, i32 noundef %fc_addr) #8
  br label %return

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %fc_id = getelementptr inbounds %struct.efc_remote_node, ptr %rnode, i32 0, i32 2
  %9 = ptrtoint ptr %fc_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %fc_addr, ptr %fc_id, align 4
  %10 = ptrtoint ptr %nport2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %nport, ptr %nport2, align 4
  br label %return

return:                                           ; preds = %if.end9, %do.end6, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end6 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_cmd_node_attach(ptr nocapture noundef readonly %efc, ptr noundef %rnode, ptr noundef %sparms) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #5
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %tobool.not = icmp eq ptr %rnode, null
  %tobool1.not = icmp eq ptr %sparms, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef %rnode, ptr noundef %sparms) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.efc_remote_node, ptr %rnode, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pci6 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %5 = ptrtoint ptr %pci6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci6, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.44) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %sli = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 2
  %7 = ptrtoint ptr %sli to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sli, align 8
  %9 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rnode, align 4
  %nport = getelementptr inbounds %struct.efc_remote_node, ptr %rnode, i32 0, i32 4
  %11 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nport, align 4
  %indicator9 = getelementptr inbounds %struct.efc_nport, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %indicator9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %indicator9, align 8
  %fc_id = getelementptr inbounds %struct.efc_remote_node, ptr %rnode, i32 0, i32 2
  %15 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fc_id, align 4
  %call = call i32 @sli_cmd_reg_rpi(ptr noundef %8, ptr noundef nonnull %buf, i32 noundef %10, i32 noundef %14, i32 noundef %16, ptr noundef nonnull %sparms, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %issue_mbox_rqst = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 15, i32 4
  %17 = ptrtoint ptr %issue_mbox_rqst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %issue_mbox_rqst, align 4
  %19 = ptrtoint ptr %efc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %efc, align 8
  %call13 = call i32 %18(ptr noundef %20, ptr noundef nonnull %buf, ptr noundef nonnull @efc_cmd_node_attach_cb, ptr noundef nonnull %rnode) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -5, %do.end5 ], [ -5, %do.end ], [ -5, %if.end8.cleanup_crit_edge ], [ %call13, %if.then11 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_reg_rpi(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efc_cmd_node_attach_cb(ptr noundef %efc, i32 noundef %status, ptr nocapture noundef readonly %mqe, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %status1 = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %status1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool2.not = icmp eq i16 %1, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end10_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_cmd_node_attach_cb.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_cmd_node_attach_cb, %if.then6)) #5
          to label %if.end10 [label %if.then6], !srcloc !186

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %status7 = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %4 = ptrtoint ptr %status7 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %status7, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv8 = zext i16 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_cmd_node_attach_cb.__UNIQUE_ID_ddebug315, ptr noundef %dev, ptr noundef nonnull @.str.97, i32 noundef %status, i32 noundef %conv8) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %do.body, %lor.lhs.false.if.end10_crit_edge
  %.sink = phi i8 [ 0, %do.body ], [ 0, %if.then6 ], [ 1, %lor.lhs.false.if.end10_crit_edge ]
  %evt.0 = phi i32 [ 39, %do.body ], [ 39, %if.then6 ], [ 38, %lor.lhs.false.if.end10_crit_edge ]
  %attached9 = getelementptr inbounds %struct.efc_remote_node, ptr %arg, i32 0, i32 3
  %7 = ptrtoint ptr %attached9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %attached9, align 4
  %call11 = tail call i32 @efc_remote_node_cb(ptr noundef %efc, i32 noundef %evt.0, ptr noundef %arg) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_node_free_resources(ptr nocapture noundef readonly %efc, ptr noundef %rnode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rnode, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %nport = getelementptr inbounds %struct.efc_remote_node, ptr %rnode, i32 0, i32 4
  %2 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nport, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %attached = getelementptr inbounds %struct.efc_remote_node, ptr %rnode, i32 0, i32 3
  %4 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %attached, align 4, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %pci8 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %6 = ptrtoint ptr %pci8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci8, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.49) #8
  br label %cleanup

if.end10:                                         ; preds = %if.then2
  %8 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rnode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.not = icmp eq i32 %9, -1
  br i1 %cmp.not, label %if.end10.cleanup_crit_edge, label %if.then11

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end10
  %sli = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 2
  %10 = ptrtoint ptr %sli to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sli, align 8
  %call = tail call i32 @sli_resource_free(ptr noundef %11, i32 noundef 2, i32 noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %if.else, label %do.end17

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %pci18 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %12 = ptrtoint ptr %pci18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci18, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rnode, align 4
  %fc_id = getelementptr inbounds %struct.efc_remote_node, ptr %rnode, i32 0, i32 2
  %16 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fc_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.52, i32 noundef %15, i32 noundef %17) #8
  br label %cleanup

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %rnode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %rnode, align 4
  %index = getelementptr inbounds %struct.efc_remote_node, ptr %rnode, i32 0, i32 1
  %19 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end17, %if.end10.cleanup_crit_edge, %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end7 ], [ -5, %do.end ], [ -5, %do.end17 ], [ 0, %if.else ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_cmd_node_detach(ptr nocapture noundef readonly %efc, ptr noundef %rnode) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #5
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %tobool.not = icmp eq ptr %rnode, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %nport = getelementptr inbounds %struct.efc_remote_node, ptr %rnode, i32 0, i32 4
  %3 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nport, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %attached = getelementptr inbounds %struct.efc_remote_node, ptr %rnode, i32 0, i32 3
  %5 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %attached, align 4, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %if.end5

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  %sli = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 2
  %7 = ptrtoint ptr %sli to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sli, align 8
  %9 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rnode, align 4
  %conv = trunc i32 %10 to i16
  %call = call i32 @sli_cmd_unreg_rpi(ptr noundef %8, ptr noundef nonnull %buf, i16 noundef zeroext %conv, i32 noundef 2, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then7, label %if.end5.do.end15_crit_edge

if.end5.do.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

if.then7:                                         ; preds = %if.end5
  %issue_mbox_rqst = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 15, i32 4
  %11 = ptrtoint ptr %issue_mbox_rqst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %issue_mbox_rqst, align 4
  %13 = ptrtoint ptr %efc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %efc, align 8
  %call9 = call i32 %12(ptr noundef %14, ptr noundef nonnull %buf, ptr noundef nonnull @efc_cmd_node_free_cb, ptr noundef nonnull %rnode) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %phi.cmp = icmp eq i32 %call9, 0
  br i1 %phi.cmp, label %if.then7.cleanup_crit_edge, label %if.then7.do.end15_crit_edge

if.then7.do.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end15:                                         ; preds = %if.then7.do.end15_crit_edge, %if.end5.do.end15_crit_edge
  %pci16 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %15 = ptrtoint ptr %pci16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci16, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.56) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.then7.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %if.then2.cleanup_crit_edge ], [ -5, %do.end15 ], [ 0, %if.then7.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_unreg_rpi(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efc_cmd_node_free_cb(ptr noundef %efc, i32 noundef %status, ptr nocapture noundef readonly %mqe, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %status1 = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %status1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool2.not = icmp eq i16 %1, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then18_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_cmd_node_free_cb.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_cmd_node_free_cb, %if.then6)) #5
          to label %do.end [label %if.then6], !srcloc !186

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %status7 = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %4 = ptrtoint ptr %status7 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %status7, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv8 = zext i16 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_cmd_node_free_cb.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.97, i32 noundef %status, i32 noundef %conv8) #5
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %attached = getelementptr inbounds %struct.efc_remote_node, ptr %arg, i32 0, i32 3
  %7 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %attached, align 4, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  br i1 %tobool9.not, label %do.end.if.end20_crit_edge, label %lor.lhs.false10

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

lor.lhs.false10:                                  ; preds = %do.end
  %status11 = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %9 = ptrtoint ptr %status11 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %status11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %10)
  %cmp.not = icmp eq i16 %10, 20
  br i1 %cmp.not, label %lor.lhs.false10.if.then18_crit_edge, label %lor.lhs.false10.if.end20_crit_edge

lor.lhs.false10.if.end20_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

lor.lhs.false10.if.then18_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false10.if.then18_crit_edge, %lor.lhs.false.if.then18_crit_edge
  %attached19 = getelementptr inbounds %struct.efc_remote_node, ptr %arg, i32 0, i32 3
  %11 = ptrtoint ptr %attached19 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %attached19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %lor.lhs.false10.if.end20_crit_edge, %do.end.if.end20_crit_edge
  %rc.032 = phi i32 [ 0, %if.then18 ], [ -5, %do.end.if.end20_crit_edge ], [ -5, %lor.lhs.false10.if.end20_crit_edge ]
  %evt.0 = phi i32 [ 40, %if.then18 ], [ 41, %do.end.if.end20_crit_edge ], [ 41, %lor.lhs.false10.if.end20_crit_edge ]
  %call21 = tail call i32 @efc_remote_node_cb(ptr noundef %efc, i32 noundef %evt.0, ptr noundef %arg) #5
  ret i32 %rc.032
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_read_sparm64(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efc_nport_alloc_read_sparm64_cb(ptr nocapture noundef readonly %efc, i32 noundef %status, ptr nocapture noundef readonly %mqe, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %efc1.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %efc1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efc1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not.i = icmp eq i32 %status, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %entry
  %status2.i = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %2 = ptrtoint ptr %status2.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %status2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool3.not.i = icmp eq i16 %3, 0
  br i1 %tobool3.not.i, label %if.end, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_nport_get_mbox_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_nport_alloc_read_sparm64_cb, %if.then7.i)) #5
          to label %if.then [label %if.then7.i], !srcloc !186

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %indicator.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 16
  %6 = ptrtoint ptr %indicator.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %indicator.i, align 8
  %status8.i = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %8 = ptrtoint ptr %status8.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %status8.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #5
  %conv9.i = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_nport_get_mbox_status.__UNIQUE_ID_ddebug313, ptr noundef %dev.i, ptr noundef nonnull @.str.67, i32 noundef %7, i32 noundef %status, i32 noundef %conv9.i) #5
  br label %if.then

if.then:                                          ; preds = %if.then7.i, %do.body.i
  %11 = ptrtoint ptr %efc1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %efc1.i, align 8
  %attached.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 8
  %13 = ptrtoint ptr %attached.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %attached.i, align 2
  %dma.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 18
  %14 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma.i, align 8
  %tobool.not.i20 = icmp eq ptr %15, null
  br i1 %tobool.not.i20, label %if.then.efc_nport_free_resources.exit_crit_edge, label %if.then.i

if.then.efc_nport_free_resources.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_free_resources.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i21 = getelementptr inbounds %struct.efc, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %pci.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci.i21, align 4
  %dev.i22 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 18, i32 3
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %phys.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 18, i32 2
  %20 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i22, i32 noundef %19, ptr noundef nonnull %15, i32 noundef %21, i32 noundef 0) #5
  %22 = call ptr @memset(ptr %dma.i, i32 0, i32 24)
  br label %efc_nport_free_resources.exit

efc_nport_free_resources.exit:                    ; preds = %if.then.i, %if.then.efc_nport_free_resources.exit_crit_edge
  %sli.i = getelementptr inbounds %struct.efc, ptr %12, i32 0, i32 2
  %23 = ptrtoint ptr %sli.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sli.i, align 8
  %indicator.i23 = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 16
  %25 = ptrtoint ptr %indicator.i23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %indicator.i23, align 8
  %call.i = tail call i32 @sli_resource_free(ptr noundef %24, i32 noundef 1, i32 noundef %26) #5
  tail call void @efc_nport_cb(ptr noundef %12, i32 noundef 21, ptr noundef %arg) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %dma = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 18
  %27 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma, align 8
  %sli_wwpn = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 20
  %add.ptr = getelementptr i8, ptr %28, i32 16
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %add.ptr, align 1
  %31 = ptrtoint ptr %sli_wwpn to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %sli_wwpn, align 8
  %sli_wwnn = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 21
  %add.ptr1 = getelementptr i8, ptr %28, i32 24
  %32 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %add.ptr1, align 1
  %34 = ptrtoint ptr %sli_wwnn to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %sli_wwnn, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %35 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %size = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 18, i32 3
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size, align 4
  %phys = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 18, i32 2
  %39 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %phys, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %38, ptr noundef %28, i32 noundef %40, i32 noundef 0) #5
  %41 = call ptr @memset(ptr %dma, i32 0, i32 24)
  tail call fastcc void @efc_nport_alloc_init_vpi(ptr noundef %arg)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %efc_nport_free_resources.exit
  %retval.0 = phi i32 [ -5, %efc_nport_free_resources.exit ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_init_vpi(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efc_nport_alloc_init_vpi_cb(ptr nocapture noundef readnone %efc, i32 noundef %status, ptr nocapture noundef readonly %mqe, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %efc1.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %efc1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efc1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not.i = icmp eq i32 %status, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %entry
  %status2.i = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %2 = ptrtoint ptr %status2.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %status2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool3.not.i = icmp eq i16 %3, 0
  br i1 %tobool3.not.i, label %if.end, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_nport_get_mbox_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_nport_alloc_init_vpi_cb, %if.then7.i)) #5
          to label %if.then [label %if.then7.i], !srcloc !186

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %indicator.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 16
  %6 = ptrtoint ptr %indicator.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %indicator.i, align 8
  %status8.i = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %8 = ptrtoint ptr %status8.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %status8.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #5
  %conv9.i = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_nport_get_mbox_status.__UNIQUE_ID_ddebug313, ptr noundef %dev.i, ptr noundef nonnull @.str.67, i32 noundef %7, i32 noundef %status, i32 noundef %conv9.i) #5
  br label %if.then

if.then:                                          ; preds = %if.then7.i, %do.body.i
  %11 = ptrtoint ptr %efc1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %efc1.i, align 8
  %attached.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 8
  %13 = ptrtoint ptr %attached.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %attached.i, align 2
  %dma.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 18
  %14 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma.i, align 8
  %tobool.not.i6 = icmp eq ptr %15, null
  br i1 %tobool.not.i6, label %if.then.efc_nport_free_resources.exit_crit_edge, label %if.then.i

if.then.efc_nport_free_resources.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_free_resources.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i7 = getelementptr inbounds %struct.efc, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %pci.i7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci.i7, align 4
  %dev.i8 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 18, i32 3
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %phys.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 18, i32 2
  %20 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i8, i32 noundef %19, ptr noundef nonnull %15, i32 noundef %21, i32 noundef 0) #5
  %22 = call ptr @memset(ptr %dma.i, i32 0, i32 24)
  br label %efc_nport_free_resources.exit

efc_nport_free_resources.exit:                    ; preds = %if.then.i, %if.then.efc_nport_free_resources.exit_crit_edge
  %sli.i = getelementptr inbounds %struct.efc, ptr %12, i32 0, i32 2
  %23 = ptrtoint ptr %sli.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sli.i, align 8
  %indicator.i9 = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 16
  %25 = ptrtoint ptr %indicator.i9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %indicator.i9, align 8
  %call.i = tail call i32 @sli_resource_free(ptr noundef %24, i32 noundef 1, i32 noundef %26) #5
  tail call void @efc_nport_cb(ptr noundef %12, i32 noundef 21, ptr noundef %arg) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %27 = ptrtoint ptr %efc1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %efc1.i, align 8
  tail call void @efc_nport_cb(ptr noundef %28, i32 noundef 20, ptr noundef %arg) #5
  %free_req_pending.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 7
  %29 = ptrtoint ptr %free_req_pending.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %free_req_pending.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i11 = icmp eq i8 %30, 0
  br i1 %tobool.not.i11, label %if.end.cleanup_crit_edge, label %if.then2.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @efc_nport_free_unreg_vpi(ptr noundef %arg) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.end.cleanup_crit_edge, %efc_nport_free_resources.exit
  %retval.0 = phi i32 [ -5, %efc_nport_free_resources.exit ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then2.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_nport_cb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_unreg_vpi(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efc_nport_free_unreg_vpi_cb(ptr nocapture noundef readnone %efc, i32 noundef %status, ptr nocapture noundef readonly %mqe, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %efc1.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %efc1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efc1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not.i = icmp eq i32 %status, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %entry
  %status2.i = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %2 = ptrtoint ptr %status2.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %status2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool3.not.i = icmp eq i16 %3, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.efc_nport_get_mbox_status.exit_crit_edge, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

lor.lhs.false.i.efc_nport_get_mbox_status.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_get_mbox_status.exit

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_nport_get_mbox_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_nport_free_unreg_vpi_cb, %if.then7.i)) #5
          to label %efc_nport_get_mbox_status.exit [label %if.then7.i], !srcloc !186

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %indicator.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 16
  %6 = ptrtoint ptr %indicator.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %indicator.i, align 8
  %status8.i = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %8 = ptrtoint ptr %status8.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %status8.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #5
  %conv9.i = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_nport_get_mbox_status.__UNIQUE_ID_ddebug313, ptr noundef %dev.i, ptr noundef nonnull @.str.67, i32 noundef %7, i32 noundef %status, i32 noundef %conv9.i) #5
  br label %efc_nport_get_mbox_status.exit

efc_nport_get_mbox_status.exit:                   ; preds = %if.then7.i, %do.body.i, %lor.lhs.false.i.efc_nport_get_mbox_status.exit_crit_edge
  %retval.0.i11 = phi i32 [ -5, %if.then7.i ], [ -5, %do.body.i ], [ 0, %lor.lhs.false.i.efc_nport_get_mbox_status.exit_crit_edge ]
  %11 = phi i32 [ 25, %if.then7.i ], [ 25, %do.body.i ], [ 24, %lor.lhs.false.i.efc_nport_get_mbox_status.exit_crit_edge ]
  %12 = ptrtoint ptr %efc1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %efc1.i, align 8
  %attached.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 8
  %14 = ptrtoint ptr %attached.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %attached.i, align 2
  %dma.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 18
  %15 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma.i, align 8
  %tobool.not.i5 = icmp eq ptr %16, null
  br i1 %tobool.not.i5, label %efc_nport_get_mbox_status.exit.efc_nport_free_resources.exit_crit_edge, label %if.then.i

efc_nport_get_mbox_status.exit.efc_nport_free_resources.exit_crit_edge: ; preds = %efc_nport_get_mbox_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_nport_free_resources.exit

if.then.i:                                        ; preds = %efc_nport_get_mbox_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i6 = getelementptr inbounds %struct.efc, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %pci.i6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci.i6, align 4
  %dev.i7 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 18, i32 3
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i, align 4
  %phys.i = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 18, i32 2
  %21 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phys.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i7, i32 noundef %20, ptr noundef nonnull %16, i32 noundef %22, i32 noundef 0) #5
  %23 = call ptr @memset(ptr %dma.i, i32 0, i32 24)
  br label %efc_nport_free_resources.exit

efc_nport_free_resources.exit:                    ; preds = %if.then.i, %efc_nport_get_mbox_status.exit.efc_nport_free_resources.exit_crit_edge
  %sli.i = getelementptr inbounds %struct.efc, ptr %13, i32 0, i32 2
  %24 = ptrtoint ptr %sli.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sli.i, align 8
  %indicator.i8 = getelementptr inbounds %struct.efc_nport, ptr %arg, i32 0, i32 16
  %26 = ptrtoint ptr %indicator.i8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %indicator.i8, align 8
  %call.i = tail call i32 @sli_resource_free(ptr noundef %25, i32 noundef 1, i32 noundef %27) #5
  tail call void @efc_nport_cb(ptr noundef %13, i32 noundef %11, ptr noundef %arg) #5
  ret i32 %retval.0.i11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_init_vfi(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efc_domain_alloc_init_vfi_cb(ptr nocapture noundef readnone %efc, i32 noundef %status, ptr nocapture noundef readonly %mqe, ptr noundef %arg) #0 align 64 {
entry:
  %data.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not.i = icmp eq i32 %status, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %entry
  %status2.i = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %2 = ptrtoint ptr %status2.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %status2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool3.not.i = icmp eq i16 %3, 0
  br i1 %tobool3.not.i, label %if.end, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_domain_get_mbox_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_domain_alloc_init_vfi_cb, %if.then7.i)) #5
          to label %if.then [label %if.then7.i], !srcloc !186

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %indicator.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 9
  %6 = ptrtoint ptr %indicator.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %indicator.i, align 4
  %status8.i = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %8 = ptrtoint ptr %status8.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %status8.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #5
  %conv9.i = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_domain_get_mbox_status.__UNIQUE_ID_ddebug314, ptr noundef %dev.i, ptr noundef nonnull @.str.87, i32 noundef %7, i32 noundef %status, i32 noundef %conv9.i) #5
  br label %if.then

if.then:                                          ; preds = %if.then7.i, %do.body.i
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg, align 8
  %dma.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 11
  %13 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma.i, align 4
  %tobool.not.i4 = icmp eq ptr %14, null
  br i1 %tobool.not.i4, label %if.then.efc_domain_free_resources.exit_crit_edge, label %if.then.i

if.then.efc_domain_free_resources.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_domain_free_resources.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i5 = getelementptr inbounds %struct.efc, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %pci.i5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci.i5, align 4
  %dev.i6 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 11, i32 3
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  %phys.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 11, i32 2
  %19 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i6, i32 noundef %18, ptr noundef nonnull %14, i32 noundef %20, i32 noundef 0) #5
  %21 = call ptr @memset(ptr %dma.i, i32 0, i32 24)
  br label %efc_domain_free_resources.exit

efc_domain_free_resources.exit:                   ; preds = %if.then.i, %if.then.efc_domain_free_resources.exit_crit_edge
  %sli.i = getelementptr inbounds %struct.efc, ptr %12, i32 0, i32 2
  %22 = ptrtoint ptr %sli.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sli.i, align 8
  %indicator.i7 = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 9
  %24 = ptrtoint ptr %indicator.i7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %indicator.i7, align 4
  %call.i = tail call i32 @sli_resource_free(ptr noundef %23, i32 noundef 0, i32 noundef %25) #5
  %call7.i = tail call i32 @efc_domain_cb(ptr noundef %12, i32 noundef 1, ptr noundef %arg) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %26 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arg, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %data.i) #5
  %28 = call ptr @memset(ptr %data.i, i32 255, i32 256)
  %sli.i8 = getelementptr inbounds %struct.efc, ptr %27, i32 0, i32 2
  %29 = ptrtoint ptr %sli.i8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sli.i8, align 8
  %dma.i9 = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 11
  %call.i10 = call i32 @sli_cmd_read_sparm64(ptr noundef %30, ptr noundef nonnull %data.i, ptr noundef %dma.i9, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not.i11 = icmp eq i32 %call.i10, 0
  br i1 %tobool.not.i11, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  %pci.i12 = getelementptr inbounds %struct.efc, ptr %27, i32 0, i32 1
  %31 = ptrtoint ptr %pci.i12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci.i12, align 4
  %dev.i13 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i13, ptr noundef nonnull @.str.60) #8
  %33 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arg, align 8
  %35 = ptrtoint ptr %dma.i9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma.i9, align 4
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %do.end.i.cleanup.sink.split.i_crit_edge, label %do.end.i.cleanup.sink.split.sink.split.i_crit_edge

do.end.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split.i

do.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end
  %issue_mbox_rqst.i = getelementptr inbounds %struct.efc, ptr %27, i32 0, i32 15, i32 4
  %37 = ptrtoint ptr %issue_mbox_rqst.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %issue_mbox_rqst.i, align 4
  %39 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %27, align 8
  %call4.i = call i32 %38(ptr noundef %40, ptr noundef nonnull %data.i, ptr noundef nonnull @efc_domain_alloc_read_sparm64_cb, ptr noundef %arg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.efc_domain_alloc_read_sparm64.exit_crit_edge, label %do.end9.i

if.end.i.efc_domain_alloc_read_sparm64.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_domain_alloc_read_sparm64.exit

do.end9.i:                                        ; preds = %if.end.i
  %pci10.i = getelementptr inbounds %struct.efc, ptr %27, i32 0, i32 1
  %41 = ptrtoint ptr %pci10.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci10.i, align 4
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.63) #8
  %43 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arg, align 8
  %45 = ptrtoint ptr %dma.i9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma.i9, align 4
  %tobool.not.i26.i = icmp eq ptr %46, null
  br i1 %tobool.not.i26.i, label %do.end9.i.cleanup.sink.split.i_crit_edge, label %do.end9.i.cleanup.sink.split.sink.split.i_crit_edge

do.end9.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split.i

do.end9.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %do.end9.i.cleanup.sink.split.sink.split.i_crit_edge, %do.end.i.cleanup.sink.split.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %34, %do.end.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %44, %do.end9.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %.sink40.i = phi ptr [ %36, %do.end.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %46, %do.end9.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %pci.i27.i = getelementptr inbounds %struct.efc, ptr %.sink.i, i32 0, i32 1
  %47 = ptrtoint ptr %pci.i27.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci.i27.i, align 4
  %dev.i28.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %size.i29.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 11, i32 3
  %49 = ptrtoint ptr %size.i29.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size.i29.i, align 4
  %phys.i30.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 11, i32 2
  %51 = ptrtoint ptr %phys.i30.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %phys.i30.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i28.i, i32 noundef %50, ptr noundef nonnull %.sink40.i, i32 noundef %52, i32 noundef 0) #5
  %53 = call ptr @memset(ptr %dma.i9, i32 0, i32 24)
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %do.end9.i.cleanup.sink.split.i_crit_edge, %do.end.i.cleanup.sink.split.i_crit_edge
  %.sink39.i = phi ptr [ %34, %do.end.i.cleanup.sink.split.i_crit_edge ], [ %44, %do.end9.i.cleanup.sink.split.i_crit_edge ], [ %.sink.i, %cleanup.sink.split.sink.split.i ]
  %sli.i32.i = getelementptr inbounds %struct.efc, ptr %.sink39.i, i32 0, i32 2
  %54 = ptrtoint ptr %sli.i32.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sli.i32.i, align 8
  %indicator.i33.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 9
  %56 = ptrtoint ptr %indicator.i33.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %indicator.i33.i, align 4
  %call.i34.i = call i32 @sli_resource_free(ptr noundef %55, i32 noundef 0, i32 noundef %57) #5
  %call7.i35.i = call i32 @efc_domain_cb(ptr noundef %.sink39.i, i32 noundef 1, ptr noundef %arg) #5
  br label %efc_domain_alloc_read_sparm64.exit

efc_domain_alloc_read_sparm64.exit:               ; preds = %cleanup.sink.split.i, %if.end.i.efc_domain_alloc_read_sparm64.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %data.i) #5
  br label %cleanup

cleanup:                                          ; preds = %efc_domain_alloc_read_sparm64.exit, %efc_domain_free_resources.exit
  %retval.0 = phi i32 [ -5, %efc_domain_free_resources.exit ], [ 0, %efc_domain_alloc_read_sparm64.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efc_domain_alloc_read_sparm64_cb(ptr nocapture noundef readnone %efc, i32 noundef %status, ptr nocapture noundef readonly %mqe, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not.i = icmp eq i32 %status, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %entry
  %status2.i = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %2 = ptrtoint ptr %status2.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %status2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool3.not.i = icmp eq i16 %3, 0
  br i1 %tobool3.not.i, label %if.end, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_domain_get_mbox_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_domain_alloc_read_sparm64_cb, %if.then7.i)) #5
          to label %if.then [label %if.then7.i], !srcloc !186

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %indicator.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 9
  %6 = ptrtoint ptr %indicator.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %indicator.i, align 4
  %status8.i = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %8 = ptrtoint ptr %status8.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %status8.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #5
  %conv9.i = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_domain_get_mbox_status.__UNIQUE_ID_ddebug314, ptr noundef %dev.i, ptr noundef nonnull @.str.87, i32 noundef %7, i32 noundef %status, i32 noundef %conv9.i) #5
  br label %if.then

if.then:                                          ; preds = %if.then7.i, %do.body.i
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg, align 8
  %dma.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 11
  %13 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma.i, align 4
  %tobool.not.i5 = icmp eq ptr %14, null
  br i1 %tobool.not.i5, label %if.then.efc_domain_free_resources.exit_crit_edge, label %if.then.i

if.then.efc_domain_free_resources.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_domain_free_resources.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i6 = getelementptr inbounds %struct.efc, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %pci.i6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci.i6, align 4
  %dev.i7 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 11, i32 3
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  %phys.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 11, i32 2
  %19 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i7, i32 noundef %18, ptr noundef nonnull %14, i32 noundef %20, i32 noundef 0) #5
  %21 = call ptr @memset(ptr %dma.i, i32 0, i32 24)
  br label %efc_domain_free_resources.exit

efc_domain_free_resources.exit:                   ; preds = %if.then.i, %if.then.efc_domain_free_resources.exit_crit_edge
  %sli.i = getelementptr inbounds %struct.efc, ptr %12, i32 0, i32 2
  %22 = ptrtoint ptr %sli.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sli.i, align 8
  %indicator.i8 = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 9
  %24 = ptrtoint ptr %indicator.i8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %indicator.i8, align 4
  %call.i = tail call i32 @sli_resource_free(ptr noundef %23, i32 noundef 0, i32 noundef %25) #5
  %call7.i = tail call i32 @efc_domain_cb(ptr noundef %12, i32 noundef 1, ptr noundef %arg) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %26 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arg, align 8
  %nport.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 26
  %28 = ptrtoint ptr %nport.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nport.i, align 4
  %efc1.i.i = getelementptr inbounds %struct.efc_nport, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %efc1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %efc1.i.i, align 8
  tail call void @efc_nport_cb(ptr noundef %31, i32 noundef 20, ptr noundef %29) #5
  %free_req_pending.i.i = getelementptr inbounds %struct.efc_nport, ptr %29, i32 0, i32 7
  %32 = ptrtoint ptr %free_req_pending.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %free_req_pending.i.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i, label %if.end.efc_domain_send_nport_evt.exit_crit_edge, label %if.then2.i.i

if.end.efc_domain_send_nport_evt.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_domain_send_nport_evt.exit

if.then2.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @efc_nport_free_unreg_vpi(ptr noundef %29) #5
  br label %efc_domain_send_nport_evt.exit

efc_domain_send_nport_evt.exit:                   ; preds = %if.then2.i.i, %if.end.efc_domain_send_nport_evt.exit_crit_edge
  %call.i9 = tail call i32 @efc_domain_cb(ptr noundef %27, i32 noundef 0, ptr noundef %arg) #5
  br label %cleanup

cleanup:                                          ; preds = %efc_domain_send_nport_evt.exit, %efc_domain_free_resources.exit
  %retval.0 = phi i32 [ -5, %efc_domain_free_resources.exit ], [ 0, %efc_domain_send_nport_evt.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_domain_cb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_unreg_vfi(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efc_domain_free_unreg_vfi_cb(ptr nocapture noundef readnone %efc, i32 noundef %status, ptr nocapture noundef readonly %mqe, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not.i = icmp eq i32 %status, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %entry
  %status2.i = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %2 = ptrtoint ptr %status2.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %status2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool3.not.i = icmp eq i16 %3, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.efc_domain_get_mbox_status.exit_crit_edge, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

lor.lhs.false.i.efc_domain_get_mbox_status.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_domain_get_mbox_status.exit

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_domain_get_mbox_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_domain_free_unreg_vfi_cb, %if.then7.i)) #5
          to label %efc_domain_get_mbox_status.exit [label %if.then7.i], !srcloc !186

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %indicator.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 9
  %6 = ptrtoint ptr %indicator.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %indicator.i, align 4
  %status8.i = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %8 = ptrtoint ptr %status8.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %status8.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #5
  %conv9.i = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_domain_get_mbox_status.__UNIQUE_ID_ddebug314, ptr noundef %dev.i, ptr noundef nonnull @.str.87, i32 noundef %7, i32 noundef %status, i32 noundef %conv9.i) #5
  br label %efc_domain_get_mbox_status.exit

efc_domain_get_mbox_status.exit:                  ; preds = %if.then7.i, %do.body.i, %lor.lhs.false.i.efc_domain_get_mbox_status.exit_crit_edge
  %tobool.not = phi i1 [ true, %lor.lhs.false.i.efc_domain_get_mbox_status.exit_crit_edge ], [ false, %do.body.i ], [ false, %if.then7.i ]
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg, align 8
  %dma.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 11
  %13 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma.i, align 4
  %tobool.not.i5 = icmp eq ptr %14, null
  br i1 %tobool.not.i5, label %efc_domain_get_mbox_status.exit.efc_domain_free_resources.exit_crit_edge, label %if.then.i

efc_domain_get_mbox_status.exit.efc_domain_free_resources.exit_crit_edge: ; preds = %efc_domain_get_mbox_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_domain_free_resources.exit

if.then.i:                                        ; preds = %efc_domain_get_mbox_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i6 = getelementptr inbounds %struct.efc, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %pci.i6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci.i6, align 4
  %dev.i7 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 11, i32 3
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  %phys.i = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 11, i32 2
  %19 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i7, i32 noundef %18, ptr noundef nonnull %14, i32 noundef %20, i32 noundef 0) #5
  %21 = call ptr @memset(ptr %dma.i, i32 0, i32 24)
  br label %efc_domain_free_resources.exit

efc_domain_free_resources.exit:                   ; preds = %if.then.i, %efc_domain_get_mbox_status.exit.efc_domain_free_resources.exit_crit_edge
  %spec.select4 = select i1 %tobool.not, i32 0, i32 -5
  %spec.select = select i1 %tobool.not, i32 4, i32 5
  %sli.i = getelementptr inbounds %struct.efc, ptr %12, i32 0, i32 2
  %22 = ptrtoint ptr %sli.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sli.i, align 8
  %indicator.i8 = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 9
  %24 = ptrtoint ptr %indicator.i8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %indicator.i8, align 4
  %call.i = tail call i32 @sli_resource_free(ptr noundef %23, i32 noundef 0, i32 noundef %25) #5
  %call7.i = tail call i32 @efc_domain_cb(ptr noundef %12, i32 noundef %spec.select, ptr noundef %arg) #5
  ret i32 %spec.select4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_remote_node_cb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 223, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @efc_cmd_nport_alloc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @efc_cmd_nport_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 238, i32 3}
!10 = !{ptr @efc_cmd_nport_alloc._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @efc_cmd_nport_alloc._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 269, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @efc_cmd_nport_attach._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @efc_cmd_nport_attach._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 280, i32 3}
!19 = !{ptr @efc_cmd_nport_attach._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @efc_cmd_nport_attach._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 288, i32 3}
!23 = !{ptr @efc_cmd_nport_attach._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @efc_cmd_nport_attach._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 301, i32 3}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @efc_cmd_nport_free._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @efc_cmd_nport_free._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 460, i32 3}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @efc_cmd_domain_alloc._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @efc_cmd_domain_alloc._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 471, i32 3}
!37 = !{ptr @efc_cmd_domain_alloc._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @efc_cmd_domain_alloc._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 481, i32 3}
!41 = !{ptr @efc_cmd_domain_alloc._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @efc_cmd_domain_alloc._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 519, i32 3}
!45 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @efc_cmd_domain_attach._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @efc_cmd_domain_attach._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 530, i32 3}
!50 = !{ptr @efc_cmd_domain_attach._entry.28, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @efc_cmd_domain_attach._entry_ptr.30, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 537, i32 3}
!54 = !{ptr @efc_cmd_domain_attach._entry.31, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @efc_cmd_domain_attach._entry_ptr.33, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 597, i32 3}
!58 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @efc_cmd_domain_free._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @efc_cmd_domain_free._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 611, i32 3}
!63 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @efc_cmd_node_alloc._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @efc_cmd_node_alloc._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 622, i32 3}
!68 = !{ptr @efc_cmd_node_alloc._entry.38, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @efc_cmd_node_alloc._entry_ptr.40, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 664, i32 3}
!72 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @efc_cmd_node_attach._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @efc_cmd_node_attach._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 674, i32 3}
!77 = !{ptr @efc_cmd_node_attach._entry.43, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @efc_cmd_node_attach._entry_ptr.45, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 693, i32 3}
!81 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @efc_node_free_resources._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @efc_node_free_resources._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 699, i32 4}
!86 = !{ptr @efc_node_free_resources._entry.48, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @efc_node_free_resources._entry_ptr.50, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 705, i32 5}
!90 = !{ptr @efc_node_free_resources._entry.51, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @efc_node_free_resources._entry_ptr.53, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 760, i32 3}
!94 = !{ptr @efc_cmd_node_detach._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @efc_cmd_node_detach._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 776, i32 4}
!98 = !{ptr @efc_cmd_node_detach._entry.55, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @efc_cmd_node_detach._entry_ptr.57, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 184, i32 3}
!102 = !{ptr @efc_nport_alloc_read_sparm64._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @efc_nport_alloc_read_sparm64._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.60, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 192, i32 3}
!106 = !{ptr @efc_nport_alloc_read_sparm64._entry.59, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @efc_nport_alloc_read_sparm64._entry_ptr.61, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.63, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 200, i32 3}
!110 = !{ptr @efc_nport_alloc_read_sparm64._entry.62, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @efc_nport_alloc_read_sparm64._entry_ptr.64, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 41, i32 3}
!114 = !{ptr @.str.66, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.67, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @efc_nport_get_mbox_status.__UNIQUE_ID_ddebug313, !113, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!117 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 134, i32 3}
!119 = !{ptr @.str.69, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @efc_nport_alloc_init_vpi._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @efc_nport_alloc_init_vpi._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.71, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 142, i32 3}
!124 = !{ptr @efc_nport_alloc_init_vpi._entry.70, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @efc_nport_alloc_init_vpi._entry_ptr.72, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.73, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 74, i32 3}
!128 = !{ptr @.str.74, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @efc_nport_free_unreg_vpi._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @efc_nport_free_unreg_vpi._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.76, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 82, i32 3}
!133 = !{ptr @efc_nport_free_unreg_vpi._entry.75, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @efc_nport_free_unreg_vpi._entry_ptr.77, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.78, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 438, i32 3}
!137 = !{ptr @.str.79, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @efc_domain_alloc_init_vfi._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @efc_domain_alloc_init_vfi._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.81, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 444, i32 2}
!142 = !{ptr @efc_domain_alloc_init_vfi._entry.80, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @efc_domain_alloc_init_vfi._entry_ptr.82, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.84, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 448, i32 3}
!146 = !{ptr @efc_domain_alloc_init_vfi._entry.83, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @efc_domain_alloc_init_vfi._entry_ptr.85, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.86, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 324, i32 3}
!150 = !{ptr @.str.87, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @efc_domain_get_mbox_status.__UNIQUE_ID_ddebug314, !149, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!152 = !{ptr @.str.88, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 391, i32 3}
!154 = !{ptr @efc_domain_alloc_read_sparm64._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @efc_domain_alloc_read_sparm64._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @efc_domain_alloc_read_sparm64._entry.89, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 400, i32 3}
!158 = !{ptr @efc_domain_alloc_read_sparm64._entry_ptr.90, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.91, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 576, i32 3}
!161 = !{ptr @.str.92, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @efc_domain_free_unreg_vfi._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @efc_domain_free_unreg_vfi._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.94, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 583, i32 3}
!166 = !{ptr @efc_domain_free_unreg_vfi._entry.93, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @efc_domain_free_unreg_vfi._entry_ptr.95, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.96, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 642, i32 3}
!170 = !{ptr @.str.97, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @efc_cmd_node_attach_cb.__UNIQUE_ID_ddebug315, !169, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!172 = !{ptr @.str.98, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/elx/libefc/efc_cmds.c", i32 729, i32 3}
!174 = !{ptr @efc_cmd_node_free_cb.__UNIQUE_ID_ddebug316, !173, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{!"auto-init"}
!185 = !{i8 0, i8 2}
!186 = !{i64 2148303019, i64 2148303024, i64 2148303037, i64 2148303081, i64 2148303115, i64 2148303136}
