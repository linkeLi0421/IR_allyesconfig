; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic7xxx/aic79xx_osm.c_pt.bc'
source_filename = "../drivers/scsi/aic7xxx/aic79xx_osm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.11 }
%union.anon.11 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.28 }
%union.anon.28 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ahd_linux_iocell_opts = type { i8, i8, i8 }
%struct.anon.102 = type { ptr, ptr }
%struct.adapter_tag_info_t = type { [16 x i16] }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.97 = type { ptr, ptr }
%struct.map_node = type { i32, i32, ptr, %struct.anon.91 }
%struct.anon.91 = type { ptr }
%struct.ahd_suspend_state = type { [2 x %struct.ahd_suspend_channel_state], %struct.ahd_suspend_pci_state, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.ahd_suspend_channel_state = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.ahd_suspend_pci_state = type { i32, i8, i8 }
%struct.ahd_platform_data = type { [16 x ptr], %struct.spinlock, ptr, ptr, i32, i32, i32 }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.10 }
%union.anon.10 = type { i32 }
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
%struct.hardware_scb = type { %union.anon, i16, i8, i8, i8, i8, i8, i8, i64, i32, i32, i32, i32, [8 x i8], [8 x i8] }
%union.anon = type { %union.initiator_data }
%union.initiator_data = type { %struct.anon }
%struct.anon = type { i64, i8 }
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
%struct.ahd_linux_device = type { %struct.anon.90, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32 }
%struct.anon.90 = type { ptr, ptr }
%struct.ahd_transinfo = type { i8, i8, i8, i8, i8, i8 }
%struct.scb = type { ptr, %union.anon.1, %union.anon.5, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%union.anon.1 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr }
%union.anon.5 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, ptr }
%struct.ahd_tmode_tstate = type { [256 x ptr], [16 x %struct.ahd_initiator_tinfo], i16, i16, i16 }
%struct.ahd_initiator_tinfo = type { %struct.ahd_transinfo, %struct.ahd_transinfo, %struct.ahd_transinfo }
%struct.scb_platform_data = type { ptr, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ahd_devinfo = type { i32, i32, i16, i32, i32, i8, i32 }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.ahd_linux_dma_tag = type { i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.96, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.96 = type { ptr }
%struct.bus_dma_segment = type { i32, i32 }
%struct.scsi_status_iu_header = type { [2 x i8], i8, i8, [4 x i8], [4 x i8], [1 x i8] }
%struct.scsi_sense_data = type { i8, i8, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, [3 x i8], [14 x i8] }

@ahd_print_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(scsi%d:%c:%d:%d): \00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ahd_print_path\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/aic7xxx/aic79xx_osm.c\00", [61 x i8] zeroinitializer }, align 32
@ahd_print_path._entry_ptr = internal global ptr @ahd_print_path._entry, section ".printk_index", align 4
@aic79xx_allow_memio = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author287 = internal constant [58 x i8] c"aic79xx.author=Maintainer: Hannes Reinecke <hare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description288 = internal constant [70 x i8] c"aic79xx.description=Adaptec AIC790X U320 SCSI Host Bus Adapter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file289 = internal constant [42 x i8] c"aic79xx.file=drivers/scsi/aic7xxx/aic79xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [29 x i8] c"aic79xx.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version291 = internal constant [20 x i8] c"aic79xx.version=3.0\00", section ".modinfo", align 1
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aic79xx\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.4, ptr @.str.5 }, section "__modver", align 4
@__param_str_aic79xx = internal constant [16 x i8] c"aic79xx.aic79xx\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@aic79xx = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_aic79xx = internal constant %struct.kernel_param { ptr @__param_str_aic79xx, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.28 { ptr @aic79xx } }, section "__param", align 4
@__UNIQUE_ID_aic79xxtype292 = internal constant [31 x i8] c"aic79xx.parmtype=aic79xx:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_aic79xx293 = internal constant [1091 x i8] c"aic79xx.parm=aic79xx:period-delimited options string:\0A\09verbose\09\09\09Enable verbose/diagnostic logging\0A\09allow_memio\09\09Allow device registers to be memory mapped\0A\09debug\09\09\09Bitmask of debug values to enable\0A\09no_reset\09\09Suppress initial bus resets\0A\09extended\09\09Enable extended geometry on all controllers\0A\09periodic_otag\09\09Send an ordered tagged transaction\0A\09\09\09\09periodically to prevent tag starvation.\0A\09\09\09\09This may be required by some older disk\0A\09\09\09\09or drives/RAID arrays.\0A\09tag_info:<tag_str>\09Set per-target tag depth\0A\09global_tag_depth:<int>\09Global tag depth for all targets on all buses\0A\09slewrate:<slewrate_list>Set the signal slew rate (0-15).\0A\09precomp:<pcomp_list>\09Set the signal precompensation (0-7).\0A\09amplitude:<int>\09\09Set the signal amplitude (0-7).\0A\09seltime:<int>\09\09Selection Timeout:\0A\09\09\09\09(0/256ms,1/128ms,2/64ms,3/32ms)\0A\09slowcrc\09\09\09Turn on the SLOWCRC bit (Rev B only)\0A\0A\09Sample modprobe configuration file:\0A\09#\09Enable verbose logging\0A\09#\09Set tag depth on Controller 2/Target 2 to 10 tags\0A\09#\09Shorten the selection timeout to 128ms\0A\0A\09options aic79xx 'aic79xx=verbose.tag_info:{{}.{}.{..10}}.seltime:1'\0A\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ahd_pci_read_config: Read size too big\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ahd_pci_write_config: Write size too big\00", [55 x i8] zeroinitializer }, align 32
@aic79xx_driver_template = dso_local global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ahd_linux_queue, ptr null, ptr null, ptr @.str.4, ptr @ahd_linux_info, ptr null, ptr null, ptr null, ptr @ahd_linux_abort, ptr @ahd_linux_dev_reset, ptr null, ptr @ahd_linux_bus_reset, ptr null, ptr @ahd_linux_slave_alloc, ptr @ahd_linux_slave_configure, ptr null, ptr @ahd_linux_target_alloc, ptr @ahd_linux_target_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahd_linux_show_info, ptr @ahd_proc_write_seeprom, ptr null, ptr null, ptr null, ptr @.str.4, ptr null, i32 512, i32 -1, i16 0, i16 0, i32 8192, i32 0, i32 0, i32 0, i16 2, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@__setup_str_aic79xx_setup = internal constant [9 x i8] c"aic79xx=\00", section ".init.rodata", align 1
@__setup_aic79xx_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_aic79xx_setup, ptr @aic79xx_setup, i32 0 }, section ".init.setup", align 4
@ahd_linux_unit = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"scsi%d\00", [25 x i8] zeroinitializer }, align 32
@ahd_linux_transport_template = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ahd_linux_register_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014aic79xx: scsi_add_host failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ahd_linux_register_host\00", [40 x i8] zeroinitializer }, align 32
@ahd_linux_register_host._entry_ptr = internal global ptr @ahd_linux_register_host._entry, section ".printk_index", align 4
@aic79xx_seltime = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@aic79xx_iocell_info = internal constant { [16 x %struct.ahd_linux_iocell_opts], [48 x i8] } { [16 x %struct.ahd_linux_iocell_opts] [%struct.ahd_linux_iocell_opts { i8 -1, i8 -1, i8 -1 }, %struct.ahd_linux_iocell_opts { i8 -1, i8 -1, i8 -1 }, %struct.ahd_linux_iocell_opts { i8 -1, i8 -1, i8 -1 }, %struct.ahd_linux_iocell_opts { i8 -1, i8 -1, i8 -1 }, %struct.ahd_linux_iocell_opts { i8 -1, i8 -1, i8 -1 }, %struct.ahd_linux_iocell_opts { i8 -1, i8 -1, i8 -1 }, %struct.ahd_linux_iocell_opts { i8 -1, i8 -1, i8 -1 }, %struct.ahd_linux_iocell_opts { i8 -1, i8 -1, i8 -1 }, %struct.ahd_linux_iocell_opts { i8 -1, i8 -1, i8 -1 }, %struct.ahd_linux_iocell_opts { i8 -1, i8 -1, i8 -1 }, %struct.ahd_linux_iocell_opts { i8 -1, i8 -1, i8 -1 }, %struct.ahd_linux_iocell_opts { i8 -1, i8 -1, i8 -1 }, %struct.ahd_linux_iocell_opts { i8 -1, i8 -1, i8 -1 }, %struct.ahd_linux_iocell_opts { i8 -1, i8 -1, i8 -1 }, %struct.ahd_linux_iocell_opts { i8 -1, i8 -1, i8 -1 }, %struct.ahd_linux_iocell_opts { i8 -1, i8 -1, i8 -1 }], [48 x i8] zeroinitializer }, align 32
@aic79xx_periodic_otag = internal global { i32, [28 x i8] } zeroinitializer, align 32
@aic79xx_verbose = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ahd_send_async: Unexpected async event\00", [57 x i8] zeroinitializer }, align 32
@ahd_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SCB %d done'd twice\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ahd_done\00", [23 x i8] zeroinitializer }, align 32
@ahd_done._entry_ptr = internal global ptr @ahd_done._entry, section ".printk_index", align 4
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Stopping for safety\00", [44 x i8] zeroinitializer }, align 32
@ahd_debug = external dso_local global i32, align 4
@ahd_done._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 1793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Set CAM_UNCOR_PARITY\0A\00", [42 x i8] zeroinitializer }, align 32
@ahd_done._entry_ptr.17 = internal global ptr @ahd_done._entry.15, section ".printk_index", align 4
@ahd_done._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.2, i32 1849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Recovery SCB completes\0A\00", [40 x i8] zeroinitializer }, align 32
@ahd_done._entry_ptr.20 = internal global ptr @ahd_done._entry.18, section ".printk_index", align 4
@__initcall__kmod_aic79xx__298_2850_ahd_linux_init6 = internal global ptr @ahd_linux_init, section ".initcall6.init", align 4
@__exitcall_ahd_linux_exit = internal global ptr @ahd_linux_exit, section ".exitcall.exit", align 4
@aic79xx_slowcrc = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@ahd_linux_info.buffer = internal global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Adaptec AIC79XX PCI-X SCSI HBA DRIVER, Rev 3.0\0A        <\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c">\0A        \00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Attempting to queue an ABORT message:\00", [58 x i8] zeroinitializer }, align 32
@ahd_linux_queue_abort_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 2149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CDB:\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ahd_linux_queue_abort_cmd\00", [38 x i8] zeroinitializer }, align 32
@ahd_linux_queue_abort_cmd._entry_ptr = internal global ptr @ahd_linux_queue_abort_cmd._entry, section ".printk_index", align 4
@ahd_linux_queue_abort_cmd._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 2151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" 0x%x\00", [26 x i8] zeroinitializer }, align 32
@ahd_linux_queue_abort_cmd._entry_ptr.29 = internal global ptr @ahd_linux_queue_abort_cmd._entry.27, section ".printk_index", align 4
@ahd_linux_queue_abort_cmd._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 2152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@ahd_linux_queue_abort_cmd._entry_ptr.32 = internal global ptr @ahd_linux_queue_abort_cmd._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Is not an active device\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Command not found\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Command already completed\0A\00", [37 x i8] zeroinitializer }, align 32
@ahd_linux_queue_abort_cmd._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.26, ptr @.str.2, i32 2211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: At time of recovery, card was %spaused\0A\00", [52 x i8] zeroinitializer }, align 32
@ahd_linux_queue_abort_cmd._entry_ptr.38 = internal global ptr @ahd_linux_queue_abort_cmd._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@ahd_linux_queue_abort_cmd._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.26, ptr @.str.2, i32 2223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d:%d:%d: Cmd aborted from QINFIFO\0A\00", [57 x i8] zeroinitializer }, align 32
@ahd_linux_queue_abort_cmd._entry_ptr.43 = internal global ptr @ahd_linux_queue_abort_cmd._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Device is active, asserting ATN\0A\00", [63 x i8] zeroinitializer }, align 32
@ahd_linux_queue_abort_cmd._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.26, ptr @.str.2, i32 2315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Device is disconnected, re-queuing SCB\0A\00", [56 x i8] zeroinitializer }, align 32
@ahd_linux_queue_abort_cmd._entry_ptr.47 = internal global ptr @ahd_linux_queue_abort_cmd._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to deliver message\0A\00", [37 x i8] zeroinitializer }, align 32
@ahd_linux_queue_abort_cmd._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.26, ptr @.str.2, i32 2333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Recovery code sleeping\0A\00", [36 x i8] zeroinitializer }, align 32
@ahd_linux_queue_abort_cmd._entry_ptr.51 = internal global ptr @ahd_linux_queue_abort_cmd._entry.49, section ".printk_index", align 4
@ahd_linux_queue_abort_cmd._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.26, ptr @.str.2, i32 2339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Timer Expired (active %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@ahd_linux_queue_abort_cmd._entry_ptr.54 = internal global ptr @ahd_linux_queue_abort_cmd._entry.52, section ".printk_index", align 4
@ahd_linux_queue_abort_cmd._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.26, ptr @.str.2, i32 2342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Recovery code awake\0A\00", [43 x i8] zeroinitializer }, align 32
@ahd_linux_queue_abort_cmd._entry_ptr.57 = internal global ptr @ahd_linux_queue_abort_cmd._entry.55, section ".printk_index", align 4
@ahd_linux_queue_abort_cmd._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.26, ptr @.str.2, i32 2348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Command abort returning 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@ahd_linux_queue_abort_cmd._entry_ptr.60 = internal global ptr @ahd_linux_queue_abort_cmd._entry.58, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempting to queue a TARGET RESET message:\00", [52 x i8] zeroinitializer }, align 32
@ahd_linux_dev_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.63, ptr @.str.2, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ahd_linux_dev_reset\00", [44 x i8] zeroinitializer }, align 32
@ahd_linux_dev_reset._entry_ptr = internal global ptr @ahd_linux_dev_reset._entry, section ".printk_index", align 4
@ahd_linux_dev_reset._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.63, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ahd_linux_dev_reset._entry_ptr.65 = internal global ptr @ahd_linux_dev_reset._entry.64, section ".printk_index", align 4
@ahd_linux_dev_reset._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.63, ptr @.str.2, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ahd_linux_dev_reset._entry_ptr.67 = internal global ptr @ahd_linux_dev_reset._entry.66, section ".printk_index", align 4
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No SCB available\0A\00", [46 x i8] zeroinitializer }, align 32
@ahd_linux_dev_reset._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.63, ptr @.str.2, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Device reset code sleeping\0A\00", [32 x i8] zeroinitializer }, align 32
@ahd_linux_dev_reset._entry_ptr.71 = internal global ptr @ahd_linux_dev_reset._entry.69, section ".printk_index", align 4
@ahd_linux_dev_reset._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.63, ptr @.str.2, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Device reset timer expired (active %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@ahd_linux_dev_reset._entry_ptr.74 = internal global ptr @ahd_linux_dev_reset._entry.72, section ".printk_index", align 4
@ahd_linux_dev_reset._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.63, ptr @.str.2, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Device reset returning 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@ahd_linux_dev_reset._entry_ptr.77 = internal global ptr @ahd_linux_dev_reset._entry.75, section ".printk_index", align 4
@ahd_linux_bus_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Bus reset called for cmd %p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ahd_linux_bus_reset\00", [44 x i8] zeroinitializer }, align 32
@ahd_linux_bus_reset._entry_ptr = internal global ptr @ahd_linux_bus_reset._entry, section ".printk_index", align 4
@ahd_linux_bus_reset._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: SCSI bus reset delivered. %d SCBs aborted.\0A\00", [48 x i8] zeroinitializer }, align 32
@ahd_linux_bus_reset._entry_ptr.82 = internal global ptr @ahd_linux_bus_reset._entry.80, section ".printk_index", align 4
@ahd_linux_slave_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Slave Alloc %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ahd_linux_slave_alloc\00", [42 x i8] zeroinitializer }, align 32
@ahd_linux_slave_alloc._entry_ptr = internal global ptr @ahd_linux_slave_alloc._entry, section ".printk_index", align 4
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Slave Configure\0A\00", [47 x i8] zeroinitializer }, align 32
@ahd_linux_device_queue_depth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 1525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Tagged Queuing enabled.  Depth %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ahd_linux_device_queue_depth\00", [35 x i8] zeroinitializer }, align 32
@ahd_linux_device_queue_depth._entry_ptr = internal global ptr @ahd_linux_device_queue_depth._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@aic79xx_setup.options = internal constant { [14 x %struct.anon.102], [48 x i8] } { [14 x %struct.anon.102] [%struct.anon.102 { ptr @.str.88, ptr @aic79xx_extended }, %struct.anon.102 { ptr @.str.89, ptr @aic79xx_no_reset }, %struct.anon.102 { ptr @.str.90, ptr @aic79xx_verbose }, %struct.anon.102 { ptr @.str.91, ptr @aic79xx_allow_memio }, %struct.anon.102 { ptr @.str.92, ptr @ahd_debug }, %struct.anon.102 { ptr @.str.93, ptr @aic79xx_periodic_otag }, %struct.anon.102 { ptr @.str.94, ptr @aic79xx_pci_parity }, %struct.anon.102 { ptr @.str.95, ptr @aic79xx_seltime }, %struct.anon.102 { ptr @.str.96, ptr null }, %struct.anon.102 { ptr @.str.97, ptr null }, %struct.anon.102 { ptr @.str.98, ptr null }, %struct.anon.102 { ptr @.str.99, ptr null }, %struct.anon.102 { ptr @.str.100, ptr null }, %struct.anon.102 { ptr @.str.101, ptr @aic79xx_slowcrc }], [48 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"extended\00", [23 x i8] zeroinitializer }, align 32
@aic79xx_extended = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no_reset\00", [23 x i8] zeroinitializer }, align 32
@aic79xx_no_reset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"verbose\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"allow_memio\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"periodic_otag\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci_parity\00", [21 x i8] zeroinitializer }, align 32
@aic79xx_pci_parity = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"seltime\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tag_info\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"global_tag_depth\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slewrate\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"precomp\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"amplitude\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"slowcrc\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c",.\00", [29 x i8] zeroinitializer }, align 32
@ahd_linux_setup_tag_info_global._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Setting Global Tags= %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ahd_linux_setup_tag_info_global\00", [32 x i8] zeroinitializer }, align 32
@ahd_linux_setup_tag_info_global._entry_ptr = internal global ptr @ahd_linux_setup_tag_info_global._entry, section ".printk_index", align 4
@aic79xx_tag_info = internal global { [16 x %struct.adapter_tag_info_t], [128 x i8] } { [16 x %struct.adapter_tag_info_t] [%struct.adapter_tag_info_t { [16 x i16] [i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32] }, %struct.adapter_tag_info_t { [16 x i16] [i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32] }, %struct.adapter_tag_info_t { [16 x i16] [i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32] }, %struct.adapter_tag_info_t { [16 x i16] [i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32] }, %struct.adapter_tag_info_t { [16 x i16] [i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32] }, %struct.adapter_tag_info_t { [16 x i16] [i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32] }, %struct.adapter_tag_info_t { [16 x i16] [i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32] }, %struct.adapter_tag_info_t { [16 x i16] [i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32] }, %struct.adapter_tag_info_t { [16 x i16] [i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32] }, %struct.adapter_tag_info_t { [16 x i16] [i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32] }, %struct.adapter_tag_info_t { [16 x i16] [i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32] }, %struct.adapter_tag_info_t { [16 x i16] [i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32] }, %struct.adapter_tag_info_t { [16 x i16] [i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32] }, %struct.adapter_tag_info_t { [16 x i16] [i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32] }, %struct.adapter_tag_info_t { [16 x i16] [i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32] }, %struct.adapter_tag_info_t { [16 x i16] [i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32] }], [128 x i8] zeroinitializer }, align 32
@ahd_parse_brace_option._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 1074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Malformed Option %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ahd_parse_brace_option\00", [41 x i8] zeroinitializer }, align 32
@ahd_parse_brace_option._entry_ptr = internal global ptr @ahd_parse_brace_option._entry, section ".printk_index", align 4
@ahd_linux_setup_tag_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tag_info[%d:%d] = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ahd_linux_setup_tag_info\00", [39 x i8] zeroinitializer }, align 32
@ahd_linux_setup_tag_info._entry_ptr = internal global ptr @ahd_linux_setup_tag_info._entry, section ".printk_index", align 4
@ahd_linux_setup_iocell_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iocell[%d:%ld] = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ahd_linux_setup_iocell_info\00", [36 x i8] zeroinitializer }, align 32
@ahd_linux_setup_iocell_info._entry_ptr = internal global ptr @ahd_linux_setup_iocell_info._entry, section ".printk_index", align 4
@ahd_lockinit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.111 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&ahd->platform_data->spin_lock\00", [33 x i8] zeroinitializer }, align 32
@ahd_linux_user_tagdepth.warned_user = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ahd_linux_user_tagdepth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 1487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [198 x i8], [58 x i8] } { [198 x i8] c"\014aic79xx: WARNING: Insufficient tag_info instances\0Aaic79xx: for installed controllers.  Using defaults\0Aaic79xx: Please update the aic79xx_tag_info array in\0Aaic79xx: the aic79xx_osm.c source file.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ahd_linux_user_tagdepth\00", [40 x i8] zeroinitializer }, align 32
@ahd_linux_user_tagdepth._entry_ptr = internal global ptr @ahd_linux_user_tagdepth._entry, section ".printk_index", align 4
@ahd_linux_handle_scsi_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 1932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Copied %d bytes of sense data at %d:\00", [59 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ahd_linux_handle_scsi_status\00", [35 x i8] zeroinitializer }, align 32
@ahd_linux_handle_scsi_status._entry_ptr = internal global ptr @ahd_linux_handle_scsi_status._entry, section ".printk_index", align 4
@ahd_linux_handle_scsi_status._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.115, ptr @.str.2, i32 1935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ahd_linux_handle_scsi_status._entry_ptr.117 = internal global ptr @ahd_linux_handle_scsi_status._entry.116, section ".printk_index", align 4
@ahd_linux_handle_scsi_status._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.115, ptr @.str.2, i32 1936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x \00", [26 x i8] zeroinitializer }, align 32
@ahd_linux_handle_scsi_status._entry_ptr.120 = internal global ptr @ahd_linux_handle_scsi_status._entry.118, section ".printk_index", align 4
@ahd_linux_handle_scsi_status._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.115, ptr @.str.2, i32 1938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ahd_linux_handle_scsi_status._entry_ptr.122 = internal global ptr @ahd_linux_handle_scsi_status._entry.121, section ".printk_index", align 4
@ahd_linux_handle_scsi_status._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.115, ptr @.str.2, i32 1964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dropping tag count to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ahd_linux_handle_scsi_status._entry_ptr.125 = internal global ptr @ahd_linux_handle_scsi_status._entry.123, section ".printk_index", align 4
@ahd_linux_handle_scsi_status._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.115, ptr @.str.2, i32 1983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Locking max tag count at %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ahd_linux_handle_scsi_status._entry_ptr.128 = internal global ptr @ahd_linux_handle_scsi_status._entry.126, section ".printk_index", align 4
@ahd_linux_queue_cmd_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 2103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: device overrun (status %x) on %d:%d:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ahd_linux_queue_cmd_complete\00", [35 x i8] zeroinitializer }, align 32
@ahd_linux_queue_cmd_complete._entry_ptr = internal global ptr @ahd_linux_queue_cmd_complete._entry, section ".printk_index", align 4
@ahd_linux_transport_functions = internal global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }, [56 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 } { ptr null, ptr @ahd_linux_set_period, ptr null, ptr @ahd_linux_set_offset, ptr null, ptr @ahd_linux_set_width, ptr null, ptr @ahd_linux_set_iu, ptr null, ptr @ahd_linux_set_dt, ptr null, ptr @ahd_linux_set_qas, ptr null, ptr @ahd_linux_set_wr_flow, ptr null, ptr @ahd_linux_set_rd_strm, ptr null, ptr @ahd_linux_set_rti, ptr null, ptr @ahd_linux_set_pcomp_en, ptr null, ptr @ahd_linux_set_hold_mcs, ptr @ahd_linux_get_signalling, ptr null, ptr null, i8 -1, i8 -32 }, [56 x i8] zeroinitializer }, align 32
@ahd_linux_set_period._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 2384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: set period to %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ahd_linux_set_period\00", [43 x i8] zeroinitializer }, align 32
@ahd_linux_set_period._entry_ptr = internal global ptr @ahd_linux_set_period._entry, section ".printk_index", align 4
@ahd_linux_set_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 2437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: set offset to %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ahd_linux_set_offset\00", [43 x i8] zeroinitializer }, align 32
@ahd_linux_set_offset._entry_ptr = internal global ptr @ahd_linux_set_offset._entry, section ".printk_index", align 4
@ahd_linux_set_iu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.2, i32 2555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: %s IU\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ahd_linux_set_iu\00", [47 x i8] zeroinitializer }, align 32
@ahd_linux_set_iu._entry_ptr = internal global ptr @ahd_linux_set_iu._entry, section ".printk_index", align 4
@.str.138 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enabling\00", [23 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabling\00", [22 x i8] zeroinitializer }, align 32
@ahd_linux_set_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.2, i32 2474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: %s DT\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ahd_linux_set_dt\00", [47 x i8] zeroinitializer }, align 32
@ahd_linux_set_dt._entry_ptr = internal global ptr @ahd_linux_set_dt._entry, section ".printk_index", align 4
@ahd_linux_set_qas._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 2516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: %s QAS\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ahd_linux_set_qas\00", [46 x i8] zeroinitializer }, align 32
@ahd_linux_set_qas._entry_ptr = internal global ptr @ahd_linux_set_qas._entry, section ".printk_index", align 4
@ahd_linux_set_wr_flow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.2, i32 2631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: %s Write Flow Control\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ahd_linux_set_wr_flow\00", [42 x i8] zeroinitializer }, align 32
@ahd_linux_set_wr_flow._entry_ptr = internal global ptr @ahd_linux_set_wr_flow._entry, section ".printk_index", align 4
@ahd_linux_set_rd_strm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.2, i32 2595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: %s Read Streaming\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ahd_linux_set_rd_strm\00", [42 x i8] zeroinitializer }, align 32
@ahd_linux_set_rd_strm._entry_ptr = internal global ptr @ahd_linux_set_rd_strm._entry, section ".printk_index", align 4
@ahd_linux_set_rti._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 2667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: RTI not available\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ahd_linux_set_rti\00", [46 x i8] zeroinitializer }, align 32
@ahd_linux_set_rti._entry_ptr = internal global ptr @ahd_linux_set_rti._entry, section ".printk_index", align 4
@ahd_linux_set_rti._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.2, i32 2675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: %s RTI\0A\00", [20 x i8] zeroinitializer }, align 32
@ahd_linux_set_rti._entry_ptr.152 = internal global ptr @ahd_linux_set_rti._entry.150, section ".printk_index", align 4
@ahd_linux_set_pcomp_en._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 2711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: %s Precompensation\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ahd_linux_set_pcomp_en\00", [41 x i8] zeroinitializer }, align 32
@ahd_linux_set_pcomp_en._entry_ptr = internal global ptr @ahd_linux_set_pcomp_en._entry, section ".printk_index", align 4
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enable\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Disable\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.157 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.160 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 16, i64 512]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10]
@__sancov_gen_cov_switch_values.162 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 34, i64 40]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 20]
@__sancov_gen_cov_switch_values.164 = internal global [27 x i64] [i64 25, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 28]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 34]
@__sancov_gen_cov_switch_values.166 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 44, i64 46, i64 123, i64 125]
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 226, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [20 x i8] c"aic79xx_allow_memio\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 275, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 322, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant [8 x i8] c"aic79xx\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 317, i32 14 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 505, i32 9 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 525, i32 9 }
@___asan_gen_.200 = private unnamed_addr constant [24 x i8] c"aic79xx_driver_template\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 886, i32 27 }
@___asan_gen_.203 = private unnamed_addr constant [15 x i8] c"ahd_linux_unit\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 370, i32 12 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1230, i32 15 }
@___asan_gen_.209 = private unnamed_addr constant [29 x i8] c"ahd_linux_transport_template\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 49, i32 40 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1244, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [16 x i8] c"aic79xx_seltime\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 287, i32 17 }
@___asan_gen_.224 = private unnamed_addr constant [20 x i8] c"aic79xx_iocell_info\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 197, i32 43 }
@___asan_gen_.227 = private unnamed_addr constant [22 x i8] c"aic79xx_periodic_otag\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 297, i32 17 }
@___asan_gen_.230 = private unnamed_addr constant [16 x i8] c"aic79xx_verbose\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1200, i32 10 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1746, i32 23 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1760, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1762, i32 9 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1793, i32 5 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1849, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [16 x i8] c"aic79xx_slowcrc\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 312, i32 10 }
@___asan_gen_.263 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 553, i32 14 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 561, i32 13 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 564, i32 13 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2146, i32 14 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2147, i32 7 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2149, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2151, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2152, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2170, i32 31 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2183, i32 31 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2206, i32 31 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2210, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2221, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2257, i32 31 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2315, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2318, i32 31 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2333, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2338, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2342, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2347, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 87, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 782, i32 7 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 784, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 786, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 787, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 808, i32 31 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 843, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 848, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 852, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 870, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 880, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 677, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 702, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1525, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1131, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1132, i32 5 }
@___asan_gen_.446 = private unnamed_addr constant [17 x i8] c"aic79xx_extended\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 251, i32 17 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1133, i32 5 }
@___asan_gen_.452 = private unnamed_addr constant [17 x i8] c"aic79xx_no_reset\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 244, i32 17 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1134, i32 5 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1135, i32 5 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1137, i32 5 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1139, i32 5 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1140, i32 5 }
@___asan_gen_.470 = private unnamed_addr constant [19 x i8] c"aic79xx_pci_parity\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 267, i32 17 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1141, i32 5 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1142, i32 5 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1143, i32 5 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1144, i32 5 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1145, i32 5 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1146, i32 5 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1147, i32 5 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1158, i32 25 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1014, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [17 x i8] c"aic79xx_tag_info\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 154, i32 27 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1073, i32 6 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1032, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1004, i32 4 }
@___asan_gen_.536 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.540 = private unnamed_addr constant [38 x i8] c"../drivers/scsi/aic7xxx/aic79xx_osm.h\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 374, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant [12 x i8] c"warned_user\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1475, i32 13 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1483, i32 5 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1931, i32 5 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1935, i32 7 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1936, i32 6 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1938, i32 5 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1963, i32 5 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1982, i32 6 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2101, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant [30 x i8] c"ahd_linux_transport_functions\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2792, i32 37 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2384, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2437, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2554, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2473, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2515, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2630, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2594, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2667, i32 4 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2674, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.695 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.696 = private constant [38 x i8] c"../drivers/scsi/aic7xxx/aic79xx_osm.c\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 2710, i32 3 }
@llvm.compiler.used = appending global [237 x ptr] [ptr @__UNIQUE_ID_aic79xx293, ptr @__UNIQUE_ID_aic79xxtype292, ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__UNIQUE_ID_version291, ptr @__exitcall_ahd_linux_exit, ptr @__initcall__kmod_aic79xx__298_2850_ahd_linux_init6, ptr @__modver_attr, ptr @__param_aic79xx, ptr @__setup_aic79xx_setup, ptr @ahd_done._entry, ptr @ahd_done._entry.15, ptr @ahd_done._entry.18, ptr @ahd_done._entry_ptr, ptr @ahd_done._entry_ptr.17, ptr @ahd_done._entry_ptr.20, ptr @ahd_linux_bus_reset._entry, ptr @ahd_linux_bus_reset._entry.80, ptr @ahd_linux_bus_reset._entry_ptr, ptr @ahd_linux_bus_reset._entry_ptr.82, ptr @ahd_linux_dev_reset._entry, ptr @ahd_linux_dev_reset._entry.64, ptr @ahd_linux_dev_reset._entry.66, ptr @ahd_linux_dev_reset._entry.69, ptr @ahd_linux_dev_reset._entry.72, ptr @ahd_linux_dev_reset._entry.75, ptr @ahd_linux_dev_reset._entry_ptr, ptr @ahd_linux_dev_reset._entry_ptr.65, ptr @ahd_linux_dev_reset._entry_ptr.67, ptr @ahd_linux_dev_reset._entry_ptr.71, ptr @ahd_linux_dev_reset._entry_ptr.74, ptr @ahd_linux_dev_reset._entry_ptr.77, ptr @ahd_linux_device_queue_depth._entry, ptr @ahd_linux_device_queue_depth._entry_ptr, ptr @ahd_linux_exit, ptr @ahd_linux_handle_scsi_status._entry, ptr @ahd_linux_handle_scsi_status._entry.116, ptr @ahd_linux_handle_scsi_status._entry.118, ptr @ahd_linux_handle_scsi_status._entry.121, ptr @ahd_linux_handle_scsi_status._entry.123, ptr @ahd_linux_handle_scsi_status._entry.126, ptr @ahd_linux_handle_scsi_status._entry_ptr, ptr @ahd_linux_handle_scsi_status._entry_ptr.117, ptr @ahd_linux_handle_scsi_status._entry_ptr.120, ptr @ahd_linux_handle_scsi_status._entry_ptr.122, ptr @ahd_linux_handle_scsi_status._entry_ptr.125, ptr @ahd_linux_handle_scsi_status._entry_ptr.128, ptr @ahd_linux_queue_abort_cmd._entry, ptr @ahd_linux_queue_abort_cmd._entry.27, ptr @ahd_linux_queue_abort_cmd._entry.30, ptr @ahd_linux_queue_abort_cmd._entry.36, ptr @ahd_linux_queue_abort_cmd._entry.41, ptr @ahd_linux_queue_abort_cmd._entry.45, ptr @ahd_linux_queue_abort_cmd._entry.49, ptr @ahd_linux_queue_abort_cmd._entry.52, ptr @ahd_linux_queue_abort_cmd._entry.55, ptr @ahd_linux_queue_abort_cmd._entry.58, ptr @ahd_linux_queue_abort_cmd._entry_ptr, ptr @ahd_linux_queue_abort_cmd._entry_ptr.29, ptr @ahd_linux_queue_abort_cmd._entry_ptr.32, ptr @ahd_linux_queue_abort_cmd._entry_ptr.38, ptr @ahd_linux_queue_abort_cmd._entry_ptr.43, ptr @ahd_linux_queue_abort_cmd._entry_ptr.47, ptr @ahd_linux_queue_abort_cmd._entry_ptr.51, ptr @ahd_linux_queue_abort_cmd._entry_ptr.54, ptr @ahd_linux_queue_abort_cmd._entry_ptr.57, ptr @ahd_linux_queue_abort_cmd._entry_ptr.60, ptr @ahd_linux_queue_cmd_complete._entry, ptr @ahd_linux_queue_cmd_complete._entry_ptr, ptr @ahd_linux_register_host._entry, ptr @ahd_linux_register_host._entry_ptr, ptr @ahd_linux_set_dt._entry, ptr @ahd_linux_set_dt._entry_ptr, ptr @ahd_linux_set_iu._entry, ptr @ahd_linux_set_iu._entry_ptr, ptr @ahd_linux_set_offset._entry, ptr @ahd_linux_set_offset._entry_ptr, ptr @ahd_linux_set_pcomp_en._entry, ptr @ahd_linux_set_pcomp_en._entry_ptr, ptr @ahd_linux_set_period._entry, ptr @ahd_linux_set_period._entry_ptr, ptr @ahd_linux_set_qas._entry, ptr @ahd_linux_set_qas._entry_ptr, ptr @ahd_linux_set_rd_strm._entry, ptr @ahd_linux_set_rd_strm._entry_ptr, ptr @ahd_linux_set_rti._entry, ptr @ahd_linux_set_rti._entry.150, ptr @ahd_linux_set_rti._entry_ptr, ptr @ahd_linux_set_rti._entry_ptr.152, ptr @ahd_linux_set_wr_flow._entry, ptr @ahd_linux_set_wr_flow._entry_ptr, ptr @ahd_linux_setup_iocell_info._entry, ptr @ahd_linux_setup_iocell_info._entry_ptr, ptr @ahd_linux_setup_tag_info._entry, ptr @ahd_linux_setup_tag_info._entry_ptr, ptr @ahd_linux_setup_tag_info_global._entry, ptr @ahd_linux_setup_tag_info_global._entry_ptr, ptr @ahd_linux_slave_alloc._entry, ptr @ahd_linux_slave_alloc._entry_ptr, ptr @ahd_linux_user_tagdepth._entry, ptr @ahd_linux_user_tagdepth._entry_ptr, ptr @ahd_parse_brace_option._entry, ptr @ahd_parse_brace_option._entry_ptr, ptr @ahd_print_path._entry, ptr @ahd_print_path._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @aic79xx_allow_memio, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @aic79xx, ptr @.str.6, ptr @.str.7, ptr @aic79xx_driver_template, ptr @ahd_linux_unit, ptr @.str.8, ptr @ahd_linux_transport_template, ptr @.str.9, ptr @.str.10, ptr @aic79xx_seltime, ptr @aic79xx_iocell_info, ptr @aic79xx_periodic_otag, ptr @aic79xx_verbose, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @aic79xx_slowcrc, ptr @ahd_linux_info.buffer, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @init_completion.__key, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @aic79xx_setup.options, ptr @.str.88, ptr @aic79xx_extended, ptr @.str.89, ptr @aic79xx_no_reset, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @aic79xx_pci_parity, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @aic79xx_tag_info, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @ahd_lockinit.__key, ptr @.str.111, ptr @ahd_linux_user_tagdepth.warned_user, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.119, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @ahd_linux_transport_functions, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156], section "llvm.metadata"
@0 = internal global [177 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_print_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic79xx_allow_memio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic79xx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic79xx_driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_unit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_transport_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_register_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic79xx_seltime to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic79xx_iocell_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic79xx_periodic_otag to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic79xx_verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_done._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_done._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic79xx_slowcrc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_info.buffer to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_queue_abort_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_queue_abort_cmd._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_queue_abort_cmd._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_queue_abort_cmd._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_queue_abort_cmd._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_queue_abort_cmd._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_queue_abort_cmd._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_queue_abort_cmd._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_queue_abort_cmd._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_queue_abort_cmd._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_dev_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_dev_reset._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_dev_reset._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_dev_reset._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_dev_reset._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_dev_reset._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_bus_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_bus_reset._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_slave_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_device_queue_depth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic79xx_setup.options to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic79xx_extended to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic79xx_no_reset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic79xx_pci_parity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_setup_tag_info_global._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic79xx_tag_info to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_parse_brace_option._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_setup_tag_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_setup_iocell_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_lockinit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_user_tagdepth.warned_user to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_user_tagdepth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 198, i32 256, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_handle_scsi_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_handle_scsi_status._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_handle_scsi_status._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_handle_scsi_status._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_handle_scsi_status._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_handle_scsi_status._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_queue_cmd_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_transport_functions to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_set_period._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_set_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_set_iu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_set_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_set_qas._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_set_wr_flow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_set_rd_strm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_set_rti._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_set_rti._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_set_pcomp_en._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahd_print_path(ptr nocapture noundef readonly %ahd, ptr noundef readonly %scb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 10
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 4
  %host = getelementptr inbounds %struct.ahd_platform_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %cmp.not = icmp eq ptr %scb, null
  br i1 %cmp.not, label %entry.cond.end9_crit_edge, label %cond.true5

entry.cond.end9_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end9

cond.true5:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scb, align 4
  %scsiid = getelementptr inbounds %struct.hardware_scb, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %scsiid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %scsiid, align 1
  %10 = lshr i8 %9, 4
  %11 = zext i8 %10 to i32
  %lun = getelementptr inbounds %struct.hardware_scb, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %lun to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %lun, align 4
  %conv7 = zext i8 %13 to i32
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true5, %entry.cond.end9_crit_edge
  %cond216 = phi i32 [ %11, %cond.true5 ], [ -1, %entry.cond.end9_crit_edge ]
  %cond = phi i32 [ 65, %cond.true5 ], [ 88, %entry.cond.end9_crit_edge ]
  %cond10 = phi i32 [ %conv7, %cond.true5 ], [ -1, %entry.cond.end9_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %cond, i32 noundef %cond216, i32 noundef %cond10) #17
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahd_delay(i32 noundef %usec) local_unnamed_addr #0 align 64 {
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
define dso_local zeroext i8 @ahd_inb(ptr nocapture noundef readonly %ahd, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ahd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ahd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bshs = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 1
  %2 = ptrtoint ptr %bshs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bshs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %port
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !356
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %shr = ashr i32 %port, 8
  %arrayidx5 = getelementptr %struct.ahd_softc, ptr %ahd, i32 0, i32 1, i32 %shr
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5, align 4
  %and = and i32 %port, 255
  %add = add i32 %6, %and
  %and6 = and i32 %add, 1048575
  %add7 = or i32 %and6, -18874368
  %7 = inttoptr i32 %add7 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #14, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !357
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %x.0 = phi i8 [ %4, %if.then ], [ %8, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !358
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
define dso_local void @ahd_outb(ptr nocapture noundef readonly %ahd, i32 noundef %port, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ahd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ahd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  br i1 %cmp, label %do.body, label %do.body2

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bshs = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 1
  %2 = ptrtoint ptr %bshs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bshs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %port
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #14, !srcloc !359
  br label %do.body8

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %shr = ashr i32 %port, 8
  %arrayidx5 = getelementptr %struct.ahd_softc, ptr %ahd, i32 0, i32 1, i32 %shr
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  %and = and i32 %port, 255
  %add = add i32 %5, %and
  %and6 = and i32 %add, 1048575
  %add7 = or i32 %and6, -18874368
  %6 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %val) #14, !srcloc !359
  br label %do.body8

do.body8:                                         ; preds = %do.body2, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !360
  tail call void @arm_heavy_mb() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahd_outw_atomic(ptr nocapture noundef readonly %ahd, i32 noundef %port, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ahd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ahd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  %2 = tail call i16 @llvm.bswap.i16(i16 %val)
  br i1 %cmp, label %do.body, label %do.body2

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bshs = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 1
  %3 = ptrtoint ptr %bshs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bshs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %port
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #14, !srcloc !361
  br label %do.body8

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %shr = ashr i32 %port, 8
  %arrayidx5 = getelementptr %struct.ahd_softc, ptr %ahd, i32 0, i32 1, i32 %shr
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5, align 4
  %and = and i32 %port, 255
  %add = add i32 %6, %and
  %and6 = and i32 %add, 1048575
  %add7 = or i32 %and6, -18874368
  %7 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 %2) #14, !srcloc !361
  br label %do.body8

do.body8:                                         ; preds = %do.body2, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !362
  tail call void @arm_heavy_mb() #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahd_outsb(ptr nocapture noundef readonly %ahd, i32 noundef %port, ptr nocapture noundef readonly %array, i32 noundef %count) local_unnamed_addr #0 align 64 {
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
  %shr.i = ashr i32 %port, 8
  %arrayidx5.i = getelementptr %struct.ahd_softc, ptr %ahd, i32 0, i32 1, i32 %shr.i
  %and.i = and i32 %port, 255
  %bshs.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %ahd_outb.exit.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ahd_outb.exit.for.body_crit_edge ]
  %array.addr.03 = phi ptr [ %array, %for.body.lr.ph ], [ %incdec.ptr, %ahd_outb.exit.for.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %array.addr.03, i32 1
  %0 = ptrtoint ptr %array.addr.03 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %array.addr.03, align 1
  %2 = ptrtoint ptr %ahd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ahd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  br i1 %cmp.i, label %do.body.i, label %do.body2.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %bshs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bshs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %port
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %1) #14, !srcloc !359
  br label %ahd_outb.exit

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5.i, align 4
  %add.i = add i32 %7, %and.i
  %and6.i = and i32 %add.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %8 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %1) #14, !srcloc !359
  br label %ahd_outb.exit

ahd_outb.exit:                                    ; preds = %do.body2.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !360
  tail call void @arm_heavy_mb() #14
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %ahd_outb.exit.for.end_crit_edge, label %ahd_outb.exit.for.body_crit_edge

ahd_outb.exit.for.body_crit_edge:                 ; preds = %ahd_outb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

ahd_outb.exit.for.end_crit_edge:                  ; preds = %ahd_outb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %ahd_outb.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahd_insb(ptr nocapture noundef readonly %ahd, i32 noundef %port, ptr nocapture noundef writeonly %array, i32 noundef %count) local_unnamed_addr #0 align 64 {
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
  %shr.i = ashr i32 %port, 8
  %arrayidx5.i = getelementptr %struct.ahd_softc, ptr %ahd, i32 0, i32 1, i32 %shr.i
  %and.i = and i32 %port, 255
  %bshs.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %ahd_inb.exit.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ahd_inb.exit.for.body_crit_edge ]
  %array.addr.03 = phi ptr [ %array, %for.body.lr.ph ], [ %incdec.ptr, %ahd_inb.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %ahd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ahd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %bshs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bshs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %port
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #14, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !356
  br label %ahd_inb.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5.i, align 4
  %add.i = add i32 %6, %and.i
  %and6.i = and i32 %add.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %7 = inttoptr i32 %add7.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #14, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !357
  br label %ahd_inb.exit

ahd_inb.exit:                                     ; preds = %if.else.i, %if.then.i
  %x.0.i = phi i8 [ %4, %if.then.i ], [ %8, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !358
  tail call void @arm_heavy_mb() #14
  %incdec.ptr = getelementptr i8, ptr %array.addr.03, i32 1
  %9 = ptrtoint ptr %array.addr.03 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %x.0.i, ptr %array.addr.03, align 1
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %ahd_inb.exit.for.end_crit_edge, label %ahd_inb.exit.for.body_crit_edge

ahd_inb.exit.for.body_crit_edge:                  ; preds = %ahd_inb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

ahd_inb.exit.for.end_crit_edge:                   ; preds = %ahd_inb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %ahd_inb.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahd_pci_read_config(ptr noundef %pci, i32 noundef %reg, i32 noundef %width) local_unnamed_addr #0 align 64 {
entry:
  %retval1 = alloca i8, align 1
  %retval3 = alloca i16, align 2
  %retval7 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %width to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %width, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval1) #14
  %1 = ptrtoint ptr %retval1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %retval1, align 1, !annotation !363
  %call = call i32 @pci_read_config_byte(ptr noundef %pci, i32 noundef %reg, ptr noundef nonnull %retval1) #14
  %2 = ptrtoint ptr %retval1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %retval1, align 1
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval1) #14
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %retval3) #14
  %4 = ptrtoint ptr %retval3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %retval3, align 2, !annotation !363
  %call4 = call i32 @pci_read_config_word(ptr noundef %pci, i32 noundef %reg, ptr noundef nonnull %retval3) #14
  %5 = ptrtoint ptr %retval3 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %retval3, align 2
  %conv5 = zext i16 %6 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %retval3) #14
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval7) #14
  %7 = ptrtoint ptr %retval7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %retval7, align 4, !annotation !363
  %call8 = call i32 @pci_read_config_dword(ptr noundef %pci, i32 noundef %reg, ptr noundef nonnull %retval7) #14
  %8 = ptrtoint ptr %retval7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retval7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval7) #14
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.6) #18
  unreachable

