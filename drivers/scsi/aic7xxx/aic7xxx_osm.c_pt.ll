; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic7xxx/aic7xxx_osm.c_pt.bc'
source_filename = "../drivers/scsi/aic7xxx/aic7xxx_osm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.6 }
%union.anon.6 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.23 }
%union.anon.23 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.anon.93 = type { ptr, ptr }
%struct.adapter_tag_info_t = type { [16 x i8] }
%struct.ahc_softc = type { i32, %union.bus_space_handle_t, ptr, ptr, %struct.anon.87, i32, [16 x %struct.scb_tailq], %union.ahc_bus_softc, ptr, ptr, ptr, ptr, ptr, [16 x ptr], ptr, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, ptr, i8, i8, i8, i32, [12 x i8], [12 x i8], i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i16, i16 }
%union.bus_space_handle_t = type { i32 }
%struct.anon.87 = type { ptr }
%struct.scb_tailq = type { ptr, ptr }
%union.ahc_bus_softc = type { %struct.ahc_pci_softc }
%struct.ahc_pci_softc = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ahc_platform_data = type { [16 x ptr], %struct.spinlock, i32, ptr, ptr, i32, i32, i32 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.hardware_scb = type { %union.anon, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [32 x i8] }
%union.anon = type { %struct.status_pkt }
%struct.status_pkt = type { i32, i32, i8 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.scb = type { ptr, %union.anon.0, %struct.anon.3, ptr, ptr, i32, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr }
%struct.anon.3 = type { ptr, ptr }
%struct.ahc_initiator_tinfo = type { i8, %struct.ahc_transinfo, %struct.ahc_transinfo, %struct.ahc_transinfo }
%struct.ahc_transinfo = type { i8, i8, i8, i8, i8, i8 }
%struct.ahc_tmode_tstate = type { [64 x ptr], [16 x %struct.ahc_initiator_tinfo], i16, i16, i16, i16 }
%struct.ahc_linux_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scb_platform_data = type { ptr, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ahc_dma_seg = type { i32, i32 }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.ahc_devinfo = type { i32, i32, i16, i32, i32, i8, i32 }
%struct.ahc_linux_dma_tag = type { i32, i32, i32 }
%struct.bus_dma_segment = type { i32, i32 }

@ahc_print_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(scsi%d:%c:%d:%d): \00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ahc_print_path\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/aic7xxx/aic7xxx_osm.c\00", [61 x i8] zeroinitializer }, align 32
@ahc_print_path._entry_ptr = internal global ptr @ahc_print_path._entry, section ".printk_index", align 4
@aic7xxx_allow_memio = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author287 = internal constant [58 x i8] c"aic7xxx.author=Maintainer: Hannes Reinecke <hare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description288 = internal constant [70 x i8] c"aic7xxx.description=Adaptec AIC77XX/78XX SCSI Host Bus Adapter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file289 = internal constant [42 x i8] c"aic7xxx.file=drivers/scsi/aic7xxx/aic7xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [29 x i8] c"aic7xxx.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version291 = internal constant [20 x i8] c"aic7xxx.version=7.0\00", section ".modinfo", align 1
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aic7xxx\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"7.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.4, ptr @.str.5 }, section "__modver", align 4
@__param_str_aic7xxx = internal constant [16 x i8] c"aic7xxx.aic7xxx\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@aic7xxx = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_aic7xxx = internal constant %struct.kernel_param { ptr @__param_str_aic7xxx, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.23 { ptr @aic7xxx } }, section "__param", align 4
@__UNIQUE_ID_aic7xxxtype292 = internal constant [31 x i8] c"aic7xxx.parmtype=aic7xxx:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_aic7xxx293 = internal constant [979 x i8] c"aic7xxx.parm=aic7xxx:period-delimited options string:\0A\09verbose\09\09\09Enable verbose/diagnostic logging\0A\09allow_memio\09\09Allow device registers to be memory mapped\0A\09debug\09\09\09Bitmask of debug values to enable\0A\09no_probe\09\09Toggle EISA/VLB controller probing\0A\09probe_eisa_vl\09\09Toggle EISA/VLB controller probing\0A\09no_reset\09\09Suppress initial bus resets\0A\09extended\09\09Enable extended geometry on all controllers\0A\09periodic_otag\09\09Send an ordered tagged transaction\0A\09\09\09\09periodically to prevent tag starvation.\0A\09\09\09\09This may be required by some older disk\0A\09\09\09\09drives or RAID arrays.\0A\09tag_info:<tag_str>\09Set per-target tag depth\0A\09global_tag_depth:<int>\09Global tag depth for every target\0A\09\09\09\09on every bus\0A\09seltime:<int>\09\09Selection Timeout\0A\09\09\09\09(0/256ms,1/128ms,2/64ms,3/32ms)\0A\0A\09Sample modprobe configuration file:\0A\09#\09Toggle EISA/VLB probing\0A\09#\09Set tag depth on Controller 1/Target 1 to 10 tags\0A\09#\09Shorten the selection timeout to 128ms\0A\0A\09options aic7xxx 'aic7xxx=probe_eisa_vl.tag_info:{{}.{.10}}.seltime:1'\0A\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@aic7xxx_driver_template = dso_local global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ahc_linux_queue, ptr null, ptr null, ptr @.str.4, ptr @ahc_linux_info, ptr null, ptr null, ptr null, ptr @ahc_linux_abort, ptr @ahc_linux_dev_reset, ptr null, ptr @ahc_linux_bus_reset, ptr null, ptr @ahc_linux_slave_alloc, ptr @ahc_linux_slave_configure, ptr null, ptr @ahc_linux_target_alloc, ptr @ahc_linux_target_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahc_linux_show_info, ptr @ahc_proc_write_seeprom, ptr null, ptr null, ptr null, ptr @.str.4, ptr null, i32 253, i32 -1, i16 0, i16 0, i32 8192, i32 0, i32 0, i32 0, i16 2, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@__setup_str_aic7xxx_setup = internal constant [9 x i8] c"aic7xxx=\00", section ".init.rodata", align 1
@__setup_aic7xxx_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_aic7xxx_setup, ptr @aic7xxx_setup, i32 0 }, section ".init.setup", align 4
@ahc_linux_unit = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"scsi%d\00", [25 x i8] zeroinitializer }, align 32
@ahc_linux_transport_template = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ahc_linux_register_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014aic7xxx: scsi_add_host failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ahc_linux_register_host\00", [40 x i8] zeroinitializer }, align 32
@ahc_linux_register_host._entry_ptr = internal global ptr @ahc_linux_register_host._entry, section ".printk_index", align 4
@aic7xxx_seltime = internal global { i32, [28 x i8] } zeroinitializer, align 32
@aic7xxx_pci_parity = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@aic7xxx_periodic_otag = internal global { i32, [28 x i8] } zeroinitializer, align 32
@aic7xxx_verbose = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ahc_send_async: Unexpected async event\00", [57 x i8] zeroinitializer }, align 32
@ahc_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SCB %d done'd twice\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ahc_done\00", [23 x i8] zeroinitializer }, align 32
@ahc_done._entry_ptr = internal global ptr @ahc_done._entry, section ".printk_index", align 4
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Stopping for safety\00", [44 x i8] zeroinitializer }, align 32
@ahc_debug = external dso_local global i32, align 4
@ahc_done._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 1723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Set CAM_UNCOR_PARITY\0A\00", [42 x i8] zeroinitializer }, align 32
@ahc_done._entry_ptr.15 = internal global ptr @ahc_done._entry.13, section ".printk_index", align 4
@ahc_done._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 1779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Recovery SCB completes\0A\00", [40 x i8] zeroinitializer }, align 32
@ahc_done._entry_ptr.18 = internal global ptr @ahc_done._entry.16, section ".printk_index", align 4
@__initcall__kmod_aic7xxx__296_2576_ahc_linux_init6 = internal global ptr @ahc_linux_init, section ".initcall6.init", align 4
@__exitcall_ahc_linux_exit = internal global ptr @ahc_linux_exit, section ".exitcall.exit", align 4
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Too few segs for dma mapping.  Increase AHC_NSEG\0A\00", [46 x i8] zeroinitializer }, align 32
@ahc_linux_info.buffer = internal global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Adaptec AIC7XXX EISA/VLB/PCI SCSI HBA DRIVER, Rev 7.0\0A        <\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c">\0A        \00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@ahc_linux_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"aic7xxx_abort returns 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ahc_linux_abort\00", [16 x i8] zeroinitializer }, align 32
@ahc_linux_abort._entry_ptr = internal global ptr @ahc_linux_abort._entry, section ".printk_index", align 4
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Attempting to queue a%s message\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"n ABORT\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" TARGET RESET\00", [18 x i8] zeroinitializer }, align 32
@ahc_linux_queue_recovery_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 2057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CDB:\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ahc_linux_queue_recovery_cmd\00", [35 x i8] zeroinitializer }, align 32
@ahc_linux_queue_recovery_cmd._entry_ptr = internal global ptr @ahc_linux_queue_recovery_cmd._entry, section ".printk_index", align 4
@ahc_linux_queue_recovery_cmd._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 2059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" 0x%x\00", [26 x i8] zeroinitializer }, align 32
@ahc_linux_queue_recovery_cmd._entry_ptr.33 = internal global ptr @ahc_linux_queue_recovery_cmd._entry.31, section ".printk_index", align 4
@ahc_linux_queue_recovery_cmd._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.30, ptr @.str.2, i32 2060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ahc_linux_queue_recovery_cmd._entry_ptr.35 = internal global ptr @ahc_linux_queue_recovery_cmd._entry.34, section ".printk_index", align 4
@ahc_linux_queue_recovery_cmd._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.30, ptr @.str.2, i32 2080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:%d:%d: Is not an active device\0A\00", [58 x i8] zeroinitializer }, align 32
@ahc_linux_queue_recovery_cmd._entry_ptr.38 = internal global ptr @ahc_linux_queue_recovery_cmd._entry.36, section ".printk_index", align 4
@ahc_linux_queue_recovery_cmd._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.30, ptr @.str.2, i32 2092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:%d:%d: Command found on untagged queue\0A\00", [50 x i8] zeroinitializer }, align 32
@ahc_linux_queue_recovery_cmd._entry_ptr.41 = internal global ptr @ahc_linux_queue_recovery_cmd._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Command not found\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Command already completed\0A\00", [37 x i8] zeroinitializer }, align 32
@ahc_linux_queue_recovery_cmd._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.30, ptr @.str.2, i32 2145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: At time of recovery, card was %spaused\0A\00", [52 x i8] zeroinitializer }, align 32
@ahc_linux_queue_recovery_cmd._entry_ptr.46 = internal global ptr @ahc_linux_queue_recovery_cmd._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@ahc_linux_queue_recovery_cmd._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.30, ptr @.str.2, i32 2158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d:%d:%d: Cmd aborted from QINFIFO\0A\00", [57 x i8] zeroinitializer }, align 32
@ahc_linux_queue_recovery_cmd._entry_ptr.51 = internal global ptr @ahc_linux_queue_recovery_cmd._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Device is active, asserting ATN\0A\00", [63 x i8] zeroinitializer }, align 32
@ahc_linux_queue_recovery_cmd._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.30, ptr @.str.2, i32 2271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Device is disconnected, re-queuing SCB\0A\00", [56 x i8] zeroinitializer }, align 32
@ahc_linux_queue_recovery_cmd._entry_ptr.55 = internal global ptr @ahc_linux_queue_recovery_cmd._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to deliver message\0A\00", [37 x i8] zeroinitializer }, align 32
@ahc_linux_queue_recovery_cmd._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.30, ptr @.str.2, i32 2296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Recovery code sleeping\0A\00", [40 x i8] zeroinitializer }, align 32
@ahc_linux_queue_recovery_cmd._entry_ptr.59 = internal global ptr @ahc_linux_queue_recovery_cmd._entry.57, section ".printk_index", align 4
@ahc_linux_queue_recovery_cmd._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.30, ptr @.str.2, i32 2302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Timer Expired\0A\00", [17 x i8] zeroinitializer }, align 32
@ahc_linux_queue_recovery_cmd._entry_ptr.62 = internal global ptr @ahc_linux_queue_recovery_cmd._entry.60, section ".printk_index", align 4
@ahc_linux_queue_recovery_cmd._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.30, ptr @.str.2, i32 2305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Recovery code awake\0A\00", [43 x i8] zeroinitializer }, align 32
@ahc_linux_queue_recovery_cmd._entry_ptr.65 = internal global ptr @ahc_linux_queue_recovery_cmd._entry.63, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ahc_linux_dev_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"aic7xxx_dev_reset returns 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ahc_linux_dev_reset\00", [44 x i8] zeroinitializer }, align 32
@ahc_linux_dev_reset._entry_ptr = internal global ptr @ahc_linux_dev_reset._entry, section ".printk_index", align 4
@ahc_linux_bus_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: SCSI bus reset delivered. %d SCBs aborted.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ahc_linux_bus_reset\00", [44 x i8] zeroinitializer }, align 32
@ahc_linux_bus_reset._entry_ptr = internal global ptr @ahc_linux_bus_reset._entry, section ".printk_index", align 4
@ahc_linux_slave_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Slave Alloc %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ahc_linux_slave_alloc\00", [42 x i8] zeroinitializer }, align 32
@ahc_linux_slave_alloc._entry_ptr = internal global ptr @ahc_linux_slave_alloc._entry, section ".printk_index", align 4
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Slave Configure\0A\00", [47 x i8] zeroinitializer }, align 32
@ahc_linux_device_queue_depth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 1393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Tagged Queuing enabled.  Depth %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ahc_linux_device_queue_depth\00", [35 x i8] zeroinitializer }, align 32
@ahc_linux_device_queue_depth._entry_ptr = internal global ptr @ahc_linux_device_queue_depth._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@aic7xxx_setup.options = internal constant { [11 x %struct.anon.93], [40 x i8] } { [11 x %struct.anon.93] [%struct.anon.93 { ptr @.str.76, ptr @aic7xxx_extended }, %struct.anon.93 { ptr @.str.77, ptr @aic7xxx_no_reset }, %struct.anon.93 { ptr @.str.78, ptr @aic7xxx_verbose }, %struct.anon.93 { ptr @.str.79, ptr @aic7xxx_allow_memio }, %struct.anon.93 { ptr @.str.80, ptr @ahc_debug }, %struct.anon.93 { ptr @.str.81, ptr @aic7xxx_periodic_otag }, %struct.anon.93 { ptr @.str.82, ptr @aic7xxx_pci_parity }, %struct.anon.93 { ptr @.str.83, ptr @aic7xxx_seltime }, %struct.anon.93 { ptr @.str.84, ptr null }, %struct.anon.93 { ptr @.str.85, ptr null }, %struct.anon.93 { ptr @.str.86, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"extended\00", [23 x i8] zeroinitializer }, align 32
@aic7xxx_extended = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no_reset\00", [23 x i8] zeroinitializer }, align 32
@aic7xxx_no_reset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"verbose\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"allow_memio\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"periodic_otag\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci_parity\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"seltime\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tag_info\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"global_tag_depth\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dv\00", [29 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c",.\00", [29 x i8] zeroinitializer }, align 32
@ahc_linux_setup_tag_info_global._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Setting Global Tags= %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ahc_linux_setup_tag_info_global\00", [32 x i8] zeroinitializer }, align 32
@ahc_linux_setup_tag_info_global._entry_ptr = internal global ptr @ahc_linux_setup_tag_info_global._entry, section ".printk_index", align 4
@aic7xxx_tag_info = internal global { [16 x %struct.adapter_tag_info_t], [64 x i8] } { [16 x %struct.adapter_tag_info_t] [%struct.adapter_tag_info_t { [16 x i8] c"                " }, %struct.adapter_tag_info_t { [16 x i8] c"                " }, %struct.adapter_tag_info_t { [16 x i8] c"                " }, %struct.adapter_tag_info_t { [16 x i8] c"                " }, %struct.adapter_tag_info_t { [16 x i8] c"                " }, %struct.adapter_tag_info_t { [16 x i8] c"                " }, %struct.adapter_tag_info_t { [16 x i8] c"                " }, %struct.adapter_tag_info_t { [16 x i8] c"                " }, %struct.adapter_tag_info_t { [16 x i8] c"                " }, %struct.adapter_tag_info_t { [16 x i8] c"                " }, %struct.adapter_tag_info_t { [16 x i8] c"                " }, %struct.adapter_tag_info_t { [16 x i8] c"                " }, %struct.adapter_tag_info_t { [16 x i8] c"                " }, %struct.adapter_tag_info_t { [16 x i8] c"                " }, %struct.adapter_tag_info_t { [16 x i8] c"                " }, %struct.adapter_tag_info_t { [16 x i8] c"                " }], [64 x i8] zeroinitializer }, align 32
@ahc_parse_brace_option._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Malformed Option %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ahc_parse_brace_option\00", [41 x i8] zeroinitializer }, align 32
@ahc_parse_brace_option._entry_ptr = internal global ptr @ahc_parse_brace_option._entry, section ".printk_index", align 4
@ahc_linux_setup_tag_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tag_info[%d:%d] = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ahc_linux_setup_tag_info\00", [39 x i8] zeroinitializer }, align 32
@ahc_linux_setup_tag_info._entry_ptr = internal global ptr @ahc_linux_setup_tag_info._entry, section ".printk_index", align 4
@ahc_lockinit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&ahc->platform_data->spin_lock\00", [33 x i8] zeroinitializer }, align 32
@ahc_linux_user_tagdepth.warned_user = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ahc_linux_user_tagdepth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 1354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [198 x i8], [58 x i8] } { [198 x i8] c"\014aic7xxx: WARNING: Insufficient tag_info instances\0Aaic7xxx: for installed controllers. Using defaults\0Aaic7xxx: Please update the aic7xxx_tag_info array in\0Aaic7xxx: the aic7xxx_osm..c source file.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ahc_linux_user_tagdepth\00", [40 x i8] zeroinitializer }, align 32
@ahc_linux_user_tagdepth._entry_ptr = internal global ptr @ahc_linux_user_tagdepth._entry, section ".printk_index", align 4
@ahc_linux_handle_scsi_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 1844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Copied %d bytes of sense data:\00", [33 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ahc_linux_handle_scsi_status\00", [35 x i8] zeroinitializer }, align 32
@ahc_linux_handle_scsi_status._entry_ptr = internal global ptr @ahc_linux_handle_scsi_status._entry, section ".printk_index", align 4
@ahc_linux_handle_scsi_status._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.98, ptr @.str.2, i32 1847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ahc_linux_handle_scsi_status._entry_ptr.100 = internal global ptr @ahc_linux_handle_scsi_status._entry.99, section ".printk_index", align 4
@ahc_linux_handle_scsi_status._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.98, ptr @.str.2, i32 1848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x \00", [26 x i8] zeroinitializer }, align 32
@ahc_linux_handle_scsi_status._entry_ptr.103 = internal global ptr @ahc_linux_handle_scsi_status._entry.101, section ".printk_index", align 4
@ahc_linux_handle_scsi_status._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.98, ptr @.str.2, i32 1850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ahc_linux_handle_scsi_status._entry_ptr.105 = internal global ptr @ahc_linux_handle_scsi_status._entry.104, section ".printk_index", align 4
@ahc_linux_handle_scsi_status._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.98, ptr @.str.2, i32 1893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Locking max tag count at %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ahc_linux_handle_scsi_status._entry_ptr.108 = internal global ptr @ahc_linux_handle_scsi_status._entry.106, section ".printk_index", align 4
@ahc_linux_transport_functions = internal global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }, [56 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 } { ptr null, ptr @ahc_linux_set_period, ptr null, ptr @ahc_linux_set_offset, ptr null, ptr @ahc_linux_set_width, ptr null, ptr null, ptr null, ptr @ahc_linux_set_dt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahc_linux_get_signalling, ptr null, ptr null, i8 -24, i8 0 }, [56 x i8] zeroinitializer }, align 32
@switch.table.ahc_done = internal constant { [29 x i32], [44 x i8] } { [29 x i32] [i32 0, i32 0, i32 327680, i32 458752, i32 458752, i32 131072, i32 262144, i32 262144, i32 65536, i32 196608, i32 0, i32 524288, i32 393216, i32 458752, i32 458752, i32 458752, i32 458752, i32 458752, i32 458752, i32 458752, i32 524288, i32 458752, i32 458752, i32 458752, i32 458752, i32 458752, i32 458752, i32 458752, i32 851968], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 44, i64 46, i64 123, i64 125]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 16, i64 512]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 34, i64 40]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 20]
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 256, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [20 x i8] c"aic7xxx_allow_memio\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 301, i32 10 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 333, i32 1 }
@___asan_gen_.140 = private unnamed_addr constant [8 x i8] c"aic7xxx\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 328, i32 14 }
@___asan_gen_.143 = private unnamed_addr constant [24 x i8] c"aic7xxx_driver_template\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 775, i32 27 }
@___asan_gen_.146 = private unnamed_addr constant [15 x i8] c"ahc_linux_unit\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 380, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1096, i32 15 }
@___asan_gen_.152 = private unnamed_addr constant [29 x i8] c"ahc_linux_transport_template\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 127, i32 40 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1110, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"aic7xxx_seltime\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 313, i32 17 }
@___asan_gen_.167 = private unnamed_addr constant [19 x i8] c"aic7xxx_pci_parity\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 293, i32 17 }
@___asan_gen_.170 = private unnamed_addr constant [22 x i8] c"aic7xxx_periodic_otag\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 323, i32 17 }
@___asan_gen_.173 = private unnamed_addr constant [16 x i8] c"aic7xxx_verbose\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1066, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1663, i32 9 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1691, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1693, i32 9 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1723, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1779, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 477, i32 9 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 498, i32 14 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 506, i32 13 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 509, i32 13 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 513, i32 13 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 733, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2054, i32 14 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2054, i32 30 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2055, i32 29 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2055, i32 41 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2057, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2059, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2060, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2078, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2090, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2118, i32 31 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2140, i32 31 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2144, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2156, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2208, i32 31 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2271, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2274, i32 31 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2296, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2302, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2305, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 87, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 747, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 769, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 642, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 669, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1393, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1012, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1013, i32 5 }
@___asan_gen_.374 = private unnamed_addr constant [17 x i8] c"aic7xxx_extended\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 281, i32 17 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1014, i32 5 }
@___asan_gen_.380 = private unnamed_addr constant [17 x i8] c"aic7xxx_no_reset\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 274, i32 17 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1015, i32 5 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1016, i32 5 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1018, i32 5 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1020, i32 5 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1021, i32 5 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1022, i32 5 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1023, i32 5 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1024, i32 5 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1025, i32 5 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1036, i32 25 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 895, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [17 x i8] c"aic7xxx_tag_info\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 227, i32 27 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 954, i32 6 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 913, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [38 x i8] c"../drivers/scsi/aic7xxx/aic7xxx_osm.h\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 387, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant [12 x i8] c"warned_user\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1342, i32 13 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1350, i32 5 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1843, i32 5 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1847, i32 7 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1848, i32 6 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1850, i32 5 }
@___asan_gen_.482 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1892, i32 6 }
@___asan_gen_.488 = private unnamed_addr constant [30 x i8] c"ahc_linux_transport_functions\00", align 1
@___asan_gen_.489 = private constant [38 x i8] c"../drivers/scsi/aic7xxx/aic7xxx_osm.c\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 2526, i32 37 }
@___asan_gen_.491 = private unnamed_addr constant [22 x i8] c"switch.table.ahc_done\00", align 1
@llvm.compiler.used = appending global [168 x ptr] [ptr @__UNIQUE_ID_aic7xxx293, ptr @__UNIQUE_ID_aic7xxxtype292, ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__UNIQUE_ID_version291, ptr @__exitcall_ahc_linux_exit, ptr @__initcall__kmod_aic7xxx__296_2576_ahc_linux_init6, ptr @__modver_attr, ptr @__param_aic7xxx, ptr @__setup_aic7xxx_setup, ptr @ahc_done._entry, ptr @ahc_done._entry.13, ptr @ahc_done._entry.16, ptr @ahc_done._entry_ptr, ptr @ahc_done._entry_ptr.15, ptr @ahc_done._entry_ptr.18, ptr @ahc_linux_abort._entry, ptr @ahc_linux_abort._entry_ptr, ptr @ahc_linux_bus_reset._entry, ptr @ahc_linux_bus_reset._entry_ptr, ptr @ahc_linux_dev_reset._entry, ptr @ahc_linux_dev_reset._entry_ptr, ptr @ahc_linux_device_queue_depth._entry, ptr @ahc_linux_device_queue_depth._entry_ptr, ptr @ahc_linux_handle_scsi_status._entry, ptr @ahc_linux_handle_scsi_status._entry.101, ptr @ahc_linux_handle_scsi_status._entry.104, ptr @ahc_linux_handle_scsi_status._entry.106, ptr @ahc_linux_handle_scsi_status._entry.99, ptr @ahc_linux_handle_scsi_status._entry_ptr, ptr @ahc_linux_handle_scsi_status._entry_ptr.100, ptr @ahc_linux_handle_scsi_status._entry_ptr.103, ptr @ahc_linux_handle_scsi_status._entry_ptr.105, ptr @ahc_linux_handle_scsi_status._entry_ptr.108, ptr @ahc_linux_queue_recovery_cmd._entry, ptr @ahc_linux_queue_recovery_cmd._entry.31, ptr @ahc_linux_queue_recovery_cmd._entry.34, ptr @ahc_linux_queue_recovery_cmd._entry.36, ptr @ahc_linux_queue_recovery_cmd._entry.39, ptr @ahc_linux_queue_recovery_cmd._entry.44, ptr @ahc_linux_queue_recovery_cmd._entry.49, ptr @ahc_linux_queue_recovery_cmd._entry.53, ptr @ahc_linux_queue_recovery_cmd._entry.57, ptr @ahc_linux_queue_recovery_cmd._entry.60, ptr @ahc_linux_queue_recovery_cmd._entry.63, ptr @ahc_linux_queue_recovery_cmd._entry_ptr, ptr @ahc_linux_queue_recovery_cmd._entry_ptr.33, ptr @ahc_linux_queue_recovery_cmd._entry_ptr.35, ptr @ahc_linux_queue_recovery_cmd._entry_ptr.38, ptr @ahc_linux_queue_recovery_cmd._entry_ptr.41, ptr @ahc_linux_queue_recovery_cmd._entry_ptr.46, ptr @ahc_linux_queue_recovery_cmd._entry_ptr.51, ptr @ahc_linux_queue_recovery_cmd._entry_ptr.55, ptr @ahc_linux_queue_recovery_cmd._entry_ptr.59, ptr @ahc_linux_queue_recovery_cmd._entry_ptr.62, ptr @ahc_linux_queue_recovery_cmd._entry_ptr.65, ptr @ahc_linux_register_host._entry, ptr @ahc_linux_register_host._entry_ptr, ptr @ahc_linux_setup_tag_info._entry, ptr @ahc_linux_setup_tag_info._entry_ptr, ptr @ahc_linux_setup_tag_info_global._entry, ptr @ahc_linux_setup_tag_info_global._entry_ptr, ptr @ahc_linux_slave_alloc._entry, ptr @ahc_linux_slave_alloc._entry_ptr, ptr @ahc_linux_user_tagdepth._entry, ptr @ahc_linux_user_tagdepth._entry_ptr, ptr @ahc_parse_brace_option._entry, ptr @ahc_parse_brace_option._entry_ptr, ptr @ahc_print_path._entry, ptr @ahc_print_path._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @aic7xxx_allow_memio, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @aic7xxx, ptr @aic7xxx_driver_template, ptr @ahc_linux_unit, ptr @.str.6, ptr @ahc_linux_transport_template, ptr @.str.7, ptr @.str.8, ptr @aic7xxx_seltime, ptr @aic7xxx_pci_parity, ptr @aic7xxx_periodic_otag, ptr @aic7xxx_verbose, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @ahc_linux_info.buffer, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @init_completion.__key, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @aic7xxx_setup.options, ptr @.str.76, ptr @aic7xxx_extended, ptr @.str.77, ptr @aic7xxx_no_reset, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @aic7xxx_tag_info, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @ahc_lockinit.__key, ptr @.str.94, ptr @ahc_linux_user_tagdepth.warned_user, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.102, ptr @.str.107, ptr @ahc_linux_transport_functions, ptr @switch.table.ahc_done], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_print_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic7xxx_allow_memio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic7xxx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic7xxx_driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_unit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_transport_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_register_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic7xxx_seltime to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic7xxx_pci_parity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic7xxx_periodic_otag to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic7xxx_verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_done._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_done._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_info.buffer to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_queue_recovery_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_queue_recovery_cmd._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_queue_recovery_cmd._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_queue_recovery_cmd._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_queue_recovery_cmd._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_queue_recovery_cmd._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_queue_recovery_cmd._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_queue_recovery_cmd._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_queue_recovery_cmd._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_queue_recovery_cmd._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_queue_recovery_cmd._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_dev_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_bus_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_slave_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_device_queue_depth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic7xxx_setup.options to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic7xxx_extended to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic7xxx_no_reset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_setup_tag_info_global._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic7xxx_tag_info to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_parse_brace_option._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_setup_tag_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_lockinit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_user_tagdepth.warned_user to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_user_tagdepth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 198, i32 256, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_handle_scsi_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_handle_scsi_status._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_handle_scsi_status._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_handle_scsi_status._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_handle_scsi_status._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_transport_functions to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ahc_done to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahc_print_path(ptr nocapture noundef readonly %ahc, ptr noundef readonly %scb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 8
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 4
  %host = getelementptr inbounds %struct.ahc_platform_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %cmp.not = icmp eq ptr %scb, null
  br i1 %cmp.not, label %entry.cond.end32_crit_edge, label %cond.true

entry.cond.end32_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end32

cond.true:                                        ; preds = %entry
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %cond.true.cond.true27_crit_edge, label %cond.true2

cond.true.cond.true27_crit_edge:                  ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true27

cond.true2:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scb, align 4
  %scsiid = getelementptr inbounds %struct.hardware_scb, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %scsiid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %scsiid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp4.not = icmp sgt i8 %11, -1
  %cond = select i1 %cmp4.not, i32 65, i32 66
  br label %cond.true27

cond.true27:                                      ; preds = %cond.true2, %cond.true.cond.true27_crit_edge
  %cond9.ph = phi i32 [ 65, %cond.true.cond.true27_crit_edge ], [ %cond, %cond.true2 ]
  %12 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scb, align 4
  %scsiid14 = getelementptr inbounds %struct.hardware_scb, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %scsiid14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %scsiid14, align 1
  %conv15 = zext i8 %15 to i32
  %16 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %features, align 4
  %and17 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18.not = icmp eq i32 %and17, 0
  %cond20 = select i1 %cmp18.not, i32 240, i32 112
  %and21 = and i32 %cond20, %conv15
  %18 = lshr exact i32 %and21, 4
  %lun = getelementptr inbounds %struct.hardware_scb, ptr %13, i32 0, i32 6
  %19 = ptrtoint ptr %lun to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %lun, align 2
  %21 = and i8 %20, 63
  %and30 = zext i8 %21 to i32
  br label %cond.end32

cond.end32:                                       ; preds = %cond.true27, %entry.cond.end32_crit_edge
  %cond2447 = phi i32 [ %18, %cond.true27 ], [ -1, %entry.cond.end32_crit_edge ]
  %cond94346 = phi i32 [ %cond9.ph, %cond.true27 ], [ 88, %entry.cond.end32_crit_edge ]
  %cond33 = phi i32 [ %and30, %cond.true27 ], [ -1, %entry.cond.end32_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %cond94346, i32 noundef %cond2447, i32 noundef %cond33) #17
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahc_delay(i32 noundef %usec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %usec)
  %cmp14 = icmp sgt i32 %usec, 0
  br i1 %cmp14, label %while.body.preheader, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %0 = and i32 %usec, 1023
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %usec.addr.015 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %usec, %while.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %.val17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %.val17(i32 noundef %0) #14
  %sub = add nsw i32 %usec.addr.015, -1024
  %cmp = icmp sgt i32 %usec.addr.015, 1024
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @ahc_inb(ptr nocapture noundef readonly %ahc, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ahc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ahc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %bsh = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %bsh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsh, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %port
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !264
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %bsh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bsh, align 4
  %add = add i32 %6, %port
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %7 = inttoptr i32 %add4 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !265
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %x.0 = phi i8 [ %4, %if.then ], [ %8, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !266
  tail call void @arm_heavy_mb() #14
  ret i8 %x.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahc_outb(ptr nocapture noundef readonly %ahc, i32 noundef %port, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ahc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ahc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  %bsh = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 1
  br i1 %cmp, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %bsh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsh, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %port
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #14, !srcloc !267
  br label %do.body5

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %bsh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bsh, align 4
  %add = add i32 %5, %port
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %6 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %val) #14, !srcloc !267
  br label %do.body5

do.body5:                                         ; preds = %do.body1, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !268
  tail call void @arm_heavy_mb() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahc_outsb(ptr nocapture noundef readonly %ahc, i32 noundef %port, ptr nocapture noundef readonly %array, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2 = icmp sgt i32 %count, 0
  br i1 %cmp2, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bsh.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %ahc_outb.exit.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ahc_outb.exit.for.body_crit_edge ]
  %array.addr.03 = phi ptr [ %array, %for.body.lr.ph ], [ %incdec.ptr, %ahc_outb.exit.for.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %array.addr.03, i32 1
  %0 = ptrtoint ptr %array.addr.03 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %array.addr.03, align 1
  %2 = ptrtoint ptr %ahc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ahc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  br i1 %cmp.i, label %do.body.i, label %do.body1.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %bsh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %port
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %1) #14, !srcloc !267
  br label %ahc_outb.exit

do.body1.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %bsh.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bsh.i, align 4
  %add.i = add i32 %7, %port
  %and.i = and i32 %add.i, 1048575
  %add4.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %1) #14, !srcloc !267
  br label %ahc_outb.exit

ahc_outb.exit:                                    ; preds = %do.body1.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !268
  tail call void @arm_heavy_mb() #14
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %ahc_outb.exit.for.end_crit_edge, label %ahc_outb.exit.for.body_crit_edge

ahc_outb.exit.for.body_crit_edge:                 ; preds = %ahc_outb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

ahc_outb.exit.for.end_crit_edge:                  ; preds = %ahc_outb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %ahc_outb.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahc_insb(ptr nocapture noundef readonly %ahc, i32 noundef %port, ptr nocapture noundef writeonly %array, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2 = icmp sgt i32 %count, 0
  br i1 %cmp2, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bsh.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %ahc_inb.exit.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ahc_inb.exit.for.body_crit_edge ]
  %array.addr.03 = phi ptr [ %array, %for.body.lr.ph ], [ %incdec.ptr, %ahc_inb.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %ahc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ahc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %bsh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %port
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !264
  br label %ahc_inb.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %bsh.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bsh.i, align 4
  %add.i = add i32 %6, %port
  %and.i = and i32 %add.i, 1048575
  %add4.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add4.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !265
  br label %ahc_inb.exit

ahc_inb.exit:                                     ; preds = %if.else.i, %if.then.i
  %x.0.i = phi i8 [ %4, %if.then.i ], [ %8, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !266
  tail call void @arm_heavy_mb() #14
  %incdec.ptr = getelementptr i8, ptr %array.addr.03, i32 1
  %9 = ptrtoint ptr %array.addr.03 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %x.0.i, ptr %array.addr.03, align 1
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %ahc_inb.exit.for.end_crit_edge, label %ahc_inb.exit.for.body_crit_edge

ahc_inb.exit.for.body_crit_edge:                  ; preds = %ahc_inb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

ahc_inb.exit.for.end_crit_edge:                   ; preds = %ahc_inb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %ahc_inb.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_linux_queue(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #0 align 64 {
entry:
  %tstate.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #14
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %sdev_data.i.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 71
  %transportt.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %transportt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transportt.i.i, align 4
  %device_private_offset.i.i = getelementptr inbounds %struct.scsi_transport_template, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %device_private_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device_private_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %sdev_data.i.i, i32 %9
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %10 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hostdata.i, align 8
  %platform_data.i.i = getelementptr inbounds %struct.ahc_softc, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_data.i.i, align 4
  %spin_lock.i.i = getelementptr inbounds %struct.ahc_platform_data, ptr %13, i32 0, i32 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i.i) #14
  %14 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_data.i.i, align 4
  %qfrozen.i = getelementptr inbounds %struct.ahc_platform_data, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %qfrozen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qfrozen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %if.then.i, label %entry.ahc_linux_queue_lck.exit_crit_edge

entry.ahc_linux_queue_lck.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_linux_queue_lck.exit

if.then.i:                                        ; preds = %entry
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %18 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %result.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tstate.i.i) #14
  %19 = ptrtoint ptr %tstate.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate.i.i, align 4, !annotation !269
  %20 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platform_data.i.i, align 4
  %qfrozen.i.i = getelementptr inbounds %struct.ahc_platform_data, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %qfrozen.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qfrozen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i.i = icmp eq i32 %23, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.ahc_linux_run_command.exit.i_crit_edge

if.then.i.ahc_linux_run_command.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_linux_run_command.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %flags.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 25
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.end8.i.i_crit_edge

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %features.i.i = getelementptr inbounds %struct.ahc_softc, ptr %11, i32 0, i32 17
  %26 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %features.i.i, align 4
  %and1.i.i = and i32 %27, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp2.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp2.i.i, label %if.then3.i.i, label %land.lhs.true.i.i.if.end8.i.i_crit_edge

land.lhs.true.i.i.if.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i
  %28 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device.i, align 4
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id.i.i, align 8
  %channel.i.i = getelementptr inbounds %struct.scsi_device, ptr %29, i32 0, i32 17
  %32 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel.i.i, align 4
  %mul.i.i = shl i32 %33, 3
  %add.i.i = add i32 %mul.i.i, %31
  %arrayidx.i.i = getelementptr %struct.ahc_softc, ptr %11, i32 0, i32 6, i32 %add.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp5.i.i = icmp eq ptr %35, null
  br i1 %cmp5.i.i, label %if.then3.i.i.if.end8.i.i_crit_edge, label %if.then3.i.i.ahc_linux_run_command.exit.i_crit_edge

if.then3.i.i.ahc_linux_run_command.exit.i_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_linux_run_command.exit.i

if.then3.i.i.if.end8.i.i_crit_edge:               ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then3.i.i.if.end8.i.i_crit_edge, %land.lhs.true.i.i.if.end8.i.i_crit_edge, %if.end.i.i.if.end8.i.i_crit_edge
  %untagged_q.0.i.i = phi ptr [ null, %if.end.i.i.if.end8.i.i_crit_edge ], [ %arrayidx.i.i, %if.then3.i.i.if.end8.i.i_crit_edge ], [ null, %land.lhs.true.i.i.if.end8.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_dma_map(ptr noundef %cmd) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp9.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp9.i.i, label %if.end8.i.i.ahc_linux_run_command.exit.i_crit_edge, label %if.end11.i.i

if.end8.i.i.ahc_linux_run_command.exit.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_linux_run_command.exit.i

if.end11.i.i:                                     ; preds = %if.end8.i.i
  %call12.i.i = tail call ptr @ahc_get_scb(ptr noundef %11) #14
  %tobool13.not.i.i = icmp eq ptr %call12.i.i, null
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %if.end15.i.i

if.then14.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @scsi_dma_unmap(ptr noundef %cmd) #14
  br label %ahc_linux_run_command.exit.i

if.end15.i.i:                                     ; preds = %if.end11.i.i
  %io_ctx.i.i = getelementptr inbounds %struct.scb, ptr %call12.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %io_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %cmd, ptr %io_ctx.i.i, align 4
  %platform_data16.i.i = getelementptr inbounds %struct.scb, ptr %call12.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %platform_data16.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %platform_data16.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr.i.i, ptr %38, align 4
  %40 = ptrtoint ptr %call12.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call12.i.i, align 4
  %host_scribble.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 23
  %42 = ptrtoint ptr %host_scribble.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call12.i.i, ptr %host_scribble.i.i, align 4
  %control.i.i = getelementptr inbounds %struct.hardware_scb, ptr %41, i32 0, i32 4
  %43 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %control.i.i, align 4
  %44 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device.i, align 4
  %id20.i.i = getelementptr inbounds %struct.scsi_device, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %id20.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id20.i.i, align 8
  %shl.i.i = shl i32 %47, 4
  %channel23.i.i = getelementptr inbounds %struct.scsi_device, ptr %45, i32 0, i32 17
  %48 = ptrtoint ptr %channel23.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %channel23.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp24.i.i = icmp eq i32 %49, 0
  %our_id.i.i = getelementptr inbounds %struct.ahc_softc, ptr %11, i32 0, i32 31
  %our_id_b.i.i = getelementptr inbounds %struct.ahc_softc, ptr %11, i32 0, i32 32
  %cond.in.in.i.i = select i1 %cmp24.i.i, ptr %our_id.i.i, ptr %our_id_b.i.i
  %50 = ptrtoint ptr %cond.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %cond.in.i.i = load i8, ptr %cond.in.in.i.i, align 1
  %cond.i.i = zext i8 %cond.in.i.i to i32
  %or.i.i = or i32 %shl.i.i, %cond.i.i
  %cond30.i.i = select i1 %cmp24.i.i, i32 0, i32 128
  %or31.i.i = or i32 %or.i.i, %cond30.i.i
  %conv32.i.i = trunc i32 %or31.i.i to i8
  %scsiid.i.i = getelementptr inbounds %struct.hardware_scb, ptr %41, i32 0, i32 5
  %51 = ptrtoint ptr %scsiid.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv32.i.i, ptr %scsiid.i.i, align 1
  %52 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device.i, align 4
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %53, i32 0, i32 18
  %54 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %lun.i.i, align 8
  %conv34.i.i = trunc i64 %55 to i8
  %lun35.i.i = getelementptr inbounds %struct.hardware_scb, ptr %41, i32 0, i32 6
  %56 = ptrtoint ptr %lun35.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv34.i.i, ptr %lun35.i.i, align 2
  %57 = ptrtoint ptr %call12.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call12.i.i, align 4
  %scsiid37.i.i = getelementptr inbounds %struct.hardware_scb, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %scsiid37.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %scsiid37.i.i, align 1
  %conv38.i.i = zext i8 %60 to i32
  %features39.i.i = getelementptr inbounds %struct.ahc_softc, ptr %11, i32 0, i32 17
  %61 = ptrtoint ptr %features39.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %features39.i.i, align 4
  %and40.i.i = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %cmp41.not.i.i = icmp eq i32 %and40.i.i, 0
  %cond43.i.i = select i1 %cmp41.not.i.i, i32 240, i32 112
  %and44.i.i = and i32 %cond43.i.i, %conv38.i.i
  %63 = lshr exact i32 %and44.i.i, 4
  %and53.i.i = lshr i32 %conv38.i.i, 4
  %64 = and i32 %and53.i.i, 8
  %cond59.i.i = select i1 %cmp41.not.i.i, i32 0, i32 %64
  %add63.i.i = add nuw nsw i32 %63, %cond59.i.i
  %shl64.i.i = shl nuw nsw i32 1, %add63.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %60)
  %cmp75.not.i.i = icmp sgt i8 %60, -1
  %65 = select i1 %cmp41.not.i.i, i1 true, i1 %cmp75.not.i.i
  %cond80.i.i = select i1 %65, i8 65, i8 66
  %and85.i.i = and i32 %conv38.i.i, 15
  %call96.i.i = call ptr @ahc_fetch_transinfo(ptr noundef %11, i8 noundef zeroext %cond80.i.i, i32 noundef %and85.i.i, i32 noundef %63, ptr noundef nonnull %tstate.i.i) #14
  %66 = ptrtoint ptr %call96.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %call96.i.i, align 1
  %scsirate97.i.i = getelementptr inbounds %struct.hardware_scb, ptr %41, i32 0, i32 9
  %68 = ptrtoint ptr %scsirate97.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %scsirate97.i.i, align 1
  %offset.i.i = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call96.i.i, i32 0, i32 1, i32 4
  %69 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %offset.i.i, align 1
  %scsioffset.i.i = getelementptr inbounds %struct.hardware_scb, ptr %41, i32 0, i32 10
  %71 = ptrtoint ptr %scsioffset.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %scsioffset.i.i, align 2
  %72 = ptrtoint ptr %tstate.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tstate.i.i, align 4
  %ultraenb.i.i = getelementptr inbounds %struct.ahc_tmode_tstate, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %ultraenb.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %ultraenb.i.i, align 2
  %conv98.i.i = zext i16 %75 to i32
  %and100.i.i = and i32 %shl64.i.i, %conv98.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i.i)
  %cmp101.not.i.i = icmp eq i32 %and100.i.i, 0
  br i1 %cmp101.not.i.i, label %if.end15.i.i.if.end108.i.i_crit_edge, label %if.then103.i.i

if.end15.i.i.if.end108.i.i_crit_edge:             ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end108.i.i

if.then103.i.i:                                   ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %control.i.i, align 4
  %78 = or i8 %77, 8
  store i8 %78, ptr %control.i.i, align 4
  br label %if.end108.i.i

if.end108.i.i:                                    ; preds = %if.then103.i.i, %if.end15.i.i.if.end108.i.i_crit_edge
  %user_discenable.i.i = getelementptr inbounds %struct.ahc_softc, ptr %11, i32 0, i32 59
  %79 = ptrtoint ptr %user_discenable.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %user_discenable.i.i, align 4
  %conv109.i.i = zext i16 %80 to i32
  %and111.i.i = and i32 %shl64.i.i, %conv109.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i.i)
  %cmp112.not.i.i = icmp eq i32 %and111.i.i, 0
  br i1 %cmp112.not.i.i, label %if.end108.i.i.if.end119.i.i_crit_edge, label %if.then114.i.i

if.end108.i.i.if.end119.i.i_crit_edge:            ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119.i.i

if.then114.i.i:                                   ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %control.i.i, align 4
  %83 = or i8 %82, 64
  store i8 %83, ptr %control.i.i, align 4
  br label %if.end119.i.i

if.end119.i.i:                                    ; preds = %if.then114.i.i, %if.end108.i.i.if.end119.i.i_crit_edge
  %auto_negotiate.i.i = getelementptr inbounds %struct.ahc_tmode_tstate, ptr %73, i32 0, i32 2
  %84 = ptrtoint ptr %auto_negotiate.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %auto_negotiate.i.i, align 4
  %conv120.i.i = zext i16 %85 to i32
  %and122.i.i = and i32 %shl64.i.i, %conv120.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122.i.i)
  %cmp123.not.i.i = icmp eq i32 %and122.i.i, 0
  br i1 %cmp123.not.i.i, label %if.end119.i.i.if.end133.i.i_crit_edge, label %if.then125.i.i

