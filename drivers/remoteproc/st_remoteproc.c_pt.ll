; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/st_remoteproc.c_pt.bc'
source_filename = "../drivers/remoteproc/st_remoteproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.st_rproc_config = type { i8, i8, i32 }
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
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.st_rproc = type { ptr, ptr, ptr, ptr, i32, ptr, i32, [4 x ptr], %struct.mbox_client, %struct.mbox_client }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.of_phandle_iterator = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.reserved_mem = type { ptr, i32, i32, ptr, i32, i32, ptr }
%struct.rproc_mem_entry = type { ptr, i8, i32, i32, i32, ptr, [32 x i8], %struct.list_head, i32, i32, i32, ptr, ptr }

@__initcall__kmod_st_remoteproc__235_474_st_rproc_driver_init6 = internal global ptr @st_rproc_driver_init, section ".initcall6.init", align 4
@st_rproc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @st_rproc_probe, ptr @st_rproc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_rproc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_st_rproc_driver_exit = internal global ptr @st_rproc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description236 = internal constant [61 x i8] c"st_remoteproc.description=ST Remote Processor Control Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [58 x i8] c"st_remoteproc.author=Ludovic Barre <ludovic.barre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [52 x i8] c"st_remoteproc.file=drivers/remoteproc/st_remoteproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [29 x i8] c"st_remoteproc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"st-rproc\00", [23 x i8] zeroinitializer }, align 32
@st_rproc_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st40-rproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st40_rproc_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st231-rproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st231_rproc_cfg }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@st_rproc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 351, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No device match found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st_rproc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/remoteproc/st_remoteproc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_rproc_probe._entry_ptr = internal global ptr @st_rproc_probe._entry, section ".printk_index", align 4
@st_rproc_ops = internal constant { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr null, ptr null, ptr @st_rproc_start, ptr @st_rproc_stop, ptr null, ptr null, ptr @st_rproc_kick, ptr null, ptr @st_rproc_parse_fw, ptr null, ptr @rproc_elf_find_loaded_rsc_table, ptr null, ptr @rproc_elf_load_segments, ptr @rproc_elf_sanity_check, ptr @rproc_elf_get_boot_addr, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mbox-names\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vq0_rx\00", [25 x i8] zeroinitializer }, align 32
@st_rproc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to request mbox chan 0\0A\00", [33 x i8] zeroinitializer }, align 32
@st_rproc_probe._entry_ptr.10 = internal global ptr @st_rproc_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vq0_tx\00", [25 x i8] zeroinitializer }, align 32
@st_rproc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@st_rproc_probe._entry_ptr.13 = internal global ptr @st_rproc_probe._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vq1_rx\00", [25 x i8] zeroinitializer }, align 32
@st_rproc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to request mbox chan 1\0A\00", [33 x i8] zeroinitializer }, align 32
@st_rproc_probe._entry_ptr.17 = internal global ptr @st_rproc_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vq1_tx\00", [25 x i8] zeroinitializer }, align 32
@st_rproc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 425, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@st_rproc_probe._entry_ptr.20 = internal global ptr @st_rproc_probe._entry.19, section ".printk_index", align 4
@st_rproc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 173, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st_rproc_start\00", [17 x i8] zeroinitializer }, align 32
@st_rproc_start._entry_ptr = internal global ptr @st_rproc_start._entry, section ".printk_index", align 4
@st_rproc_start._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 180, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to deassert S/W Reset\0A\00", [34 x i8] zeroinitializer }, align 32
@st_rproc_start._entry_ptr.25 = internal global ptr @st_rproc_start._entry.23, section ".printk_index", align 4
@st_rproc_start._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.3, i32 188, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to deassert Power Reset\0A\00", [32 x i8] zeroinitializer }, align 32
@st_rproc_start._entry_ptr.28 = internal global ptr @st_rproc_start._entry.26, section ".printk_index", align 4
@st_rproc_start._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.3, i32 193, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Started from 0x%llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@st_rproc_start._entry_ptr.32 = internal global ptr @st_rproc_start._entry.29, section ".printk_index", align 4
@st_rproc_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to assert S/W Reset\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st_rproc_stop\00", [18 x i8] zeroinitializer }, align 32
@st_rproc_stop._entry_ptr = internal global ptr @st_rproc_stop._entry, section ".printk_index", align 4
@st_rproc_stop._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to assert Power Reset\0A\00", [34 x i8] zeroinitializer }, align 32
@st_rproc_stop._entry_ptr.37 = internal global ptr @st_rproc_stop._entry.35, section ".printk_index", align 4
@st_rproc_kick._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 89, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to send message via mbox: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st_rproc_kick\00", [18 x i8] zeroinitializer }, align 32
@st_rproc_kick._entry_ptr = internal global ptr @st_rproc_kick._entry, section ".printk_index", align 4
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@st_rproc_parse_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 132, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to acquire memory-region\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st_rproc_parse_fw\00", [46 x i8] zeroinitializer }, align 32
@st_rproc_parse_fw._entry_ptr = internal global ptr @st_rproc_parse_fw._entry, section ".printk_index", align 4
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdev0buffer\00", [20 x i8] zeroinitializer }, align 32
@st_rproc_mem_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 101, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to map memory region: %pa+%zx\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st_rproc_mem_alloc\00", [45 x i8] zeroinitializer }, align 32
@st_rproc_mem_alloc._entry_ptr = internal global ptr @st_rproc_mem_alloc._entry, section ".printk_index", align 4
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sw_reset\00", [23 x i8] zeroinitializer }, align 32
@st_rproc_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 292, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get S/W Reset\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st_rproc_parse_dt\00", [46 x i8] zeroinitializer }, align 32
@st_rproc_parse_dt._entry_ptr = internal global ptr @st_rproc_parse_dt._entry, section ".printk_index", align 4
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwr_reset\00", [22 x i8] zeroinitializer }, align 32
@st_rproc_parse_dt._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.48, ptr @.str.3, i32 301, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get Power Reset\0A\00", [37 x i8] zeroinitializer }, align 32
@st_rproc_parse_dt._entry_ptr.52 = internal global ptr @st_rproc_parse_dt._entry.50, section ".printk_index", align 4
@st_rproc_parse_dt._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.48, ptr @.str.3, i32 308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@st_rproc_parse_dt._entry_ptr.55 = internal global ptr @st_rproc_parse_dt._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@st_rproc_parse_dt._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.48, ptr @.str.3, i32 314, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get clock frequency\0A\00", [33 x i8] zeroinitializer }, align 32
@st_rproc_parse_dt._entry_ptr.59 = internal global ptr @st_rproc_parse_dt._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st,syscfg\00", [22 x i8] zeroinitializer }, align 32
@st_rproc_parse_dt._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.48, ptr @.str.3, i32 320, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Boot base not found\0A\00", [43 x i8] zeroinitializer }, align 32
@st_rproc_parse_dt._entry_ptr.63 = internal global ptr @st_rproc_parse_dt._entry.61, section ".printk_index", align 4
@st_rproc_parse_dt._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.48, ptr @.str.3, i32 327, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Boot offset not found\0A\00", [41 x i8] zeroinitializer }, align 32
@st_rproc_parse_dt._entry_ptr.66 = internal global ptr @st_rproc_parse_dt._entry.64, section ".printk_index", align 4
@st_rproc_parse_dt._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.48, ptr @.str.3, i32 333, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@st_rproc_parse_dt._entry_ptr.69 = internal global ptr @st_rproc_parse_dt._entry.67, section ".printk_index", align 4
@st_rproc_mbox_callback.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.70, ptr @.str.71, ptr @.str.3, ptr @.str.72, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st_remoteproc\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"st_rproc_mbox_callback\00", [41 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no message was found in vqid %d\0A\00", [63 x i8] zeroinitializer }, align 32
@st40_rproc_cfg = internal constant { %struct.st_rproc_config, [24 x i8] } { %struct.st_rproc_config { i8 1, i8 1, i32 536870910 }, [24 x i8] zeroinitializer }, align 32
@st231_rproc_cfg = internal constant { %struct.st_rproc_config, [24 x i8] } { %struct.st_rproc_config { i8 1, i8 0, i32 -64 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"st_rproc_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 466, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 470, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"st_rproc_match\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 273, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 351, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"st_rproc_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 229, i32 31 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 382, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 399, i32 63 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 401, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 407, i32 63 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 409, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 415, i32 63 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 417, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 423, i32 63 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 425, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 173, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 180, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 188, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 193, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 215, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 221, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 89, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 128, i32 36 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 132, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 137, i32 29 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 100, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 290, i32 12 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 292, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 299, i32 13 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 301, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 308, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 312, i32 33 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 314, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 318, i32 57 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 320, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 327, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 333, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 61, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant [15 x i8] c"st40_rproc_cfg\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 261, i32 37 }
@___asan_gen_.283 = private unnamed_addr constant [16 x i8] c"st231_rproc_cfg\00", align 1
@___asan_gen_.284 = private constant [38 x i8] c"../drivers/remoteproc/st_remoteproc.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 267, i32 37 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_st_rproc_driver_exit, ptr @__initcall__kmod_st_remoteproc__235_474_st_rproc_driver_init6, ptr @st_rproc_driver_exit, ptr @st_rproc_kick._entry, ptr @st_rproc_kick._entry_ptr, ptr @st_rproc_mem_alloc._entry, ptr @st_rproc_mem_alloc._entry_ptr, ptr @st_rproc_parse_dt._entry, ptr @st_rproc_parse_dt._entry.50, ptr @st_rproc_parse_dt._entry.53, ptr @st_rproc_parse_dt._entry.57, ptr @st_rproc_parse_dt._entry.61, ptr @st_rproc_parse_dt._entry.64, ptr @st_rproc_parse_dt._entry.67, ptr @st_rproc_parse_dt._entry_ptr, ptr @st_rproc_parse_dt._entry_ptr.52, ptr @st_rproc_parse_dt._entry_ptr.55, ptr @st_rproc_parse_dt._entry_ptr.59, ptr @st_rproc_parse_dt._entry_ptr.63, ptr @st_rproc_parse_dt._entry_ptr.66, ptr @st_rproc_parse_dt._entry_ptr.69, ptr @st_rproc_parse_fw._entry, ptr @st_rproc_parse_fw._entry_ptr, ptr @st_rproc_probe._entry, ptr @st_rproc_probe._entry.12, ptr @st_rproc_probe._entry.15, ptr @st_rproc_probe._entry.19, ptr @st_rproc_probe._entry.8, ptr @st_rproc_probe._entry_ptr, ptr @st_rproc_probe._entry_ptr.10, ptr @st_rproc_probe._entry_ptr.13, ptr @st_rproc_probe._entry_ptr.17, ptr @st_rproc_probe._entry_ptr.20, ptr @st_rproc_start._entry, ptr @st_rproc_start._entry.23, ptr @st_rproc_start._entry.26, ptr @st_rproc_start._entry.29, ptr @st_rproc_start._entry_ptr, ptr @st_rproc_start._entry_ptr.25, ptr @st_rproc_start._entry_ptr.28, ptr @st_rproc_start._entry_ptr.32, ptr @st_rproc_stop._entry, ptr @st_rproc_stop._entry.35, ptr @st_rproc_stop._entry_ptr, ptr @st_rproc_stop._entry_ptr.37, ptr @st_rproc_driver, ptr @.str, ptr @st_rproc_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @st_rproc_ops, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @st40_rproc_cfg, ptr @st231_rproc_cfg], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_start._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_start._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_start._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_stop._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_kick._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_parse_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_mem_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_parse_dt._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_parse_dt._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_parse_dt._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_parse_dt._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_parse_dt._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_parse_dt._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st40_rproc_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st231_rproc_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rproc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_rproc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_rproc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_rproc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rproc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_device(ptr noundef nonnull @st_rproc_match, ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call3 = tail call ptr @rproc_alloc(ptr noundef %dev1, ptr noundef %5, ptr noundef nonnull @st_rproc_ops, ptr noundef null, i32 noundef 100) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %has_iommu = getelementptr inbounds %struct.rproc, ptr %call3, i32 0, i32 29
  %6 = ptrtoint ptr %has_iommu to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %has_iommu, align 8
  %priv = getelementptr inbounds %struct.rproc, ptr %call3, i32 0, i32 4
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %8, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call3, ptr %driver_data.i.i, align 4
  %13 = load ptr, ptr %priv, align 4
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end6.if.end9.i_crit_edge, label %if.then.i

if.end6.if.end9.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then.i:                                        ; preds = %if.end6
  %call.i.i160 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.46, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %sw_reset3.i = getelementptr inbounds %struct.st_rproc, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %sw_reset3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i160, ptr %sw_reset3.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i160, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i.st_rproc_parse_dt.exit_crit_edge, label %if.then.i.if.end9.i_crit_edge

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then.i.st_rproc_parse_dt.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %st_rproc_parse_dt.exit

if.end9.i:                                        ; preds = %if.then.i.if.end9.i_crit_edge, %if.end6.if.end9.i_crit_edge
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %13, align 4
  %pwr_reset.i = getelementptr inbounds %struct.st_rproc_config, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pwr_reset.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pwr_reset.i, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool11.not.i = icmp eq i8 %24, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end24.i_crit_edge, label %if.then12.i

if.end9.i.if.end24.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then12.i:                                      ; preds = %if.end9.i
  %call.i104.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.49, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %pwr_reset14.i = getelementptr inbounds %struct.st_rproc, ptr %13, i32 0, i32 2
  %25 = ptrtoint ptr %pwr_reset14.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i104.i, ptr %pwr_reset14.i, align 4
  %cmp.i105.i = icmp ugt ptr %call.i104.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105.i, label %if.then12.i.st_rproc_parse_dt.exit_crit_edge, label %if.then12.i.if.end24.i_crit_edge

if.then12.i.if.end24.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then12.i.st_rproc_parse_dt.exit_crit_edge:     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %st_rproc_parse_dt.exit

if.end24.i:                                       ; preds = %if.then12.i.if.end24.i_crit_edge, %if.end9.i.if.end24.i_crit_edge
  %call25.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %clk.i = getelementptr inbounds %struct.st_rproc, ptr %13, i32 0, i32 3
  %26 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call25.i, ptr %clk.i, align 4
  %cmp.i106.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106.i, label %if.end24.i.st_rproc_parse_dt.exit_crit_edge, label %if.end34.i

if.end24.i.st_rproc_parse_dt.exit_crit_edge:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %st_rproc_parse_dt.exit

if.end34.i:                                       ; preds = %if.end24.i
  %clk_rate.i = getelementptr inbounds %struct.st_rproc, ptr %13, i32 0, i32 4
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.56, ptr noundef %clk_rate.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool36.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool36.not.i, label %if.end41.i, label %do.end40.i

do.end40.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.58) #10
  br label %free_rproc

if.end41.i:                                       ; preds = %if.end34.i
  %call42.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %15, ptr noundef nonnull @.str.60) #7
  %boot_base.i = getelementptr inbounds %struct.st_rproc, ptr %13, i32 0, i32 5
  %27 = ptrtoint ptr %boot_base.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call42.i, ptr %boot_base.i, align 4
  %cmp.i107.i = icmp ugt ptr %call42.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107.i, label %if.end41.i.st_rproc_parse_dt.exit_crit_edge, label %if.end51.i

if.end41.i.st_rproc_parse_dt.exit_crit_edge:      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %st_rproc_parse_dt.exit

if.end51.i:                                       ; preds = %if.end41.i
  %boot_offset.i = getelementptr inbounds %struct.st_rproc, ptr %13, i32 0, i32 6
  %call52.i = tail call i32 @of_property_read_u32_index(ptr noundef %15, ptr noundef nonnull @.str.60, i32 noundef 1, ptr noundef %boot_offset.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end58.i, label %do.end57.i

do.end57.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.65) #10
  br label %free_rproc

if.end58.i:                                       ; preds = %if.end51.i
  %28 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk.i, align 4
  %call60.i = tail call i32 @clk_prepare(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.end58.i.if.end11_crit_edge, label %do.end65.i

if.end58.i.if.end11_crit_edge:                    ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end65.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.68) #10
  br label %free_rproc

st_rproc_parse_dt.exit:                           ; preds = %if.end41.i.st_rproc_parse_dt.exit_crit_edge, %if.end24.i.st_rproc_parse_dt.exit_crit_edge, %if.then12.i.st_rproc_parse_dt.exit_crit_edge, %if.then.i.st_rproc_parse_dt.exit_crit_edge
  %.str.47.sink = phi ptr [ @.str.47, %if.then.i.st_rproc_parse_dt.exit_crit_edge ], [ @.str.51, %if.then12.i.st_rproc_parse_dt.exit_crit_edge ], [ @.str.54, %if.end24.i.st_rproc_parse_dt.exit_crit_edge ], [ @.str.62, %if.end41.i.st_rproc_parse_dt.exit_crit_edge ]
  %retval.0.i.in.in = phi ptr [ %sw_reset3.i, %if.then.i.st_rproc_parse_dt.exit_crit_edge ], [ %pwr_reset14.i, %if.then12.i.st_rproc_parse_dt.exit_crit_edge ], [ %clk.i, %if.end24.i.st_rproc_parse_dt.exit_crit_edge ], [ %boot_base.i, %if.end41.i.st_rproc_parse_dt.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.47.sink) #10
  %30 = ptrtoint ptr %retval.0.i.in.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %retval.0.i.in = load ptr, ptr %retval.0.i.in.in, align 4
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool9.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool9.not, label %st_rproc_parse_dt.exit.if.end11_crit_edge, label %st_rproc_parse_dt.exit.free_rproc_crit_edge

st_rproc_parse_dt.exit.free_rproc_crit_edge:      ; preds = %st_rproc_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_rproc

st_rproc_parse_dt.exit.if.end11_crit_edge:        ; preds = %st_rproc_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %st_rproc_parse_dt.exit.if.end11_crit_edge, %if.end58.i.if.end11_crit_edge
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i162 = getelementptr inbounds %struct.rproc, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %priv.i162 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv.i162, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i163 = icmp eq i8 %38, 0
  br i1 %tobool.not.i163, label %if.end11.if.end.i_crit_edge, label %if.then.i164

if.end11.if.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i164:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %sw_reset1.i = getelementptr inbounds %struct.st_rproc, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %sw_reset1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sw_reset1.i, align 4
  %call2.i = tail call i32 @reset_control_status(ptr noundef %40) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i164, %if.end11.if.end.i_crit_edge
  %reset_sw.0.i = phi i32 [ %call2.i, %if.then.i164 ], [ 0, %if.end11.if.end.i_crit_edge ]
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %34, align 4
  %pwr_reset.i165 = getelementptr inbounds %struct.st_rproc_config, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %pwr_reset.i165 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pwr_reset.i165, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool4.not.i = icmp eq i8 %44, 0
  br i1 %tobool4.not.i, label %if.end.i.st_rproc_state.exit_crit_edge, label %if.then5.i

if.end.i.st_rproc_state.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %st_rproc_state.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %pwr_reset6.i = getelementptr inbounds %struct.st_rproc, ptr %34, i32 0, i32 2
  %45 = ptrtoint ptr %pwr_reset6.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pwr_reset6.i, align 4
  %call7.i = tail call i32 @reset_control_status(ptr noundef %46) #7
  br label %st_rproc_state.exit

st_rproc_state.exit:                              ; preds = %if.then5.i, %if.end.i.st_rproc_state.exit_crit_edge
  %reset_pwr.0.i = phi i32 [ %call7.i, %if.then5.i ], [ 0, %if.end.i.st_rproc_state.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset_sw.0.i)
  %cmp.i = icmp slt i32 %reset_sw.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset_pwr.0.i)
  %cmp9.i = icmp slt i32 %reset_pwr.0.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp9.i
  br i1 %or.cond.i, label %st_rproc_state.exit.free_clk_crit_edge, label %if.end14

