; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/stm32_rproc.c_pt.bc'
source_filename = "../drivers/remoteproc/stm32_rproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.stm32_mbox = type { [10 x i8], ptr, %struct.mbox_client, %struct.work_struct, i32 }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.stm32_syscon = type { ptr, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.stm32_rproc = type { ptr, %struct.stm32_syscon, %struct.stm32_syscon, %struct.stm32_syscon, %struct.stm32_syscon, i32, i32, ptr, [4 x %struct.stm32_mbox], ptr, i8, ptr }
%struct.stm32_rproc_mem_ranges = type { i32, i32, i32 }
%struct.stm32_rproc_mem = type { [20 x i8], ptr, i32, i32, i32 }
%struct.of_phandle_iterator = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.reserved_mem = type { ptr, i32, i32, ptr, i32, i32, ptr }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }
%struct.rproc_dump_segment = type { %struct.list_head, i32, i32, ptr, ptr, i64 }
%struct.rproc_mem_entry = type { ptr, i8, i32, i32, i32, ptr, [32 x i8], %struct.list_head, i32, i32, i32, ptr, ptr }

@__initcall__kmod_stm32_rproc__240_914_stm32_rproc_driver_init6 = internal global ptr @stm32_rproc_driver_init, section ".initcall6.init", align 4
@stm32_rproc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_rproc_probe, ptr @stm32_rproc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_rproc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_rproc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_rproc_driver_exit = internal global ptr @stm32_rproc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [62 x i8] c"stm32_rproc.description=STM32 Remote Processor Control Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [56 x i8] c"stm32_rproc.author=Ludovic Barre <ludovic.barre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [60 x i8] c"stm32_rproc.author=Fabien Dessenne <fabien.dessenne@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [48 x i8] c"stm32_rproc.file=drivers/remoteproc/stm32_rproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [27 x i8] c"stm32_rproc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stm32-rproc\00", [20 x i8] zeroinitializer }, align 32
@stm32_rproc_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-m4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_rproc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_rproc_suspend, ptr @stm32_rproc_resume, ptr @stm32_rproc_suspend, ptr @stm32_rproc_resume, ptr @stm32_rproc_suspend, ptr @stm32_rproc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@st_rproc_ops = internal constant { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr @stm32_rproc_prepare, ptr null, ptr @stm32_rproc_start, ptr @stm32_rproc_stop, ptr @stm32_rproc_attach, ptr @stm32_rproc_detach, ptr @stm32_rproc_kick, ptr null, ptr @stm32_rproc_parse_fw, ptr null, ptr @rproc_elf_find_loaded_rsc_table, ptr @stm32_rproc_get_loaded_rsc_table, ptr @rproc_elf_load_segments, ptr @rproc_elf_sanity_check, ptr @rproc_elf_get_boot_addr, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@stm32_rproc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 826, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot create workqueue\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_rproc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/remoteproc/stm32_rproc.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_rproc_probe._entry_ptr = internal global ptr @stm32_rproc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@stm32_rproc_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 226, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to acquire memory-region\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_rproc_prepare\00", [44 x i8] zeroinitializer }, align 32
@stm32_rproc_prepare._entry_ptr = internal global ptr @stm32_rproc_prepare._entry, section ".printk_index", align 4
@stm32_rproc_prepare._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 232, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"memory region not valid %pa\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32_rproc_prepare._entry_ptr.12 = internal global ptr @stm32_rproc_prepare._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdev0buffer\00", [20 x i8] zeroinitializer }, align 32
@stm32_rproc_pa_to_da.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stm32_rproc\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_rproc_pa_to_da\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pa %pa to da %llx\0A\00", [45 x i8] zeroinitializer }, align 32
@stm32_rproc_mem_alloc.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_rproc_mem_alloc\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"map memory: %pa+%x\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_rproc_mem_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 125, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to map memory region: %pa+%x\0A\00", [59 x i8] zeroinitializer }, align 32
@stm32_rproc_mem_alloc._entry_ptr = internal global ptr @stm32_rproc_mem_alloc._entry, section ".printk_index", align 4
@stm32_rproc_mem_release.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_rproc_mem_release\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unmap memory: %pa\0A\00", [45 x i8] zeroinitializer }, align 32
@stm32_rproc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 455, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to clear pdds\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_rproc_start\00", [46 x i8] zeroinitializer }, align 32
@stm32_rproc_start._entry_ptr = internal global ptr @stm32_rproc_start._entry, section ".printk_index", align 4
@stm32_rproc_set_hold_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 416, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to set hold boot\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32_rproc_set_hold_boot\00", [38 x i8] zeroinitializer }, align 32
@stm32_rproc_set_hold_boot._entry_ptr = internal global ptr @stm32_rproc_set_hold_boot._entry, section ".printk_index", align 4
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"detach\00", [25 x i8] zeroinitializer }, align 32
@stm32_rproc_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 502, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"warning: remote FW shutdown without ack\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_rproc_stop\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stm32_rproc_stop._entry_ptr = internal global ptr @stm32_rproc_stop._entry, section ".printk_index", align 4
@stm32_rproc_stop._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.4, i32 512, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to assert the reset\0A\00", [36 x i8] zeroinitializer }, align 32
@stm32_rproc_stop._entry_ptr.33 = internal global ptr @stm32_rproc_stop._entry.31, section ".printk_index", align 4
@stm32_rproc_stop._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.29, ptr @.str.4, i32 521, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to set pdds\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_rproc_stop._entry_ptr.36 = internal global ptr @stm32_rproc_stop._entry.34, section ".printk_index", align 4
@stm32_rproc_stop._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.29, ptr @.str.4, i32 533, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set copro state\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32_rproc_stop._entry_ptr.39 = internal global ptr @stm32_rproc_stop._entry.37, section ".printk_index", align 4
@stm32_rproc_mbox_idx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mailbox %s not found\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_rproc_mbox_idx\00", [43 x i8] zeroinitializer }, align 32
@stm32_rproc_mbox_idx._entry_ptr = internal global ptr @stm32_rproc_mbox_idx._entry, section ".printk_index", align 4
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@stm32_rproc_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 484, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"warning: remote FW detach without ack\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_rproc_detach\00", [45 x i8] zeroinitializer }, align 32
@stm32_rproc_detach._entry_ptr = internal global ptr @stm32_rproc_detach._entry, section ".printk_index", align 4
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kick\00", [27 x i8] zeroinitializer }, align 32
@stm32_rproc_kick._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 558, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: failed (%s, err:%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_rproc_kick\00", [47 x i8] zeroinitializer }, align 32
@stm32_rproc_kick._entry_ptr = internal global ptr @stm32_rproc_kick._entry, section ".printk_index", align 4
@stm32_rproc_parse_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 270, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"no resource table found for this firmware\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_rproc_parse_fw\00", [43 x i8] zeroinitializer }, align 32
@stm32_rproc_parse_fw._entry_ptr = internal global ptr @stm32_rproc_parse_fw._entry, section ".printk_index", align 4
@stm32_rproc_get_loaded_rsc_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 604, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to read rsc tbl addr\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"stm32_rproc_get_loaded_rsc_table\00", [63 x i8] zeroinitializer }, align 32
@stm32_rproc_get_loaded_rsc_table._entry_ptr = internal global ptr @stm32_rproc_get_loaded_rsc_table._entry, section ".printk_index", align 4
@stm32_rproc_get_loaded_rsc_table._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 619, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to map memory region: %pa+%zx\0A\00", [58 x i8] zeroinitializer }, align 32
@stm32_rproc_get_loaded_rsc_table._entry_ptr.54 = internal global ptr @stm32_rproc_get_loaded_rsc_table._entry.52, section ".printk_index", align 4
@stm32_rproc_da_to_pa.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.55, ptr @.str.4, ptr @.str.56, i8 0, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_rproc_da_to_pa\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"da %llx to pa %pap\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_rproc_da_to_pa._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.4, i32 584, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't translate da %llx\0A\00", [39 x i8] zeroinitializer }, align 32
@stm32_rproc_da_to_pa._entry_ptr = internal global ptr @stm32_rproc_da_to_pa._entry, section ".printk_index", align 4
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request wdg irq\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@stm32_rproc_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 705, ptr @.str.63, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wdg irq registered\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_rproc_parse_dt\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm32_rproc_parse_dt._entry_ptr = internal global ptr @stm32_rproc_parse_dt._entry, section ".printk_index", align 4
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get mcu_reset\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st,syscfg-tz\00", [19 x i8] zeroinitializer }, align 32
@stm32_rproc_parse_dt._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.4, i32 720, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get tz syscfg\0A\00", [39 x i8] zeroinitializer }, align 32
@stm32_rproc_parse_dt._entry_ptr.68 = internal global ptr @stm32_rproc_parse_dt._entry.66, section ".printk_index", align 4
@stm32_rproc_parse_dt._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.4, i32 726, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to read tzen\0A\00", [43 x i8] zeroinitializer }, align 32
@stm32_rproc_parse_dt._entry_ptr.71 = internal global ptr @stm32_rproc_parse_dt._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st,syscfg-holdboot\00", [45 x i8] zeroinitializer }, align 32
@stm32_rproc_parse_dt._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.62, ptr @.str.4, i32 734, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get hold boot\0A\00", [39 x i8] zeroinitializer }, align 32
@stm32_rproc_parse_dt._entry_ptr.75 = internal global ptr @stm32_rproc_parse_dt._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st,syscfg-pdds\00", [17 x i8] zeroinitializer }, align 32
@stm32_rproc_parse_dt._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.62, ptr @.str.4, i32 740, ptr @.str.63, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get pdds\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_rproc_parse_dt._entry_ptr.79 = internal global ptr @stm32_rproc_parse_dt._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st,auto-boot\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st,syscfg-m4-state\00", [45 x i8] zeroinitializer }, align 32
@stm32_rproc_parse_dt._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.62, ptr @.str.4, i32 754, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"m4 state not supported\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32_rproc_parse_dt._entry_ptr.84 = internal global ptr @stm32_rproc_parse_dt._entry.82, section ".printk_index", align 4
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st,syscfg-rsc-tbl\00", [46 x i8] zeroinitializer }, align 32
@stm32_rproc_parse_dt._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.62, ptr @.str.4, i32 765, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rsc tbl syscon not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@stm32_rproc_parse_dt._entry_ptr.88 = internal global ptr @stm32_rproc_parse_dt._entry.86, section ".printk_index", align 4
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dma-ranges\00", [21 x i8] zeroinitializer }, align 32
@stm32_rproc_of_memory_translations._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.4, i32 159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: dma-ranges property not defined\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"stm32_rproc_of_memory_translations\00", [61 x i8] zeroinitializer }, align 32
@stm32_rproc_of_memory_translations._entry_ptr = internal global ptr @stm32_rproc_of_memory_translations._entry, section ".printk_index", align 4
@stm32_rproc_of_memory_translations._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.4, i32 175, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error while get dma-ranges property: %x\0A\00", [55 x i8] zeroinitializer }, align 32
@stm32_rproc_of_memory_translations._entry_ptr.94 = internal global ptr @stm32_rproc_of_memory_translations._entry.92, section ".printk_index", align 4
@stm32_rproc_of_memory_translations.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.91, ptr @.str.4, ptr @.str.95, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"memory range[%i]: da %#x, pa %pa, size %#zx:\0A\00", [50 x i8] zeroinitializer }, align 32
@stm32_rproc_mbox = internal constant { [4 x %struct.stm32_mbox], [80 x i8] } { [4 x %struct.stm32_mbox] [%struct.stm32_mbox { [10 x i8] c"vq0\00\00\00\00\00\00\00", ptr null, %struct.mbox_client { ptr null, i8 0, i32 0, i8 0, ptr @stm32_rproc_mb_callback, ptr null, ptr null }, %struct.work_struct zeroinitializer, i32 0 }, %struct.stm32_mbox { [10 x i8] c"vq1\00\00\00\00\00\00\00", ptr null, %struct.mbox_client { ptr null, i8 0, i32 0, i8 0, ptr @stm32_rproc_mb_callback, ptr null, ptr null }, %struct.work_struct zeroinitializer, i32 1 }, %struct.stm32_mbox { [10 x i8] c"shutdown\00\00", ptr null, %struct.mbox_client { ptr null, i8 1, i32 500, i8 0, ptr null, ptr null, ptr null }, %struct.work_struct zeroinitializer, i32 -1 }, %struct.stm32_mbox { [10 x i8] c"detach\00\00\00\00", ptr null, %struct.mbox_client { ptr null, i8 1, i32 200, i8 0, ptr null, ptr null, ptr null }, %struct.work_struct zeroinitializer, i32 -1 }], [80 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request mailbox %s\0A\00", [34 x i8] zeroinitializer }, align 32
@stm32_rproc_request_mbox._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.4, i32 379, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cannot get %s mbox\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_rproc_request_mbox\00", [39 x i8] zeroinitializer }, align 32
@stm32_rproc_request_mbox._entry_ptr = internal global ptr @stm32_rproc_request_mbox._entry, section ".printk_index", align 4
@stm32_rproc_request_mbox.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&ddata->mb[i].vq_work)\00", [55 x i8] zeroinitializer }, align 32
@stm32_rproc_mb_vq_work.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.100, ptr @.str.4, ptr @.str.101, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_rproc_mb_vq_work\00", [41 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no message found in vq%d\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.102 = private unnamed_addr constant [19 x i8] c"stm32_rproc_driver\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 905, i32 31 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 909, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"stm32_rproc_match\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 650, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"stm32_rproc_pm_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 902, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant [13 x i8] c"st_rproc_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 635, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 824, i32 21 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 826, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 222, i32 36 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 226, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 231, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 237, i32 29 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 108, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 121, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 124, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 138, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 455, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 416, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 498, i32 37 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 500, i32 49 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 502, i32 5 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 512, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 521, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 533, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 206, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 482, i32 48 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 484, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 555, i32 46 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 557, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 270, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 604, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 618, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 579, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 584, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 689, i32 34 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 696, i32 11 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 700, i32 33 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 705, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 711, i32 10 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 718, i32 35 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 720, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 726, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 731, i32 35 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 734, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 738, i32 35 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 740, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 742, i32 41 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 748, i32 35 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 754, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 761, i32 35 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 765, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 156, i32 44 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 159, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 175, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 184, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant [17 x i8] c"stm32_rproc_mbox\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 315, i32 32 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 375, i32 12 }
@___asan_gen_.414 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 379, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 383, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.433 = private constant [36 x i8] c"../drivers/remoteproc/stm32_rproc.c\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 291, i32 3 }
@llvm.compiler.used = appending global [146 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_stm32_rproc_driver_exit, ptr @__initcall__kmod_stm32_rproc__240_914_stm32_rproc_driver_init6, ptr @stm32_rproc_da_to_pa._entry, ptr @stm32_rproc_da_to_pa._entry_ptr, ptr @stm32_rproc_detach._entry, ptr @stm32_rproc_detach._entry_ptr, ptr @stm32_rproc_driver_exit, ptr @stm32_rproc_get_loaded_rsc_table._entry, ptr @stm32_rproc_get_loaded_rsc_table._entry.52, ptr @stm32_rproc_get_loaded_rsc_table._entry_ptr, ptr @stm32_rproc_get_loaded_rsc_table._entry_ptr.54, ptr @stm32_rproc_kick._entry, ptr @stm32_rproc_kick._entry_ptr, ptr @stm32_rproc_mbox_idx._entry, ptr @stm32_rproc_mbox_idx._entry_ptr, ptr @stm32_rproc_mem_alloc._entry, ptr @stm32_rproc_mem_alloc._entry_ptr, ptr @stm32_rproc_of_memory_translations._entry, ptr @stm32_rproc_of_memory_translations._entry.92, ptr @stm32_rproc_of_memory_translations._entry_ptr, ptr @stm32_rproc_of_memory_translations._entry_ptr.94, ptr @stm32_rproc_parse_dt._entry, ptr @stm32_rproc_parse_dt._entry.66, ptr @stm32_rproc_parse_dt._entry.69, ptr @stm32_rproc_parse_dt._entry.73, ptr @stm32_rproc_parse_dt._entry.77, ptr @stm32_rproc_parse_dt._entry.82, ptr @stm32_rproc_parse_dt._entry.86, ptr @stm32_rproc_parse_dt._entry_ptr, ptr @stm32_rproc_parse_dt._entry_ptr.68, ptr @stm32_rproc_parse_dt._entry_ptr.71, ptr @stm32_rproc_parse_dt._entry_ptr.75, ptr @stm32_rproc_parse_dt._entry_ptr.79, ptr @stm32_rproc_parse_dt._entry_ptr.84, ptr @stm32_rproc_parse_dt._entry_ptr.88, ptr @stm32_rproc_parse_fw._entry, ptr @stm32_rproc_parse_fw._entry_ptr, ptr @stm32_rproc_prepare._entry, ptr @stm32_rproc_prepare._entry.10, ptr @stm32_rproc_prepare._entry_ptr, ptr @stm32_rproc_prepare._entry_ptr.12, ptr @stm32_rproc_probe._entry, ptr @stm32_rproc_probe._entry_ptr, ptr @stm32_rproc_request_mbox._entry, ptr @stm32_rproc_request_mbox._entry_ptr, ptr @stm32_rproc_set_hold_boot._entry, ptr @stm32_rproc_set_hold_boot._entry_ptr, ptr @stm32_rproc_start._entry, ptr @stm32_rproc_start._entry_ptr, ptr @stm32_rproc_stop._entry, ptr @stm32_rproc_stop._entry.31, ptr @stm32_rproc_stop._entry.34, ptr @stm32_rproc_stop._entry.37, ptr @stm32_rproc_stop._entry_ptr, ptr @stm32_rproc_stop._entry_ptr.33, ptr @stm32_rproc_stop._entry_ptr.36, ptr @stm32_rproc_stop._entry_ptr.39, ptr @stm32_rproc_driver, ptr @.str, ptr @stm32_rproc_match, ptr @stm32_rproc_pm_ops, ptr @st_rproc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @stm32_rproc_mbox, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @stm32_rproc_request_mbox.__key, ptr @.str.99, ptr @.str.100, ptr @.str.101], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rproc_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_prepare._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_mem_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_set_hold_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_stop._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_stop._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_stop._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_mbox_idx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_kick._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_parse_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_get_loaded_rsc_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_get_loaded_rsc_table._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_da_to_pa._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_parse_dt._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_parse_dt._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_parse_dt._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_parse_dt._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_parse_dt._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_parse_dt._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_of_memory_translations._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_of_memory_translations._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_mbox to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_request_mbox._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rproc_request_mbox.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rproc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_rproc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_rproc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_rproc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rproc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %tz.i = alloca %struct.stm32_syscon, align 4
  %tzen.i = alloca i32, align 4
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #8
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %state, align 4, !annotation !224
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %3 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call2 = tail call ptr @rproc_alloc(ptr noundef %dev1, ptr noundef %5, ptr noundef nonnull @st_rproc_ops, ptr noundef null, i32 noundef 444) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.rproc, ptr %call2, i32 0, i32 4
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %call6 = tail call i32 @rproc_coredump_set_elf_info(ptr noundef nonnull %call2, i8 noundef zeroext 1, i16 noundef zeroext 0) #8
  %auto_boot = getelementptr inbounds %struct.rproc, ptr %call2, i32 0, i32 30
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tz.i) #8
  %10 = getelementptr inbounds %struct.stm32_syscon, ptr %tz.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !224
  %12 = getelementptr inbounds %struct.stm32_syscon, ptr %tz.i, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tzen.i) #8
  %14 = ptrtoint ptr %tzen.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %tzen.i, align 4, !annotation !224
  %call.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -517
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef -517, ptr noundef nonnull @.str.58) #8
  br label %stm32_rproc_parse_dt.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp sgt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.end15.i_crit_edge

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then4.i:                                       ; preds = %if.end.i
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then4.i.dev_name.exit.i_crit_edge