return:                                           ; preds = %sw.bb6, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ %9, %sw.bb6 ], [ %conv5, %sw.bb2 ], [ %conv, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahd_pci_write_config(ptr noundef %pci, i32 noundef %reg, i32 noundef %value, i32 noundef %width) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %width to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %width, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = trunc i32 %value to i8
  %call = tail call i32 @pci_write_config_byte(ptr noundef %pci, i32 noundef %reg, i8 noundef zeroext %conv) #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv2 = trunc i32 %value to i16
  %call3 = tail call i32 @pci_write_config_word(ptr noundef %pci, i32 noundef %reg, i16 noundef zeroext %conv2) #14
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 @pci_write_config_dword(ptr noundef %pci, i32 noundef %reg, i32 noundef %value) #14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.7) #18
  unreachable

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahd_linux_queue(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #0 align 64 {
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
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %12 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %result.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tstate.i.i) #14
  %13 = ptrtoint ptr %tstate.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate.i.i, align 4, !annotation !363
  %call.i.i = tail call i32 @scsi_dma_map(ptr noundef %cmd) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.ahd_linux_queue_lck.exit_crit_edge, label %if.end.i.i

entry.ahd_linux_queue_lck.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_queue_lck.exit

if.end.i.i:                                       ; preds = %entry
  %platform_data.i.i.i = getelementptr inbounds %struct.ahd_softc, ptr %11, i32 0, i32 10
  %14 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_data.i.i.i, align 4
  %spin_lock.i.i.i = getelementptr inbounds %struct.ahd_platform_data, ptr %15, i32 0, i32 1
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i.i.i) #14
  %our_id.i.i = getelementptr inbounds %struct.ahd_softc, ptr %11, i32 0, i32 38
  %16 = ptrtoint ptr %our_id.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %our_id.i.i, align 1
  %conv.i.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device.i, align 4
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i.i, align 8
  %call1.i.i = call ptr @ahd_fetch_transinfo(ptr noundef %11, i8 noundef zeroext 65, i32 noundef %conv.i.i, i32 noundef %21, ptr noundef nonnull %tstate.i.i) #14
  %flags2.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags2.i.i, align 4
  %and.i.i = and i32 %23, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp3.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.if.end15.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %ppr_options.i.i = getelementptr inbounds %struct.ahd_transinfo, ptr %call1.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %ppr_options.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ppr_options.i.i, align 1
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp7.not.i.i = icmp eq i8 %26, 0
  br i1 %cmp7.not.i.i, label %if.else.i.i, label %lor.lhs.false.i.i.if.end15.i.i_crit_edge

lor.lhs.false.i.i.if.end15.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device.i, align 4
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %28, i32 0, i32 18
  %29 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %lun.i.i, align 8
  %conv11.i.i = trunc i64 %30 to i32
  %conv12.i.i = shl i32 %conv11.i.i, 4
  %shl.i.i = and i32 %conv12.i.i, 4080
  %id14.i.i = getelementptr inbounds %struct.scsi_device, ptr %28, i32 0, i32 16
  %31 = ptrtoint ptr %id14.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id14.i.i, align 8
  %or.i.i = or i32 %shl.i.i, %32
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.else.i.i, %lor.lhs.false.i.i.if.end15.i.i_crit_edge, %if.end.i.i.if.end15.i.i_crit_edge
  %col_idx.0.i.i = phi i32 [ %or.i.i, %if.else.i.i ], [ 65535, %lor.lhs.false.i.i.if.end15.i.i_crit_edge ], [ 65535, %if.end.i.i.if.end15.i.i_crit_edge ]
  %call16.i.i = call ptr @ahd_get_scb(ptr noundef %11, i32 noundef %col_idx.0.i.i) #14
  %cmp17.i.i = icmp eq ptr %call16.i.i, null
  br i1 %cmp17.i.i, label %if.then19.i.i, label %if.end22.i.i

if.then19.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %flags20.i.i = getelementptr inbounds %struct.ahd_softc, ptr %11, i32 0, i32 23
  %33 = ptrtoint ptr %flags20.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags20.i.i, align 4
  %or21.i.i = or i32 %34, 2048
  store i32 %or21.i.i, ptr %flags20.i.i, align 4
  %35 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %platform_data.i.i.i, align 4
  %spin_lock.i234.i.i = getelementptr inbounds %struct.ahd_platform_data, ptr %36, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i234.i.i, i32 noundef %call2.i.i.i) #14
  call void @scsi_dma_unmap(ptr noundef %cmd) #14
  br label %ahd_linux_queue_lck.exit

if.end22.i.i:                                     ; preds = %if.end15.i.i
  %io_ctx.i.i = getelementptr inbounds %struct.scb, ptr %call16.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %io_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %cmd, ptr %io_ctx.i.i, align 4
  %platform_data.i.i = getelementptr inbounds %struct.scb, ptr %call16.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %platform_data.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i.i, ptr %39, align 4
  %41 = ptrtoint ptr %call16.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call16.i.i, align 4
  %host_scribble.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 23
  %43 = ptrtoint ptr %host_scribble.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call16.i.i, ptr %host_scribble.i.i, align 4
  %control.i.i = getelementptr inbounds %struct.hardware_scb, ptr %42, i32 0, i32 2
  %44 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %control.i.i, align 2
  %45 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id.i.i.i, align 8
  %49 = ptrtoint ptr %our_id.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %our_id.i.i, align 1
  %call26.tr.i.i = trunc i32 %48 to i8
  %51 = shl i8 %call26.tr.i.i, 4
  %conv32.i.i = or i8 %51, %50
  %scsiid.i.i = getelementptr inbounds %struct.hardware_scb, ptr %42, i32 0, i32 3
  %52 = ptrtoint ptr %scsiid.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv32.i.i, ptr %scsiid.i.i, align 1
  %53 = load ptr, ptr %device.i, align 4
  %lun34.i.i = getelementptr inbounds %struct.scsi_device, ptr %53, i32 0, i32 18
  %54 = ptrtoint ptr %lun34.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %lun34.i.i, align 8
  %conv35.i.i = trunc i64 %55 to i8
  %lun36.i.i = getelementptr inbounds %struct.hardware_scb, ptr %42, i32 0, i32 4
  %56 = ptrtoint ptr %lun36.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv35.i.i, ptr %lun36.i.i, align 4
  %57 = load ptr, ptr %call16.i.i, align 4
  %task_management.i.i = getelementptr inbounds %struct.hardware_scb, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %task_management.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %task_management.i.i, align 1
  %59 = load ptr, ptr %call16.i.i, align 4
  %scsiid39.i.i = getelementptr inbounds %struct.hardware_scb, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %scsiid39.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %scsiid39.i.i, align 1
  %62 = lshr i8 %61, 4
  %63 = zext i8 %62 to i16
  %shl42.i.i = shl nuw i16 1, %63
  %user_discenable.i.i = getelementptr inbounds %struct.ahd_softc, ptr %11, i32 0, i32 70
  %64 = ptrtoint ptr %user_discenable.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %user_discenable.i.i, align 4
  %and46231.i.i = and i16 %shl42.i.i, %65
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and46231.i.i)
  %cmp47.not.i.i = icmp eq i16 %and46231.i.i, 0
  br i1 %cmp47.not.i.i, label %if.end22.i.i.if.end54.i.i_crit_edge, label %if.then49.i.i

if.end22.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.i.i

if.then49.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %control.i.i, align 2
  %68 = or i8 %67, 64
  store i8 %68, ptr %control.i.i, align 2
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then49.i.i, %if.end22.i.i.if.end54.i.i_crit_edge
  %ppr_options56.i.i = getelementptr inbounds %struct.ahd_transinfo, ptr %call1.i.i, i32 0, i32 5
  %69 = ptrtoint ptr %ppr_options56.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ppr_options56.i.i, align 1
  %71 = and i8 %70, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp59.not.i.i = icmp eq i8 %71, 0
  br i1 %cmp59.not.i.i, label %if.end54.i.i.if.end64.i.i_crit_edge, label %if.then61.i.i

if.end54.i.i.if.end64.i.i_crit_edge:              ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64.i.i

if.then61.i.i:                                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %flags62.i.i = getelementptr inbounds %struct.scb, ptr %call16.i.i, i32 0, i32 6
  %72 = ptrtoint ptr %flags62.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags62.i.i, align 4
  %or63.i.i = or i32 %73, 2048
  store i32 %or63.i.i, ptr %flags62.i.i, align 4
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %if.then61.i.i, %if.end54.i.i.if.end64.i.i_crit_edge
  %74 = ptrtoint ptr %tstate.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tstate.i.i, align 4
  %auto_negotiate.i.i = getelementptr inbounds %struct.ahd_tmode_tstate, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %auto_negotiate.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %auto_negotiate.i.i, align 4
  %and67232.i.i = and i16 %77, %shl42.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and67232.i.i)
  %cmp68.not.i.i = icmp eq i16 %and67232.i.i, 0
  br i1 %cmp68.not.i.i, label %if.end64.i.i.if.end78.i.i_crit_edge, label %if.then70.i.i

if.end64.i.i.if.end78.i.i_crit_edge:              ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78.i.i

if.then70.i.i:                                    ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %flags71.i.i = getelementptr inbounds %struct.scb, ptr %call16.i.i, i32 0, i32 6
  %78 = ptrtoint ptr %flags71.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags71.i.i, align 4
  %or72.i.i = or i32 %79, 64
  store i32 %or72.i.i, ptr %flags71.i.i, align 4
  %80 = ptrtoint ptr %call16.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call16.i.i, align 4
  %control74.i.i = getelementptr inbounds %struct.hardware_scb, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %control74.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %control74.i.i, align 2
  %84 = or i8 %83, 16
  store i8 %84, ptr %control74.i.i, align 2
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %if.then70.i.i, %if.end64.i.i.if.end78.i.i_crit_edge
  %85 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags2.i.i, align 4
  %and80.i.i = and i32 %86, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i.i)
  %cmp81.not.i.i = icmp eq i32 %and80.i.i, 0
  br i1 %cmp81.not.i.i, label %if.end78.i.i.if.end102.i.i_crit_edge, label %if.then83.i.i

if.end78.i.i.if.end102.i.i_crit_edge:             ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102.i.i

if.then83.i.i:                                    ; preds = %if.end78.i.i
  %commands_since_idle_or_otag.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i, i32 0, i32 11
  %87 = ptrtoint ptr %commands_since_idle_or_otag.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %commands_since_idle_or_otag.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %88)
  %cmp84.i.i = icmp ne i32 %88, 500
  %and87.i.i = and i32 %86, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i.i)
  %cmp88.not.i.i = icmp eq i32 %and87.i.i, 0
  %or.cond.i.i = select i1 %cmp84.i.i, i1 true, i1 %cmp88.not.i.i
  %89 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %control.i.i, align 2
  br i1 %or.cond.i.i, label %if.else96.i.i, label %if.then90.i.i

if.then90.i.i:                                    ; preds = %if.then83.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %91 = or i8 %90, 34
  %92 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %control.i.i, align 2
  %93 = ptrtoint ptr %commands_since_idle_or_otag.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %commands_since_idle_or_otag.i.i, align 4
  br label %if.end102.i.i

if.else96.i.i:                                    ; preds = %if.then83.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %94 = or i8 %90, 32
  %95 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %control.i.i, align 2
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %if.else96.i.i, %if.then90.i.i, %if.end78.i.i.if.end102.i.i_crit_edge
  %cmd_len.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %96 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %cmd_len.i.i, align 4
  %conv103.i.i = trunc i16 %97 to i8
  %cdb_len.i.i = getelementptr inbounds %struct.hardware_scb, ptr %42, i32 0, i32 6
  %98 = ptrtoint ptr %cdb_len.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv103.i.i, ptr %cdb_len.i.i, align 2
  %cmnd.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %99 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cmnd.i.i, align 4
  %conv103.mask.i.i = and i16 %97, 255
  %conv105.i.i = zext i16 %conv103.mask.i.i to i32
  %101 = call ptr @memcpy(ptr %42, ptr %100, i32 %conv105.i.i)
  %102 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %platform_data.i.i, align 4
  %xfer_len.i.i = getelementptr inbounds %struct.scb_platform_data, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %xfer_len.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %xfer_len.i.i, align 4
  %105 = ptrtoint ptr %io_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %io_ctx.i.i, align 4
  %resid_len.i.i.i.i = getelementptr inbounds %struct.scsi_request, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %resid_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %resid_len.i.i.i.i, align 4
  %108 = load ptr, ptr %platform_data.i.i, align 4
  %sense_resid.i.i.i = getelementptr inbounds %struct.scb_platform_data, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %sense_resid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %sense_resid.i.i.i, align 4
  %sg_count.i.i = getelementptr inbounds %struct.scb, ptr %call16.i.i, i32 0, i32 15
  %110 = ptrtoint ptr %sg_count.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %sg_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp107.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp107.not.i.i, label %if.end102.i.i.do.body.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end102.i.i.do.body.i.i_crit_edge:              ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end102.i.i
  %sg_list.i.i = getelementptr inbounds %struct.scb, ptr %call16.i.i, i32 0, i32 11
  %111 = ptrtoint ptr %sg_list.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sg_list.i.i, align 4
  %113 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %platform_data.i.i, align 4
  %xfer_len111.i.i = getelementptr inbounds %struct.scb_platform_data, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %xfer_len111.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %xfer_len111.i.i, align 4
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %116 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sdb.i.i.i, align 4
  %sub.i.i = add nsw i32 %call.i.i, -1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0242.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %cur_seg.0241.i.i = phi ptr [ %117, %for.body.lr.ph.i.i ], [ %call120.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %sg.0240.i.i = phi ptr [ %112, %for.body.lr.ph.i.i ], [ %call119.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %cur_seg.0241.i.i, i32 0, i32 3
  %118 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dma_address.i.i, align 4
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %cur_seg.0241.i.i, i32 0, i32 4
  %120 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dma_length.i.i, align 4
  %122 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %platform_data.i.i, align 4
  %xfer_len116.i.i = getelementptr inbounds %struct.scb_platform_data, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %xfer_len116.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %xfer_len116.i.i, align 4
  %add.i.i = add i32 %125, %121
  store i32 %add.i.i, ptr %xfer_len116.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0242.i.i, i32 %sub.i.i)
  %cmp117.i.i = icmp eq i32 %i.0242.i.i, %sub.i.i
  %conv118.i.i = zext i1 %cmp117.i.i to i32
  %call119.i.i = call ptr @ahd_sg_setup(ptr noundef %11, ptr noundef nonnull %call16.i.i, ptr noundef %sg.0240.i.i, i32 noundef %119, i32 noundef %121, i32 noundef %conv118.i.i) #14
  %inc.i.i = add nuw nsw i32 %i.0242.i.i, 1
  %call120.i.i = call ptr @sg_next(ptr noundef %cur_seg.0241.i.i) #14
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.do.body.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.do.body.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.body.i.i.do.body.i.i_crit_edge, %if.end102.i.i.do.body.i.i_crit_edge
  %pending_scbs.i.i = getelementptr inbounds %struct.ahd_softc, ptr %11, i32 0, i32 5
  %126 = ptrtoint ptr %pending_scbs.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pending_scbs.i.i, align 4
  %links2.i.i = getelementptr inbounds %struct.scb, ptr %call16.i.i, i32 0, i32 2
  %128 = ptrtoint ptr %links2.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %127, ptr %links2.i.i, align 4
  %cmp122.not.i.i = icmp eq ptr %127, null
  br i1 %cmp122.not.i.i, label %do.body.i.i.if.end130.i.i_crit_edge, label %if.then124.i.i

do.body.i.i.if.end130.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end130.i.i

if.then124.i.i:                                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %129 = ptrtoint ptr %pending_scbs.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pending_scbs.i.i, align 4
  %le_prev.i.i = getelementptr inbounds %struct.scb, ptr %130, i32 0, i32 2, i32 0, i32 1
  %131 = ptrtoint ptr %le_prev.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %links2.i.i, ptr %le_prev.i.i, align 4
  br label %if.end130.i.i

if.end130.i.i:                                    ; preds = %if.then124.i.i, %do.body.i.i.if.end130.i.i_crit_edge
  %132 = ptrtoint ptr %pending_scbs.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call16.i.i, ptr %pending_scbs.i.i, align 4
  %le_prev136.i.i = getelementptr inbounds %struct.scb, ptr %call16.i.i, i32 0, i32 2, i32 0, i32 1
  %133 = ptrtoint ptr %le_prev136.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %pending_scbs.i.i, ptr %le_prev136.i.i, align 4
  %openings.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i, i32 0, i32 2
  %134 = ptrtoint ptr %openings.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %openings.i.i, align 4
  %dec.i.i = add i32 %135, -1
  store i32 %dec.i.i, ptr %openings.i.i, align 4
  %active.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i, i32 0, i32 1
  %136 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %active.i.i, align 4
  %inc137.i.i = add i32 %137, 1
  store i32 %inc137.i.i, ptr %active.i.i, align 4
  %commands_issued.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i, i32 0, i32 4
  %138 = ptrtoint ptr %commands_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %commands_issued.i.i, align 4
  %inc138.i.i = add i32 %139, 1
  store i32 %inc138.i.i, ptr %commands_issued.i.i, align 4
  %140 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flags2.i.i, align 4
  %and140.i.i = and i32 %141, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140.i.i)
  %cmp141.not.i.i = icmp eq i32 %and140.i.i, 0
  br i1 %cmp141.not.i.i, label %if.end130.i.i.if.end146.i.i_crit_edge, label %if.then143.i.i

if.end130.i.i.if.end146.i.i_crit_edge:            ; preds = %if.end130.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146.i.i

if.then143.i.i:                                   ; preds = %if.end130.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %commands_since_idle_or_otag144.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i, i32 0, i32 11
  %142 = ptrtoint ptr %commands_since_idle_or_otag144.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %commands_since_idle_or_otag144.i.i, align 4
  %inc145.i.i = add i32 %143, 1
  store i32 %inc145.i.i, ptr %commands_since_idle_or_otag144.i.i, align 4
  br label %if.end146.i.i

if.end146.i.i:                                    ; preds = %if.then143.i.i, %if.end130.i.i.if.end146.i.i_crit_edge
  %flags147.i.i = getelementptr inbounds %struct.scb, ptr %call16.i.i, i32 0, i32 6
  %144 = ptrtoint ptr %flags147.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %flags147.i.i, align 4
  %or148.i.i = or i32 %145, 512
  store i32 %or148.i.i, ptr %flags147.i.i, align 4
  call void @ahd_queue_scb(ptr noundef %11, ptr noundef nonnull %call16.i.i) #14
  %146 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %platform_data.i.i.i, align 4
  %spin_lock.i237.i.i = getelementptr inbounds %struct.ahd_platform_data, ptr %147, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i237.i.i, i32 noundef %call2.i.i.i) #14
  br label %ahd_linux_queue_lck.exit