st_rproc_state.exit.free_clk_crit_edge:           ; preds = %st_rproc_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_clk

if.end14:                                         ; preds = %st_rproc_state.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset_sw.0.i)
  %tobool12.not.i = icmp ne i32 %reset_sw.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset_pwr.0.i)
  %tobool13.not.i = icmp ne i32 %reset_pwr.0.i, 0
  %narrow.i = select i1 %tobool12.not.i, i1 true, i1 %tobool13.not.i
  br i1 %narrow.i, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %power = getelementptr inbounds %struct.rproc, ptr %call3, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %power, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %power, i32 1, i32 3, i32 1) #7
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %power, ptr %power, i32 1, ptr elementtype(i32) %power) #7, !srcloc !152
  %state = getelementptr inbounds %struct.rproc, ptr %call3, i32 0, i32 8
  %48 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %state, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.st_rproc, ptr %8, i32 0, i32 3
  %49 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clk, align 4
  %clk_rate = getelementptr inbounds %struct.st_rproc, ptr %8, i32 0, i32 4
  %51 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %clk_rate, align 4
  %call17 = tail call i32 @clk_set_rate(ptr noundef %50, i32 noundef %52) #7
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  %call19 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.if.end82_crit_edge, label %if.then21

if.end18.if.end82_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then21:                                        ; preds = %if.end18
  %mbox_client_vq0 = getelementptr inbounds %struct.st_rproc, ptr %8, i32 0, i32 8
  %53 = ptrtoint ptr %mbox_client_vq0 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev1, ptr %mbox_client_vq0, align 4
  %tx_done = getelementptr inbounds %struct.st_rproc, ptr %8, i32 0, i32 8, i32 6
  %54 = ptrtoint ptr %tx_done to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %tx_done, align 4
  %tx_block = getelementptr inbounds %struct.st_rproc, ptr %8, i32 0, i32 8, i32 1
  %55 = ptrtoint ptr %tx_block to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %tx_block, align 4
  %knows_txdone = getelementptr inbounds %struct.st_rproc, ptr %8, i32 0, i32 8, i32 3
  %56 = ptrtoint ptr %knows_txdone to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %knows_txdone, align 4
  %rx_callback = getelementptr inbounds %struct.st_rproc, ptr %8, i32 0, i32 8, i32 4
  %57 = ptrtoint ptr %rx_callback to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @st_rproc_mbox_callback_vq0, ptr %rx_callback, align 4
  %mbox_client_vq1 = getelementptr inbounds %struct.st_rproc, ptr %8, i32 0, i32 9
  %58 = ptrtoint ptr %mbox_client_vq1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dev1, ptr %mbox_client_vq1, align 4
  %tx_done29 = getelementptr inbounds %struct.st_rproc, ptr %8, i32 0, i32 9, i32 6
  %59 = ptrtoint ptr %tx_done29 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %tx_done29, align 4
  %tx_block31 = getelementptr inbounds %struct.st_rproc, ptr %8, i32 0, i32 9, i32 1
  %60 = ptrtoint ptr %tx_block31 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %tx_block31, align 4
  %knows_txdone33 = getelementptr inbounds %struct.st_rproc, ptr %8, i32 0, i32 9, i32 3
  %61 = ptrtoint ptr %knows_txdone33 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %knows_txdone33, align 4
  %rx_callback35 = getelementptr inbounds %struct.st_rproc, ptr %8, i32 0, i32 9, i32 4
  %62 = ptrtoint ptr %rx_callback35 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @st_rproc_mbox_callback_vq1, ptr %rx_callback35, align 4
  %call37 = tail call ptr @mbox_request_channel_byname(ptr noundef %mbox_client_vq0, ptr noundef nonnull @.str.7) #7
  %cmp.i167 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %do.end42, label %if.end45