if.then4.i.dev_name.exit.i_crit_edge:             ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then4.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %if.then4.i.dev_name.exit.i_crit_edge ]
  %call.i.i79 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call.i, ptr noundef nonnull @stm32_rproc_wdg, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i.i, ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79)
  %tobool.not.i = icmp eq i32 %call.i.i79, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.then7.i

if.then7.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call.i.i79, ptr noundef nonnull @.str.59) #8
  br label %stm32_rproc_parse_dt.exit

if.end9.i:                                        ; preds = %dev_name.exit.i
  %wdg_irq.i = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 5
  %19 = ptrtoint ptr %wdg_irq.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i, ptr %wdg_irq.i, align 4
  %call.i123.i = tail call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.60, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i123.i, null
  br i1 %tobool.i.not.i, label %if.end9.i.do.end.i_crit_edge, label %if.then11.i

if.end9.i.do.end.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = tail call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext true) #8
  %call13.i = tail call i32 @dev_pm_set_wake_irq(ptr noundef %dev1, i32 noundef %call.i) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then11.i, %if.end9.i.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.61) #11
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end.i, %if.end.i.if.end15.i_crit_edge
  %call.i.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i.i, ptr %7, align 4
  %cmp.i.i80 = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i80, label %if.then19.i, label %if.end23.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call.i.i.i to i32
  %call22.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %21, ptr noundef nonnull @.str.64) #8
  br label %stm32_rproc_parse_dt.exit

if.end23.i:                                       ; preds = %if.end15.i
  %call.i124.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %9, ptr noundef nonnull @.str.65) #8
  %22 = ptrtoint ptr %tz.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i124.i, ptr %tz.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i124.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i81, label %if.end.i126.i

if.then.i.i81:                                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call.i124.i to i32
  %24 = ptrtoint ptr %tz.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %tz.i, align 4
  br label %stm32_rproc_get_syscon.exit.i