if.end119.i.i.if.end133.i.i_crit_edge:            ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133.i.i

if.then125.i.i:                                   ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %flags126.i.i = getelementptr inbounds %struct.scb, ptr %call12.i.i, i32 0, i32 5
  %86 = ptrtoint ptr %flags126.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags126.i.i, align 4
  %or127.i.i = or i32 %87, 64
  store i32 %or127.i.i, ptr %flags126.i.i, align 4
  %88 = ptrtoint ptr %call12.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call12.i.i, align 4
  %control129.i.i = getelementptr inbounds %struct.hardware_scb, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %control129.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %control129.i.i, align 4
  %92 = or i8 %91, 16
  store i8 %92, ptr %control129.i.i, align 4
  br label %if.end133.i.i

if.end133.i.i:                                    ; preds = %if.then125.i.i, %if.end119.i.i.if.end133.i.i_crit_edge
  %flags134.i.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i, i32 0, i32 5
  %93 = ptrtoint ptr %flags134.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags134.i.i, align 4
  %and135.i.i = and i32 %94, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.i.i)
  %cmp136.not.i.i = icmp eq i32 %and135.i.i, 0
  br i1 %cmp136.not.i.i, label %if.end133.i.i.if.end157.i.i_crit_edge, label %if.then138.i.i

if.end133.i.i.if.end157.i.i_crit_edge:            ; preds = %if.end133.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end157.i.i

if.then138.i.i:                                   ; preds = %if.end133.i.i
  %commands_since_idle_or_otag.i.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i, i32 0, i32 9
  %95 = ptrtoint ptr %commands_since_idle_or_otag.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %commands_since_idle_or_otag.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %96)
  %cmp139.i.i = icmp ne i32 %96, 500
  %and143.i.i = and i32 %94, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143.i.i)
  %cmp144.not.i.i = icmp eq i32 %and143.i.i, 0
  %or.cond.i.i = select i1 %cmp139.i.i, i1 true, i1 %cmp144.not.i.i
  %97 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %control.i.i, align 4
  br i1 %or.cond.i.i, label %if.else.i.i, label %if.then146.i.i

if.then146.i.i:                                   ; preds = %if.then138.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %99 = or i8 %98, 34
  %100 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %control.i.i, align 4
  %101 = ptrtoint ptr %commands_since_idle_or_otag.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %commands_since_idle_or_otag.i.i, align 4
  br label %if.end157.i.i

if.else.i.i:                                      ; preds = %if.then138.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %102 = or i8 %98, 32
  %103 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %control.i.i, align 4
  br label %if.end157.i.i

if.end157.i.i:                                    ; preds = %if.else.i.i, %if.then146.i.i, %if.end133.i.i.if.end157.i.i_crit_edge
  %cmd_len.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %104 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %cmd_len.i.i, align 4
  %conv158.i.i = trunc i16 %105 to i8
  %cdb_len.i.i = getelementptr inbounds %struct.hardware_scb, ptr %41, i32 0, i32 8
  %106 = ptrtoint ptr %cdb_len.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv158.i.i, ptr %cdb_len.i.i, align 4
  %conv158.mask.i.i = and i16 %105, 255
  %conv160.i.i = zext i16 %conv158.mask.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %conv158.mask.i.i)
  %cmp161.i.i = icmp ult i16 %conv158.mask.i.i, 13
  br i1 %cmp161.i.i, label %if.then163.i.i, label %if.else166.i.i

if.then163.i.i:                                   ; preds = %if.end157.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %cmnd.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %107 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cmnd.i.i, align 4
  %109 = call ptr @memcpy(ptr %41, ptr %108, i32 %conv160.i.i)
  br label %if.end173.i.i

if.else166.i.i:                                   ; preds = %if.end157.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %cdb32.i.i = getelementptr inbounds %struct.hardware_scb, ptr %41, i32 0, i32 12
  %cmnd168.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %110 = ptrtoint ptr %cmnd168.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cmnd168.i.i, align 4
  %112 = call ptr @memcpy(ptr %cdb32.i.i, ptr %111, i32 %conv160.i.i)
  %flags171.i.i = getelementptr inbounds %struct.scb, ptr %call12.i.i, i32 0, i32 5
  %113 = ptrtoint ptr %flags171.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flags171.i.i, align 4
  %or172.i.i = or i32 %114, 16
  store i32 %or172.i.i, ptr %flags171.i.i, align 4
  br label %if.end173.i.i

if.end173.i.i:                                    ; preds = %if.else166.i.i, %if.then163.i.i
  %115 = ptrtoint ptr %platform_data16.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %platform_data16.i.i, align 4
  %xfer_len.i.i = getelementptr inbounds %struct.scb_platform_data, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %xfer_len.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %xfer_len.i.i, align 4
  %118 = ptrtoint ptr %io_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %io_ctx.i.i, align 4
  %resid_len.i.i.i.i = getelementptr inbounds %struct.scsi_request, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %resid_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %resid_len.i.i.i.i, align 4
  %121 = load ptr, ptr %platform_data16.i.i, align 4
  %sense_resid.i.i.i = getelementptr inbounds %struct.scb_platform_data, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %sense_resid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %sense_resid.i.i.i, align 4
  %sg_count.i.i = getelementptr inbounds %struct.scb, ptr %call12.i.i, i32 0, i32 10
  %123 = ptrtoint ptr %sg_count.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %sg_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp175.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp175.not.i.i, label %if.else195.i.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.end173.i.i
  %sg_list.i.i = getelementptr inbounds %struct.scb, ptr %call12.i.i, i32 0, i32 8
  %124 = ptrtoint ptr %sg_list.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %sg_list.i.i, align 4
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %126 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %sdb.i.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %ahc_linux_map_seg.exit.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.0367.i.i = phi i32 [ %inc.i.i, %ahc_linux_map_seg.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %cur_seg.0366.i.i = phi ptr [ %call184.i.i, %ahc_linux_map_seg.exit.i.i.for.body.i.i_crit_edge ], [ %127, %for.body.preheader.i.i ]
  %sg.0365.i.i = phi ptr [ %add.ptr.i10.i, %ahc_linux_map_seg.exit.i.i.for.body.i.i_crit_edge ], [ %125, %for.body.preheader.i.i ]
  %128 = ptrtoint ptr %sg_count.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %sg_count.i.i, align 4
  %130 = add i32 %129, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -129, i32 %130)
  %cmp.i.i.i = icmp ult i32 %130, -129
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %ahc_linux_map_seg.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.19) #18
  unreachable

ahc_linux_map_seg.exit.i.i:                       ; preds = %for.body.i.i
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %cur_seg.0366.i.i, i32 0, i32 4
  %131 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dma_length.i.i, align 4
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %cur_seg.0366.i.i, i32 0, i32 3
  %133 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dma_address.i.i, align 4
  %135 = call i32 @llvm.bswap.i32(i32 %134) #14
  %136 = ptrtoint ptr %sg.0365.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %sg.0365.i.i, align 4
  %137 = ptrtoint ptr %platform_data16.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %platform_data16.i.i, align 4
  %xfer_len.i.i.i = getelementptr inbounds %struct.scb_platform_data, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %xfer_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %xfer_len.i.i.i, align 4
  %add2.i.i.i = add i32 %140, %132
  store i32 %add2.i.i.i, ptr %xfer_len.i.i.i, align 4
  %141 = call i32 @llvm.bswap.i32(i32 %132) #14
  %len3.i.i.i = getelementptr inbounds %struct.ahc_dma_seg, ptr %sg.0365.i.i, i32 0, i32 1
  %142 = ptrtoint ptr %len3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %len3.i.i.i, align 4
  %add.ptr.i10.i = getelementptr %struct.ahc_dma_seg, ptr %sg.0365.i.i, i32 1
  %143 = ptrtoint ptr %sg_count.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %sg_count.i.i, align 4
  %add183.i.i = add i32 %144, 1
  store i32 %add183.i.i, ptr %sg_count.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.0367.i.i, 1
  %call184.i.i = call ptr @sg_next(ptr noundef %cur_seg.0366.i.i) #14
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %ahc_linux_map_seg.exit.i.i.for.body.i.i_crit_edge

ahc_linux_map_seg.exit.i.i.for.body.i.i_crit_edge: ; preds = %ahc_linux_map_seg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %ahc_linux_map_seg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %len3.i.i.i.le = getelementptr inbounds %struct.ahc_dma_seg, ptr %sg.0365.i.i, i32 0, i32 1
  %145 = ptrtoint ptr %len3.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %len3.i.i.i.le, align 4
  %or186.i.i = or i32 %146, 128
  store i32 %or186.i.i, ptr %len3.i.i.i.le, align 4
  %sg_list_phys.i.i = getelementptr inbounds %struct.scb, ptr %call12.i.i, i32 0, i32 9
  %147 = ptrtoint ptr %sg_list_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %sg_list_phys.i.i, align 4
  %or187.i.i = or i32 %148, 2
  %149 = call i32 @llvm.bswap.i32(i32 %or187.i.i) #14
  %150 = ptrtoint ptr %call12.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %call12.i.i, align 4
  %sgptr.i.i = getelementptr inbounds %struct.hardware_scb, ptr %151, i32 0, i32 3
  %152 = ptrtoint ptr %sgptr.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %149, ptr %sgptr.i.i, align 4
  %153 = ptrtoint ptr %sg_list.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %sg_list.i.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 4
  %157 = load ptr, ptr %call12.i.i, align 4
  %dataptr.i.i = getelementptr inbounds %struct.hardware_scb, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %dataptr.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %156, ptr %dataptr.i.i, align 4
  %159 = load ptr, ptr %sg_list.i.i, align 4
  %len193.i.i = getelementptr inbounds %struct.ahc_dma_seg, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %len193.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %len193.i.i, align 4
  %162 = load ptr, ptr %call12.i.i, align 4
  %datacnt.i.i = getelementptr inbounds %struct.hardware_scb, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %datacnt.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %161, ptr %datacnt.i.i, align 4
  br label %do.body.i.i