do.end42:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %dev43 = getelementptr inbounds %struct.rproc, ptr %call3, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.9) #10
  %63 = ptrtoint ptr %call37 to i32
  br label %free_clk

if.end45:                                         ; preds = %if.then21
  %mbox_chan = getelementptr inbounds %struct.st_rproc, ptr %8, i32 0, i32 7
  %64 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call37, ptr %mbox_chan, align 4
  %call47 = tail call ptr @mbox_request_channel_byname(ptr noundef %mbox_client_vq0, ptr noundef nonnull @.str.11) #7
  %cmp.i168 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %if.end45.free_mbox.sink.split_crit_edge, label %if.end55

if.end45.free_mbox.sink.split_crit_edge:          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_mbox.sink.split

if.end55:                                         ; preds = %if.end45
  %arrayidx57 = getelementptr %struct.st_rproc, ptr %8, i32 0, i32 7, i32 1
  %65 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call47, ptr %arrayidx57, align 4
  %call59 = tail call ptr @mbox_request_channel_byname(ptr noundef %mbox_client_vq1, ptr noundef nonnull @.str.14) #7
  %cmp.i169 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %if.end55.free_mbox.sink.split_crit_edge, label %if.end67

if.end55.free_mbox.sink.split_crit_edge:          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_mbox.sink.split