if.end.i126.i:                                    ; preds = %if.end23.i
  %call6.i.i = call i32 @of_property_read_u32_index(ptr noundef %9, ptr noundef nonnull @.str.65, i32 noundef 1, ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i125.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i125.i, label %if.end8.i.i, label %if.end.i126.i.stm32_rproc_parse_dt.exit.thread95_crit_edge

if.end.i126.i.stm32_rproc_parse_dt.exit.thread95_crit_edge: ; preds = %if.end.i126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_parse_dt.exit.thread95

if.end8.i.i:                                      ; preds = %if.end.i126.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i.i = call i32 @of_property_read_u32_index(ptr noundef %9, ptr noundef nonnull @.str.65, i32 noundef 2, ptr noundef %12) #8
  br label %stm32_rproc_get_syscon.exit.i

stm32_rproc_get_syscon.exit.i:                    ; preds = %if.end8.i.i, %if.then.i.i81
  %err.0.i.i = phi i32 [ %23, %if.then.i.i81 ], [ %call9.i.i, %if.end8.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool25.not.i = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool25.not.i, label %if.end30.i, label %stm32_rproc_get_syscon.exit.i.stm32_rproc_parse_dt.exit.thread95_crit_edge

stm32_rproc_get_syscon.exit.i.stm32_rproc_parse_dt.exit.thread95_crit_edge: ; preds = %stm32_rproc_get_syscon.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_parse_dt.exit.thread95

if.end30.i:                                       ; preds = %stm32_rproc_get_syscon.exit.i
  %25 = ptrtoint ptr %tz.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tz.i, align 4
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %10, align 4
  %call31.i = call i32 @regmap_read(ptr noundef %26, i32 noundef %28, ptr noundef nonnull %tzen.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end37.i, label %if.end30.i.stm32_rproc_parse_dt.exit.thread95_crit_edge

if.end30.i.stm32_rproc_parse_dt.exit.thread95_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_parse_dt.exit.thread95

if.end37.i:                                       ; preds = %if.end30.i
  %29 = ptrtoint ptr %tzen.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tzen.i, align 4
  %31 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %12, align 4
  %and.i = and i32 %32, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool38.i = icmp ne i32 %and.i, 0
  %secured_soc.i = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 10
  %frombool.i = zext i1 %tobool38.i to i8
  %33 = ptrtoint ptr %secured_soc.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool.i, ptr %secured_soc.i, align 4
  %hold_boot.i = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 1
  %call.i127.i = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %9, ptr noundef nonnull @.str.72) #8
  %34 = ptrtoint ptr %hold_boot.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i127.i, ptr %hold_boot.i, align 4
  %cmp.i.i128.i = icmp ugt ptr %call.i127.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i128.i, label %if.then.i129.i, label %if.end.i133.i

if.then.i129.i:                                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %call.i127.i to i32
  %36 = ptrtoint ptr %hold_boot.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %hold_boot.i, align 4
  br label %stm32_rproc_get_syscon.exit138.i

if.end.i133.i:                                    ; preds = %if.end37.i
  %reg.i130.i = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 1, i32 1
  %call6.i131.i = call i32 @of_property_read_u32_index(ptr noundef %9, ptr noundef nonnull @.str.72, i32 noundef 1, ptr noundef %reg.i130.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i131.i)
  %tobool.not.i132.i = icmp eq i32 %call6.i131.i, 0
  br i1 %tobool.not.i132.i, label %if.end8.i136.i, label %if.end.i133.i.stm32_rproc_parse_dt.exit.thread95_crit_edge

if.end.i133.i.stm32_rproc_parse_dt.exit.thread95_crit_edge: ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_parse_dt.exit.thread95

if.end8.i136.i:                                   ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #10
  %mask.i134.i = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 1, i32 2
  %call9.i135.i = call i32 @of_property_read_u32_index(ptr noundef %9, ptr noundef nonnull @.str.72, i32 noundef 2, ptr noundef %mask.i134.i) #8
  br label %stm32_rproc_get_syscon.exit138.i

stm32_rproc_get_syscon.exit138.i:                 ; preds = %if.end8.i136.i, %if.then.i129.i
  %err.0.i137.i = phi i32 [ %35, %if.then.i129.i ], [ %call9.i135.i, %if.end8.i136.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i137.i)
  %tobool40.not.i = icmp eq i32 %err.0.i137.i, 0
  br i1 %tobool40.not.i, label %if.end45.i, label %stm32_rproc_get_syscon.exit138.i.stm32_rproc_parse_dt.exit.thread95_crit_edge

stm32_rproc_get_syscon.exit138.i.stm32_rproc_parse_dt.exit.thread95_crit_edge: ; preds = %stm32_rproc_get_syscon.exit138.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_parse_dt.exit.thread95

if.end45.i:                                       ; preds = %stm32_rproc_get_syscon.exit138.i
  %pdds.i = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 2
  %call.i139.i = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %9, ptr noundef nonnull @.str.76) #8
  %37 = ptrtoint ptr %pdds.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i139.i, ptr %pdds.i, align 4
  %cmp.i.i140.i = icmp ugt ptr %call.i139.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i140.i, label %if.then.i141.i, label %if.end.i145.i

if.then.i141.i:                                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %pdds.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %pdds.i, align 4
  br label %do.end51.i

if.end.i145.i:                                    ; preds = %if.end45.i
  %reg.i142.i = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 2, i32 1
  %call6.i143.i = call i32 @of_property_read_u32_index(ptr noundef %9, ptr noundef nonnull @.str.76, i32 noundef 1, ptr noundef %reg.i142.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i143.i)
  %tobool.not.i144.i = icmp eq i32 %call6.i143.i, 0
  br i1 %tobool.not.i144.i, label %if.end8.i148.i, label %if.end.i145.i.do.end51.i_crit_edge

if.end.i145.i.do.end51.i_crit_edge:               ; preds = %if.end.i145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51.i

if.end8.i148.i:                                   ; preds = %if.end.i145.i
  %mask.i146.i = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 2, i32 2
  %call9.i147.i = call i32 @of_property_read_u32_index(ptr noundef %9, ptr noundef nonnull @.str.76, i32 noundef 2, ptr noundef %mask.i146.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i147.i)
  %phi.cmp190.i = icmp eq i32 %call9.i147.i, 0
  br i1 %phi.cmp190.i, label %if.end8.i148.i.if.end52.i_crit_edge, label %if.end8.i148.i.do.end51.i_crit_edge

if.end8.i148.i.do.end51.i_crit_edge:              ; preds = %if.end8.i148.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51.i

if.end8.i148.i.if.end52.i_crit_edge:              ; preds = %if.end8.i148.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i

do.end51.i:                                       ; preds = %if.end8.i148.i.do.end51.i_crit_edge, %if.end.i145.i.do.end51.i_crit_edge, %if.then.i141.i
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.78) #11
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end51.i, %if.end8.i148.i.if.end52.i_crit_edge
  %call.i151.i = call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.80, ptr noundef null) #8
  %tobool.i152.i = icmp ne ptr %call.i151.i, null
  %frombool54.i = zext i1 %tobool.i152.i to i8
  %39 = ptrtoint ptr %auto_boot to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool54.i, ptr %auto_boot, align 1
  %m4_state.i = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 3
  %call.i153.i = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %9, ptr noundef nonnull @.str.81) #8
  %40 = ptrtoint ptr %m4_state.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i153.i, ptr %m4_state.i, align 4
  %cmp.i.i154.i = icmp ugt ptr %call.i153.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i154.i, label %if.end52.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge, label %if.end.i159.i

if.end52.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_parse_dt.exit.thread.sink.split.sink.split

if.end.i159.i:                                    ; preds = %if.end52.i
  %reg.i156.i = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 3, i32 1
  %call6.i157.i = call i32 @of_property_read_u32_index(ptr noundef %9, ptr noundef nonnull @.str.81, i32 noundef 1, ptr noundef %reg.i156.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i157.i)
  %tobool.not.i158.i = icmp eq i32 %call6.i157.i, 0
  br i1 %tobool.not.i158.i, label %if.end8.i162.i, label %if.end.i159.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge

if.end.i159.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge: ; preds = %if.end.i159.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_parse_dt.exit.thread.sink.split.sink.split

if.end8.i162.i:                                   ; preds = %if.end.i159.i
  %mask.i160.i = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 3, i32 2
  %call9.i161.i = call i32 @of_property_read_u32_index(ptr noundef %9, ptr noundef nonnull @.str.81, i32 noundef 2, ptr noundef %mask.i160.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i161.i)
  %phi.cmp.i = icmp eq i32 %call9.i161.i, 0
  br i1 %phi.cmp.i, label %if.end63.i, label %if.end8.i162.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge

if.end8.i162.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge: ; preds = %if.end8.i162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_parse_dt.exit.thread.sink.split.sink.split

if.end63.i:                                       ; preds = %if.end8.i162.i
  %rsctbl.i = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 4
  %call.i165.i = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %9, ptr noundef nonnull @.str.85) #8
  %41 = ptrtoint ptr %rsctbl.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i165.i, ptr %rsctbl.i, align 4
  %cmp.i.i166.i = icmp ugt ptr %call.i165.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i166.i, label %if.end63.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge, label %if.end.i171.i

if.end63.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_parse_dt.exit.thread.sink.split.sink.split

if.end.i171.i:                                    ; preds = %if.end63.i
  %reg.i168.i = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 4, i32 1
  %call6.i169.i = call i32 @of_property_read_u32_index(ptr noundef %9, ptr noundef nonnull @.str.85, i32 noundef 1, ptr noundef %reg.i168.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i169.i)
  %tobool.not.i170.i = icmp eq i32 %call6.i169.i, 0
  br i1 %tobool.not.i170.i, label %if.end8.i174.i, label %if.end.i171.i.stm32_rproc_parse_dt.exit.thread.sink.split_crit_edge

if.end.i171.i.stm32_rproc_parse_dt.exit.thread.sink.split_crit_edge: ; preds = %if.end.i171.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_parse_dt.exit.thread.sink.split

if.end8.i174.i:                                   ; preds = %if.end.i171.i
  %mask.i172.i = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 4, i32 2
  %call9.i173.i = call i32 @of_property_read_u32_index(ptr noundef %9, ptr noundef nonnull @.str.85, i32 noundef 2, ptr noundef %mask.i172.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i173.i)
  %phi.cmp189.i = icmp eq i32 %call9.i173.i, 0
  br i1 %phi.cmp189.i, label %if.end8.i174.i.stm32_rproc_parse_dt.exit.thread_crit_edge, label %if.end8.i174.i.stm32_rproc_parse_dt.exit.thread.sink.split_crit_edge

if.end8.i174.i.stm32_rproc_parse_dt.exit.thread.sink.split_crit_edge: ; preds = %if.end8.i174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_parse_dt.exit.thread.sink.split

if.end8.i174.i.stm32_rproc_parse_dt.exit.thread_crit_edge: ; preds = %if.end8.i174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_parse_dt.exit.thread

stm32_rproc_parse_dt.exit.thread.sink.split.sink.split: ; preds = %if.end63.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge, %if.end8.i162.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge, %if.end.i159.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge, %if.end52.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge
  %rsctbl.i.sink = phi ptr [ %m4_state.i, %if.end8.i162.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge ], [ %m4_state.i, %if.end.i159.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge ], [ %m4_state.i, %if.end52.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge ], [ %rsctbl.i, %if.end63.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge ]
  %.str.83.sink.ph = phi ptr [ @.str.83, %if.end8.i162.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge ], [ @.str.83, %if.end.i159.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge ], [ @.str.83, %if.end52.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge ], [ @.str.87, %if.end63.i.stm32_rproc_parse_dt.exit.thread.sink.split.sink.split_crit_edge ]
  %42 = ptrtoint ptr %rsctbl.i.sink to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %rsctbl.i.sink, align 4
  br label %stm32_rproc_parse_dt.exit.thread.sink.split

stm32_rproc_parse_dt.exit.thread.sink.split:      ; preds = %stm32_rproc_parse_dt.exit.thread.sink.split.sink.split, %if.end8.i174.i.stm32_rproc_parse_dt.exit.thread.sink.split_crit_edge, %if.end.i171.i.stm32_rproc_parse_dt.exit.thread.sink.split_crit_edge
  %.str.83.sink = phi ptr [ @.str.87, %if.end8.i174.i.stm32_rproc_parse_dt.exit.thread.sink.split_crit_edge ], [ @.str.87, %if.end.i171.i.stm32_rproc_parse_dt.exit.thread.sink.split_crit_edge ], [ %.str.83.sink.ph, %stm32_rproc_parse_dt.exit.thread.sink.split.sink.split ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull %.str.83.sink) #11
  br label %stm32_rproc_parse_dt.exit.thread

stm32_rproc_parse_dt.exit.thread:                 ; preds = %stm32_rproc_parse_dt.exit.thread.sink.split, %if.end8.i174.i.stm32_rproc_parse_dt.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tzen.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tz.i) #8
  br label %if.end10

stm32_rproc_parse_dt.exit.thread95:               ; preds = %stm32_rproc_get_syscon.exit138.i.stm32_rproc_parse_dt.exit.thread95_crit_edge, %if.end.i133.i.stm32_rproc_parse_dt.exit.thread95_crit_edge, %if.end30.i.stm32_rproc_parse_dt.exit.thread95_crit_edge, %stm32_rproc_get_syscon.exit.i.stm32_rproc_parse_dt.exit.thread95_crit_edge, %if.end.i126.i.stm32_rproc_parse_dt.exit.thread95_crit_edge
  %.str.67.sink = phi ptr [ @.str.67, %stm32_rproc_get_syscon.exit.i.stm32_rproc_parse_dt.exit.thread95_crit_edge ], [ @.str.67, %if.end.i126.i.stm32_rproc_parse_dt.exit.thread95_crit_edge ], [ @.str.70, %if.end30.i.stm32_rproc_parse_dt.exit.thread95_crit_edge ], [ @.str.74, %stm32_rproc_get_syscon.exit138.i.stm32_rproc_parse_dt.exit.thread95_crit_edge ], [ @.str.74, %if.end.i133.i.stm32_rproc_parse_dt.exit.thread95_crit_edge ]
  %retval.0.i.ph = phi i32 [ %err.0.i.i, %stm32_rproc_get_syscon.exit.i.stm32_rproc_parse_dt.exit.thread95_crit_edge ], [ %call6.i.i, %if.end.i126.i.stm32_rproc_parse_dt.exit.thread95_crit_edge ], [ %call31.i, %if.end30.i.stm32_rproc_parse_dt.exit.thread95_crit_edge ], [ %err.0.i137.i, %stm32_rproc_get_syscon.exit138.i.stm32_rproc_parse_dt.exit.thread95_crit_edge ], [ %call6.i131.i, %if.end.i133.i.stm32_rproc_parse_dt.exit.thread95_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.67.sink) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tzen.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tz.i) #8
  br label %free_rproc