if.else195.i.i:                                   ; preds = %if.end173.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %164 = ptrtoint ptr %call12.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %call12.i.i, align 4
  %sgptr197.i.i = getelementptr inbounds %struct.hardware_scb, ptr %165, i32 0, i32 3
  %166 = ptrtoint ptr %sgptr197.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 16777216, ptr %sgptr197.i.i, align 4
  %167 = load ptr, ptr %call12.i.i, align 4
  %dataptr199.i.i = getelementptr inbounds %struct.hardware_scb, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %dataptr199.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %dataptr199.i.i, align 4
  %169 = load ptr, ptr %call12.i.i, align 4
  %datacnt201.i.i = getelementptr inbounds %struct.hardware_scb, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %datacnt201.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %datacnt201.i.i, align 4
  %171 = ptrtoint ptr %sg_count.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %sg_count.i.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.else195.i.i, %for.end.i.i
  %pending_scbs.i.i = getelementptr inbounds %struct.ahc_softc, ptr %11, i32 0, i32 4
  %172 = ptrtoint ptr %pending_scbs.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pending_scbs.i.i, align 4
  %pending_links.i.i = getelementptr inbounds %struct.scb, ptr %call12.i.i, i32 0, i32 2
  %174 = ptrtoint ptr %pending_links.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %173, ptr %pending_links.i.i, align 4
  %cmp204.not.i.i = icmp eq ptr %173, null
  br i1 %cmp204.not.i.i, label %do.body.i.i.if.end212.i.i_crit_edge, label %if.then206.i.i

do.body.i.i.if.end212.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end212.i.i

if.then206.i.i:                                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %175 = ptrtoint ptr %pending_scbs.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pending_scbs.i.i, align 4
  %le_prev.i.i = getelementptr inbounds %struct.scb, ptr %176, i32 0, i32 2, i32 1
  %177 = ptrtoint ptr %le_prev.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %pending_links.i.i, ptr %le_prev.i.i, align 4
  br label %if.end212.i.i

if.end212.i.i:                                    ; preds = %if.then206.i.i, %do.body.i.i.if.end212.i.i_crit_edge
  %178 = ptrtoint ptr %pending_scbs.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %call12.i.i, ptr %pending_scbs.i.i, align 4
  %le_prev218.i.i = getelementptr inbounds %struct.scb, ptr %call12.i.i, i32 0, i32 2, i32 1
  %179 = ptrtoint ptr %le_prev218.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %pending_scbs.i.i, ptr %le_prev218.i.i, align 4
  %openings.i.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i, i32 0, i32 1
  %180 = ptrtoint ptr %openings.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %openings.i.i, align 4
  %dec.i.i = add i32 %181, -1
  store i32 %dec.i.i, ptr %openings.i.i, align 4
  %182 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %add.ptr.i.i, align 4
  %inc219.i.i = add i32 %183, 1
  store i32 %inc219.i.i, ptr %add.ptr.i.i, align 4
  %commands_issued.i.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i, i32 0, i32 3
  %184 = ptrtoint ptr %commands_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %commands_issued.i.i, align 4
  %inc220.i.i = add i32 %185, 1
  store i32 %inc220.i.i, ptr %commands_issued.i.i, align 4
  %186 = ptrtoint ptr %flags134.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %flags134.i.i, align 4
  %and222.i.i = and i32 %187, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222.i.i)
  %cmp223.not.i.i = icmp eq i32 %and222.i.i, 0
  br i1 %cmp223.not.i.i, label %if.end212.i.i.if.end228.i.i_crit_edge, label %if.then225.i.i

if.end212.i.i.if.end228.i.i_crit_edge:            ; preds = %if.end212.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end228.i.i

if.then225.i.i:                                   ; preds = %if.end212.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %commands_since_idle_or_otag226.i.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i, i32 0, i32 9
  %188 = ptrtoint ptr %commands_since_idle_or_otag226.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %commands_since_idle_or_otag226.i.i, align 4
  %inc227.i.i = add i32 %189, 1
  store i32 %inc227.i.i, ptr %commands_since_idle_or_otag226.i.i, align 4
  br label %if.end228.i.i

if.end228.i.i:                                    ; preds = %if.then225.i.i, %if.end212.i.i.if.end228.i.i_crit_edge
  %flags229.i.i = getelementptr inbounds %struct.scb, ptr %call12.i.i, i32 0, i32 5
  %190 = ptrtoint ptr %flags229.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %flags229.i.i, align 4
  %or230.i.i = or i32 %191, 1024
  store i32 %or230.i.i, ptr %flags229.i.i, align 4
  %tobool231.not.i.i = icmp eq ptr %untagged_q.0.i.i, null
  br i1 %tobool231.not.i.i, label %if.end228.i.i.if.end243.i.i_crit_edge, label %do.body233.i.i

if.end228.i.i.if.end243.i.i_crit_edge:            ; preds = %if.end228.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end243.i.i

do.body233.i.i:                                   ; preds = %if.end228.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %links.i.i = getelementptr inbounds %struct.scb, ptr %call12.i.i, i32 0, i32 1
  %192 = ptrtoint ptr %links.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr null, ptr %links.i.i, align 4
  %tqh_last.i.i = getelementptr inbounds %struct.scb_tailq, ptr %untagged_q.0.i.i, i32 0, i32 1
  %193 = ptrtoint ptr %tqh_last.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %tqh_last.i.i, align 4
  %tqe_prev.i.i = getelementptr inbounds %struct.scb, ptr %call12.i.i, i32 0, i32 1, i32 0, i32 1
  %195 = ptrtoint ptr %tqe_prev.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %194, ptr %tqe_prev.i.i, align 4
  %196 = load ptr, ptr %tqh_last.i.i, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call12.i.i, ptr %196, align 4
  store ptr %links.i.i, ptr %tqh_last.i.i, align 4
  %198 = ptrtoint ptr %flags229.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %flags229.i.i, align 4
  %or242.i.i = or i32 %199, 512
  store i32 %or242.i.i, ptr %flags229.i.i, align 4
  br label %if.end243.i.i

if.end243.i.i:                                    ; preds = %do.body233.i.i, %if.end228.i.i.if.end243.i.i_crit_edge
  call void @ahc_queue_scb(ptr noundef %11, ptr noundef %call12.i.i) #14
  br label %ahc_linux_run_command.exit.i

ahc_linux_run_command.exit.i:                     ; preds = %if.end243.i.i, %if.then14.i.i, %if.end8.i.i.ahc_linux_run_command.exit.i_crit_edge, %if.then3.i.i.ahc_linux_run_command.exit.i_crit_edge, %if.then.i.ahc_linux_run_command.exit.i_crit_edge
  %retval.1.i.i = phi i32 [ 0, %if.end243.i.i ], [ 4181, %if.then14.i.i ], [ 4182, %if.then3.i.i.ahc_linux_run_command.exit.i_crit_edge ], [ 4181, %if.then.i.ahc_linux_run_command.exit.i_crit_edge ], [ 4181, %if.end8.i.i.ahc_linux_run_command.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate.i.i) #14
  br label %ahc_linux_queue_lck.exit

ahc_linux_queue_lck.exit:                         ; preds = %ahc_linux_run_command.exit.i, %entry.ahc_linux_queue_lck.exit_crit_edge
  %rtn.0.i = phi i32 [ %retval.1.i.i, %ahc_linux_run_command.exit.i ], [ 4181, %entry.ahc_linux_queue_lck.exit_crit_edge ]
  %200 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %platform_data.i.i, align 4
  %spin_lock.i12.i = getelementptr inbounds %struct.ahc_platform_data, ptr %201, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i12.i, i32 noundef %call2.i.i) #14
  %202 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %203, i32 noundef %call2) #14
  ret i32 %rtn.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal nonnull ptr @ahc_linux_info(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  %ahc_info = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ahc_info) #14
  %0 = call ptr @memset(ptr %ahc_info, i32 255, i32 256)
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 53
  %1 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hostdata, align 8
  %3 = call ptr @memset(ptr getelementptr inbounds ([512 x i8], ptr @ahc_linux_info.buffer, i32 0, i32 64), i32 0, i32 448)
  %4 = call ptr @memcpy(ptr @ahc_linux_info.buffer, ptr @.str.20, i32 64)
  %description = getelementptr inbounds %struct.ahc_softc, ptr %2, i32 0, i32 54
  %5 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %description, align 4
  %call1 = tail call ptr @strcat(ptr noundef nonnull @ahc_linux_info.buffer, ptr noundef %6)
  %strlen = tail call i32 @strlen(ptr nonnull @ahc_linux_info.buffer) #19
  %endptr = getelementptr i8, ptr @ahc_linux_info.buffer, i32 %strlen
  %7 = call ptr @memcpy(ptr %endptr, ptr @.str.21, i32 11)
  call void @ahc_controller_info(ptr noundef %2, ptr noundef nonnull %ahc_info) #14
  %call5 = call ptr @strcat(ptr noundef nonnull @ahc_linux_info.buffer, ptr noundef nonnull %ahc_info)
  %strlen14 = call i32 @strlen(ptr nonnull @ahc_linux_info.buffer) #19
  %endptr15 = getelementptr i8, ptr @ahc_linux_info.buffer, i32 %strlen14
  %8 = ptrtoint ptr %endptr15 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 2560, ptr %endptr15, align 1
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ahc_info) #14
  ret ptr @ahc_linux_info.buffer
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_linux_abort(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ahc_linux_queue_recovery_cmd(ptr noundef %cmd, i32 noundef 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %call)
  %cmp.not = icmp eq i32 %call, 8194
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef 8195) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_linux_dev_reset(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ahc_linux_queue_recovery_cmd(ptr noundef %cmd, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %call)
  %cmp.not = icmp eq i32 %call, 8194
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef 8195) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_linux_bus_reset(ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata, align 8
  %platform_data.i = getelementptr inbounds %struct.ahc_softc, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahc_platform_data, ptr %7, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel.i, align 4
  %12 = trunc i32 %11 to i8
  %conv = add i8 %12, 65
  %call2 = tail call i32 @ahc_reset_channel(ptr noundef %5, i8 noundef zeroext %conv, i32 noundef 1) #14
  %13 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i10 = getelementptr inbounds %struct.ahc_platform_data, ptr %14, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i10, i32 noundef %call2.i) #14
  %15 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.ahc_softc, ptr %5, i32 0, i32 55
  %16 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name.i, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %17, i32 noundef %call2) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 8194
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_linux_slave_alloc(ptr nocapture noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev_target = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 37
  %0 = ptrtoint ptr %sdev_target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev_target, align 8
  %2 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdev, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 53
  %5 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hostdata, align 8
  %name.i = getelementptr inbounds %struct.ahc_softc, ptr %6, i32 0, i32 55
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %8, i32 noundef %10) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev, align 8
  %sdev_data.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 71
  %transportt.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %transportt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transportt.i, align 4
  %device_private_offset.i = getelementptr inbounds %struct.scsi_transport_template, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %device_private_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device_private_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %sdev_data.i, i32 %16
  %17 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 40)
  %openings = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i, i32 0, i32 1
  %18 = ptrtoint ptr %openings to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %openings, align 4
  %starget_data = getelementptr inbounds %struct.scsi_target, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %starget_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %starget_data, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_linux_slave_configure(ptr noundef %sdev) #0 align 64 {
entry:
  %devinfo.i = alloca %struct.ahc_devinfo, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.25, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.73) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo.i) #14
  %1 = call ptr @memset(ptr %devinfo.i, i32 255, i32 28)
  %2 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i, align 8
  %sdev_target.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 37
  %6 = ptrtoint ptr %sdev_target.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev_target.i, align 8
  %channel.i = getelementptr inbounds %struct.scsi_target, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %our_id.i = getelementptr inbounds %struct.ahc_softc, ptr %5, i32 0, i32 31
  %our_id_b.i = getelementptr inbounds %struct.ahc_softc, ptr %5, i32 0, i32 32
  %cond.in.in.i = select i1 %cmp.i, ptr %our_id.i, ptr %our_id_b.i
  %10 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %cond.in.i = load i8, ptr %cond.in.in.i, align 1
  %cond.i = zext i8 %cond.in.i to i32
  %id.i = getelementptr inbounds %struct.scsi_target, ptr %7, i32 0, i32 6
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 8
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %13 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %lun.i, align 8
  %conv3.i = trunc i64 %14 to i32
  %conv9.i = select i1 %cmp.i, i8 65, i8 66
  call void @ahc_compile_devinfo(ptr noundef nonnull %devinfo.i, i32 noundef %cond.i, i32 noundef %12, i32 noundef %conv3.i, i8 noundef zeroext %conv9.i, i32 noundef 1) #14
  %user_discenable.i.i = getelementptr inbounds %struct.ahc_softc, ptr %5, i32 0, i32 59
  %15 = ptrtoint ptr %user_discenable.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %user_discenable.i.i, align 4
  %target_mask.i.i = getelementptr inbounds %struct.ahc_devinfo, ptr %devinfo.i, i32 0, i32 2
  %17 = ptrtoint ptr %target_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %target_mask.i.i, align 4
  %and22.i.i = and i16 %18, %16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and22.i.i)
  %cmp.not.i.i = icmp eq i16 %and22.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.if.else.i_crit_edge, label %if.then.i.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.then.i.i:                                      ; preds = %if.end
  %unit.i.i = getelementptr inbounds %struct.ahc_softc, ptr %5, i32 0, i32 56
  %19 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %unit.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %20)
  %cmp3.i.i = icmp ugt i32 %20, 15
  br i1 %cmp3.i.i, label %if.then5.i.i, label %ahc_linux_user_tagdepth.exit.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  %21 = load i32, ptr @ahc_linux_user_tagdepth.warned_user, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp6.i.i = icmp eq i32 %21, 0
  br i1 %cmp6.i.i, label %do.end.i.i, label %if.then5.i.i.land.lhs.true.i_crit_edge

if.then5.i.i.land.lhs.true.i_crit_edge:           ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.i.i:                                       ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #17
  %22 = load i32, ptr @ahc_linux_user_tagdepth.warned_user, align 4
  %inc.i.i = add i32 %22, 1
  store i32 %inc.i.i, ptr @ahc_linux_user_tagdepth.warned_user, align 4
  br label %land.lhs.true.i

ahc_linux_user_tagdepth.exit.i:                   ; preds = %if.then.i.i
  %arrayidx.i.i = getelementptr [16 x %struct.adapter_tag_info_t], ptr @aic7xxx_tag_info, i32 0, i32 %20
  %target_offset.i.i = getelementptr inbounds %struct.ahc_devinfo, ptr %devinfo.i, i32 0, i32 1
  %23 = ptrtoint ptr %target_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %target_offset.i.i, align 4
  %arrayidx10.i.i = getelementptr [16 x i8], ptr %arrayidx.i.i, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx10.i.i, align 1
  %27 = call i8 @llvm.umin.i8(i8 %26, i8 -3) #14
  %28 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp10.not.i = icmp eq i8 %27, 0
  br i1 %cmp10.not.i, label %ahc_linux_user_tagdepth.exit.i.if.else.i_crit_edge, label %ahc_linux_user_tagdepth.exit.i.land.lhs.true.i_crit_edge

ahc_linux_user_tagdepth.exit.i.land.lhs.true.i_crit_edge: ; preds = %ahc_linux_user_tagdepth.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

ahc_linux_user_tagdepth.exit.i.if.else.i_crit_edge: ; preds = %ahc_linux_user_tagdepth.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %ahc_linux_user_tagdepth.exit.i.land.lhs.true.i_crit_edge, %do.end.i.i, %if.then5.i.i.land.lhs.true.i_crit_edge
  %tags.0.i40.i = phi i32 [ %28, %ahc_linux_user_tagdepth.exit.i.land.lhs.true.i_crit_edge ], [ 253, %do.end.i.i ], [ 253, %if.then5.i.i.land.lhs.true.i_crit_edge ]
  %tagged_supported.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %29 = ptrtoint ptr %tagged_supported.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %bf.load.i = load i64, ptr %tagged_supported.i, align 4
  %30 = and i64 %bf.load.i, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %cmp12.not.i = icmp eq i64 %30, 0
  br i1 %cmp12.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @ahc_platform_set_tags(ptr noundef %5, ptr noundef %sdev, ptr noundef nonnull %devinfo.i, i32 noundef 2) #14
  %channel14.i = getelementptr inbounds %struct.ahc_devinfo, ptr %devinfo.i, i32 0, i32 5
  %31 = ptrtoint ptr %channel14.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %channel14.i, align 4
  %target.i = getelementptr inbounds %struct.ahc_devinfo, ptr %devinfo.i, i32 0, i32 3
  %33 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %target.i, align 4
  %lun15.i = getelementptr inbounds %struct.ahc_devinfo, ptr %devinfo.i, i32 0, i32 4
  %35 = ptrtoint ptr %lun15.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lun15.i, align 4
  call void @ahc_send_async(ptr noundef %5, i8 noundef zeroext %32, i32 noundef %34, i32 noundef %36, i32 noundef 512) #14
  call void @ahc_print_devinfo(ptr noundef %5, ptr noundef nonnull %devinfo.i) #14
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %tags.0.i40.i) #17
  br label %ahc_linux_device_queue_depth.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %ahc_linux_user_tagdepth.exit.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %cmp.i.i = icmp eq ptr %sdev, null
  br i1 %cmp.i.i, label %if.else.i.ahc_platform_set_tags.exit.i_crit_edge, label %if.end.i.i

if.else.i.ahc_platform_set_tags.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_platform_set_tags.exit.i

if.end.i.i:                                       ; preds = %if.else.i
  %37 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sdev, align 8
  %sdev_data.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 71
  %transportt.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 12
  %39 = ptrtoint ptr %transportt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %transportt.i.i.i, align 4
  %device_private_offset.i.i.i = getelementptr inbounds %struct.scsi_transport_template, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %device_private_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %device_private_offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %sdev_data.i.i.i, i32 %42
  %flags.i.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %44, 48
  %and4.i.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %cmp5.i.i = icmp ne i32 %and4.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp6.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp6.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge, label %land.lhs.true7.i.i

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i.i

land.lhs.true7.i.i:                               ; preds = %if.end.i.i
  %45 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp8.not.i.i = icmp eq i32 %46, 0
  br i1 %cmp8.not.i.i, label %land.lhs.true7.i.i.cleanup.sink.split.i.i_crit_edge, label %if.then9.i.i

land.lhs.true7.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i.i = or i32 %44, 2
  %47 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i.i, ptr %flags.i.i, align 4
  %qfrozen.i.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %qfrozen.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qfrozen.i.i, align 4
  %inc.i36.i = add i32 %49, 1
  store i32 %inc.i36.i, ptr %qfrozen.i.i, align 4
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then9.i.i, %land.lhs.true7.i.i.cleanup.sink.split.i.i_crit_edge, %if.end.i.i.cleanup.sink.split.i.i_crit_edge
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i.i, align 4
  %and13.i.i = and i32 %51, -113
  store i32 %and13.i.i, ptr %flags.i.i, align 4
  %maxtags40.i.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 6
  %52 = ptrtoint ptr %maxtags40.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %maxtags40.i.i, align 4
  %53 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i.i, align 4
  %sub42.i.i = sub i32 1, %54
  %openings43.i.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %openings43.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub42.i.i, ptr %openings43.i.i, align 4
  %call50.i.i = call i32 @scsi_change_queue_depth(ptr noundef nonnull %sdev, i32 noundef 2) #14
  br label %ahc_platform_set_tags.exit.i

ahc_platform_set_tags.exit.i:                     ; preds = %cleanup.sink.split.i.i, %if.else.i.ahc_platform_set_tags.exit.i_crit_edge
  %channel17.i = getelementptr inbounds %struct.ahc_devinfo, ptr %devinfo.i, i32 0, i32 5
  %56 = ptrtoint ptr %channel17.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %channel17.i, align 4
  %target18.i = getelementptr inbounds %struct.ahc_devinfo, ptr %devinfo.i, i32 0, i32 3
  %58 = ptrtoint ptr %target18.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %target18.i, align 4
  %lun19.i = getelementptr inbounds %struct.ahc_devinfo, ptr %devinfo.i, i32 0, i32 4
  %60 = ptrtoint ptr %lun19.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lun19.i, align 4
  call void @ahc_send_async(ptr noundef %5, i8 noundef zeroext %57, i32 noundef %59, i32 noundef %61, i32 noundef 512) #14
  br label %ahc_linux_device_queue_depth.exit

ahc_linux_device_queue_depth.exit:                ; preds = %ahc_platform_set_tags.exit.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo.i) #14
  %62 = ptrtoint ptr %sdev_target.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sdev_target.i, align 8
  %initial_dv = getelementptr inbounds %struct.scsi_target, ptr %63, i32 1, i32 2
  %64 = ptrtoint ptr %initial_dv to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load = load i16, ptr %initial_dv, align 4
  %65 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool1.not = icmp eq i16 %65, 0
  br i1 %tobool1.not, label %if.then2, label %ahc_linux_device_queue_depth.exit.if.end3_crit_edge

ahc_linux_device_queue_depth.exit.if.end3_crit_edge: ; preds = %ahc_linux_device_queue_depth.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %ahc_linux_device_queue_depth.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @spi_dv_device(ptr noundef %sdev) #14
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %ahc_linux_device_queue_depth.exit.if.end3_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_linux_target_alloc(ptr noundef %starget) #0 align 64 {
entry:
  %devinfo = alloca %struct.ahc_devinfo, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %dev, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  %seep_config = getelementptr inbounds %struct.ahc_softc, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %seep_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %seep_config, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %dev_to_shost.exit
  %dev.addr.0.i.i = phi ptr [ %dev, %dev_to_shost.exit ], [ %7, %while.body.i.i.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.ahc_linux_target_in_softc.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i

while.body.i.i.ahc_linux_target_in_softc.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_linux_target_in_softc.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %ahc_linux_target_in_softc.exit

ahc_linux_target_in_softc.exit:                   ; preds = %while.end.i.i, %while.body.i.i.ahc_linux_target_in_softc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ null, %while.body.i.i.ahc_linux_target_in_softc.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 0, i32 53
  %8 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hostdata.i, align 8
  %id.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 8
  %channel.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 5
  %12 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  %add.i = add i32 %11, 8
  %spec.select.i = select i1 %cmp.not.i, i32 %11, i32 %add.i
  %platform_data.i = getelementptr inbounds %struct.ahc_softc, ptr %9, i32 0, i32 8
  %14 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_data.i, align 4
  %arrayidx.i = getelementptr [16 x ptr], ptr %15, i32 0, i32 %spec.select.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo) #14
  %16 = call ptr @memset(ptr %devinfo, i32 255, i32 28)
  %our_id3 = getelementptr inbounds %struct.ahc_softc, ptr %3, i32 0, i32 31
  %our_id_b = getelementptr inbounds %struct.ahc_softc, ptr %3, i32 0, i32 32
  %spec.select = select i1 %cmp.not.i, ptr %our_id3, ptr %our_id_b
  %17 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %17)
  %our_id.0.in = load i8, ptr %spec.select, align 1
  %platform_data.i106 = getelementptr inbounds %struct.ahc_softc, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %platform_data.i106 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %platform_data.i106, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahc_platform_data, ptr %19, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %cmp12.not = icmp eq ptr %21, null
  br i1 %cmp12.not, label %do.end23, label %do.body17, !prof !270

do.body17:                                        ; preds = %ahc_linux_target_in_softc.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic7xxx/aic7xxx_osm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 579, 0\0A.popsection", ""() #14, !srcloc !271
  unreachable

do.end23:                                         ; preds = %ahc_linux_target_in_softc.exit
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %starget, ptr %arrayidx.i, align 4
  %tobool24.not = icmp eq ptr %5, null
  br i1 %tobool24.not, label %do.end23.if.end71_crit_edge, label %if.then25

do.end23.if.end71_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then25:                                        ; preds = %do.end23
  %arrayidx = getelementptr [16 x i16], ptr %5, i32 0, i32 %spec.select.i
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx, align 2
  %conv27 = zext i16 %24 to i32
  %flags28 = getelementptr inbounds %struct.ahc_softc, ptr %3, i32 0, i32 19
  %25 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags28, align 4
  %and = and i32 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end39, label %if.then30

if.then30:                                        ; preds = %if.then25
  %and31 = and i32 %conv27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then30.if.end46_crit_edge, label %if.then30.land.lhs.true_crit_edge

if.then30.land.lhs.true_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.then30.if.end46_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.end39:                                         ; preds = %if.then25
  %and35 = and i32 %conv27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end39.if.end46_crit_edge, label %if.end39.land.lhs.true_crit_edge

if.end39.land.lhs.true_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end39.land.lhs.true_crit_edge, %if.then30.land.lhs.true_crit_edge
  %and41 = and i32 %conv27, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and41)
  %cmp42 = icmp eq i32 %and41, 4
  br i1 %cmp42, label %if.then44, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %and45 = and i32 %conv27, 65528
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %land.lhs.true.if.end46_crit_edge, %if.end39.if.end46_crit_edge, %if.then30.if.end46_crit_edge
  %tobool57.not = phi i32 [ 6, %if.then44 ], [ 3, %land.lhs.true.if.end46_crit_edge ], [ 6, %if.end39.if.end46_crit_edge ], [ 6, %if.then30.if.end46_crit_edge ]
  %tobool52.not = phi i32 [ 0, %if.then44 ], [ 8, %land.lhs.true.if.end46_crit_edge ], [ 0, %if.end39.if.end46_crit_edge ], [ 0, %if.then30.if.end46_crit_edge ]
  %flags26.0 = phi i32 [ %and45, %if.then44 ], [ %conv27, %land.lhs.true.if.end46_crit_edge ], [ %conv27, %if.end39.if.end46_crit_edge ], [ %conv27, %if.then30.if.end46_crit_edge ]
  %features = getelementptr inbounds %struct.ahc_softc, ptr %3, i32 0, i32 17
  %27 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %features, align 4
  %and47 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %cmp48.not = icmp eq i32 %and47, 0
  %and51 = and i32 %flags26.0, 7
  %or = or i32 %and51, %tobool52.not
  %29 = shl nuw nsw i32 %flags26.0, 4
  %conv56 = and i32 %29, 112
  %scsirate.0 = select i1 %cmp48.not, i32 %conv56, i32 %or
  %maxsync.0 = select i1 %cmp48.not, i32 %tobool57.not, i32 0
  %max_width = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %30 = trunc i32 %flags26.0 to i16
  %31 = ptrtoint ptr %max_width to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load = load i16, ptr %max_width, align 4
  %32 = shl i16 %30, 9
  %bf.shl = and i16 %32, 16384
  %bf.clear = and i16 %bf.load, -16385
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %max_width, align 4
  %and63 = and i32 %flags26.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.then65, label %if.end46.if.end67_crit_edge