if.end67:                                         ; preds = %if.end55
  %arrayidx69 = getelementptr %struct.st_rproc, ptr %8, i32 0, i32 7, i32 2
  %66 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call59, ptr %arrayidx69, align 4
  %call71 = tail call ptr @mbox_request_channel_byname(ptr noundef %mbox_client_vq1, ptr noundef nonnull @.str.18) #7
  %cmp.i170 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %if.end67.free_mbox.sink.split_crit_edge, label %if.end79

if.end67.free_mbox.sink.split_crit_edge:          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_mbox.sink.split

if.end79:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx81 = getelementptr %struct.st_rproc, ptr %8, i32 0, i32 7, i32 3
  %67 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call71, ptr %arrayidx81, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.end79, %if.end18.if.end82_crit_edge
  %call83 = tail call i32 @rproc_add(ptr noundef nonnull %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end82.cleanup_crit_edge, label %if.end82.free_mbox_crit_edge

if.end82.free_mbox_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_mbox

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

free_mbox.sink.split:                             ; preds = %if.end67.free_mbox.sink.split_crit_edge, %if.end55.free_mbox.sink.split_crit_edge, %if.end45.free_mbox.sink.split_crit_edge
  %.str.16.sink = phi ptr [ @.str.9, %if.end45.free_mbox.sink.split_crit_edge ], [ @.str.16, %if.end55.free_mbox.sink.split_crit_edge ], [ @.str.16, %if.end67.free_mbox.sink.split_crit_edge ]
  %call71.sink = phi ptr [ %call47, %if.end45.free_mbox.sink.split_crit_edge ], [ %call59, %if.end55.free_mbox.sink.split_crit_edge ], [ %call71, %if.end67.free_mbox.sink.split_crit_edge ]
  %dev77 = getelementptr inbounds %struct.rproc, ptr %call3, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev77, ptr noundef nonnull %.str.16.sink) #10
  %68 = ptrtoint ptr %call71.sink to i32
  br label %free_mbox