ahd_linux_queue_lck.exit:                         ; preds = %if.end146.i.i, %if.then19.i.i, %entry.ahd_linux_queue_lck.exit_crit_edge
  %retval.0.i.i = phi i32 [ 4181, %if.then19.i.i ], [ 0, %if.end146.i.i ], [ 4181, %entry.ahd_linux_queue_lck.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate.i.i) #14
  %148 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %149, i32 noundef %call2) #14
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal nonnull ptr @ahd_linux_info(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  %ahd_info = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ahd_info) #14
  %0 = call ptr @memset(ptr %ahd_info, i32 255, i32 256)
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 53
  %1 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hostdata, align 8
  %3 = call ptr @memset(ptr getelementptr inbounds ([512 x i8], ptr @ahd_linux_info.buffer, i32 0, i32 57), i32 0, i32 455)
  %4 = call ptr @memcpy(ptr @ahd_linux_info.buffer, ptr @.str.21, i32 57)
  %description = getelementptr inbounds %struct.ahd_softc, ptr %2, i32 0, i32 60
  %5 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %description, align 4
  %call1 = tail call ptr @strcat(ptr noundef nonnull @ahd_linux_info.buffer, ptr noundef %6)
  %strlen = tail call i32 @strlen(ptr nonnull @ahd_linux_info.buffer) #19
  %endptr = getelementptr i8, ptr @ahd_linux_info.buffer, i32 %strlen
  %7 = call ptr @memcpy(ptr %endptr, ptr @.str.22, i32 11)
  call void @ahd_controller_info(ptr noundef %2, ptr noundef nonnull %ahd_info) #14
  %call5 = call ptr @strcat(ptr noundef nonnull @ahd_linux_info.buffer, ptr noundef nonnull %ahd_info)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ahd_info) #14
  ret ptr @ahd_linux_info.buffer
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahd_linux_abort(ptr noundef %cmd) #0 align 64 {
entry:
  %done155.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i, align 8
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.23, ptr noundef %cmd, ptr noundef nonnull @.str.24) #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #17
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %6 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cmd_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp308.not.i = icmp eq i16 %7, 0
  br i1 %cmp308.not.i, label %entry.do.end11.i_crit_edge, label %do.end5.lr.ph.i

entry.do.end11.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11.i

do.end5.lr.ph.i:                                  ; preds = %entry
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end5.i.do.end5.i_crit_edge, %do.end5.lr.ph.i
  %cdb_byte.0309.i = phi i32 [ 0, %do.end5.lr.ph.i ], [ %inc.i, %do.end5.i.do.end5.i_crit_edge ]
  %8 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmnd.i, align 4
  %arrayidx.i = getelementptr i8, ptr %9, i32 %cdb_byte.0309.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv7.i = zext i8 %11 to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i) #17
  %inc.i = add nuw nsw i32 %cdb_byte.0309.i, 1
  %12 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cmd_len.i, align 4
  %conv.i = zext i16 %13 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %do.end5.i.do.end5.i_crit_edge, label %do.end5.i.do.end11.i_crit_edge

do.end5.i.do.end11.i_crit_edge:                   ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11.i

do.end5.i.do.end5.i_crit_edge:                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end5.i

do.end11.i:                                       ; preds = %do.end5.i.do.end11.i_crit_edge, %entry.do.end11.i_crit_edge
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #17
  %platform_data.i.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 10
  %14 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_data.i.i, align 4
  %spin_lock.i.i = getelementptr inbounds %struct.ahd_platform_data, ptr %15, i32 0, i32 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i.i) #14
  %16 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %sdev_data.i.i = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 71
  %transportt.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %transportt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transportt.i.i, align 4
  %device_private_offset.i.i = getelementptr inbounds %struct.scsi_transport_template, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %device_private_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %device_private_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %sdev_data.i.i, i32 %23
  %cmp16.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp16.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.23, ptr noundef %cmd, ptr noundef nonnull @.str.33) #14
  br label %if.else180.i

if.end.i:                                         ; preds = %do.end11.i
  %pending_scbs.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 5
  %24 = ptrtoint ptr %pending_scbs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %pending_scb.0310.i = load ptr, ptr %pending_scbs.i, align 4
  %cond276311.i = icmp eq ptr %pending_scb.0310.i, null
  br i1 %cond276311.i, label %if.end.i.if.then28.i_crit_edge, label %if.end.i.for.body19.i_crit_edge

if.end.i.for.body19.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body19.i

if.end.i.if.then28.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28.i

for.body19.i:                                     ; preds = %for.inc24.i.for.body19.i_crit_edge, %if.end.i.for.body19.i_crit_edge
  %pending_scb.0312.i = phi ptr [ %pending_scb.0.i, %for.inc24.i.for.body19.i_crit_edge ], [ %pending_scb.0310.i, %if.end.i.for.body19.i_crit_edge ]
  %io_ctx.i = getelementptr inbounds %struct.scb, ptr %pending_scb.0312.i, i32 0, i32 4
  %25 = ptrtoint ptr %io_ctx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_ctx.i, align 4
  %cmp20.i = icmp eq ptr %26, %cmd
  br i1 %cmp20.i, label %if.end29.i, label %for.inc24.i

for.inc24.i:                                      ; preds = %for.body19.i
  %links2.i = getelementptr inbounds %struct.scb, ptr %pending_scb.0312.i, i32 0, i32 2
  %27 = ptrtoint ptr %links2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %pending_scb.0.i = load ptr, ptr %links2.i, align 4
  %cond276.i = icmp eq ptr %pending_scb.0.i, null
  br i1 %cond276.i, label %for.inc24.i.if.then28.i_crit_edge, label %for.inc24.i.for.body19.i_crit_edge

for.inc24.i.for.body19.i_crit_edge:               ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19.i

for.inc24.i.if.then28.i_crit_edge:                ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28.i

if.then28.i:                                      ; preds = %for.inc24.i.if.then28.i_crit_edge, %if.end.i.if.then28.i_crit_edge
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.23, ptr noundef %cmd, ptr noundef nonnull @.str.34) #14
  br label %if.else180.i

if.end29.i:                                       ; preds = %for.body19.i
  %flags30.i = getelementptr inbounds %struct.scb, ptr %pending_scb.0312.i, i32 0, i32 6
  %28 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags30.i, align 4
  %and.i = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp31.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp31.not.i, label %if.end34.i, label %if.end29.i.if.else180.i_crit_edge

if.end29.i.if.else180.i_crit_edge:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else180.i

if.end34.i:                                       ; preds = %if.end29.i
  %call35.i = tail call i32 @ahd_is_paused(ptr noundef %5) #14
  tail call void @ahd_pause_and_flushwork(ptr noundef %5) #14
  %30 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags30.i, align 4
  %and37.i = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %cmp38.i = icmp eq i32 %and37.i, 0
  br i1 %cmp38.i, label %if.then40.i, label %do.end44.i

if.then40.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.23, ptr noundef %cmd, ptr noundef nonnull @.str.35) #14
  br label %if.end152.thread301.i

do.end44.i:                                       ; preds = %if.end34.i
  %name.i.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 62
  %32 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool47.not.i = icmp eq i32 %call35.i, 0
  %cond.i = select i1 %tobool47.not.i, ptr @.str.40, ptr @.str.39
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %33, ptr noundef nonnull %cond.i) #17
  tail call void @ahd_dump_card_state(ptr noundef %5) #14
  %34 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device.i, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id.i, align 8
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %35, i32 0, i32 17
  %38 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %channel.i, align 4
  %40 = trunc i32 %39 to i8
  %conv51.i = add i8 %40, 65
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %35, i32 0, i32 18
  %41 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %lun.i, align 8
  %conv53.i = trunc i64 %42 to i32
  %43 = ptrtoint ptr %pending_scb.0312.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pending_scb.0312.i, align 4
  %tag.i = getelementptr inbounds %struct.hardware_scb, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %tag.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %tag.i, align 8
  %conv54.i = zext i16 %46 to i32
  %call55.i = tail call i32 @ahd_search_qinfifo(ptr noundef %5, i32 noundef %37, i8 noundef zeroext %conv51.i, i32 noundef %conv53.i, i32 noundef %conv54.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp56.i = icmp sgt i32 %call55.i, 0
  br i1 %cmp56.i, label %do.end61.i, label %if.end73.i

do.end61.i:                                       ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name.i.i, align 4
  %49 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device.i, align 4
  %channel65.i = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 17
  %51 = ptrtoint ptr %channel65.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %channel65.i, align 4
  %id67.i = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 16
  %53 = ptrtoint ptr %id67.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id67.i, align 8
  %lun69.i = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 18
  %55 = ptrtoint ptr %lun69.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %lun69.i, align 8
  %conv70.i = trunc i64 %56 to i32
  %conv71.i = and i32 %conv70.i, 255
  %call72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %48, i32 noundef %52, i32 noundef %54, i32 noundef %conv71.i) #17
  br label %if.end152.thread301.i

if.end73.i:                                       ; preds = %do.end44.i
  %call74.i = tail call zeroext i8 @ahd_save_modes(ptr noundef %5) #14
  tail call void @ahd_set_modes(ptr noundef %5, i32 noundef 3, i32 noundef 3) #14
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i70 = icmp eq i32 %58, 0
  br i1 %cmp.i70, label %if.then.i73, label %if.else.i78

if.then.i73:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  %bshs.i71 = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 1
  %59 = ptrtoint ptr %bshs.i71 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bshs.i71, align 4
  %add.ptr.i72 = getelementptr i8, ptr %60, i32 316
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i72) #14, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !356
  br label %ahd_inb.exit81

if.else.i78:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx5.i74 = getelementptr %struct.ahd_softc, ptr %5, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %arrayidx5.i74 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx5.i74, align 4
  %add.i75 = add i32 %63, 60
  %and6.i76 = and i32 %add.i75, 1048575
  %add7.i77 = or i32 %and6.i76, -18874368
  %64 = inttoptr i32 %add7.i77 to ptr
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #14, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !357
  br label %ahd_inb.exit81

ahd_inb.exit81:                                   ; preds = %if.else.i78, %if.then.i73
  %x.0.i79 = phi i8 [ %61, %if.then.i73 ], [ %65, %if.else.i78 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !358
  tail call void @arm_heavy_mb() #14
  %call77.i = tail call i32 @ahd_get_scbptr(ptr noundef %5) #14
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i58 = icmp eq i32 %67, 0
  br i1 %cmp.i58, label %if.then.i61, label %if.else.i66

if.then.i61:                                      ; preds = %ahd_inb.exit81
  call void @__sanitizer_cov_trace_pc() #16
  %bshs.i59 = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 1
  %68 = ptrtoint ptr %bshs.i59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bshs.i59, align 4
  %add.ptr.i60 = getelementptr i8, ptr %69, i32 313
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i60) #14, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !356
  br label %ahd_inb.exit69

if.else.i66:                                      ; preds = %ahd_inb.exit81
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx5.i62 = getelementptr %struct.ahd_softc, ptr %5, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %arrayidx5.i62 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx5.i62, align 4
  %add.i63 = add i32 %72, 57
  %and6.i64 = and i32 %add.i63, 1048575
  %add7.i65 = or i32 %and6.i64, -18874368
  %73 = inttoptr i32 %add7.i65 to ptr
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %73) #14, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !357
  br label %ahd_inb.exit69

ahd_inb.exit69:                                   ; preds = %if.else.i66, %if.then.i61
  %x.0.i67 = phi i8 [ %70, %if.then.i61 ], [ %74, %if.else.i66 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !358
  tail call void @arm_heavy_mb() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %x.0.i67)
  %cmp82.i = icmp sgt i8 %x.0.i67, -1
  br i1 %cmp82.i, label %if.then84.i, label %ahd_inb.exit69.if.end90.i_crit_edge

ahd_inb.exit69.if.end90.i_crit_edge:              ; preds = %ahd_inb.exit69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90.i

if.then84.i:                                      ; preds = %ahd_inb.exit69
  call void @__sanitizer_cov_trace_pc() #16
  %call85.i = tail call ptr @ahd_lookup_scb(ptr noundef %5, i32 noundef %call77.i) #14
  %cmp86.i = icmp ne ptr %call85.i, %pending_scb.0312.i
  %spec.select.i = zext i1 %cmp86.i to i32
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then84.i, %ahd_inb.exit69.if.end90.i_crit_edge
  %disconnected.1.i = phi i32 [ %spec.select.i, %if.then84.i ], [ 1, %ahd_inb.exit69.if.end90.i_crit_edge ]
  %75 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i46 = icmp eq i32 %76, 0
  br i1 %cmp.i46, label %if.then.i49, label %if.else.i54

if.then.i49:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #16
  %bshs.i47 = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 1
  %77 = ptrtoint ptr %bshs.i47 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bshs.i47, align 4
  %add.ptr.i48 = getelementptr i8, ptr %78, i32 314
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i48) #14, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !356
  br label %ahd_inb.exit57

if.else.i54:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx5.i50 = getelementptr %struct.ahd_softc, ptr %5, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %arrayidx5.i50 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx5.i50, align 4
  %add.i51 = add i32 %81, 58
  %and6.i52 = and i32 %add.i51, 1048575
  %add7.i53 = or i32 %and6.i52, -18874368
  %82 = inttoptr i32 %add7.i53 to ptr
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %82) #14, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !357
  br label %ahd_inb.exit57

ahd_inb.exit57:                                   ; preds = %if.else.i54, %if.then.i49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !358
  tail call void @arm_heavy_mb() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %x.0.i79)
  %cmp92.not.i = icmp eq i8 %x.0.i79, 1
  br i1 %cmp92.not.i, label %ahd_inb.exit57.if.else.i_crit_edge, label %land.lhs.true94.i

ahd_inb.exit57.if.else.i_crit_edge:               ; preds = %ahd_inb.exit57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

land.lhs.true94.i:                                ; preds = %ahd_inb.exit57
  %84 = ptrtoint ptr %pending_scb.0312.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pending_scb.0312.i, align 4
  %tag96.i = getelementptr inbounds %struct.hardware_scb, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %tag96.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %tag96.i, align 8
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #14
  %conv97.i = zext i16 %88 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call77.i, i32 %conv97.i)
  %cmp98.i = icmp eq i32 %call77.i, %conv97.i
  br i1 %cmp98.i, label %if.then100.i, label %land.lhs.true94.i.if.else.i_crit_edge

land.lhs.true94.i.if.else.i_crit_edge:            ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.then100.i:                                     ; preds = %land.lhs.true94.i
  %call101.i = tail call ptr @ahd_lookup_scb(ptr noundef %5, i32 noundef %call77.i) #14
  %flags102.i = getelementptr inbounds %struct.scb, ptr %call101.i, i32 0, i32 6
  %89 = ptrtoint ptr %flags102.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags102.i, align 4
  %or.i = or i32 %90, 288
  store i32 %or.i, ptr %flags102.i, align 4
  %91 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp.i36 = icmp eq i32 %92, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  br i1 %cmp.i36, label %do.body.i39, label %do.body2.i44

do.body.i39:                                      ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #16
  %bshs.i37 = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 1
  %93 = ptrtoint ptr %bshs.i37 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bshs.i37, align 4
  %add.ptr.i38 = getelementptr i8, ptr %94, i32 311
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i38, i8 -1) #14, !srcloc !359
  br label %ahd_outb.exit45

do.body2.i44:                                     ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx5.i40 = getelementptr %struct.ahd_softc, ptr %5, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %arrayidx5.i40 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx5.i40, align 4
  %add.i41 = add i32 %96, 55
  %and6.i42 = and i32 %add.i41, 1048575
  %add7.i43 = or i32 %and6.i42, -18874368
  %97 = inttoptr i32 %add7.i43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 -1) #14, !srcloc !359
  br label %ahd_outb.exit45

ahd_outb.exit45:                                  ; preds = %do.body2.i44, %do.body.i39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !360
  tail call void @arm_heavy_mb() #14
  %98 = or i8 %x.0.i79, 16
  %99 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i26 = icmp eq i32 %100, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  br i1 %cmp.i26, label %do.body.i29, label %do.body2.i34

do.body.i29:                                      ; preds = %ahd_outb.exit45
  call void @__sanitizer_cov_trace_pc() #16
  %bshs.i27 = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 1
  %101 = ptrtoint ptr %bshs.i27 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bshs.i27, align 4
  %add.ptr.i28 = getelementptr i8, ptr %102, i32 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i28, i8 %98) #14, !srcloc !359
  br label %ahd_outb.exit35

do.body2.i34:                                     ; preds = %ahd_outb.exit45
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx5.i30 = getelementptr %struct.ahd_softc, ptr %5, i32 0, i32 1, i32 0
  %103 = ptrtoint ptr %arrayidx5.i30 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx5.i30, align 4
  %add.i31 = add i32 %104, 64
  %and6.i32 = and i32 %add.i31, 1048575
  %add7.i33 = or i32 %and6.i32, -18874368
  %105 = inttoptr i32 %add7.i33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %105, i8 %98) #14, !srcloc !359
  br label %ahd_outb.exit35

ahd_outb.exit35:                                  ; preds = %do.body2.i34, %do.body.i29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !360
  tail call void @arm_heavy_mb() #14
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.23, ptr noundef %cmd, ptr noundef nonnull @.str.44) #14
  br label %if.end152.i

if.else.i:                                        ; preds = %land.lhs.true94.i.if.else.i_crit_edge, %ahd_inb.exit57.if.else.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disconnected.1.i)
  %tobool105.not.i = icmp eq i32 %disconnected.1.i, 0
  br i1 %tobool105.not.i, label %if.else147.i, label %if.then106.i

if.then106.i:                                     ; preds = %if.else.i
  %106 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags30.i, align 4
  %or108.i = or i32 %107, 288
  store i32 %or108.i, ptr %flags30.i, align 4
  %108 = ptrtoint ptr %pending_scb.0312.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pending_scb.0312.i, align 4
  %tag110.i = getelementptr inbounds %struct.hardware_scb, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %tag110.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %tag110.i, align 8
  %112 = tail call i16 @llvm.bswap.i16(i16 %111) #14
  %conv111.i = zext i16 %112 to i32
  tail call void @ahd_set_scbptr(ptr noundef %5, i32 noundef %conv111.i) #14
  %113 = ptrtoint ptr %pending_scb.0312.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pending_scb.0312.i, align 4
  %cdb_len.i = getelementptr inbounds %struct.hardware_scb, ptr %114, i32 0, i32 6
  %115 = ptrtoint ptr %cdb_len.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %cdb_len.i, align 2
  %116 = load ptr, ptr %pending_scb.0312.i, align 4
  %task_attribute.i = getelementptr inbounds %struct.hardware_scb, ptr %116, i32 0, i32 5
  %117 = ptrtoint ptr %task_attribute.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %task_attribute.i, align 1
  %118 = load ptr, ptr %pending_scb.0312.i, align 4
  %task_management.i = getelementptr inbounds %struct.hardware_scb, ptr %118, i32 0, i32 7
  %119 = ptrtoint ptr %task_management.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %task_management.i, align 1
  %120 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags30.i, align 4
  %and116.i = and i32 %121, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %cmp117.not.i = icmp eq i32 %and116.i, 0
  %122 = ptrtoint ptr %pending_scb.0312.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pending_scb.0312.i, align 4
  br i1 %cmp117.not.i, label %if.else122.i, label %if.then119.i

if.then119.i:                                     ; preds = %if.then106.i
  %task_management121.i = getelementptr inbounds %struct.hardware_scb, ptr %123, i32 0, i32 7
  %124 = ptrtoint ptr %task_management121.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %task_management121.i, align 1
  %126 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp.i16 = icmp eq i32 %127, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  br i1 %cmp.i16, label %do.body.i19, label %do.body2.i24

do.body.i19:                                      ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #16
  %bshs.i17 = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 1
  %128 = ptrtoint ptr %bshs.i17 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bshs.i17, align 4
  %add.ptr.i18 = getelementptr i8, ptr %129, i32 407
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i18, i8 %125) #14, !srcloc !359
  br label %ahd_outb.exit25

do.body2.i24:                                     ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx5.i20 = getelementptr %struct.ahd_softc, ptr %5, i32 0, i32 1, i32 1
  %130 = ptrtoint ptr %arrayidx5.i20 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx5.i20, align 4
  %add.i21 = add i32 %131, 151
  %and6.i22 = and i32 %add.i21, 1048575
  %add7.i23 = or i32 %and6.i22, -18874368
  %132 = inttoptr i32 %add7.i23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 %125) #14, !srcloc !359
  br label %ahd_outb.exit25

ahd_outb.exit25:                                  ; preds = %do.body2.i24, %do.body.i19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !360
  br label %ahd_print_path.exit

if.else122.i:                                     ; preds = %if.then106.i
  %control.i = getelementptr inbounds %struct.hardware_scb, ptr %123, i32 0, i32 2
  %133 = ptrtoint ptr %control.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %control.i, align 2
  %135 = or i8 %134, 20
  store i8 %135, ptr %control.i, align 2
  %136 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp.i6 = icmp eq i32 %137, 0
  br i1 %cmp.i6, label %if.then.i9, label %if.else.i14

if.then.i9:                                       ; preds = %if.else122.i
  call void @__sanitizer_cov_trace_pc() #16
  %bshs.i7 = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 1
  %138 = ptrtoint ptr %bshs.i7 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bshs.i7, align 4
  %add.ptr.i8 = getelementptr i8, ptr %139, i32 402
  %140 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i8) #14, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !356
  br label %ahd_inb.exit

if.else.i14:                                      ; preds = %if.else122.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx5.i10 = getelementptr %struct.ahd_softc, ptr %5, i32 0, i32 1, i32 1
  %141 = ptrtoint ptr %arrayidx5.i10 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx5.i10, align 4
  %add.i11 = add i32 %142, 146
  %and6.i12 = and i32 %add.i11, 1048575
  %add7.i13 = or i32 %and6.i12, -18874368
  %143 = inttoptr i32 %add7.i13 to ptr
  %144 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %143) #14, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !357
  br label %ahd_inb.exit

ahd_inb.exit:                                     ; preds = %if.else.i14, %if.then.i9
  %x.0.i = phi i8 [ %140, %if.then.i9 ], [ %144, %if.else.i14 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !358
  tail call void @arm_heavy_mb() #14
  %145 = or i8 %x.0.i, 16
  %146 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp.i5 = icmp eq i32 %147, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  br i1 %cmp.i5, label %do.body.i, label %do.body2.i

do.body.i:                                        ; preds = %ahd_inb.exit
  call void @__sanitizer_cov_trace_pc() #16
  %bshs.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 1
  %148 = ptrtoint ptr %bshs.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %bshs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %149, i32 402
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %145) #14, !srcloc !359
  br label %ahd_outb.exit

do.body2.i:                                       ; preds = %ahd_inb.exit
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx5.i = getelementptr %struct.ahd_softc, ptr %5, i32 0, i32 1, i32 1
  %150 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx5.i, align 4
  %add.i = add i32 %151, 146
  %and6.i = and i32 %add.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %152 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %152, i8 %145) #14, !srcloc !359
  br label %ahd_outb.exit

ahd_outb.exit:                                    ; preds = %do.body2.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !360
  br label %ahd_print_path.exit

ahd_print_path.exit:                              ; preds = %ahd_outb.exit, %ahd_outb.exit25
  tail call void @arm_heavy_mb() #14
  %153 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %device.i, align 4
  %id133.i = getelementptr inbounds %struct.scsi_device, ptr %154, i32 0, i32 16
  %155 = ptrtoint ptr %id133.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %id133.i, align 8
  %channel135.i = getelementptr inbounds %struct.scsi_device, ptr %154, i32 0, i32 17
  %157 = ptrtoint ptr %channel135.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %channel135.i, align 4
  %159 = trunc i32 %158 to i8
  %conv137.i = add i8 %159, 65
  %lun139.i = getelementptr inbounds %struct.scsi_device, ptr %154, i32 0, i32 18
  %160 = ptrtoint ptr %lun139.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %lun139.i, align 8
  %conv140.i = trunc i64 %161 to i32
  %call141.i = tail call i32 @ahd_search_qinfifo(ptr noundef %5, i32 noundef %156, i8 noundef zeroext %conv137.i, i32 noundef %conv140.i, i32 noundef 65280, i32 noundef 1, i32 noundef 28, i32 noundef 0) #14
  tail call void @ahd_qinfifo_requeue_tail(ptr noundef %5, ptr noundef nonnull %pending_scb.0312.i) #14
  tail call void @ahd_set_scbptr(ptr noundef %5, i32 noundef %call77.i) #14
  %162 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %platform_data.i.i, align 4
  %host.i = getelementptr inbounds %struct.ahd_platform_data, ptr %163, i32 0, i32 3
  %164 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %host.i, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %165, i32 0, i32 17
  %166 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %host_no.i, align 4
  %168 = ptrtoint ptr %pending_scb.0312.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pending_scb.0312.i, align 4
  %scsiid.i = getelementptr inbounds %struct.hardware_scb, ptr %169, i32 0, i32 3
  %170 = ptrtoint ptr %scsiid.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %scsiid.i, align 1
  %172 = lshr i8 %171, 4
  %173 = zext i8 %172 to i32
  %lun.i1 = getelementptr inbounds %struct.hardware_scb, ptr %169, i32 0, i32 4
  %174 = ptrtoint ptr %lun.i1 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %lun.i1, align 4
  %conv7.i2 = zext i8 %175 to i32
  %call.i4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %167, i32 noundef 65, i32 noundef %173, i32 noundef %conv7.i2) #17
  %call146.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #17
  br label %if.end152.i

if.else147.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.23, ptr noundef %cmd, ptr noundef nonnull @.str.48) #14
  br label %if.end152.i

if.end152.thread301.i:                            ; preds = %do.end61.i, %if.then40.i
  tail call void @ahd_unpause(ptr noundef %5) #14
  br label %if.else180.i

if.end152.i:                                      ; preds = %if.else147.i, %ahd_print_path.exit, %ahd_outb.exit35
  %tobool153.not.i = phi i1 [ false, %ahd_outb.exit35 ], [ true, %if.else147.i ], [ false, %ahd_print_path.exit ]
  %retval1.0.i = phi i32 [ 8194, %ahd_outb.exit35 ], [ 8195, %if.else147.i ], [ 8194, %ahd_print_path.exit ]
  tail call void @ahd_restore_modes(ptr noundef %5, i8 noundef zeroext %call74.i) #14
  tail call void @ahd_unpause(ptr noundef %5) #14
  br i1 %tobool153.not.i, label %if.end152.i.if.else180.i_crit_edge, label %if.then154.i

if.end152.i.if.else180.i_crit_edge:               ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else180.i

if.then154.i:                                     ; preds = %if.end152.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done155.i) #14
  %176 = getelementptr inbounds i8, ptr %done155.i, i32 4
  %177 = call ptr @memset(ptr %176, i32 255, i32 52)
  %178 = ptrtoint ptr %done155.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %done155.i, align 4
  call void @__init_swait_queue_head(ptr noundef %176, ptr noundef nonnull @.str.61, ptr noundef nonnull @init_completion.__key) #14
  %179 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %platform_data.i.i, align 4
  %eh_done.i = getelementptr inbounds %struct.ahd_platform_data, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %eh_done.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %done155.i, ptr %eh_done.i, align 4
  %182 = load ptr, ptr %platform_data.i.i, align 4
  %spin_lock.i279.i = getelementptr inbounds %struct.ahd_platform_data, ptr %182, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i279.i, i32 noundef %call2.i.i) #14
  %183 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %name.i.i, align 4
  %call162.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %184) #17
  %call163.i = call i32 @wait_for_completion_timeout(ptr noundef nonnull %done155.i, i32 noundef 500) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163.i)
  %tobool164.not.i = icmp eq i32 %call163.i, 0
  br i1 %tobool164.not.i, label %if.then165.i, label %if.then154.i.do.end177.i_crit_edge

if.then154.i.do.end177.i_crit_edge:               ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end177.i

if.then165.i:                                     ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #16
  %185 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %platform_data.i.i, align 4
  %spin_lock.i282.i = getelementptr inbounds %struct.ahd_platform_data, ptr %186, i32 0, i32 1
  %call2.i283.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i282.i) #14
  %187 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %platform_data.i.i, align 4
  %eh_done167.i = getelementptr inbounds %struct.ahd_platform_data, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %eh_done167.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %eh_done167.i, align 4
  %190 = load ptr, ptr %platform_data.i.i, align 4
  %spin_lock.i285.i = getelementptr inbounds %struct.ahd_platform_data, ptr %190, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i285.i, i32 noundef %call2.i283.i) #14
  %191 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %name.i.i, align 4
  %active.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i, i32 0, i32 1
  %193 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %active.i, align 4
  %call173.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %192, i32 noundef %194) #17
  br label %do.end177.i

do.end177.i:                                      ; preds = %if.then165.i, %if.then154.i.do.end177.i_crit_edge
  %retval1.2.i = phi i32 [ %retval1.0.i, %if.then154.i.do.end177.i_crit_edge ], [ 8195, %if.then165.i ]
  %call179.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done155.i) #14
  br label %if.end181.i

if.else180.i:                                     ; preds = %if.end152.i.if.else180.i_crit_edge, %if.end152.thread301.i, %if.end29.i.if.else180.i_crit_edge, %if.then28.i, %if.then.i
  %retval1.1296300.i = phi i32 [ %retval1.0.i, %if.end152.i.if.else180.i_crit_edge ], [ 8194, %if.end152.thread301.i ], [ 8195, %if.end29.i.if.else180.i_crit_edge ], [ 8194, %if.then28.i ], [ 8194, %if.then.i ]
  %195 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %platform_data.i.i, align 4
  %spin_lock.i288.i = getelementptr inbounds %struct.ahd_platform_data, ptr %196, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i288.i, i32 noundef %call2.i.i) #14
  br label %if.end181.i

if.end181.i:                                      ; preds = %if.else180.i, %do.end177.i
  %retval1.3.i = phi i32 [ %retval1.2.i, %do.end177.i ], [ %retval1.1296300.i, %if.else180.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %retval1.3.i)
  %cmp182.not.i = icmp eq i32 %retval1.3.i, 8194
  br i1 %cmp182.not.i, label %if.end181.i.ahd_linux_queue_abort_cmd.exit_crit_edge, label %do.end187.i

if.end181.i.ahd_linux_queue_abort_cmd.exit_crit_edge: ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_queue_abort_cmd.exit

do.end187.i:                                      ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i289.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 62
  %197 = ptrtoint ptr %name.i289.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %name.i289.i, align 4
  %call190.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %198, i32 noundef 8195) #17
  br label %ahd_linux_queue_abort_cmd.exit

ahd_linux_queue_abort_cmd.exit:                   ; preds = %do.end187.i, %if.end181.i.ahd_linux_queue_abort_cmd.exit_crit_edge
  ret i32 %retval1.3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahd_linux_dev_reset(ptr noundef %cmd) #0 align 64 {
entry:
  %tstate = alloca ptr, align 4
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tstate) #14
  %0 = ptrtoint ptr %tstate to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !363
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #14
  %1 = getelementptr inbounds i8, ptr %done, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 52)
  %3 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @init_completion.__key) #14
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hostdata, align 8
  call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.23, ptr noundef %cmd, ptr noundef nonnull @.str.62) #14
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #17
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %10 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp174.not = icmp eq i16 %11, 0
  br i1 %cmp174.not, label %entry.do.end12_crit_edge, label %do.end6.lr.ph

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

do.end6.lr.ph:                                    ; preds = %entry
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  br label %do.end6

do.end6:                                          ; preds = %do.end6.do.end6_crit_edge, %do.end6.lr.ph
  %cdb_byte.0175 = phi i32 [ 0, %do.end6.lr.ph ], [ %inc, %do.end6.do.end6_crit_edge ]
  %12 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %13, i32 %cdb_byte.0175
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %15 to i32
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv8) #17
  %inc = add nuw nsw i32 %cdb_byte.0175, 1
  %16 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cmd_len, align 4
  %conv = zext i16 %17 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %do.end6.do.end6_crit_edge, label %do.end6.do.end12_crit_edge

do.end6.do.end12_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

do.end6.do.end6_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end6

do.end12:                                         ; preds = %do.end6.do.end12_crit_edge, %entry.do.end12_crit_edge
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #17
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %sdev_data.i = getelementptr inbounds %struct.scsi_device, ptr %19, i32 0, i32 71
  %transportt.i = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %transportt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transportt.i, align 4
  %device_private_offset.i = getelementptr inbounds %struct.scsi_transport_template, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %device_private_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %device_private_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %sdev_data.i, i32 %25
  %cmp17 = icmp eq ptr %add.ptr.i, null
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.23, ptr noundef %cmd, ptr noundef nonnull @.str.33) #14
  br label %cleanup