if.end46.if.end67_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then65:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %max_offset = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1, i32 1
  %33 = ptrtoint ptr %max_offset to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %max_offset, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end46.if.end67_crit_edge
  %call69 = tail call i32 @ahc_find_period(ptr noundef %3, i32 noundef %scsirate.0, i32 noundef %maxsync.0) #14
  %min_period = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1
  %34 = ptrtoint ptr %min_period to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call69, ptr %min_period, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end67, %do.end23.if.end71_crit_edge
  %our_id.0 = zext i8 %our_id.0.in to i32
  %35 = trunc i32 %13 to i8
  %conv = add i8 %35, 65
  %36 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id.i, align 8
  call void @ahc_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %our_id.0, i32 noundef %37, i32 noundef -1, i8 noundef zeroext %conv, i32 noundef 1) #14
  call void @ahc_set_syncrate(ptr noundef %3, ptr noundef nonnull %devinfo, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #14
  call void @ahc_set_width(ptr noundef %3, ptr noundef nonnull %devinfo, i32 noundef 0, i32 noundef 4, i32 noundef 0) #14
  %38 = ptrtoint ptr %platform_data.i106 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %platform_data.i106, align 4
  %spin_lock.i108 = getelementptr inbounds %struct.ahc_platform_data, ptr %39, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i108, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahc_linux_target_destroy(ptr noundef %starget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  %dev.addr.0.i.i = phi ptr [ %dev.i, %entry ], [ %1, %while.body.i.i.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.ahc_linux_target_in_softc.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i

while.body.i.i.ahc_linux_target_in_softc.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_linux_target_in_softc.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %ahc_linux_target_in_softc.exit

ahc_linux_target_in_softc.exit:                   ; preds = %while.end.i.i, %while.body.i.i.ahc_linux_target_in_softc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ null, %while.body.i.i.ahc_linux_target_in_softc.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 8
  %id.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 8
  %channel.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 5
  %6 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  %add.i = add i32 %5, 8
  %spec.select.i = select i1 %cmp.not.i, i32 %5, i32 %add.i
  %platform_data.i = getelementptr inbounds %struct.ahc_softc, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i, align 4
  %arrayidx.i = getelementptr [16 x ptr], ptr %9, i32 0, i32 %spec.select.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_linux_show_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_proc_write_seeprom(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_dma_tag_create(ptr nocapture noundef readnone %ahc, ptr nocapture noundef readnone %parent, i32 noundef %alignment, i32 noundef %boundary, i32 noundef %lowaddr, i32 noundef %highaddr, ptr nocapture noundef readnone %filter, ptr nocapture noundef readnone %filterarg, i32 noundef %maxsize, i32 noundef %nsegments, i32 noundef %maxsegsz, i32 noundef %flags, ptr nocapture noundef writeonly %ret_tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 12) #20
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %alignment, ptr %call7.i, align 8
  %boundary2 = getelementptr inbounds %struct.ahc_linux_dma_tag, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %boundary2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %boundary, ptr %boundary2, align 4
  %maxsize3 = getelementptr inbounds %struct.ahc_linux_dma_tag, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %maxsize3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %maxsize, ptr %maxsize3, align 8
  %4 = ptrtoint ptr %ret_tag to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %ret_tag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahc_dma_tag_destroy(ptr nocapture noundef readnone %ahc, ptr noundef %dmat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dmat) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_dmamem_alloc(ptr nocapture noundef readonly %ahc, ptr nocapture noundef readonly %dmat, ptr nocapture noundef writeonly %vaddr, i32 noundef %flags, ptr noundef %mapp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %maxsize = getelementptr inbounds %struct.ahc_linux_dma_tag, ptr %dmat, i32 0, i32 2
  %2 = ptrtoint ptr %maxsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxsize, align 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef %3, ptr noundef %mapp, i32 noundef 2592, i32 noundef 0) #14
  %4 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %vaddr, align 4
  %cmp = icmp eq ptr %call.i, null
  %. = select i1 %cmp, i32 12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahc_dmamem_free(ptr nocapture noundef readonly %ahc, ptr nocapture noundef readonly %dmat, ptr noundef %vaddr, i32 noundef %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %maxsize = getelementptr inbounds %struct.ahc_linux_dma_tag, ptr %dmat, i32 0, i32 2
  %2 = ptrtoint ptr %maxsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxsize, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef %3, ptr noundef %vaddr, i32 noundef %map, i32 noundef 0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_dmamap_load(ptr nocapture noundef readnone %ahc, ptr nocapture noundef readonly %dmat, i32 noundef %map, ptr nocapture noundef readnone %buf, i32 noundef %buflen, ptr nocapture noundef readonly %cb, ptr noundef %cb_arg, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %stack_sg = alloca %struct.bus_dma_segment, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stack_sg) #14
  %0 = getelementptr inbounds %struct.bus_dma_segment, ptr %stack_sg, i32 0, i32 1
  %1 = ptrtoint ptr %stack_sg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %map, ptr %stack_sg, align 4
  %maxsize = getelementptr inbounds %struct.ahc_linux_dma_tag, ptr %dmat, i32 0, i32 2
  %2 = ptrtoint ptr %maxsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxsize, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %0, align 4
  call void %cb(ptr noundef %cb_arg, ptr noundef nonnull %stack_sg, i32 noundef 1, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stack_sg) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ahc_dmamap_destroy(ptr nocapture noundef %ahc, ptr nocapture noundef %dmat, i32 noundef %map) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ahc_dmamap_unload(ptr nocapture noundef readnone %ahc, ptr nocapture noundef readnone %dmat, i32 noundef %map) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic7xxx_setup(ptr noundef %s) #0 align 64 {
entry:
  %s.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %s, ptr %s.addr, align 4
  %strlen = tail call i32 @strlen(ptr %s) #19
  %strchr = getelementptr i8, ptr %s, i32 %strlen
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %call1 = call ptr @strsep(ptr noundef nonnull %s.addr, ptr noundef nonnull @.str.87) #14
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = ptrtoint ptr %call1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp2 = icmp eq i8 %2, 0
  br i1 %cmp2, label %while.body.while.cond.backedge_crit_edge, label %for.cond.preheader

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else45, %if.then42, %if.then33, %ahc_parse_brace_option.exit, %if.then21, %for.inc.9.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  br label %while.cond

for.cond.preheader:                               ; preds = %while.body
  %call9 = call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.76, ptr noundef nonnull %call1, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %for.cond.preheader.if.end17_crit_edge, label %for.inc

for.cond.preheader.if.end17_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

for.inc:                                          ; preds = %for.cond.preheader
  %call9.1 = call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.77, ptr noundef nonnull %call1, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %cmp10.1 = icmp eq i32 %call9.1, 0
  br i1 %cmp10.1, label %for.inc.if.end17_crit_edge, label %for.inc.1

for.inc.if.end17_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

for.inc.1:                                        ; preds = %for.inc
  %call9.2 = call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.78, ptr noundef nonnull %call1, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2)
  %cmp10.2 = icmp eq i32 %call9.2, 0
  br i1 %cmp10.2, label %for.inc.1.if.end17_crit_edge, label %for.inc.2

for.inc.1.if.end17_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

for.inc.2:                                        ; preds = %for.inc.1
  %call9.3 = call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.79, ptr noundef nonnull %call1, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.3)
  %cmp10.3 = icmp eq i32 %call9.3, 0
  br i1 %cmp10.3, label %for.inc.2.if.end17_crit_edge, label %for.inc.3

for.inc.2.if.end17_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

for.inc.3:                                        ; preds = %for.inc.2
  %call9.4 = call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.80, ptr noundef nonnull %call1, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.4)
  %cmp10.4 = icmp eq i32 %call9.4, 0
  br i1 %cmp10.4, label %for.inc.3.if.end17_crit_edge, label %for.inc.4

for.inc.3.if.end17_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

for.inc.4:                                        ; preds = %for.inc.3
  %call9.5 = call i32 @strncmp(ptr noundef nonnull dereferenceable(14) @.str.81, ptr noundef nonnull %call1, i32 noundef 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.5)
  %cmp10.5 = icmp eq i32 %call9.5, 0
  br i1 %cmp10.5, label %for.inc.4.if.end17_crit_edge, label %for.inc.5

for.inc.4.if.end17_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

for.inc.5:                                        ; preds = %for.inc.4
  %call9.6 = call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.82, ptr noundef nonnull %call1, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.6)
  %cmp10.6 = icmp eq i32 %call9.6, 0
  br i1 %cmp10.6, label %for.inc.5.if.end17_crit_edge, label %for.inc.6

for.inc.5.if.end17_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

for.inc.6:                                        ; preds = %for.inc.5
  %call9.7 = call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.83, ptr noundef nonnull %call1, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.7)
  %cmp10.7 = icmp eq i32 %call9.7, 0
  br i1 %cmp10.7, label %for.inc.6.if.end17_crit_edge, label %for.inc.7

for.inc.6.if.end17_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

for.inc.7:                                        ; preds = %for.inc.6
  %call9.8 = call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.84, ptr noundef nonnull %call1, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.8)
  %cmp10.8 = icmp eq i32 %call9.8, 0
  br i1 %cmp10.8, label %for.inc.7.if.end17_crit_edge, label %for.inc.8

for.inc.7.if.end17_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

for.inc.8:                                        ; preds = %for.inc.7
  %call9.9 = call i32 @strncmp(ptr noundef nonnull dereferenceable(17) @.str.85, ptr noundef nonnull %call1, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.9)
  %cmp10.9 = icmp eq i32 %call9.9, 0
  br i1 %cmp10.9, label %for.inc.8.if.end17_crit_edge, label %for.inc.9

for.inc.8.if.end17_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

for.inc.9:                                        ; preds = %for.inc.8
  %call9.10 = call i32 @strncmp(ptr noundef nonnull dereferenceable(3) @.str.86, ptr noundef nonnull %call1, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.10)
  %cmp10.10 = icmp eq i32 %call9.10, 0
  br i1 %cmp10.10, label %for.inc.9.if.end17_crit_edge, label %for.inc.9.while.cond.backedge_crit_edge

for.inc.9.while.cond.backedge_crit_edge:          ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

for.inc.9.if.end17_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.end17:                                         ; preds = %for.inc.9.if.end17_crit_edge, %for.inc.8.if.end17_crit_edge, %for.inc.7.if.end17_crit_edge, %for.inc.6.if.end17_crit_edge, %for.inc.5.if.end17_crit_edge, %for.inc.4.if.end17_crit_edge, %for.inc.3.if.end17_crit_edge, %for.inc.2.if.end17_crit_edge, %for.inc.1.if.end17_crit_edge, %for.inc.if.end17_crit_edge, %for.cond.preheader.if.end17_crit_edge
  %i.083.lcssa = phi i32 [ 0, %for.cond.preheader.if.end17_crit_edge ], [ 1, %for.inc.if.end17_crit_edge ], [ 2, %for.inc.1.if.end17_crit_edge ], [ 3, %for.inc.2.if.end17_crit_edge ], [ 4, %for.inc.3.if.end17_crit_edge ], [ 5, %for.inc.4.if.end17_crit_edge ], [ 6, %for.inc.5.if.end17_crit_edge ], [ 7, %for.inc.6.if.end17_crit_edge ], [ 8, %for.inc.7.if.end17_crit_edge ], [ 9, %for.inc.8.if.end17_crit_edge ], [ 10, %for.inc.9.if.end17_crit_edge ]
  %call6.lcssa = phi i32 [ 8, %for.cond.preheader.if.end17_crit_edge ], [ 8, %for.inc.if.end17_crit_edge ], [ 7, %for.inc.1.if.end17_crit_edge ], [ 11, %for.inc.2.if.end17_crit_edge ], [ 5, %for.inc.3.if.end17_crit_edge ], [ 13, %for.inc.4.if.end17_crit_edge ], [ 10, %for.inc.5.if.end17_crit_edge ], [ 7, %for.inc.6.if.end17_crit_edge ], [ 8, %for.inc.7.if.end17_crit_edge ], [ 16, %for.inc.8.if.end17_crit_edge ], [ 2, %for.inc.9.if.end17_crit_edge ]
  %call18 = call i32 @strncmp(ptr noundef nonnull %call1, ptr noundef nonnull @.str.85, i32 noundef %call6.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %call1, i32 1
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %call6.lcssa
  %call.i = call i32 @simple_strtoul(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 0) #14
  %and.i = and i32 %call.i, 255
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %and.i) #17
  %conv.i = trunc i32 %call.i to i8
  %3 = zext i8 %conv.i to i32
  %4 = call ptr @memset(ptr @aic7xxx_tag_info, i32 %3, i32 256)
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end17
  %call22 = call i32 @strncmp(ptr noundef nonnull %call1, ptr noundef nonnull @.str.84, i32 noundef %call6.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  %add.ptr26 = getelementptr i8, ptr %call1, i32 %call6.lcssa
  %5 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %6)
  %cmp.not.i = icmp eq i8 %6, 58
  br i1 %cmp23, label %if.then25, label %if.else28

if.then25:                                        ; preds = %if.else
  br i1 %cmp.not.i, label %if.end.i, label %if.then25.ahc_parse_brace_option.exit_crit_edge

if.then25.ahc_parse_brace_option.exit_crit_edge:  ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_parse_brace_option.exit

if.end.i:                                         ; preds = %if.then25
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr26, i32 1
  %strlen.i = call i32 @strlen(ptr %incdec.ptr.i) #21
  %strchr.i = getelementptr i8, ptr %incdec.ptr.i, i32 %strlen.i
  %cmp2.i = icmp ult ptr %strchr.i, %strchr
  br i1 %cmp2.i, label %if.then4.i, label %if.end.i.while.body.i.preheader_crit_edge

if.end.i.while.body.i.preheader_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.preheader

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %strchr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 44, ptr %strchr.i, align 1
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.then4.i, %if.end.i.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.i.preheader
  %targ.06.i = phi i32 [ %targ.4.i, %sw.epilog.i.while.body.i_crit_edge ], [ -1, %while.body.i.preheader ]
  %instance.05.i = phi i32 [ %instance.4.i, %sw.epilog.i.while.body.i_crit_edge ], [ -1, %while.body.i.preheader ]
  %opt_arg.addr.04.i = phi ptr [ %opt_arg.addr.1.i, %sw.epilog.i.while.body.i_crit_edge ], [ %incdec.ptr.i, %while.body.i.preheader ]
  %8 = ptrtoint ptr %opt_arg.addr.04.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %opt_arg.addr.04.i, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %for.body.preheader.i [
    i8 123, label %sw.bb.i
    i8 125, label %sw.bb22.i
    i8 44, label %while.body.i.sw.bb33.i_crit_edge
    i8 46, label %while.body.i.sw.bb33.i_crit_edge91
    i8 0, label %while.body.i.ahc_parse_brace_option.exit_crit_edge
  ]

while.body.i.ahc_parse_brace_option.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_parse_brace_option.exit

while.body.i.sw.bb33.i_crit_edge91:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb33.i

while.body.i.sw.bb33.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb33.i

for.body.preheader.i:                             ; preds = %while.body.i
  %call54.i = call ptr @strchr(ptr noundef %opt_arg.addr.04.i, i32 noundef 46) #14
  %tobool55.not.i = icmp ne ptr %call54.i, null
  %cmp56.i = icmp ult ptr %call54.i, %strchr
  %or.cond.i = and i1 %tobool55.not.i, %cmp56.i
  %tok_end.1.i = select i1 %or.cond.i, ptr %call54.i, ptr %strchr
  %call54.1.i = call ptr @strchr(ptr noundef %opt_arg.addr.04.i, i32 noundef 44) #14
  %tobool55.not.1.i = icmp ne ptr %call54.1.i, null
  %cmp56.1.i = icmp ult ptr %call54.1.i, %tok_end.1.i
  %or.cond.1.i = select i1 %tobool55.not.1.i, i1 %cmp56.1.i, i1 false
  %tok_end.1.1.i = select i1 %or.cond.1.i, ptr %call54.1.i, ptr %tok_end.1.i
  %call54.2.i = call ptr @strchr(ptr noundef %opt_arg.addr.04.i, i32 noundef 123) #14
  %tobool55.not.2.i = icmp ne ptr %call54.2.i, null
  %cmp56.2.i = icmp ult ptr %call54.2.i, %tok_end.1.1.i
  %or.cond.2.i = select i1 %tobool55.not.2.i, i1 %cmp56.2.i, i1 false
  %tok_end.1.2.i = select i1 %or.cond.2.i, ptr %call54.2.i, ptr %tok_end.1.1.i
  %call54.3.i = call ptr @strchr(ptr noundef %opt_arg.addr.04.i, i32 noundef 125) #14
  %tobool55.not.3.i = icmp ne ptr %call54.3.i, null
  %cmp56.3.i = icmp ult ptr %call54.3.i, %tok_end.1.2.i
  %or.cond.3.i = select i1 %tobool55.not.3.i, i1 %cmp56.3.i, i1 false
  %tok_end.1.3.i = select i1 %or.cond.3.i, ptr %call54.3.i, ptr %tok_end.1.2.i
  %call61.i = call i32 @simple_strtol(ptr noundef %opt_arg.addr.04.i, ptr noundef null, i32 noundef 0) #14
  %11 = or i32 %instance.05.i, %targ.06.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %12 = icmp sgt i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %instance.05.i)
  %cmp3.i.i = icmp ult i32 %instance.05.i, 16
  %or.cond16.i.i = and i1 %cmp3.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %targ.06.i)
  %cmp5.i.i = icmp slt i32 %targ.06.i, 16
  %or.cond17.i.i = and i1 %cmp5.i.i, %or.cond16.i.i
  br i1 %or.cond17.i.i, label %if.then.i.i, label %for.body.preheader.i.sw.epilog.i_crit_edge

for.body.preheader.i.sw.epilog.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %instance.05.i)
  %cmp7.i = icmp eq i32 %instance.05.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %targ.06.i)
  %cmp13.i = icmp eq i32 %targ.06.i, -1
  %spec.store.select.i = select i1 %cmp13.i, i32 0, i32 %targ.06.i
  %instance.1.i = select i1 %cmp7.i, i32 0, i32 %instance.05.i
  %targ.1.i = select i1 %cmp7.i, i32 %targ.06.i, i32 %spec.store.select.i
  %incdec.ptr21.i = getelementptr i8, ptr %opt_arg.addr.04.i, i32 1
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %targ.06.i)
  %cmp23.not.i = icmp eq i32 %targ.06.i, -1
  %.instance.0.i = select i1 %cmp23.not.i, i32 -1, i32 %instance.05.i
  %incdec.ptr32.i = getelementptr i8, ptr %opt_arg.addr.04.i, i32 1
  br label %sw.epilog.i

sw.bb33.i:                                        ; preds = %while.body.i.sw.bb33.i_crit_edge, %while.body.i.sw.bb33.i_crit_edge91
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %instance.05.i)
  %cmp34.i = icmp eq i32 %instance.05.i, -1
  br i1 %cmp34.i, label %sw.bb33.i.if.end48.i_crit_edge, label %if.else37.i

sw.bb33.i.if.end48.i_crit_edge:                   ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

if.else37.i:                                      ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %targ.06.i)
  %cmp38.i = icmp sgt i32 %targ.06.i, -1
  br i1 %cmp38.i, label %if.then40.i, label %if.else41.i

if.then40.i:                                      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i = add nuw i32 %targ.06.i, 1
  br label %if.end48.i

if.else41.i:                                      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = xor i32 %instance.05.i, -1
  %instance.0.lobit.not.i = lshr i32 %13, 31
  %spec.select.i = add nuw i32 %instance.0.lobit.not.i, %instance.05.i
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else41.i, %if.then40.i, %sw.bb33.i.if.end48.i_crit_edge
  %instance.3.i = phi i32 [ %instance.05.i, %if.then40.i ], [ -1, %sw.bb33.i.if.end48.i_crit_edge ], [ %spec.select.i, %if.else41.i ]
  %targ.3.i = phi i32 [ %inc.i, %if.then40.i ], [ %targ.06.i, %sw.bb33.i.if.end48.i_crit_edge ], [ %targ.06.i, %if.else41.i ]
  %done.2.i = phi i32 [ 0, %if.then40.i ], [ 1, %sw.bb33.i.if.end48.i_crit_edge ], [ 0, %if.else41.i ]
  %incdec.ptr49.i = getelementptr i8, ptr %opt_arg.addr.04.i, i32 1
  br label %sw.epilog.i

if.then.i.i:                                      ; preds = %for.body.preheader.i
  %conv.i.i = trunc i32 %call61.i to i8
  %arrayidx.i.i = getelementptr [16 x %struct.adapter_tag_info_t], ptr @aic7xxx_tag_info, i32 0, i32 %instance.05.i
  %arrayidx6.i.i = getelementptr [16 x i8], ptr %arrayidx.i.i, i32 0, i32 %targ.06.i
  %14 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i.i, ptr %arrayidx6.i.i, align 1
  %15 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.sw.epilog.i_crit_edge, label %do.end.i.i

if.then.i.i.sw.epilog.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %instance.05.i, i32 noundef %targ.06.i, i32 noundef %call61.i) #17
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i.i, %if.then.i.i.sw.epilog.i_crit_edge, %if.end48.i, %sw.bb22.i, %sw.bb.i, %for.body.preheader.i.sw.epilog.i_crit_edge
  %opt_arg.addr.1.i = phi ptr [ %incdec.ptr49.i, %if.end48.i ], [ %incdec.ptr32.i, %sw.bb22.i ], [ %incdec.ptr21.i, %sw.bb.i ], [ %tok_end.1.3.i, %for.body.preheader.i.sw.epilog.i_crit_edge ], [ %tok_end.1.3.i, %if.then.i.i.sw.epilog.i_crit_edge ], [ %tok_end.1.3.i, %do.end.i.i ]
  %instance.4.i = phi i32 [ %instance.3.i, %if.end48.i ], [ %.instance.0.i, %sw.bb22.i ], [ %instance.1.i, %sw.bb.i ], [ %instance.05.i, %for.body.preheader.i.sw.epilog.i_crit_edge ], [ %instance.05.i, %if.then.i.i.sw.epilog.i_crit_edge ], [ %instance.05.i, %do.end.i.i ]
  %targ.4.i = phi i32 [ %targ.3.i, %if.end48.i ], [ -1, %sw.bb22.i ], [ %targ.1.i, %sw.bb.i ], [ %targ.06.i, %for.body.preheader.i.sw.epilog.i_crit_edge ], [ %targ.06.i, %if.then.i.i.sw.epilog.i_crit_edge ], [ %targ.06.i, %do.end.i.i ]
  %done.3.i = phi i32 [ %done.2.i, %if.end48.i ], [ 0, %sw.bb22.i ], [ 0, %sw.bb.i ], [ 0, %for.body.preheader.i.sw.epilog.i_crit_edge ], [ 0, %if.then.i.i.sw.epilog.i_crit_edge ], [ 0, %do.end.i.i ]
  %tobool.not.i = icmp eq i32 %done.3.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.while.body.i_crit_edge, label %sw.epilog.i.ahc_parse_brace_option.exit_crit_edge

sw.epilog.i.ahc_parse_brace_option.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_parse_brace_option.exit

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

ahc_parse_brace_option.exit:                      ; preds = %sw.epilog.i.ahc_parse_brace_option.exit_crit_edge, %while.body.i.ahc_parse_brace_option.exit_crit_edge, %if.then25.ahc_parse_brace_option.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr26, %if.then25.ahc_parse_brace_option.exit_crit_edge ], [ %opt_arg.addr.1.i, %sw.epilog.i.ahc_parse_brace_option.exit_crit_edge ], [ %opt_arg.addr.04.i, %while.body.i.ahc_parse_brace_option.exit_crit_edge ]
  %16 = ptrtoint ptr %s.addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.0.i, ptr %s.addr, align 4
  br label %while.cond.backedge

if.else28:                                        ; preds = %if.else
  br i1 %cmp.not.i, label %if.then33, label %if.else38

if.then33:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr35 = getelementptr i8, ptr %add.ptr26, i32 1
  %call36 = call i32 @simple_strtoul(ptr noundef %add.ptr35, ptr noundef null, i32 noundef 0) #14
  %flag = getelementptr [11 x %struct.anon.93], ptr @aic7xxx_setup.options, i32 0, i32 %i.083.lcssa, i32 1
  %17 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %flag, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call36, ptr %18, align 4
  br label %while.cond.backedge

if.else38:                                        ; preds = %if.else28
  %call39 = call i32 @strncmp(ptr noundef nonnull %call1, ptr noundef nonnull @.str.78, i32 noundef %call6.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp eq i32 %call39, 0
  %flag44 = getelementptr [11 x %struct.anon.93], ptr @aic7xxx_setup.options, i32 0, i32 %i.083.lcssa, i32 1
  %20 = ptrtoint ptr %flag44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %flag44, align 4
  br i1 %cmp40, label %if.then42, label %if.else45

if.then42:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %21, align 4
  br label %while.cond.backedge

if.else45:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %21, align 4
  %xor = xor i32 %24, -1
  store i32 %xor, ptr %21, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_linux_register_host(ptr noundef %ahc, ptr noundef %template) local_unnamed_addr #0 align 64 {
entry:
  %devinfo.i = alloca %struct.ahc_devinfo, align 4
  %tstate.i = alloca ptr, align 4
  %buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #14
  %0 = call ptr @memset(ptr %buf, i32 255, i32 80)
  %description = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 54
  %1 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %description, align 4
  %name = getelementptr inbounds %struct.scsi_host_template, ptr %template, i32 0, i32 4
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %name, align 8
  %call = tail call ptr @scsi_host_alloc(ptr noundef %template, i32 noundef 4) #14
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ahc, ptr %hostdata, align 8
  %platform_data = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 8
  %5 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data, align 4
  %host2 = getelementptr inbounds %struct.ahc_platform_data, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %host2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %host2, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 26
  %8 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 253, ptr %can_queue, align 4
  %cmd_per_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 27
  %9 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %cmd_per_lun, align 8
  %our_id = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 31
  %10 = ptrtoint ptr %our_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %our_id, align 2
  %conv = zext i8 %11 to i32
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 25
  %12 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %this_id, align 8
  %13 = load ptr, ptr %platform_data, align 4
  %irq = getelementptr inbounds %struct.ahc_platform_data, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %irq4 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 47
  %16 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %irq4, align 8
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %17 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %features, align 4
  %and = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 8, i32 16
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 21
  %19 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond, ptr %max_id, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 22
  %20 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 64, ptr %max_lun, align 8
  %21 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %features, align 4
  %and6 = lshr i32 %22, 3
  %and6.lobit = and i32 %and6, 1
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 20
  %23 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and6.lobit, ptr %max_channel, align 8
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 28
  %24 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 128, ptr %sg_tablesize, align 2
  %25 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %platform_data, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahc_platform_data, ptr %26, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %27 = load i32, ptr @ahc_linux_unit, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr @ahc_linux_unit, align 4
  tail call void @ahc_set_unit(ptr noundef %ahc, i32 noundef %27) #14
  %28 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %platform_data, align 4
  %spin_lock.i64 = getelementptr inbounds %struct.ahc_platform_data, ptr %29, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i64, i32 noundef %call2.i) #14
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 17
  %30 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %host_no, align 4
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.6, i32 noundef %31)
  %call12 = call i32 @strlen(ptr noundef nonnull %buf) #19
  %add = add i32 %call12, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2592) #22
  %cmp14.not = icmp eq ptr %call9.i, null
  br i1 %cmp14.not, label %if.end.if.end19_crit_edge, label %if.then16

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call18 = call ptr @strcpy(ptr noundef nonnull %call9.i, ptr noundef nonnull %buf) #19
  tail call void @ahc_set_name(ptr noundef %ahc, ptr noundef nonnull %call9.i) #14
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end.if.end19_crit_edge
  %unit = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 56
  %32 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %unit, align 4
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 23
  %34 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %unique_id, align 8
  %35 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %platform_data, align 4
  %spin_lock.i.i = getelementptr inbounds %struct.ahc_platform_data, ptr %36, i32 0, i32 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i.i) #14
  %37 = load i32, ptr @aic7xxx_no_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not.i = icmp eq i32 %37, 0
  br i1 %cmp.not.i, label %if.end19.if.end.i66_crit_edge, label %if.then.i65

if.end19.if.end.i66_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i66

if.then.i65:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %39, -193
  store i32 %and.i, ptr %flags.i, align 4
  br label %if.end.i66

if.end.i66:                                       ; preds = %if.then.i65, %if.end19.if.end.i66_crit_edge
  %flags1.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %40 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags1.i, align 4
  %and2.i = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp3.not.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 @ahc_reset_channel(ptr noundef %ahc, i8 noundef zeroext 65, i32 noundef 1) #14
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %features, align 4
  %and5.i = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i = icmp eq i32 %and5.i, 0
  %cond.i = select i1 %tobool.not.i, i32 8, i32 16
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then4.i
  %numtarg.0.i = phi i32 [ 0, %if.then4.i ], [ %cond.i, %if.else.i ]
  %44 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %features, align 4
  %and8.i = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %cmp9.not.i = icmp eq i32 %and8.i, 0
  br i1 %cmp9.not.i, label %if.end6.i.if.end21.i_crit_edge, label %if.then10.i

if.end6.i.if.end21.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i

if.then10.i:                                      ; preds = %if.end6.i
  %46 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags1.i, align 4
  %and12.i = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %cmp13.not.i = icmp eq i32 %and12.i, 0
  br i1 %cmp13.not.i, label %if.else16.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  %call15.i = tail call i32 @ahc_reset_channel(ptr noundef %ahc, i8 noundef zeroext 66, i32 noundef 1) #14
  br label %if.end21.i

if.else16.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numtarg.0.i)
  %cmp17.i = icmp eq i32 %numtarg.0.i, 0
  %spec.select.i = select i1 %cmp17.i, i32 8, i32 0
  %add.i = add nuw nsw i32 %numtarg.0.i, 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else16.i, %if.then14.i, %if.end6.i.if.end21.i_crit_edge
  %i.1.i = phi i32 [ 0, %if.then14.i ], [ %spec.select.i, %if.else16.i ], [ 0, %if.end6.i.if.end21.i_crit_edge ]
  %numtarg.1.i = phi i32 [ %numtarg.0.i, %if.then14.i ], [ %add.i, %if.else16.i ], [ %numtarg.0.i, %if.end6.i.if.end21.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.i, i32 %numtarg.1.i)
  %cmp2275.i = icmp ult i32 %i.1.i, %numtarg.1.i
  br i1 %cmp2275.i, label %for.body.lr.ph.i, label %if.end21.i.for.end.i_crit_edge

if.end21.i.for.end.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end21.i
  %our_id_b.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 32
  br label %for.body.i

for.body.i:                                       ; preds = %if.end32.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.276.i = phi i32 [ %i.1.i, %for.body.lr.ph.i ], [ %inc.i, %if.end32.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo.i) #14
  %48 = call ptr @memset(ptr %devinfo.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tstate.i) #14
  %49 = ptrtoint ptr %tstate.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate.i, align 4, !annotation !269
  %50 = ptrtoint ptr %our_id to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %our_id, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.276.i)
  %cmp24.i = icmp ugt i32 %i.276.i, 7
  br i1 %cmp24.i, label %land.lhs.true.i, label %for.body.i.if.end32.i_crit_edge