free_mbox:                                        ; preds = %free_mbox.sink.split, %if.end82.free_mbox_crit_edge
  %ret.0 = phi i32 [ %call83, %if.end82.free_mbox_crit_edge ], [ %68, %free_mbox.sink.split ]
  %arrayidx89 = getelementptr %struct.st_rproc, ptr %8, i32 0, i32 7, i32 0
  %69 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx89, align 4
  tail call void @mbox_free_channel(ptr noundef %70) #7
  %arrayidx89.1 = getelementptr %struct.st_rproc, ptr %8, i32 0, i32 7, i32 1
  %71 = ptrtoint ptr %arrayidx89.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx89.1, align 4
  tail call void @mbox_free_channel(ptr noundef %72) #7
  %arrayidx89.2 = getelementptr %struct.st_rproc, ptr %8, i32 0, i32 7, i32 2
  %73 = ptrtoint ptr %arrayidx89.2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx89.2, align 4
  tail call void @mbox_free_channel(ptr noundef %74) #7
  %arrayidx89.3 = getelementptr %struct.st_rproc, ptr %8, i32 0, i32 7, i32 3
  %75 = ptrtoint ptr %arrayidx89.3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx89.3, align 4
  tail call void @mbox_free_channel(ptr noundef %76) #7
  br label %free_clk