stm32_rproc_parse_dt.exit:                        ; preds = %if.then19.i, %if.then7.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call8.i, %if.then7.i ], [ %call22.i, %if.then19.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tzen.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tz.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool8.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool8.not, label %stm32_rproc_parse_dt.exit.if.end10_crit_edge, label %stm32_rproc_parse_dt.exit.free_rproc_crit_edge

stm32_rproc_parse_dt.exit.free_rproc_crit_edge:   ; preds = %stm32_rproc_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

stm32_rproc_parse_dt.exit.if.end10_crit_edge:     ; preds = %stm32_rproc_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %stm32_rproc_parse_dt.exit.if.end10_crit_edge, %stm32_rproc_parse_dt.exit.thread
  %call11 = call fastcc i32 @stm32_rproc_of_memory_translations(ptr noundef %pdev, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.free_rproc_crit_edge

if.end10.free_rproc_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

if.end14:                                         ; preds = %if.end10
  %m4_state.i82 = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 3
  %43 = ptrtoint ptr %m4_state.i82 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %m4_state.i82, align 4
  %tobool.not.i83 = icmp eq ptr %44, null
  br i1 %tobool.not.i83, label %if.end18.thread, label %stm32_rproc_get_m4_status.exit

if.end18.thread:                                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %state, align 4
  br label %if.end21

stm32_rproc_get_m4_status.exit:                   ; preds = %if.end14
  %reg.i = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reg.i, align 4
  %call.i85 = call i32 @regmap_read(ptr noundef nonnull %44, i32 noundef %47, ptr noundef nonnull %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool16.not = icmp eq i32 %call.i85, 0
  br i1 %tobool16.not, label %if.end18, label %stm32_rproc_get_m4_status.exit.free_rproc_crit_edge

stm32_rproc_get_m4_status.exit.free_rproc_crit_edge: ; preds = %stm32_rproc_get_m4_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

if.end18:                                         ; preds = %stm32_rproc_get_m4_status.exit
  %48 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp = icmp eq i32 %.pr, 2
  br i1 %cmp, label %if.then19, label %if.end18.if.end21_crit_edge

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %state20 = getelementptr inbounds %struct.rproc, ptr %call2, i32 0, i32 8
  %49 = ptrtoint ptr %state20 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 6, ptr %state20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end18.if.end21_crit_edge, %if.end18.thread
  %has_iommu = getelementptr inbounds %struct.rproc, ptr %call2, i32 0, i32 29
  %50 = ptrtoint ptr %has_iommu to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %has_iommu, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i88 = icmp eq ptr %52, null
  br i1 %tobool.not.i88, label %if.end.i89, label %if.end21.dev_name.exit_crit_edge

if.end21.dev_name.exit_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i89:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i89, %if.end21.dev_name.exit_crit_edge
  %retval.0.i90 = phi ptr [ %54, %if.end.i89 ], [ %52, %if.end21.dev_name.exit_crit_edge ]
  %call23 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 262152, i32 noundef 1, ptr noundef %retval.0.i90) #8
  %workqueue = getelementptr inbounds %struct.stm32_rproc, ptr %7, i32 0, i32 9
  %55 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call23, ptr %workqueue, align 4
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %do.end, label %if.end27

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %free_resources

if.end27:                                         ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %call28 = call fastcc i32 @stm32_rproc_request_mbox(ptr noundef nonnull %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.free_wkq_crit_edge

if.end27.free_wkq_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_wkq

if.end31:                                         ; preds = %if.end27
  %call32 = call i32 @rproc_add(ptr noundef nonnull %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %free_mb

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

free_mb:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @stm32_rproc_free_mbox(ptr noundef nonnull %call2)
  br label %free_wkq

free_wkq:                                         ; preds = %free_mb, %if.end27.free_wkq_crit_edge
  %ret.0 = phi i32 [ %call28, %if.end27.free_wkq_crit_edge ], [ %call32, %free_mb ]
  %57 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %workqueue, align 4
  call void @destroy_workqueue(ptr noundef %58) #8
  br label %free_resources

free_resources:                                   ; preds = %free_wkq, %do.end
  %ret.1 = phi i32 [ %ret.0, %free_wkq ], [ -12, %do.end ]
  call void @rproc_resource_cleanup(ptr noundef nonnull %call2) #8
  br label %free_rproc

free_rproc:                                       ; preds = %free_resources, %stm32_rproc_get_m4_status.exit.free_rproc_crit_edge, %if.end10.free_rproc_crit_edge, %stm32_rproc_parse_dt.exit.free_rproc_crit_edge, %stm32_rproc_parse_dt.exit.thread95
  %ret.2 = phi i32 [ %retval.0.i, %stm32_rproc_parse_dt.exit.free_rproc_crit_edge ], [ %call11, %if.end10.free_rproc_crit_edge ], [ %call.i85, %stm32_rproc_get_m4_status.exit.free_rproc_crit_edge ], [ %ret.1, %free_resources ], [ %retval.0.i.ph, %stm32_rproc_parse_dt.exit.thread95 ]
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %59 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i91 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i91, label %free_rproc.if.end40_crit_edge, label %device_may_wakeup.exit

free_rproc.if.end40_crit_edge:                    ; preds = %free_rproc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

device_may_wakeup.exit:                           ; preds = %free_rproc
  %wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 6
  %60 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %61, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end40_crit_edge, label %if.then38

device_may_wakeup.exit.if.end40_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then38:                                        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @dev_pm_clear_wake_irq(ptr noundef %dev1) #8
  %call39 = call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext false) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %device_may_wakeup.exit.if.end40_crit_edge, %free_rproc.if.end40_crit_edge
  call void @rproc_free(ptr noundef nonnull %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end31.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %if.end40 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rproc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %power = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %power, i32 noundef 4) #8
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rproc_shutdown(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @rproc_del(ptr noundef %1) #8
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %chan.i = getelementptr %struct.stm32_rproc, ptr %7, i32 0, i32 8, i32 0, i32 1
  %8 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mbox_free_channel(ptr noundef nonnull %9) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %10 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %chan.i, align 4
  %chan.1.i = getelementptr %struct.stm32_rproc, ptr %7, i32 0, i32 8, i32 1, i32 1
  %11 = ptrtoint ptr %chan.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %12, null
  br i1 %tobool.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mbox_free_channel(ptr noundef nonnull %12) #8
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i.if.end.1.i_crit_edge
  %13 = ptrtoint ptr %chan.1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %chan.1.i, align 4
  %chan.2.i = getelementptr %struct.stm32_rproc, ptr %7, i32 0, i32 8, i32 2, i32 1
  %14 = ptrtoint ptr %chan.2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %15, null
  br i1 %tobool.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %if.then.2.i

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mbox_free_channel(ptr noundef nonnull %15) #8
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %16 = ptrtoint ptr %chan.2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %chan.2.i, align 4
  %chan.3.i = getelementptr %struct.stm32_rproc, ptr %7, i32 0, i32 8, i32 3, i32 1
  %17 = ptrtoint ptr %chan.3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %18, null
  br i1 %tobool.not.3.i, label %if.end.2.i.stm32_rproc_free_mbox.exit_crit_edge, label %if.then.3.i

if.end.2.i.stm32_rproc_free_mbox.exit_crit_edge:  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_free_mbox.exit

if.then.3.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mbox_free_channel(ptr noundef nonnull %18) #8
  br label %stm32_rproc_free_mbox.exit

stm32_rproc_free_mbox.exit:                       ; preds = %if.then.3.i, %if.end.2.i.stm32_rproc_free_mbox.exit_crit_edge
  %19 = ptrtoint ptr %chan.3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %chan.3.i, align 4
  %workqueue = getelementptr inbounds %struct.stm32_rproc, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %21) #8
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %22 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i16 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i16, label %stm32_rproc_free_mbox.exit.if.end7_crit_edge, label %device_may_wakeup.exit

stm32_rproc_free_mbox.exit.if.end7_crit_edge:     ; preds = %stm32_rproc_free_mbox.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

device_may_wakeup.exit:                           ; preds = %stm32_rproc_free_mbox.exit
  %wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 6
  %23 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %24, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end7_crit_edge, label %if.then5

device_may_wakeup.exit.if.end7_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev1) #8
  %call6 = tail call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext false) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %device_may_wakeup.exit.if.end7_crit_edge, %stm32_rproc_free_mbox.exit.if.end7_crit_edge
  tail call void @rproc_free(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_coredump_set_elf_info(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_rproc_of_memory_translations(ptr noundef %pdev, ptr nocapture noundef writeonly %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent2, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_property_count_elems_of_size(ptr noundef %3, ptr noundef nonnull @.str.89, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 36) #8
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !225

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %6 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %6, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end7.i.i

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %devm_kcalloc.exit
  %7 = mul nuw nsw i32 %call, 12
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #12
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end9

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end7.i.i
  %div85 = mul nuw nsw i32 %call, 3
  %call.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.89, ptr noundef nonnull %call8.i.i, i32 noundef %div85, i32 noundef 0) #8
  %8 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool11.not = icmp sgt i32 %call.i, -1
  br i1 %tobool11.not, label %if.end9.for.body_crit_edge, label %do.end15

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.93, i32 noundef %8) #11
  br label %free_mem

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i.095 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.stm32_rproc_mem_ranges, ptr %call8.i.i, i32 %i.095
  %bus_addr = getelementptr %struct.stm32_rproc_mem_ranges, ptr %call8.i.i, i32 %i.095, i32 1
  %9 = ptrtoint ptr %bus_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bus_addr, align 4
  %bus_addr19 = getelementptr %struct.stm32_rproc_mem, ptr %call5.i.i, i32 %i.095, i32 2
  %11 = ptrtoint ptr %bus_addr19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bus_addr19, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %dev_addr22 = getelementptr %struct.stm32_rproc_mem, ptr %call5.i.i, i32 %i.095, i32 3
  %14 = ptrtoint ptr %dev_addr22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dev_addr22, align 4
  %size = getelementptr %struct.stm32_rproc_mem_ranges, ptr %call8.i.i, i32 %i.095, i32 2
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %size25 = getelementptr %struct.stm32_rproc_mem, ptr %call5.i.i, i32 %i.095, i32 4
  %17 = ptrtoint ptr %size25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %size25, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_rproc_of_memory_translations.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_rproc_of_memory_translations, %if.then31)) #8
          to label %for.inc [label %if.then31], !srcloc !226

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev_addr22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_addr22, align 4
  %20 = ptrtoint ptr %size25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_rproc_of_memory_translations.__UNIQUE_ID_ddebug237, ptr noundef %dev1, ptr noundef nonnull @.str.95, i32 noundef %i.095, i32 noundef %19, ptr noundef %bus_addr19, i32 noundef %21) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %for.body
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %rmems = getelementptr inbounds %struct.stm32_rproc, ptr %ddata, i32 0, i32 7
  %22 = ptrtoint ptr %rmems to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i.i, ptr %rmems, align 4
  %nb_rmems = getelementptr inbounds %struct.stm32_rproc, ptr %ddata, i32 0, i32 6
  %23 = ptrtoint ptr %nb_rmems to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call, ptr %nb_rmems, align 4
  br label %free_mem

free_mem:                                         ; preds = %for.end, %do.end15
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_mem, %if.end7.i.i.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %8, %free_mem ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_rproc_request_mbox(ptr noundef %rproc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  %mb = getelementptr inbounds %struct.stm32_rproc, ptr %1, i32 0, i32 8
  %2 = call ptr @memcpy(ptr %mb, ptr @stm32_rproc_mbox, i32 368)
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0112 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 %i.0112
  %client = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 %i.0112, i32 2
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %5 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %client, align 4
  %call = tail call ptr @mbox_request_channel_byname(ptr noundef %client, ptr noundef %arrayidx) #8
  %chan = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 %i.0112, i32 1
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %chan, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %for.body.if.end29_crit_edge

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %for.body
  %cmp18 = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  br i1 %cmp18, label %if.then19, label %do.end

if.then19:                                        ; preds = %if.then
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %call25 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %8, i32 noundef -517, ptr noundef nonnull @.str.96, ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0112)
  %cmp54116.not = icmp eq i32 %i.0112, 0
  br i1 %cmp54116.not, label %if.then19.cleanup_crit_edge, label %for.body55

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.97, ptr noundef %arrayidx) #11
  %9 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %chan, align 4
  br label %if.end29

if.end29:                                         ; preds = %do.end, %for.body.if.end29_crit_edge
  %vq_id = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 %i.0112, i32 4
  %10 = ptrtoint ptr %vq_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vq_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp32 = icmp sgt i32 %11, -1
  br i1 %cmp32, label %do.body34, label %if.end29.for.inc_crit_edge

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %vq_work = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 %i.0112, i32 3
  tail call void @__init_work(ptr noundef %vq_work, i32 noundef 0) #8
  %12 = ptrtoint ptr %vq_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %vq_work, align 4
  %lockdep_map = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 %i.0112, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.99, ptr noundef nonnull @stm32_rproc_request_mbox.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry46 = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 %i.0112, i32 3, i32 1
  %13 = ptrtoint ptr %entry46 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry46, ptr %entry46, align 4
  %prev.i = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 %i.0112, i32 3, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry46, ptr %prev.i, align 4
  %func = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 %i.0112, i32 3, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @stm32_rproc_mb_vq_work, ptr %func, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.body34, %if.end29.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0112, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body55:                                       ; preds = %if.then19
  %j.0117 = add nsw i32 %i.0112, -1
  %chan58 = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 %j.0117, i32 1
  %16 = ptrtoint ptr %chan58 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan58, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %for.body55.for.inc64_crit_edge, label %if.then59