for.body.i.if.end32.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %52 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %features, align 4
  %and27.i = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp28.not.i = icmp eq i32 %and27.i, 0
  br i1 %cmp28.not.i, label %land.lhs.true.i.if.end32.i_crit_edge, label %if.then30.i

land.lhs.true.i.if.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %our_id_b.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %our_id_b.i, align 1
  %rem74.i = and i32 %i.276.i, 7
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %land.lhs.true.i.if.end32.i_crit_edge, %for.body.i.if.end32.i_crit_edge
  %our_id.0.in.i = phi i8 [ %55, %if.then30.i ], [ %51, %land.lhs.true.i.if.end32.i_crit_edge ], [ %51, %for.body.i.if.end32.i_crit_edge ]
  %target_id.0.i = phi i32 [ %rem74.i, %if.then30.i ], [ %i.276.i, %land.lhs.true.i.if.end32.i_crit_edge ], [ %i.276.i, %for.body.i.if.end32.i_crit_edge ]
  %channel.0.i = phi i8 [ 66, %if.then30.i ], [ 65, %land.lhs.true.i.if.end32.i_crit_edge ], [ 65, %for.body.i.if.end32.i_crit_edge ]
  %our_id.0.i = zext i8 %our_id.0.in.i to i32
  %call33.i = call ptr @ahc_fetch_transinfo(ptr noundef %ahc, i8 noundef zeroext %channel.0.i, i32 noundef %our_id.0.i, i32 noundef %target_id.0.i, ptr noundef nonnull %tstate.i) #14
  call void @ahc_compile_devinfo(ptr noundef nonnull %devinfo.i, i32 noundef %our_id.0.i, i32 noundef %target_id.0.i, i32 noundef -1, i8 noundef zeroext %channel.0.i, i32 noundef 1) #14
  %56 = ptrtoint ptr %tstate.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tstate.i, align 4
  %call34.i = call i32 @ahc_update_neg_request(ptr noundef %ahc, ptr noundef nonnull %devinfo.i, ptr noundef %57, ptr noundef %call33.i, i32 noundef 2) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate.i) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo.i) #14
  %inc.i = add nuw nsw i32 %i.276.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %numtarg.1.i
  br i1 %exitcond.not.i, label %if.end32.i.for.end.i_crit_edge, label %if.end32.i.for.body.i_crit_edge

if.end32.i.for.body.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end32.i.for.end.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %if.end32.i.for.end.i_crit_edge, %if.end21.i.for.end.i_crit_edge
  %58 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %platform_data, align 4
  %spin_lock.i67.i = getelementptr inbounds %struct.ahc_platform_data, ptr %59, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i67.i, i32 noundef %call2.i.i) #14
  %60 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags1.i, align 4
  %and36.i = and i32 %61, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %cmp37.not.i = icmp eq i32 %and36.i, 0
  br i1 %cmp37.not.i, label %for.end.i.ahc_linux_initialize_scsi_bus.exit_crit_edge, label %if.then39.i

for.end.i.ahc_linux_initialize_scsi_bus.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_linux_initialize_scsi_bus.exit

if.then39.i:                                      ; preds = %for.end.i
  %62 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %platform_data, align 4
  %spin_lock.i.i.i = getelementptr inbounds %struct.ahc_platform_data, ptr %63, i32 0, i32 1
  %call2.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i.i.i) #14
  %64 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %platform_data, align 4
  %qfrozen.i.i = getelementptr inbounds %struct.ahc_platform_data, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %qfrozen.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %qfrozen.i.i, align 4
  %inc.i.i = add i32 %67, 1
  store i32 %inc.i.i, ptr %qfrozen.i.i, align 4
  %68 = load ptr, ptr %platform_data, align 4
  %qfrozen2.i.i = getelementptr inbounds %struct.ahc_platform_data, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %qfrozen2.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qfrozen2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp.i.i67 = icmp eq i32 %70, 1
  br i1 %cmp.i.i67, label %if.then.i.i, label %if.then39.i.ahc_linux_freeze_simq.exit.i_crit_edge

if.then39.i.ahc_linux_freeze_simq.exit.i_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_linux_freeze_simq.exit.i

if.then.i.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #16
  %host.i.i = getelementptr inbounds %struct.ahc_platform_data, ptr %68, i32 0, i32 4
  %71 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %host.i.i, align 4
  call void @scsi_block_requests(ptr noundef %72) #14
  br label %ahc_linux_freeze_simq.exit.i

ahc_linux_freeze_simq.exit.i:                     ; preds = %if.then.i.i, %if.then39.i.ahc_linux_freeze_simq.exit.i_crit_edge
  %73 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %platform_data, align 4
  %spin_lock.i10.i.i = getelementptr inbounds %struct.ahc_platform_data, ptr %74, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i10.i.i, i32 noundef %call2.i.i.i) #14
  call void @msleep(i32 noundef 5000) #14
  %75 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %platform_data, align 4
  %spin_lock.i.i69.i = getelementptr inbounds %struct.ahc_platform_data, ptr %76, i32 0, i32 1
  %call2.i.i70.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i.i69.i) #14
  %77 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %platform_data, align 4
  %qfrozen.i71.i = getelementptr inbounds %struct.ahc_platform_data, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %qfrozen.i71.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %qfrozen.i71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.not.i.i = icmp eq i32 %80, 0
  br i1 %cmp.not.i.i, label %ahc_linux_freeze_simq.exit.i.if.end.i.i68_crit_edge, label %if.then.i72.i

ahc_linux_freeze_simq.exit.i.if.end.i.i68_crit_edge: ; preds = %ahc_linux_freeze_simq.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i68

if.then.i72.i:                                    ; preds = %ahc_linux_freeze_simq.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i.i = add i32 %80, -1
  %81 = ptrtoint ptr %qfrozen.i71.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %dec.i.i, ptr %qfrozen.i71.i, align 4
  br label %if.end.i.i68

if.end.i.i68:                                     ; preds = %if.then.i72.i, %ahc_linux_freeze_simq.exit.i.if.end.i.i68_crit_edge
  %82 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %platform_data, align 4
  %qfrozen4.i.i = getelementptr inbounds %struct.ahc_platform_data, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %qfrozen4.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %qfrozen4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp5.i.i = icmp eq i32 %85, 0
  %spin_lock.i17.i.i = getelementptr inbounds %struct.ahc_platform_data, ptr %83, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i17.i.i, i32 noundef %call2.i.i70.i) #14
  br i1 %cmp5.i.i, label %if.then8.i.i, label %if.end.i.i68.ahc_linux_initialize_scsi_bus.exit_crit_edge

if.end.i.i68.ahc_linux_initialize_scsi_bus.exit_crit_edge: ; preds = %if.end.i.i68
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_linux_initialize_scsi_bus.exit

if.then8.i.i:                                     ; preds = %if.end.i.i68
  call void @__sanitizer_cov_trace_pc() #16
  %86 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %platform_data, align 4
  %host.i73.i = getelementptr inbounds %struct.ahc_platform_data, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %host.i73.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %host.i73.i, align 4
  call void @scsi_unblock_requests(ptr noundef %89) #14
  br label %ahc_linux_initialize_scsi_bus.exit

ahc_linux_initialize_scsi_bus.exit:               ; preds = %if.then8.i.i, %if.end.i.i68.ahc_linux_initialize_scsi_bus.exit_crit_edge, %for.end.i.ahc_linux_initialize_scsi_bus.exit_crit_edge
  call void @ahc_intr_enable(ptr noundef %ahc, i32 noundef 1) #14
  %90 = load ptr, ptr @ahc_linux_transport_template, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 12
  %91 = ptrtoint ptr %transportt to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %transportt, align 4
  %dev = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 10
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  %call.i69 = call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call, ptr noundef %93, ptr noundef %93) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool21.not = icmp eq i32 %call.i69, 0
  br i1 %tobool21.not, label %if.end24, label %do.end

do.end:                                           ; preds = %ahc_linux_initialize_scsi_bus.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #17
  call void @scsi_host_put(ptr noundef nonnull %call) #14
  br label %cleanup

if.end24:                                         ; preds = %ahc_linux_initialize_scsi_bus.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @scsi_scan_host(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i69, %do.end ], [ 0, %if.end24 ], [ 12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_set_unit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_set_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_intr_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_platform_alloc(ptr nocapture noundef %ahc, ptr nocapture noundef readnone %platform_arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 132) #20
  %platform_data = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 8
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %platform_data, align 4
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.ahc_platform_data, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq, align 8
  %spin_lock.i = getelementptr inbounds %struct.ahc_platform_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %spin_lock.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @ahc_lockinit.__key, i16 noundef signext 3) #14
  %3 = load i32, ptr @aic7xxx_seltime, align 4
  %and = shl i32 %3, 4
  %shl = and i32 %and, 48
  %seltime = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 57
  %4 = ptrtoint ptr %seltime to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl, ptr %seltime, align 4
  %seltime_b = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 58
  %5 = ptrtoint ptr %seltime_b to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl, ptr %seltime_b, align 4
  %6 = load i32, ptr @aic7xxx_pci_parity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5 = icmp eq i32 %6, 0
  br i1 %cmp5, label %if.then6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 268435456
  store i32 %or, ptr %flags, align 4
  br label %return

return:                                           ; preds = %if.then6, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 12, %entry.return_crit_edge ], [ 0, %if.then6 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahc_platform_free(ptr noundef %ahc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 8
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end35_crit_edge, label %for.body.preheader

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp4.not = icmp eq ptr %5, null
  br i1 %cmp4.not, label %for.body.preheader.for.inc_crit_edge, label %if.then5

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then5:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %3, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %for.body.preheader.for.inc_crit_edge
  %7 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data, align 4
  %arrayidx.1 = getelementptr [16 x ptr], ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 4
  %cmp4.not.1 = icmp eq ptr %10, null
  br i1 %cmp4.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then5.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then5.1, %for.inc.for.inc.1_crit_edge
  %12 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_data, align 4
  %arrayidx.2 = getelementptr [16 x ptr], ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %cmp4.not.2 = icmp eq ptr %15, null
  br i1 %cmp4.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then5.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then5.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then5.2, %for.inc.1.for.inc.2_crit_edge
  %17 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform_data, align 4
  %arrayidx.3 = getelementptr [16 x ptr], ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.3, align 4
  %cmp4.not.3 = icmp eq ptr %20, null
  br i1 %cmp4.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then5.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.then5.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then5.3, %for.inc.2.for.inc.3_crit_edge
  %22 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_data, align 4
  %arrayidx.4 = getelementptr [16 x ptr], ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.4, align 4
  %cmp4.not.4 = icmp eq ptr %25, null
  br i1 %cmp4.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then5.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

if.then5.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then5.4, %for.inc.3.for.inc.4_crit_edge
  %27 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platform_data, align 4
  %arrayidx.5 = getelementptr [16 x ptr], ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.5, align 4
  %cmp4.not.5 = icmp eq ptr %30, null
  br i1 %cmp4.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then5.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

if.then5.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then5.5, %for.inc.4.for.inc.5_crit_edge
  %32 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %platform_data, align 4
  %arrayidx.6 = getelementptr [16 x ptr], ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.6, align 4
  %cmp4.not.6 = icmp eq ptr %35, null
  br i1 %cmp4.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then5.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6

if.then5.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then5.6, %for.inc.5.for.inc.6_crit_edge
  %37 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %platform_data, align 4
  %arrayidx.7 = getelementptr [16 x ptr], ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.7, align 4
  %cmp4.not.7 = icmp eq ptr %40, null
  br i1 %cmp4.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then5.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.7

if.then5.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then5.7, %for.inc.6.for.inc.7_crit_edge
  %42 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %platform_data, align 4
  %arrayidx.8 = getelementptr [16 x ptr], ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.8, align 4
  %cmp4.not.8 = icmp eq ptr %45, null
  br i1 %cmp4.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then5.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.8

if.then5.8:                                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx.8, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then5.8, %for.inc.7.for.inc.8_crit_edge
  %47 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %platform_data, align 4
  %arrayidx.9 = getelementptr [16 x ptr], ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.9, align 4
  %cmp4.not.9 = icmp eq ptr %50, null
  br i1 %cmp4.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then5.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.9

if.then5.9:                                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %arrayidx.9, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then5.9, %for.inc.8.for.inc.9_crit_edge
  %52 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %platform_data, align 4
  %arrayidx.10 = getelementptr [16 x ptr], ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.10, align 4
  %cmp4.not.10 = icmp eq ptr %55, null
  br i1 %cmp4.not.10, label %for.inc.9.for.inc.10_crit_edge, label %if.then5.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.10

if.then5.10:                                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx.10, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then5.10, %for.inc.9.for.inc.10_crit_edge
  %57 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %platform_data, align 4
  %arrayidx.11 = getelementptr [16 x ptr], ptr %58, i32 0, i32 11
  %59 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.11, align 4
  %cmp4.not.11 = icmp eq ptr %60, null
  br i1 %cmp4.not.11, label %for.inc.10.for.inc.11_crit_edge, label %if.then5.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.11

if.then5.11:                                      ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %arrayidx.11, align 4
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then5.11, %for.inc.10.for.inc.11_crit_edge
  %62 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %platform_data, align 4
  %arrayidx.12 = getelementptr [16 x ptr], ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.12, align 4
  %cmp4.not.12 = icmp eq ptr %65, null
  br i1 %cmp4.not.12, label %for.inc.11.for.inc.12_crit_edge, label %if.then5.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.12

if.then5.12:                                      ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx.12, align 4
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then5.12, %for.inc.11.for.inc.12_crit_edge
  %67 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %platform_data, align 4
  %arrayidx.13 = getelementptr [16 x ptr], ptr %68, i32 0, i32 13
  %69 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.13, align 4
  %cmp4.not.13 = icmp eq ptr %70, null
  br i1 %cmp4.not.13, label %for.inc.12.for.inc.13_crit_edge, label %if.then5.13

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.13

if.then5.13:                                      ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %arrayidx.13, align 4
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.then5.13, %for.inc.12.for.inc.13_crit_edge
  %72 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %platform_data, align 4
  %arrayidx.14 = getelementptr [16 x ptr], ptr %73, i32 0, i32 14
  %74 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.14, align 4
  %cmp4.not.14 = icmp eq ptr %75, null
  br i1 %cmp4.not.14, label %for.inc.13.for.inc.14_crit_edge, label %if.then5.14

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.14

if.then5.14:                                      ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx.14, align 4
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.then5.14, %for.inc.13.for.inc.14_crit_edge
  %77 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %platform_data, align 4
  %arrayidx.15 = getelementptr [16 x ptr], ptr %78, i32 0, i32 15
  %79 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.15, align 4
  %cmp4.not.15 = icmp eq ptr %80, null
  br i1 %cmp4.not.15, label %for.inc.14.for.inc.15_crit_edge, label %if.then5.15

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.15

if.then5.15:                                      ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %arrayidx.15, align 4
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.then5.15, %for.inc.14.for.inc.15_crit_edge
  %82 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %platform_data, align 4
  %irq = getelementptr inbounds %struct.ahc_platform_data, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %cmp10.not = icmp eq i32 %85, -1
  br i1 %cmp10.not, label %for.inc.15.if.end14_crit_edge, label %if.then11

for.inc.15.if.end14_crit_edge:                    ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then11:                                        ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call ptr @free_irq(i32 noundef %85, ptr noundef %ahc) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %for.inc.15.if.end14_crit_edge
  %86 = ptrtoint ptr %ahc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ahc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp15 = icmp eq i32 %87, 1
  br i1 %cmp15, label %land.lhs.true, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end14
  %bsh = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 1
  %88 = ptrtoint ptr %bsh to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bsh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp16.not = icmp eq i32 %89, 0
  br i1 %cmp16.not, label %land.lhs.true.if.end19thread-pre-split_crit_edge, label %if.then17

land.lhs.true.if.end19thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19thread-pre-split

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %89, i32 noundef 256) #14
  br label %if.end19thread-pre-split

if.end19thread-pre-split:                         ; preds = %if.then17, %land.lhs.true.if.end19thread-pre-split_crit_edge
  %90 = ptrtoint ptr %ahc to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr = load i32, ptr %ahc, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19thread-pre-split, %if.end14.if.end19_crit_edge
  %91 = phi i32 [ %.pr, %if.end19thread-pre-split ], [ %87, %if.end14.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp21 = icmp eq i32 %91, 0
  br i1 %cmp21, label %land.lhs.true22, label %if.end19.if.end28_crit_edge

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.lhs.true22:                                  ; preds = %if.end19
  %bsh23 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 1
  %92 = ptrtoint ptr %bsh23 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bsh23, align 4
  %cmp24.not = icmp eq ptr %93, null
  br i1 %cmp24.not, label %land.lhs.true22.if.end28_crit_edge, label %if.then25

land.lhs.true22.if.end28_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then25:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @iounmap(ptr noundef nonnull %93) #14
  %94 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %platform_data, align 4
  %mem_busaddr = getelementptr inbounds %struct.ahc_platform_data, ptr %95, i32 0, i32 7
  %96 = ptrtoint ptr %mem_busaddr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mem_busaddr, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %97, i32 noundef 4096) #14
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %land.lhs.true22.if.end28_crit_edge, %if.end19.if.end28_crit_edge
  %98 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %platform_data, align 4
  %host = getelementptr inbounds %struct.ahc_platform_data, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %host, align 4
  %tobool.not = icmp eq ptr %101, null
  br i1 %tobool.not, label %if.end28.if.end33_crit_edge, label %if.then30

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @scsi_host_put(ptr noundef nonnull %101) #14
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end28.if.end33_crit_edge
  %102 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %platform_data, align 4
  tail call void @kfree(ptr noundef %103) #14
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %entry.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ahc_platform_freeze_devq(ptr nocapture noundef %ahc, ptr nocapture noundef %scb) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ahc_platform_abort_scbs(ptr nocapture readnone %ahc, i32 %target, i8 zeroext %channel, i32 %lun, i32 %tag, i32 %role, i32 %status) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahc_platform_set_tags(ptr nocapture noundef readonly %ahc, ptr noundef %sdev, ptr nocapture noundef readonly %devinfo, i32 noundef %alg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %sdev, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %sdev_data.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 71
  %transportt.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %transportt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transportt.i, align 4
  %device_private_offset.i = getelementptr inbounds %struct.scsi_transport_template, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %device_private_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_private_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %sdev_data.i, i32 %5
  %flags = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i, i32 0, i32 5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 48
  %8 = zext i32 %alg to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %alg, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb2
    i32 1, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %if.end.sw.epilog_crit_edge
  %tobool.not = phi i1 [ false, %sw.bb2 ], [ false, %sw.bb1 ], [ true, %if.end.sw.epilog_crit_edge ]
  %now_queuing.0 = phi i32 [ 32, %sw.bb2 ], [ 16, %sw.bb1 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %and4 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp5 = icmp ne i32 %and4, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %now_queuing.0)
  %cmp6.not = icmp eq i32 %and, %now_queuing.0
  %or.cond = or i1 %cmp5, %cmp6.not
  br i1 %or.cond, label %sw.epilog.if.end11_crit_edge, label %land.lhs.true7

sw.epilog.if.end11_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

land.lhs.true7:                                   ; preds = %sw.epilog
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8.not = icmp eq i32 %10, 0
  br i1 %cmp8.not, label %land.lhs.true7.if.end11_crit_edge, label %if.then9

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %7, 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %flags, align 4
  %qfrozen = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i, i32 0, i32 2
  %12 = ptrtoint ptr %qfrozen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qfrozen, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %qfrozen, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %land.lhs.true7.if.end11_crit_edge, %sw.epilog.if.end11_crit_edge
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and13 = and i32 %15, -113
  store i32 %and13, ptr %flags, align 4
  br i1 %tobool.not, label %if.else39, label %if.then14

if.then14:                                        ; preds = %if.end11
  %user_discenable.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 59
  %16 = ptrtoint ptr %user_discenable.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %user_discenable.i, align 4
  %target_mask.i = getelementptr inbounds %struct.ahc_devinfo, ptr %devinfo, i32 0, i32 2
  %18 = ptrtoint ptr %target_mask.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %target_mask.i, align 4
  %and22.i = and i16 %19, %17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and22.i)
  %cmp.not.i = icmp eq i16 %and22.i, 0
  br i1 %cmp.not.i, label %if.then14.ahc_linux_user_tagdepth.exit_crit_edge, label %if.then.i

if.then14.ahc_linux_user_tagdepth.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_linux_user_tagdepth.exit

if.then.i:                                        ; preds = %if.then14
  %unit.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 56
  %20 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %unit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %21)
  %cmp3.i = icmp ugt i32 %21, 15
  br i1 %cmp3.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then.i
  %22 = load i32, ptr @ahc_linux_user_tagdepth.warned_user, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp6.i = icmp eq i32 %22, 0
  br i1 %cmp6.i, label %do.end.i, label %if.then5.i.ahc_linux_user_tagdepth.exit_crit_edge

if.then5.i.ahc_linux_user_tagdepth.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_linux_user_tagdepth.exit

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #17
  %23 = load i32, ptr @ahc_linux_user_tagdepth.warned_user, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr @ahc_linux_user_tagdepth.warned_user, align 4
  br label %ahc_linux_user_tagdepth.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr [16 x %struct.adapter_tag_info_t], ptr @aic7xxx_tag_info, i32 0, i32 %21
  %target_offset.i = getelementptr inbounds %struct.ahc_devinfo, ptr %devinfo, i32 0, i32 1
  %24 = ptrtoint ptr %target_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %target_offset.i, align 4
  %arrayidx10.i = getelementptr [16 x i8], ptr %arrayidx.i, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx10.i, align 1
  %28 = tail call i8 @llvm.umin.i8(i8 %27, i8 -3) #14
  %29 = zext i8 %28 to i32
  br label %ahc_linux_user_tagdepth.exit

ahc_linux_user_tagdepth.exit:                     ; preds = %if.else.i, %do.end.i, %if.then5.i.ahc_linux_user_tagdepth.exit_crit_edge, %if.then14.ahc_linux_user_tagdepth.exit_crit_edge
  %tags.0.i = phi i32 [ %29, %if.else.i ], [ 0, %if.then14.ahc_linux_user_tagdepth.exit_crit_edge ], [ 253, %do.end.i ], [ 253, %if.then5.i.ahc_linux_user_tagdepth.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then17, label %ahc_linux_user_tagdepth.exit.if.end20_crit_edge

ahc_linux_user_tagdepth.exit.if.end20_crit_edge:  ; preds = %ahc_linux_user_tagdepth.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then17:                                        ; preds = %ahc_linux_user_tagdepth.exit
  call void @__sanitizer_cov_trace_pc() #16
  %maxtags = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i, i32 0, i32 6
  %30 = ptrtoint ptr %maxtags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %tags.0.i, ptr %maxtags, align 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i, align 4
  %sub = sub i32 %tags.0.i, %32
  %openings = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i, i32 0, i32 1
  %33 = ptrtoint ptr %openings to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub, ptr %openings, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %ahc_linux_user_tagdepth.exit.if.end20_crit_edge
  %maxtags21 = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i, i32 0, i32 6
  %34 = ptrtoint ptr %maxtags21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %maxtags21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp22 = icmp eq i32 %35, 0
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %openings24 = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i, i32 0, i32 1
  %36 = ptrtoint ptr %openings24 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %openings24, align 4
  br label %if.end44

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %alg)
  %cmp25 = icmp eq i32 %alg, 2
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  br i1 %cmp25, label %if.then26, label %if.else34

if.then26:                                        ; preds = %if.else
  %or28 = or i32 %38, 32
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or28, ptr %flags, align 4
  %40 = load i32, ptr @aic7xxx_periodic_otag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp29.not = icmp eq i32 %40, 0
  br i1 %cmp29.not, label %if.then26.if.end44_crit_edge, label %if.then30

if.then26.if.end44_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  %or32 = or i32 %38, 96
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or32, ptr %flags, align 4
  br label %if.end44

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %or36 = or i32 %38, 16
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or36, ptr %flags, align 4
  br label %if.end44

if.else39:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %maxtags40 = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i, i32 0, i32 6
  %43 = ptrtoint ptr %maxtags40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %maxtags40, align 4
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i, align 4
  %sub42 = sub i32 1, %45
  %openings43 = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i, i32 0, i32 1
  %46 = ptrtoint ptr %openings43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub42, ptr %openings43, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else39, %if.else34, %if.then30, %if.then26.if.end44_crit_edge, %if.then23
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  %and46 = and i32 %48, 48
  %49 = zext i32 %and46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %and46, label %if.end44.cleanup.sink.split_crit_edge [
    i32 16, label %if.end44.sw.bb47_crit_edge
    i32 32, label %if.end44.sw.bb47_crit_edge82
  ]

if.end44.sw.bb47_crit_edge82:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb47

if.end44.sw.bb47_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb47

if.end44.cleanup.sink.split_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

sw.bb47:                                          ; preds = %if.end44.sw.bb47_crit_edge, %if.end44.sw.bb47_crit_edge82
  %openings48 = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i, i32 0, i32 1
  %50 = ptrtoint ptr %openings48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %openings48, align 4
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i, align 4
  %add = add i32 %53, %51
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb47, %if.end44.cleanup.sink.split_crit_edge
  %add.sink = phi i32 [ %add, %sw.bb47 ], [ 2, %if.end44.cleanup.sink.split_crit_edge ]
  %call50 = tail call i32 @scsi_change_queue_depth(ptr noundef nonnull %sdev, i32 noundef %add.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_linux_isr(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.ahc_softc, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahc_platform_data, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %call = tail call i32 @ahc_intr(ptr noundef %dev_id) #14
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i4 = getelementptr inbounds %struct.ahc_platform_data, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i4, i32 noundef %call2.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_intr(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ahc_platform_flushwork(ptr nocapture noundef %ahc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahc_send_async(ptr noundef %ahc, i8 noundef zeroext %channel, i32 noundef %target, i32 noundef %lun, i32 noundef %code) local_unnamed_addr #0 align 64 {
entry:
  %tstate = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %code, label %sw.default [
    i32 512, label %sw.bb
    i32 16, label %sw.bb173
    i32 1, label %sw.bb206
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tstate) #14
  %1 = ptrtoint ptr %tstate to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %target)
  %cmp = icmp eq i32 %target, -1
  br i1 %cmp, label %do.body2, label %do.end7, !prof !272

do.body2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic7xxx/aic7xxx_osm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1599, 0\0A.popsection", ""() #14, !srcloc !273
  unreachable

do.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %channel)
  %cmp8 = icmp eq i8 %channel, 65
  %our_id = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 31
  %our_id_b = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 32
  %cond.in.in = select i1 %cmp8, ptr %our_id, ptr %our_id_b
  %2 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %cond.in = load i8, ptr %cond.in.in, align 1
  %cond = zext i8 %cond.in to i32
  %call = call ptr @ahc_fetch_transinfo(ptr noundef %ahc, i8 noundef zeroext %channel, i32 noundef %cond, i32 noundef %target, ptr noundef nonnull %tstate) #14
  %period = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %period to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %period, align 1
  %period13 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %period13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %period13, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp15.not = icmp eq i8 %4, %6
  br i1 %cmp15.not, label %lor.lhs.false, label %do.end7.if.then40_crit_edge

do.end7.if.then40_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then40

lor.lhs.false:                                    ; preds = %do.end7
  %width = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %width, align 1
  %width20 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %width20 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %width20, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp22.not = icmp eq i8 %8, %10
  br i1 %cmp22.not, label %lor.lhs.false24, label %lor.lhs.false.if.then40_crit_edge

lor.lhs.false.if.then40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then40

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %offset = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %offset, align 1
  %offset28 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %offset28 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %offset28, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp30.not = icmp eq i8 %12, %14
  br i1 %cmp30.not, label %lor.lhs.false32, label %lor.lhs.false24.if.then40_crit_edge

lor.lhs.false24.if.then40_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then40

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %ppr_options = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ppr_options, align 1
  %ppr_options36 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call, i32 0, i32 2, i32 5
  %17 = ptrtoint ptr %ppr_options36 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ppr_options36, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp38.not = icmp eq i8 %16, %18
  br i1 %cmp38.not, label %lor.lhs.false32.if.end45_crit_edge, label %lor.lhs.false32.if.then40_crit_edge

lor.lhs.false32.if.then40_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then40

lor.lhs.false32.if.end45_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then40:                                        ; preds = %lor.lhs.false32.if.then40_crit_edge, %lor.lhs.false24.if.then40_crit_edge, %lor.lhs.false.if.then40_crit_edge, %do.end7.if.then40_crit_edge
  %19 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp41 = icmp eq i32 %19, 0
  br i1 %cmp41, label %if.then40.cleanup_crit_edge, label %if.then40.if.end45_crit_edge

if.then40.if.end45_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end45:                                         ; preds = %if.then40.if.end45_crit_edge, %lor.lhs.false32.if.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %channel)
  %cmp47 = icmp eq i8 %channel, 66
  %add = add i32 %target, 8
  %spec.select = select i1 %cmp47, i32 %add, i32 %target
  %platform_data = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 8
  %20 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platform_data, align 4
  %arrayidx = getelementptr [16 x ptr], ptr %21, i32 0, i32 %spec.select
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %cmp52 = icmp eq ptr %23, null
  br i1 %cmp52, label %if.end45.cleanup_crit_edge, label %if.end55

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end55:                                         ; preds = %if.end45
  %starget_data = getelementptr inbounds %struct.scsi_target, ptr %23, i32 0, i32 15
  %dt = getelementptr inbounds %struct.scsi_target, ptr %23, i32 1, i32 2
  %24 = ptrtoint ptr %dt to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load = load i16, ptr %dt, align 4
  %25 = lshr i16 %bf.load, 10
  %26 = and i16 %25, 2
  %27 = lshr i16 %bf.load, 8
  %28 = and i16 %27, 4
  %add65263 = or i16 %26, %28
  %29 = lshr i16 %bf.load, 13
  %.lobit = and i16 %29, 1
  %add73264 = or i16 %add65263, %.lobit
  %conv76 = zext i8 %4 to i32
  %30 = ptrtoint ptr %starget_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %starget_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv76)
  %cmp79 = icmp eq i32 %31, %conv76
  br i1 %cmp79, label %land.lhs.true, label %if.end55.if.end110_crit_edge