free_clk:                                         ; preds = %free_mbox, %do.end42, %st_rproc_state.exit.free_clk_crit_edge
  %ret.1 = phi i32 [ %63, %do.end42 ], [ -22, %st_rproc_state.exit.free_clk_crit_edge ], [ %ret.0, %free_mbox ]
  %clk90 = getelementptr inbounds %struct.st_rproc, ptr %8, i32 0, i32 3
  %77 = ptrtoint ptr %clk90 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %clk90, align 4
  tail call void @clk_unprepare(ptr noundef %78) #7
  br label %free_rproc

free_rproc:                                       ; preds = %free_clk, %st_rproc_parse_dt.exit.free_rproc_crit_edge, %do.end65.i, %do.end57.i, %do.end40.i
  %ret.2 = phi i32 [ %retval.0.i, %st_rproc_parse_dt.exit.free_rproc_crit_edge ], [ %ret.1, %free_clk ], [ %call60.i, %do.end65.i ], [ -22, %do.end57.i ], [ %call.i.i.i, %do.end40.i ]
  tail call void @rproc_free(ptr noundef nonnull %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %free_rproc, %if.end82.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.2, %free_rproc ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rproc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call1 = tail call i32 @rproc_del(ptr noundef %1) #7
  %clk = getelementptr inbounds %struct.st_rproc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %arrayidx = getelementptr %struct.st_rproc, ptr %3, i32 0, i32 7, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @mbox_free_channel(ptr noundef %7) #7
  %arrayidx.1 = getelementptr %struct.st_rproc, ptr %3, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  tail call void @mbox_free_channel(ptr noundef %9) #7
  %arrayidx.2 = getelementptr %struct.st_rproc, ptr %3, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  tail call void @mbox_free_channel(ptr noundef %11) #7
  %arrayidx.3 = getelementptr %struct.st_rproc, ptr %3, i32 0, i32 7, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 4
  tail call void @mbox_free_channel(ptr noundef %13) #7
  tail call void @rproc_free(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_rproc_mbox_callback_vq0(ptr nocapture noundef readonly %mbox_client, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mbox_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_client, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call i32 @rproc_vq_interrupt(ptr noundef %3, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %do.body.i, label %entry.st_rproc_mbox_callback.exit_crit_edge

entry.st_rproc_mbox_callback.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %st_rproc_mbox_callback.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_rproc_mbox_callback.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_rproc_mbox_callback_vq0, %if.then5.i)) #7
          to label %st_rproc_mbox_callback.exit [label %if.then5.i], !srcloc !153

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_rproc_mbox_callback.__UNIQUE_ID_ddebug234, ptr noundef %1, ptr noundef nonnull @.str.72, i32 noundef 0) #7
  br label %st_rproc_mbox_callback.exit

st_rproc_mbox_callback.exit:                      ; preds = %if.then5.i, %do.body.i, %entry.st_rproc_mbox_callback.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_rproc_mbox_callback_vq1(ptr nocapture noundef readonly %mbox_client, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mbox_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_client, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call i32 @rproc_vq_interrupt(ptr noundef %3, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %do.body.i, label %entry.st_rproc_mbox_callback.exit_crit_edge

entry.st_rproc_mbox_callback.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %st_rproc_mbox_callback.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_rproc_mbox_callback.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_rproc_mbox_callback_vq1, %if.then5.i)) #7
          to label %st_rproc_mbox_callback.exit [label %if.then5.i], !srcloc !153

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_rproc_mbox_callback.__UNIQUE_ID_ddebug234, ptr noundef %1, ptr noundef nonnull @.str.72, i32 noundef 1) #7
  br label %st_rproc_mbox_callback.exit

st_rproc_mbox_callback.exit:                      ; preds = %if.then5.i, %do.body.i, %entry.st_rproc_mbox_callback.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rproc_start(ptr noundef %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %boot_base = getelementptr inbounds %struct.st_rproc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %boot_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %boot_base, align 4
  %boot_offset = getelementptr inbounds %struct.st_rproc, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %boot_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %boot_offset, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %bootaddr_mask = getelementptr inbounds %struct.st_rproc_config, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bootaddr_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bootaddr_mask, align 4
  %bootaddr = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 16
  %10 = ptrtoint ptr %bootaddr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bootaddr, align 8
  %conv = trunc i64 %11 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %9, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %clk = getelementptr inbounds %struct.st_rproc, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not = icmp eq i8 %17, 0
  br i1 %tobool3.not, label %if.end.if.end14_crit_edge, label %if.then4

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then4:                                         ; preds = %if.end
  %sw_reset5 = getelementptr inbounds %struct.st_rproc, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %sw_reset5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sw_reset5, align 4
  %call6 = tail call i32 @reset_control_deassert(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then4.if.end14_crit_edge, label %do.end11

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end11:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %dev12 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.24) #10
  br label %sw_reset_fail

if.end14:                                         ; preds = %if.then4.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %pwr_reset = getelementptr inbounds %struct.st_rproc_config, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pwr_reset to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pwr_reset, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool16.not = icmp eq i8 %23, 0
  br i1 %tobool16.not, label %if.end14.do.end30_crit_edge, label %if.then17

if.end14.do.end30_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

if.then17:                                        ; preds = %if.end14
  %pwr_reset18 = getelementptr inbounds %struct.st_rproc, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %pwr_reset18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pwr_reset18, align 4
  %call19 = tail call i32 @reset_control_deassert(ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then17.do.end30_crit_edge, label %do.end24

if.then17.do.end30_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

do.end24:                                         ; preds = %if.then17
  %dev25 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.27) #10
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %pwr_reset34 = getelementptr inbounds %struct.st_rproc_config, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %pwr_reset34 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pwr_reset34, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool35.not = icmp eq i8 %29, 0
  br i1 %tobool35.not, label %do.end24.sw_reset_fail_crit_edge, label %if.then36

do.end24.sw_reset_fail_crit_edge:                 ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw_reset_fail

do.end30:                                         ; preds = %if.then17.do.end30_crit_edge, %if.end14.do.end30_crit_edge
  %dev31 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  %30 = ptrtoint ptr %bootaddr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bootaddr, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31, ptr noundef nonnull @.str.30, i64 noundef %31) #10
  br label %cleanup