if.end:                                           ; preds = %do.end12
  %call19 = call ptr @ahd_get_scb(ptr noundef %9, i32 noundef 65535) #14
  %tobool.not = icmp eq ptr %call19, null
  br i1 %tobool.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.23, ptr noundef %cmd, ptr noundef nonnull @.str.68) #14
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %our_id = getelementptr inbounds %struct.ahd_softc, ptr %9, i32 0, i32 38
  %26 = ptrtoint ptr %our_id to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %our_id, align 1
  %conv22 = zext i8 %27 to i32
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 8
  %call24 = call ptr @ahd_fetch_transinfo(ptr noundef %9, i8 noundef zeroext 65, i32 noundef %conv22, i32 noundef %31, ptr noundef nonnull %tstate) #14
  %io_ctx = getelementptr inbounds %struct.scb, ptr %call19, i32 0, i32 4
  %32 = ptrtoint ptr %io_ctx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cmd, ptr %io_ctx, align 4
  %platform_data = getelementptr inbounds %struct.scb, ptr %call19, i32 0, i32 7
  %33 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %platform_data, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i, ptr %34, align 4
  %sg_count = getelementptr inbounds %struct.scb, ptr %call19, i32 0, i32 15
  %36 = ptrtoint ptr %sg_count to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %sg_count, align 4
  %37 = load ptr, ptr %io_ctx, align 4
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %resid_len.i.i, align 4
  %39 = load ptr, ptr %platform_data, align 4
  %sense_resid.i = getelementptr inbounds %struct.scb_platform_data, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %sense_resid.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %sense_resid.i, align 4
  %41 = load ptr, ptr %platform_data, align 4
  %xfer_len = getelementptr inbounds %struct.scb_platform_data, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %xfer_len to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %xfer_len, align 4
  %43 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call19, align 4
  %control = getelementptr inbounds %struct.hardware_scb, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %control, align 2
  %46 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id.i, align 8
  %50 = ptrtoint ptr %our_id to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %our_id, align 1
  %call28.tr = trunc i32 %49 to i8
  %52 = shl i8 %call28.tr, 4
  %conv31 = or i8 %52, %51
  %53 = load ptr, ptr %call19, align 4
  %scsiid = getelementptr inbounds %struct.hardware_scb, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %scsiid to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv31, ptr %scsiid, align 1
  %55 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %55, i32 0, i32 18
  %56 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %lun, align 8
  %conv34 = trunc i64 %57 to i8
  %58 = load ptr, ptr %call19, align 4
  %lun36 = getelementptr inbounds %struct.hardware_scb, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %lun36 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv34, ptr %lun36, align 4
  %60 = load ptr, ptr %call19, align 4
  %cdb_len = getelementptr inbounds %struct.hardware_scb, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %cdb_len to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %cdb_len, align 2
  %62 = load ptr, ptr %call19, align 4
  %task_management = getelementptr inbounds %struct.hardware_scb, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %task_management to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 8, ptr %task_management, align 1
  %flags39 = getelementptr inbounds %struct.scb, ptr %call19, i32 0, i32 6
  %64 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags39, align 4
  %or40 = or i32 %65, 548
  store i32 %or40, ptr %flags39, align 4
  %ppr_options = getelementptr inbounds %struct.ahd_transinfo, ptr %call24, i32 0, i32 5
  %66 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ppr_options, align 1
  %68 = and i8 %67, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp43.not = icmp eq i8 %68, 0
  br i1 %cmp43.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %or47 = or i32 %65, 2596
  %69 = ptrtoint ptr %flags39 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or47, ptr %flags39, align 4
  br label %if.end53

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call19, align 4
  %control49 = getelementptr inbounds %struct.hardware_scb, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %control49 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %control49, align 2
  %74 = or i8 %73, 16
  store i8 %74, ptr %control49, align 2
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then45
  %openings = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 2
  %75 = ptrtoint ptr %openings to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %openings, align 4
  %dec = add i32 %76, -1
  store i32 %dec, ptr %openings, align 4
  %active = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 1
  %77 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %active, align 4
  %inc54 = add i32 %78, 1
  store i32 %inc54, ptr %active, align 4
  %commands_issued = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 4
  %79 = ptrtoint ptr %commands_issued to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %commands_issued, align 4
  %inc55 = add i32 %80, 1
  store i32 %inc55, ptr %commands_issued, align 4
  %platform_data.i162 = getelementptr inbounds %struct.ahd_softc, ptr %9, i32 0, i32 10
  %81 = ptrtoint ptr %platform_data.i162 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %platform_data.i162, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %82, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %pending_scbs = getelementptr inbounds %struct.ahd_softc, ptr %9, i32 0, i32 5
  %83 = ptrtoint ptr %pending_scbs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pending_scbs, align 4
  %links2 = getelementptr inbounds %struct.scb, ptr %call19, i32 0, i32 2
  %85 = ptrtoint ptr %links2 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %links2, align 4
  %cmp57.not = icmp eq ptr %84, null
  br i1 %cmp57.not, label %if.end53.if.end65_crit_edge, label %if.then59

if.end53.if.end65_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  %86 = ptrtoint ptr %pending_scbs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pending_scbs, align 4
  %le_prev = getelementptr inbounds %struct.scb, ptr %87, i32 0, i32 2, i32 0, i32 1
  %88 = ptrtoint ptr %le_prev to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %links2, ptr %le_prev, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then59, %if.end53.if.end65_crit_edge
  %89 = ptrtoint ptr %pending_scbs to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call19, ptr %pending_scbs, align 4
  %le_prev71 = getelementptr inbounds %struct.scb, ptr %call19, i32 0, i32 2, i32 0, i32 1
  %90 = ptrtoint ptr %le_prev71 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %pending_scbs, ptr %le_prev71, align 4
  call void @ahd_queue_scb(ptr noundef %9, ptr noundef nonnull %call19) #14
  %91 = ptrtoint ptr %platform_data.i162 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %platform_data.i162, align 4
  %eh_done = getelementptr inbounds %struct.ahd_platform_data, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %eh_done to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %done, ptr %eh_done, align 4
  %94 = load ptr, ptr %platform_data.i162, align 4
  %spin_lock.i164 = getelementptr inbounds %struct.ahd_platform_data, ptr %94, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i164, i32 noundef %call2.i) #14
  %name.i = getelementptr inbounds %struct.ahd_softc, ptr %9, i32 0, i32 62
  %95 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %name.i, align 4
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %96) #17
  %call81 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %done, i32 noundef 500) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then83, label %if.end65.do.end96_crit_edge

if.end65.do.end96_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end96

if.then83:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  %97 = ptrtoint ptr %platform_data.i162 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %platform_data.i162, align 4
  %spin_lock.i166 = getelementptr inbounds %struct.ahd_platform_data, ptr %98, i32 0, i32 1
  %call2.i167 = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i166) #14
  %99 = ptrtoint ptr %platform_data.i162 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %platform_data.i162, align 4
  %eh_done85 = getelementptr inbounds %struct.ahd_platform_data, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %eh_done85 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %eh_done85, align 4
  %102 = load ptr, ptr %platform_data.i162, align 4
  %spin_lock.i169 = getelementptr inbounds %struct.ahd_platform_data, ptr %102, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i169, i32 noundef %call2.i167) #14
  %103 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %name.i, align 4
  %105 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %active, align 4
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %104, i32 noundef %106) #17
  br label %do.end96

do.end96:                                         ; preds = %if.then83, %if.end65.do.end96_crit_edge
  %retval1.0 = phi i32 [ 8194, %if.end65.do.end96_crit_edge ], [ 8195, %if.then83 ]
  %107 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %name.i, align 4
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %108, i32 noundef %retval1.0) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end96, %if.then20, %if.then
  %retval.0 = phi i32 [ 8194, %if.then ], [ %retval1.0, %do.end96 ], [ 8195, %if.then20 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahd_linux_bus_reset(ptr noundef %cmd) #0 align 64 {
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahd_debug to i32))
  %6 = load i32, ptr @ahd_debug, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 62
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %8, ptr noundef %cmd) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 10
  %9 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %10, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel.i, align 4
  %15 = trunc i32 %14 to i8
  %conv = add i8 %15, 65
  %call4 = tail call i32 @ahd_reset_channel(ptr noundef %5, i8 noundef zeroext %conv, i32 noundef 1) #14
  %16 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i20 = getelementptr inbounds %struct.ahd_platform_data, ptr %17, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i20, i32 noundef %call2.i) #14
  %18 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %do.end8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %name.i21 = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 62
  %19 = ptrtoint ptr %name.i21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name.i21, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %20, i32 noundef %call4) #17
  br label %if.end12

if.end12:                                         ; preds = %do.end8, %if.end.if.end12_crit_edge
  ret i32 8194
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahd_linux_slave_alloc(ptr nocapture noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sdev, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 53
  %3 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hostdata, align 8
  %name.i = getelementptr inbounds %struct.ahd_softc, ptr %4, i32 0, i32 62
  %5 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name.i, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %6, i32 noundef %8) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdev, align 8
  %sdev_data.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 71
  %transportt.i = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %transportt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transportt.i, align 4
  %device_private_offset.i = getelementptr inbounds %struct.scsi_transport_template, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %device_private_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device_private_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %sdev_data.i, i32 %14
  %15 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 96)
  %openings = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 2
  %16 = ptrtoint ptr %openings to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %openings, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahd_linux_slave_configure(ptr noundef %sdev) #0 align 64 {
entry:
  %devinfo.i = alloca %struct.ahd_devinfo, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.85) #14
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
  %our_id.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 38
  %6 = ptrtoint ptr %our_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %our_id.i, align 1
  %conv.i = zext i8 %7 to i32
  %sdev_target.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 37
  %8 = ptrtoint ptr %sdev_target.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev_target.i, align 8
  %id.i = getelementptr inbounds %struct.scsi_target, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 8
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %12 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %lun.i, align 8
  %conv1.i = trunc i64 %13 to i32
  %channel.i = getelementptr inbounds %struct.scsi_target, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  %conv4.i = select i1 %cmp.i, i8 65, i8 66
  call void @ahd_compile_devinfo(ptr noundef nonnull %devinfo.i, i32 noundef %conv.i, i32 noundef %11, i32 noundef %conv1.i, i8 noundef zeroext %conv4.i, i32 noundef 1) #14
  %user_discenable.i.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 70
  %16 = ptrtoint ptr %user_discenable.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %user_discenable.i.i, align 4
  %target_mask.i.i = getelementptr inbounds %struct.ahd_devinfo, ptr %devinfo.i, i32 0, i32 2
  %18 = ptrtoint ptr %target_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %target_mask.i.i, align 4
  %and22.i.i = and i16 %19, %17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and22.i.i)
  %cmp.not.i.i = icmp eq i16 %and22.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.if.else.i_crit_edge, label %if.then.i.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.then.i.i:                                      ; preds = %if.end
  %unit.i.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 63
  %20 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %unit.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %21)
  %cmp3.i.i = icmp ugt i32 %21, 15
  br i1 %cmp3.i.i, label %if.then5.i.i, label %ahd_linux_user_tagdepth.exit.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  %22 = load i32, ptr @ahd_linux_user_tagdepth.warned_user, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp6.i.i = icmp eq i32 %22, 0
  br i1 %cmp6.i.i, label %do.end.i.i, label %if.then5.i.i.land.lhs.true.i_crit_edge

if.then5.i.i.land.lhs.true.i_crit_edge:           ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.i.i:                                       ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #17
  %23 = load i32, ptr @ahd_linux_user_tagdepth.warned_user, align 4
  %inc.i.i = add i32 %23, 1
  store i32 %inc.i.i, ptr @ahd_linux_user_tagdepth.warned_user, align 4
  br label %land.lhs.true.i

ahd_linux_user_tagdepth.exit.i:                   ; preds = %if.then.i.i
  %arrayidx.i.i = getelementptr [16 x %struct.adapter_tag_info_t], ptr @aic79xx_tag_info, i32 0, i32 %21
  %target_offset.i.i = getelementptr inbounds %struct.ahd_devinfo, ptr %devinfo.i, i32 0, i32 1
  %24 = ptrtoint ptr %target_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %target_offset.i.i, align 4
  %arrayidx10.i.i = getelementptr [16 x i16], ptr %arrayidx.i.i, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx10.i.i, align 2
  %28 = call i16 @llvm.umin.i16(i16 %27, i16 512) #14
  %29 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp5.not.i = icmp eq i16 %28, 0
  br i1 %cmp5.not.i, label %ahd_linux_user_tagdepth.exit.i.if.else.i_crit_edge, label %ahd_linux_user_tagdepth.exit.i.land.lhs.true.i_crit_edge

ahd_linux_user_tagdepth.exit.i.land.lhs.true.i_crit_edge: ; preds = %ahd_linux_user_tagdepth.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

ahd_linux_user_tagdepth.exit.i.if.else.i_crit_edge: ; preds = %ahd_linux_user_tagdepth.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %ahd_linux_user_tagdepth.exit.i.land.lhs.true.i_crit_edge, %do.end.i.i, %if.then5.i.i.land.lhs.true.i_crit_edge
  %tags.0.i33.i = phi i32 [ %29, %ahd_linux_user_tagdepth.exit.i.land.lhs.true.i_crit_edge ], [ 512, %do.end.i.i ], [ 512, %if.then5.i.i.land.lhs.true.i_crit_edge ]
  %tagged_supported.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %30 = ptrtoint ptr %tagged_supported.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %bf.load.i = load i64, ptr %tagged_supported.i, align 4
  %31 = and i64 %bf.load.i, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %cmp7.not.i = icmp eq i64 %31, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @ahd_platform_set_tags(ptr noundef %5, ptr noundef %sdev, ptr noundef nonnull %devinfo.i, i32 noundef 2) #14
  %channel9.i = getelementptr inbounds %struct.ahd_devinfo, ptr %devinfo.i, i32 0, i32 5
  %32 = ptrtoint ptr %channel9.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %channel9.i, align 4
  %target.i = getelementptr inbounds %struct.ahd_devinfo, ptr %devinfo.i, i32 0, i32 3
  %34 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %target.i, align 4
  %lun10.i = getelementptr inbounds %struct.ahd_devinfo, ptr %devinfo.i, i32 0, i32 4
  %36 = ptrtoint ptr %lun10.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lun10.i, align 4
  call void @ahd_send_async(ptr noundef %5, i8 noundef zeroext %33, i32 noundef %35, i32 noundef %37, i32 noundef 512) #14
  call void @ahd_print_devinfo(ptr noundef %5, ptr noundef nonnull %devinfo.i) #14
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %tags.0.i33.i) #17
  br label %ahd_linux_device_queue_depth.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %ahd_linux_user_tagdepth.exit.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %cmp.i.i = icmp eq ptr %sdev, null
  br i1 %cmp.i.i, label %if.else.i.ahd_platform_set_tags.exit.i_crit_edge, label %if.end.i.i

if.else.i.ahd_platform_set_tags.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_platform_set_tags.exit.i

if.end.i.i:                                       ; preds = %if.else.i
  %38 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sdev, align 8
  %sdev_data.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 71
  %transportt.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %transportt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %transportt.i.i.i, align 4
  %device_private_offset.i.i.i = getelementptr inbounds %struct.scsi_transport_template, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %device_private_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %device_private_offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %sdev_data.i.i.i, i32 %43
  %cmp1.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %cmp1.i.i, label %if.end.i.i.ahd_platform_set_tags.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.ahd_platform_set_tags.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_platform_set_tags.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %flags.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 6
  %44 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %45, 48
  %and7.i.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %cmp8.i.i = icmp ne i32 %and7.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp9.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond.i.i = or i1 %cmp8.i.i, %cmp9.not.i.i
  br i1 %or.cond.i.i, label %if.end3.i.i.cleanup.sink.split.i.i_crit_edge, label %land.lhs.true10.i.i

if.end3.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i.i

land.lhs.true10.i.i:                              ; preds = %if.end3.i.i
  %active.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp11.not.i.i = icmp eq i32 %47, 0
  br i1 %cmp11.not.i.i, label %land.lhs.true10.i.i.cleanup.sink.split.i.i_crit_edge, label %if.then12.i.i

land.lhs.true10.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i.i

if.then12.i.i:                                    ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i.i = or i32 %45, 2
  %48 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i.i, ptr %flags.i.i, align 4
  %qfrozen.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %qfrozen.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qfrozen.i.i, align 4
  %inc.i29.i = add i32 %50, 1
  store i32 %inc.i29.i, ptr %qfrozen.i.i, align 4
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then12.i.i, %land.lhs.true10.i.i.cleanup.sink.split.i.i_crit_edge, %if.end3.i.i.cleanup.sink.split.i.i_crit_edge
  %51 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i.i, align 4
  %and16.i.i = and i32 %52, -113
  store i32 %and16.i.i, ptr %flags.i.i, align 4
  %maxtags43.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 8
  %53 = ptrtoint ptr %maxtags43.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %maxtags43.i.i, align 4
  %active44.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %active44.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %active44.i.i, align 4
  %sub45.i.i = sub i32 1, %55
  %openings46.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %openings46.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub45.i.i, ptr %openings46.i.i, align 4
  %call53.i.i = call i32 @scsi_change_queue_depth(ptr noundef nonnull %sdev, i32 noundef 1) #14
  br label %ahd_platform_set_tags.exit.i

ahd_platform_set_tags.exit.i:                     ; preds = %cleanup.sink.split.i.i, %if.end.i.i.ahd_platform_set_tags.exit.i_crit_edge, %if.else.i.ahd_platform_set_tags.exit.i_crit_edge
  %channel12.i = getelementptr inbounds %struct.ahd_devinfo, ptr %devinfo.i, i32 0, i32 5
  %57 = ptrtoint ptr %channel12.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %channel12.i, align 4
  %target13.i = getelementptr inbounds %struct.ahd_devinfo, ptr %devinfo.i, i32 0, i32 3
  %59 = ptrtoint ptr %target13.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %target13.i, align 4
  %lun14.i = getelementptr inbounds %struct.ahd_devinfo, ptr %devinfo.i, i32 0, i32 4
  %61 = ptrtoint ptr %lun14.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %lun14.i, align 4
  call void @ahd_send_async(ptr noundef %5, i8 noundef zeroext %58, i32 noundef %60, i32 noundef %62, i32 noundef 512) #14
  br label %ahd_linux_device_queue_depth.exit

ahd_linux_device_queue_depth.exit:                ; preds = %ahd_platform_set_tags.exit.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo.i) #14
  %63 = ptrtoint ptr %sdev_target.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sdev_target.i, align 8
  %initial_dv = getelementptr inbounds %struct.scsi_target, ptr %64, i32 1, i32 2
  %65 = ptrtoint ptr %initial_dv to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load = load i16, ptr %initial_dv, align 4
  %66 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool1.not = icmp eq i16 %66, 0
  br i1 %tobool1.not, label %if.then2, label %ahd_linux_device_queue_depth.exit.if.end3_crit_edge

ahd_linux_device_queue_depth.exit.if.end3_crit_edge: ; preds = %ahd_linux_device_queue_depth.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %ahd_linux_device_queue_depth.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @spi_dv_device(ptr noundef %sdev) #14
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %ahd_linux_device_queue_depth.exit.if.end3_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahd_linux_target_alloc(ptr noundef %starget) #0 align 64 {
entry:
  %devinfo = alloca %struct.ahd_devinfo, align 4
  %tstate = alloca ptr, align 4
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
  %seep_config = getelementptr inbounds %struct.ahd_softc, ptr %3, i32 0, i32 24
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
  br i1 %tobool1.not.i.i, label %while.body.i.i.ahd_linux_target_in_softc.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i

while.body.i.i.ahd_linux_target_in_softc.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_target_in_softc.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %ahd_linux_target_in_softc.exit

ahd_linux_target_in_softc.exit:                   ; preds = %while.end.i.i, %while.body.i.i.ahd_linux_target_in_softc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ null, %while.body.i.i.ahd_linux_target_in_softc.exit_crit_edge ]
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
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %9, i32 0, i32 10
  %14 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_data.i, align 4
  %arrayidx.i = getelementptr [16 x ptr], ptr %15, i32 0, i32 %spec.select.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo) #14
  %16 = call ptr @memset(ptr %devinfo, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tstate) #14
  %17 = ptrtoint ptr %tstate to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !363
  %platform_data.i88 = getelementptr inbounds %struct.ahd_softc, ptr %3, i32 0, i32 10
  %18 = ptrtoint ptr %platform_data.i88 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %platform_data.i88, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %19, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %cmp.not = icmp eq ptr %21, null
  br i1 %cmp.not, label %do.end10, label %do.body5, !prof !364

do.body5:                                         ; preds = %ahd_linux_target_in_softc.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic7xxx/aic79xx_osm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 620, 0\0A.popsection", ""() #14, !srcloc !365
  unreachable

do.end10:                                         ; preds = %ahd_linux_target_in_softc.exit
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %starget, ptr %arrayidx.i, align 4
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %do.end10.if.end51_crit_edge, label %if.then12

do.end10.if.end51_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then12:                                        ; preds = %do.end10
  %23 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id.i, align 8
  %arrayidx = getelementptr [16 x i16], ptr %5, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx, align 2
  %conv14 = zext i16 %26 to i32
  %our_id = getelementptr inbounds %struct.ahd_softc, ptr %3, i32 0, i32 38
  %27 = ptrtoint ptr %our_id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %our_id, align 1
  %conv15 = zext i8 %28 to i32
  %call17 = call ptr @ahd_fetch_transinfo(ptr noundef %3, i8 noundef zeroext 65, i32 noundef %conv15, i32 noundef %24, ptr noundef nonnull %tstate) #14
  %and = and i32 %conv14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp18 = icmp eq i32 %and, 0
  br i1 %cmp18, label %if.then12.if.end30.sink.split_crit_edge, label %if.else

if.then12.if.end30.sink.split_crit_edge:          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.sink.split

if.else:                                          ; preds = %if.then12
  %features = getelementptr inbounds %struct.ahd_softc, ptr %3, i32 0, i32 21
  %29 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %features, align 4
  %and21 = and i32 %30, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22 = icmp eq i32 %and21, 0
  br i1 %cmp22, label %if.else.if.end30.sink.split_crit_edge, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.else.if.end30.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.else.if.end30.sink.split_crit_edge, %if.then12.if.end30.sink.split_crit_edge
  %.sink = phi i16 [ -4097, %if.then12.if.end30.sink.split_crit_edge ], [ -65, %if.else.if.end30.sink.split_crit_edge ]
  %max_iu = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %31 = ptrtoint ptr %max_iu to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load26 = load i16, ptr %max_iu, align 4
  %bf.clear27 = and i16 %bf.load26, %.sink
  store i16 %bf.clear27, ptr %max_iu, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else.if.end30_crit_edge
  %and31 = and i32 %conv14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %cmp32 = icmp eq i32 %and31, 0
  br i1 %cmp32, label %if.then34, label %if.end30.if.end39_crit_edge

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %max_qas = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %32 = ptrtoint ptr %max_qas to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load36 = load i16, ptr %max_qas, align 4
  %bf.clear37 = and i16 %bf.load36, -513
  store i16 %bf.clear37, ptr %max_qas, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.end30.if.end39_crit_edge
  %max_width = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %33 = ptrtoint ptr %max_width to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load43 = load i16, ptr %max_width, align 4
  %34 = shl i16 %26, 2
  %bf.shl = and i16 %34, 16384
  %bf.clear44 = and i16 %bf.load43, -16385
  %bf.set45 = or i16 %bf.clear44, %bf.shl
  store i16 %bf.set45, ptr %max_width, align 4
  %period = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call17, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %period to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %period, align 1
  %conv46 = zext i8 %36 to i32
  %min_period = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1
  %37 = ptrtoint ptr %min_period to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv46, ptr %min_period, align 4
  %offset = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call17, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %offset, align 1
  %conv49 = zext i8 %39 to i32
  %max_offset = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1, i32 1
  %40 = ptrtoint ptr %max_offset to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv49, ptr %max_offset, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end39, %do.end10.if.end51_crit_edge
  %41 = trunc i32 %13 to i8
  %conv = add i8 %41, 65
  %our_id52 = getelementptr inbounds %struct.ahd_softc, ptr %3, i32 0, i32 38
  %42 = ptrtoint ptr %our_id52 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %our_id52, align 1
  %conv53 = zext i8 %43 to i32
  %44 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id.i, align 8
  %call55 = call ptr @ahd_fetch_transinfo(ptr noundef %3, i8 noundef zeroext %conv, i32 noundef %conv53, i32 noundef %45, ptr noundef nonnull %tstate) #14
  %46 = ptrtoint ptr %our_id52 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %our_id52, align 1
  %conv57 = zext i8 %47 to i32
  %48 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id.i, align 8
  call void @ahd_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %conv57, i32 noundef %49, i32 noundef -1, i8 noundef zeroext %conv, i32 noundef 1) #14
  call void @ahd_set_syncrate(ptr noundef %3, ptr noundef nonnull %devinfo, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #14
  call void @ahd_set_width(ptr noundef %3, ptr noundef nonnull %devinfo, i32 noundef 0, i32 noundef 4, i32 noundef 0) #14
  %50 = ptrtoint ptr %platform_data.i88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %platform_data.i88, align 4
  %spin_lock.i90 = getelementptr inbounds %struct.ahd_platform_data, ptr %51, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i90, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_target_destroy(ptr noundef %starget) #0 align 64 {
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
  br i1 %tobool1.not.i.i, label %while.body.i.i.ahd_linux_target_in_softc.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i

while.body.i.i.ahd_linux_target_in_softc.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_target_in_softc.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %ahd_linux_target_in_softc.exit

ahd_linux_target_in_softc.exit:                   ; preds = %while.end.i.i, %while.body.i.i.ahd_linux_target_in_softc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ null, %while.body.i.i.ahd_linux_target_in_softc.exit_crit_edge ]
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
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %3, i32 0, i32 10
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
declare dso_local i32 @ahd_linux_show_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_proc_write_seeprom(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahd_dma_tag_create(ptr nocapture noundef readnone %ahd, ptr nocapture noundef readnone %parent, i32 noundef %alignment, i32 noundef %boundary, i32 noundef %lowaddr, i32 noundef %highaddr, ptr nocapture noundef readnone %filter, ptr nocapture noundef readnone %filterarg, i32 noundef %maxsize, i32 noundef %nsegments, i32 noundef %maxsegsz, i32 noundef %flags, ptr nocapture noundef writeonly %ret_tag) local_unnamed_addr #0 align 64 {
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
  %boundary2 = getelementptr inbounds %struct.ahd_linux_dma_tag, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %boundary2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %boundary, ptr %boundary2, align 4
  %maxsize3 = getelementptr inbounds %struct.ahd_linux_dma_tag, ptr %call7.i, i32 0, i32 2
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
define dso_local void @ahd_dma_tag_destroy(ptr nocapture noundef readnone %ahd, ptr noundef %dmat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dmat) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahd_dmamem_alloc(ptr nocapture noundef readonly %ahd, ptr nocapture noundef readonly %dmat, ptr nocapture noundef writeonly %vaddr, i32 noundef %flags, ptr noundef %mapp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %maxsize = getelementptr inbounds %struct.ahd_linux_dma_tag, ptr %dmat, i32 0, i32 2
  %2 = ptrtoint ptr %maxsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxsize, align 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %3, ptr noundef %mapp, i32 noundef 2592, i32 noundef 0) #14
  %4 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %vaddr, align 4
  %cmp = icmp eq ptr %call.i, null
  %. = select i1 %cmp, i32 12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahd_dmamem_free(ptr nocapture noundef readonly %ahd, ptr nocapture noundef readonly %dmat, ptr noundef %vaddr, i32 noundef %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %maxsize = getelementptr inbounds %struct.ahd_linux_dma_tag, ptr %dmat, i32 0, i32 2
  %2 = ptrtoint ptr %maxsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxsize, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %3, ptr noundef %vaddr, i32 noundef %map, i32 noundef 0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahd_dmamap_load(ptr nocapture noundef readnone %ahd, ptr nocapture noundef readonly %dmat, i32 noundef %map, ptr nocapture noundef readnone %buf, i32 noundef %buflen, ptr nocapture noundef readonly %cb, ptr noundef %cb_arg, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %stack_sg = alloca %struct.bus_dma_segment, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stack_sg) #14
  %0 = getelementptr inbounds %struct.bus_dma_segment, ptr %stack_sg, i32 0, i32 1
  %1 = ptrtoint ptr %stack_sg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %map, ptr %stack_sg, align 4
  %maxsize = getelementptr inbounds %struct.ahd_linux_dma_tag, ptr %dmat, i32 0, i32 2
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
define dso_local void @ahd_dmamap_destroy(ptr nocapture noundef %ahd, ptr nocapture noundef %dmat, i32 noundef %map) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ahd_dmamap_unload(ptr nocapture noundef readnone %ahd, ptr nocapture noundef readnone %dmat, i32 noundef %map) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic79xx_setup(ptr noundef %s) #0 align 64 {
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
  %call1 = call ptr @strsep(ptr noundef nonnull %s.addr, ptr noundef nonnull @.str.102) #14
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = ptrtoint ptr %call1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp2 = icmp eq i8 %2, 0
  br i1 %cmp2, label %while.body.while.cond.backedge_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else64, %if.then61, %if.then54, %if.then46, %if.then39, %if.then32, %if.then25, %for.cond2.preheader.i.while.cond.backedge_crit_edge, %for.inc.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  br label %while.cond

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body.for.body_crit_edge
  %i.0120 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %arrayidx = getelementptr [14 x %struct.anon.102], ptr @aic79xx_setup.options, i32 0, i32 %i.0120
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call6 = call i32 @strlen(ptr noundef %4) #19
  %call9 = call i32 @strncmp(ptr noundef %4, ptr noundef nonnull %call1, i32 noundef %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.end17, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.inc.while.cond.backedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.while.cond.backedge_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.end17:                                         ; preds = %for.body
  %call18 = call i32 @strncmp(ptr noundef nonnull %call1, ptr noundef nonnull @.str.97, i32 noundef %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end17
  %add.ptr = getelementptr i8, ptr %call1, i32 1
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %call6
  %call.i = call i32 @simple_strtoul(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 0) #14
  %and.i = and i32 %call.i, 255
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef %and.i) #17
  %conv.i = trunc i32 %and.i to i16
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge, %if.then21
  %i.015.i = phi i32 [ 0, %if.then21 ], [ %inc7.i, %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x %struct.adapter_tag_info_t], ptr @aic79xx_tag_info, i32 0, i32 %i.015.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %arrayidx.i, align 2
  %arrayidx5.1.i = getelementptr [16 x i16], ptr %arrayidx.i, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %arrayidx5.1.i, align 2
  %arrayidx5.2.i = getelementptr [16 x i16], ptr %arrayidx.i, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %arrayidx5.2.i, align 2
  %arrayidx5.3.i = getelementptr [16 x i16], ptr %arrayidx.i, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %arrayidx5.3.i, align 2
  %arrayidx5.4.i = getelementptr [16 x i16], ptr %arrayidx.i, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %arrayidx5.4.i, align 2
  %arrayidx5.5.i = getelementptr [16 x i16], ptr %arrayidx.i, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx5.5.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %arrayidx5.5.i, align 2
  %arrayidx5.6.i = getelementptr [16 x i16], ptr %arrayidx.i, i32 0, i32 6
  %11 = ptrtoint ptr %arrayidx5.6.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %arrayidx5.6.i, align 2
  %arrayidx5.7.i = getelementptr [16 x i16], ptr %arrayidx.i, i32 0, i32 7
  %12 = ptrtoint ptr %arrayidx5.7.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %arrayidx5.7.i, align 2
  %arrayidx5.8.i = getelementptr [16 x i16], ptr %arrayidx.i, i32 0, i32 8
  %13 = ptrtoint ptr %arrayidx5.8.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %arrayidx5.8.i, align 2
  %arrayidx5.9.i = getelementptr [16 x i16], ptr %arrayidx.i, i32 0, i32 9
  %14 = ptrtoint ptr %arrayidx5.9.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %arrayidx5.9.i, align 2
  %arrayidx5.10.i = getelementptr [16 x i16], ptr %arrayidx.i, i32 0, i32 10
  %15 = ptrtoint ptr %arrayidx5.10.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %arrayidx5.10.i, align 2
  %arrayidx5.11.i = getelementptr [16 x i16], ptr %arrayidx.i, i32 0, i32 11
  %16 = ptrtoint ptr %arrayidx5.11.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %arrayidx5.11.i, align 2
  %arrayidx5.12.i = getelementptr [16 x i16], ptr %arrayidx.i, i32 0, i32 12
  %17 = ptrtoint ptr %arrayidx5.12.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %arrayidx5.12.i, align 2
  %arrayidx5.13.i = getelementptr [16 x i16], ptr %arrayidx.i, i32 0, i32 13
  %18 = ptrtoint ptr %arrayidx5.13.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %arrayidx5.13.i, align 2
  %arrayidx5.14.i = getelementptr [16 x i16], ptr %arrayidx.i, i32 0, i32 14
  %19 = ptrtoint ptr %arrayidx5.14.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %arrayidx5.14.i, align 2
  %arrayidx5.15.i = getelementptr [16 x i16], ptr %arrayidx.i, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx5.15.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %arrayidx5.15.i, align 2
  %inc7.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc7.i, 16
  br i1 %exitcond.not.i, label %for.cond2.preheader.i.while.cond.backedge_crit_edge, label %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge

for.cond2.preheader.i.for.cond2.preheader.i_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond2.preheader.i

for.cond2.preheader.i.while.cond.backedge_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end17
  %call22 = call i32 @strncmp(ptr noundef nonnull %call1, ptr noundef nonnull @.str.96, i32 noundef %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.else28

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr26 = getelementptr i8, ptr %call1, i32 %call6
  %call27 = call fastcc ptr @ahd_parse_brace_option(ptr noundef nonnull @.str.96, ptr noundef %add.ptr26, ptr noundef %strchr, i32 noundef 2, ptr noundef nonnull @ahd_linux_setup_tag_info, i32 noundef 0)
  %21 = ptrtoint ptr %s.addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call27, ptr %s.addr, align 4
  br label %while.cond.backedge

if.else28:                                        ; preds = %if.else
  %call29 = call i32 @strncmp(ptr noundef nonnull %call1, ptr noundef nonnull @.str.98, i32 noundef %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr33 = getelementptr i8, ptr %call1, i32 %call6
  %call34 = call fastcc ptr @ahd_parse_brace_option(ptr noundef nonnull @.str.98, ptr noundef %add.ptr33, ptr noundef %strchr, i32 noundef 1, ptr noundef nonnull @ahd_linux_setup_iocell_info, i32 noundef 1)
  %22 = ptrtoint ptr %s.addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call34, ptr %s.addr, align 4
  br label %while.cond.backedge

if.else35:                                        ; preds = %if.else28
  %call36 = call i32 @strncmp(ptr noundef nonnull %call1, ptr noundef nonnull @.str.99, i32 noundef %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.else42

if.then39:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr40 = getelementptr i8, ptr %call1, i32 %call6
  %call41 = call fastcc ptr @ahd_parse_brace_option(ptr noundef nonnull @.str.99, ptr noundef %add.ptr40, ptr noundef %strchr, i32 noundef 1, ptr noundef nonnull @ahd_linux_setup_iocell_info, i32 noundef 0)
  %23 = ptrtoint ptr %s.addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call41, ptr %s.addr, align 4
  br label %while.cond.backedge

if.else42:                                        ; preds = %if.else35
  %call43 = call i32 @strncmp(ptr noundef nonnull %call1, ptr noundef nonnull @.str.100, i32 noundef %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp eq i32 %call43, 0
  %add.ptr47 = getelementptr i8, ptr %call1, i32 %call6
  br i1 %cmp44, label %if.then46, label %if.else49

if.then46:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #16
  %call48 = call fastcc ptr @ahd_parse_brace_option(ptr noundef nonnull @.str.100, ptr noundef %add.ptr47, ptr noundef %strchr, i32 noundef 1, ptr noundef nonnull @ahd_linux_setup_iocell_info, i32 noundef 2)
  %24 = ptrtoint ptr %s.addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call48, ptr %s.addr, align 4
  br label %while.cond.backedge

if.else49:                                        ; preds = %if.else42
  %25 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %26)
  %cmp52 = icmp eq i8 %26, 58
  br i1 %cmp52, label %if.then54, label %if.else59

if.then54:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr56 = getelementptr i8, ptr %add.ptr47, i32 1
  %call57 = call i32 @simple_strtoul(ptr noundef %add.ptr56, ptr noundef null, i32 noundef 0) #14
  %flag = getelementptr [14 x %struct.anon.102], ptr @aic79xx_setup.options, i32 0, i32 %i.0120, i32 1
  %27 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %flag, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call57, ptr %28, align 4
  br label %while.cond.backedge

if.else59:                                        ; preds = %if.else49
  %call60 = call i32 @strncmp(ptr noundef nonnull %call1, ptr noundef nonnull @.str.90, i32 noundef %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool.not = icmp eq i32 %call60, 0
  %flag63 = getelementptr [14 x %struct.anon.102], ptr @aic79xx_setup.options, i32 0, i32 %i.0120, i32 1
  %30 = ptrtoint ptr %flag63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %flag63, align 4
  br i1 %tobool.not, label %if.then61, label %if.else64

if.then61:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %31, align 4
  br label %while.cond.backedge

if.else64:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %31, align 4
  %xor = xor i32 %34, -1
  store i32 %xor, ptr %31, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahd_linux_register_host(ptr noundef %ahd, ptr noundef %template) local_unnamed_addr #0 align 64 {
entry:
  %devinfo.i = alloca %struct.ahd_devinfo, align 4
  %tstate.i = alloca ptr, align 4
  %buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #14
  %0 = call ptr @memset(ptr %buf, i32 255, i32 80)
  %description = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 60
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
  store ptr %ahd, ptr %hostdata, align 8
  %platform_data = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 10
  %5 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data, align 4
  %host2 = getelementptr inbounds %struct.ahd_platform_data, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %host2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %host2, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 26
  %8 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 512, ptr %can_queue, align 4
  %cmd_per_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 27
  %9 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %cmd_per_lun, align 8
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 28
  %10 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 128, ptr %sg_tablesize, align 2
  %our_id = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 38
  %11 = ptrtoint ptr %our_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %our_id, align 1
  %conv = zext i8 %12 to i32
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 25
  %13 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %this_id, align 8
  %14 = load ptr, ptr %platform_data, align 4
  %irq = getelementptr inbounds %struct.ahd_platform_data, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %irq4 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 47
  %17 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %irq4, align 8
  %features = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 21
  %18 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %features, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 8, i32 16
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 21
  %20 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %max_id, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 22
  %21 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 256, ptr %max_lun, align 8
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 20
  %22 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %max_channel, align 8
  %23 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 128, ptr %sg_tablesize, align 2
  %24 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %platform_data, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %25, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %26 = load i32, ptr @ahd_linux_unit, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr @ahd_linux_unit, align 4
  tail call void @ahd_set_unit(ptr noundef %ahd, i32 noundef %26) #14
  %27 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platform_data, align 4
  %spin_lock.i61 = getelementptr inbounds %struct.ahd_platform_data, ptr %28, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i61, i32 noundef %call2.i) #14
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 17
  %29 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %host_no, align 4
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.8, i32 noundef %30)
  %call9 = call i32 @strlen(ptr noundef nonnull %buf) #19
  %add = add i32 %call9, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2592) #21
  %cmp11.not = icmp eq ptr %call9.i, null
  br i1 %cmp11.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call15 = call ptr @strcpy(ptr noundef nonnull %call9.i, ptr noundef nonnull %buf) #19
  tail call void @ahd_set_name(ptr noundef %ahd, ptr noundef nonnull %call9.i) #14
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %unit = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 63
  %31 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %unit, align 4
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 23
  %33 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %unique_id, align 8
  %34 = load i32, ptr @aic79xx_no_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.not.i = icmp eq i32 %34, 0
  br i1 %cmp.not.i, label %if.end16.if.end.i63_crit_edge, label %if.then.i62

if.end16.if.end.i63_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i63

if.then.i62:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 23
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %36, -17
  store i32 %and.i, ptr %flags.i, align 4
  br label %if.end.i63

if.end.i63:                                       ; preds = %if.then.i62, %if.end16.if.end.i63_crit_edge
  %flags1.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 23
  %37 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags1.i, align 4
  %and2.i = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp3.not.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 @ahd_reset_channel(ptr noundef %ahd, i8 noundef zeroext 65, i32 noundef 1) #14
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %features, align 4
  %and5.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i = icmp eq i32 %and5.i, 0
  %cond.i = select i1 %tobool.not.i, i32 8, i32 16
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then4.i
  %numtarg.0.i = phi i32 [ 0, %if.then4.i ], [ %cond.i, %if.else.i ]
  %41 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %platform_data, align 4
  %spin_lock.i.i = getelementptr inbounds %struct.ahd_platform_data, ptr %42, i32 0, i32 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numtarg.0.i)
  %cmp738.not.i = icmp eq i32 %numtarg.0.i, 0
  br i1 %cmp738.not.i, label %if.end6.i.for.end.i_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  br label %for.body.i

if.end6.i.for.end.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end6.i.for.body.i_crit_edge
  %target_id.039.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end6.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo.i) #14
  %43 = call ptr @memset(ptr %devinfo.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tstate.i) #14
  %44 = ptrtoint ptr %tstate.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate.i, align 4, !annotation !363
  %45 = ptrtoint ptr %our_id to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %our_id, align 1
  %conv.i = zext i8 %46 to i32
  %call8.i = call ptr @ahd_fetch_transinfo(ptr noundef %ahd, i8 noundef zeroext 65, i32 noundef %conv.i, i32 noundef %target_id.039.i, ptr noundef nonnull %tstate.i) #14
  %47 = ptrtoint ptr %our_id to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %our_id, align 1
  %conv10.i = zext i8 %48 to i32
  call void @ahd_compile_devinfo(ptr noundef nonnull %devinfo.i, i32 noundef %conv10.i, i32 noundef %target_id.039.i, i32 noundef -1, i8 noundef zeroext 65, i32 noundef 1) #14
  %49 = ptrtoint ptr %tstate.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tstate.i, align 4
  %call11.i = call i32 @ahd_update_neg_request(ptr noundef %ahd, ptr noundef nonnull %devinfo.i, ptr noundef %50, ptr noundef %call8.i, i32 noundef 2) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate.i) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo.i) #14
  %inc.i = add nuw nsw i32 %target_id.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %numtarg.0.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end6.i.for.end.i_crit_edge
  %51 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %platform_data, align 4
  %spin_lock.i34.i = getelementptr inbounds %struct.ahd_platform_data, ptr %52, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i34.i, i32 noundef %call2.i.i) #14
  %53 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags1.i, align 4
  %and13.i = and i32 %54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %cmp14.not.i = icmp eq i32 %and13.i, 0
  br i1 %cmp14.not.i, label %for.end.i.ahd_linux_initialize_scsi_bus.exit_crit_edge, label %if.then16.i