for.body55.for.inc64_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc64

if.then59:                                        ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mbox_free_channel(ptr noundef nonnull %17) #8
  br label %for.inc64

for.inc64:                                        ; preds = %if.then59, %for.body55.for.inc64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0112)
  %cmp54 = icmp ugt i32 %i.0112, 1
  br i1 %cmp54, label %for.body55.1, label %for.inc64.cleanup_crit_edge

for.inc64.cleanup_crit_edge:                      ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body55.1:                                     ; preds = %for.inc64
  %j.0117.1 = add nsw i32 %i.0112, -2
  %chan58.1 = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 %j.0117.1, i32 1
  %18 = ptrtoint ptr %chan58.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan58.1, align 4
  %tobool.not.1 = icmp eq ptr %19, null
  br i1 %tobool.not.1, label %for.body55.1.for.inc64.1_crit_edge, label %if.then59.1

for.body55.1.for.inc64.1_crit_edge:               ; preds = %for.body55.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc64.1

if.then59.1:                                      ; preds = %for.body55.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mbox_free_channel(ptr noundef nonnull %19) #8
  br label %for.inc64.1

for.inc64.1:                                      ; preds = %if.then59.1, %for.body55.1.for.inc64.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0112)
  %cmp54.1 = icmp ugt i32 %i.0112, 2
  br i1 %cmp54.1, label %for.body55.2, label %for.inc64.1.cleanup_crit_edge

for.inc64.1.cleanup_crit_edge:                    ; preds = %for.inc64.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body55.2:                                     ; preds = %for.inc64.1
  %j.0117.2 = add nsw i32 %i.0112, -3
  %chan58.2 = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 %j.0117.2, i32 1
  %20 = ptrtoint ptr %chan58.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan58.2, align 4
  %tobool.not.2 = icmp eq ptr %21, null
  br i1 %tobool.not.2, label %for.body55.2.cleanup_crit_edge, label %if.then59.2

for.body55.2.cleanup_crit_edge:                   ; preds = %for.body55.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then59.2:                                      ; preds = %for.body55.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mbox_free_channel(ptr noundef nonnull %21) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then59.2, %for.body55.2.cleanup_crit_edge, %for.inc64.1.cleanup_crit_edge, %for.inc64.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.then19.cleanup_crit_edge
  %retval.0 = phi i32 [ -517, %if.then19.cleanup_crit_edge ], [ -517, %for.body55.2.cleanup_crit_edge ], [ -517, %if.then59.2 ], [ -517, %for.inc64.1.cleanup_crit_edge ], [ -517, %for.inc64.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_rproc_free_mbox(ptr nocapture noundef readonly %rproc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %chan = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 0, i32 1
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mbox_free_channel(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %chan, align 4
  %chan.1 = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 1, i32 1
  %5 = ptrtoint ptr %chan.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan.1, align 4
  %tobool.not.1 = icmp eq ptr %6, null
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mbox_free_channel(ptr noundef nonnull %6) #8
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %7 = ptrtoint ptr %chan.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %chan.1, align 4
  %chan.2 = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 2, i32 1
  %8 = ptrtoint ptr %chan.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan.2, align 4
  %tobool.not.2 = icmp eq ptr %9, null
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mbox_free_channel(ptr noundef nonnull %9) #8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %10 = ptrtoint ptr %chan.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %chan.2, align 4
  %chan.3 = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 3, i32 1
  %11 = ptrtoint ptr %chan.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan.3, align 4
  %tobool.not.3 = icmp eq ptr %12, null
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mbox_free_channel(ptr noundef nonnull %12) #8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %13 = ptrtoint ptr %chan.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %chan.3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_resource_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rproc_prepare(ptr noundef %rproc) #2 align 64 {
entry:
  %pa.addr.i = alloca i32, align 4
  %it = alloca %struct.of_phandle_iterator, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %it) #8
  %4 = call ptr @memset(ptr %it, i32 255, i32 36)
  %call = call i32 @of_phandle_iterator_init(ptr noundef nonnull %it, ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0) #8
  %call274 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %it) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %cmp75 = icmp eq i32 %call274, 0
  br i1 %cmp75, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %node = getelementptr inbounds %struct.of_phandle_iterator, ptr %it, i32 0, i32 8
  %priv.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end34.while.body_crit_edge, %while.body.lr.ph
  %index.076 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end34.while.body_crit_edge ]
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node, align 4
  %call3 = call ptr @of_reserved_mem_lookup(ptr noundef %6) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end:                                           ; preds = %while.body
  %base = getelementptr inbounds %struct.reserved_mem, ptr %call3, i32 0, i32 4
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa.addr.i)
  %9 = ptrtoint ptr %pa.addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %pa.addr.i, align 4
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 4
  %nb_rmems.i = getelementptr inbounds %struct.stm32_rproc, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %nb_rmems.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nb_rmems.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp25.not.i = icmp eq i32 %13, 0
  br i1 %cmp25.not.i, label %if.end.do.end9_crit_edge, label %for.body.lr.ph.i

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

for.body.lr.ph.i:                                 ; preds = %if.end
  %rmems.i = getelementptr inbounds %struct.stm32_rproc, ptr %11, i32 0, i32 7
  %14 = ptrtoint ptr %rmems.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmems.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %bus_addr.i = getelementptr %struct.stm32_rproc_mem, ptr %15, i32 %i.026.i, i32 2
  %16 = ptrtoint ptr %bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %17)
  %cmp1.i = icmp ult i32 %8, %17
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %size.i = getelementptr %struct.stm32_rproc_mem, ptr %15, i32 %i.026.i, i32 4
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %add.i = add i32 %19, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %8)
  %cmp3.not.i = icmp ugt i32 %add.i, %8
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sub.i = sub i32 %8, %17
  %dev_addr.i = getelementptr %struct.stm32_rproc_mem, ptr %15, i32 %i.026.i, i32 3
  %20 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dev_addr.i, align 4
  %add5.i = add i32 %21, %sub.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_rproc_pa_to_da.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_rproc_prepare, %if.then8.i)) #8
          to label %if.end11 [label %if.then8.i], !srcloc !226

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i32 %add5.i to i64
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_rproc_pa_to_da.__UNIQUE_ID_ddebug234, ptr noundef %23, ptr noundef nonnull @.str.16, ptr noundef nonnull %pa.addr.i, i64 noundef %conv.i) #8
  br label %if.end11

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.inc.i.do.end9_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.end9_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end9:                                          ; preds = %for.inc.i.do.end9_crit_edge, %if.end.do.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.addr.i)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %base) #11
  br label %cleanup

if.end11:                                         ; preds = %if.then8.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.addr.i)
  %24 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %node, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call13 = call i32 @strcmp(ptr noundef %27, ptr noundef nonnull dereferenceable(12) @.str.13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end31, label %if.then15

if.then15:                                        ; preds = %if.end11
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base, align 4
  %size = getelementptr inbounds %struct.reserved_mem, ptr %call3, i32 0, i32 5
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 4
  %call19 = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ...) @rproc_mem_entry_init(ptr noundef %1, ptr noundef null, i32 noundef %29, i32 noundef %31, i32 noundef %add5.i, ptr noundef nonnull @stm32_rproc_mem_alloc, ptr noundef nonnull @stm32_rproc_mem_release, ptr noundef %27) #8
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then15.cleanup_crit_edge, label %if.end31.thread65

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31.thread65:                                ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size, align 4
  %call24 = call i32 @rproc_coredump_add_segment(ptr noundef %rproc, i32 noundef %add5.i, i32 noundef %33) #8
  br label %if.end34

if.end31:                                         ; preds = %if.end11
  %size26 = getelementptr inbounds %struct.reserved_mem, ptr %call3, i32 0, i32 5
  %34 = ptrtoint ptr %size26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size26, align 4
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base, align 4
  %call30 = call ptr (ptr, i32, i32, i32, ptr, ...) @rproc_of_resm_mem_entry_init(ptr noundef %1, i32 noundef %index.076, i32 noundef %35, i32 noundef %37, ptr noundef %27) #8
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %if.end31.cleanup_crit_edge, label %if.end31.if.end34_crit_edge

if.end31.if.end34_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end31.if.end34_crit_edge, %if.end31.thread65
  %mem.068 = phi ptr [ %call19, %if.end31.thread65 ], [ %call30, %if.end31.if.end34_crit_edge ]
  call void @rproc_add_carveout(ptr noundef %rproc, ptr noundef nonnull %mem.068) #8
  %inc = add i32 %index.076, 1
  %call2 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %it) #8
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.end34.while.body_crit_edge, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup:                                          ; preds = %if.end34.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %do.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end9 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end31.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ -12, %if.then15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %it) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rproc_start(ptr noundef %rproc) #2 align 64 {
entry:
  %smc_res.i25 = alloca %struct.arm_smccc_res, align 4
  %smc_res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %traces.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 12
  %2 = ptrtoint ptr %traces.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn41.i = load ptr, ptr %traces.i, align 4
  %cmp.not42.i = icmp eq ptr %.pn41.i, %traces.i
  br i1 %cmp.not42.i, label %entry.stm32_rproc_add_coredump_trace.exit_crit_edge, label %for.body.lr.ph.i

entry.stm32_rproc_add_coredump_trace.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_add_coredump_trace.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %dump_segments.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 31
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc24.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn43.i = phi ptr [ %.pn41.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc24.i.for.body.i_crit_edge ]
  %da12.i = getelementptr i8, ptr %.pn43.i, i32 24
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body11.i.for.cond6.i_crit_edge, %for.body.i
  %segment.0.in.i = phi ptr [ %dump_segments.i, %for.body.i ], [ %segment.0.i, %for.body11.i.for.cond6.i_crit_edge ]
  %3 = ptrtoint ptr %segment.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %segment.0.i = load ptr, ptr %segment.0.in.i, align 4
  %cmp9.not.i = icmp eq ptr %segment.0.i, %dump_segments.i
  br i1 %cmp9.not.i, label %if.then19.critedge.i, label %for.body11.i

for.body11.i:                                     ; preds = %for.cond6.i
  %da.i = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %da.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %da.i, align 8
  %6 = ptrtoint ptr %da12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %da12.i, align 4
  %cmp13.i = icmp eq i32 %5, %7
  br i1 %cmp13.i, label %for.body11.i.for.inc24.i_crit_edge, label %for.body11.i.for.cond6.i_crit_edge

for.body11.i.for.cond6.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.i

for.body11.i.for.inc24.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc24.i

if.then19.critedge.i:                             ; preds = %for.cond6.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %da12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %da12.i, align 4
  %len.i = getelementptr i8, ptr %.pn43.i, i32 20
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  %call.i = tail call i32 @rproc_coredump_add_segment(ptr noundef %rproc, i32 noundef %9, i32 noundef %11) #8
  br label %for.inc24.i

for.inc24.i:                                      ; preds = %if.then19.critedge.i, %for.body11.i.for.inc24.i_crit_edge
  %12 = ptrtoint ptr %.pn43.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn43.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %traces.i
  br i1 %cmp.not.i, label %for.inc24.i.stm32_rproc_add_coredump_trace.exit_crit_edge, label %for.inc24.i.for.body.i_crit_edge

for.inc24.i.for.body.i_crit_edge:                 ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc24.i.stm32_rproc_add_coredump_trace.exit_crit_edge: ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_add_coredump_trace.exit

stm32_rproc_add_coredump_trace.exit:              ; preds = %for.inc24.i.stm32_rproc_add_coredump_trace.exit_crit_edge, %entry.stm32_rproc_add_coredump_trace.exit_crit_edge
  %pdds = getelementptr inbounds %struct.stm32_rproc, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %pdds to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdds, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %stm32_rproc_add_coredump_trace.exit.if.end7_crit_edge, label %if.then