if.then36:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  %sw_reset37 = getelementptr inbounds %struct.st_rproc, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %sw_reset37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sw_reset37, align 4
  %call38 = tail call i32 @reset_control_assert(ptr noundef %33) #7
  br label %sw_reset_fail

sw_reset_fail:                                    ; preds = %if.then36, %do.end24.sw_reset_fail_crit_edge, %do.end11
  %err.0 = phi i32 [ %call6, %do.end11 ], [ %call19, %if.then36 ], [ %call19, %do.end24.sw_reset_fail_crit_edge ]
  %34 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %35) #7
  br label %cleanup

cleanup:                                          ; preds = %sw_reset_fail, %do.end30, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %err.0, %sw_reset_fail ], [ 0, %do.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rproc_stop(ptr noundef %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %sw_reset1 = getelementptr inbounds %struct.st_rproc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %sw_reset1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw_reset1, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #10
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %sw_err.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.if.end4_crit_edge ], [ 0, %entry.if.end4_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %pwr_reset = getelementptr inbounds %struct.st_rproc_config, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pwr_reset to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pwr_reset, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.end4.if.end17_crit_edge, label %if.then7

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then7:                                         ; preds = %if.end4
  %pwr_reset8 = getelementptr inbounds %struct.st_rproc, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %pwr_reset8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pwr_reset8, align 4
  %call9 = tail call i32 @reset_control_assert(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then7.if.end17_crit_edge, label %do.end14

if.then7.if.end17_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end14:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %dev15 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.36) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.then7.if.end17_crit_edge, %if.end4.if.end17_crit_edge
  %pwr_err.0 = phi i32 [ %call9, %do.end14 ], [ 0, %if.then7.if.end17_crit_edge ], [ 0, %if.end4.if.end17_crit_edge ]
  %clk = getelementptr inbounds %struct.st_rproc, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sw_err.0)
  %tobool18.not = icmp eq i32 %sw_err.0, 0
  %spec.select = select i1 %tobool18.not, i32 %pwr_err.0, i32 %sw_err.0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_rproc_kick(ptr nocapture noundef readonly %rproc, i32 noundef %vqid) #2 align 64 {
entry:
  %vqid.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vqid.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %vqid, ptr %vqid.addr, align 4
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vqid)
  %cmp = icmp sgt i32 %vqid, 1
  br i1 %cmp, label %do.end, label %if.end22, !prof !154

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 83, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end22:                                         ; preds = %entry
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %mul = shl i32 %vqid, 1
  %add = or i32 %mul, 1
  %arrayidx = getelementptr %struct.st_rproc, ptr %4, i32 0, i32 7, i32 %add
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @mbox_send_message(ptr noundef %6, ptr noundef nonnull %vqid.addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp23 = icmp slt i32 %call, 0
  br i1 %cmp23, label %do.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.38, i32 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.end22.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rproc_parse_fw(ptr noundef %rproc, ptr noundef %fw) #2 align 64 {
entry:
  %it = alloca %struct.of_phandle_iterator, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %it) #7
  %4 = call ptr @memset(ptr %it, i32 255, i32 36)
  %call = call i32 @of_phandle_iterator_init(ptr noundef nonnull %it, ptr noundef %3, ptr noundef nonnull @.str.40, ptr noundef null, i32 noundef 0) #7
  %call239 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %it) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %cmp40 = icmp eq i32 %call239, 0
  br i1 %cmp40, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %node = getelementptr inbounds %struct.of_phandle_iterator, ptr %it, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %while.body.lr.ph
  %index.041 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end20.while.body_crit_edge ]
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node, align 4
  %call3 = call ptr @of_reserved_mem_lookup(ptr noundef %6) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.41) #10
  br label %cleanup