for.end.i.ahd_linux_initialize_scsi_bus.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_initialize_scsi_bus.exit

if.then16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %platform_data, align 4
  %host.i.i = getelementptr inbounds %struct.ahd_platform_data, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %host.i.i, align 4
  call void @scsi_block_requests(ptr noundef %58) #14
  call void @msleep(i32 noundef 5000) #14
  %59 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %platform_data, align 4
  %host.i37.i = getelementptr inbounds %struct.ahd_platform_data, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %host.i37.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %host.i37.i, align 4
  call void @scsi_unblock_requests(ptr noundef %62) #14
  br label %ahd_linux_initialize_scsi_bus.exit

ahd_linux_initialize_scsi_bus.exit:               ; preds = %if.then16.i, %for.end.i.ahd_linux_initialize_scsi_bus.exit_crit_edge
  call void @ahd_intr_enable(ptr noundef %ahd, i32 noundef 1) #14
  %63 = load ptr, ptr @ahd_linux_transport_template, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 12
  %64 = ptrtoint ptr %transportt to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %transportt, align 4
  %dev_softc = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 11
  %65 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_softc, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %call.i64 = call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call, ptr noundef %dev, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool18.not = icmp eq i32 %call.i64, 0
  br i1 %tobool18.not, label %if.end21, label %do.end

do.end:                                           ; preds = %ahd_linux_initialize_scsi_bus.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #17
  call void @scsi_host_put(ptr noundef nonnull %call) #14
  br label %cleanup

if.end21:                                         ; preds = %ahd_linux_initialize_scsi_bus.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @scsi_scan_host(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i64, %do.end ], [ 0, %if.end21 ], [ 12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_set_unit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_set_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_intr_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahd_platform_alloc(ptr nocapture noundef %ahd, ptr nocapture noundef readnone %platform_arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 128) #20
  %platform_data = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 10
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %platform_data, align 4
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %irq = getelementptr inbounds %struct.ahd_platform_data, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %spin_lock.i, ptr noundef nonnull @.str.111, ptr noundef nonnull @ahd_lockinit.__key, i16 noundef signext 3) #14
  %3 = load i32, ptr @aic79xx_seltime, align 4
  %and = shl i32 %3, 4
  %shl = and i32 %and, 48
  %seltime = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 64
  %4 = ptrtoint ptr %seltime to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl, ptr %seltime, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahd_platform_free(ptr noundef %ahd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 10
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end52_crit_edge, label %for.body.preheader

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

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
  %irq = getelementptr inbounds %struct.ahd_platform_data, ptr %83, i32 0, i32 4
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
  %call = tail call ptr @free_irq(i32 noundef %85, ptr noundef %ahd) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %for.inc.15.if.end14_crit_edge
  %86 = ptrtoint ptr %ahd to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ahd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp16 = icmp eq i32 %87, 1
  br i1 %cmp16, label %land.lhs.true, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end14
  %bshs = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 1
  %88 = ptrtoint ptr %bshs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bshs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp18.not = icmp eq i32 %89, 0
  br i1 %cmp18.not, label %land.lhs.true.if.end22_crit_edge, label %if.then19

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %89, i32 noundef 256) #14
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %land.lhs.true.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %arrayidx24 = getelementptr [2 x i32], ptr %ahd, i32 0, i32 1
  %90 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp25 = icmp eq i32 %91, 1
  br i1 %cmp25, label %land.lhs.true26, label %if.end22.if.end33_crit_edge

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

land.lhs.true26:                                  ; preds = %if.end22
  %arrayidx28 = getelementptr %struct.ahd_softc, ptr %ahd, i32 0, i32 1, i32 1
  %92 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp29.not = icmp eq i32 %93, 0
  br i1 %cmp29.not, label %land.lhs.true26.if.end33_crit_edge, label %if.then30

land.lhs.true26.if.end33_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then30:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %93, i32 noundef 256) #14
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true26.if.end33_crit_edge, %if.end22.if.end33_crit_edge
  %94 = ptrtoint ptr %ahd to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ahd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp36 = icmp eq i32 %95, 0
  br i1 %cmp36, label %land.lhs.true37, label %if.end33.if.end45_crit_edge

if.end33.if.end45_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

land.lhs.true37:                                  ; preds = %if.end33
  %bshs38 = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 1
  %96 = ptrtoint ptr %bshs38 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bshs38, align 4
  %cmp40.not = icmp eq ptr %97, null
  br i1 %cmp40.not, label %land.lhs.true37.if.end45_crit_edge, label %if.then41

land.lhs.true37.if.end45_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then41:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @iounmap(ptr noundef nonnull %97) #14
  %98 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %platform_data, align 4
  %mem_busaddr = getelementptr inbounds %struct.ahd_platform_data, ptr %99, i32 0, i32 6
  %100 = ptrtoint ptr %mem_busaddr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mem_busaddr, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %101, i32 noundef 4096) #14
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %land.lhs.true37.if.end45_crit_edge, %if.end33.if.end45_crit_edge
  %102 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %platform_data, align 4
  %host = getelementptr inbounds %struct.ahd_platform_data, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %host, align 4
  %tobool.not = icmp eq ptr %105, null
  br i1 %tobool.not, label %if.end45.if.end50_crit_edge, label %if.then47

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @scsi_host_put(ptr noundef nonnull %105) #14
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end45.if.end50_crit_edge
  %106 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %platform_data, align 4
  tail call void @kfree(ptr noundef %107) #14
  br label %if.end52

if.end52:                                         ; preds = %if.end50, %entry.if.end52_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ahd_platform_init(ptr nocapture noundef %ahd) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %unit = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 63
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %unit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp ult i32 %1, 16
  br i1 %cmp, label %if.then, label %entry.if.end60_crit_edge

entry.if.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr [16 x %struct.ahd_linux_iocell_opts], ptr @aic79xx_iocell_info, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp2.not = icmp eq i8 %3, -1
  br i1 %cmp2.not, label %if.then.if.end60_crit_edge, label %do.body

if.then.if.end60_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %iocell_opts5 = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 57
  %4 = ptrtoint ptr %iocell_opts5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iocell_opts5, align 4
  %6 = and i8 %5, -8
  %7 = and i8 %3, 7
  %or74 = or i8 %6, %7
  store i8 %or74, ptr %iocell_opts5, align 4
  br label %if.end60

if.end60:                                         ; preds = %do.body, %if.then.if.end60_crit_edge, %entry.if.end60_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ahd_platform_freeze_devq(ptr nocapture noundef %ahd, ptr nocapture noundef %scb) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ahd_platform_abort_scbs(ptr nocapture readnone %ahd, i32 %target, i8 zeroext %channel, i32 %lun, i32 %tag, i32 %role, i32 %status) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahd_platform_set_tags(ptr nocapture noundef readonly %ahd, ptr noundef %sdev, ptr nocapture noundef readonly %devinfo, i32 noundef %alg) local_unnamed_addr #0 align 64 {
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
  %cmp1 = icmp eq ptr %add.ptr.i, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 48
  %8 = zext i32 %alg to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %alg, label %if.end3.sw.epilog_crit_edge [
    i32 2, label %sw.bb5
    i32 1, label %sw.bb4
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %if.end3.sw.epilog_crit_edge
  %tobool.not = phi i1 [ false, %sw.bb5 ], [ false, %sw.bb4 ], [ true, %if.end3.sw.epilog_crit_edge ]
  %now_queuing.0 = phi i32 [ 32, %sw.bb5 ], [ 16, %sw.bb4 ], [ 0, %if.end3.sw.epilog_crit_edge ]
  %and7 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8 = icmp ne i32 %and7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %now_queuing.0)
  %cmp9.not = icmp eq i32 %and, %now_queuing.0
  %or.cond = or i1 %cmp8, %cmp9.not
  br i1 %or.cond, label %sw.epilog.if.end14_crit_edge, label %land.lhs.true10

sw.epilog.if.end14_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

land.lhs.true10:                                  ; preds = %sw.epilog
  %active = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 1
  %9 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11.not = icmp eq i32 %10, 0
  br i1 %cmp11.not, label %land.lhs.true10.if.end14_crit_edge, label %if.then12

land.lhs.true10.if.end14_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %7, 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %flags, align 4
  %qfrozen = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 3
  %12 = ptrtoint ptr %qfrozen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qfrozen, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %qfrozen, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true10.if.end14_crit_edge, %sw.epilog.if.end14_crit_edge
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and16 = and i32 %15, -113
  store i32 %and16, ptr %flags, align 4
  br i1 %tobool.not, label %if.else42, label %if.then17

if.then17:                                        ; preds = %if.end14
  %user_discenable.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 70
  %16 = ptrtoint ptr %user_discenable.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %user_discenable.i, align 4
  %target_mask.i = getelementptr inbounds %struct.ahd_devinfo, ptr %devinfo, i32 0, i32 2
  %18 = ptrtoint ptr %target_mask.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %target_mask.i, align 4
  %and22.i = and i16 %19, %17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and22.i)
  %cmp.not.i = icmp eq i16 %and22.i, 0
  br i1 %cmp.not.i, label %if.then17.ahd_linux_user_tagdepth.exit_crit_edge, label %if.then.i

if.then17.ahd_linux_user_tagdepth.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_user_tagdepth.exit

if.then.i:                                        ; preds = %if.then17
  %unit.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 63
  %20 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %unit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %21)
  %cmp3.i = icmp ugt i32 %21, 15
  br i1 %cmp3.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then.i
  %22 = load i32, ptr @ahd_linux_user_tagdepth.warned_user, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp6.i = icmp eq i32 %22, 0
  br i1 %cmp6.i, label %do.end.i, label %if.then5.i.ahd_linux_user_tagdepth.exit_crit_edge

if.then5.i.ahd_linux_user_tagdepth.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_user_tagdepth.exit

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #17
  %23 = load i32, ptr @ahd_linux_user_tagdepth.warned_user, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr @ahd_linux_user_tagdepth.warned_user, align 4
  br label %ahd_linux_user_tagdepth.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr [16 x %struct.adapter_tag_info_t], ptr @aic79xx_tag_info, i32 0, i32 %21
  %target_offset.i = getelementptr inbounds %struct.ahd_devinfo, ptr %devinfo, i32 0, i32 1
  %24 = ptrtoint ptr %target_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %target_offset.i, align 4
  %arrayidx10.i = getelementptr [16 x i16], ptr %arrayidx.i, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx10.i, align 2
  %28 = tail call i16 @llvm.umin.i16(i16 %27, i16 512) #14
  %29 = zext i16 %28 to i32
  br label %ahd_linux_user_tagdepth.exit

ahd_linux_user_tagdepth.exit:                     ; preds = %if.else.i, %do.end.i, %if.then5.i.ahd_linux_user_tagdepth.exit_crit_edge, %if.then17.ahd_linux_user_tagdepth.exit_crit_edge
  %tags.0.i = phi i32 [ %29, %if.else.i ], [ 0, %if.then17.ahd_linux_user_tagdepth.exit_crit_edge ], [ 512, %do.end.i ], [ 512, %if.then5.i.ahd_linux_user_tagdepth.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.then20, label %ahd_linux_user_tagdepth.exit.if.end23_crit_edge

ahd_linux_user_tagdepth.exit.if.end23_crit_edge:  ; preds = %ahd_linux_user_tagdepth.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then20:                                        ; preds = %ahd_linux_user_tagdepth.exit
  call void @__sanitizer_cov_trace_pc() #16
  %maxtags = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 8
  %30 = ptrtoint ptr %maxtags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %tags.0.i, ptr %maxtags, align 4
  %active22 = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 1
  %31 = ptrtoint ptr %active22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %active22, align 4
  %sub = sub i32 %tags.0.i, %32
  %openings = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 2
  %33 = ptrtoint ptr %openings to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub, ptr %openings, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %ahd_linux_user_tagdepth.exit.if.end23_crit_edge
  %maxtags24 = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 8
  %34 = ptrtoint ptr %maxtags24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %maxtags24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp25 = icmp eq i32 %35, 0
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %openings27 = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 2
  %36 = ptrtoint ptr %openings27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %openings27, align 4
  br label %if.end47

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %alg)
  %cmp28 = icmp eq i32 %alg, 2
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  br i1 %cmp28, label %if.then29, label %if.else37

if.then29:                                        ; preds = %if.else
  %or31 = or i32 %38, 32
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or31, ptr %flags, align 4
  %40 = load i32, ptr @aic79xx_periodic_otag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp32.not = icmp eq i32 %40, 0
  br i1 %cmp32.not, label %if.then29.if.end47_crit_edge, label %if.then33

if.then29.if.end47_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %or35 = or i32 %38, 96
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or35, ptr %flags, align 4
  br label %if.end47

if.else37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %or39 = or i32 %38, 16
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or39, ptr %flags, align 4
  br label %if.end47

if.else42:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %maxtags43 = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 8
  %43 = ptrtoint ptr %maxtags43 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %maxtags43, align 4
  %active44 = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 1
  %44 = ptrtoint ptr %active44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %active44, align 4
  %sub45 = sub i32 1, %45
  %openings46 = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 2
  %46 = ptrtoint ptr %openings46 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub45, ptr %openings46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else42, %if.else37, %if.then33, %if.then29.if.end47_crit_edge, %if.then26
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  %and49 = and i32 %48, 48
  %49 = zext i32 %and49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %and49, label %if.end47.cleanup.sink.split_crit_edge [
    i32 16, label %if.end47.sw.bb50_crit_edge
    i32 32, label %if.end47.sw.bb50_crit_edge86
  ]

if.end47.sw.bb50_crit_edge86:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb50

if.end47.sw.bb50_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb50

if.end47.cleanup.sink.split_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

sw.bb50:                                          ; preds = %if.end47.sw.bb50_crit_edge, %if.end47.sw.bb50_crit_edge86
  %openings51 = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 2
  %50 = ptrtoint ptr %openings51 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %openings51, align 4
  %active52 = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i, i32 0, i32 1
  %52 = ptrtoint ptr %active52 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %active52, align 4
  %add = add i32 %53, %51
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb50, %if.end47.cleanup.sink.split_crit_edge
  %add.sink = phi i32 [ %add, %sw.bb50 ], [ 1, %if.end47.cleanup.sink.split_crit_edge ]
  %call53 = tail call i32 @scsi_change_queue_depth(ptr noundef nonnull %sdev, i32 noundef %add.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahd_linux_isr(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %dev_id, i32 0, i32 10
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %call = tail call i32 @ahd_intr(ptr noundef %dev_id) #14
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i4 = getelementptr inbounds %struct.ahd_platform_data, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i4, i32 noundef %call2.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_intr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahd_send_async(ptr noundef %ahd, i8 noundef zeroext %channel, i32 noundef %target, i32 noundef %lun, i32 noundef %code) local_unnamed_addr #0 align 64 {
entry:
  %tstate = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %code, label %sw.default [
    i32 512, label %sw.bb
    i32 16, label %sw.bb271
    i32 1, label %sw.bb304
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tstate) #14
  %1 = ptrtoint ptr %tstate to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !363
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %target)
  %cmp = icmp eq i32 %target, -1
  br i1 %cmp, label %do.body2, label %do.end7, !prof !366

do.body2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic7xxx/aic79xx_osm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1677, 0\0A.popsection", ""() #14, !srcloc !367
  unreachable

do.end7:                                          ; preds = %sw.bb
  %our_id = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 38
  %2 = ptrtoint ptr %our_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %our_id, align 1
  %conv = zext i8 %3 to i32
  %call = call ptr @ahd_fetch_transinfo(ptr noundef %ahd, i8 noundef zeroext %channel, i32 noundef %conv, i32 noundef %target, ptr noundef nonnull %tstate) #14
  %period = getelementptr inbounds %struct.ahd_transinfo, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %period to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %period, align 1
  %period9 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %period9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %period9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp11.not = icmp eq i8 %5, %7
  br i1 %cmp11.not, label %lor.lhs.false, label %do.end7.if.then36_crit_edge

do.end7.if.then36_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36

lor.lhs.false:                                    ; preds = %do.end7
  %width = getelementptr inbounds %struct.ahd_transinfo, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width, align 1
  %width16 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %width16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %width16, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp18.not = icmp eq i8 %9, %11
  br i1 %cmp18.not, label %lor.lhs.false20, label %lor.lhs.false.if.then36_crit_edge

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %offset = getelementptr inbounds %struct.ahd_transinfo, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %offset, align 1
  %offset24 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %offset24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %offset24, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp26.not = icmp eq i8 %13, %15
  br i1 %cmp26.not, label %lor.lhs.false28, label %lor.lhs.false20.if.then36_crit_edge

lor.lhs.false20.if.then36_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %ppr_options = getelementptr inbounds %struct.ahd_transinfo, ptr %call, i32 0, i32 5
  %16 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ppr_options, align 1
  %ppr_options32 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %ppr_options32 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ppr_options32, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp34.not = icmp eq i8 %17, %19
  br i1 %cmp34.not, label %lor.lhs.false28.if.end41_crit_edge, label %lor.lhs.false28.if.then36_crit_edge

lor.lhs.false28.if.then36_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36

lor.lhs.false28.if.end41_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then36:                                        ; preds = %lor.lhs.false28.if.then36_crit_edge, %lor.lhs.false20.if.then36_crit_edge, %lor.lhs.false.if.then36_crit_edge, %do.end7.if.then36_crit_edge
  %20 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp37 = icmp eq i32 %20, 0
  br i1 %cmp37, label %if.then36.cleanup_crit_edge, label %if.then36.if.end41_crit_edge

if.then36.if.end41_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end41:                                         ; preds = %if.then36.if.end41_crit_edge, %lor.lhs.false28.if.end41_crit_edge
  %platform_data = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 10
  %21 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %platform_data, align 4
  %arrayidx = getelementptr [16 x ptr], ptr %22, i32 0, i32 %target
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %cmp43 = icmp eq ptr %24, null
  br i1 %cmp43, label %if.end41.cleanup_crit_edge, label %if.end46

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %starget_data = getelementptr inbounds %struct.scsi_target, ptr %24, i32 0, i32 15
  %dt = getelementptr inbounds %struct.scsi_target, ptr %24, i32 1, i32 2
  %25 = ptrtoint ptr %dt to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load = load i16, ptr %dt, align 4
  %26 = lshr i16 %bf.load, 10
  %27 = and i16 %26, 2
  %28 = lshr i16 %bf.load, 8
  %29 = and i16 %28, 4
  %30 = lshr i16 %bf.load, 13
  %.lobit = and i16 %30, 1
  %31 = lshr i16 %bf.load, 2
  %32 = and i16 %31, 32
  %33 = shl i16 %bf.load, 2
  %34 = and i16 %33, 128
  %35 = and i16 %bf.load, 64
  %36 = lshr i16 %bf.load, 4
  %37 = and i16 %36, 16
  %add372 = or i16 %29, %35
  %add62373 = or i16 %add372, %27
  %add70374 = or i16 %add62373, %.lobit
  %add78375 = or i16 %add70374, %32
  %add86376 = or i16 %add78375, %34
  %narrow = or i16 %add86376, %37
  %add94 = zext i16 %narrow to i32
  %38 = lshr i16 %bf.load, 1
  %39 = and i16 %38, 8
  %40 = zext i16 %39 to i32
  %add102 = add nuw nsw i32 %add94, %40
  %conv105 = zext i8 %5 to i32
  %41 = ptrtoint ptr %starget_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %starget_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv105)
  %cmp108 = icmp eq i32 %42, %conv105
  br i1 %cmp108, label %land.lhs.true, label %if.end46.if.end139_crit_edge

if.end46.if.end139_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end139

land.lhs.true:                                    ; preds = %if.end46
  %width111 = getelementptr inbounds %struct.ahd_transinfo, ptr %call, i32 0, i32 2
  %43 = ptrtoint ptr %width111 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %width111, align 1
  %bf.lshr116 = lshr i16 %bf.load, 15
  %45 = zext i8 %44 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr116, i16 %45)
  %cmp118 = icmp eq i16 %bf.lshr116, %45
  br i1 %cmp118, label %land.lhs.true120, label %land.lhs.true.if.end139_crit_edge

land.lhs.true.if.end139_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end139

land.lhs.true120:                                 ; preds = %land.lhs.true
  %offset122 = getelementptr inbounds %struct.ahd_transinfo, ptr %call, i32 0, i32 4
  %46 = ptrtoint ptr %offset122 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %offset122, align 1
  %conv123 = zext i8 %47 to i32
  %offset125 = getelementptr inbounds %struct.scsi_target, ptr %24, i32 1, i32 1
  %48 = ptrtoint ptr %offset125 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %conv123)
  %cmp126 = icmp eq i32 %49, %conv123
  br i1 %cmp126, label %land.lhs.true128, label %land.lhs.true120.if.end139_crit_edge

land.lhs.true120.if.end139_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end139

land.lhs.true128:                                 ; preds = %land.lhs.true120
  %ppr_options130 = getelementptr inbounds %struct.ahd_transinfo, ptr %call, i32 0, i32 5
  %50 = ptrtoint ptr %ppr_options130 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ppr_options130, align 1
  %conv131 = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add102, i32 %conv131)
  %cmp132 = icmp eq i32 %add102, %conv131
  br i1 %cmp132, label %if.then134, label %land.lhs.true128.if.end139_crit_edge

land.lhs.true128.if.end139_crit_edge:             ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end139

if.then134:                                       ; preds = %land.lhs.true128
  %52 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp135 = icmp eq i32 %52, 0
  br i1 %cmp135, label %if.then134.cleanup_crit_edge, label %if.then134.if.end139_crit_edge

if.then134.if.end139_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end139

if.then134.cleanup_crit_edge:                     ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end139:                                        ; preds = %if.then134.if.end139_crit_edge, %land.lhs.true128.if.end139_crit_edge, %land.lhs.true120.if.end139_crit_edge, %land.lhs.true.if.end139_crit_edge, %if.end46.if.end139_crit_edge
  %53 = ptrtoint ptr %starget_data to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv105, ptr %starget_data, align 4
  %width146 = getelementptr inbounds %struct.ahd_transinfo, ptr %call, i32 0, i32 2
  %54 = ptrtoint ptr %width146 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %width146, align 1
  %bf.value = zext i8 %55 to i16
  %bf.shl = shl i16 %bf.value, 15
  %bf.clear151 = and i16 %bf.load, 32767
  %bf.set = or i16 %bf.shl, %bf.clear151
  %56 = ptrtoint ptr %dt to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %bf.set, ptr %dt, align 4
  %offset153 = getelementptr inbounds %struct.ahd_transinfo, ptr %call, i32 0, i32 4
  %57 = ptrtoint ptr %offset153 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %offset153, align 1
  %conv154 = zext i8 %58 to i32
  %offset156 = getelementptr inbounds %struct.scsi_target, ptr %24, i32 1, i32 1
  %59 = ptrtoint ptr %offset156 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv154, ptr %offset156, align 4
  %ppr_options158 = getelementptr inbounds %struct.ahd_transinfo, ptr %call, i32 0, i32 5
  %60 = ptrtoint ptr %ppr_options158 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ppr_options158, align 1
  %62 = lshr i8 %61, 1
  %63 = and i8 %62, 1
  %bf.value165 = zext i8 %63 to i16
  %bf.shl166 = shl nuw nsw i16 %bf.value165, 11
  %bf.clear167 = and i16 %bf.set, -2049
  %bf.set168 = or i16 %bf.shl166, %bf.clear167
  store i16 %bf.set168, ptr %dt, align 4
  %64 = load i8, ptr %ppr_options158, align 1
  %65 = lshr i8 %64, 2
  %66 = and i8 %65, 1
  %bf.value179 = zext i8 %66 to i16
  %bf.shl180 = shl nuw nsw i16 %bf.value179, 10
  %bf.clear181 = and i16 %bf.set168, -1025
  %bf.set182 = or i16 %bf.clear181, %bf.shl180
  store i16 %bf.set182, ptr %dt, align 4
  %67 = load i8, ptr %ppr_options158, align 1
  %68 = and i8 %67, 1
  %bf.value193 = zext i8 %68 to i16
  %bf.shl194 = shl nuw nsw i16 %bf.value193, 13
  %bf.clear195 = and i16 %bf.set182, -8193
  %bf.set196 = or i16 %bf.clear195, %bf.shl194
  store i16 %bf.set196, ptr %dt, align 4
  %69 = load i8, ptr %ppr_options158, align 1
  %70 = shl i8 %69, 2
  %71 = and i8 %70, -128
  %bf.shl208 = zext i8 %71 to i16
  %bf.clear209 = and i16 %bf.set196, -129
  %bf.set210 = or i16 %bf.clear209, %bf.shl208
  store i16 %bf.set210, ptr %dt, align 4
  %72 = load i8, ptr %ppr_options158, align 1
  %73 = lshr i8 %72, 2
  %74 = and i8 %73, 32
  %bf.shl222 = zext i8 %74 to i16
  %bf.clear223 = and i16 %bf.set210, -33
  %bf.set224 = or i16 %bf.clear223, %bf.shl222
  store i16 %bf.set224, ptr %dt, align 4
  %75 = load i8, ptr %ppr_options158, align 1
  %76 = and i8 %75, 64
  %bf.shl236 = zext i8 %76 to i16
  %bf.clear237 = and i16 %bf.set224, -65
  %bf.set238 = or i16 %bf.clear237, %bf.shl236
  store i16 %bf.set238, ptr %dt, align 4
  %77 = load i8, ptr %ppr_options158, align 1
  %78 = lshr i8 %77, 4
  %79 = and i8 %78, 1
  %bf.value249 = zext i8 %79 to i16
  %bf.shl250 = shl nuw nsw i16 %bf.value249, 8
  %bf.clear251 = and i16 %bf.set238, -257
  %bf.set252 = or i16 %bf.clear251, %bf.shl250
  store i16 %bf.set252, ptr %dt, align 4
  %80 = load i8, ptr %ppr_options158, align 1
  %81 = shl i8 %80, 1
  %82 = and i8 %81, 16
  %bf.shl264 = zext i8 %82 to i16
  %bf.clear265 = and i16 %bf.set252, -17
  %bf.set266 = or i16 %bf.clear265, %bf.shl264
  store i16 %bf.set266, ptr %dt, align 4
  call void @spi_display_xfer_agreement(ptr noundef nonnull %24) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %if.then134.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then36.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  br label %sw.epilog