stm32_rproc_add_coredump_trace.exit.if.end7_crit_edge: ; preds = %stm32_rproc_add_coredump_trace.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %stm32_rproc_add_coredump_trace.exit
  %reg = getelementptr inbounds %struct.stm32_rproc, ptr %1, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg, align 4
  %mask = getelementptr inbounds %struct.stm32_rproc, ptr %1, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask, align 4
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %14, i32 noundef %16, i32 noundef %18, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool5.not = icmp eq i32 %call.i24, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %do.end

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #11
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %stm32_rproc_add_coredump_trace.exit.if.end7_crit_edge
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %hold_boot1.i = getelementptr inbounds %struct.stm32_rproc, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %hold_boot1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %hold_boot.sroa.0.0.copyload.i = load ptr, ptr %hold_boot1.i, align 4
  %hold_boot.sroa.5.0.hold_boot1.sroa_idx.i = getelementptr inbounds %struct.stm32_rproc, ptr %20, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %hold_boot.sroa.5.0.hold_boot1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %hold_boot.sroa.5.0.copyload.i = load i32, ptr %hold_boot.sroa.5.0.hold_boot1.sroa_idx.i, align 4
  %hold_boot.sroa.8.0.hold_boot1.sroa_idx.i = getelementptr inbounds %struct.stm32_rproc, ptr %20, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %hold_boot.sroa.8.0.hold_boot1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %hold_boot.sroa.8.0.copyload.i = load i32, ptr %hold_boot.sroa.8.0.hold_boot1.sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %smc_res.i) #8
  %secured_soc.i = getelementptr inbounds %struct.stm32_rproc, ptr %20, i32 0, i32 10
  %24 = call ptr @memset(ptr %smc_res.i, i32 255, i32 16)
  %25 = ptrtoint ptr %secured_soc.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %secured_soc.i, align 4, !range !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool2.not.i = icmp eq i8 %26, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void @__arm_smccc_smc(i32 noundef -2113925120, i32 noundef 1, i32 noundef %hold_boot.sroa.5.0.copyload.i, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %smc_res.i, ptr noundef null) #8
  %27 = ptrtoint ptr %smc_res.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %smc_res.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %hold_boot.sroa.0.0.copyload.i, i32 noundef %hold_boot.sroa.5.0.copyload.i, i32 noundef %hold_boot.sroa.8.0.copyload.i, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %err.0.i = phi i32 [ %28, %if.then.i ], [ %call.i.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool4.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool4.not.i, label %if.end11, label %stm32_rproc_set_hold_boot.exit

stm32_rproc_set_hold_boot.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %smc_res.i) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %smc_res.i) #8
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 4
  %hold_boot1.i27 = getelementptr inbounds %struct.stm32_rproc, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %hold_boot1.i27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %hold_boot.sroa.0.0.copyload.i28 = load ptr, ptr %hold_boot1.i27, align 4
  %hold_boot.sroa.5.0.hold_boot1.sroa_idx.i29 = getelementptr inbounds %struct.stm32_rproc, ptr %30, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %hold_boot.sroa.5.0.hold_boot1.sroa_idx.i29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %hold_boot.sroa.5.0.copyload.i30 = load i32, ptr %hold_boot.sroa.5.0.hold_boot1.sroa_idx.i29, align 4
  %hold_boot.sroa.8.0.hold_boot1.sroa_idx.i31 = getelementptr inbounds %struct.stm32_rproc, ptr %30, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %hold_boot.sroa.8.0.hold_boot1.sroa_idx.i31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %hold_boot.sroa.8.0.copyload.i32 = load i32, ptr %hold_boot.sroa.8.0.hold_boot1.sroa_idx.i31, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %smc_res.i25) #8
  %secured_soc.i33 = getelementptr inbounds %struct.stm32_rproc, ptr %30, i32 0, i32 10
  %34 = call ptr @memset(ptr %smc_res.i25, i32 255, i32 16)
  %35 = ptrtoint ptr %secured_soc.i33 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %secured_soc.i33, align 4, !range !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool2.not.i34 = icmp eq i8 %36, 0
  br i1 %tobool2.not.i34, label %if.else.i37, label %if.then.i35

if.then.i35:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @__arm_smccc_smc(i32 noundef -2113925120, i32 noundef 1, i32 noundef %hold_boot.sroa.5.0.copyload.i30, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %smc_res.i25, ptr noundef null) #8
  %37 = ptrtoint ptr %smc_res.i25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %smc_res.i25, align 4
  br label %if.end.i40

if.else.i37:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i36 = call i32 @regmap_update_bits_base(ptr noundef %hold_boot.sroa.0.0.copyload.i28, i32 noundef %hold_boot.sroa.5.0.copyload.i30, i32 noundef %hold_boot.sroa.8.0.copyload.i32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end.i40

if.end.i40:                                       ; preds = %if.else.i37, %if.then.i35
  %err.0.i38 = phi i32 [ %38, %if.then.i35 ], [ %call.i.i36, %if.else.i37 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i38)
  %tobool4.not.i39 = icmp eq i32 %err.0.i38, 0
  br i1 %tobool4.not.i39, label %if.end.i40.stm32_rproc_set_hold_boot.exit43_crit_edge, label %do.end.i42

if.end.i40.stm32_rproc_set_hold_boot.exit43_crit_edge: ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_set_hold_boot.exit43

do.end.i42:                                       ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i41 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i41, ptr noundef nonnull @.str.24) #11
  br label %stm32_rproc_set_hold_boot.exit43

stm32_rproc_set_hold_boot.exit43:                 ; preds = %do.end.i42, %if.end.i40.stm32_rproc_set_hold_boot.exit43_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %smc_res.i25) #8
  br label %cleanup

cleanup:                                          ; preds = %stm32_rproc_set_hold_boot.exit43, %stm32_rproc_set_hold_boot.exit, %do.end
  %retval.0 = phi i32 [ %call.i24, %do.end ], [ %err.0.i38, %stm32_rproc_set_hold_boot.exit43 ], [ %err.0.i, %stm32_rproc_set_hold_boot.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rproc_stop(ptr noundef %rproc) #2 align 64 {
entry:
  %smc_res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %state = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 8
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.then [
    i32 0, label %entry.if.end13_crit_edge
    i32 3, label %entry.if.end13_crit_edge93
  ]

entry.if.end13_crit_edge93:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @stm32_rproc_mbox_idx(ptr noundef %rproc, ptr noundef nonnull @.str.26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp3 = icmp sgt i32 %call, -1
  br i1 %cmp3, label %land.lhs.true4, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true4:                                   ; preds = %if.then
  %chan = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 %call, i32 1
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %land.lhs.true4.if.end13_crit_edge, label %if.then5

land.lhs.true4.if.end13_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then5:                                         ; preds = %land.lhs.true4
  %call9 = tail call i32 @mbox_send_message(ptr noundef nonnull %6, ptr noundef nonnull @.str.27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end, label %if.then5.if.end13_crit_edge

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then5.if.end13_crit_edge, %land.lhs.true4.if.end13_crit_edge, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge, %entry.if.end13_crit_edge93
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %hold_boot1.i = getelementptr inbounds %struct.stm32_rproc, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %hold_boot1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %hold_boot.sroa.0.0.copyload.i = load ptr, ptr %hold_boot1.i, align 4
  %hold_boot.sroa.5.0.hold_boot1.sroa_idx.i = getelementptr inbounds %struct.stm32_rproc, ptr %8, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %hold_boot.sroa.5.0.hold_boot1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %hold_boot.sroa.5.0.copyload.i = load i32, ptr %hold_boot.sroa.5.0.hold_boot1.sroa_idx.i, align 4
  %hold_boot.sroa.8.0.hold_boot1.sroa_idx.i = getelementptr inbounds %struct.stm32_rproc, ptr %8, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %hold_boot.sroa.8.0.hold_boot1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %hold_boot.sroa.8.0.copyload.i = load i32, ptr %hold_boot.sroa.8.0.hold_boot1.sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %smc_res.i) #8
  %secured_soc.i = getelementptr inbounds %struct.stm32_rproc, ptr %8, i32 0, i32 10
  %12 = call ptr @memset(ptr %smc_res.i, i32 255, i32 16)
  %13 = ptrtoint ptr %secured_soc.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %secured_soc.i, align 4, !range !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not.i = icmp eq i8 %14, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void @__arm_smccc_smc(i32 noundef -2113925120, i32 noundef 1, i32 noundef %hold_boot.sroa.5.0.copyload.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %smc_res.i, ptr noundef null) #8
  %15 = ptrtoint ptr %smc_res.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %smc_res.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %hold_boot.sroa.0.0.copyload.i, i32 noundef %hold_boot.sroa.5.0.copyload.i, i32 noundef %hold_boot.sroa.8.0.copyload.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %err.0.i = phi i32 [ %16, %if.then.i ], [ %call.i.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool4.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool4.not.i, label %if.end17, label %stm32_rproc_set_hold_boot.exit

stm32_rproc_set_hold_boot.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %smc_res.i) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %smc_res.i) #8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call18 = call i32 @reset_control_assert(ptr noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %dev24 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %pdds = getelementptr inbounds %struct.stm32_rproc, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %pdds to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdds, align 4
  %tobool26.not = icmp eq ptr %20, null
  br i1 %tobool26.not, label %if.end25.if.end40_crit_edge, label %if.then27

if.end25.if.end40_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then27:                                        ; preds = %if.end25
  %reg = getelementptr inbounds %struct.stm32_rproc, ptr %1, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg, align 4
  %mask = getelementptr inbounds %struct.stm32_rproc, ptr %1, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef nonnull %20, i32 noundef %22, i32 noundef %24, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool33.not = icmp eq i32 %call.i, 0
  br i1 %tobool33.not, label %if.then27.if.end40_crit_edge, label %do.end37

if.then27.if.end40_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.end37:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %dev38 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.35) #11
  br label %cleanup

if.end40:                                         ; preds = %if.then27.if.end40_crit_edge, %if.end25.if.end40_crit_edge
  %m4_state = getelementptr inbounds %struct.stm32_rproc, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %m4_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m4_state, align 4
  %tobool42.not = icmp eq ptr %26, null
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %if.then43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then43:                                        ; preds = %if.end40
  %reg47 = getelementptr inbounds %struct.stm32_rproc, ptr %1, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %reg47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg47, align 4
  %mask49 = getelementptr inbounds %struct.stm32_rproc, ptr %1, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %mask49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mask49, align 4
  %call.i92 = call i32 @regmap_update_bits_base(ptr noundef nonnull %26, i32 noundef %28, i32 noundef %30, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool51.not = icmp eq i32 %call.i92, 0
  br i1 %tobool51.not, label %if.then43.cleanup_crit_edge, label %do.end55

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end55:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %dev56 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56, ptr noundef nonnull @.str.38) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.then43.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %do.end37, %do.end23, %stm32_rproc_set_hold_boot.exit
  %retval.0 = phi i32 [ %call18, %do.end23 ], [ %call.i, %do.end37 ], [ %call.i92, %do.end55 ], [ %err.0.i, %stm32_rproc_set_hold_boot.exit ], [ 0, %if.then43.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rproc_attach(ptr noundef %rproc) #2 align 64 {
entry:
  %smc_res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %traces.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 12
  %0 = ptrtoint ptr %traces.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn41.i = load ptr, ptr %traces.i, align 4
  %cmp.not42.i = icmp eq ptr %.pn41.i, %traces.i
  br i1 %cmp.not42.i, label %entry.stm32_rproc_add_coredump_trace.exit_crit_edge, label %for.body.lr.ph.i

entry.stm32_rproc_add_coredump_trace.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_add_coredump_trace.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %dump_segments.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 31
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc24.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn43.i = phi ptr [ %.pn41.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc24.i.for.body.i_crit_edge ]
  %da12.i = getelementptr i8, ptr %.pn43.i, i32 24
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body11.i.for.cond6.i_crit_edge, %for.body.i
  %segment.0.in.i = phi ptr [ %dump_segments.i, %for.body.i ], [ %segment.0.i, %for.body11.i.for.cond6.i_crit_edge ]
  %1 = ptrtoint ptr %segment.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %segment.0.i = load ptr, ptr %segment.0.in.i, align 4
  %cmp9.not.i = icmp eq ptr %segment.0.i, %dump_segments.i
  br i1 %cmp9.not.i, label %if.then19.critedge.i, label %for.body11.i

for.body11.i:                                     ; preds = %for.cond6.i
  %da.i = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %da.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %da.i, align 8
  %4 = ptrtoint ptr %da12.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %da12.i, align 4
  %cmp13.i = icmp eq i32 %3, %5
  br i1 %cmp13.i, label %for.body11.i.for.inc24.i_crit_edge, label %for.body11.i.for.cond6.i_crit_edge

for.body11.i.for.cond6.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.i

for.body11.i.for.inc24.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc24.i

if.then19.critedge.i:                             ; preds = %for.cond6.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %da12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %da12.i, align 4
  %len.i = getelementptr i8, ptr %.pn43.i, i32 20
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %call.i = tail call i32 @rproc_coredump_add_segment(ptr noundef %rproc, i32 noundef %7, i32 noundef %9) #8
  br label %for.inc24.i

for.inc24.i:                                      ; preds = %if.then19.critedge.i, %for.body11.i.for.inc24.i_crit_edge
  %10 = ptrtoint ptr %.pn43.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn43.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %traces.i
  br i1 %cmp.not.i, label %for.inc24.i.stm32_rproc_add_coredump_trace.exit_crit_edge, label %for.inc24.i.for.body.i_crit_edge

for.inc24.i.for.body.i_crit_edge:                 ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc24.i.stm32_rproc_add_coredump_trace.exit_crit_edge: ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_add_coredump_trace.exit

stm32_rproc_add_coredump_trace.exit:              ; preds = %for.inc24.i.stm32_rproc_add_coredump_trace.exit_crit_edge, %entry.stm32_rproc_add_coredump_trace.exit_crit_edge
  %priv.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 4
  %hold_boot1.i = getelementptr inbounds %struct.stm32_rproc, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %hold_boot1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %hold_boot.sroa.0.0.copyload.i = load ptr, ptr %hold_boot1.i, align 4
  %hold_boot.sroa.5.0.hold_boot1.sroa_idx.i = getelementptr inbounds %struct.stm32_rproc, ptr %12, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %hold_boot.sroa.5.0.hold_boot1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %hold_boot.sroa.5.0.copyload.i = load i32, ptr %hold_boot.sroa.5.0.hold_boot1.sroa_idx.i, align 4
  %hold_boot.sroa.8.0.hold_boot1.sroa_idx.i = getelementptr inbounds %struct.stm32_rproc, ptr %12, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %hold_boot.sroa.8.0.hold_boot1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %hold_boot.sroa.8.0.copyload.i = load i32, ptr %hold_boot.sroa.8.0.hold_boot1.sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %smc_res.i) #8
  %secured_soc.i = getelementptr inbounds %struct.stm32_rproc, ptr %12, i32 0, i32 10
  %16 = call ptr @memset(ptr %smc_res.i, i32 255, i32 16)
  %17 = ptrtoint ptr %secured_soc.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %secured_soc.i, align 4, !range !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not.i = icmp eq i8 %18, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %stm32_rproc_add_coredump_trace.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__arm_smccc_smc(i32 noundef -2113925120, i32 noundef 1, i32 noundef %hold_boot.sroa.5.0.copyload.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %smc_res.i, ptr noundef null) #8
  %19 = ptrtoint ptr %smc_res.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %smc_res.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %stm32_rproc_add_coredump_trace.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %hold_boot.sroa.0.0.copyload.i, i32 noundef %hold_boot.sroa.5.0.copyload.i, i32 noundef %hold_boot.sroa.8.0.copyload.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %err.0.i = phi i32 [ %20, %if.then.i ], [ %call.i.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool4.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool4.not.i, label %if.end.i.stm32_rproc_set_hold_boot.exit_crit_edge, label %do.end.i

if.end.i.stm32_rproc_set_hold_boot.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_set_hold_boot.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24) #11
  br label %stm32_rproc_set_hold_boot.exit