if.end:                                           ; preds = %while.body
  %7 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call5 = call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(12) @.str.43) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.reserved_mem, ptr %call3, i32 0, i32 4
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base, align 4
  %size = getelementptr inbounds %struct.reserved_mem, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  %call11 = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ...) @rproc_mem_entry_init(ptr noundef %1, ptr noundef null, i32 noundef %12, i32 noundef %14, i32 noundef %12, ptr noundef nonnull @st_rproc_mem_alloc, ptr noundef nonnull @st_rproc_mem_release, ptr noundef %10) #7
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %size12 = getelementptr inbounds %struct.reserved_mem, ptr %call3, i32 0, i32 5
  %15 = ptrtoint ptr %size12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size12, align 4
  %base13 = getelementptr inbounds %struct.reserved_mem, ptr %call3, i32 0, i32 4
  %17 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base13, align 4
  %call16 = call ptr (ptr, i32, i32, i32, ptr, ...) @rproc_of_resm_mem_entry_init(ptr noundef %1, i32 noundef %index.041, i32 noundef %16, i32 noundef %18, ptr noundef %10) #7
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then7
  %mem.0 = phi ptr [ %call11, %if.then7 ], [ %call16, %if.else ]
  %tobool18.not = icmp eq ptr %mem.0, null
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  call void @rproc_add_carveout(ptr noundef %rproc, ptr noundef nonnull %mem.0) #7
  %inc = add i32 %index.041, 1
  %call2 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %it) #7
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.end20.while.body_crit_edge, label %if.end20.while.end_crit_edge

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end20.while.end_crit_edge, %entry.while.end_crit_edge
  %call21 = call i32 @rproc_elf_load_rsc_table(ptr noundef %rproc, ptr noundef %fw) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end17.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call21, %while.end ], [ -12, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %it) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_elf_find_loaded_rsc_table(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_load_segments(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_sanity_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rproc_elf_get_boot_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_reserved_mem_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_mem_entry_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rproc_mem_alloc(ptr nocapture noundef readonly %rproc, ptr noundef %mem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %dma = getelementptr inbounds %struct.rproc_mem_entry, ptr %mem, i32 0, i32 2
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma, align 4
  %len = getelementptr inbounds %struct.rproc_mem_entry, ptr %mem, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %call = tail call ptr @ioremap_wc(i32 noundef %3, i32 noundef %5) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44, ptr noundef %dma, i32 noundef %7) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %mem, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rproc_mem_release(ptr nocapture noundef readnone %rproc, ptr nocapture noundef readonly %mem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  tail call void @iounmap(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_of_resm_mem_entry_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_add_carveout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_load_rsc_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_vq_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !32, !34, !35, !37, !39, !40, !41, !43, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !84, !85, !86, !87, !89, !91, !92, !93, !94, !96, !98, !99, !100, !101, !103, !105, !106, !107, !109, !110, !111, !113, !115, !116, !117, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !138, !140}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @__initcall__kmod_st_remoteproc__235_474_st_rproc_driver_init6, !1, !"__initcall__kmod_st_remoteproc__235_474_st_rproc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 474, i32 1}
!2 = !{ptr @__exitcall_st_rproc_driver_exit, !1, !"__exitcall_st_rproc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description236, !4, !"__UNIQUE_ID_description236", i1 false, i1 false}
!4 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 476, i32 1}
!5 = !{ptr @__UNIQUE_ID_author237, !6, !"__UNIQUE_ID_author237", i1 false, i1 false}
!6 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 477, i32 1}
!7 = !{ptr @__UNIQUE_ID_file238, !8, !"__UNIQUE_ID_file238", i1 false, i1 false}
!8 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 478, i32 1}
!9 = !{ptr @__UNIQUE_ID_license239, !8, !"__UNIQUE_ID_license239", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 470, i32 11}
!12 = !{ptr @st_rproc_driver, !13, !"st_rproc_driver", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 466, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 351, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @st_rproc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @st_rproc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 382, i32 26}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 399, i32 63}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 401, i32 4}
!28 = !{ptr @st_rproc_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @st_rproc_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 407, i32 63}
!32 = !{ptr @st_rproc_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 409, i32 4}
!34 = !{ptr @st_rproc_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 415, i32 63}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 417, i32 4}
!39 = !{ptr @st_rproc_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @st_rproc_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 423, i32 63}
!43 = !{ptr @st_rproc_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 425, i32 4}
!45 = !{ptr @st_rproc_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @st_rproc_ops, !47, !"st_rproc_ops", i1 false, i1 false}
!47 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 229, i32 31}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 173, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @st_rproc_start._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @st_rproc_start._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 180, i32 4}
!55 = !{ptr @st_rproc_start._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @st_rproc_start._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 188, i32 4}
!59 = !{ptr @st_rproc_start._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @st_rproc_start._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 193, i32 2}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @st_rproc_start._entry.29, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @st_rproc_start._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 215, i32 4}
!68 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @st_rproc_stop._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @st_rproc_stop._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 221, i32 4}
!73 = !{ptr @st_rproc_stop._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @st_rproc_stop._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 89, i32 3}
!77 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @st_rproc_kick._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @st_rproc_kick._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 128, i32 36}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 132, i32 4}
!84 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @st_rproc_parse_fw._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @st_rproc_parse_fw._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 137, i32 29}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 100, i32 3}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @st_rproc_mem_alloc._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @st_rproc_mem_alloc._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 290, i32 12}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 292, i32 4}
!98 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @st_rproc_parse_dt._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @st_rproc_parse_dt._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 299, i32 13}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 301, i32 4}
!105 = !{ptr @st_rproc_parse_dt._entry.50, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @st_rproc_parse_dt._entry_ptr.52, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 308, i32 3}
!109 = !{ptr @st_rproc_parse_dt._entry.53, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @st_rproc_parse_dt._entry_ptr.55, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 312, i32 33}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 314, i32 3}
!115 = !{ptr @st_rproc_parse_dt._entry.57, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @st_rproc_parse_dt._entry_ptr.59, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 318, i32 57}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 320, i32 3}
!121 = !{ptr @st_rproc_parse_dt._entry.61, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @st_rproc_parse_dt._entry_ptr.63, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 327, i32 3}
!125 = !{ptr @st_rproc_parse_dt._entry.64, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @st_rproc_parse_dt._entry_ptr.66, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 333, i32 3}
!129 = !{ptr @st_rproc_parse_dt._entry.67, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @st_rproc_parse_dt._entry_ptr.69, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 61, i32 3}
!133 = !{ptr @.str.71, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.72, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @st_rproc_mbox_callback.__UNIQUE_ID_ddebug234, !132, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!136 = !{ptr @st_rproc_match, !137, !"st_rproc_match", i1 false, i1 false}
!137 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 273, i32 34}
!138 = !{ptr @st40_rproc_cfg, !139, !"st40_rproc_cfg", i1 false, i1 false}
!139 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 261, i32 37}
!140 = !{ptr @st231_rproc_cfg, !141, !"st231_rproc_cfg", i1 false, i1 false}
!141 = !{!"../drivers/remoteproc/st_remoteproc.c", i32 267, i32 37}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{i8 0, i8 2}
!152 = !{i64 2148249772, i64 2148249798, i64 2148249827, i64 2148249861, i64 2148249892, i64 2148249915}
!153 = !{i64 2148731587, i64 2148731592, i64 2148731605, i64 2148731649, i64 2148731683, i64 2148731704}
!154 = !{!"branch_weights", i32 1, i32 2000}