sw.bb271:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lun)
  %cmp272.not = icmp eq i32 %lun, -1
  br i1 %cmp272.not, label %sw.bb271.if.end295_crit_edge, label %do.end289, !prof !364

sw.bb271.if.end295_crit_edge:                     ; preds = %sw.bb271
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end295

do.end289:                                        ; preds = %sw.bb271
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1734, i32 noundef 9, ptr noundef null) #14
  br label %if.end295

if.end295:                                        ; preds = %do.end289, %sw.bb271.if.end295_crit_edge
  %platform_data302 = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 10
  %83 = ptrtoint ptr %platform_data302 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %platform_data302, align 4
  %host = getelementptr inbounds %struct.ahd_platform_data, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %host, align 4
  %conv303 = zext i8 %channel to i32
  %sub = add nsw i32 %conv303, -65
  tail call void @scsi_report_device_reset(ptr noundef %86, i32 noundef %sub, i32 noundef %target) #14
  br label %sw.epilog

sw.bb304:                                         ; preds = %entry
  %platform_data305 = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 10
  %87 = ptrtoint ptr %platform_data305 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %platform_data305, align 4
  %host306 = getelementptr inbounds %struct.ahd_platform_data, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %host306 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %host306, align 4
  %cmp307.not = icmp eq ptr %90, null
  br i1 %cmp307.not, label %sw.bb304.sw.epilog_crit_edge, label %if.then309

sw.bb304.sw.epilog_crit_edge:                     ; preds = %sw.bb304
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then309:                                       ; preds = %sw.bb304
  call void @__sanitizer_cov_trace_pc() #16
  %conv312 = zext i8 %channel to i32
  %sub313 = add nsw i32 %conv312, -65
  tail call void @scsi_report_bus_reset(ptr noundef nonnull %90, i32 noundef %sub313) #14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.11) #18
  unreachable

sw.epilog:                                        ; preds = %if.then309, %sw.bb304.sw.epilog_crit_edge, %if.end295, %cleanup
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahd_fetch_transinfo(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_display_xfer_agreement(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_report_device_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_report_bus_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahd_done(ptr noundef %ahd, ptr noundef %scb) local_unnamed_addr #0 align 64 {
entry:
  %devinfo.i = alloca %struct.ahd_devinfo, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.end, label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scb, align 4
  %tag = getelementptr inbounds %struct.hardware_scb, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tag, align 8
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv) #17
  tail call void @ahd_dump_card_state(ptr noundef %ahd) #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.14) #18
  unreachable

do.body1:                                         ; preds = %entry
  %links2 = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 2
  %7 = ptrtoint ptr %links2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %links2, align 4
  %cmp2.not = icmp eq ptr %8, null
  br i1 %cmp2.not, label %do.body1.if.end10_crit_edge, label %if.then4

do.body1.if.end10_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %le_prev = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %le_prev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %le_prev, align 4
  %le_prev9 = getelementptr inbounds %struct.scb, ptr %8, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %le_prev9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %le_prev9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %do.body1.if.end10_crit_edge
  %12 = ptrtoint ptr %links2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %links2, align 4
  %le_prev14 = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %le_prev14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %le_prev14, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %15, align 4
  %io_ctx = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 4
  %17 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_ctx, align 4
  %platform_data = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 7
  %19 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %platform_data, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %active = getelementptr inbounds %struct.ahd_linux_device, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %active, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %active, align 4
  %openings = getelementptr inbounds %struct.ahd_linux_device, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %openings to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %openings, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %openings, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %18, i32 0, i32 24
  %27 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %result, align 4
  %and18 = and i32 %28, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %cmp19.not = icmp eq i32 %and18, 0
  br i1 %cmp19.not, label %if.end10.if.end25_crit_edge, label %if.then21

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then21:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %and23 = and i32 %28, -4194305
  %29 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and23, ptr %result, align 4
  %qfrozen = getelementptr inbounds %struct.ahd_linux_device, ptr %22, i32 0, i32 3
  %30 = ptrtoint ptr %qfrozen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qfrozen, align 4
  %dec24 = add i32 %31, -1
  store i32 %dec24, ptr %qfrozen, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end10.if.end25_crit_edge
  %32 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_ctx, align 4
  tail call void @ahd_sync_sglist(ptr noundef %ahd, ptr noundef %scb, i32 noundef 8) #14
  tail call void @scsi_dma_unmap(ptr noundef %33) #14
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %18, i32 0, i32 21
  %34 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sense_buffer, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %35, align 1
  %37 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_ctx, align 4
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %38, i32 0, i32 24
  %39 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %result.i.i, align 4
  %41 = lshr i32 %40, 16
  %and.i.i = and i32 %41, 63
  %42 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %and.i.i, label %if.end25.if.end52_crit_edge [
    i32 0, label %if.then29
    i32 10, label %if.then50
  ]

if.end25.if.end52_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then29:                                        ; preds = %if.end25
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %and31 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %cmp32.not = icmp eq i32 %and31, 0
  br i1 %cmp32.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.then29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahd_debug to i32))
  %45 = load i32, ptr @ahd_debug, align 4
  %and35 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp36.not = icmp eq i32 %and35, 0
  br i1 %cmp36.not, label %if.then34.if.end44_crit_edge, label %if.then38

if.then34.if.end44_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then38:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ahd_print_path(ptr noundef %ahd, ptr noundef %scb)
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #17
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %if.then34.if.end44_crit_edge
  %46 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_ctx, align 4
  %result.i.i157 = getelementptr inbounds %struct.scsi_cmnd, ptr %47, i32 0, i32 24
  %48 = ptrtoint ptr %result.i.i157 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %result.i.i157, align 4
  %and.i.i158 = and i32 %49, -4128769
  %or.i.i = or i32 %and.i.i158, 786432
  store i32 %or.i.i, ptr %result.i.i157, align 4
  br label %if.end52

if.else:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %and.i.i161 = and i32 %40, -4128769
  %or.i.i162 = or i32 %and.i.i161, 65536
  %50 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i.i162, ptr %result.i.i, align 4
  br label %if.end52

if.then50:                                        ; preds = %if.end25
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %18, i32 0, i32 1
  %51 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo.i) #14
  %53 = call ptr @memset(ptr %devinfo.i, i32 255, i32 28)
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %52, align 8
  %sdev_data.i.i = getelementptr inbounds %struct.scsi_device, ptr %52, i32 0, i32 71
  %transportt.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %transportt.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %transportt.i.i, align 4
  %device_private_offset.i.i = getelementptr inbounds %struct.scsi_transport_template, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %device_private_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %device_private_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %sdev_data.i.i, i32 %59
  %our_id.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 38
  %60 = ptrtoint ptr %our_id.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %our_id.i, align 1
  %conv.i = zext i8 %61 to i32
  %sdev_target.i = getelementptr inbounds %struct.scsi_device, ptr %52, i32 0, i32 37
  %62 = ptrtoint ptr %sdev_target.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sdev_target.i, align 8
  %id.i = getelementptr inbounds %struct.scsi_target, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %id.i, align 8
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %52, i32 0, i32 18
  %66 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %lun.i, align 8
  %conv1.i = trunc i64 %67 to i32
  %channel.i = getelementptr inbounds %struct.scsi_target, ptr %63, i32 0, i32 5
  %68 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i = icmp eq i32 %69, 0
  %conv4.i = select i1 %cmp.i, i8 65, i8 66
  call void @ahd_compile_devinfo(ptr noundef nonnull %devinfo.i, i32 noundef %conv.i, i32 noundef %65, i32 noundef %conv1.i, i8 noundef zeroext %conv4.i, i32 noundef 1) #14
  %70 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %io_ctx, align 4
  %result.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %71, i32 0, i32 24
  %72 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %result.i.i.i, align 4
  %trunc.i = trunc i32 %73 to i16
  %74 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.162)
  switch i16 %trunc.i, label %if.then50.ahd_linux_handle_scsi_status.exit_crit_edge [
    i16 2, label %if.then50.sw.bb.i_crit_edge
    i16 34, label %if.then50.sw.bb.i_crit_edge194
    i16 40, label %sw.bb66.i
  ]

if.then50.sw.bb.i_crit_edge194:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then50.sw.bb.i_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then50.ahd_linux_handle_scsi_status.exit_crit_edge: ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_handle_scsi_status.exit

sw.bb.i:                                          ; preds = %if.then50.sw.bb.i_crit_edge, %if.then50.sw.bb.i_crit_edge194
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags, align 4
  %and.i = and i32 %76, 8200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp6.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp6.not.i, label %sw.bb.i.ahd_linux_handle_scsi_status.exit_crit_edge, label %if.then.i

sw.bb.i.ahd_linux_handle_scsi_status.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_handle_scsi_status.exit

if.then.i:                                        ; preds = %sw.bb.i
  %and9.i = and i32 %76, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %platform_data, align 4
  %sense_resid.i.i = getelementptr inbounds %struct.scb_platform_data, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %sense_resid.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sense_resid.i.i, align 4
  %sub.i = sub i32 32, %80
  %81 = call i32 @llvm.umin.i32(i32 %sub.i, i32 96) #14
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  %sense_data.i = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 12
  %82 = ptrtoint ptr %sense_data.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sense_data.i, align 4
  %sense_length.i = getelementptr inbounds %struct.scsi_status_iu_header, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %sense_length.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %sense_length.i, align 1
  %conv.i.i = zext i8 %85 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr %struct.scsi_status_iu_header, ptr %83, i32 0, i32 3, i32 1
  %86 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %87 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i166 = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr %struct.scsi_status_iu_header, ptr %83, i32 0, i32 3, i32 2
  %88 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %89 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i166, %shl6.i.i
  %arrayidx8.i.i = getelementptr %struct.scsi_status_iu_header, ptr %83, i32 0, i32 3, i32 3
  %90 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %91 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %92 = call i32 @llvm.umin.i32(i32 %or10.i.i, i32 96) #14
  %flags23.i = getelementptr inbounds %struct.scsi_status_iu_header, ptr %83, i32 0, i32 1
  %93 = ptrtoint ptr %flags23.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %flags23.i, align 1
  %95 = and i8 %94, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool26.not.i = icmp eq i8 %95, 0
  br i1 %tobool26.not.i, label %if.else.i.if.end.i_crit_edge, label %cond.true27.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

cond.true27.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %pkt_failures_length.i = getelementptr inbounds %struct.scsi_status_iu_header, ptr %83, i32 0, i32 4
  %96 = ptrtoint ptr %pkt_failures_length.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %pkt_failures_length.i, align 1
  %conv.i165.i = zext i8 %97 to i32
  %shl.i166.i = shl nuw i32 %conv.i165.i, 24
  %arrayidx1.i167.i = getelementptr %struct.scsi_status_iu_header, ptr %83, i32 0, i32 4, i32 1
  %98 = ptrtoint ptr %arrayidx1.i167.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx1.i167.i, align 1
  %conv2.i168.i = zext i8 %99 to i32
  %shl3.i169.i = shl nuw nsw i32 %conv2.i168.i, 16
  %or.i170.i = or i32 %shl3.i169.i, %shl.i166.i
  %arrayidx4.i171.i = getelementptr %struct.scsi_status_iu_header, ptr %83, i32 0, i32 4, i32 2
  %100 = ptrtoint ptr %arrayidx4.i171.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx4.i171.i, align 1
  %conv5.i172.i = zext i8 %101 to i32
  %shl6.i173.i = shl nuw nsw i32 %conv5.i172.i, 8
  %or7.i174.i = or i32 %or.i170.i, %shl6.i173.i
  %arrayidx8.i175.i = getelementptr %struct.scsi_status_iu_header, ptr %83, i32 0, i32 4, i32 3
  %102 = ptrtoint ptr %arrayidx8.i175.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx8.i175.i, align 1
  %conv9.i176.i = zext i8 %103 to i32
  %or10.i177.i = or i32 %or7.i174.i, %conv9.i176.i
  %phi.bo.i = add i32 %or10.i177.i, 12
  br label %if.end.i

if.end.i:                                         ; preds = %cond.true27.i, %if.else.i.if.end.i_crit_edge, %if.then10.i
  %sense_offset.0.i = phi i32 [ 0, %if.then10.i ], [ %phi.bo.i, %cond.true27.i ], [ 12, %if.else.i.if.end.i_crit_edge ]
  %sense_size.0.i = phi i32 [ %81, %if.then10.i ], [ %92, %cond.true27.i ], [ %92, %if.else.i.if.end.i_crit_edge ]
  %sense_buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %71, i32 0, i32 21
  %104 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sense_buffer.i, align 4
  %106 = call ptr @memset(ptr %105, i32 0, i32 96)
  %107 = load ptr, ptr %sense_buffer.i, align 4
  %sense_data.i.i = getelementptr inbounds %struct.scb, ptr %scb, i32 0, i32 12
  %108 = ptrtoint ptr %sense_data.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sense_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %109, i32 %sense_offset.0.i
  %110 = call ptr @memcpy(ptr %107, ptr %add.ptr.i, i32 %sense_size.0.i)
  %111 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %result.i.i.i, align 4
  %and.i.i167 = and i32 %112, -256
  %or.i178.i = or i32 %and.i.i167, 2
  store i32 %or.i178.i, ptr %result.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahd_debug to i32))
  %113 = load i32, ptr @ahd_debug, align 4
  %and35.i = and i32 %113, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end.i.ahd_linux_handle_scsi_status.exit_crit_edge, label %if.then37.i

if.end.i.ahd_linux_handle_scsi_status.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_handle_scsi_status.exit

if.then37.i:                                      ; preds = %if.end.i
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %sense_size.0.i, i32 noundef %sense_offset.0.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sense_size.0.i)
  %cmp40189.not.i = icmp eq i32 %sense_size.0.i, 0
  br i1 %cmp40189.not.i, label %if.then37.i.do.end61.i_crit_edge, label %if.then37.i.for.body.i_crit_edge

if.then37.i.for.body.i_crit_edge:                 ; preds = %if.then37.i
  br label %for.body.i

if.then37.i.do.end61.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end61.i

for.body.i:                                       ; preds = %do.end54.i.for.body.i_crit_edge, %if.then37.i.for.body.i_crit_edge
  %i.0190.i = phi i32 [ %inc.i, %do.end54.i.for.body.i_crit_edge ], [ 0, %if.then37.i.for.body.i_crit_edge ]
  %and42.i = and i32 %i.0190.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %cmp43.i = icmp eq i32 %and42.i, 0
  br i1 %cmp43.i, label %do.end48.i, label %for.body.i.do.end54.i_crit_edge

for.body.i.do.end54.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end54.i

do.end48.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #17
  br label %do.end54.i

do.end54.i:                                       ; preds = %do.end48.i, %for.body.i.do.end54.i_crit_edge
  %114 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sense_buffer.i, align 4
  %arrayidx.i = getelementptr i8, ptr %115, i32 %i.0190.i
  %116 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i, align 1
  %conv57.i = zext i8 %117 to i32
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %conv57.i) #17
  %inc.i = add nuw nsw i32 %i.0190.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sense_size.0.i
  br i1 %exitcond.not.i, label %do.end54.i.do.end61.i_crit_edge, label %do.end54.i.for.body.i_crit_edge

do.end54.i.for.body.i_crit_edge:                  ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end54.i.do.end61.i_crit_edge:                  ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end61.i

do.end61.i:                                       ; preds = %do.end54.i.do.end61.i_crit_edge, %if.then37.i.do.end61.i_crit_edge
  %call63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #17
  br label %ahd_linux_handle_scsi_status.exit

sw.bb66.i:                                        ; preds = %if.then50
  %tag_success_count.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i, i32 0, i32 5
  %118 = ptrtoint ptr %tag_success_count.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %tag_success_count.i, align 4
  %active.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i, i32 0, i32 1
  %119 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp67.not.i = icmp eq i32 %120, 0
  %openings108.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i, i32 0, i32 2
  br i1 %cmp67.not.i, label %if.end107.i, label %if.then69.i

if.then69.i:                                      ; preds = %sw.bb66.i
  %121 = ptrtoint ptr %openings108.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %openings108.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahd_debug to i32))
  %122 = load i32, ptr @ahd_debug, align 4
  %and70.i = and i32 %122, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %cmp71.not.i = icmp eq i32 %and70.i, 0
  br i1 %cmp71.not.i, label %if.then69.i.if.end80.i_crit_edge, label %if.then73.i

if.then69.i.if.end80.i_crit_edge:                 ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80.i

if.then73.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @ahd_print_path(ptr noundef %ahd, ptr noundef %scb) #14
  %123 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %active.i, align 4
  %call79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %124) #17
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then73.i, %if.then69.i.if.end80.i_crit_edge
  %125 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %active.i, align 4
  %tags_on_last_queuefull.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i, i32 0, i32 9
  %127 = ptrtoint ptr %tags_on_last_queuefull.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tags_on_last_queuefull.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %128)
  %cmp82.i = icmp eq i32 %126, %128
  br i1 %cmp82.i, label %if.then84.i, label %if.else98.i

if.then84.i:                                      ; preds = %if.end80.i
  %last_queuefull_same_count.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i, i32 0, i32 10
  %129 = ptrtoint ptr %last_queuefull_same_count.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %last_queuefull_same_count.i, align 4
  %inc85.i = add i32 %130, 1
  store i32 %inc85.i, ptr %last_queuefull_same_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %inc85.i)
  %cmp87.i = icmp eq i32 %inc85.i, 50
  br i1 %cmp87.i, label %if.then89.i, label %if.then84.i.if.end102.i_crit_edge

if.then84.i.if.end102.i_crit_edge:                ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102.i

if.then89.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #16
  %maxtags.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i, i32 0, i32 8
  %131 = ptrtoint ptr %maxtags.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %126, ptr %maxtags.i, align 4
  call void @ahd_print_path(ptr noundef %ahd, ptr noundef %scb) #14
  %132 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %active.i, align 4
  %call96.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %133) #17
  br label %if.end102.i

if.else98.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #16
  %134 = ptrtoint ptr %tags_on_last_queuefull.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %126, ptr %tags_on_last_queuefull.i, align 4
  %last_queuefull_same_count101.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i, i32 0, i32 10
  %135 = ptrtoint ptr %last_queuefull_same_count101.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %last_queuefull_same_count101.i, align 4
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.else98.i, %if.then89.i, %if.then84.i.if.end102.i_crit_edge
  %136 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %io_ctx, align 4
  %result.i.i180.i = getelementptr inbounds %struct.scsi_cmnd, ptr %137, i32 0, i32 24
  %138 = ptrtoint ptr %result.i.i180.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %result.i.i180.i, align 4
  %and.i.i181.i = and i32 %139, -4128769
  %or.i.i.i = or i32 %and.i.i181.i, 1835008
  store i32 %or.i.i.i, ptr %result.i.i180.i, align 4
  %140 = load ptr, ptr %io_ctx, align 4
  %result.i.i183.i = getelementptr inbounds %struct.scsi_cmnd, ptr %140, i32 0, i32 24
  %141 = ptrtoint ptr %result.i.i183.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %result.i.i183.i, align 4
  %and.i.i184.i = and i32 %142, -65536
  store i32 %and.i.i184.i, ptr %result.i.i183.i, align 4
  %flags103.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i, i32 0, i32 6
  %143 = ptrtoint ptr %flags103.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %flags103.i, align 4
  %and104.i = and i32 %144, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  %cond106.i = select i1 %tobool105.not.i, i32 2, i32 1
  call void @ahd_platform_set_tags(ptr noundef %ahd, ptr noundef %52, ptr noundef nonnull %devinfo.i, i32 noundef %cond106.i) #14
  br label %ahd_linux_handle_scsi_status.exit

if.end107.i:                                      ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #16
  %145 = ptrtoint ptr %openings108.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %openings108.i, align 4
  %flags109.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i, i32 0, i32 6
  %146 = ptrtoint ptr %flags109.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %flags109.i, align 4
  %and110.i = and i32 %147, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.i)
  %tobool111.not.i = icmp eq i32 %and110.i, 0
  %cond112.i = select i1 %tobool111.not.i, i32 2, i32 1
  call void @ahd_platform_set_tags(ptr noundef %ahd, ptr noundef %52, ptr noundef nonnull %devinfo.i, i32 noundef %cond112.i) #14
  %148 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %io_ctx, align 4
  %result.i.i186.i = getelementptr inbounds %struct.scsi_cmnd, ptr %149, i32 0, i32 24
  %150 = ptrtoint ptr %result.i.i186.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %result.i.i186.i, align 4
  %and.i.i187.i = and i32 %151, -65536
  %or.i.i188.i = or i32 %and.i.i187.i, 8
  store i32 %or.i.i188.i, ptr %result.i.i186.i, align 4
  br label %ahd_linux_handle_scsi_status.exit

ahd_linux_handle_scsi_status.exit:                ; preds = %if.end107.i, %if.end102.i, %do.end61.i, %if.end.i.ahd_linux_handle_scsi_status.exit_crit_edge, %sw.bb.i.ahd_linux_handle_scsi_status.exit_crit_edge, %if.then50.ahd_linux_handle_scsi_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo.i) #14
  br label %if.end52

if.end52:                                         ; preds = %ahd_linux_handle_scsi_status.exit, %if.else, %if.end44, %if.end25.if.end52_crit_edge
  %152 = ptrtoint ptr %openings to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %openings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %153)
  %cmp54 = icmp eq i32 %153, 1
  br i1 %cmp54, label %land.lhs.true, label %if.end52.if.end65_crit_edge

if.end52.if.end65_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

land.lhs.true:                                    ; preds = %if.end52
  %154 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %io_ctx, align 4
  %result.i.i169 = getelementptr inbounds %struct.scsi_cmnd, ptr %155, i32 0, i32 24
  %156 = ptrtoint ptr %result.i.i169 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %result.i.i169, align 4
  %158 = and i32 %157, 4128768
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %158)
  %cmp57 = icmp ne i32 %158, 65536
  %and.i.i173 = and i32 %157, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %and.i.i173)
  %cmp61.not = icmp eq i32 %and.i.i173, 40
  %or.cond = or i1 %cmp57, %cmp61.not
  br i1 %or.cond, label %land.lhs.true.if.end65_crit_edge, label %if.then63

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then63:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %tag_success_count = getelementptr inbounds %struct.ahd_linux_device, ptr %22, i32 0, i32 5
  %159 = ptrtoint ptr %tag_success_count to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %tag_success_count, align 4
  %inc64 = add i32 %160, 1
  store i32 %inc64, ptr %tag_success_count, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %land.lhs.true.if.end65_crit_edge, %if.end52.if.end65_crit_edge
  %161 = ptrtoint ptr %openings to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %openings, align 4
  %163 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %active, align 4
  %add = add i32 %164, %162
  %maxtags = getelementptr inbounds %struct.ahd_linux_device, ptr %22, i32 0, i32 8
  %165 = ptrtoint ptr %maxtags to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %maxtags, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %166)
  %cmp68 = icmp ult i32 %add, %166
  br i1 %cmp68, label %land.lhs.true70, label %if.end65.if.end78_crit_edge

if.end65.if.end78_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

land.lhs.true70:                                  ; preds = %if.end65
  %tag_success_count71 = getelementptr inbounds %struct.ahd_linux_device, ptr %22, i32 0, i32 5
  %167 = ptrtoint ptr %tag_success_count71 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %tag_success_count71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %168)
  %cmp72 = icmp ugt i32 %168, 50
  br i1 %cmp72, label %if.then74, label %land.lhs.true70.if.end78thread-pre-split_crit_edge

land.lhs.true70.if.end78thread-pre-split_crit_edge: ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78thread-pre-split

if.then74:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #16
  %169 = ptrtoint ptr %tag_success_count71 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %tag_success_count71, align 4
  %inc77 = add i32 %162, 1
  %170 = ptrtoint ptr %openings to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %inc77, ptr %openings, align 4
  br label %if.end78thread-pre-split

if.end78thread-pre-split:                         ; preds = %if.then74, %land.lhs.true70.if.end78thread-pre-split_crit_edge
  %171 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %171)
  %.pr = load i32, ptr %active, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.end78thread-pre-split, %if.end65.if.end78_crit_edge
  %172 = phi i32 [ %.pr, %if.end78thread-pre-split ], [ %164, %if.end65.if.end78_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp80 = icmp eq i32 %172, 0
  br i1 %cmp80, label %if.then82, label %if.end78.if.end83_crit_edge

if.end78.if.end83_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  %commands_since_idle_or_otag = getelementptr inbounds %struct.ahd_linux_device, ptr %22, i32 0, i32 11
  %173 = ptrtoint ptr %commands_since_idle_or_otag to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %commands_since_idle_or_otag, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end78.if.end83_crit_edge
  %174 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %flags, align 4
  %and85 = and i32 %175, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %cmp86.not = icmp eq i32 %and85, 0
  br i1 %cmp86.not, label %if.end83.if.end107_crit_edge, label %do.end91

if.end83.if.end107_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

do.end91:                                         ; preds = %if.end83
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #17
  %176 = ptrtoint ptr %io_ctx to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %io_ctx, align 4
  %result.i.i175 = getelementptr inbounds %struct.scsi_cmnd, ptr %177, i32 0, i32 24
  %178 = ptrtoint ptr %result.i.i175 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %result.i.i175, align 4
  %180 = lshr i32 %179, 16
  %and.i.i176 = and i32 %180, 63
  %181 = zext i32 %and.i.i176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %181, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %and.i.i176, label %do.end91.if.end101_crit_edge [
    i32 20, label %do.end91.if.then100_crit_edge
    i32 2, label %do.end91.if.then100_crit_edge195
  ]

do.end91.if.then100_crit_edge195:                 ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then100

do.end91.if.then100_crit_edge:                    ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then100

do.end91.if.end101_crit_edge:                     ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

if.then100:                                       ; preds = %do.end91.if.then100_crit_edge, %do.end91.if.then100_crit_edge195
  %and.i.i182 = and i32 %179, -4128769
  %or.i.i183 = or i32 %and.i.i182, 589824
  %182 = ptrtoint ptr %result.i.i175 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %or.i.i183, ptr %result.i.i175, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %do.end91.if.end101_crit_edge
  %platform_data102 = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 10
  %183 = ptrtoint ptr %platform_data102 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %platform_data102, align 4
  %eh_done = getelementptr inbounds %struct.ahd_platform_data, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %eh_done to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %eh_done, align 4
  %tobool.not = icmp eq ptr %186, null
  br i1 %tobool.not, label %if.end101.if.end107_crit_edge, label %if.then103

if.end101.if.end107_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then103:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  call void @complete(ptr noundef nonnull %186) #14
  br label %if.end107

if.end107:                                        ; preds = %if.then103, %if.end101.if.end107_crit_edge, %if.end83.if.end107_crit_edge
  call void @ahd_free_scb(ptr noundef %ahd, ptr noundef %scb) #14
  %187 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %result, align 4
  %189 = lshr i32 %188, 16
  %and.i.i185 = and i32 %189, 63
  %190 = zext i32 %and.i.i185 to i64
  call void @__sanitizer_cov_trace_switch(i64 %190, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %and.i.i185, label %sw.default23.i [
    i32 0, label %if.end107.ahd_linux_queue_cmd_complete.exit_crit_edge
    i32 1, label %if.end107.ahd_linux_queue_cmd_complete.exit_crit_edge196
    i32 13, label %sw.bb1.i
    i32 10, label %if.end107.sw.bb2.i_crit_edge
    i32 2, label %sw.bb13.i
    i32 5, label %sw.bb14.i
    i32 6, label %if.end107.sw.bb15.i_crit_edge
    i32 7, label %if.end107.sw.bb15.i_crit_edge197
    i32 8, label %sw.bb16.i
    i32 11, label %if.end107.sw.bb17.i_crit_edge
    i32 20, label %if.end107.sw.bb17.i_crit_edge198
    i32 12, label %if.end107.do.end.i_crit_edge
    i32 9, label %sw.bb19.i
    i32 4, label %if.end107.sw.bb20.i_crit_edge
    i32 16, label %if.end107.sw.bb20.i_crit_edge199
    i32 15, label %if.end107.sw.bb20.i_crit_edge200
    i32 3, label %if.end107.sw.bb21.i_crit_edge
    i32 14, label %if.end107.sw.bb21.i_crit_edge201
    i32 17, label %if.end107.sw.bb21.i_crit_edge202
    i32 18, label %if.end107.sw.bb21.i_crit_edge203
    i32 19, label %if.end107.sw.bb21.i_crit_edge204
    i32 21, label %if.end107.sw.bb21.i_crit_edge205
    i32 22, label %if.end107.sw.bb21.i_crit_edge206
    i32 23, label %if.end107.sw.bb21.i_crit_edge207
    i32 28, label %sw.bb22.i
  ]

if.end107.sw.bb21.i_crit_edge207:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb21.i

if.end107.sw.bb21.i_crit_edge206:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb21.i

if.end107.sw.bb21.i_crit_edge205:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb21.i

if.end107.sw.bb21.i_crit_edge204:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb21.i

if.end107.sw.bb21.i_crit_edge203:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb21.i

if.end107.sw.bb21.i_crit_edge202:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb21.i

if.end107.sw.bb21.i_crit_edge201:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb21.i

if.end107.sw.bb21.i_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb21.i

if.end107.sw.bb20.i_crit_edge200:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb20.i

if.end107.sw.bb20.i_crit_edge199:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb20.i

if.end107.sw.bb20.i_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb20.i

if.end107.do.end.i_crit_edge:                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.end107.sw.bb17.i_crit_edge198:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb17.i

if.end107.sw.bb17.i_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb17.i

if.end107.sw.bb15.i_crit_edge197:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb15.i

if.end107.sw.bb15.i_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb15.i

if.end107.sw.bb2.i_crit_edge:                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2.i

if.end107.ahd_linux_queue_cmd_complete.exit_crit_edge196: ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_queue_cmd_complete.exit

if.end107.ahd_linux_queue_cmd_complete.exit_crit_edge: ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_queue_cmd_complete.exit

sw.bb1.i:                                         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb1.i, %if.end107.sw.bb2.i_crit_edge
  %new_status.0.i = phi i32 [ 0, %if.end107.sw.bb2.i_crit_edge ], [ 7, %sw.bb1.i ]
  %trunc.i186 = trunc i32 %188 to i16
  %191 = zext i16 %trunc.i186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.165)
  switch i16 %trunc.i186, label %sw.bb2.i.ahd_linux_queue_cmd_complete.exit_crit_edge [
    i16 34, label %sw.bb2.i.sw.bb4.i_crit_edge
    i16 2, label %sw.bb2.i.sw.bb4.i_crit_edge208
  ]

sw.bb2.i.sw.bb4.i_crit_edge208:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4.i

sw.bb2.i.sw.bb4.i_crit_edge:                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4.i

sw.bb2.i.ahd_linux_queue_cmd_complete.exit_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_queue_cmd_complete.exit

sw.bb4.i:                                         ; preds = %sw.bb2.i.sw.bb4.i_crit_edge, %sw.bb2.i.sw.bb4.i_crit_edge208
  %192 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %sense_buffer, align 4
  %extra_len.i = getelementptr inbounds %struct.scsi_sense_data, ptr %193, i32 0, i32 4
  %194 = ptrtoint ptr %extra_len.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %extra_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %195)
  %cmp.i188 = icmp ugt i8 %195, 4
  br i1 %cmp.i188, label %sw.epilog24.i, label %sw.bb4.i.ahd_linux_queue_cmd_complete.exit_crit_edge