if.end55.if.end110_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

land.lhs.true:                                    ; preds = %if.end55
  %width82 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %width82 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %width82, align 1
  %bf.lshr87 = lshr i16 %bf.load, 15
  %34 = zext i8 %33 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr87, i16 %34)
  %cmp89 = icmp eq i16 %bf.lshr87, %34
  br i1 %cmp89, label %land.lhs.true91, label %land.lhs.true.if.end110_crit_edge

land.lhs.true.if.end110_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

land.lhs.true91:                                  ; preds = %land.lhs.true
  %offset93 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %offset93 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %offset93, align 1
  %conv94 = zext i8 %36 to i32
  %offset96 = getelementptr inbounds %struct.scsi_target, ptr %23, i32 1, i32 1
  %37 = ptrtoint ptr %offset96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset96, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv94)
  %cmp97 = icmp eq i32 %38, %conv94
  br i1 %cmp97, label %land.lhs.true99, label %land.lhs.true91.if.end110_crit_edge

land.lhs.true91.if.end110_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

land.lhs.true99:                                  ; preds = %land.lhs.true91
  %ppr_options101 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call, i32 0, i32 1, i32 5
  %39 = ptrtoint ptr %ppr_options101 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ppr_options101, align 1
  %41 = zext i8 %40 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %add73264, i16 %41)
  %cmp103 = icmp eq i16 %add73264, %41
  br i1 %cmp103, label %if.then105, label %land.lhs.true99.if.end110_crit_edge

land.lhs.true99.if.end110_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

if.then105:                                       ; preds = %land.lhs.true99
  %42 = load i32, ptr @aic7xxx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp106 = icmp eq i32 %42, 0
  br i1 %cmp106, label %if.then105.cleanup_crit_edge, label %if.then105.if.end110_crit_edge

if.then105.if.end110_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

if.then105.cleanup_crit_edge:                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end110:                                        ; preds = %if.then105.if.end110_crit_edge, %land.lhs.true99.if.end110_crit_edge, %land.lhs.true91.if.end110_crit_edge, %land.lhs.true.if.end110_crit_edge, %if.end55.if.end110_crit_edge
  %43 = ptrtoint ptr %starget_data to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv76, ptr %starget_data, align 4
  %width117 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %width117 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %width117, align 1
  %bf.value = zext i8 %45 to i16
  %bf.shl = shl i16 %bf.value, 15
  %bf.clear122 = and i16 %bf.load, 32767
  %bf.set = or i16 %bf.shl, %bf.clear122
  %46 = ptrtoint ptr %dt to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %bf.set, ptr %dt, align 4
  %offset124 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %offset124 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %offset124, align 1
  %conv125 = zext i8 %48 to i32
  %offset127 = getelementptr inbounds %struct.scsi_target, ptr %23, i32 1, i32 1
  %49 = ptrtoint ptr %offset127 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv125, ptr %offset127, align 4
  %ppr_options129 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call, i32 0, i32 1, i32 5
  %50 = ptrtoint ptr %ppr_options129 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ppr_options129, align 1
  %52 = lshr i8 %51, 1
  %53 = and i8 %52, 1
  %bf.value136 = zext i8 %53 to i16
  %bf.shl137 = shl nuw nsw i16 %bf.value136, 11
  %bf.clear138 = and i16 %bf.set, -2049
  %bf.set139 = or i16 %bf.shl137, %bf.clear138
  store i16 %bf.set139, ptr %dt, align 4
  %54 = load i8, ptr %ppr_options129, align 1
  %55 = lshr i8 %54, 2
  %56 = and i8 %55, 1
  %bf.value150 = zext i8 %56 to i16
  %bf.shl151 = shl nuw nsw i16 %bf.value150, 10
  %bf.clear152 = and i16 %bf.set139, -1025
  %bf.set153 = or i16 %bf.clear152, %bf.shl151
  store i16 %bf.set153, ptr %dt, align 4
  %57 = load i8, ptr %ppr_options129, align 1
  %58 = and i8 %57, 1
  %bf.value164 = zext i8 %58 to i16
  %bf.shl165 = shl nuw nsw i16 %bf.value164, 13
  %bf.clear166 = and i16 %bf.set153, -8193
  %bf.set167 = or i16 %bf.clear166, %bf.shl165
  store i16 %bf.set167, ptr %dt, align 4
  call void @spi_display_xfer_agreement(ptr noundef nonnull %23) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %if.then105.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.then40.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  br label %sw.epilog

sw.bb173:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lun)
  %cmp174.not = icmp eq i32 %lun, -1
  br i1 %cmp174.not, label %sw.bb173.if.end197_crit_edge, label %do.end191, !prof !270

sw.bb173.if.end197_crit_edge:                     ; preds = %sw.bb173
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end197

do.end191:                                        ; preds = %sw.bb173
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1651, i32 noundef 9, ptr noundef null) #14
  br label %if.end197

if.end197:                                        ; preds = %do.end191, %sw.bb173.if.end197_crit_edge
  %platform_data204 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 8
  %59 = ptrtoint ptr %platform_data204 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %platform_data204, align 4
  %host = getelementptr inbounds %struct.ahc_platform_data, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %host, align 4
  %conv205 = zext i8 %channel to i32
  %sub = add nsw i32 %conv205, -65
  tail call void @scsi_report_device_reset(ptr noundef %62, i32 noundef %sub, i32 noundef %target) #14
  br label %sw.epilog

sw.bb206:                                         ; preds = %entry
  %platform_data207 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 8
  %63 = ptrtoint ptr %platform_data207 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %platform_data207, align 4
  %host208 = getelementptr inbounds %struct.ahc_platform_data, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %host208 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %host208, align 4
  %cmp209.not = icmp eq ptr %66, null
  br i1 %cmp209.not, label %sw.bb206.sw.epilog_crit_edge, label %if.then211

sw.bb206.sw.epilog_crit_edge:                     ; preds = %sw.bb206
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then211:                                       ; preds = %sw.bb206
  call void @__sanitizer_cov_trace_pc() #16
  %conv214 = zext i8 %channel to i32
  %sub215 = add nsw i32 %conv214, -65
  tail call void @scsi_report_bus_reset(ptr noundef nonnull %66, i32 noundef %sub215) #14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.9) #18
  unreachable

sw.epilog:                                        ; preds = %if.then211, %sw.bb206.sw.epilog_crit_edge, %if.end197, %cleanup
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahc_fetch_transinfo(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_display_xfer_agreement(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_report_device_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_report_bus_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahc_done(ptr noundef %ahc, ptr noundef %scb) local_unnamed_addr #0 align 64 {
entry:
  %devinfo.i = alloca %struct.ahc_devinfo, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_links = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 2
  %0 = ptrtoint ptr %pending_links to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending_links, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %le_prev = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %le_prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %le_prev, align 4
  %le_prev5 = getelementptr inbounds %struct.scb, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %le_prev5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %le_prev5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %pending_links to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pending_links, align 4
  %le_prev9 = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %le_prev9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %le_prev9, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %8, align 4
  %flags = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 5
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp10.not = icmp eq i32 %and, 0
  br i1 %cmp10.not, label %if.else64, label %if.then11

if.then11:                                        ; preds = %if.end
  %12 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scb, align 4
  %scsiid = getelementptr inbounds %struct.hardware_scb, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %scsiid to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %scsiid, align 1
  %conv = zext i8 %15 to i32
  %features = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 17
  %16 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %features, align 4
  %and12 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13.not = icmp eq i32 %and12, 0
  %cond = select i1 %cmp13.not, i32 240, i32 112
  %and15 = and i32 %cond, %conv
  %18 = lshr exact i32 %and15, 4
  %and23 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %cmp24.not = icmp ne i32 %and23, 0
  %not.cmp13.not = xor i1 %cmp13.not, true
  %19 = select i1 %not.cmp13.not, i1 %cmp24.not, i1 false
  %cond30 = select i1 %19, i32 8, i32 0
  %add = add nuw nsw i32 %18, %cond30
  %arrayidx = getelementptr %struct.ahc_softc, ptr %ahc, i32 0, i32 6, i32 %add
  %links = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 1
  %20 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %links, align 4
  %cmp32.not = icmp eq ptr %21, null
  %tqe_prev41 = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %tqe_prev41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tqe_prev41, align 4
  %tqh_last = getelementptr %struct.ahc_softc, ptr %ahc, i32 0, i32 6, i32 %add, i32 1
  %tqe_prev39 = getelementptr inbounds %struct.scb, ptr %21, i32 0, i32 1, i32 0, i32 1
  %tqh_last.sink = select i1 %cmp32.not, ptr %tqh_last, ptr %tqe_prev39
  %24 = ptrtoint ptr %tqh_last.sink to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %tqh_last.sink, align 4
  %25 = load ptr, ptr %links, align 4
  %tqe_prev46 = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %tqe_prev46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tqe_prev46, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %27, align 4
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %cmp50.not = icmp eq ptr %30, null
  br i1 %cmp50.not, label %if.then11.if.end76_crit_edge, label %do.body55, !prof !270

if.then11.if.end76_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

do.body55:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic7xxx/aic7xxx_osm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1684, 0\0A.popsection", ""() #14, !srcloc !274
  unreachable

if.else64:                                        ; preds = %if.end
  %and66 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %cmp67 = icmp eq i32 %and66, 0
  br i1 %cmp67, label %do.end72, label %if.else64.if.end76_crit_edge

if.else64.if.end76_crit_edge:                     ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

do.end72:                                         ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %scb, align 4
  %tag = getelementptr inbounds %struct.hardware_scb, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tag, align 1
  %conv74 = zext i8 %34 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv74) #17
  tail call void @ahc_dump_card_state(ptr noundef %ahc) #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.12) #18
  unreachable

if.end76:                                         ; preds = %if.else64.if.end76_crit_edge, %if.then11.if.end76_crit_edge
  %io_ctx = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 3
  %35 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_ctx, align 4
  %platform_data = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 6
  %37 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %platform_data, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %dec = add i32 %42, -1
  store i32 %dec, ptr %40, align 4
  %openings = getelementptr inbounds %struct.ahc_linux_device, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %openings to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %openings, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %openings, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %36, i32 0, i32 24
  %45 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %result, align 4
  %and78 = and i32 %46, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %cmp79.not = icmp eq i32 %and78, 0
  br i1 %cmp79.not, label %if.end76.if.end85_crit_edge, label %if.then81

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  %and83 = and i32 %46, -4194305
  %47 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and83, ptr %result, align 4
  %qfrozen = getelementptr inbounds %struct.ahc_linux_device, ptr %40, i32 0, i32 2
  %48 = ptrtoint ptr %qfrozen to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qfrozen, align 4
  %dec84 = add i32 %49, -1
  store i32 %dec84, ptr %qfrozen, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.end76.if.end85_crit_edge
  %50 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io_ctx, align 4
  tail call void @ahc_sync_sglist(ptr noundef %ahc, ptr noundef %scb, i32 noundef 8) #14
  tail call void @scsi_dma_unmap(ptr noundef %51) #14
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %36, i32 0, i32 21
  %52 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sense_buffer, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %53, align 1
  %55 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_ctx, align 4
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %56, i32 0, i32 24
  %57 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %result.i.i, align 4
  %59 = lshr i32 %58, 16
  %and.i.i = and i32 %59, 63
  %60 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %and.i.i, label %if.end85.if.end114_crit_edge [
    i32 0, label %if.then90
    i32 10, label %if.then112
  ]

if.end85.if.end114_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

if.then90:                                        ; preds = %if.end85
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags, align 4
  %and92 = and i32 %62, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %cmp93.not = icmp eq i32 %and92, 0
  br i1 %cmp93.not, label %if.else106, label %if.then95

if.then95:                                        ; preds = %if.then90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahc_debug to i32))
  %63 = load i32, ptr @ahc_debug, align 4
  %and96 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %cmp97.not = icmp eq i32 %and96, 0
  br i1 %cmp97.not, label %if.then95.if.end105_crit_edge, label %if.then99

if.then95.if.end105_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.then99:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ahc_print_path(ptr noundef %ahc, ptr noundef %scb)
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #17
  br label %if.end105

if.end105:                                        ; preds = %if.then99, %if.then95.if.end105_crit_edge
  %64 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %io_ctx, align 4
  %result.i.i235 = getelementptr inbounds %struct.scsi_cmnd, ptr %65, i32 0, i32 24
  %66 = ptrtoint ptr %result.i.i235 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %result.i.i235, align 4
  %and.i.i236 = and i32 %67, -4128769
  %or.i.i = or i32 %and.i.i236, 786432
  store i32 %or.i.i, ptr %result.i.i235, align 4
  br label %if.end114

if.else106:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #16
  %and.i.i239 = and i32 %58, -4128769
  %or.i.i240 = or i32 %and.i.i239, 65536
  %68 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or.i.i240, ptr %result.i.i, align 4
  br label %if.end114

if.then112:                                       ; preds = %if.end85
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %36, i32 0, i32 1
  %69 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo.i) #14
  %71 = call ptr @memset(ptr %devinfo.i, i32 255, i32 28)
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %70, align 8
  %sdev_data.i.i = getelementptr inbounds %struct.scsi_device, ptr %70, i32 0, i32 71
  %transportt.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %73, i32 0, i32 12
  %74 = ptrtoint ptr %transportt.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %transportt.i.i, align 4
  %device_private_offset.i.i = getelementptr inbounds %struct.scsi_transport_template, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %device_private_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %device_private_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %sdev_data.i.i, i32 %77
  %our_id.i = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 31
  %78 = ptrtoint ptr %our_id.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %our_id.i, align 2
  %conv.i = zext i8 %79 to i32
  %sdev_target.i = getelementptr inbounds %struct.scsi_device, ptr %70, i32 0, i32 37
  %80 = ptrtoint ptr %sdev_target.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sdev_target.i, align 8
  %id.i = getelementptr inbounds %struct.scsi_target, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %id.i, align 8
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %70, i32 0, i32 18
  %84 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %lun.i, align 8
  %conv1.i = trunc i64 %85 to i32
  %channel.i = getelementptr inbounds %struct.scsi_target, ptr %81, i32 0, i32 5
  %86 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i = icmp eq i32 %87, 0
  %conv4.i = select i1 %cmp.i, i8 65, i8 66
  call void @ahc_compile_devinfo(ptr noundef nonnull %devinfo.i, i32 noundef %conv.i, i32 noundef %83, i32 noundef %conv1.i, i8 noundef zeroext %conv4.i, i32 noundef 1) #14
  %88 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %io_ctx, align 4
  %result.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %89, i32 0, i32 24
  %90 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %result.i.i.i, align 4
  %trunc.i = trunc i32 %91 to i16
  %92 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.114)
  switch i16 %trunc.i, label %if.then112.ahc_linux_handle_scsi_status.exit_crit_edge [
    i16 2, label %if.then112.sw.bb.i_crit_edge
    i16 34, label %if.then112.sw.bb.i_crit_edge263
    i16 40, label %sw.bb48.i
  ]

if.then112.sw.bb.i_crit_edge263:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then112.sw.bb.i_crit_edge:                     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then112.ahc_linux_handle_scsi_status.exit_crit_edge: ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_linux_handle_scsi_status.exit

sw.bb.i:                                          ; preds = %if.then112.sw.bb.i_crit_edge, %if.then112.sw.bb.i_crit_edge263
  %93 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags, align 4
  %and.i = and i32 %94, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.ahc_linux_handle_scsi_status.exit_crit_edge, label %if.then.i

sw.bb.i.ahc_linux_handle_scsi_status.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_linux_handle_scsi_status.exit

if.then.i:                                        ; preds = %sw.bb.i
  %95 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %platform_data, align 4
  %sense_resid.i.i = getelementptr inbounds %struct.scb_platform_data, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %sense_resid.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sense_resid.i.i, align 4
  %sub.i = sub i32 32, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %sub.i)
  %cmp7.i = icmp ult i32 %sub.i, 96
  %99 = call i32 @llvm.umin.i32(i32 %sub.i, i32 96) #14
  %sense_buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %89, i32 0, i32 21
  %100 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sense_buffer.i, align 4
  %call10.i = call ptr @ahc_get_sense_buf(ptr noundef %ahc, ptr noundef %scb) #14
  %102 = call ptr @memcpy(ptr %101, ptr %call10.i, i32 %99)
  br i1 %cmp7.i, label %if.then13.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %103 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sense_buffer.i, align 4
  %arrayidx.i = getelementptr i8, ptr %104, i32 %99
  %sub15.i = sub nuw nsw i32 96, %99
  %105 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 %sub15.i)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then13.i, %if.then.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahc_debug to i32))
  %106 = load i32, ptr @ahc_debug, align 4
  %and16.i = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end.i.ahc_linux_handle_scsi_status.exit_crit_edge, label %if.then18.i

if.end.i.ahc_linux_handle_scsi_status.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_linux_handle_scsi_status.exit

if.then18.i:                                      ; preds = %if.end.i
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %99) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp21137.not.i = icmp eq i32 %99, 0
  br i1 %cmp21137.not.i, label %if.then18.i.do.end43.i_crit_edge, label %if.then18.i.for.body.i_crit_edge

if.then18.i.for.body.i_crit_edge:                 ; preds = %if.then18.i
  br label %for.body.i

if.then18.i.do.end43.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end43.i

for.body.i:                                       ; preds = %do.end35.i.for.body.i_crit_edge, %if.then18.i.for.body.i_crit_edge
  %i.0138.i = phi i32 [ %inc.i, %do.end35.i.for.body.i_crit_edge ], [ 0, %if.then18.i.for.body.i_crit_edge ]
  %and23.i = and i32 %i.0138.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %cmp24.i = icmp eq i32 %and23.i, 0
  br i1 %cmp24.i, label %do.end29.i, label %for.body.i.do.end35.i_crit_edge

for.body.i.do.end35.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end35.i

do.end29.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #17
  br label %do.end35.i

do.end35.i:                                       ; preds = %do.end29.i, %for.body.i.do.end35.i_crit_edge
  %107 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %sense_buffer.i, align 4
  %arrayidx38.i = getelementptr i8, ptr %108, i32 %i.0138.i
  %109 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx38.i, align 1
  %conv39.i = zext i8 %110 to i32
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %conv39.i) #17
  %inc.i = add nuw nsw i32 %i.0138.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %99
  br i1 %exitcond.not.i, label %do.end35.i.do.end43.i_crit_edge, label %do.end35.i.for.body.i_crit_edge

do.end35.i.for.body.i_crit_edge:                  ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end35.i.do.end43.i_crit_edge:                  ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end43.i

do.end43.i:                                       ; preds = %do.end35.i.do.end43.i_crit_edge, %if.then18.i.do.end43.i_crit_edge
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #17
  br label %ahc_linux_handle_scsi_status.exit

sw.bb48.i:                                        ; preds = %if.then112
  %tag_success_count.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i, i32 0, i32 4
  %111 = ptrtoint ptr %tag_success_count.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %tag_success_count.i, align 4
  %112 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp49.not.i = icmp eq i32 %113, 0
  %openings78.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i, i32 0, i32 1
  br i1 %cmp49.not.i, label %if.end77.i, label %if.then51.i

if.then51.i:                                      ; preds = %sw.bb48.i
  %114 = ptrtoint ptr %openings78.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %openings78.i, align 4
  %tags_on_last_queuefull.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i, i32 0, i32 7
  %115 = ptrtoint ptr %tags_on_last_queuefull.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tags_on_last_queuefull.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %116)
  %cmp53.i = icmp eq i32 %113, %116
  br i1 %cmp53.i, label %if.then55.i, label %if.else.i

if.then55.i:                                      ; preds = %if.then51.i
  %last_queuefull_same_count.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i, i32 0, i32 8
  %117 = ptrtoint ptr %last_queuefull_same_count.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %last_queuefull_same_count.i, align 4
  %inc56.i = add i32 %118, 1
  store i32 %inc56.i, ptr %last_queuefull_same_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %inc56.i)
  %cmp58.i = icmp eq i32 %inc56.i, 50
  br i1 %cmp58.i, label %if.then60.i, label %if.then55.i.if.end72.i_crit_edge

if.then55.i.if.end72.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.i

if.then60.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #16
  %maxtags.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i, i32 0, i32 6
  %119 = ptrtoint ptr %maxtags.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %113, ptr %maxtags.i, align 4
  call void @ahc_print_path(ptr noundef %ahc, ptr noundef %scb) #14
  %120 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr.i.i, align 4
  %call67.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %121) #17
  br label %if.end72.i

if.else.i:                                        ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #16
  %122 = ptrtoint ptr %tags_on_last_queuefull.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %113, ptr %tags_on_last_queuefull.i, align 4
  %last_queuefull_same_count71.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i, i32 0, i32 8
  %123 = ptrtoint ptr %last_queuefull_same_count71.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %last_queuefull_same_count71.i, align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.else.i, %if.then60.i, %if.then55.i.if.end72.i_crit_edge
  %124 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %io_ctx, align 4
  %result.i.i128.i = getelementptr inbounds %struct.scsi_cmnd, ptr %125, i32 0, i32 24
  %126 = ptrtoint ptr %result.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %result.i.i128.i, align 4
  %and.i.i129.i = and i32 %127, -4128769
  %or.i.i.i = or i32 %and.i.i129.i, 1835008
  store i32 %or.i.i.i, ptr %result.i.i128.i, align 4
  %128 = load ptr, ptr %io_ctx, align 4
  %result.i.i131.i = getelementptr inbounds %struct.scsi_cmnd, ptr %128, i32 0, i32 24
  %129 = ptrtoint ptr %result.i.i131.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %result.i.i131.i, align 4
  %and.i.i132.i = and i32 %130, -65536
  store i32 %and.i.i132.i, ptr %result.i.i131.i, align 4
  %flags73.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i, i32 0, i32 5
  %131 = ptrtoint ptr %flags73.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %flags73.i, align 4
  %and74.i = and i32 %132, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  %cond76.i = select i1 %tobool75.not.i, i32 2, i32 1
  call void @ahc_platform_set_tags(ptr noundef %ahc, ptr noundef %70, ptr noundef nonnull %devinfo.i, i32 noundef %cond76.i) #14
  br label %ahc_linux_handle_scsi_status.exit

if.end77.i:                                       ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #16
  %133 = ptrtoint ptr %openings78.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1, ptr %openings78.i, align 4
  %134 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %io_ctx, align 4
  %result.i.i134.i = getelementptr inbounds %struct.scsi_cmnd, ptr %135, i32 0, i32 24
  %136 = ptrtoint ptr %result.i.i134.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %result.i.i134.i, align 4
  %and.i.i135.i = and i32 %137, -65536
  %or.i.i136.i = or i32 %and.i.i135.i, 8
  store i32 %or.i.i136.i, ptr %result.i.i134.i, align 4
  %flags79.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i, i32 0, i32 5
  %138 = ptrtoint ptr %flags79.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flags79.i, align 4
  %and80.i = and i32 %139, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  %cond82.i = select i1 %tobool81.not.i, i32 2, i32 1
  call void @ahc_platform_set_tags(ptr noundef %ahc, ptr noundef %70, ptr noundef nonnull %devinfo.i, i32 noundef %cond82.i) #14
  br label %ahc_linux_handle_scsi_status.exit

ahc_linux_handle_scsi_status.exit:                ; preds = %if.end77.i, %if.end72.i, %do.end43.i, %if.end.i.ahc_linux_handle_scsi_status.exit_crit_edge, %sw.bb.i.ahc_linux_handle_scsi_status.exit_crit_edge, %if.then112.ahc_linux_handle_scsi_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo.i) #14
  br label %if.end114

if.end114:                                        ; preds = %ahc_linux_handle_scsi_status.exit, %if.else106, %if.end105, %if.end85.if.end114_crit_edge
  %140 = ptrtoint ptr %openings to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %openings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %141)
  %cmp116 = icmp eq i32 %141, 1
  br i1 %cmp116, label %land.lhs.true, label %if.end114.if.end127_crit_edge

if.end114.if.end127_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end127

land.lhs.true:                                    ; preds = %if.end114
  %142 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %io_ctx, align 4
  %result.i.i245 = getelementptr inbounds %struct.scsi_cmnd, ptr %143, i32 0, i32 24
  %144 = ptrtoint ptr %result.i.i245 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %result.i.i245, align 4
  %146 = and i32 %145, 4128768
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %146)
  %cmp119 = icmp ne i32 %146, 65536
  %and.i.i249 = and i32 %145, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %and.i.i249)
  %cmp123.not = icmp eq i32 %and.i.i249, 40
  %or.cond = or i1 %cmp119, %cmp123.not
  br i1 %or.cond, label %land.lhs.true.if.end127_crit_edge, label %if.then125

land.lhs.true.if.end127_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end127

if.then125:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %tag_success_count = getelementptr inbounds %struct.ahc_linux_device, ptr %40, i32 0, i32 4
  %147 = ptrtoint ptr %tag_success_count to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tag_success_count, align 4
  %inc126 = add i32 %148, 1
  store i32 %inc126, ptr %tag_success_count, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %land.lhs.true.if.end127_crit_edge, %if.end114.if.end127_crit_edge
  %149 = ptrtoint ptr %openings to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %openings, align 4
  %151 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %40, align 4
  %add130 = add i32 %152, %150
  %maxtags = getelementptr inbounds %struct.ahc_linux_device, ptr %40, i32 0, i32 6
  %153 = ptrtoint ptr %maxtags to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %maxtags, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add130, i32 %154)
  %cmp131 = icmp ult i32 %add130, %154
  br i1 %cmp131, label %land.lhs.true133, label %if.end127.if.end141_crit_edge

if.end127.if.end141_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end141

land.lhs.true133:                                 ; preds = %if.end127
  %tag_success_count134 = getelementptr inbounds %struct.ahc_linux_device, ptr %40, i32 0, i32 4
  %155 = ptrtoint ptr %tag_success_count134 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %tag_success_count134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %156)
  %cmp135 = icmp ugt i32 %156, 50
  br i1 %cmp135, label %if.then137, label %land.lhs.true133.if.end141thread-pre-split_crit_edge

land.lhs.true133.if.end141thread-pre-split_crit_edge: ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end141thread-pre-split

if.then137:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #16
  %157 = ptrtoint ptr %tag_success_count134 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %tag_success_count134, align 4
  %inc140 = add i32 %150, 1
  %158 = ptrtoint ptr %openings to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %inc140, ptr %openings, align 4
  br label %if.end141thread-pre-split