stm32_rproc_set_hold_boot.exit:                   ; preds = %do.end.i, %if.end.i.stm32_rproc_set_hold_boot.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %smc_res.i) #8
  ret i32 %err.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rproc_detach(ptr noundef %rproc) #2 align 64 {
entry:
  %smc_res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @stm32_rproc_mbox_idx(ptr noundef %rproc, ptr noundef nonnull @.str.27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %chan = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 %call, i32 1
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.if.end7_crit_edge, label %if.then

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %call4 = tail call i32 @mbox_send_message(ptr noundef nonnull %3, ptr noundef nonnull @.str.42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.43) #11
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %hold_boot1.i = getelementptr inbounds %struct.stm32_rproc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hold_boot1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %hold_boot.sroa.0.0.copyload.i = load ptr, ptr %hold_boot1.i, align 4
  %hold_boot.sroa.5.0.hold_boot1.sroa_idx.i = getelementptr inbounds %struct.stm32_rproc, ptr %5, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %hold_boot.sroa.5.0.hold_boot1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %hold_boot.sroa.5.0.copyload.i = load i32, ptr %hold_boot.sroa.5.0.hold_boot1.sroa_idx.i, align 4
  %hold_boot.sroa.8.0.hold_boot1.sroa_idx.i = getelementptr inbounds %struct.stm32_rproc, ptr %5, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %hold_boot.sroa.8.0.hold_boot1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %hold_boot.sroa.8.0.copyload.i = load i32, ptr %hold_boot.sroa.8.0.hold_boot1.sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %smc_res.i) #8
  %secured_soc.i = getelementptr inbounds %struct.stm32_rproc, ptr %5, i32 0, i32 10
  %9 = call ptr @memset(ptr %smc_res.i, i32 255, i32 16)
  %10 = ptrtoint ptr %secured_soc.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %secured_soc.i, align 4, !range !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not.i = icmp eq i8 %11, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void @__arm_smccc_smc(i32 noundef -2113925120, i32 noundef 1, i32 noundef %hold_boot.sroa.5.0.copyload.i, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %smc_res.i, ptr noundef null) #8
  %12 = ptrtoint ptr %smc_res.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smc_res.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %hold_boot.sroa.0.0.copyload.i, i32 noundef %hold_boot.sroa.5.0.copyload.i, i32 noundef %hold_boot.sroa.8.0.copyload.i, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %err.0.i = phi i32 [ %13, %if.then.i ], [ %call.i.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool4.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool4.not.i, label %if.end.i.stm32_rproc_set_hold_boot.exit_crit_edge, label %do.end.i

if.end.i.stm32_rproc_set_hold_boot.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rproc_set_hold_boot.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24) #11
  br label %stm32_rproc_set_hold_boot.exit

stm32_rproc_set_hold_boot.exit:                   ; preds = %do.end.i, %if.end.i.stm32_rproc_set_hold_boot.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %smc_res.i) #8
  ret i32 %err.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_rproc_kick(ptr noundef %rproc, i32 noundef %vqid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vqid)
  %cmp = icmp sgt i32 %vqid, 1
  br i1 %cmp, label %do.end, label %for.body.preheader, !prof !225

for.body.preheader:                               ; preds = %entry
  %vq_id = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 0, i32 4
  %2 = ptrtoint ptr %vq_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vqid)
  %cmp23.not = icmp eq i32 %3, %vqid
  br i1 %cmp23.not, label %for.body.preheader.if.end25_crit_edge, label %for.inc

for.body.preheader.if.end25_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 547, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end25:                                         ; preds = %for.inc.2.if.end25_crit_edge, %for.inc.1.if.end25_crit_edge, %for.inc.if.end25_crit_edge, %for.body.preheader.if.end25_crit_edge
  %i.057.lcssa = phi i32 [ 0, %for.body.preheader.if.end25_crit_edge ], [ 1, %for.inc.if.end25_crit_edge ], [ 2, %for.inc.1.if.end25_crit_edge ], [ 3, %for.inc.2.if.end25_crit_edge ]
  %arrayidx.le = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 %i.057.lcssa
  %chan = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 %i.057.lcssa, i32 1
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %tobool28.not = icmp eq ptr %5, null
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %if.end30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %call = tail call i32 @mbox_send_message(ptr noundef nonnull %5, ptr noundef nonnull @.str.45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp34 = icmp slt i32 %call, 0
  br i1 %cmp34, label %do.end38, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef %arrayidx.le, i32 noundef %call) #11
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %vq_id.1 = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 1, i32 4
  %6 = ptrtoint ptr %vq_id.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vq_id.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %vqid)
  %cmp23.not.1 = icmp eq i32 %7, %vqid
  br i1 %cmp23.not.1, label %for.inc.if.end25_crit_edge, label %for.inc.1

for.inc.if.end25_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

for.inc.1:                                        ; preds = %for.inc
  %vq_id.2 = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 2, i32 4
  %8 = ptrtoint ptr %vq_id.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vq_id.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %vqid)
  %cmp23.not.2 = icmp eq i32 %9, %vqid
  br i1 %cmp23.not.2, label %for.inc.1.if.end25_crit_edge, label %for.inc.2

for.inc.1.if.end25_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

for.inc.2:                                        ; preds = %for.inc.1
  %vq_id.3 = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 3, i32 4
  %10 = ptrtoint ptr %vq_id.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vq_id.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %vqid)
  %cmp23.not.3 = icmp eq i32 %11, %vqid
  br i1 %cmp23.not.3, label %for.inc.2.if.end25_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.2.if.end25_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

cleanup:                                          ; preds = %for.inc.2.cleanup_crit_edge, %do.end38, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rproc_parse_fw(ptr noundef %rproc, ptr noundef %fw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rproc_elf_load_rsc_table(ptr noundef %rproc, ptr noundef %fw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.48) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_elf_find_loaded_rsc_table(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stm32_rproc_get_loaded_rsc_table(ptr nocapture noundef readonly %rproc, ptr nocapture noundef writeonly %table_sz) #2 align 64 {
entry:
  %rsc_pa = alloca i32, align 4
  %rsc_da = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsc_pa) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsc_da) #8
  %4 = ptrtoint ptr %rsc_da to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rsc_da, align 4, !annotation !224
  %rsc_va = getelementptr inbounds %struct.stm32_rproc, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %rsc_va to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rsc_va, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end:                                           ; preds = %entry
  %rsctbl = getelementptr inbounds %struct.stm32_rproc, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %rsctbl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rsctbl, align 4
  %reg = getelementptr inbounds %struct.stm32_rproc, ptr %1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %call = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %rsc_da) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.50) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %rsc_da to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rsc_da, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %conv = zext i32 %12 to i64
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  %nb_rmems.i = getelementptr inbounds %struct.stm32_rproc, ptr %14, i32 0, i32 6
  %17 = ptrtoint ptr %nb_rmems.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nb_rmems.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp40.not.i = icmp eq i32 %18, 0
  br i1 %cmp40.not.i, label %if.end10.if.then13_crit_edge, label %for.body.lr.ph.i

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

for.body.lr.ph.i:                                 ; preds = %if.end10
  %rmems.i = getelementptr inbounds %struct.stm32_rproc, ptr %14, i32 0, i32 7
  %19 = ptrtoint ptr %rmems.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmems.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.041.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %dev_addr.i = getelementptr %struct.stm32_rproc_mem, ptr %20, i32 %i.041.i, i32 3
  %21 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dev_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %22)
  %cmp2.i = icmp ult i32 %12, %22
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %size.i = getelementptr %struct.stm32_rproc_mem, ptr %20, i32 %i.041.i, i32 4
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 4
  %add.i = add i32 %24, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %12)
  %cmp6.not.i = icmp ugt i32 %add.i, %12
  br i1 %cmp6.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %bus_addr.i = getelementptr %struct.stm32_rproc_mem, ptr %20, i32 %i.041.i, i32 2
  %25 = ptrtoint ptr %bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bus_addr.i, align 4
  %27 = sub i32 %12, %22
  %conv12.i = add i32 %27, %26
  %28 = ptrtoint ptr %rsc_pa to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv12.i, ptr %rsc_pa, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_rproc_da_to_pa.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_rproc_get_loaded_rsc_table, %stm32_rproc_da_to_pa.exit.thread)) #8
          to label %if.end15 [label %stm32_rproc_da_to_pa.exit.thread], !srcloc !226

stm32_rproc_da_to_pa.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_rproc_da_to_pa.__UNIQUE_ID_ddebug239, ptr noundef %16, ptr noundef nonnull @.str.56, i64 noundef %conv, ptr noundef nonnull %rsc_pa) #8
  br label %if.end15

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %18
  br i1 %exitcond.not.i, label %for.inc.i.if.then13_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.then13_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %for.inc.i.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.57, i64 noundef %conv) #11
  br label %cleanup

if.end15:                                         ; preds = %stm32_rproc_da_to_pa.exit.thread, %if.end.i
  %29 = ptrtoint ptr %rsc_pa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rsc_pa, align 4
  %call16 = call ptr @devm_ioremap_wc(ptr noundef %3, i32 noundef %30, i32 noundef 1024) #8
  %31 = ptrtoint ptr %rsc_va to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call16, ptr %rsc_va, align 4
  %tobool.not.i = icmp eq ptr %call16, null
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end23, label %if.end15.done_crit_edge

if.end15.done_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.53, ptr noundef nonnull %rsc_pa, i32 noundef 1024) #11
  %32 = ptrtoint ptr %rsc_va to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %rsc_va, align 4
  br label %cleanup

done:                                             ; preds = %if.end15.done_crit_edge, %entry.done_crit_edge
  %33 = ptrtoint ptr %table_sz to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1024, ptr %table_sz, align 4
  %34 = ptrtoint ptr %rsc_va to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rsc_va, align 4
  br label %cleanup