sw.bb4.i.ahd_linux_queue_cmd_complete.exit_crit_edge: ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_queue_cmd_complete.exit

sw.bb13.i:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_queue_cmd_complete.exit

sw.bb14.i:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_queue_cmd_complete.exit

sw.bb15.i:                                        ; preds = %if.end107.sw.bb15.i_crit_edge, %if.end107.sw.bb15.i_crit_edge197
  br label %ahd_linux_queue_cmd_complete.exit

sw.bb16.i:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_queue_cmd_complete.exit

sw.bb17.i:                                        ; preds = %if.end107.sw.bb17.i_crit_edge, %if.end107.sw.bb17.i_crit_edge198
  br label %ahd_linux_queue_cmd_complete.exit

sw.bb19.i:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

sw.bb20.i:                                        ; preds = %if.end107.sw.bb20.i_crit_edge, %if.end107.sw.bb20.i_crit_edge199, %if.end107.sw.bb20.i_crit_edge200
  br label %do.end.i

sw.bb21.i:                                        ; preds = %if.end107.sw.bb21.i_crit_edge, %if.end107.sw.bb21.i_crit_edge201, %if.end107.sw.bb21.i_crit_edge202, %if.end107.sw.bb21.i_crit_edge203, %if.end107.sw.bb21.i_crit_edge204, %if.end107.sw.bb21.i_crit_edge205, %if.end107.sw.bb21.i_crit_edge206, %if.end107.sw.bb21.i_crit_edge207
  br label %ahd_linux_queue_cmd_complete.exit

sw.bb22.i:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_queue_cmd_complete.exit

sw.default23.i:                                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_queue_cmd_complete.exit

sw.epilog24.i:                                    ; preds = %sw.bb4.i
  %add_sense_code.i = getelementptr inbounds %struct.scsi_sense_data, ptr %193, i32 0, i32 6
  %196 = ptrtoint ptr %add_sense_code.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %add_sense_code.i, align 1
  %198 = add i8 %197, -73
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %198)
  %switch.i = icmp ult i8 %198, -2
  br i1 %switch.i, label %sw.epilog24.i.ahd_linux_queue_cmd_complete.exit_crit_edge, label %sw.epilog24.i.do.end.i_crit_edge

sw.epilog24.i.do.end.i_crit_edge:                 ; preds = %sw.epilog24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

sw.epilog24.i.ahd_linux_queue_cmd_complete.exit_crit_edge: ; preds = %sw.epilog24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ahd_linux_queue_cmd_complete.exit

do.end.i:                                         ; preds = %sw.epilog24.i.do.end.i_crit_edge, %sw.bb20.i, %sw.bb19.i, %if.end107.do.end.i_crit_edge
  %new_status.155.i = phi i32 [ %new_status.0.i, %sw.epilog24.i.do.end.i_crit_edge ], [ 3, %sw.bb19.i ], [ 7, %sw.bb20.i ], [ 6, %if.end107.do.end.i_crit_edge ]
  %name.i.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 62
  %199 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %name.i.i, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %18, i32 0, i32 1
  %201 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %device.i, align 4
  %channel.i189 = getelementptr inbounds %struct.scsi_device, ptr %202, i32 0, i32 17
  %203 = ptrtoint ptr %channel.i189 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %channel.i189, align 4
  %id.i190 = getelementptr inbounds %struct.scsi_device, ptr %202, i32 0, i32 16
  %205 = ptrtoint ptr %id.i190 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %id.i190, align 8
  %lun.i191 = getelementptr inbounds %struct.scsi_device, ptr %202, i32 0, i32 18
  %207 = ptrtoint ptr %lun.i191 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %lun.i191, align 8
  %conv29.i = trunc i64 %208 to i32
  %conv30.i = and i32 %conv29.i, 255
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %200, i32 noundef %and.i.i185, i32 noundef %204, i32 noundef %206, i32 noundef %conv30.i) #17
  br label %ahd_linux_queue_cmd_complete.exit

ahd_linux_queue_cmd_complete.exit:                ; preds = %do.end.i, %sw.epilog24.i.ahd_linux_queue_cmd_complete.exit_crit_edge, %sw.default23.i, %sw.bb22.i, %sw.bb21.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb4.i.ahd_linux_queue_cmd_complete.exit_crit_edge, %sw.bb2.i.ahd_linux_queue_cmd_complete.exit_crit_edge, %if.end107.ahd_linux_queue_cmd_complete.exit_crit_edge, %if.end107.ahd_linux_queue_cmd_complete.exit_crit_edge196
  %new_status.149.i = phi i32 [ %new_status.155.i, %do.end.i ], [ %new_status.0.i, %sw.epilog24.i.ahd_linux_queue_cmd_complete.exit_crit_edge ], [ 0, %if.end107.ahd_linux_queue_cmd_complete.exit_crit_edge ], [ 0, %if.end107.ahd_linux_queue_cmd_complete.exit_crit_edge196 ], [ %new_status.0.i, %sw.bb4.i.ahd_linux_queue_cmd_complete.exit_crit_edge ], [ %new_status.0.i, %sw.bb2.i.ahd_linux_queue_cmd_complete.exit_crit_edge ], [ 5, %sw.bb13.i ], [ 2, %sw.bb14.i ], [ 4, %sw.bb15.i ], [ 1, %sw.bb16.i ], [ 8, %sw.bb17.i ], [ 7, %sw.bb21.i ], [ 13, %sw.bb22.i ], [ 7, %sw.default23.i ]
  %209 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %result, align 4
  %and.i46.i = and i32 %210, -4128769
  %shl.i.i192 = shl nuw nsw i32 %new_status.149.i, 16
  %or.i.i193 = or i32 %and.i46.i, %shl.i.i192
  store i32 %or.i.i193, ptr %result, align 4
  call void @scsi_done(ptr noundef %18) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_dump_card_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_free_scb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_exit() #11 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ahd_linux_pci_exit() #14
  %0 = load ptr, ptr @ahd_linux_transport_template, align 4
  tail call void @spi_release_transport(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_linux_pci_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_release_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ahd_linux_init() #11 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @aic79xx, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @aic79xx_setup(ptr noundef nonnull %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call ptr @spi_attach_transport(ptr noundef nonnull @ahd_linux_transport_functions) #14
  store ptr %call1, ptr @ahd_linux_transport_template, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %device_private_offset.i = getelementptr inbounds %struct.scsi_transport_template, ptr %call1, i32 0, i32 5
  %1 = ptrtoint ptr %device_private_offset.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %device_private_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 0
  br i1 %cmp.not.i, label %scsi_transport_reserve_device.exit, label %do.body2.i, !prof !364

do.body2.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/scsi/scsi_transport.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #14, !srcloc !368
  unreachable

scsi_transport_reserve_device.exit:               ; preds = %if.end4
  %device_size.i = getelementptr inbounds %struct.scsi_transport_template, ptr %call1, i32 0, i32 4
  %3 = ptrtoint ptr %device_size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %device_size.i, align 4
  %add.i = add i32 %4, 3
  %and.i = and i32 %add.i, -4
  %5 = ptrtoint ptr %device_private_offset.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i, ptr %device_private_offset.i, align 4
  %add8.i = add i32 %and.i, 96
  store i32 %add8.i, ptr %device_size.i, align 4
  %call5 = tail call i32 @ahd_linux_pci_init() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %scsi_transport_reserve_device.exit.cleanup_crit_edge, label %if.then7

scsi_transport_reserve_device.exit.cleanup_crit_edge: ; preds = %scsi_transport_reserve_device.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then7:                                         ; preds = %scsi_transport_reserve_device.exit
  call void @__sanitizer_cov_trace_pc() #16
  %6 = load ptr, ptr @ahd_linux_transport_template, align 4
  tail call void @spi_release_transport(ptr noundef %6) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %scsi_transport_reserve_device.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.end.cleanup_crit_edge ], [ %call5, %if.then7 ], [ 0, %scsi_transport_reserve_device.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahd_get_scb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahd_sg_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_queue_scb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_controller_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_is_paused(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_pause_and_flushwork(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_search_qinfifo(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ahd_save_modes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_set_modes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_get_scbptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahd_lookup_scb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_set_scbptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_qinfifo_requeue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_restore_modes(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_unpause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_reset_channel(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_dv_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_compile_devinfo(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_print_devinfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_set_syncrate(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_set_width(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ahd_parse_brace_option(ptr noundef %opt_name, ptr noundef %opt_arg, ptr noundef %end, i32 noundef %depth, ptr nocapture noundef readonly %callback, i32 noundef %callback_arg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opt_arg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %opt_arg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %1)
  %cmp.not = icmp eq i8 %1, 58
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i8, ptr %opt_arg, i32 1
  %strlen = tail call i32 @strlen(ptr %incdec.ptr) #19
  %strchr = getelementptr i8, ptr %incdec.ptr, i32 %strlen
  %cmp2 = icmp ult ptr %strchr, %end
  br i1 %cmp2, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %strchr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 44, ptr %strchr, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %depth)
  %cmp10 = icmp sgt i32 %depth, 1
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %if.end5
  %targ.0101 = phi i32 [ -1, %if.end5 ], [ %targ.4, %sw.epilog.while.body_crit_edge ]
  %instance.0100 = phi i32 [ -1, %if.end5 ], [ %instance.4, %sw.epilog.while.body_crit_edge ]
  %opt_arg.addr.099 = phi ptr [ %incdec.ptr, %if.end5 ], [ %opt_arg.addr.1, %sw.epilog.while.body_crit_edge ]
  %3 = ptrtoint ptr %opt_arg.addr.099 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %opt_arg.addr.099, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.166)
  switch i8 %4, label %for.body.preheader [
    i8 123, label %sw.bb
    i8 125, label %sw.bb22
    i8 44, label %while.body.sw.bb33_crit_edge
    i8 46, label %while.body.sw.bb33_crit_edge109
    i8 0, label %while.body.cleanup_crit_edge
  ]

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.sw.bb33_crit_edge109:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb33

while.body.sw.bb33_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb33

for.body.preheader:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %call54 = tail call ptr @strchr(ptr noundef %opt_arg.addr.099, i32 noundef 46)
  %tobool55.not = icmp ne ptr %call54, null
  %cmp56 = icmp ult ptr %call54, %end
  %or.cond = and i1 %tobool55.not, %cmp56
  %tok_end.1 = select i1 %or.cond, ptr %call54, ptr %end
  %call54.1 = tail call ptr @strchr(ptr noundef %opt_arg.addr.099, i32 noundef 44)
  %tobool55.not.1 = icmp ne ptr %call54.1, null
  %cmp56.1 = icmp ult ptr %call54.1, %tok_end.1
  %or.cond.1 = select i1 %tobool55.not.1, i1 %cmp56.1, i1 false
  %tok_end.1.1 = select i1 %or.cond.1, ptr %call54.1, ptr %tok_end.1
  %call54.2 = tail call ptr @strchr(ptr noundef %opt_arg.addr.099, i32 noundef 123)
  %tobool55.not.2 = icmp ne ptr %call54.2, null
  %cmp56.2 = icmp ult ptr %call54.2, %tok_end.1.1
  %or.cond.2 = select i1 %tobool55.not.2, i1 %cmp56.2, i1 false
  %tok_end.1.2 = select i1 %or.cond.2, ptr %call54.2, ptr %tok_end.1.1
  %call54.3 = tail call ptr @strchr(ptr noundef %opt_arg.addr.099, i32 noundef 125)
  %tobool55.not.3 = icmp ne ptr %call54.3, null
  %cmp56.3 = icmp ult ptr %call54.3, %tok_end.1.2
  %or.cond.3 = select i1 %tobool55.not.3, i1 %cmp56.3, i1 false
  %tok_end.1.3 = select i1 %or.cond.3, ptr %call54.3, ptr %tok_end.1.2
  %call61 = tail call i32 @simple_strtol(ptr noundef %opt_arg.addr.099, ptr noundef null, i32 noundef 0) #14
  tail call void %callback(i32 noundef %callback_arg, i32 noundef %instance.0100, i32 noundef %targ.0101, i32 noundef %call61) #14, !callees !369
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %instance.0100)
  %cmp7 = icmp eq i32 %instance.0100, -1
  br i1 %cmp7, label %sw.bb.if.end20_crit_edge, label %if.else

sw.bb.if.end20_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.else:                                          ; preds = %sw.bb
  br i1 %cmp10, label %if.then12, label %do.end

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %targ.0101)
  %cmp13 = icmp eq i32 %targ.0101, -1
  %spec.store.select = select i1 %cmp13, i32 0, i32 %targ.0101
  br label %if.end20

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %opt_name) #17
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then12, %sw.bb.if.end20_crit_edge
  %instance.1 = phi i32 [ %instance.0100, %if.then12 ], [ %instance.0100, %do.end ], [ 0, %sw.bb.if.end20_crit_edge ]
  %targ.1 = phi i32 [ %spec.store.select, %if.then12 ], [ %targ.0101, %do.end ], [ %targ.0101, %sw.bb.if.end20_crit_edge ]
  %done.1 = phi i32 [ 0, %if.then12 ], [ 1, %do.end ], [ 0, %sw.bb.if.end20_crit_edge ]
  %incdec.ptr21 = getelementptr i8, ptr %opt_arg.addr.099, i32 1
  br label %sw.epilog

sw.bb22:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %targ.0101)
  %cmp23.not = icmp eq i32 %targ.0101, -1
  %.instance.0 = select i1 %cmp23.not, i32 -1, i32 %instance.0100
  %incdec.ptr32 = getelementptr i8, ptr %opt_arg.addr.099, i32 1
  br label %sw.epilog

sw.bb33:                                          ; preds = %while.body.sw.bb33_crit_edge, %while.body.sw.bb33_crit_edge109
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %instance.0100)
  %cmp34 = icmp eq i32 %instance.0100, -1
  br i1 %cmp34, label %sw.bb33.if.end48_crit_edge, label %if.else37

sw.bb33.if.end48_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.else37:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %targ.0101)
  %cmp38 = icmp sgt i32 %targ.0101, -1
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add nuw i32 %targ.0101, 1
  br label %if.end48

if.else41:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #16
  %6 = xor i32 %instance.0100, -1
  %instance.0.lobit.not = lshr i32 %6, 31
  %spec.select = add nuw i32 %instance.0.lobit.not, %instance.0100
  br label %if.end48

if.end48:                                         ; preds = %if.else41, %if.then40, %sw.bb33.if.end48_crit_edge
  %instance.3 = phi i32 [ %instance.0100, %if.then40 ], [ -1, %sw.bb33.if.end48_crit_edge ], [ %spec.select, %if.else41 ]
  %targ.3 = phi i32 [ %inc, %if.then40 ], [ %targ.0101, %sw.bb33.if.end48_crit_edge ], [ %targ.0101, %if.else41 ]
  %done.2 = phi i32 [ 0, %if.then40 ], [ 1, %sw.bb33.if.end48_crit_edge ], [ 0, %if.else41 ]
  %incdec.ptr49 = getelementptr i8, ptr %opt_arg.addr.099, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end48, %sw.bb22, %if.end20, %for.body.preheader
  %opt_arg.addr.1 = phi ptr [ %tok_end.1.3, %for.body.preheader ], [ %incdec.ptr49, %if.end48 ], [ %incdec.ptr32, %sw.bb22 ], [ %incdec.ptr21, %if.end20 ]
  %instance.4 = phi i32 [ %instance.0100, %for.body.preheader ], [ %instance.3, %if.end48 ], [ %.instance.0, %sw.bb22 ], [ %instance.1, %if.end20 ]
  %targ.4 = phi i32 [ %targ.0101, %for.body.preheader ], [ %targ.3, %if.end48 ], [ -1, %sw.bb22 ], [ %targ.1, %if.end20 ]
  %done.3 = phi i32 [ 0, %for.body.preheader ], [ %done.2, %if.end48 ], [ 0, %sw.bb22 ], [ %done.1, %if.end20 ]
  %tobool.not = icmp eq i32 %done.3, 0
  br i1 %tobool.not, label %sw.epilog.while.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %opt_arg, %entry.cleanup_crit_edge ], [ %opt_arg.addr.099, %while.body.cleanup_crit_edge ], [ %opt_arg.addr.1, %sw.epilog.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_setup_tag_info(i32 noundef %arg, i32 noundef %instance, i32 noundef %targ, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %targ, %instance
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %1 = icmp sgt i32 %0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %instance)
  %cmp3 = icmp ult i32 %instance, 16
  %or.cond16 = and i1 %cmp3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %targ)
  %cmp5 = icmp slt i32 %targ, 16
  %or.cond17 = and i1 %cmp5, %or.cond16
  br i1 %or.cond17, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = trunc i32 %value to i16
  %conv = and i16 %2, 511
  %arrayidx = getelementptr [16 x %struct.adapter_tag_info_t], ptr @aic79xx_tag_info, i32 0, i32 %instance
  %arrayidx6 = getelementptr [16 x i16], ptr %arrayidx, i32 0, i32 %targ
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %arrayidx6, align 2
  %4 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then.if.end8_crit_edge, label %do.end

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %instance, i32 noundef %targ, i32 noundef %value) #17
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_setup_iocell_info(i32 noundef %index, i32 noundef %instance, i32 noundef %targ, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %instance)
  %cmp1 = icmp ult i32 %instance, 16
  br i1 %cmp1, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %instance, i32 noundef %index, i32 noundef %value) #17
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_update_neg_request(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_block_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_unblock_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_sync_sglist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_attach_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_linux_pci_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_set_period(ptr nocapture noundef readonly %starget, i32 noundef %period) #0 align 64 {
entry:
  %period.addr = alloca i32, align 4
  %tstate = alloca ptr, align 4
  %devinfo = alloca %struct.ahd_devinfo, align 4
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
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !363
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
  %call1 = call ptr @ahd_fetch_transinfo(ptr noundef %6, i8 noundef zeroext %conv, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %tstate) #14
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo) #14
  %15 = call ptr @memset(ptr %devinfo, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppr_options) #14
  %ppr_options2 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %ppr_options2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ppr_options2, align 1
  %conv3 = zext i8 %17 to i32
  %18 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv3, ptr %ppr_options, align 4
  %offset5 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %offset5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %offset5, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahd_debug to i32))
  %21 = load i32, ptr @ahd_debug, align 4
  %and = and i32 %21, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %dev_to_shost.exit.if.end_crit_edge, label %do.end

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.ahd_softc, ptr %6, i32 0, i32 62
  %22 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i, align 4
  %24 = ptrtoint ptr %period.addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %period.addr, align 4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %23, i32 noundef %25) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %dev_to_shost.exit.if.end_crit_edge
  %26 = ptrtoint ptr %period.addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %period.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp14 = icmp slt i32 %27, 8
  br i1 %cmp14, label %if.end17.thread, label %if.end17

if.end17.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %period.addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %period.addr, align 4
  br label %if.then20

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %27)
  %cmp18 = icmp ult i32 %27, 10
  br i1 %cmp18, label %if.end17.if.then20_crit_edge, label %if.end17.if.end28_crit_edge

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.end17.if.then20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

if.then20:                                        ; preds = %if.end17.if.then20_crit_edge, %if.end17.thread
  %29 = phi i32 [ 8, %if.end17.thread ], [ %27, %if.end17.if.then20_crit_edge ]
  %max_width = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %30 = ptrtoint ptr %max_width to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load = load i16, ptr %max_width, align 4
  %31 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not = icmp eq i16 %31, 0
  br i1 %tobool.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then20
  %32 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ppr_options, align 4
  %or = or i32 %33, 2
  store i32 %or, ptr %ppr_options, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %29)
  %cmp22 = icmp eq i32 %29, 8
  br i1 %cmp22, label %if.then24, label %if.then21.if.end28_crit_edge

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  %or25 = or i32 %33, 3
  %34 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or25, ptr %ppr_options, align 4
  br label %if.end28

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %period.addr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 10, ptr %period.addr, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then24, %if.then21.if.end28_crit_edge, %if.end17.if.end28_crit_edge
  %36 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ppr_options, align 4
  %38 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %this_id, align 8
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id, align 8
  %42 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %channel, align 4
  %44 = trunc i32 %43 to i8
  %conv34 = add i8 %44, 65
  call void @ahd_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %39, i32 noundef %41, i32 noundef 0, i8 noundef zeroext %conv34, i32 noundef 1) #14
  %and35 = and i32 %37, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end28.if.end47_crit_edge, label %if.then37

if.end28.if.end47_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then37:                                        ; preds = %if.end28
  %width = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %45 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load39 = load i16, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load39)
  %cmp42 = icmp sgt i16 %bf.load39, -1
  br i1 %cmp42, label %if.then44, label %if.then37.if.end47_crit_edge

if.then37.if.end47_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then44:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  %and45 = and i32 %37, 4
  %46 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and45, ptr %ppr_options, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.then37.if.end47_crit_edge, %if.end28.if.end47_crit_edge
  %and29 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp10 = icmp eq i8 %20, 0
  %narrow = select i1 %cmp10, i8 -2, i8 %20
  %spec.store.select = zext i8 %narrow to i32
  %47 = xor i32 %and29, 10
  call void @ahd_find_syncrate(ptr noundef %6, ptr noundef nonnull %period.addr, ptr noundef nonnull %ppr_options, i32 noundef %47) #14
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %6, i32 0, i32 10
  %48 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %49, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %50 = ptrtoint ptr %period.addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %period.addr, align 4
  %52 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ppr_options, align 4
  call void @ahd_set_syncrate(ptr noundef %6, ptr noundef nonnull %devinfo, i32 noundef %51, i32 noundef %spec.store.select, i32 noundef %53, i32 noundef 4, i32 noundef 0) #14
  %54 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i65 = getelementptr inbounds %struct.ahd_platform_data, ptr %55, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i65, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppr_options) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_set_offset(ptr nocapture noundef readonly %starget, i32 noundef %offset) #0 align 64 {
entry:
  %tstate = alloca ptr, align 4
  %devinfo = alloca %struct.ahd_devinfo, align 4
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
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !363
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
  %call1 = call ptr @ahd_fetch_transinfo(ptr noundef %5, i8 noundef zeroext %conv, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %tstate) #14
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahd_debug to i32))
  %17 = load i32, ptr @ahd_debug, align 4
  %and2 = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp.not = icmp eq i32 %and2, 0
  br i1 %cmp.not, label %dev_to_shost.exit.if.end_crit_edge, label %do.end

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 62
  %18 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name.i, align 4
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %19, i32 noundef %offset) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %dev_to_shost.exit.if.end_crit_edge
  %20 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %this_id, align 8
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 8
  %24 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel, align 4
  %26 = trunc i32 %25 to i8
  %conv10 = add i8 %26, 65
  call void @ahd_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %21, i32 noundef %23, i32 noundef 0, i8 noundef zeroext %conv10, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp11.not = icmp eq i32 %offset, 0
  br i1 %cmp11.not, label %if.end.if.end19_crit_edge, label %if.then13

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %period14 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %period14 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %period14, align 1
  %conv15 = zext i8 %28 to i32
  %29 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv15, ptr %period, align 4
  %ppr_options17 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %ppr_options17 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ppr_options17, align 1
  %conv18 = zext i8 %31 to i32
  %32 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv18, ptr %ppr_options, align 4
  call void @ahd_find_syncrate(ptr noundef %5, ptr noundef nonnull %period, ptr noundef nonnull %ppr_options, i32 noundef 10) #14
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end.if.end19_crit_edge
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 10
  %33 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %34, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %35 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %period, align 4
  %37 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ppr_options, align 4
  call void @ahd_set_syncrate(ptr noundef %5, ptr noundef nonnull %devinfo, i32 noundef %36, i32 noundef %offset, i32 noundef %38, i32 noundef 4, i32 noundef 0) #14
  %39 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i35 = getelementptr inbounds %struct.ahd_platform_data, ptr %40, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i35, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %period) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppr_options) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_set_width(ptr nocapture noundef readonly %starget, i32 noundef %width) #0 align 64 {
entry:
  %devinfo = alloca %struct.ahd_devinfo, align 4
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
  call void @ahd_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %8, i32 noundef %10, i32 noundef 0, i8 noundef zeroext %conv, i32 noundef 1) #14
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 10
  %14 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %15, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  call void @ahd_set_width(ptr noundef %5, ptr noundef nonnull %devinfo, i32 noundef %width, i32 noundef 4, i32 noundef 0) #14
  %16 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i7 = getelementptr inbounds %struct.ahd_platform_data, ptr %17, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i7, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_set_iu(ptr nocapture noundef readonly %starget, i32 noundef %iu) #0 align 64 {
entry:
  %tstate = alloca ptr, align 4
  %devinfo = alloca %struct.ahd_devinfo, align 4
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
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !363
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
  %call1 = call ptr @ahd_fetch_transinfo(ptr noundef %5, i8 noundef zeroext %conv, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %tstate) #14
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo) #14
  %14 = call ptr @memset(ptr %devinfo, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppr_options) #14
  %ppr_options2 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %ppr_options2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ppr_options2, align 1
  %17 = and i8 %16, -2
  %and = zext i8 %17 to i32
  %18 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %ppr_options, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %period) #14
  %period5 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %period5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %period5, align 1
  %conv6 = zext i8 %20 to i32
  %21 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv6, ptr %period, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahd_debug to i32))
  %22 = load i32, ptr @ahd_debug, align 4
  %and7 = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp.not = icmp eq i32 %and7, 0
  br i1 %cmp.not, label %dev_to_shost.exit.if.end_crit_edge, label %do.end

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 62
  %23 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iu)
  %tobool.not = icmp eq i32 %iu, 0
  %cond = select i1 %tobool.not, ptr @.str.139, ptr @.str.138
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %24, ptr noundef nonnull %cond) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %dev_to_shost.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iu)
  %tobool11.not = icmp eq i32 %iu, 0
  br i1 %tobool11.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %max_width = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %25 = ptrtoint ptr %max_width to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load = load i16, ptr %max_width, align 4
  %26 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool12.not = icmp eq i16 %26, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end15_crit_edge, label %if.then13

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ppr_options, align 4
  %or14 = or i32 %28, 3
  store i32 %or14, ptr %ppr_options, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %29 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ppr_options, align 4
  %and16 = and i32 %30, 2
  %31 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %this_id, align 8
  %33 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id, align 8
  %35 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channel, align 4
  %37 = trunc i32 %36 to i8
  %conv21 = add i8 %37, 65
  call void @ahd_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %32, i32 noundef %34, i32 noundef 0, i8 noundef zeroext %conv21, i32 noundef 1) #14
  %38 = xor i32 %and16, 10
  call void @ahd_find_syncrate(ptr noundef %5, ptr noundef nonnull %period, ptr noundef nonnull %ppr_options, i32 noundef %38) #14
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 10
  %39 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %40, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %41 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %period, align 4
  %offset = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 4
  %43 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %offset, align 1
  %conv25 = zext i8 %44 to i32
  %45 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ppr_options, align 4
  call void @ahd_set_syncrate(ptr noundef %5, ptr noundef nonnull %devinfo, i32 noundef %42, i32 noundef %conv25, i32 noundef %46, i32 noundef 4, i32 noundef 0) #14
  %47 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i42 = getelementptr inbounds %struct.ahd_platform_data, ptr %48, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i42, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %period) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppr_options) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_set_dt(ptr nocapture noundef readonly %starget, i32 noundef %dt) #0 align 64 {
entry:
  %tstate = alloca ptr, align 4
  %devinfo = alloca %struct.ahd_devinfo, align 4
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
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !363
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
  %call1 = call ptr @ahd_fetch_transinfo(ptr noundef %5, i8 noundef zeroext %conv, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %tstate) #14
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo) #14
  %14 = call ptr @memset(ptr %devinfo, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppr_options) #14
  %ppr_options2 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %ppr_options2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ppr_options2, align 1
  %17 = and i8 %16, -3
  %and = zext i8 %17 to i32
  %18 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %ppr_options, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %period) #14
  %period5 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %period5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %period5, align 1
  %conv6 = zext i8 %20 to i32
  %21 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv6, ptr %period, align 4
  %width8 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %width8 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %width8, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahd_debug to i32))
  %24 = load i32, ptr @ahd_debug, align 4
  %and10 = and i32 %24, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp.not = icmp eq i32 %and10, 0
  br i1 %cmp.not, label %dev_to_shost.exit.if.end_crit_edge, label %do.end

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 62
  %25 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dt)
  %tobool.not = icmp eq i32 %dt, 0
  %cond = select i1 %tobool.not, ptr @.str.139, ptr @.str.138
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %26, ptr noundef nonnull %cond) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %dev_to_shost.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dt)
  %tobool14.not = icmp eq i32 %dt, 0
  br i1 %tobool14.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %max_width = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %27 = ptrtoint ptr %max_width to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load = load i16, ptr %max_width, align 4
  %28 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool15.not = icmp eq i16 %28, 0
  br i1 %tobool15.not, label %land.lhs.true.if.else_crit_edge, label %if.then16

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then16:                                        ; preds = %land.lhs.true
  %29 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ppr_options, align 4
  %or = or i32 %30, 2
  store i32 %or, ptr %ppr_options, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not = icmp eq i8 %23, 0
  br i1 %tobool17.not, label %if.then18, label %if.then16.if.end25_crit_edge

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  call void @ahd_linux_set_width(ptr noundef %starget, i32 noundef 1)
  br label %if.end25

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %31 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %32)
  %cmp20 = icmp ult i32 %32, 10
  br i1 %cmp20, label %if.then22, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 10, ptr %period, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.else.if.end23_crit_edge
  %34 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ppr_options, align 4
  %and24 = and i32 %35, -2
  store i32 %and24, ptr %ppr_options, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.then18, %if.then16.if.end25_crit_edge
  %36 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %this_id, align 8
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 8
  %40 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %channel, align 4
  %42 = trunc i32 %41 to i8
  %conv30 = add i8 %42, 65
  call void @ahd_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %37, i32 noundef %39, i32 noundef 0, i8 noundef zeroext %conv30, i32 noundef 1) #14
  %cond32 = select i1 %tobool14.not, i32 10, i32 8
  call void @ahd_find_syncrate(ptr noundef %5, ptr noundef nonnull %period, ptr noundef nonnull %ppr_options, i32 noundef %cond32) #14
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 10
  %43 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %44, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %45 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %period, align 4
  %offset = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %offset, align 1
  %conv34 = zext i8 %48 to i32
  %49 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ppr_options, align 4
  call void @ahd_set_syncrate(ptr noundef %5, ptr noundef nonnull %devinfo, i32 noundef %46, i32 noundef %conv34, i32 noundef %50, i32 noundef 4, i32 noundef 0) #14
  %51 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i54 = getelementptr inbounds %struct.ahd_platform_data, ptr %52, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i54, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %period) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppr_options) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_set_qas(ptr nocapture noundef readonly %starget, i32 noundef %qas) #0 align 64 {
entry:
  %tstate = alloca ptr, align 4
  %devinfo = alloca %struct.ahd_devinfo, align 4
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
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !363
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
  %call1 = call ptr @ahd_fetch_transinfo(ptr noundef %5, i8 noundef zeroext %conv, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %tstate) #14
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo) #14
  %14 = call ptr @memset(ptr %devinfo, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppr_options) #14
  %ppr_options2 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %ppr_options2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ppr_options2, align 1
  %17 = and i8 %16, -5
  %and = zext i8 %17 to i32
  %18 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %ppr_options, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %period) #14
  %period5 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %period5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %period5, align 1
  %conv6 = zext i8 %20 to i32
  %21 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv6, ptr %period, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahd_debug to i32))
  %22 = load i32, ptr @ahd_debug, align 4
  %and7 = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp.not = icmp eq i32 %and7, 0
  br i1 %cmp.not, label %dev_to_shost.exit.if.end_crit_edge, label %do.end

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 62
  %23 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qas)
  %tobool.not = icmp eq i32 %qas, 0
  %cond = select i1 %tobool.not, ptr @.str.139, ptr @.str.138
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %24, ptr noundef nonnull %cond) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %dev_to_shost.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qas)
  %tobool11.not = icmp eq i32 %qas, 0
  br i1 %tobool11.not, label %if.end.if.end13_crit_edge, label %if.then12

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ppr_options, align 4
  %or = or i32 %26, 4
  store i32 %or, ptr %ppr_options, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  %27 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ppr_options, align 4
  %and14 = and i32 %28, 2
  %29 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %this_id, align 8
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 8
  %33 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channel, align 4
  %35 = trunc i32 %34 to i8
  %conv19 = add i8 %35, 65
  call void @ahd_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %30, i32 noundef %32, i32 noundef 0, i8 noundef zeroext %conv19, i32 noundef 1) #14
  %36 = xor i32 %and14, 10
  call void @ahd_find_syncrate(ptr noundef %5, ptr noundef nonnull %period, ptr noundef nonnull %ppr_options, i32 noundef %36) #14
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 10
  %37 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %38, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %39 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %period, align 4
  %offset = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 4
  %41 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %offset, align 1
  %conv23 = zext i8 %42 to i32
  %43 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ppr_options, align 4
  call void @ahd_set_syncrate(ptr noundef %5, ptr noundef nonnull %devinfo, i32 noundef %40, i32 noundef %conv23, i32 noundef %44, i32 noundef 4, i32 noundef 0) #14
  %45 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i39 = getelementptr inbounds %struct.ahd_platform_data, ptr %46, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i39, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %period) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppr_options) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_set_wr_flow(ptr nocapture noundef readonly %starget, i32 noundef %wrflow) #0 align 64 {