if.end141thread-pre-split:                        ; preds = %if.then137, %land.lhs.true133.if.end141thread-pre-split_crit_edge
  %159 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %159)
  %.pr = load i32, ptr %40, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.end141thread-pre-split, %if.end127.if.end141_crit_edge
  %160 = phi i32 [ %.pr, %if.end141thread-pre-split ], [ %152, %if.end127.if.end141_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp143 = icmp eq i32 %160, 0
  br i1 %cmp143, label %if.then145, label %if.end141.if.end146_crit_edge

if.end141.if.end146_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146

if.then145:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  %commands_since_idle_or_otag = getelementptr inbounds %struct.ahc_linux_device, ptr %40, i32 0, i32 9
  %161 = ptrtoint ptr %commands_since_idle_or_otag to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %commands_since_idle_or_otag, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.end141.if.end146_crit_edge
  %162 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %flags, align 4
  %and148 = and i32 %163, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %cmp149.not = icmp eq i32 %and148, 0
  br i1 %cmp149.not, label %if.end146.if.end171_crit_edge, label %do.end154

if.end146.if.end171_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171

do.end154:                                        ; preds = %if.end146
  %call156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #17
  %164 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %io_ctx, align 4
  %result.i.i251 = getelementptr inbounds %struct.scsi_cmnd, ptr %165, i32 0, i32 24
  %166 = ptrtoint ptr %result.i.i251 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %result.i.i251, align 4
  %168 = lshr i32 %167, 16
  %and.i.i252 = and i32 %168, 63
  %169 = zext i32 %and.i.i252 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %and.i.i252, label %do.end154.if.end164_crit_edge [
    i32 20, label %do.end154.if.then163_crit_edge
    i32 2, label %do.end154.if.then163_crit_edge264
  ]

do.end154.if.then163_crit_edge264:                ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then163

do.end154.if.then163_crit_edge:                   ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then163

do.end154.if.end164_crit_edge:                    ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end164

if.then163:                                       ; preds = %do.end154.if.then163_crit_edge, %do.end154.if.then163_crit_edge264
  %and.i.i258 = and i32 %167, -4128769
  %or.i.i259 = or i32 %and.i.i258, 589824
  %170 = ptrtoint ptr %result.i.i251 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %or.i.i259, ptr %result.i.i251, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then163, %do.end154.if.end164_crit_edge
  %platform_data165 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 8
  %171 = ptrtoint ptr %platform_data165 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %platform_data165, align 4
  %eh_done = getelementptr inbounds %struct.ahc_platform_data, ptr %172, i32 0, i32 3
  %173 = ptrtoint ptr %eh_done to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %eh_done, align 4
  %tobool166.not = icmp eq ptr %174, null
  br i1 %tobool166.not, label %if.end164.if.end171_crit_edge, label %if.then167

if.end164.if.end171_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171

if.then167:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #16
  call void @complete(ptr noundef nonnull %174) #14
  br label %if.end171

if.end171:                                        ; preds = %if.then167, %if.end164.if.end171_crit_edge, %if.end146.if.end171_crit_edge
  call void @ahc_free_scb(ptr noundef %ahc, ptr noundef %scb) #14
  %175 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %result, align 4
  %177 = lshr i32 %176, 16
  %and.i.i261 = and i32 %177, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %and.i.i261)
  %178 = icmp ult i32 %and.i.i261, 29
  br i1 %178, label %switch.lookup, label %if.end171.ahc_linux_queue_cmd_complete.exit_crit_edge

if.end171.ahc_linux_queue_cmd_complete.exit_crit_edge: ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahc_linux_queue_cmd_complete.exit

switch.lookup:                                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [29 x i32], ptr @switch.table.ahc_done, i32 0, i32 %and.i.i261
  %179 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %179)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ahc_linux_queue_cmd_complete.exit

ahc_linux_queue_cmd_complete.exit:                ; preds = %switch.lookup, %if.end171.ahc_linux_queue_cmd_complete.exit_crit_edge
  %new_status.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 458752, %if.end171.ahc_linux_queue_cmd_complete.exit_crit_edge ]
  %and.i2.i = and i32 %176, -4128769
  %or.i.i262 = or i32 %new_status.0.i, %and.i2.i
  %180 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %or.i.i262, ptr %result, align 4
  call void @scsi_done(ptr noundef %36) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_dump_card_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_free_scb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_linux_init() #10 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @aic7xxx, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @aic7xxx_setup(ptr noundef nonnull %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call ptr @spi_attach_transport(ptr noundef nonnull @ahc_linux_transport_functions) #14
  store ptr %call1, ptr @ahc_linux_transport_template, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end4:                                          ; preds = %if.end
  %device_private_offset.i = getelementptr inbounds %struct.scsi_transport_template, ptr %call1, i32 0, i32 5
  %1 = ptrtoint ptr %device_private_offset.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %device_private_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 0
  br i1 %cmp.not.i, label %scsi_transport_reserve_device.exit, label %do.body2.i, !prof !270

do.body2.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/scsi/scsi_transport.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #14, !srcloc !275
  unreachable

scsi_transport_reserve_device.exit:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %device_size.i = getelementptr inbounds %struct.scsi_transport_template, ptr %call1, i32 0, i32 4
  %3 = ptrtoint ptr %device_size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %device_size.i, align 4
  %add.i = add i32 %4, 3
  %and.i = and i32 %add.i, -4
  %5 = ptrtoint ptr %device_private_offset.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i, ptr %device_private_offset.i, align 4
  %add8.i = add i32 %and.i, 40
  store i32 %add8.i, ptr %device_size.i, align 4
  %call5 = tail call i32 @ahc_linux_pci_init() #14
  br label %return

return:                                           ; preds = %scsi_transport_reserve_device.exit, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %scsi_transport_reserve_device.exit ], [ -19, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahc_linux_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ahc_linux_pci_exit() #14
  %0 = load ptr, ptr @ahc_linux_transport_template, align 4
  tail call void @spi_release_transport(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahc_get_scb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_queue_scb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_controller_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ahc_linux_queue_recovery_cmd(ptr noundef %cmd, i32 noundef %flag) unnamed_addr #0 align 64 {
entry:
  %done300 = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %flag)
  %cmp = icmp eq i32 %flag, 256
  %cond = select i1 %cmp, ptr @.str.27, ptr @.str.28
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.25, ptr noundef %cmd, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond) #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #17
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %6 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp2480.not = icmp eq i16 %7, 0
  br i1 %cmp2480.not, label %entry.do.end12_crit_edge, label %do.end6.lr.ph

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

do.end6.lr.ph:                                    ; preds = %entry
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  br label %do.end6

do.end6:                                          ; preds = %do.end6.do.end6_crit_edge, %do.end6.lr.ph
  %cdb_byte.0481 = phi i32 [ 0, %do.end6.lr.ph ], [ %inc, %do.end6.do.end6_crit_edge ]
  %8 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 %cdb_byte.0481
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %11 to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv8) #17
  %inc = add nuw nsw i32 %cdb_byte.0481, 1
  %12 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cmd_len, align 4
  %conv = zext i16 %13 to i32
  %cmp2 = icmp ult i32 %inc, %conv
  br i1 %cmp2, label %do.end6.do.end6_crit_edge, label %do.end6.do.end12_crit_edge

do.end6.do.end12_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

do.end6.do.end6_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end6

do.end12:                                         ; preds = %do.end6.do.end12_crit_edge, %entry.do.end12_crit_edge
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #17
  %platform_data.i = getelementptr inbounds %struct.ahc_softc, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahc_platform_data, ptr %15, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %sdev_data.i = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 71
  %transportt.i = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %transportt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transportt.i, align 4
  %device_private_offset.i = getelementptr inbounds %struct.scsi_transport_template, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %device_private_offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %device_private_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %sdev_data.i, i32 %23
  %cmp17 = icmp eq ptr %add.ptr.i, null
  br i1 %cmp17, label %do.end21, label %if.end

do.end21:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.ahc_softc, ptr %5, i32 0, i32 55
  %24 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name.i, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 17
  %26 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 16
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 18
  %30 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %lun, align 8
  %conv27 = trunc i64 %31 to i32
  %conv28 = and i32 %conv27, 255
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %conv28) #17
  br label %if.else323

if.end:                                           ; preds = %do.end12
  %flags30 = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i, i32 0, i32 5
  %32 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags30, align 4
  %and = and i32 %33, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp31 = icmp eq i32 %and, 0
  br i1 %cmp31, label %land.lhs.true, label %if.end.if.end60_crit_edge

if.end.if.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

land.lhs.true:                                    ; preds = %if.end
  %id34 = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 16
  %34 = ptrtoint ptr %id34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id34, align 8
  %channel36 = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 17
  %36 = ptrtoint ptr %channel36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel36, align 4
  %38 = trunc i32 %37 to i8
  %conv37 = add i8 %38, 65
  %lun39 = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 18
  %39 = ptrtoint ptr %lun39 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %lun39, align 8
  %conv40 = trunc i64 %40 to i32
  %conv41 = and i32 %conv40, 255
  %call42 = tail call i32 @ahc_search_untagged_queues(ptr noundef %5, ptr noundef %cmd, i32 noundef %35, i8 noundef zeroext %conv37, i32 noundef %conv41, i32 noundef 2, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 0
  br i1 %cmp43.not, label %land.lhs.true.if.end60_crit_edge, label %do.end48

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

do.end48:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %name.i440 = getelementptr inbounds %struct.ahc_softc, ptr %5, i32 0, i32 55
  %41 = ptrtoint ptr %name.i440 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name.i440, align 4
  %43 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device, align 4
  %channel52 = getelementptr inbounds %struct.scsi_device, ptr %44, i32 0, i32 17
  %45 = ptrtoint ptr %channel52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %channel52, align 4
  %id54 = getelementptr inbounds %struct.scsi_device, ptr %44, i32 0, i32 16
  %47 = ptrtoint ptr %id54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id54, align 8
  %lun56 = getelementptr inbounds %struct.scsi_device, ptr %44, i32 0, i32 18
  %49 = ptrtoint ptr %lun56 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %lun56, align 8
  %conv57 = trunc i64 %50 to i32
  %conv58 = and i32 %conv57, 255
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %42, i32 noundef %46, i32 noundef %48, i32 noundef %conv58) #17
  br label %if.else323

if.end60:                                         ; preds = %land.lhs.true.if.end60_crit_edge, %if.end.if.end60_crit_edge
  %pending_scbs = getelementptr inbounds %struct.ahc_softc, ptr %5, i32 0, i32 4
  %51 = ptrtoint ptr %pending_scbs to i32
  call void @__asan_load4_noabort(i32 %51)
  %pending_scb.0482 = load ptr, ptr %pending_scbs, align 4
  %cond439483 = icmp eq ptr %pending_scb.0482, null
  br i1 %cond439483, label %if.end60.land.lhs.true71_crit_edge, label %if.end60.for.body62_crit_edge

if.end60.for.body62_crit_edge:                    ; preds = %if.end60
  br label %for.body62

if.end60.land.lhs.true71_crit_edge:               ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true71

for.body62:                                       ; preds = %for.inc67.for.body62_crit_edge, %if.end60.for.body62_crit_edge
  %pending_scb.0484 = phi ptr [ %pending_scb.0, %for.inc67.for.body62_crit_edge ], [ %pending_scb.0482, %if.end60.for.body62_crit_edge ]
  %io_ctx = getelementptr inbounds %struct.scb, ptr %pending_scb.0484, i32 0, i32 3
  %52 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io_ctx, align 4
  %cmp63 = icmp eq ptr %53, %cmd
  br i1 %cmp63, label %for.body62.if.end98_crit_edge, label %for.inc67

for.body62.if.end98_crit_edge:                    ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

for.inc67:                                        ; preds = %for.body62
  %pending_links = getelementptr inbounds %struct.scb, ptr %pending_scb.0484, i32 0, i32 2
  %54 = ptrtoint ptr %pending_links to i32
  call void @__asan_load4_noabort(i32 %54)
  %pending_scb.0 = load ptr, ptr %pending_links, align 4
  %cond439 = icmp eq ptr %pending_scb.0, null
  br i1 %cond439, label %for.inc67.land.lhs.true71_crit_edge, label %for.inc67.for.body62_crit_edge

for.inc67.for.body62_crit_edge:                   ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body62

for.inc67.land.lhs.true71_crit_edge:              ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true71

land.lhs.true71:                                  ; preds = %for.inc67.land.lhs.true71_crit_edge, %if.end60.land.lhs.true71_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %flag)
  %cmp72 = icmp eq i32 %flag, 4
  br i1 %cmp72, label %for.cond77.preheader, label %land.lhs.true71.if.then97_crit_edge

land.lhs.true71.if.then97_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then97

for.cond77.preheader:                             ; preds = %land.lhs.true71
  %55 = ptrtoint ptr %pending_scbs to i32
  call void @__asan_load4_noabort(i32 %55)
  %pending_scb.1485 = load ptr, ptr %pending_scbs, align 4
  %tobool78.not486 = icmp eq ptr %pending_scb.1485, null
  br i1 %tobool78.not486, label %for.cond77.preheader.if.then97_crit_edge, label %for.cond77.preheader.for.body79_crit_edge

for.cond77.preheader.for.body79_crit_edge:        ; preds = %for.cond77.preheader
  br label %for.body79

for.cond77.preheader.if.then97_crit_edge:         ; preds = %for.cond77.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then97

for.body79:                                       ; preds = %for.inc90.for.body79_crit_edge, %for.cond77.preheader.for.body79_crit_edge
  %pending_scb.1487 = phi ptr [ %pending_scb.1, %for.inc90.for.body79_crit_edge ], [ %pending_scb.1485, %for.cond77.preheader.for.body79_crit_edge ]
  %56 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id.i, align 8
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %57, i32 0, i32 17
  %60 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %channel.i, align 4
  %62 = trunc i32 %61 to i8
  %conv85 = add i8 %62, 65
  %call86 = tail call i32 @ahc_match_scb(ptr noundef %5, ptr noundef nonnull %pending_scb.1487, i32 noundef %59, i8 noundef zeroext %conv85, i32 noundef -1, i32 noundef 255, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %for.inc90, label %for.body79.if.end98_crit_edge

for.body79.if.end98_crit_edge:                    ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

for.inc90:                                        ; preds = %for.body79
  %pending_links91 = getelementptr inbounds %struct.scb, ptr %pending_scb.1487, i32 0, i32 2
  %63 = ptrtoint ptr %pending_links91 to i32
  call void @__asan_load4_noabort(i32 %63)
  %pending_scb.1 = load ptr, ptr %pending_links91, align 4
  %tobool78.not = icmp eq ptr %pending_scb.1, null
  br i1 %tobool78.not, label %for.inc90.if.then97_crit_edge, label %for.inc90.for.body79_crit_edge

for.inc90.for.body79_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body79

for.inc90.if.then97_crit_edge:                    ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then97

if.then97:                                        ; preds = %for.inc90.if.then97_crit_edge, %for.cond77.preheader.if.then97_crit_edge, %land.lhs.true71.if.then97_crit_edge
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.25, ptr noundef %cmd, ptr noundef nonnull @.str.42) #14
  br label %if.else323

if.end98:                                         ; preds = %for.body79.if.end98_crit_edge, %for.body62.if.end98_crit_edge
  %pending_scb.2 = phi ptr [ %pending_scb.1487, %for.body79.if.end98_crit_edge ], [ %pending_scb.0484, %for.body62.if.end98_crit_edge ]
  %flags99 = getelementptr inbounds %struct.scb, ptr %pending_scb.2, i32 0, i32 5
  %64 = ptrtoint ptr %flags99 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags99, align 4
  %and100 = and i32 %65, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %cmp101.not = icmp eq i32 %and100, 0
  br i1 %cmp101.not, label %if.end104, label %if.end98.if.else323_crit_edge

if.end98.if.else323_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else323

if.end104:                                        ; preds = %if.end98
  %call105 = tail call i32 @ahc_is_paused(ptr noundef %5) #14
  tail call void @ahc_pause_and_flushwork(ptr noundef %5) #14
  %66 = ptrtoint ptr %flags99 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags99, align 4
  %and107 = and i32 %67, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %cmp108 = icmp eq i32 %and107, 0
  br i1 %cmp108, label %if.then110, label %do.end114

if.then110:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.25, ptr noundef %cmd, ptr noundef nonnull @.str.43) #14
  br label %if.end297.thread472

do.end114:                                        ; preds = %if.end104
  %name.i441 = getelementptr inbounds %struct.ahc_softc, ptr %5, i32 0, i32 55
  %68 = ptrtoint ptr %name.i441 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name.i441, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool117.not = icmp eq i32 %call105, 0
  %cond118 = select i1 %tobool117.not, ptr @.str.48, ptr @.str.47
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %69, ptr noundef nonnull %cond118) #17
  tail call void @ahc_dump_card_state(ptr noundef %5) #14
  %70 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device, align 4
  %id124 = getelementptr inbounds %struct.scsi_device, ptr %71, i32 0, i32 16
  %72 = ptrtoint ptr %id124 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %id124, align 8
  %channel126 = getelementptr inbounds %struct.scsi_device, ptr %71, i32 0, i32 17
  %74 = ptrtoint ptr %channel126 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %channel126, align 4
  %76 = trunc i32 %75 to i8
  %conv128 = add i8 %76, 65
  %lun130 = getelementptr inbounds %struct.scsi_device, ptr %71, i32 0, i32 18
  %77 = ptrtoint ptr %lun130 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %lun130, align 8
  %conv131 = trunc i64 %78 to i32
  %79 = ptrtoint ptr %pending_scb.2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pending_scb.2, align 4
  %tag = getelementptr inbounds %struct.hardware_scb, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %tag, align 1
  %conv132 = zext i8 %82 to i32
  br i1 %cmp, label %if.then122, label %if.else

if.then122:                                       ; preds = %do.end114
  %call133 = tail call i32 @ahc_search_qinfifo(ptr noundef %5, i32 noundef %73, i8 noundef zeroext %conv128, i32 noundef %conv131, i32 noundef %conv132, i32 noundef 1, i32 noundef 2, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp sgt i32 %call133, 0
  br i1 %cmp134, label %do.end139, label %if.then122.land.lhs.true171_crit_edge

if.then122.land.lhs.true171_crit_edge:            ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true171

do.end139:                                        ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #16
  %83 = ptrtoint ptr %name.i441 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name.i441, align 4
  %85 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device, align 4
  %channel143 = getelementptr inbounds %struct.scsi_device, ptr %86, i32 0, i32 17
  %87 = ptrtoint ptr %channel143 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %channel143, align 4
  %id145 = getelementptr inbounds %struct.scsi_device, ptr %86, i32 0, i32 16
  %89 = ptrtoint ptr %id145 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %id145, align 8
  %lun147 = getelementptr inbounds %struct.scsi_device, ptr %86, i32 0, i32 18
  %91 = ptrtoint ptr %lun147 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %lun147, align 8
  %conv148 = trunc i64 %92 to i32
  %conv149 = and i32 %conv148, 255
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %84, i32 noundef %88, i32 noundef %90, i32 noundef %conv149) #17
  br label %if.end297.thread472

if.else:                                          ; preds = %do.end114
  %call164 = tail call i32 @ahc_search_qinfifo(ptr noundef %5, i32 noundef %73, i8 noundef zeroext %conv128, i32 noundef %conv131, i32 noundef %conv132, i32 noundef 1, i32 noundef 0, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp sgt i32 %call164, 0
  br i1 %cmp165, label %if.else.if.end206_crit_edge, label %if.else.land.lhs.true171_crit_edge

if.else.land.lhs.true171_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true171

if.else.if.end206_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end206

land.lhs.true171:                                 ; preds = %if.else.land.lhs.true171_crit_edge, %if.then122.land.lhs.true171_crit_edge
  %call172 = tail call zeroext i8 @ahc_inb(ptr noundef %5, i32 noundef 60)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call172)
  %cmp175 = icmp sgt i8 %call172, -1
  br i1 %cmp175, label %if.then177, label %land.lhs.true171.if.end206_crit_edge

land.lhs.true171.if.end206_crit_edge:             ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end206

if.then177:                                       ; preds = %land.lhs.true171
  %call178 = tail call zeroext i8 @ahc_inb(ptr noundef %5, i32 noundef 187)
  %conv179 = zext i8 %call178 to i32
  %call180 = tail call ptr @ahc_lookup_scb(ptr noundef %5, i32 noundef %conv179) #14
  %cmp181 = icmp eq ptr %call180, %pending_scb.2
  %brmerge = or i1 %cmp, %cmp181
  %not.cmp181 = xor i1 %cmp181, true
  br i1 %brmerge, label %if.then177.if.end206_crit_edge, label %land.lhs.true187

if.then177.if.end206_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end206

land.lhs.true187:                                 ; preds = %if.then177
  %call188 = tail call zeroext i8 @ahc_inb(ptr noundef %5, i32 noundef 61)
  %93 = ptrtoint ptr %pending_scb.2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pending_scb.2, align 4
  %scsiid = getelementptr inbounds %struct.hardware_scb, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %scsiid to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %scsiid, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call188, i8 %96)
  %cmp192 = icmp eq i8 %call188, %96
  br i1 %cmp192, label %land.lhs.true194, label %land.lhs.true187.if.end206_crit_edge

land.lhs.true187.if.end206_crit_edge:             ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end206

land.lhs.true194:                                 ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #16
  %call195 = tail call zeroext i8 @ahc_inb(ptr noundef %5, i32 noundef 62)
  %97 = ptrtoint ptr %pending_scb.2 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pending_scb.2, align 4
  %lun198 = getelementptr inbounds %struct.hardware_scb, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %lun198 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %lun198, align 2
  %101 = and i8 %100, 63
  call void @__sanitizer_cov_trace_cmp1(i8 %call195, i8 %101)
  %cmp201 = icmp ne i8 %call195, %101
  br label %if.end206

if.end206:                                        ; preds = %land.lhs.true194, %land.lhs.true187.if.end206_crit_edge, %if.then177.if.end206_crit_edge, %land.lhs.true171.if.end206_crit_edge, %if.else.if.end206_crit_edge
  %disconnected.2.shrunk = phi i1 [ true, %land.lhs.true171.if.end206_crit_edge ], [ false, %if.else.if.end206_crit_edge ], [ true, %land.lhs.true187.if.end206_crit_edge ], [ %not.cmp181, %if.then177.if.end206_crit_edge ], [ %cmp201, %land.lhs.true194 ]
  %call207 = tail call zeroext i8 @ahc_inb(ptr noundef %5, i32 noundef 63)
  %call209 = tail call zeroext i8 @ahc_inb(ptr noundef %5, i32 noundef 144)
  %call211 = tail call zeroext i8 @ahc_inb(ptr noundef %5, i32 noundef 187)
  %conv212 = zext i8 %call211 to i32
  %call213 = tail call zeroext i8 @ahc_inb(ptr noundef %5, i32 noundef 61)
  %conv214 = zext i8 %call213 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call207)
  %cmp215.not = icmp eq i8 %call207, 1
  br i1 %cmp215.not, label %if.end206.if.else241_crit_edge, label %land.lhs.true217

if.end206.if.else241_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else241

land.lhs.true217:                                 ; preds = %if.end206
  %102 = ptrtoint ptr %pending_scb.2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pending_scb.2, align 4
  %tag219 = getelementptr inbounds %struct.hardware_scb, ptr %103, i32 0, i32 7
  %104 = ptrtoint ptr %tag219 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %tag219, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %105, i8 %call211)
  %cmp221 = icmp eq i8 %105, %call211
  br i1 %cmp221, label %land.lhs.true217.if.then235_crit_edge, label %lor.lhs.false

land.lhs.true217.if.then235_crit_edge:            ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then235

lor.lhs.false:                                    ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %flag)
  %cmp223 = icmp eq i32 %flag, 4
  br i1 %cmp223, label %land.lhs.true225, label %lor.lhs.false.if.else241_crit_edge

lor.lhs.false.if.else241_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else241

land.lhs.true225:                                 ; preds = %lor.lhs.false
  %features = getelementptr inbounds %struct.ahc_softc, ptr %5, i32 0, i32 17
  %106 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %features, align 4
  %and226 = and i32 %107, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %cmp227.not = icmp eq i32 %and226, 0
  %cond229 = select i1 %cmp227.not, i32 240, i32 112
  %and230 = and i32 %cond229, %conv214
  %shr = lshr exact i32 %and230, 4
  %108 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %device, align 4
  %id.i443 = getelementptr inbounds %struct.scsi_device, ptr %109, i32 0, i32 16
  %110 = ptrtoint ptr %id.i443 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %id.i443, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %111)
  %cmp233 = icmp eq i32 %shr, %111
  br i1 %cmp233, label %land.lhs.true225.if.then235_crit_edge, label %land.lhs.true225.if.else241_crit_edge

land.lhs.true225.if.else241_crit_edge:            ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else241

land.lhs.true225.if.then235_crit_edge:            ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then235

if.then235:                                       ; preds = %land.lhs.true225.if.then235_crit_edge, %land.lhs.true217.if.then235_crit_edge
  %call236 = tail call ptr @ahc_lookup_scb(ptr noundef %5, i32 noundef %conv212) #14
  %flags237 = getelementptr inbounds %struct.scb, ptr %call236, i32 0, i32 5
  %112 = ptrtoint ptr %flags237 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags237, align 4
  %or = or i32 %113, %flag
  %or238 = or i32 %or, 32
  store i32 %or238, ptr %flags237, align 4
  tail call void @ahc_outb(ptr noundef %5, i32 noundef 58, i8 noundef zeroext -1)
  %114 = or i8 %call207, 16
  tail call void @ahc_outb(ptr noundef %5, i32 noundef 3, i8 noundef zeroext %114)
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.25, ptr noundef %cmd, ptr noundef nonnull @.str.52) #14
  br label %if.then299

if.else241:                                       ; preds = %land.lhs.true225.if.else241_crit_edge, %lor.lhs.false.if.else241_crit_edge, %if.end206.if.else241_crit_edge
  br i1 %disconnected.2.shrunk, label %if.then243, label %if.else292

if.then243:                                       ; preds = %if.else241
  %115 = ptrtoint ptr %pending_scb.2 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pending_scb.2, align 4
  %control = getelementptr inbounds %struct.hardware_scb, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %control, align 4
  %119 = or i8 %118, 20
  store i8 %119, ptr %control, align 4
  %120 = ptrtoint ptr %flags99 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags99, align 4
  %or248 = or i32 %121, %flag
  %or250 = or i32 %or248, 32
  store i32 %or250, ptr %flags99, align 4
  %122 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %device, align 4
  %id252 = getelementptr inbounds %struct.scsi_device, ptr %123, i32 0, i32 16
  %124 = ptrtoint ptr %id252 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %id252, align 8
  %channel254 = getelementptr inbounds %struct.scsi_device, ptr %123, i32 0, i32 17
  %126 = ptrtoint ptr %channel254 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %channel254, align 4
  %128 = trunc i32 %127 to i8
  %conv256 = add i8 %128, 65
  %lun258 = getelementptr inbounds %struct.scsi_device, ptr %123, i32 0, i32 18
  %129 = ptrtoint ptr %lun258 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %lun258, align 8
  %conv259 = trunc i64 %130 to i32
  %131 = load ptr, ptr %pending_scb.2, align 4
  %tag261 = getelementptr inbounds %struct.hardware_scb, ptr %131, i32 0, i32 7
  %132 = ptrtoint ptr %tag261 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %tag261, align 1
  %conv262 = zext i8 %133 to i32
  %call263 = tail call i32 @ahc_search_disc_list(ptr noundef %5, i32 noundef %125, i8 noundef zeroext %conv256, i32 noundef %conv259, i32 noundef %conv262, i32 noundef 1, i32 noundef 1, i32 noundef 0) #14
  %flags264 = getelementptr inbounds %struct.ahc_softc, ptr %5, i32 0, i32 19
  %134 = ptrtoint ptr %flags264 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %flags264, align 4
  %and265 = and i32 %135, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and265)
  %cmp266 = icmp eq i32 %and265, 0
  br i1 %cmp266, label %if.then268, label %if.then243.if.end275_crit_edge

if.then243.if.end275_crit_edge:                   ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end275

if.then268:                                       ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #16
  %136 = ptrtoint ptr %pending_scb.2 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pending_scb.2, align 4
  %tag270 = getelementptr inbounds %struct.hardware_scb, ptr %137, i32 0, i32 7
  %138 = ptrtoint ptr %tag270 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %tag270, align 1
  tail call void @ahc_outb(ptr noundef %5, i32 noundef 144, i8 noundef zeroext %139)
  %call271 = tail call zeroext i8 @ahc_inb(ptr noundef %5, i32 noundef 184)
  %140 = or i8 %call271, 16
  tail call void @ahc_outb(ptr noundef %5, i32 noundef 184, i8 noundef zeroext %140)
  br label %if.end275