cleanup:                                          ; preds = %done, %do.end23, %if.then13, %if.end6.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %35, %done ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %if.then13 ], [ inttoptr (i32 -12 to ptr), %do.end23 ], [ inttoptr (i32 -2 to ptr), %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsc_da) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsc_pa) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_load_segments(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_sanity_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rproc_elf_get_boot_addr(ptr noundef, ptr noundef) #1

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
define internal i32 @stm32_rproc_mem_alloc(ptr nocapture noundef readonly %rproc, ptr noundef %mem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_rproc_mem_alloc.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_rproc_mem_alloc, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !226

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dma = getelementptr inbounds %struct.rproc_mem_entry, ptr %mem, i32 0, i32 2
  %len = getelementptr inbounds %struct.rproc_mem_entry, ptr %mem, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_rproc_mem_alloc.__UNIQUE_ID_ddebug235, ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef %dma, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dma4 = getelementptr inbounds %struct.rproc_mem_entry, ptr %mem, i32 0, i32 2
  %4 = ptrtoint ptr %dma4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma4, align 4
  %len5 = getelementptr inbounds %struct.rproc_mem_entry, ptr %mem, i32 0, i32 3
  %6 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len5, align 4
  %call6 = tail call ptr @ioremap_wc(i32 noundef %5, i32 noundef %7) #8
  %tobool.not.i = icmp eq ptr %call6, null
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end11, label %if.end14

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef %dma4, i32 noundef %9) #11
  br label %cleanup

if.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %mem, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end11
  %retval.0 = phi i32 [ -12, %do.end11 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rproc_mem_release(ptr nocapture noundef readonly %rproc, ptr noundef %mem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_rproc_mem_release.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_rproc_mem_release, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !226

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %dma = getelementptr inbounds %struct.rproc_mem_entry, ptr %mem, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_rproc_mem_release.__UNIQUE_ID_ddebug236, ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef %dma) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem, align 4
  tail call void @iounmap(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_coredump_add_segment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_of_resm_mem_entry_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_add_carveout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_rproc_mbox_idx(ptr noundef %rproc, ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @strlen(ptr noundef %name) #13
  %arrayidx = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 0
  %call2 = tail call i32 @strncmp(ptr noundef %arrayidx, ptr noundef %name, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.inc

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 1
  %call2.1 = tail call i32 @strncmp(ptr noundef %arrayidx.1, ptr noundef %name, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool.not.1, label %for.inc.cleanup_crit_edge, label %for.inc.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 2
  %call2.2 = tail call i32 @strncmp(ptr noundef %arrayidx.2, ptr noundef %name, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %tobool.not.2 = icmp eq i32 %call2.2, 0
  br i1 %tobool.not.2, label %for.inc.1.cleanup_crit_edge, label %for.inc.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.stm32_rproc, ptr %1, i32 0, i32 8, i32 3
  %call2.3 = tail call i32 @strncmp(ptr noundef %arrayidx.3, ptr noundef %name, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3)
  %tobool.not.3 = icmp eq i32 %call2.3, 0
  br i1 %tobool.not.3, label %for.inc.2.cleanup_crit_edge, label %for.inc.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef %name) #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.inc.3 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ 2, %for.inc.1.cleanup_crit_edge ], [ 3, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_load_rsc_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rproc_wdg(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %data, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @rproc_report_crash(ptr noundef %1, i32 noundef 1) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_report_crash(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_rproc_mb_vq_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %vq_id = getelementptr i8, ptr %work, i32 44
  %4 = ptrtoint ptr %vq_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vq_id, align 4
  %call1 = tail call i32 @rproc_vq_interrupt(ptr noundef %3, i32 noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %do.body, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_rproc_mb_vq_work.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_rproc_mb_vq_work, %if.then6)) #8
          to label %if.end9 [label %if.then6], !srcloc !226

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %vq_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vq_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_rproc_mb_vq_work.__UNIQUE_ID_ddebug238, ptr noundef %dev7, ptr noundef nonnull @.str.101, i32 noundef %7) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.body, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_rproc_mb_callback(ptr noundef %cl, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %workqueue = getelementptr inbounds %struct.stm32_rproc, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %workqueue, align 4
  %vq_work = getelementptr i8, ptr %cl, i32 28
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %vq_work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_vq_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rproc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %device_may_wakeup.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.then

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %wdg_irq = getelementptr inbounds %struct.stm32_rproc, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %wdg_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wdg_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %device_may_wakeup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rproc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %device_may_wakeup.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.then

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %wdg_irq = getelementptr inbounds %struct.stm32_rproc, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %wdg_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wdg_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %device_may_wakeup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !72, !74, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !99, !100, !101, !102, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !135, !137, !139, !140, !141, !142, !143, !145, !147, !149, !150, !151, !153, !154, !155, !157, !159, !160, !161, !163, !165, !166, !167, !169, !171, !173, !174, !175, !177, !179, !180, !181, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !197, !199, !200, !201, !202, !204, !205, !207, !209, !210, !211, !213}
!llvm.module.flags = !{!215, !216, !217, !218, !219, !220, !221, !222}
!llvm.ident = !{!223}

!0 = !{ptr @__initcall__kmod_stm32_rproc__240_914_stm32_rproc_driver_init6, !1, !"__initcall__kmod_stm32_rproc__240_914_stm32_rproc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 914, i32 1}
!2 = !{ptr @__exitcall_stm32_rproc_driver_exit, !1, !"__exitcall_stm32_rproc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 916, i32 1}
!5 = !{ptr @__UNIQUE_ID_author242, !6, !"__UNIQUE_ID_author242", i1 false, i1 false}
!6 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 917, i32 1}
!7 = !{ptr @__UNIQUE_ID_author243, !8, !"__UNIQUE_ID_author243", i1 false, i1 false}
!8 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 918, i32 1}
!9 = !{ptr @__UNIQUE_ID_file244, !10, !"__UNIQUE_ID_file244", i1 false, i1 false}
!10 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 919, i32 1}
!11 = !{ptr @__UNIQUE_ID_license245, !10, !"__UNIQUE_ID_license245", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 909, i32 11}
!14 = !{ptr @stm32_rproc_driver, !15, !"stm32_rproc_driver", i1 false, i1 false}
!15 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 905, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 824, i32 21}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 826, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @stm32_rproc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @stm32_rproc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @st_rproc_ops, !27, !"st_rproc_ops", i1 false, i1 false}
!27 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 635, i32 31}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 222, i32 36}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 226, i32 4}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @stm32_rproc_prepare._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @stm32_rproc_prepare._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 231, i32 4}
!37 = !{ptr @stm32_rproc_prepare._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @stm32_rproc_prepare._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 237, i32 29}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 108, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @stm32_rproc_pa_to_da.__UNIQUE_ID_ddebug234, !42, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 121, i32 2}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @stm32_rproc_mem_alloc.__UNIQUE_ID_ddebug235, !47, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 124, i32 3}
!52 = !{ptr @stm32_rproc_mem_alloc._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @stm32_rproc_mem_alloc._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 138, i32 2}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @stm32_rproc_mem_release.__UNIQUE_ID_ddebug236, !55, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 455, i32 4}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @stm32_rproc_start._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @stm32_rproc_start._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 416, i32 3}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @stm32_rproc_set_hold_boot._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @stm32_rproc_set_hold_boot._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 498, i32 37}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 500, i32 49}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 502, i32 5}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @stm32_rproc_stop._entry, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @stm32_rproc_stop._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 512, i32 3}
!80 = !{ptr @stm32_rproc_stop._entry.31, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @stm32_rproc_stop._entry_ptr.33, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 521, i32 4}
!84 = !{ptr @stm32_rproc_stop._entry.34, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @stm32_rproc_stop._entry_ptr.36, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 533, i32 4}
!88 = !{ptr @stm32_rproc_stop._entry.37, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @stm32_rproc_stop._entry_ptr.39, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 206, i32 2}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @stm32_rproc_mbox_idx._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @stm32_rproc_mbox_idx._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 482, i32 48}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 484, i32 4}
!99 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @stm32_rproc_detach._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @stm32_rproc_detach._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 555, i32 46}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 557, i32 4}
!106 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @stm32_rproc_kick._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @stm32_rproc_kick._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 270, i32 3}
!111 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @stm32_rproc_parse_fw._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @stm32_rproc_parse_fw._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 604, i32 3}
!116 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @stm32_rproc_get_loaded_rsc_table._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @stm32_rproc_get_loaded_rsc_table._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 618, i32 3}
!121 = !{ptr @stm32_rproc_get_loaded_rsc_table._entry.52, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @stm32_rproc_get_loaded_rsc_table._entry_ptr.54, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 579, i32 3}
!125 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @stm32_rproc_da_to_pa.__UNIQUE_ID_ddebug239, !124, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 584, i32 2}
!129 = !{ptr @stm32_rproc_da_to_pa._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @stm32_rproc_da_to_pa._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 689, i32 34}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 696, i32 11}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 700, i32 33}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 705, i32 3}
!139 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @stm32_rproc_parse_dt._entry, !138, !"_entry", i1 false, i1 false}
!142 = !{ptr @stm32_rproc_parse_dt._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 711, i32 10}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 718, i32 35}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 720, i32 3}
!149 = !{ptr @stm32_rproc_parse_dt._entry.66, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @stm32_rproc_parse_dt._entry_ptr.68, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 726, i32 3}
!153 = !{ptr @stm32_rproc_parse_dt._entry.69, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @stm32_rproc_parse_dt._entry_ptr.71, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 731, i32 35}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 734, i32 3}
!159 = !{ptr @stm32_rproc_parse_dt._entry.73, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @stm32_rproc_parse_dt._entry_ptr.75, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 738, i32 35}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 740, i32 3}
!165 = !{ptr @stm32_rproc_parse_dt._entry.77, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @stm32_rproc_parse_dt._entry_ptr.79, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 742, i32 41}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 748, i32 35}
!171 = !{ptr @.str.83, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 754, i32 3}
!173 = !{ptr @stm32_rproc_parse_dt._entry.82, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @stm32_rproc_parse_dt._entry_ptr.84, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 761, i32 35}
!177 = !{ptr @.str.87, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 765, i32 3}
!179 = !{ptr @stm32_rproc_parse_dt._entry.86, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @stm32_rproc_parse_dt._entry_ptr.88, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.89, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 156, i32 44}
!183 = !{ptr @.str.90, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 159, i32 3}
!185 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @stm32_rproc_of_memory_translations._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @stm32_rproc_of_memory_translations._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 175, i32 3}
!190 = !{ptr @stm32_rproc_of_memory_translations._entry.92, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @stm32_rproc_of_memory_translations._entry_ptr.94, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 184, i32 3}
!194 = !{ptr @stm32_rproc_of_memory_translations.__UNIQUE_ID_ddebug237, !193, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!195 = !{ptr @.str.96, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 375, i32 12}
!197 = !{ptr @.str.97, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 379, i32 4}
!199 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @stm32_rproc_request_mbox._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @stm32_rproc_request_mbox._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @stm32_rproc_request_mbox.__key, !203, !"__key", i1 false, i1 false}
!203 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 383, i32 4}
!204 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @stm32_rproc_mbox, !206, !"stm32_rproc_mbox", i1 false, i1 false}
!206 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 315, i32 32}
!207 = !{ptr @.str.100, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 291, i32 3}
!209 = !{ptr @.str.101, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @stm32_rproc_mb_vq_work.__UNIQUE_ID_ddebug238, !208, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!211 = !{ptr @stm32_rproc_match, !212, !"stm32_rproc_match", i1 false, i1 false}
!212 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 650, i32 34}
!213 = !{ptr @stm32_rproc_pm_ops, !214, !"stm32_rproc_pm_ops", i1 false, i1 false}
!214 = !{!"../drivers/remoteproc/stm32_rproc.c", i32 902, i32 8}
!215 = !{i32 1, !"wchar_size", i32 2}
!216 = !{i32 1, !"min_enum_size", i32 4}
!217 = !{i32 8, !"branch-target-enforcement", i32 0}
!218 = !{i32 8, !"sign-return-address", i32 0}
!219 = !{i32 8, !"sign-return-address-all", i32 0}
!220 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!221 = !{i32 7, !"uwtable", i32 1}
!222 = !{i32 7, !"frame-pointer", i32 2}
!223 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!224 = !{!"auto-init"}
!225 = !{!"branch_weights", i32 1, i32 2000}
!226 = !{i64 2148361074, i64 2148361079, i64 2148361092, i64 2148361136, i64 2148361170, i64 2148361191}
!227 = !{i8 0, i8 2}