entry:
  %tstate = alloca ptr, align 4
  %devinfo = alloca %struct.ahd_devinfo, align 4
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
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !363
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
  %call1 = call ptr @ahd_fetch_transinfo(ptr noundef %5, i8 noundef zeroext %conv, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %tstate) #14
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo) #14
  %14 = call ptr @memset(ptr %devinfo, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppr_options) #14
  %ppr_options2 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %ppr_options2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ppr_options2, align 1
  %17 = and i8 %16, -17
  %and = zext i8 %17 to i32
  %18 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %ppr_options, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %period) #14
  %period5 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %period5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %period5, align 1
  %conv6 = zext i8 %20 to i32
  %21 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv6, ptr %period, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahd_debug to i32))
  %22 = load i32, ptr @ahd_debug, align 4
  %and8 = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp.not = icmp eq i32 %and8, 0
  br i1 %cmp.not, label %dev_to_shost.exit.if.end_crit_edge, label %do.end

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 62
  %23 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wrflow)
  %tobool.not = icmp eq i32 %wrflow, 0
  %cond = select i1 %tobool.not, ptr @.str.139, ptr @.str.138
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %24, ptr noundef nonnull %cond) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %dev_to_shost.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wrflow)
  %tobool12.not = icmp eq i32 %wrflow, 0
  br i1 %tobool12.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %max_width = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %25 = ptrtoint ptr %max_width to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load = load i16, ptr %max_width, align 4
  %26 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool13.not = icmp eq i16 %26, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end15_crit_edge, label %if.then14

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ppr_options, align 4
  %or = or i32 %28, 16
  store i32 %or, ptr %ppr_options, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %and7 = and i32 %and, 2
  %29 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %this_id, align 8
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 8
  %33 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channel, align 4
  %35 = trunc i32 %34 to i8
  %conv20 = add i8 %35, 65
  call void @ahd_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %30, i32 noundef %32, i32 noundef 0, i8 noundef zeroext %conv20, i32 noundef 1) #14
  %36 = xor i32 %and7, 10
  call void @ahd_find_syncrate(ptr noundef %5, ptr noundef nonnull %period, ptr noundef nonnull %ppr_options, i32 noundef %36) #14
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 10
  %37 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %38, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %39 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %period, align 4
  %offset = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 4
  %41 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %offset, align 1
  %conv24 = zext i8 %42 to i32
  %43 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ppr_options, align 4
  call void @ahd_set_syncrate(ptr noundef %5, ptr noundef nonnull %devinfo, i32 noundef %40, i32 noundef %conv24, i32 noundef %44, i32 noundef 4, i32 noundef 0) #14
  %45 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i41 = getelementptr inbounds %struct.ahd_platform_data, ptr %46, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i41, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %period) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppr_options) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_set_rd_strm(ptr nocapture noundef readonly %starget, i32 noundef %rdstrm) #0 align 64 {
entry:
  %tstate = alloca ptr, align 4
  %devinfo = alloca %struct.ahd_devinfo, align 4
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
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !363
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
  %call1 = call ptr @ahd_fetch_transinfo(ptr noundef %5, i8 noundef zeroext %conv, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %tstate) #14
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo) #14
  %14 = call ptr @memset(ptr %devinfo, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppr_options) #14
  %ppr_options2 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %ppr_options2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ppr_options2, align 1
  %17 = and i8 %16, -33
  %and = zext i8 %17 to i32
  %18 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %ppr_options, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %period) #14
  %period5 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %period5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %period5, align 1
  %conv6 = zext i8 %20 to i32
  %21 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv6, ptr %period, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahd_debug to i32))
  %22 = load i32, ptr @ahd_debug, align 4
  %and8 = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp.not = icmp eq i32 %and8, 0
  br i1 %cmp.not, label %dev_to_shost.exit.if.end_crit_edge, label %do.end

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 62
  %23 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rdstrm)
  %tobool.not = icmp eq i32 %rdstrm, 0
  %cond = select i1 %tobool.not, ptr @.str.139, ptr @.str.138
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef %24, ptr noundef nonnull %cond) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %dev_to_shost.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rdstrm)
  %tobool12.not = icmp eq i32 %rdstrm, 0
  br i1 %tobool12.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %max_width = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %25 = ptrtoint ptr %max_width to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load = load i16, ptr %max_width, align 4
  %26 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool13.not = icmp eq i16 %26, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end15_crit_edge, label %if.then14

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ppr_options, align 4
  %or = or i32 %28, 32
  store i32 %or, ptr %ppr_options, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %and7 = and i32 %and, 2
  %29 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %this_id, align 8
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 8
  %33 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channel, align 4
  %35 = trunc i32 %34 to i8
  %conv20 = add i8 %35, 65
  call void @ahd_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %30, i32 noundef %32, i32 noundef 0, i8 noundef zeroext %conv20, i32 noundef 1) #14
  %36 = xor i32 %and7, 10
  call void @ahd_find_syncrate(ptr noundef %5, ptr noundef nonnull %period, ptr noundef nonnull %ppr_options, i32 noundef %36) #14
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 10
  %37 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %38, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %39 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %period, align 4
  %offset = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 4
  %41 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %offset, align 1
  %conv24 = zext i8 %42 to i32
  %43 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ppr_options, align 4
  call void @ahd_set_syncrate(ptr noundef %5, ptr noundef nonnull %devinfo, i32 noundef %40, i32 noundef %conv24, i32 noundef %44, i32 noundef 4, i32 noundef 0) #14
  %45 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i41 = getelementptr inbounds %struct.ahd_platform_data, ptr %46, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i41, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %period) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppr_options) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_set_rti(ptr nocapture noundef readonly %starget, i32 noundef %rti) #0 align 64 {
entry:
  %tstate = alloca ptr, align 4
  %devinfo = alloca %struct.ahd_devinfo, align 4
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
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !363
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
  %call1 = call ptr @ahd_fetch_transinfo(ptr noundef %5, i8 noundef zeroext %conv, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %tstate) #14
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo) #14
  %14 = call ptr @memset(ptr %devinfo, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppr_options) #14
  %ppr_options2 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %ppr_options2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ppr_options2, align 1
  %17 = and i8 %16, -65
  %and = zext i8 %17 to i32
  %18 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %ppr_options, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %period) #14
  %period5 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %period5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %period5, align 1
  %conv6 = zext i8 %20 to i32
  %21 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv6, ptr %period, align 4
  %and7 = and i32 %and, 2
  %features = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 21
  %22 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %features, align 4
  %and8 = and i32 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp = icmp eq i32 %and8, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahd_debug to i32))
  %24 = load i32, ptr @ahd_debug, align 4
  %and10 = and i32 %24, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11.not = icmp eq i32 %and10, 0
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %dev_to_shost.exit
  br i1 %cmp11.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 62
  %25 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name.i, align 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %26) #17
  br label %cleanup

if.end16:                                         ; preds = %dev_to_shost.exit
  br i1 %cmp11.not, label %if.end16.if.end27_crit_edge, label %do.end23

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %name.i66 = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 62
  %27 = ptrtoint ptr %name.i66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rti)
  %tobool.not = icmp eq i32 %rti, 0
  %cond = select i1 %tobool.not, ptr @.str.139, ptr @.str.138
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %28, ptr noundef nonnull %cond) #17
  br label %if.end27

if.end27:                                         ; preds = %do.end23, %if.end16.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rti)
  %tobool28.not = icmp eq i32 %rti, 0
  br i1 %tobool28.not, label %if.end27.if.end31_crit_edge, label %land.lhs.true

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end27
  %max_width = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %29 = ptrtoint ptr %max_width to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load = load i16, ptr %max_width, align 4
  %30 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool29.not = icmp eq i16 %30, 0
  br i1 %tobool29.not, label %land.lhs.true.if.end31_crit_edge, label %if.then30

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ppr_options, align 4
  %or = or i32 %32, 64
  store i32 %or, ptr %ppr_options, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %land.lhs.true.if.end31_crit_edge, %if.end27.if.end31_crit_edge
  %33 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %this_id, align 8
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id, align 8
  %37 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel, align 4
  %39 = trunc i32 %38 to i8
  %conv36 = add i8 %39, 65
  call void @ahd_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %34, i32 noundef %36, i32 noundef 0, i8 noundef zeroext %conv36, i32 noundef 1) #14
  %40 = xor i32 %and7, 10
  call void @ahd_find_syncrate(ptr noundef %5, ptr noundef nonnull %period, ptr noundef nonnull %ppr_options, i32 noundef %40) #14
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 10
  %41 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %42, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %43 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %period, align 4
  %offset = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %offset, align 1
  %conv40 = zext i8 %46 to i32
  %47 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ppr_options, align 4
  call void @ahd_set_syncrate(ptr noundef %5, ptr noundef nonnull %devinfo, i32 noundef %44, i32 noundef %conv40, i32 noundef %48, i32 noundef 4, i32 noundef 0) #14
  %49 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i68 = getelementptr inbounds %struct.ahd_platform_data, ptr %50, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i68, i32 noundef %call2.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %period) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppr_options) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_set_pcomp_en(ptr nocapture noundef readonly %starget, i32 noundef %pcomp) #0 align 64 {
entry:
  %tstate = alloca ptr, align 4
  %devinfo = alloca %struct.ahd_devinfo, align 4
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
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !363
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
  %call1 = call ptr @ahd_fetch_transinfo(ptr noundef %5, i8 noundef zeroext %conv, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %tstate) #14
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo) #14
  %14 = call ptr @memset(ptr %devinfo, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppr_options) #14
  %ppr_options2 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %ppr_options2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ppr_options2, align 1
  %17 = and i8 %16, 127
  %and = zext i8 %17 to i32
  %18 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %ppr_options, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %period) #14
  %period5 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %period5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %period5, align 1
  %conv6 = zext i8 %20 to i32
  %21 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv6, ptr %period, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahd_debug to i32))
  %22 = load i32, ptr @ahd_debug, align 4
  %and8 = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp.not = icmp eq i32 %and8, 0
  br i1 %cmp.not, label %dev_to_shost.exit.if.end_crit_edge, label %do.end

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 62
  %23 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pcomp)
  %tobool.not = icmp eq i32 %pcomp, 0
  %cond = select i1 %tobool.not, ptr @.str.156, ptr @.str.155
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef %24, ptr noundef nonnull %cond) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %dev_to_shost.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pcomp)
  %tobool12.not = icmp eq i32 %pcomp, 0
  br i1 %tobool12.not, label %if.end.do.body37_crit_edge, label %land.lhs.true

if.end.do.body37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body37

land.lhs.true:                                    ; preds = %if.end
  %max_width = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %25 = ptrtoint ptr %max_width to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load = load i16, ptr %max_width, align 4
  %26 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool13.not = icmp eq i16 %26, 0
  br i1 %tobool13.not, label %land.lhs.true.do.body37_crit_edge, label %if.then14

land.lhs.true.do.body37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body37

if.then14:                                        ; preds = %land.lhs.true
  %unit = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 63
  %27 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %unit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %28)
  %cmp15 = icmp ult i32 %28, 16
  br i1 %cmp15, label %if.then17, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr [16 x %struct.ahd_linux_iocell_opts], ptr @aic79xx_iocell_info, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %31 = and i8 %30, 7
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then14.if.end20_crit_edge
  %precomp.0 = phi i8 [ %31, %if.then17 ], [ 7, %if.then14.if.end20_crit_edge ]
  %32 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ppr_options, align 4
  %or = or i32 %33, 128
  store i32 %or, ptr %ppr_options, align 4
  %iocell_opts22 = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 57
  %34 = ptrtoint ptr %iocell_opts22 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %iocell_opts22, align 4
  %36 = and i8 %35, -8
  %or32 = or i8 %36, %precomp.0
  store i8 %or32, ptr %iocell_opts22, align 4
  br label %if.end50

do.body37:                                        ; preds = %land.lhs.true.do.body37_crit_edge, %if.end.do.body37_crit_edge
  %iocell_opts38 = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 57
  %37 = ptrtoint ptr %iocell_opts38 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %iocell_opts38, align 4
  %39 = and i8 %38, -8
  store i8 %39, ptr %iocell_opts38, align 4
  br label %if.end50

if.end50:                                         ; preds = %do.body37, %if.end20
  %and7 = and i32 %and, 2
  %40 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %this_id, align 8
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id, align 8
  %44 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %channel, align 4
  %46 = trunc i32 %45 to i8
  %conv55 = add i8 %46, 65
  call void @ahd_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %41, i32 noundef %43, i32 noundef 0, i8 noundef zeroext %conv55, i32 noundef 1) #14
  %47 = xor i32 %and7, 10
  call void @ahd_find_syncrate(ptr noundef %5, ptr noundef nonnull %period, ptr noundef nonnull %ppr_options, i32 noundef %47) #14
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 10
  %48 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %49, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %50 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %period, align 4
  %offset = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %offset, align 1
  %conv59 = zext i8 %53 to i32
  %54 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ppr_options, align 4
  call void @ahd_set_syncrate(ptr noundef %5, ptr noundef nonnull %devinfo, i32 noundef %51, i32 noundef %conv59, i32 noundef %55, i32 noundef 4, i32 noundef 0) #14
  %56 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i82 = getelementptr inbounds %struct.ahd_platform_data, ptr %57, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i82, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %period) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppr_options) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_set_hold_mcs(ptr nocapture noundef readonly %starget, i32 noundef %hold) #0 align 64 {
entry:
  %tstate = alloca ptr, align 4
  %devinfo = alloca %struct.ahd_devinfo, align 4
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
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate, align 4, !annotation !363
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
  %call1 = call ptr @ahd_fetch_transinfo(ptr noundef %5, i8 noundef zeroext %conv, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %tstate) #14
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %devinfo) #14
  %14 = call ptr @memset(ptr %devinfo, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppr_options) #14
  %ppr_options2 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %ppr_options2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ppr_options2, align 1
  %17 = and i8 %16, -9
  %and = zext i8 %17 to i32
  %18 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %ppr_options, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %period) #14
  %period5 = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %period5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %period5, align 1
  %conv6 = zext i8 %20 to i32
  %21 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv6, ptr %period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hold)
  %tobool.not = icmp eq i32 %hold, 0
  br i1 %tobool.not, label %dev_to_shost.exit.if.end_crit_edge, label %land.lhs.true

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %dev_to_shost.exit
  %max_width = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %22 = ptrtoint ptr %max_width to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %max_width, align 4
  %23 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool8.not = icmp eq i16 %23, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %and, 8
  %24 = ptrtoint ptr %ppr_options to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or, ptr %ppr_options, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %dev_to_shost.exit.if.end_crit_edge
  %and7 = and i32 %and, 2
  %25 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %this_id, align 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 8
  %29 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel, align 4
  %31 = trunc i32 %30 to i8
  %conv13 = add i8 %31, 65
  call void @ahd_compile_devinfo(ptr noundef nonnull %devinfo, i32 noundef %26, i32 noundef %28, i32 noundef 0, i8 noundef zeroext %conv13, i32 noundef 1) #14
  %32 = xor i32 %and7, 10
  call void @ahd_find_syncrate(ptr noundef %5, ptr noundef nonnull %period, ptr noundef nonnull %ppr_options, i32 noundef %32) #14
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %5, i32 0, i32 10
  %33 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %34, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  %35 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %period, align 4
  %offset = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call1, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %offset, align 1
  %conv16 = zext i8 %38 to i32
  %39 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ppr_options, align 4
  call void @ahd_set_syncrate(ptr noundef %5, ptr noundef nonnull %devinfo, i32 noundef %36, i32 noundef %conv16, i32 noundef %40, i32 noundef 4, i32 noundef 0) #14
  %41 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i31 = getelementptr inbounds %struct.ahd_platform_data, ptr %42, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i31, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %period) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppr_options) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %devinfo) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_get_signalling(ptr nocapture noundef readonly %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %3, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #14
  tail call void @ahd_pause(ptr noundef %1) #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bshs.i = getelementptr inbounds %struct.ahd_softc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %bshs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bshs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 74
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #14, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !356
  br label %ahd_inb.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx5.i = getelementptr %struct.ahd_softc, ptr %1, i32 0, i32 1, i32 0
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5.i, align 4
  %add.i = add i32 %10, 74
  %and6.i = and i32 %add.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %11 = inttoptr i32 %add7.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #14, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !357
  br label %ahd_inb.exit

ahd_inb.exit:                                     ; preds = %if.else.i, %if.then.i
  %x.0.i = phi i8 [ %8, %if.then.i ], [ %12, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !358
  tail call void @arm_heavy_mb() #14
  tail call void @ahd_unpause(ptr noundef %1) #14
  %13 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i20 = getelementptr inbounds %struct.ahd_platform_data, ptr %14, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i20, i32 noundef %call2.i) #14
  %conv = zext i8 %x.0.i to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %ahd_inb.exit
  call void @__sanitizer_cov_trace_pc() #16
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %15 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shost_data, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %16, align 4
  br label %if.end10

if.else:                                          ; preds = %ahd_inb.exit
  %and2 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %shost_data8 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %18 = ptrtoint ptr %shost_data8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shost_data8, align 8
  br i1 %tobool3.not, label %if.else7, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %19, align 4
  br label %if.end10

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %19, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else7, %if.then4, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_find_syncrate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !104, !106, !107, !108, !109, !110, !112, !113, !114, !116, !118, !119, !120, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !143, !145, !146, !147, !149, !150, !152, !153, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !180, !181, !183, !185, !186, !187, !188, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !230, !231, !232, !234, !236, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !249, !251, !253, !254, !256, !258, !260, !261, !262, !263, !265, !266, !267, !268, !270, !271, !273, !274, !275, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !291, !293, !295, !296, !297, !298, !300, !301, !302, !303, !305, !306, !307, !308, !309, !310, !312, !313, !314, !315, !317, !318, !319, !320, !322, !323, !324, !325, !327, !328, !329, !330, !332, !333, !334, !335, !337, !338, !339, !341, !342, !343, !344, !345}
!llvm.module.flags = !{!346, !347, !348, !349, !350, !351, !352, !353}
!llvm.ident = !{!354}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 226, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ahd_print_path._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ahd_print_path._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @aic79xx_allow_memio, !7, !"aic79xx_allow_memio", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 275, i32 10}
!8 = !{ptr @__UNIQUE_ID_author287, !9, !"__UNIQUE_ID_author287", i1 false, i1 false}
!9 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 319, i32 1}
!10 = !{ptr @__UNIQUE_ID_description288, !11, !"__UNIQUE_ID_description288", i1 false, i1 false}
!11 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 320, i32 1}
!12 = !{ptr @__UNIQUE_ID_file289, !13, !"__UNIQUE_ID_file289", i1 false, i1 false}
!13 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 321, i32 1}
!14 = !{ptr @__UNIQUE_ID_license290, !13, !"__UNIQUE_ID_license290", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_version291, !16, !"__UNIQUE_ID_version291", i1 false, i1 false}
!16 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 322, i32 1}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__modver_attr, !16, !"__modver_attr", i1 false, i1 false}
!21 = !{ptr @__param_aic79xx, !22, !"__param_aic79xx", i1 false, i1 false}
!22 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 323, i32 1}
!23 = !{ptr @__UNIQUE_ID_aic79xxtype292, !22, !"__UNIQUE_ID_aic79xxtype292", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_aic79xx293, !25, !"__UNIQUE_ID_aic79xx293", i1 false, i1 false}
!25 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 324, i32 1}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 505, i32 9}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 525, i32 9}
!30 = !{ptr @aic79xx_driver_template, !31, !"aic79xx_driver_template", i1 false, i1 false}
!31 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 886, i32 27}
!32 = !{ptr @__setup_aic79xx_setup, !33, !"__setup_aic79xx_setup", i1 false, i1 false}
!33 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1198, i32 1}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1230, i32 15}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1244, i32 3}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ahd_linux_register_host._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ahd_linux_register_host._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1746, i32 23}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1760, i32 3}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ahd_done._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ahd_done._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1762, i32 9}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1793, i32 5}
!52 = !{ptr @ahd_done._entry.15, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ahd_done._entry_ptr.17, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1849, i32 3}
!56 = !{ptr @ahd_done._entry.18, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ahd_done._entry_ptr.20, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @__initcall__kmod_aic79xx__298_2850_ahd_linux_init6, !59, !"__initcall__kmod_aic79xx__298_2850_ahd_linux_init6", i1 false, i1 false}
!59 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2850, i32 1}
!60 = !{ptr @__exitcall_ahd_linux_exit, !61, !"__exitcall_ahd_linux_exit", i1 false, i1 false}
!61 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2851, i32 1}
!62 = !{ptr @aic79xx_seltime, !63, !"aic79xx_seltime", i1 false, i1 false}
!63 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 287, i32 17}
!64 = !{ptr @aic79xx_periodic_otag, !65, !"aic79xx_periodic_otag", i1 false, i1 false}
!65 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 297, i32 17}
!66 = !{ptr @aic79xx_slowcrc, !67, !"aic79xx_slowcrc", i1 false, i1 false}
!67 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 312, i32 10}
!68 = !{ptr @ahd_linux_unit, !69, !"ahd_linux_unit", i1 false, i1 false}
!69 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 370, i32 12}
!70 = !{ptr @aic79xx_verbose, !71, !"aic79xx_verbose", i1 false, i1 false}
!71 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1200, i32 10}
!72 = !{ptr @__param_str_aic79xx, !22, !"__param_str_aic79xx", i1 false, i1 false}
!73 = !{ptr @aic79xx, !74, !"aic79xx", i1 false, i1 false}
!74 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 317, i32 14}
!75 = !{ptr @ahd_linux_info.buffer, !76, !"buffer", i1 false, i1 false}
!76 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 553, i32 14}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 561, i32 13}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 564, i32 13}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2146, i32 14}
!83 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2147, i32 7}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2149, i32 2}
!87 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ahd_linux_queue_abort_cmd._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @ahd_linux_queue_abort_cmd._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2151, i32 3}
!92 = !{ptr @ahd_linux_queue_abort_cmd._entry.27, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ahd_linux_queue_abort_cmd._entry_ptr.29, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2152, i32 2}
!96 = !{ptr @ahd_linux_queue_abort_cmd._entry.30, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ahd_linux_queue_abort_cmd._entry_ptr.32, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2170, i32 31}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2183, i32 31}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2206, i32 31}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2210, i32 2}
!106 = !{ptr @ahd_linux_queue_abort_cmd._entry.36, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ahd_linux_queue_abort_cmd._entry_ptr.38, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2221, i32 3}
!112 = !{ptr @ahd_linux_queue_abort_cmd._entry.41, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ahd_linux_queue_abort_cmd._entry_ptr.43, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2257, i32 31}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2315, i32 3}
!118 = !{ptr @ahd_linux_queue_abort_cmd._entry.45, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ahd_linux_queue_abort_cmd._entry_ptr.47, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2318, i32 31}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2333, i32 3}
!124 = !{ptr @ahd_linux_queue_abort_cmd._entry.49, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @ahd_linux_queue_abort_cmd._entry_ptr.51, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2338, i32 4}
!128 = !{ptr @ahd_linux_queue_abort_cmd._entry.52, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @ahd_linux_queue_abort_cmd._entry_ptr.54, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2342, i32 3}
!132 = !{ptr @ahd_linux_queue_abort_cmd._entry.55, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @ahd_linux_queue_abort_cmd._entry_ptr.57, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2347, i32 3}
!136 = !{ptr @ahd_linux_queue_abort_cmd._entry.58, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ahd_linux_queue_abort_cmd._entry_ptr.60, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @init_completion.__key, !139, !"__key", i1 false, i1 false}
!139 = !{!"../include/linux/completion.h", i32 87, i32 2}
!140 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 782, i32 7}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 784, i32 2}
!145 = !{ptr @ahd_linux_dev_reset._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @ahd_linux_dev_reset._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @ahd_linux_dev_reset._entry.64, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 786, i32 3}
!149 = !{ptr @ahd_linux_dev_reset._entry_ptr.65, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @ahd_linux_dev_reset._entry.66, !151, !"_entry", i1 false, i1 false}
!151 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 787, i32 2}
!152 = !{ptr @ahd_linux_dev_reset._entry_ptr.67, !151, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 808, i32 31}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 843, i32 2}
!157 = !{ptr @ahd_linux_dev_reset._entry.69, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @ahd_linux_dev_reset._entry_ptr.71, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 848, i32 3}
!161 = !{ptr @ahd_linux_dev_reset._entry.72, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @ahd_linux_dev_reset._entry_ptr.74, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 852, i32 2}
!165 = !{ptr @ahd_linux_dev_reset._entry.75, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @ahd_linux_dev_reset._entry_ptr.77, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 870, i32 3}
!169 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @ahd_linux_bus_reset._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @ahd_linux_bus_reset._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 880, i32 3}
!174 = !{ptr @ahd_linux_bus_reset._entry.80, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @ahd_linux_bus_reset._entry_ptr.82, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 677, i32 3}
!178 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @ahd_linux_slave_alloc._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @ahd_linux_slave_alloc._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 702, i32 3}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1525, i32 3}
!185 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @ahd_linux_device_queue_depth._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @ahd_linux_device_queue_depth._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @__setup_str_aic79xx_setup, !33, !"__setup_str_aic79xx_setup", i1 false, i1 false}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1132, i32 5}
!191 = !{ptr @.str.89, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1133, i32 5}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1134, i32 5}
!195 = !{ptr @.str.91, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1135, i32 5}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1137, i32 5}
!199 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1139, i32 5}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1140, i32 5}
!203 = !{ptr @.str.95, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1141, i32 5}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1142, i32 5}
!207 = !{ptr @.str.97, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1143, i32 5}
!209 = !{ptr @.str.98, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1144, i32 5}
!211 = !{ptr @.str.99, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1145, i32 5}
!213 = !{ptr @.str.100, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1146, i32 5}
!215 = !{ptr @.str.101, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1147, i32 5}
!217 = !{ptr @aic79xx_setup.options, !218, !"options", i1 false, i1 false}
!218 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1131, i32 4}
!219 = !{ptr @.str.102, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1158, i32 25}
!221 = !{ptr @aic79xx_extended, !222, !"aic79xx_extended", i1 false, i1 false}
!222 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 251, i32 17}
!223 = !{ptr @aic79xx_no_reset, !224, !"aic79xx_no_reset", i1 false, i1 false}
!224 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 244, i32 17}
!225 = !{ptr @aic79xx_pci_parity, !226, !"aic79xx_pci_parity", i1 false, i1 false}
!226 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 267, i32 17}
!227 = !{ptr @.str.103, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1014, i32 2}
!229 = !{ptr @.str.104, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @ahd_linux_setup_tag_info_global._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @ahd_linux_setup_tag_info_global._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @aic79xx_tag_info, !233, !"aic79xx_tag_info", i1 false, i1 false}
!233 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 154, i32 27}
!234 = !{ptr @.str.105, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1073, i32 6}
!236 = !{ptr @.str.106, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @ahd_parse_brace_option._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @ahd_parse_brace_option._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.107, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1032, i32 4}
!241 = !{ptr @.str.108, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @ahd_linux_setup_tag_info._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @ahd_linux_setup_tag_info._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.109, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1004, i32 4}
!246 = !{ptr @.str.110, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @ahd_linux_setup_iocell_info._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @ahd_linux_setup_iocell_info._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @ahd_linux_transport_template, !250, !"ahd_linux_transport_template", i1 false, i1 false}
!250 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 49, i32 40}
!251 = !{ptr @ahd_lockinit.__key, !252, !"__key", i1 false, i1 false}
!252 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.h", i32 374, i32 2}
!253 = !{ptr @.str.111, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @aic79xx_iocell_info, !255, !"aic79xx_iocell_info", i1 false, i1 false}
!255 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 197, i32 43}
!256 = !{ptr @ahd_linux_user_tagdepth.warned_user, !257, !"warned_user", i1 false, i1 false}
!257 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1475, i32 13}
!258 = !{ptr @.str.112, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1483, i32 5}
!260 = !{ptr @.str.113, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @ahd_linux_user_tagdepth._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @ahd_linux_user_tagdepth._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.114, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1931, i32 5}
!265 = !{ptr @.str.115, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @ahd_linux_handle_scsi_status._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @ahd_linux_handle_scsi_status._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @ahd_linux_handle_scsi_status._entry.116, !269, !"_entry", i1 false, i1 false}
!269 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1935, i32 7}
!270 = !{ptr @ahd_linux_handle_scsi_status._entry_ptr.117, !269, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.119, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1936, i32 6}
!273 = !{ptr @ahd_linux_handle_scsi_status._entry.118, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @ahd_linux_handle_scsi_status._entry_ptr.120, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @ahd_linux_handle_scsi_status._entry.121, !276, !"_entry", i1 false, i1 false}
!276 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1938, i32 5}
!277 = !{ptr @ahd_linux_handle_scsi_status._entry_ptr.122, !276, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.124, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1963, i32 5}
!280 = !{ptr @ahd_linux_handle_scsi_status._entry.123, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @ahd_linux_handle_scsi_status._entry_ptr.125, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.127, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 1982, i32 6}
!284 = !{ptr @ahd_linux_handle_scsi_status._entry.126, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @ahd_linux_handle_scsi_status._entry_ptr.128, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.129, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2101, i32 3}
!288 = !{ptr @.str.130, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @ahd_linux_queue_cmd_complete._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @ahd_linux_queue_cmd_complete._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @ahd_linux_transport_functions, !292, !"ahd_linux_transport_functions", i1 false, i1 false}
!292 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2792, i32 37}
!293 = !{ptr @.str.132, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2384, i32 3}
!295 = !{ptr @.str.133, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @ahd_linux_set_period._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @ahd_linux_set_period._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.134, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2437, i32 3}
!300 = !{ptr @.str.135, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @ahd_linux_set_offset._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @ahd_linux_set_offset._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.136, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2554, i32 3}
!305 = !{ptr @.str.137, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @ahd_linux_set_iu._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @ahd_linux_set_iu._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.138, !304, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.139, !304, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @.str.140, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2473, i32 3}
!312 = !{ptr @.str.141, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @ahd_linux_set_dt._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @ahd_linux_set_dt._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.142, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2515, i32 3}
!317 = !{ptr @.str.143, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @ahd_linux_set_qas._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @ahd_linux_set_qas._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.144, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2630, i32 3}
!322 = !{ptr @.str.145, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @ahd_linux_set_wr_flow._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @ahd_linux_set_wr_flow._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.146, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2594, i32 3}
!327 = !{ptr @.str.147, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @ahd_linux_set_rd_strm._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @ahd_linux_set_rd_strm._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.148, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2667, i32 4}
!332 = !{ptr @.str.149, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @ahd_linux_set_rti._entry, !331, !"_entry", i1 false, i1 false}
!334 = !{ptr @ahd_linux_set_rti._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.151, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2674, i32 3}
!337 = !{ptr @ahd_linux_set_rti._entry.150, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @ahd_linux_set_rti._entry_ptr.152, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.153, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm.c", i32 2710, i32 3}
!341 = !{ptr @.str.154, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @ahd_linux_set_pcomp_en._entry, !340, !"_entry", i1 false, i1 false}
!343 = !{ptr @ahd_linux_set_pcomp_en._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.155, !340, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @.str.156, !340, !"<string literal>", i1 false, i1 false}
!346 = !{i32 1, !"wchar_size", i32 2}
!347 = !{i32 1, !"min_enum_size", i32 4}
!348 = !{i32 8, !"branch-target-enforcement", i32 0}
!349 = !{i32 8, !"sign-return-address", i32 0}
!350 = !{i32 8, !"sign-return-address-all", i32 0}
!351 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!352 = !{i32 7, !"uwtable", i32 1}
!353 = !{i32 7, !"frame-pointer", i32 2}
!354 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!355 = !{i64 6044751}
!356 = !{i64 2155288280}
!357 = !{i64 2155288635}
!358 = !{i64 2155288778}
!359 = !{i64 6044356}
!360 = !{i64 2155289604}
!361 = !{i64 6043933}
!362 = !{i64 2155290683}
!363 = !{!"auto-init"}
!364 = !{!"branch_weights", i32 2000, i32 1}
!365 = !{i64 2155291830, i64 2155292329, i64 2155291867, i64 2155291923, i64 2155291957, i64 2155291981, i64 2155292022, i64 2155292043, i64 2155292071, i64 2155292105}
!366 = !{!"branch_weights", i32 1, i32 2000}
!367 = !{i64 2155326179, i64 2155326679, i64 2155326216, i64 2155326272, i64 2155326306, i64 2155326330, i64 2155326371, i64 2155326392, i64 2155326420, i64 2155326454}
!368 = !{i64 2155100438, i64 2155100931, i64 2155100475, i64 2155100531, i64 2155100565, i64 2155100589, i64 2155100630, i64 2155100651, i64 2155100679, i64 2155100713}
!369 = !{ptr @ahd_linux_setup_iocell_info, ptr @ahd_linux_setup_tag_info}