if.end275:                                        ; preds = %if.then268, %if.then243.if.end275_crit_edge
  %141 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %device, align 4
  %id277 = getelementptr inbounds %struct.scsi_device, ptr %142, i32 0, i32 16
  %143 = ptrtoint ptr %id277 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %id277, align 8
  %channel279 = getelementptr inbounds %struct.scsi_device, ptr %142, i32 0, i32 17
  %145 = ptrtoint ptr %channel279 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %channel279, align 4
  %147 = trunc i32 %146 to i8
  %conv281 = add i8 %147, 65
  %lun283 = getelementptr inbounds %struct.scsi_device, ptr %142, i32 0, i32 18
  %148 = ptrtoint ptr %lun283 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %lun283, align 8
  %conv284 = trunc i64 %149 to i32
  %call285 = tail call i32 @ahc_search_qinfifo(ptr noundef %5, i32 noundef %144, i8 noundef zeroext %conv281, i32 noundef %conv284, i32 noundef 255, i32 noundef 1, i32 noundef 28, i32 noundef 0) #14
  tail call void @ahc_qinfifo_requeue_tail(ptr noundef %5, ptr noundef nonnull %pending_scb.2) #14
  tail call void @ahc_outb(ptr noundef %5, i32 noundef 144, i8 noundef zeroext %call209)
  tail call void @ahc_print_path(ptr noundef %5, ptr noundef nonnull %pending_scb.2)
  %call291 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #17
  br label %if.then299

if.else292:                                       ; preds = %if.else241
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.25, ptr noundef %cmd, ptr noundef nonnull @.str.56) #14
  br label %if.end297.thread472

if.end297.thread472:                              ; preds = %if.else292, %do.end139, %if.then110
  %retval1.0.ph.ph = phi i32 [ 8194, %do.end139 ], [ 8195, %if.else292 ], [ 8194, %if.then110 ]
  tail call void @ahc_unpause(ptr noundef %5) #14
  br label %if.else323

if.then299:                                       ; preds = %if.end275, %if.then235
  tail call void @ahc_unpause(ptr noundef %5) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done300) #14
  %150 = getelementptr inbounds i8, ptr %done300, i32 4
  %151 = call ptr @memset(ptr %150, i32 255, i32 52)
  %152 = ptrtoint ptr %done300 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %done300, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done300, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @init_completion.__key) #14
  %153 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %platform_data.i, align 4
  %eh_done = getelementptr inbounds %struct.ahc_platform_data, ptr %154, i32 0, i32 3
  %155 = ptrtoint ptr %eh_done to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %done300, ptr %eh_done, align 4
  %156 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i445 = getelementptr inbounds %struct.ahc_platform_data, ptr %156, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i445, i32 noundef %call2.i) #14
  %call306 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #17
  %call307 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %done300, i32 noundef 500) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307)
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %if.then309, label %if.then299.do.end320_crit_edge

if.then299.do.end320_crit_edge:                   ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end320

if.then309:                                       ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #16
  %157 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i447 = getelementptr inbounds %struct.ahc_platform_data, ptr %158, i32 0, i32 1
  %call2.i448 = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i447) #14
  %159 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %platform_data.i, align 4
  %eh_done311 = getelementptr inbounds %struct.ahc_platform_data, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %eh_done311 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %eh_done311, align 4
  %162 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i450 = getelementptr inbounds %struct.ahc_platform_data, ptr %162, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i450, i32 noundef %call2.i448) #14
  %call316 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #17
  br label %do.end320

do.end320:                                        ; preds = %if.then309, %if.then299.do.end320_crit_edge
  %retval1.1 = phi i32 [ 8194, %if.then299.do.end320_crit_edge ], [ 8195, %if.then309 ]
  %call322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done300) #14
  br label %if.end324

if.else323:                                       ; preds = %if.end297.thread472, %if.end98.if.else323_crit_edge, %if.then97, %do.end48, %do.end21
  %retval1.0466470 = phi i32 [ %retval1.0.ph.ph, %if.end297.thread472 ], [ 8194, %do.end21 ], [ 8194, %if.then97 ], [ 8195, %if.end98.if.else323_crit_edge ], [ 8194, %do.end48 ]
  %163 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i452 = getelementptr inbounds %struct.ahc_platform_data, ptr %164, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i452, i32 noundef %call2.i) #14
  br label %if.end324

if.end324:                                        ; preds = %if.else323, %do.end320
  %retval1.2 = phi i32 [ %retval1.1, %do.end320 ], [ %retval1.0466470, %if.else323 ]
  ret i32 %retval1.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_search_untagged_queues(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_match_scb(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_is_paused(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_pause_and_flushwork(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_search_qinfifo(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahc_lookup_scb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_search_disc_list(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_qinfifo_requeue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_unpause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_reset_channel(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_dv_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_compile_devinfo(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_print_devinfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_find_period(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_set_syncrate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_set_width(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_update_neg_request(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_block_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_unblock_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_sync_sglist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahc_get_sense_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_attach_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_linux_pci_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahc_linux_set_period(ptr nocapture noundef readonly %starget, i32 noundef %period) #0 align 64 {
entry:
  %period.addr = alloca i32, align 4
  %tstate = alloca ptr, align 4
  %devinfo = alloca %struct.ahc_devinfo, align 4
  %ppr_options = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %period.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %period, ptr %period.addr, align 4
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %2, %entry ], [ %4, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %5 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hostdata, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tstate) #14
  %7 = ptrtoint ptr %tstate to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !269
  %channel = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 5
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %10 = trunc i32 %9 to i8
  %conv = add i8 %10, 65
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 25
  %11 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %this_id, align 8
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 8
  %call1 = call ptr @ahc_fetch_transinfo(ptr noundef %6, i8 noundef zeroext %conv, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %tstate) #14
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo) #14
  %15 = call ptr @memset(ptr %devinfo, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppr_options) #14
  %ppr_options2 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call1, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %ppr_options2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ppr_options2, align 1
  %conv3 = zext i8 %17 to i32
  %18 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv3, ptr %ppr_options, align 4
  %offset5 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call1, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %offset5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %offset5, align 1
  %21 = ptrtoint ptr %period.addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %period.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %22)
  %cmp8 = icmp slt i32 %22, 9
  br i1 %cmp8, label %if.end11.thread, label %if.end11

if.end11.thread:                                  ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %period.addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 9, ptr %period.addr, align 4
  br label %if.then14

if.end11:                                         ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %22)
  %cmp12 = icmp eq i32 %22, 9
  br i1 %cmp12, label %if.end11.if.then14_crit_edge, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.end11.if.then14_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then14

if.then14:                                        ; preds = %if.end11.if.then14_crit_edge, %if.end11.thread
  %max_width = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %24 = ptrtoint ptr %max_width to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load = load i16, ptr %max_width, align 4
  %25 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not = icmp eq i16 %25, 0
  br i1 %tobool.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %conv3, 2
  %26 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or, ptr %ppr_options, align 4
  br label %if.end17

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %period.addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 10, ptr %period.addr, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15, %if.end11.if.end17_crit_edge
  %28 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %this_id, align 8
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 8
  %32 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel, align 4
  %34 = trunc i32 %33 to i8
  %conv22 = add i8 %34, 65
  call void @ahc_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %29, i32 noundef %31, i32 noundef 0, i8 noundef zeroext %conv22, i32 noundef 1) #14
  %35 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ppr_options, align 4
  %and = and i32 %36, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end17.if.end34_crit_edge, label %if.then24

if.end17.if.end34_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then24:                                        ; preds = %if.end17
  %width = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %37 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load26 = load i16, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load26)
  %cmp29 = icmp sgt i16 %bf.load26, -1
  br i1 %cmp29, label %if.then31, label %if.then24.if.end34_crit_edge

if.then24.if.end34_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  %and32 = and i32 %36, 4
  %38 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and32, ptr %ppr_options, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.then24.if.end34_crit_edge, %if.end17.if.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp = icmp eq i8 %20, 0
  %narrow = select i1 %cmp, i8 127, i8 %20
  %spec.store.select = zext i8 %narrow to i32
  %call35 = call ptr @ahc_find_syncrate(ptr noundef %6, ptr noundef nonnull %period.addr, ptr noundef nonnull %ppr_options, i32 noundef 0) #14
  %platform_data.i = getelementptr inbounds %struct.ahc_softc, ptr %6, i32 0, i32 8
  %39 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahc_platform_data, ptr %40, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %41 = ptrtoint ptr %period.addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %period.addr, align 4
  %43 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ppr_options, align 4
  call void @ahc_set_syncrate(ptr noundef %6, ptr noundef nonnull %devinfo, ptr noundef %call35, i32 noundef %42, i32 noundef %spec.store.select, i32 noundef %44, i32 noundef 4, i32 noundef 0) #14
  %45 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i51 = getelementptr inbounds %struct.ahc_platform_data, ptr %46, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i51, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppr_options) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahc_linux_set_offset(ptr nocapture noundef readonly %starget, i32 noundef %offset) #0 align 64 {
entry:
  %tstate = alloca ptr, align 4
  %devinfo = alloca %struct.ahc_devinfo, align 4
  %ppr_options = alloca i32, align 4
  %period = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tstate) #14
  %6 = ptrtoint ptr %tstate to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !269
  %channel = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 5
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel, align 4
  %9 = trunc i32 %8 to i8
  %conv = add i8 %9, 65
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 25
  %10 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %this_id, align 8
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 8
  %call1 = call ptr @ahc_fetch_transinfo(ptr noundef %5, i8 noundef zeroext %conv, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %tstate) #14
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo) #14
  %14 = call ptr @memset(ptr %devinfo, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppr_options) #14
  %15 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ppr_options, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %period) #14
  %16 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %period, align 4
  %17 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %this_id, align 8
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 8
  %21 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel, align 4
  %23 = trunc i32 %22 to i8
  %conv6 = add i8 %23, 65
  call void @ahc_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %18, i32 noundef %20, i32 noundef 0, i8 noundef zeroext %conv6, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp.not = icmp eq i32 %offset, 0
  br i1 %cmp.not, label %dev_to_shost.exit.if.end_crit_edge, label %if.then

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = call ptr @ahc_find_syncrate(ptr noundef %5, ptr noundef nonnull %period, ptr noundef nonnull %ppr_options, i32 noundef 0) #14
  %period9 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call1, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %period9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %period9, align 1
  %conv10 = zext i8 %25 to i32
  %26 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv10, ptr %period, align 4
  %ppr_options12 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call1, i32 0, i32 2, i32 5
  %27 = ptrtoint ptr %ppr_options12 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ppr_options12, align 1
  %conv13 = zext i8 %28 to i32
  %29 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv13, ptr %ppr_options, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_to_shost.exit.if.end_crit_edge
  %syncrate.0 = phi ptr [ %call8, %if.then ], [ null, %dev_to_shost.exit.if.end_crit_edge ]
  %platform_data.i = getelementptr inbounds %struct.ahc_softc, ptr %5, i32 0, i32 8
  %30 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahc_platform_data, ptr %31, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %32 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %period, align 4
  %34 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ppr_options, align 4
  call void @ahc_set_syncrate(ptr noundef %5, ptr noundef nonnull %devinfo, ptr noundef %syncrate.0, i32 noundef %33, i32 noundef %offset, i32 noundef %35, i32 noundef 4, i32 noundef 0) #14
  %36 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i27 = getelementptr inbounds %struct.ahc_platform_data, ptr %37, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i27, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %period) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppr_options) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahc_linux_set_width(ptr nocapture noundef readonly %starget, i32 noundef %width) #0 align 64 {
entry:
  %devinfo = alloca %struct.ahc_devinfo, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo) #14
  %6 = call ptr @memset(ptr %devinfo, i32 255, i32 28)
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 25
  %7 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %this_id, align 8
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  %channel = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 5
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel, align 4
  %13 = trunc i32 %12 to i8
  %conv = add i8 %13, 65
  call void @ahc_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %8, i32 noundef %10, i32 noundef 0, i8 noundef zeroext %conv, i32 noundef 1) #14
  %platform_data.i = getelementptr inbounds %struct.ahc_softc, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahc_platform_data, ptr %15, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  call void @ahc_set_width(ptr noundef %5, ptr noundef nonnull %devinfo, i32 noundef %width, i32 noundef 4, i32 noundef 0) #14
  %16 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i7 = getelementptr inbounds %struct.ahc_platform_data, ptr %17, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i7, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahc_linux_set_dt(ptr nocapture noundef readonly %starget, i32 noundef %dt) #0 align 64 {
entry:
  %tstate = alloca ptr, align 4
  %devinfo = alloca %struct.ahc_devinfo, align 4
  %ppr_options = alloca i32, align 4
  %period = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tstate) #14
  %6 = ptrtoint ptr %tstate to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !269
  %channel = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 5
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel, align 4
  %9 = trunc i32 %8 to i8
  %conv = add i8 %9, 65
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 25
  %10 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %this_id, align 8
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 8
  %call1 = call ptr @ahc_fetch_transinfo(ptr noundef %5, i8 noundef zeroext %conv, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %tstate) #14
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo) #14
  %14 = call ptr @memset(ptr %devinfo, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppr_options) #14
  %ppr_options2 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call1, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %ppr_options2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ppr_options2, align 1
  %17 = and i8 %16, -3
  %and = zext i8 %17 to i32
  %18 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %ppr_options, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %period) #14
  %period5 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call1, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %period5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %period5, align 1
  %conv6 = zext i8 %20 to i32
  %21 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv6, ptr %period, align 4
  %width8 = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call1, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %width8 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %width8, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dt)
  %tobool.not = icmp eq i32 %dt, 0
  br i1 %tobool.not, label %dev_to_shost.exit.if.else_crit_edge, label %land.lhs.true

dev_to_shost.exit.if.else_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %dev_to_shost.exit
  %max_width = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %24 = ptrtoint ptr %max_width to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load = load i16, ptr %max_width, align 4
  %25 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool10.not = icmp eq i16 %25, 0
  br i1 %tobool10.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %or = or i32 %and, 2
  %26 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or, ptr %ppr_options, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool11.not = icmp eq i8 %23, 0
  br i1 %tobool11.not, label %if.then12, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @ahc_linux_set_width(ptr noundef %starget, i32 noundef 1)
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %dev_to_shost.exit.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %20)
  %cmp = icmp eq i8 %20, 9
  br i1 %cmp, label %if.then14, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 10, ptr %period, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.else.if.end16_crit_edge, %if.then12, %if.then.if.end16_crit_edge
  %28 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %this_id, align 8
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 8
  %32 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel, align 4
  %34 = trunc i32 %33 to i8
  %conv21 = add i8 %34, 65
  call void @ahc_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %29, i32 noundef %31, i32 noundef 0, i8 noundef zeroext %conv21, i32 noundef 1) #14
  %call22 = call ptr @ahc_find_syncrate(ptr noundef %5, ptr noundef nonnull %period, ptr noundef nonnull %ppr_options, i32 noundef 0) #14
  %platform_data.i = getelementptr inbounds %struct.ahc_softc, ptr %5, i32 0, i32 8
  %35 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahc_platform_data, ptr %36, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %37 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %period, align 4
  %offset = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call1, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %offset, align 1
  %conv24 = zext i8 %40 to i32
  %41 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ppr_options, align 4
  call void @ahc_set_syncrate(ptr noundef %5, ptr noundef nonnull %devinfo, ptr noundef %call22, i32 noundef %38, i32 noundef %conv24, i32 noundef %42, i32 noundef 4, i32 noundef 0) #14
  %43 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i41 = getelementptr inbounds %struct.ahc_platform_data, ptr %44, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i41, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %period) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppr_options) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahc_linux_get_signalling(ptr nocapture noundef readonly %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %features = getelementptr inbounds %struct.ahc_softc, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and2 = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %cond = select i1 %tobool3.not, i32 2, i32 4
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %4 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost_data, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %5, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.ahc_softc, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahc_platform_data, ptr %8, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  tail call void @ahc_pause(ptr noundef %1) #14
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  %bsh.i = getelementptr inbounds %struct.ahc_softc, ptr %1, i32 0, i32 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %bsh.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bsh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 31
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !264
  br label %ahc_inb.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %bsh.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bsh.i, align 4
  %add.i = add i32 %15, 31
  %and.i = and i32 %add.i, 1048575
  %add4.i = or i32 %and.i, -18874368
  %16 = inttoptr i32 %add4.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !265
  br label %ahc_inb.exit

ahc_inb.exit:                                     ; preds = %if.else.i, %if.then.i
  %x.0.i = phi i8 [ %13, %if.then.i ], [ %17, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !266
  tail call void @arm_heavy_mb() #14
  tail call void @ahc_unpause(ptr noundef %1) #14
  %18 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i34 = getelementptr inbounds %struct.ahc_platform_data, ptr %19, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i34, i32 noundef %call2.i) #14
  %conv = zext i8 %x.0.i to i32
  %and4 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %ahc_inb.exit
  call void @__sanitizer_cov_trace_pc() #16
  %shost_data7 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %20 = ptrtoint ptr %shost_data7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shost_data7, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %21, align 4
  br label %cleanup

if.else:                                          ; preds = %ahc_inb.exit
  %and10 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %shost_data16 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %23 = ptrtoint ptr %shost_data16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %shost_data16, align 8
  br i1 %tobool11.not, label %if.else15, label %if.then12

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %24, align 4
  br label %cleanup

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else15, %if.then12, %if.then6, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahc_find_syncrate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_linux_pci_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_release_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !23, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !114, !116, !118, !119, !120, !121, !122, !124, !125, !126, !128, !130, !131, !132, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !168, !169, !170, !171, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !205, !206, !207, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !223, !224, !226, !228, !230, !231, !232, !233, !235, !236, !237, !238, !240, !241, !243, !244, !245, !247, !248, !250, !251, !252}
!llvm.module.flags = !{!254, !255, !256, !257, !258, !259, !260, !261}
!llvm.ident = !{!262}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 256, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ahc_print_path._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ahc_print_path._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @aic7xxx_allow_memio, !7, !"aic7xxx_allow_memio", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 301, i32 10}
!8 = !{ptr @__UNIQUE_ID_author287, !9, !"__UNIQUE_ID_author287", i1 false, i1 false}
!9 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 330, i32 1}
!10 = !{ptr @__UNIQUE_ID_description288, !11, !"__UNIQUE_ID_description288", i1 false, i1 false}
!11 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 331, i32 1}
!12 = !{ptr @__UNIQUE_ID_file289, !13, !"__UNIQUE_ID_file289", i1 false, i1 false}
!13 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 332, i32 1}
!14 = !{ptr @__UNIQUE_ID_license290, !13, !"__UNIQUE_ID_license290", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_version291, !16, !"__UNIQUE_ID_version291", i1 false, i1 false}
!16 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 333, i32 1}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__modver_attr, !16, !"__modver_attr", i1 false, i1 false}
!21 = !{ptr @__param_aic7xxx, !22, !"__param_aic7xxx", i1 false, i1 false}
!22 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 334, i32 1}
!23 = !{ptr @__UNIQUE_ID_aic7xxxtype292, !22, !"__UNIQUE_ID_aic7xxxtype292", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_aic7xxx293, !25, !"__UNIQUE_ID_aic7xxx293", i1 false, i1 false}
!25 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 335, i32 1}
!26 = !{ptr @aic7xxx_driver_template, !27, !"aic7xxx_driver_template", i1 false, i1 false}
!27 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 775, i32 27}
!28 = !{ptr @__setup_aic7xxx_setup, !29, !"__setup_aic7xxx_setup", i1 false, i1 false}
!29 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1064, i32 1}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1096, i32 15}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1110, i32 3}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ahc_linux_register_host._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ahc_linux_register_host._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1663, i32 9}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1691, i32 3}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ahc_done._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ahc_done._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1693, i32 9}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1723, i32 5}
!48 = !{ptr @ahc_done._entry.13, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ahc_done._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1779, i32 3}
!52 = !{ptr @ahc_done._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ahc_done._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @__initcall__kmod_aic7xxx__296_2576_ahc_linux_init6, !55, !"__initcall__kmod_aic7xxx__296_2576_ahc_linux_init6", i1 false, i1 false}
!55 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2576, i32 1}
!56 = !{ptr @__exitcall_ahc_linux_exit, !57, !"__exitcall_ahc_linux_exit", i1 false, i1 false}
!57 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2577, i32 1}
!58 = !{ptr @aic7xxx_seltime, !59, !"aic7xxx_seltime", i1 false, i1 false}
!59 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 313, i32 17}
!60 = !{ptr @aic7xxx_periodic_otag, !61, !"aic7xxx_periodic_otag", i1 false, i1 false}
!61 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 323, i32 17}
!62 = !{ptr @ahc_linux_unit, !63, !"ahc_linux_unit", i1 false, i1 false}
!63 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 380, i32 12}
!64 = !{ptr @aic7xxx_verbose, !65, !"aic7xxx_verbose", i1 false, i1 false}
!65 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1066, i32 10}
!66 = !{ptr @__param_str_aic7xxx, !22, !"__param_str_aic7xxx", i1 false, i1 false}
!67 = !{ptr @aic7xxx, !68, !"aic7xxx", i1 false, i1 false}
!68 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 328, i32 14}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 477, i32 9}
!71 = !{ptr @ahc_linux_info.buffer, !72, !"buffer", i1 false, i1 false}
!72 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 498, i32 14}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 506, i32 13}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 509, i32 13}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 513, i32 13}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 733, i32 3}
!81 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ahc_linux_abort._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @ahc_linux_abort._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2054, i32 14}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2054, i32 30}
!88 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2055, i32 29}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2055, i32 41}
!92 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2057, i32 2}
!94 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ahc_linux_queue_recovery_cmd._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @ahc_linux_queue_recovery_cmd._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2059, i32 3}
!99 = !{ptr @ahc_linux_queue_recovery_cmd._entry.31, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @ahc_linux_queue_recovery_cmd._entry_ptr.33, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @ahc_linux_queue_recovery_cmd._entry.34, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2060, i32 2}
!103 = !{ptr @ahc_linux_queue_recovery_cmd._entry_ptr.35, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2078, i32 3}
!106 = !{ptr @ahc_linux_queue_recovery_cmd._entry.36, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ahc_linux_queue_recovery_cmd._entry_ptr.38, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2090, i32 3}
!110 = !{ptr @ahc_linux_queue_recovery_cmd._entry.39, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ahc_linux_queue_recovery_cmd._entry_ptr.41, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2118, i32 31}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2140, i32 31}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2144, i32 2}
!118 = !{ptr @ahc_linux_queue_recovery_cmd._entry.44, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ahc_linux_queue_recovery_cmd._entry_ptr.46, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2156, i32 4}
!124 = !{ptr @ahc_linux_queue_recovery_cmd._entry.49, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @ahc_linux_queue_recovery_cmd._entry_ptr.51, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2208, i32 31}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2271, i32 3}
!130 = !{ptr @ahc_linux_queue_recovery_cmd._entry.53, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ahc_linux_queue_recovery_cmd._entry_ptr.55, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2274, i32 31}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2296, i32 3}
!136 = !{ptr @ahc_linux_queue_recovery_cmd._entry.57, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ahc_linux_queue_recovery_cmd._entry_ptr.59, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2302, i32 4}
!140 = !{ptr @ahc_linux_queue_recovery_cmd._entry.60, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @ahc_linux_queue_recovery_cmd._entry_ptr.62, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2305, i32 3}
!144 = !{ptr @ahc_linux_queue_recovery_cmd._entry.63, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @ahc_linux_queue_recovery_cmd._entry_ptr.65, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @init_completion.__key, !147, !"__key", i1 false, i1 false}
!147 = !{!"../include/linux/completion.h", i32 87, i32 2}
!148 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 747, i32 3}
!151 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @ahc_linux_dev_reset._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @ahc_linux_dev_reset._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 769, i32 3}
!156 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @ahc_linux_bus_reset._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @ahc_linux_bus_reset._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 642, i32 3}
!161 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @ahc_linux_slave_alloc._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @ahc_linux_slave_alloc._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 669, i32 3}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1393, i32 3}
!168 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @ahc_linux_device_queue_depth._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @ahc_linux_device_queue_depth._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @__setup_str_aic7xxx_setup, !29, !"__setup_str_aic7xxx_setup", i1 false, i1 false}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1013, i32 5}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1014, i32 5}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1015, i32 5}
!178 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1016, i32 5}
!180 = !{ptr @.str.80, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1018, i32 5}
!182 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1020, i32 5}
!184 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1021, i32 5}
!186 = !{ptr @.str.83, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1022, i32 5}
!188 = !{ptr @.str.84, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1023, i32 5}
!190 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1024, i32 5}
!192 = !{ptr @.str.86, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1025, i32 5}
!194 = !{ptr @aic7xxx_setup.options, !195, !"options", i1 false, i1 false}
!195 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1012, i32 4}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1036, i32 25}
!198 = !{ptr @aic7xxx_extended, !199, !"aic7xxx_extended", i1 false, i1 false}
!199 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 281, i32 17}
!200 = !{ptr @aic7xxx_no_reset, !201, !"aic7xxx_no_reset", i1 false, i1 false}
!201 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 274, i32 17}
!202 = !{ptr @.str.88, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 895, i32 2}
!204 = !{ptr @.str.89, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @ahc_linux_setup_tag_info_global._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @ahc_linux_setup_tag_info_global._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @aic7xxx_tag_info, !208, !"aic7xxx_tag_info", i1 false, i1 false}
!208 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 227, i32 27}
!209 = !{ptr @.str.90, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 954, i32 6}
!211 = !{ptr @.str.91, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @ahc_parse_brace_option._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @ahc_parse_brace_option._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.92, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 913, i32 4}
!216 = !{ptr @.str.93, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @ahc_linux_setup_tag_info._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @ahc_linux_setup_tag_info._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @ahc_linux_transport_template, !220, !"ahc_linux_transport_template", i1 false, i1 false}
!220 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 127, i32 40}
!221 = !{ptr @ahc_lockinit.__key, !222, !"__key", i1 false, i1 false}
!222 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.h", i32 387, i32 2}
!223 = !{ptr @.str.94, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @aic7xxx_pci_parity, !225, !"aic7xxx_pci_parity", i1 false, i1 false}
!225 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 293, i32 17}
!226 = !{ptr @ahc_linux_user_tagdepth.warned_user, !227, !"warned_user", i1 false, i1 false}
!227 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1342, i32 13}
!228 = !{ptr @.str.95, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1350, i32 5}
!230 = !{ptr @.str.96, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @ahc_linux_user_tagdepth._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @ahc_linux_user_tagdepth._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.97, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1843, i32 5}
!235 = !{ptr @.str.98, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @ahc_linux_handle_scsi_status._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @ahc_linux_handle_scsi_status._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @ahc_linux_handle_scsi_status._entry.99, !239, !"_entry", i1 false, i1 false}
!239 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1847, i32 7}
!240 = !{ptr @ahc_linux_handle_scsi_status._entry_ptr.100, !239, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.102, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1848, i32 6}
!243 = !{ptr @ahc_linux_handle_scsi_status._entry.101, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @ahc_linux_handle_scsi_status._entry_ptr.103, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @ahc_linux_handle_scsi_status._entry.104, !246, !"_entry", i1 false, i1 false}
!246 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1850, i32 5}
!247 = !{ptr @ahc_linux_handle_scsi_status._entry_ptr.105, !246, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.107, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 1892, i32 6}
!250 = !{ptr @ahc_linux_handle_scsi_status._entry.106, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @ahc_linux_handle_scsi_status._entry_ptr.108, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @ahc_linux_transport_functions, !253, !"ahc_linux_transport_functions", i1 false, i1 false}
!253 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm.c", i32 2526, i32 37}
!254 = !{i32 1, !"wchar_size", i32 2}
!255 = !{i32 1, !"min_enum_size", i32 4}
!256 = !{i32 8, !"branch-target-enforcement", i32 0}
!257 = !{i32 8, !"sign-return-address", i32 0}
!258 = !{i32 8, !"sign-return-address-all", i32 0}
!259 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!260 = !{i32 7, !"uwtable", i32 1}
!261 = !{i32 7, !"frame-pointer", i32 2}
!262 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!263 = !{i64 6038048}
!264 = !{i64 2155246941}
!265 = !{i64 2155247246}
!266 = !{i64 2155247389}
!267 = !{i64 6037653}
!268 = !{i64 2155248161}
!269 = !{!"auto-init"}
!270 = !{!"branch_weights", i32 2000, i32 1}
!271 = !{i64 2155249762, i64 2155250261, i64 2155249799, i64 2155249855, i64 2155249889, i64 2155249913, i64 2155249954, i64 2155249975, i64 2155250003, i64 2155250037}
!272 = !{!"branch_weights", i32 1, i32 2000}
!273 = !{i64 2155274610, i64 2155275110, i64 2155274647, i64 2155274703, i64 2155274737, i64 2155274761, i64 2155274802, i64 2155274823, i64 2155274851, i64 2155274885}
!274 = !{i64 2155279197, i64 2155279697, i64 2155279234, i64 2155279290, i64 2155279324, i64 2155279348, i64 2155279389, i64 2155279410, i64 2155279438, i64 2155279472}
!275 = !{i64 2155093735, i64 2155094228, i64 2155093772, i64 2155093828, i64 2155093862, i64 2155093886, i64 2155093927, i64 2155093948, i64 2155093976, i64 2155094010}
