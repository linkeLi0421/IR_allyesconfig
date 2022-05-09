; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/mantis_dvb.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/mantis_dvb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mantis_frontend_power\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_frontend_power\09\09\09\09"
module asm "\09.long\09__crc_mantis_frontend_power\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_frontend_power:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_frontend_power\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_frontend_power:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mantis_frontend_soft_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_frontend_soft_reset\09\09\09\09"
module asm "\09.long\09__crc_mantis_frontend_soft_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_frontend_soft_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_frontend_soft_reset\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_frontend_soft_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mantis_dvb_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_dvb_init\09\09\09\09"
module asm "\09.long\09__crc_mantis_dvb_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_dvb_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_dvb_init\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_dvb_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mantis_dvb_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_dvb_exit\09\09\09\09"
module asm "\09.long\09__crc_mantis_dvb_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_dvb_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_dvb_exit\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_dvb_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mantis_pci = type { i32, i16, i16, i16, i16, i8, ptr, i32, ptr, i8, i8, i32, i32, i32, ptr, i32, ptr, i32, %struct.tasklet_struct, %struct.spinlock, %struct.i2c_adapter, i32, %struct.wait_queue_head, %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i8, ptr, i32, i32, [8 x i8], i32, i32, i32, i32, ptr, %struct.work_struct, ptr, [80 x i8], [80 x i8], ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.125, i32 }
%struct.atomic_t = type { i32 }
%union.anon.125 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mantis_hwconfig = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, i8, i8, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.124, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.124 = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.131], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.131 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.132 }>
%union.anon.132 = type { i64 }
%struct.dvb_demux_feed = type { %union.anon.133, %union.anon.134, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.133 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.134 = type { ptr }

@__param_str_adapter_nr = internal constant [23 x i8] c"mantis_core.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype383 = internal constant [47 x i8] c"mantis_core.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr384 = internal constant [48 x i8] c"mantis_core.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@mantis_frontend_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s (%d): Power ON\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mantis_frontend_power\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/mantis/mantis_dvb.c\00", [58 x i8] zeroinitializer }, align 32
@mantis_frontend_power._entry_ptr = internal global ptr @mantis_frontend_power._entry, section ".printk_index", align 4
@mantis_frontend_power._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\015%s (%d): Power ON\0A\00", [43 x i8] zeroinitializer }, align 32
@mantis_frontend_power._entry_ptr.5 = internal global ptr @mantis_frontend_power._entry.3, section ".printk_index", align 4
@mantis_frontend_power._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s (%d): Power ON\0A\00", [43 x i8] zeroinitializer }, align 32
@mantis_frontend_power._entry_ptr.8 = internal global ptr @mantis_frontend_power._entry.6, section ".printk_index", align 4
@mantis_frontend_power._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s (%d): Power ON\0A\00", [43 x i8] zeroinitializer }, align 32
@mantis_frontend_power._entry_ptr.11 = internal global ptr @mantis_frontend_power._entry.9, section ".printk_index", align 4
@mantis_frontend_power._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_frontend_power._entry_ptr.13 = internal global ptr @mantis_frontend_power._entry.12, section ".printk_index", align 4
@mantis_frontend_power._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s (%d): Power OFF\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_frontend_power._entry_ptr.16 = internal global ptr @mantis_frontend_power._entry.14, section ".printk_index", align 4
@mantis_frontend_power._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015%s (%d): Power OFF\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_frontend_power._entry_ptr.19 = internal global ptr @mantis_frontend_power._entry.17, section ".printk_index", align 4
@mantis_frontend_power._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s (%d): Power OFF\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_frontend_power._entry_ptr.22 = internal global ptr @mantis_frontend_power._entry.20, section ".printk_index", align 4
@mantis_frontend_power._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s (%d): Power OFF\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_frontend_power._entry_ptr.25 = internal global ptr @mantis_frontend_power._entry.23, section ".printk_index", align 4
@mantis_frontend_power._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_frontend_power._entry_ptr.27 = internal global ptr @mantis_frontend_power._entry.26, section ".printk_index", align 4
@mantis_frontend_power._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s (%d): Unknown state <%02x>\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_frontend_power._entry_ptr.30 = internal global ptr @mantis_frontend_power._entry.28, section ".printk_index", align 4
@mantis_frontend_power._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015%s (%d): Unknown state <%02x>\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_frontend_power._entry_ptr.33 = internal global ptr @mantis_frontend_power._entry.31, section ".printk_index", align 4
@mantis_frontend_power._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s (%d): Unknown state <%02x>\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_frontend_power._entry_ptr.36 = internal global ptr @mantis_frontend_power._entry.34, section ".printk_index", align 4
@mantis_frontend_power._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s (%d): Unknown state <%02x>\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_frontend_power._entry_ptr.39 = internal global ptr @mantis_frontend_power._entry.37, section ".printk_index", align 4
@mantis_frontend_power._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_frontend_power._entry_ptr.41 = internal global ptr @mantis_frontend_power._entry.40, section ".printk_index", align 4
@__kstrtab_mantis_frontend_power = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_frontend_power = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_frontend_power = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_frontend_power to i32), ptr @__kstrtab_mantis_frontend_power, ptr @__kstrtabns_mantis_frontend_power }, section "___ksymtab_gpl+mantis_frontend_power", align 4
@mantis_frontend_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s (%d): Frontend RESET\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mantis_frontend_soft_reset\00", [37 x i8] zeroinitializer }, align 32
@mantis_frontend_soft_reset._entry_ptr = internal global ptr @mantis_frontend_soft_reset._entry, section ".printk_index", align 4
@mantis_frontend_soft_reset._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015%s (%d): Frontend RESET\0A\00", [37 x i8] zeroinitializer }, align 32
@mantis_frontend_soft_reset._entry_ptr.46 = internal global ptr @mantis_frontend_soft_reset._entry.44, section ".printk_index", align 4
@mantis_frontend_soft_reset._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s (%d): Frontend RESET\0A\00", [37 x i8] zeroinitializer }, align 32
@mantis_frontend_soft_reset._entry_ptr.49 = internal global ptr @mantis_frontend_soft_reset._entry.47, section ".printk_index", align 4
@mantis_frontend_soft_reset._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s (%d): Frontend RESET\0A\00", [37 x i8] zeroinitializer }, align 32
@mantis_frontend_soft_reset._entry_ptr.52 = internal global ptr @mantis_frontend_soft_reset._entry.50, section ".printk_index", align 4
@mantis_frontend_soft_reset._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_frontend_soft_reset._entry_ptr.54 = internal global ptr @mantis_frontend_soft_reset._entry.53, section ".printk_index", align 4
@__kstrtab_mantis_frontend_soft_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_frontend_soft_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_frontend_soft_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_frontend_soft_reset to i32), ptr @__kstrtab_mantis_frontend_soft_reset, ptr @__kstrtabns_mantis_frontend_soft_reset }, section "___ksymtab_gpl+mantis_frontend_soft_reset", align 4
@mantis_dvb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s (%d): dvb_register_adapter\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mantis_dvb_init\00", [16 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr = internal global ptr @mantis_dvb_init._entry, section ".printk_index", align 4
@mantis_dvb_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015%s (%d): dvb_register_adapter\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.59 = internal global ptr @mantis_dvb_init._entry.57, section ".printk_index", align 4
@mantis_dvb_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s (%d): dvb_register_adapter\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.62 = internal global ptr @mantis_dvb_init._entry.60, section ".printk_index", align 4
@mantis_dvb_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s (%d): dvb_register_adapter\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.65 = internal global ptr @mantis_dvb_init._entry.63, section ".printk_index", align 4
@mantis_dvb_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.67 = internal global ptr @mantis_dvb_init._entry.66, section ".printk_index", align 4
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mantis DVB adapter\00", [45 x i8] zeroinitializer }, align 32
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.56, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s (%d): Error registering adapter\0A\00", [58 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.71 = internal global ptr @mantis_dvb_init._entry.69, section ".printk_index", align 4
@mantis_dvb_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.56, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015%s (%d): Error registering adapter\0A\00", [58 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.74 = internal global ptr @mantis_dvb_init._entry.72, section ".printk_index", align 4
@mantis_dvb_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.56, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s (%d): Error registering adapter\0A\00", [58 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.77 = internal global ptr @mantis_dvb_init._entry.75, section ".printk_index", align 4
@mantis_dvb_init._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.56, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s (%d): Error registering adapter\0A\00", [58 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.80 = internal global ptr @mantis_dvb_init._entry.78, section ".printk_index", align 4
@mantis_dvb_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.56, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.82 = internal global ptr @mantis_dvb_init._entry.81, section ".printk_index", align 4
@mantis_dvb_init._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.56, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s (%d): dvb_dmx_init\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.85 = internal global ptr @mantis_dvb_init._entry.83, section ".printk_index", align 4
@mantis_dvb_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.56, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015%s (%d): dvb_dmx_init\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.88 = internal global ptr @mantis_dvb_init._entry.86, section ".printk_index", align 4
@mantis_dvb_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.56, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s (%d): dvb_dmx_init\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.91 = internal global ptr @mantis_dvb_init._entry.89, section ".printk_index", align 4
@mantis_dvb_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.56, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s (%d): dvb_dmx_init\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.94 = internal global ptr @mantis_dvb_init._entry.92, section ".printk_index", align 4
@mantis_dvb_init._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.56, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.96 = internal global ptr @mantis_dvb_init._entry.95, section ".printk_index", align 4
@mantis_dvb_init._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.56, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s (%d): dvb_dmx_init failed, ERROR=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.99 = internal global ptr @mantis_dvb_init._entry.97, section ".printk_index", align 4
@mantis_dvb_init._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.56, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015%s (%d): dvb_dmx_init failed, ERROR=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.102 = internal global ptr @mantis_dvb_init._entry.100, section ".printk_index", align 4
@mantis_dvb_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.56, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s (%d): dvb_dmx_init failed, ERROR=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.105 = internal global ptr @mantis_dvb_init._entry.103, section ".printk_index", align 4
@mantis_dvb_init._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.56, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s (%d): dvb_dmx_init failed, ERROR=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.108 = internal global ptr @mantis_dvb_init._entry.106, section ".printk_index", align 4
@mantis_dvb_init._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.56, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.110 = internal global ptr @mantis_dvb_init._entry.109, section ".printk_index", align 4
@mantis_dvb_init._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.56, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s (%d): dvb_dmxdev_init\0A\00", [36 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.113 = internal global ptr @mantis_dvb_init._entry.111, section ".printk_index", align 4
@mantis_dvb_init._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.56, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015%s (%d): dvb_dmxdev_init\0A\00", [36 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.116 = internal global ptr @mantis_dvb_init._entry.114, section ".printk_index", align 4
@mantis_dvb_init._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.56, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s (%d): dvb_dmxdev_init\0A\00", [36 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.119 = internal global ptr @mantis_dvb_init._entry.117, section ".printk_index", align 4
@mantis_dvb_init._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.56, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s (%d): dvb_dmxdev_init\0A\00", [36 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.122 = internal global ptr @mantis_dvb_init._entry.120, section ".printk_index", align 4
@mantis_dvb_init._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.56, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.124 = internal global ptr @mantis_dvb_init._entry.123, section ".printk_index", align 4
@mantis_dvb_init._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.56, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s (%d): dvb_dmxdev_init failed, ERROR=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.127 = internal global ptr @mantis_dvb_init._entry.125, section ".printk_index", align 4
@mantis_dvb_init._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.56, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015%s (%d): dvb_dmxdev_init failed, ERROR=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.130 = internal global ptr @mantis_dvb_init._entry.128, section ".printk_index", align 4
@mantis_dvb_init._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.56, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s (%d): dvb_dmxdev_init failed, ERROR=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.133 = internal global ptr @mantis_dvb_init._entry.131, section ".printk_index", align 4
@mantis_dvb_init._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.56, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s (%d): dvb_dmxdev_init failed, ERROR=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.136 = internal global ptr @mantis_dvb_init._entry.134, section ".printk_index", align 4
@mantis_dvb_init._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.56, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.138 = internal global ptr @mantis_dvb_init._entry.137, section ".printk_index", align 4
@mantis_dvb_init._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.56, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.140 = internal global ptr @mantis_dvb_init._entry.139, section ".printk_index", align 4
@mantis_dvb_init._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.56, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.142 = internal global ptr @mantis_dvb_init._entry.141, section ".printk_index", align 4
@mantis_dvb_init._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.56, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.144 = internal global ptr @mantis_dvb_init._entry.143, section ".printk_index", align 4
@mantis_dvb_init._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.56, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.146 = internal global ptr @mantis_dvb_init._entry.145, section ".printk_index", align 4
@mantis_dvb_init._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.56, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.148 = internal global ptr @mantis_dvb_init._entry.147, section ".printk_index", align 4
@mantis_dvb_init._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.56, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.150 = internal global ptr @mantis_dvb_init._entry.149, section ".printk_index", align 4
@mantis_dvb_init._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.56, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.152 = internal global ptr @mantis_dvb_init._entry.151, section ".printk_index", align 4
@mantis_dvb_init._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.56, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.154 = internal global ptr @mantis_dvb_init._entry.153, section ".printk_index", align 4
@mantis_dvb_init._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.56, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.156 = internal global ptr @mantis_dvb_init._entry.155, section ".printk_index", align 4
@mantis_dvb_init._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.56, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.158 = internal global ptr @mantis_dvb_init._entry.157, section ".printk_index", align 4
@mantis_dvb_init._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.56, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.160 = internal global ptr @mantis_dvb_init._entry.159, section ".printk_index", align 4
@mantis_dvb_init._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.56, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.162 = internal global ptr @mantis_dvb_init._entry.161, section ".printk_index", align 4
@mantis_dvb_init._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.56, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.164 = internal global ptr @mantis_dvb_init._entry.163, section ".printk_index", align 4
@mantis_dvb_init._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.56, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.166 = internal global ptr @mantis_dvb_init._entry.165, section ".printk_index", align 4
@mantis_dvb_init._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.56, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.168 = internal global ptr @mantis_dvb_init._entry.167, section ".printk_index", align 4
@mantis_dvb_init._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.56, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s (%d): !!! NO Frontends found !!!\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.171 = internal global ptr @mantis_dvb_init._entry.169, section ".printk_index", align 4
@mantis_dvb_init._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.56, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015%s (%d): !!! NO Frontends found !!!\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.174 = internal global ptr @mantis_dvb_init._entry.172, section ".printk_index", align 4
@mantis_dvb_init._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.56, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s (%d): !!! NO Frontends found !!!\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.177 = internal global ptr @mantis_dvb_init._entry.175, section ".printk_index", align 4
@mantis_dvb_init._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.56, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s (%d): !!! NO Frontends found !!!\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.180 = internal global ptr @mantis_dvb_init._entry.178, section ".printk_index", align 4
@mantis_dvb_init._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.56, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.182 = internal global ptr @mantis_dvb_init._entry.181, section ".printk_index", align 4
@mantis_dvb_init._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.56, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s (%d): FE <NULL>\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.185 = internal global ptr @mantis_dvb_init._entry.183, section ".printk_index", align 4
@mantis_dvb_init._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.56, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015%s (%d): FE <NULL>\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.188 = internal global ptr @mantis_dvb_init._entry.186, section ".printk_index", align 4
@mantis_dvb_init._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.56, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s (%d): FE <NULL>\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.191 = internal global ptr @mantis_dvb_init._entry.189, section ".printk_index", align 4
@mantis_dvb_init._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.56, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s (%d): FE <NULL>\0A\00", [42 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.194 = internal global ptr @mantis_dvb_init._entry.192, section ".printk_index", align 4
@mantis_dvb_init._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.56, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.196 = internal global ptr @mantis_dvb_init._entry.195, section ".printk_index", align 4
@mantis_dvb_init._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.56, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s (%d): ERROR: Frontend registration failed\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.199 = internal global ptr @mantis_dvb_init._entry.197, section ".printk_index", align 4
@mantis_dvb_init._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.56, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015%s (%d): ERROR: Frontend registration failed\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.202 = internal global ptr @mantis_dvb_init._entry.200, section ".printk_index", align 4
@mantis_dvb_init._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.56, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s (%d): ERROR: Frontend registration failed\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.205 = internal global ptr @mantis_dvb_init._entry.203, section ".printk_index", align 4
@mantis_dvb_init._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.56, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s (%d): ERROR: Frontend registration failed\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.208 = internal global ptr @mantis_dvb_init._entry.206, section ".printk_index", align 4
@mantis_dvb_init._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.56, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_init._entry_ptr.210 = internal global ptr @mantis_dvb_init._entry.209, section ".printk_index", align 4
@__kstrtab_mantis_dvb_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_dvb_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_dvb_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_dvb_init to i32), ptr @__kstrtab_mantis_dvb_init, ptr @__kstrtabns_mantis_dvb_init }, section "___ksymtab_gpl+mantis_dvb_init", align 4
@mantis_dvb_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s (%d): Frontend exit while POWER ON! <%d>\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mantis_dvb_exit\00", [16 x i8] zeroinitializer }, align 32
@mantis_dvb_exit._entry_ptr = internal global ptr @mantis_dvb_exit._entry, section ".printk_index", align 4
@mantis_dvb_exit._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.212, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015%s (%d): Frontend exit while POWER ON! <%d>\0A\00", [49 x i8] zeroinitializer }, align 32
@mantis_dvb_exit._entry_ptr.215 = internal global ptr @mantis_dvb_exit._entry.213, section ".printk_index", align 4
@mantis_dvb_exit._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.212, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s (%d): Frontend exit while POWER ON! <%d>\0A\00", [49 x i8] zeroinitializer }, align 32
@mantis_dvb_exit._entry_ptr.218 = internal global ptr @mantis_dvb_exit._entry.216, section ".printk_index", align 4
@mantis_dvb_exit._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.212, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s (%d): Frontend exit while POWER ON! <%d>\0A\00", [49 x i8] zeroinitializer }, align 32
@mantis_dvb_exit._entry_ptr.221 = internal global ptr @mantis_dvb_exit._entry.219, section ".printk_index", align 4
@mantis_dvb_exit._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.212, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_exit._entry_ptr.223 = internal global ptr @mantis_dvb_exit._entry.222, section ".printk_index", align 4
@mantis_dvb_exit._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.212, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s (%d): dvb_unregister_adapter\0A\00", [61 x i8] zeroinitializer }, align 32
@mantis_dvb_exit._entry_ptr.226 = internal global ptr @mantis_dvb_exit._entry.224, section ".printk_index", align 4
@mantis_dvb_exit._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.212, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015%s (%d): dvb_unregister_adapter\0A\00", [61 x i8] zeroinitializer }, align 32
@mantis_dvb_exit._entry_ptr.229 = internal global ptr @mantis_dvb_exit._entry.227, section ".printk_index", align 4
@mantis_dvb_exit._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.212, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s (%d): dvb_unregister_adapter\0A\00", [61 x i8] zeroinitializer }, align 32
@mantis_dvb_exit._entry_ptr.232 = internal global ptr @mantis_dvb_exit._entry.230, section ".printk_index", align 4
@mantis_dvb_exit._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.212, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s (%d): dvb_unregister_adapter\0A\00", [61 x i8] zeroinitializer }, align 32
@mantis_dvb_exit._entry_ptr.235 = internal global ptr @mantis_dvb_exit._entry.233, section ".printk_index", align 4
@mantis_dvb_exit._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.212, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_exit._entry_ptr.237 = internal global ptr @mantis_dvb_exit._entry.236, section ".printk_index", align 4
@__kstrtab_mantis_dvb_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_dvb_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_dvb_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_dvb_exit to i32), ptr @__kstrtab_mantis_dvb_exit, ptr @__kstrtabns_mantis_dvb_exit }, section "___ksymtab_gpl+mantis_dvb_exit", align 4
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@mantis_dvb_start_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.239, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s (%d): Mantis DVB Start feed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mantis_dvb_start_feed\00", [42 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr = internal global ptr @mantis_dvb_start_feed._entry, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.239, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015%s (%d): Mantis DVB Start feed\0A\00", [62 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.242 = internal global ptr @mantis_dvb_start_feed._entry.240, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.239, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s (%d): Mantis DVB Start feed\0A\00", [62 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.245 = internal global ptr @mantis_dvb_start_feed._entry.243, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.239, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s (%d): Mantis DVB Start feed\0A\00", [62 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.248 = internal global ptr @mantis_dvb_start_feed._entry.246, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.239, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.250 = internal global ptr @mantis_dvb_start_feed._entry.249, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.239, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s (%d): no frontend ?\0A\00", [38 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.253 = internal global ptr @mantis_dvb_start_feed._entry.251, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.239, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015%s (%d): no frontend ?\0A\00", [38 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.256 = internal global ptr @mantis_dvb_start_feed._entry.254, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.239, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s (%d): no frontend ?\0A\00", [38 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.259 = internal global ptr @mantis_dvb_start_feed._entry.257, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.239, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s (%d): no frontend ?\0A\00", [38 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.262 = internal global ptr @mantis_dvb_start_feed._entry.260, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.239, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.264 = internal global ptr @mantis_dvb_start_feed._entry.263, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.239, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s (%d): mantis start feed, feeds=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.267 = internal global ptr @mantis_dvb_start_feed._entry.265, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.239, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015%s (%d): mantis start feed, feeds=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.270 = internal global ptr @mantis_dvb_start_feed._entry.268, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.239, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s (%d): mantis start feed, feeds=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.273 = internal global ptr @mantis_dvb_start_feed._entry.271, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.239, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s (%d): mantis start feed, feeds=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.276 = internal global ptr @mantis_dvb_start_feed._entry.274, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.239, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.278 = internal global ptr @mantis_dvb_start_feed._entry.277, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.239, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s (%d): mantis start feed & dma\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.281 = internal global ptr @mantis_dvb_start_feed._entry.279, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.239, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015%s (%d): mantis start feed & dma\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.284 = internal global ptr @mantis_dvb_start_feed._entry.282, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.239, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s (%d): mantis start feed & dma\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.287 = internal global ptr @mantis_dvb_start_feed._entry.285, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.239, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s (%d): mantis start feed & dma\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.290 = internal global ptr @mantis_dvb_start_feed._entry.288, section ".printk_index", align 4
@mantis_dvb_start_feed._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.239, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_start_feed._entry_ptr.292 = internal global ptr @mantis_dvb_start_feed._entry.291, section ".printk_index", align 4
@mantis_dvb_stop_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @.str.294, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s (%d): Mantis DVB Stop feed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mantis_dvb_stop_feed\00", [43 x i8] zeroinitializer }, align 32
@mantis_dvb_stop_feed._entry_ptr = internal global ptr @mantis_dvb_stop_feed._entry, section ".printk_index", align 4
@mantis_dvb_stop_feed._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.296, ptr @.str.294, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015%s (%d): Mantis DVB Stop feed\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_dvb_stop_feed._entry_ptr.297 = internal global ptr @mantis_dvb_stop_feed._entry.295, section ".printk_index", align 4
@mantis_dvb_stop_feed._entry.298 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.294, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s (%d): Mantis DVB Stop feed\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_dvb_stop_feed._entry_ptr.300 = internal global ptr @mantis_dvb_stop_feed._entry.298, section ".printk_index", align 4
@mantis_dvb_stop_feed._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.294, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s (%d): Mantis DVB Stop feed\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_dvb_stop_feed._entry_ptr.303 = internal global ptr @mantis_dvb_stop_feed._entry.301, section ".printk_index", align 4
@mantis_dvb_stop_feed._entry.304 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.294, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_stop_feed._entry_ptr.305 = internal global ptr @mantis_dvb_stop_feed._entry.304, section ".printk_index", align 4
@mantis_dvb_stop_feed._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.294, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_stop_feed._entry_ptr.307 = internal global ptr @mantis_dvb_stop_feed._entry.306, section ".printk_index", align 4
@mantis_dvb_stop_feed._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.294, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_stop_feed._entry_ptr.309 = internal global ptr @mantis_dvb_stop_feed._entry.308, section ".printk_index", align 4
@mantis_dvb_stop_feed._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.294, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_stop_feed._entry_ptr.311 = internal global ptr @mantis_dvb_stop_feed._entry.310, section ".printk_index", align 4
@mantis_dvb_stop_feed._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.294, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_stop_feed._entry_ptr.313 = internal global ptr @mantis_dvb_stop_feed._entry.312, section ".printk_index", align 4
@mantis_dvb_stop_feed._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.294, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_stop_feed._entry_ptr.315 = internal global ptr @mantis_dvb_stop_feed._entry.314, section ".printk_index", align 4
@mantis_dvb_stop_feed._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.317, ptr @.str.294, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s (%d): mantis stop feed and dma\0A\00", [59 x i8] zeroinitializer }, align 32
@mantis_dvb_stop_feed._entry_ptr.318 = internal global ptr @mantis_dvb_stop_feed._entry.316, section ".printk_index", align 4
@mantis_dvb_stop_feed._entry.319 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.320, ptr @.str.294, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015%s (%d): mantis stop feed and dma\0A\00", [59 x i8] zeroinitializer }, align 32
@mantis_dvb_stop_feed._entry_ptr.321 = internal global ptr @mantis_dvb_stop_feed._entry.319, section ".printk_index", align 4
@mantis_dvb_stop_feed._entry.322 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.323, ptr @.str.294, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s (%d): mantis stop feed and dma\0A\00", [59 x i8] zeroinitializer }, align 32
@mantis_dvb_stop_feed._entry_ptr.324 = internal global ptr @mantis_dvb_stop_feed._entry.322, section ".printk_index", align 4
@mantis_dvb_stop_feed._entry.325 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.294, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s (%d): mantis stop feed and dma\0A\00", [59 x i8] zeroinitializer }, align 32
@mantis_dvb_stop_feed._entry_ptr.327 = internal global ptr @mantis_dvb_stop_feed._entry.325, section ".printk_index", align 4
@mantis_dvb_stop_feed._entry.328 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.294, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dvb_stop_feed._entry_ptr.329 = internal global ptr @mantis_dvb_stop_feed._entry.328, section ".printk_index", align 4
@mantis_frontend_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.330, ptr @.str.331, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s (%d): Frontend POWER OFF failed! <%d>\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mantis_frontend_shutdown\00", [39 x i8] zeroinitializer }, align 32
@mantis_frontend_shutdown._entry_ptr = internal global ptr @mantis_frontend_shutdown._entry, section ".printk_index", align 4
@mantis_frontend_shutdown._entry.332 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.331, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015%s (%d): Frontend POWER OFF failed! <%d>\0A\00", [52 x i8] zeroinitializer }, align 32
@mantis_frontend_shutdown._entry_ptr.334 = internal global ptr @mantis_frontend_shutdown._entry.332, section ".printk_index", align 4
@mantis_frontend_shutdown._entry.335 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.336, ptr @.str.331, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s (%d): Frontend POWER OFF failed! <%d>\0A\00", [52 x i8] zeroinitializer }, align 32
@mantis_frontend_shutdown._entry_ptr.337 = internal global ptr @mantis_frontend_shutdown._entry.335, section ".printk_index", align 4
@mantis_frontend_shutdown._entry.338 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @.str.331, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s (%d): Frontend POWER OFF failed! <%d>\0A\00", [52 x i8] zeroinitializer }, align 32
@mantis_frontend_shutdown._entry_ptr.340 = internal global ptr @mantis_frontend_shutdown._entry.338, section ".printk_index", align 4
@mantis_frontend_shutdown._entry.341 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @.str.331, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_frontend_shutdown._entry_ptr.342 = internal global ptr @mantis_frontend_shutdown._entry.341, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 37, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 45, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 51, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 63, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 140, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 143, i32 11 }
@___asan_gen_.493 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 29, i32 1 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 150, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 166, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 169, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 177, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 182, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 190, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 197, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 203, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 213, i32 4 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 218, i32 5 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 223, i32 5 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 271, i32 4 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 285, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 96, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 98, i32 3 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 103, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 106, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 119, i32 2 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 121, i32 3 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 127, i32 3 }
@___asan_gen_.1021 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1024 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1025 = private constant [41 x i8] c"../drivers/media/pci/mantis/mantis_dvb.c\00", align 1
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 84, i32 3 }
@llvm.compiler.used = appending global [365 x ptr] [ptr @__UNIQUE_ID_adapter_nr384, ptr @__UNIQUE_ID_adapter_nrtype383, ptr @__ksymtab_mantis_dvb_exit, ptr @__ksymtab_mantis_dvb_init, ptr @__ksymtab_mantis_frontend_power, ptr @__ksymtab_mantis_frontend_soft_reset, ptr @__param_adapter_nr, ptr @mantis_dvb_exit._entry, ptr @mantis_dvb_exit._entry.213, ptr @mantis_dvb_exit._entry.216, ptr @mantis_dvb_exit._entry.219, ptr @mantis_dvb_exit._entry.222, ptr @mantis_dvb_exit._entry.224, ptr @mantis_dvb_exit._entry.227, ptr @mantis_dvb_exit._entry.230, ptr @mantis_dvb_exit._entry.233, ptr @mantis_dvb_exit._entry.236, ptr @mantis_dvb_exit._entry_ptr, ptr @mantis_dvb_exit._entry_ptr.215, ptr @mantis_dvb_exit._entry_ptr.218, ptr @mantis_dvb_exit._entry_ptr.221, ptr @mantis_dvb_exit._entry_ptr.223, ptr @mantis_dvb_exit._entry_ptr.226, ptr @mantis_dvb_exit._entry_ptr.229, ptr @mantis_dvb_exit._entry_ptr.232, ptr @mantis_dvb_exit._entry_ptr.235, ptr @mantis_dvb_exit._entry_ptr.237, ptr @mantis_dvb_init._entry, ptr @mantis_dvb_init._entry.100, ptr @mantis_dvb_init._entry.103, ptr @mantis_dvb_init._entry.106, ptr @mantis_dvb_init._entry.109, ptr @mantis_dvb_init._entry.111, ptr @mantis_dvb_init._entry.114, ptr @mantis_dvb_init._entry.117, ptr @mantis_dvb_init._entry.120, ptr @mantis_dvb_init._entry.123, ptr @mantis_dvb_init._entry.125, ptr @mantis_dvb_init._entry.128, ptr @mantis_dvb_init._entry.131, ptr @mantis_dvb_init._entry.134, ptr @mantis_dvb_init._entry.137, ptr @mantis_dvb_init._entry.139, ptr @mantis_dvb_init._entry.141, ptr @mantis_dvb_init._entry.143, ptr @mantis_dvb_init._entry.145, ptr @mantis_dvb_init._entry.147, ptr @mantis_dvb_init._entry.149, ptr @mantis_dvb_init._entry.151, ptr @mantis_dvb_init._entry.153, ptr @mantis_dvb_init._entry.155, ptr @mantis_dvb_init._entry.157, ptr @mantis_dvb_init._entry.159, ptr @mantis_dvb_init._entry.161, ptr @mantis_dvb_init._entry.163, ptr @mantis_dvb_init._entry.165, ptr @mantis_dvb_init._entry.167, ptr @mantis_dvb_init._entry.169, ptr @mantis_dvb_init._entry.172, ptr @mantis_dvb_init._entry.175, ptr @mantis_dvb_init._entry.178, ptr @mantis_dvb_init._entry.181, ptr @mantis_dvb_init._entry.183, ptr @mantis_dvb_init._entry.186, ptr @mantis_dvb_init._entry.189, ptr @mantis_dvb_init._entry.192, ptr @mantis_dvb_init._entry.195, ptr @mantis_dvb_init._entry.197, ptr @mantis_dvb_init._entry.200, ptr @mantis_dvb_init._entry.203, ptr @mantis_dvb_init._entry.206, ptr @mantis_dvb_init._entry.209, ptr @mantis_dvb_init._entry.57, ptr @mantis_dvb_init._entry.60, ptr @mantis_dvb_init._entry.63, ptr @mantis_dvb_init._entry.66, ptr @mantis_dvb_init._entry.69, ptr @mantis_dvb_init._entry.72, ptr @mantis_dvb_init._entry.75, ptr @mantis_dvb_init._entry.78, ptr @mantis_dvb_init._entry.81, ptr @mantis_dvb_init._entry.83, ptr @mantis_dvb_init._entry.86, ptr @mantis_dvb_init._entry.89, ptr @mantis_dvb_init._entry.92, ptr @mantis_dvb_init._entry.95, ptr @mantis_dvb_init._entry.97, ptr @mantis_dvb_init._entry_ptr, ptr @mantis_dvb_init._entry_ptr.102, ptr @mantis_dvb_init._entry_ptr.105, ptr @mantis_dvb_init._entry_ptr.108, ptr @mantis_dvb_init._entry_ptr.110, ptr @mantis_dvb_init._entry_ptr.113, ptr @mantis_dvb_init._entry_ptr.116, ptr @mantis_dvb_init._entry_ptr.119, ptr @mantis_dvb_init._entry_ptr.122, ptr @mantis_dvb_init._entry_ptr.124, ptr @mantis_dvb_init._entry_ptr.127, ptr @mantis_dvb_init._entry_ptr.130, ptr @mantis_dvb_init._entry_ptr.133, ptr @mantis_dvb_init._entry_ptr.136, ptr @mantis_dvb_init._entry_ptr.138, ptr @mantis_dvb_init._entry_ptr.140, ptr @mantis_dvb_init._entry_ptr.142, ptr @mantis_dvb_init._entry_ptr.144, ptr @mantis_dvb_init._entry_ptr.146, ptr @mantis_dvb_init._entry_ptr.148, ptr @mantis_dvb_init._entry_ptr.150, ptr @mantis_dvb_init._entry_ptr.152, ptr @mantis_dvb_init._entry_ptr.154, ptr @mantis_dvb_init._entry_ptr.156, ptr @mantis_dvb_init._entry_ptr.158, ptr @mantis_dvb_init._entry_ptr.160, ptr @mantis_dvb_init._entry_ptr.162, ptr @mantis_dvb_init._entry_ptr.164, ptr @mantis_dvb_init._entry_ptr.166, ptr @mantis_dvb_init._entry_ptr.168, ptr @mantis_dvb_init._entry_ptr.171, ptr @mantis_dvb_init._entry_ptr.174, ptr @mantis_dvb_init._entry_ptr.177, ptr @mantis_dvb_init._entry_ptr.180, ptr @mantis_dvb_init._entry_ptr.182, ptr @mantis_dvb_init._entry_ptr.185, ptr @mantis_dvb_init._entry_ptr.188, ptr @mantis_dvb_init._entry_ptr.191, ptr @mantis_dvb_init._entry_ptr.194, ptr @mantis_dvb_init._entry_ptr.196, ptr @mantis_dvb_init._entry_ptr.199, ptr @mantis_dvb_init._entry_ptr.202, ptr @mantis_dvb_init._entry_ptr.205, ptr @mantis_dvb_init._entry_ptr.208, ptr @mantis_dvb_init._entry_ptr.210, ptr @mantis_dvb_init._entry_ptr.59, ptr @mantis_dvb_init._entry_ptr.62, ptr @mantis_dvb_init._entry_ptr.65, ptr @mantis_dvb_init._entry_ptr.67, ptr @mantis_dvb_init._entry_ptr.71, ptr @mantis_dvb_init._entry_ptr.74, ptr @mantis_dvb_init._entry_ptr.77, ptr @mantis_dvb_init._entry_ptr.80, ptr @mantis_dvb_init._entry_ptr.82, ptr @mantis_dvb_init._entry_ptr.85, ptr @mantis_dvb_init._entry_ptr.88, ptr @mantis_dvb_init._entry_ptr.91, ptr @mantis_dvb_init._entry_ptr.94, ptr @mantis_dvb_init._entry_ptr.96, ptr @mantis_dvb_init._entry_ptr.99, ptr @mantis_dvb_start_feed._entry, ptr @mantis_dvb_start_feed._entry.240, ptr @mantis_dvb_start_feed._entry.243, ptr @mantis_dvb_start_feed._entry.246, ptr @mantis_dvb_start_feed._entry.249, ptr @mantis_dvb_start_feed._entry.251, ptr @mantis_dvb_start_feed._entry.254, ptr @mantis_dvb_start_feed._entry.257, ptr @mantis_dvb_start_feed._entry.260, ptr @mantis_dvb_start_feed._entry.263, ptr @mantis_dvb_start_feed._entry.265, ptr @mantis_dvb_start_feed._entry.268, ptr @mantis_dvb_start_feed._entry.271, ptr @mantis_dvb_start_feed._entry.274, ptr @mantis_dvb_start_feed._entry.277, ptr @mantis_dvb_start_feed._entry.279, ptr @mantis_dvb_start_feed._entry.282, ptr @mantis_dvb_start_feed._entry.285, ptr @mantis_dvb_start_feed._entry.288, ptr @mantis_dvb_start_feed._entry.291, ptr @mantis_dvb_start_feed._entry_ptr, ptr @mantis_dvb_start_feed._entry_ptr.242, ptr @mantis_dvb_start_feed._entry_ptr.245, ptr @mantis_dvb_start_feed._entry_ptr.248, ptr @mantis_dvb_start_feed._entry_ptr.250, ptr @mantis_dvb_start_feed._entry_ptr.253, ptr @mantis_dvb_start_feed._entry_ptr.256, ptr @mantis_dvb_start_feed._entry_ptr.259, ptr @mantis_dvb_start_feed._entry_ptr.262, ptr @mantis_dvb_start_feed._entry_ptr.264, ptr @mantis_dvb_start_feed._entry_ptr.267, ptr @mantis_dvb_start_feed._entry_ptr.270, ptr @mantis_dvb_start_feed._entry_ptr.273, ptr @mantis_dvb_start_feed._entry_ptr.276, ptr @mantis_dvb_start_feed._entry_ptr.278, ptr @mantis_dvb_start_feed._entry_ptr.281, ptr @mantis_dvb_start_feed._entry_ptr.284, ptr @mantis_dvb_start_feed._entry_ptr.287, ptr @mantis_dvb_start_feed._entry_ptr.290, ptr @mantis_dvb_start_feed._entry_ptr.292, ptr @mantis_dvb_stop_feed._entry, ptr @mantis_dvb_stop_feed._entry.295, ptr @mantis_dvb_stop_feed._entry.298, ptr @mantis_dvb_stop_feed._entry.301, ptr @mantis_dvb_stop_feed._entry.304, ptr @mantis_dvb_stop_feed._entry.306, ptr @mantis_dvb_stop_feed._entry.308, ptr @mantis_dvb_stop_feed._entry.310, ptr @mantis_dvb_stop_feed._entry.312, ptr @mantis_dvb_stop_feed._entry.314, ptr @mantis_dvb_stop_feed._entry.316, ptr @mantis_dvb_stop_feed._entry.319, ptr @mantis_dvb_stop_feed._entry.322, ptr @mantis_dvb_stop_feed._entry.325, ptr @mantis_dvb_stop_feed._entry.328, ptr @mantis_dvb_stop_feed._entry_ptr, ptr @mantis_dvb_stop_feed._entry_ptr.297, ptr @mantis_dvb_stop_feed._entry_ptr.300, ptr @mantis_dvb_stop_feed._entry_ptr.303, ptr @mantis_dvb_stop_feed._entry_ptr.305, ptr @mantis_dvb_stop_feed._entry_ptr.307, ptr @mantis_dvb_stop_feed._entry_ptr.309, ptr @mantis_dvb_stop_feed._entry_ptr.311, ptr @mantis_dvb_stop_feed._entry_ptr.313, ptr @mantis_dvb_stop_feed._entry_ptr.315, ptr @mantis_dvb_stop_feed._entry_ptr.318, ptr @mantis_dvb_stop_feed._entry_ptr.321, ptr @mantis_dvb_stop_feed._entry_ptr.324, ptr @mantis_dvb_stop_feed._entry_ptr.327, ptr @mantis_dvb_stop_feed._entry_ptr.329, ptr @mantis_frontend_power._entry, ptr @mantis_frontend_power._entry.12, ptr @mantis_frontend_power._entry.14, ptr @mantis_frontend_power._entry.17, ptr @mantis_frontend_power._entry.20, ptr @mantis_frontend_power._entry.23, ptr @mantis_frontend_power._entry.26, ptr @mantis_frontend_power._entry.28, ptr @mantis_frontend_power._entry.3, ptr @mantis_frontend_power._entry.31, ptr @mantis_frontend_power._entry.34, ptr @mantis_frontend_power._entry.37, ptr @mantis_frontend_power._entry.40, ptr @mantis_frontend_power._entry.6, ptr @mantis_frontend_power._entry.9, ptr @mantis_frontend_power._entry_ptr, ptr @mantis_frontend_power._entry_ptr.11, ptr @mantis_frontend_power._entry_ptr.13, ptr @mantis_frontend_power._entry_ptr.16, ptr @mantis_frontend_power._entry_ptr.19, ptr @mantis_frontend_power._entry_ptr.22, ptr @mantis_frontend_power._entry_ptr.25, ptr @mantis_frontend_power._entry_ptr.27, ptr @mantis_frontend_power._entry_ptr.30, ptr @mantis_frontend_power._entry_ptr.33, ptr @mantis_frontend_power._entry_ptr.36, ptr @mantis_frontend_power._entry_ptr.39, ptr @mantis_frontend_power._entry_ptr.41, ptr @mantis_frontend_power._entry_ptr.5, ptr @mantis_frontend_power._entry_ptr.8, ptr @mantis_frontend_shutdown._entry, ptr @mantis_frontend_shutdown._entry.332, ptr @mantis_frontend_shutdown._entry.335, ptr @mantis_frontend_shutdown._entry.338, ptr @mantis_frontend_shutdown._entry.341, ptr @mantis_frontend_shutdown._entry_ptr, ptr @mantis_frontend_shutdown._entry_ptr.334, ptr @mantis_frontend_shutdown._entry_ptr.337, ptr @mantis_frontend_shutdown._entry_ptr.340, ptr @mantis_frontend_shutdown._entry_ptr.342, ptr @mantis_frontend_soft_reset._entry, ptr @mantis_frontend_soft_reset._entry.44, ptr @mantis_frontend_soft_reset._entry.47, ptr @mantis_frontend_soft_reset._entry.50, ptr @mantis_frontend_soft_reset._entry.53, ptr @mantis_frontend_soft_reset._entry_ptr, ptr @mantis_frontend_soft_reset._entry_ptr.46, ptr @mantis_frontend_soft_reset._entry_ptr.49, ptr @mantis_frontend_soft_reset._entry_ptr.52, ptr @mantis_frontend_soft_reset._entry_ptr.54, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.68, ptr @adapter_nr, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.170, ptr @.str.173, ptr @.str.176, ptr @.str.179, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @.str.211, ptr @.str.212, ptr @.str.214, ptr @.str.217, ptr @.str.220, ptr @.str.225, ptr @.str.228, ptr @.str.231, ptr @.str.234, ptr @.str.238, ptr @.str.239, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @.str.252, ptr @.str.255, ptr @.str.258, ptr @.str.261, ptr @.str.266, ptr @.str.269, ptr @.str.272, ptr @.str.275, ptr @.str.280, ptr @.str.283, ptr @.str.286, ptr @.str.289, ptr @.str.293, ptr @.str.294, ptr @.str.296, ptr @.str.299, ptr @.str.302, ptr @.str.317, ptr @.str.320, ptr @.str.323, ptr @.str.326, ptr @.str.330, ptr @.str.331, ptr @.str.333, ptr @.str.336, ptr @.str.339], section "llvm.metadata"
@0 = internal global [228 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_power._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_power._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_power._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_power._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_power._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_power._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_power._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_power._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_power._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_power._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_power._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_power._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_power._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_power._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_soft_reset._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_soft_reset._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_soft_reset._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_soft_reset._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_init._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_exit._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_exit._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_exit._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_exit._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_exit._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_exit._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_exit._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_exit._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_exit._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_start_feed._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_stop_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_stop_feed._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_stop_feed._entry.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_stop_feed._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_stop_feed._entry.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_stop_feed._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_stop_feed._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_stop_feed._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_stop_feed._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_stop_feed._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_stop_feed._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_stop_feed._entry.319 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_stop_feed._entry.322 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_stop_feed._entry.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dvb_stop_feed._entry.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_shutdown._entry.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_shutdown._entry.335 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_shutdown._entry.338 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_frontend_shutdown._entry.341 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_frontend_power(ptr noundef %mantis, i32 noundef %power) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hwconfig = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 32
  %0 = ptrtoint ptr %hwconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwconfig, align 4
  %2 = zext i32 %power to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %power, label %do.body149 [
    i32 1, label %do.body
    i32 0, label %do.body65
  ]

do.body:                                          ; preds = %entry
  %3 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %switch = icmp ult i32 %4, 4
  br i1 %switch, label %do.body.do.end60_crit_edge, label %do.end

do.body.do.end60_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %6) #7
  br label %do.end60

do.end60:                                         ; preds = %do.end, %do.body.do.end60_crit_edge
  %power61 = getelementptr inbounds %struct.mantis_hwconfig, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %power61 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %power61, align 4
  %conv = zext i8 %8 to i32
  tail call void @mantis_gpio_set_bits(ptr noundef %mantis, i32 noundef %conv, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 100) #4
  %9 = ptrtoint ptr %power61 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %power61, align 4
  %conv63 = zext i8 %10 to i32
  tail call void @mantis_gpio_set_bits(ptr noundef %mantis, i32 noundef %conv63, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 100) #4
  br label %cleanup

do.body65:                                        ; preds = %entry
  %11 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %switch307 = icmp ult i32 %12, 4
  br i1 %switch307, label %do.body65.do.end146_crit_edge, label %do.end76

do.body65.do.end146_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end146

do.end76:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #6
  %num78 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %13 = ptrtoint ptr %num78 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num78, align 8
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef %14) #7
  br label %do.end146

do.end146:                                        ; preds = %do.end76, %do.body65.do.end146_crit_edge
  %power147 = getelementptr inbounds %struct.mantis_hwconfig, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %power147 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %power147, align 4
  %conv148 = zext i8 %16 to i32
  tail call void @mantis_gpio_set_bits(ptr noundef %mantis, i32 noundef %conv148, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 100) #4
  br label %cleanup

do.body149:                                       ; preds = %entry
  %17 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %switch310 = icmp ult i32 %18, 4
  br i1 %switch310, label %do.body149.cleanup_crit_edge, label %do.end160

do.body149.cleanup_crit_edge:                     ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end160:                                        ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #6
  %num162 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %19 = ptrtoint ptr %num162 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num162, align 8
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef %20, i32 noundef %power) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end160, %do.body149.cleanup_crit_edge, %do.end146, %do.end60
  %retval.0 = phi i32 [ -1, %do.end160 ], [ 0, %do.end146 ], [ 0, %do.end60 ], [ -1, %do.body149.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_gpio_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mantis_frontend_soft_reset(ptr noundef %mantis) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hwconfig = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 32
  %0 = ptrtoint ptr %hwconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwconfig, align 4
  %2 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch = icmp ult i32 %3, 4
  br i1 %switch, label %entry.do.end60_crit_edge, label %do.end

entry.do.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %5) #7
  br label %do.end60

do.end60:                                         ; preds = %do.end, %entry.do.end60_crit_edge
  %reset = getelementptr inbounds %struct.mantis_hwconfig, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reset, align 1
  %conv = zext i8 %7 to i32
  tail call void @mantis_gpio_set_bits(ptr noundef %mantis, i32 noundef %conv, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 100) #4
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reset, align 1
  %conv62 = zext i8 %9 to i32
  tail call void @mantis_gpio_set_bits(ptr noundef %mantis, i32 noundef %conv62, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 100) #4
  %10 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reset, align 1
  %conv64 = zext i8 %11 to i32
  tail call void @mantis_gpio_set_bits(ptr noundef %mantis, i32 noundef %conv64, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 100) #4
  %12 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reset, align 1
  %conv66 = zext i8 %13 to i32
  tail call void @mantis_gpio_set_bits(ptr noundef %mantis, i32 noundef %conv66, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 100) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_dvb_init(ptr noundef %mantis) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hwconfig = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 32
  %0 = ptrtoint ptr %hwconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwconfig, align 4
  %2 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch = icmp ult i32 %3, 4
  br i1 %switch, label %entry.do.end60_crit_edge, label %do.end

entry.do.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %5) #7
  br label %do.end60

do.end60:                                         ; preds = %do.end, %entry.do.end60_crit_edge
  %dvb_adapter = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 24
  %pdev = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 6
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call61 = tail call i32 @dvb_register_adapter(ptr noundef %dvb_adapter, ptr noundef nonnull @.str.68, ptr noundef null, ptr noundef %dev, ptr noundef nonnull @adapter_nr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %do.body64, label %if.end136

do.body64:                                        ; preds = %do.end60
  %8 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp66.not = icmp eq i32 %9, 0
  br i1 %cmp66.not, label %do.body64.cleanup_crit_edge, label %do.end73

do.body64.cleanup_crit_edge:                      ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end73:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  %num75 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %10 = ptrtoint ptr %num75 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num75, align 8
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.56, i32 noundef %11) #7
  br label %cleanup

if.end136:                                        ; preds = %do.end60
  %priv = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 24, i32 5
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mantis, ptr %priv, align 4
  %demux = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 26
  %13 = ptrtoint ptr %demux to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 13, ptr %demux, align 8
  %priv139 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 26, i32 1
  %14 = ptrtoint ptr %priv139 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %mantis, ptr %priv139, align 4
  %filternum = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 26, i32 2
  %15 = ptrtoint ptr %filternum to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 256, ptr %filternum, align 8
  %feednum = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 26, i32 3
  %16 = ptrtoint ptr %feednum to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 256, ptr %feednum, align 4
  %start_feed = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 26, i32 4
  %17 = ptrtoint ptr %start_feed to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mantis_dvb_start_feed, ptr %start_feed, align 8
  %stop_feed = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 26, i32 5
  %18 = ptrtoint ptr %stop_feed to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mantis_dvb_stop_feed, ptr %stop_feed, align 4
  %write_to_decoder = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 26, i32 6
  %19 = ptrtoint ptr %write_to_decoder to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %write_to_decoder, align 8
  %20 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %switch1267 = icmp ult i32 %21, 4
  br i1 %switch1267, label %if.end136.do.end216_crit_edge, label %do.end154

if.end136.do.end216_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end216

do.end154:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  %num156 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %22 = ptrtoint ptr %num156 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num156, align 8
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.56, i32 noundef %23) #7
  br label %do.end216

do.end216:                                        ; preds = %do.end154, %if.end136.do.end216_crit_edge
  %call218 = tail call i32 @dvb_dmx_init(ptr noundef %demux) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %cmp219 = icmp slt i32 %call218, 0
  br i1 %cmp219, label %do.body221, label %if.end293

do.body221:                                       ; preds = %do.end216
  %24 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp223.not = icmp eq i32 %25, 0
  br i1 %cmp223.not, label %do.body221.err0_crit_edge, label %do.end230

do.body221.err0_crit_edge:                        ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #6
  br label %err0

do.end230:                                        ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #6
  %num232 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %26 = ptrtoint ptr %num232 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num232, align 8
  %call233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.56, i32 noundef %27, i32 noundef %call218) #7
  br label %err0

if.end293:                                        ; preds = %do.end216
  %dmxdev = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 27
  %filternum294 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 27, i32 4
  %28 = ptrtoint ptr %filternum294 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 256, ptr %filternum294, align 8
  %demux298 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 27, i32 3
  %29 = ptrtoint ptr %demux298 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %demux, ptr %demux298, align 4
  %capabilities300 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 27, i32 5
  %30 = ptrtoint ptr %capabilities300 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %capabilities300, align 4
  %31 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %switch1270 = icmp ult i32 %32, 4
  br i1 %switch1270, label %if.end293.do.end372_crit_edge, label %do.end310

if.end293.do.end372_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end372

do.end310:                                        ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #6
  %num312 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %33 = ptrtoint ptr %num312 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num312, align 8
  %call313 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.56, i32 noundef %34) #7
  br label %do.end372

do.end372:                                        ; preds = %do.end310, %if.end293.do.end372_crit_edge
  %call375 = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev, ptr noundef %dvb_adapter) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call375)
  %cmp376 = icmp slt i32 %call375, 0
  br i1 %cmp376, label %do.body378, label %if.end450

do.body378:                                       ; preds = %do.end372
  %35 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp380.not = icmp eq i32 %36, 0
  br i1 %cmp380.not, label %do.body378.err1_crit_edge, label %do.end387

do.body378.err1_crit_edge:                        ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #6
  br label %err1

do.end387:                                        ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #6
  %num389 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %37 = ptrtoint ptr %num389 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num389, align 8
  %call390 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.56, i32 noundef %38, i32 noundef %call375) #7
  br label %err1

if.end450:                                        ; preds = %do.end372
  %fe_hw = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 28
  %source = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 28, i32 1
  %39 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %source, align 8
  %add_frontend = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 26, i32 0, i32 10
  %40 = ptrtoint ptr %add_frontend to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add_frontend, align 8
  %call456 = tail call i32 %41(ptr noundef %demux, ptr noundef %fe_hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call456)
  %cmp457 = icmp slt i32 %call456, 0
  br i1 %cmp457, label %do.body459, label %if.end531

do.body459:                                       ; preds = %if.end450
  %42 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp461.not = icmp eq i32 %43, 0
  br i1 %cmp461.not, label %do.body459.err2_crit_edge, label %do.end468

do.body459.err2_crit_edge:                        ; preds = %do.body459
  call void @__sanitizer_cov_trace_pc() #6
  br label %err2

do.end468:                                        ; preds = %do.body459
  call void @__sanitizer_cov_trace_pc() #6
  %num470 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %44 = ptrtoint ptr %num470 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num470, align 8
  %call471 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.56, i32 noundef %45, i32 noundef %call456) #7
  br label %err2

if.end531:                                        ; preds = %if.end450
  %fe_mem = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 29
  %source532 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 29, i32 1
  %46 = ptrtoint ptr %source532 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %source532, align 4
  %47 = ptrtoint ptr %add_frontend to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add_frontend, align 8
  %call539 = tail call i32 %48(ptr noundef %demux, ptr noundef %fe_mem) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call539)
  %cmp540 = icmp slt i32 %call539, 0
  br i1 %cmp540, label %do.body542, label %if.end614

do.body542:                                       ; preds = %if.end531
  %49 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp544.not = icmp eq i32 %50, 0
  br i1 %cmp544.not, label %do.body542.err3_crit_edge, label %do.end551

do.body542.err3_crit_edge:                        ; preds = %do.body542
  call void @__sanitizer_cov_trace_pc() #6
  br label %err3

do.end551:                                        ; preds = %do.body542
  call void @__sanitizer_cov_trace_pc() #6
  %num553 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %51 = ptrtoint ptr %num553 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num553, align 8
  %call554 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.56, i32 noundef %52, i32 noundef %call539) #7
  br label %err3

if.end614:                                        ; preds = %if.end531
  %connect_frontend = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 26, i32 0, i32 13
  %53 = ptrtoint ptr %connect_frontend to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %connect_frontend, align 4
  %call620 = tail call i32 %54(ptr noundef %demux, ptr noundef %fe_hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call620)
  %cmp621 = icmp slt i32 %call620, 0
  br i1 %cmp621, label %do.body623, label %if.end695

do.body623:                                       ; preds = %if.end614
  %55 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp625.not = icmp eq i32 %56, 0
  br i1 %cmp625.not, label %do.body623.err4_crit_edge, label %do.end632

do.body623.err4_crit_edge:                        ; preds = %do.body623
  call void @__sanitizer_cov_trace_pc() #6
  br label %err4

do.end632:                                        ; preds = %do.body623
  call void @__sanitizer_cov_trace_pc() #6
  %num634 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %57 = ptrtoint ptr %num634 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num634, align 8
  %call635 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.56, i32 noundef %58, i32 noundef %call620) #7
  br label %err4

if.end695:                                        ; preds = %if.end614
  %dvbnet = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 30
  %call699 = tail call i32 @dvb_net_init(ptr noundef %dvb_adapter, ptr noundef %dvbnet, ptr noundef %demux) #4
  %tasklet = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 18
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @mantis_dma_xfer) #4
  %count.i.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 18, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #4
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #4, !srcloc !408
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !409
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !410
  %60 = ptrtoint ptr %hwconfig to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hwconfig, align 4
  %tobool.not = icmp eq ptr %61, null
  br i1 %tobool.not, label %if.end695.cleanup_crit_edge, label %if.then702

if.end695.cleanup_crit_edge:                      ; preds = %if.end695
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then702:                                       ; preds = %if.end695
  %frontend_init = getelementptr inbounds %struct.mantis_hwconfig, ptr %1, i32 0, i32 7
  %62 = ptrtoint ptr %frontend_init to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %frontend_init, align 4
  %fe = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 25
  %64 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fe, align 4
  %call703 = tail call i32 %63(ptr noundef %mantis, ptr noundef %65) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call703)
  %cmp704 = icmp slt i32 %call703, 0
  br i1 %cmp704, label %do.body706, label %if.else778

do.body706:                                       ; preds = %if.then702
  %66 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp708.not = icmp eq i32 %67, 0
  br i1 %cmp708.not, label %do.body706.err5_crit_edge, label %do.end715

do.body706.err5_crit_edge:                        ; preds = %do.body706
  call void @__sanitizer_cov_trace_pc() #6
  br label %err5

do.end715:                                        ; preds = %do.body706
  call void @__sanitizer_cov_trace_pc() #6
  %num717 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %68 = ptrtoint ptr %num717 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num717, align 8
  %call718 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.56, i32 noundef %69) #7
  br label %err5

if.else778:                                       ; preds = %if.then702
  %70 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fe, align 4
  %cmp780 = icmp eq ptr %71, null
  br i1 %cmp780, label %if.then781, label %if.end854

if.then781:                                       ; preds = %if.else778
  %72 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp784.not = icmp eq i32 %73, 0
  br i1 %cmp784.not, label %if.then781.err5_crit_edge, label %do.end791

if.then781.err5_crit_edge:                        ; preds = %if.then781
  call void @__sanitizer_cov_trace_pc() #6
  br label %err5

do.end791:                                        ; preds = %if.then781
  call void @__sanitizer_cov_trace_pc() #6
  %num793 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %74 = ptrtoint ptr %num793 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num793, align 8
  %call794 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.56, i32 noundef %75) #7
  br label %err5

if.end854:                                        ; preds = %if.else778
  %call857 = tail call i32 @dvb_register_frontend(ptr noundef %dvb_adapter, ptr noundef nonnull %71) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call857)
  %tobool858.not = icmp eq i32 %call857, 0
  br i1 %tobool858.not, label %if.end854.cleanup_crit_edge, label %do.body860

if.end854.cleanup_crit_edge:                      ; preds = %if.end854
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body860:                                       ; preds = %if.end854
  %76 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp862.not = icmp eq i32 %77, 0
  br i1 %cmp862.not, label %do.body860.do.end931_crit_edge, label %do.end869

do.body860.do.end931_crit_edge:                   ; preds = %do.body860
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end931

do.end869:                                        ; preds = %do.body860
  call void @__sanitizer_cov_trace_pc() #6
  %num871 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %78 = ptrtoint ptr %num871 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num871, align 8
  %call872 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.56, i32 noundef %79) #7
  br label %do.end931

do.end931:                                        ; preds = %do.end869, %do.body860.do.end931_crit_edge
  %80 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fe, align 4
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %81, i32 0, i32 1, i32 3
  %82 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %release, align 4
  %tobool933.not = icmp eq ptr %83, null
  br i1 %tobool933.not, label %do.end931.if.end939_crit_edge, label %if.then934

do.end931.if.end939_crit_edge:                    ; preds = %do.end931
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end939

if.then934:                                       ; preds = %do.end931
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %83(ptr noundef %81) #4
  br label %if.end939

if.end939:                                        ; preds = %if.then934, %do.end931.if.end939_crit_edge
  %84 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %fe, align 4
  br label %err5

err5:                                             ; preds = %if.end939, %do.end791, %if.then781.err5_crit_edge, %do.end715, %do.body706.err5_crit_edge
  %result.0 = phi i32 [ %call703, %do.end715 ], [ -12, %do.end791 ], [ %call857, %if.end939 ], [ %call703, %do.body706.err5_crit_edge ], [ -12, %if.then781.err5_crit_edge ]
  tail call void @tasklet_kill(ptr noundef %tasklet) #4
  tail call void @dvb_net_release(ptr noundef %dvbnet) #4
  %85 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fe, align 4
  %tobool947.not = icmp eq ptr %86, null
  br i1 %tobool947.not, label %err5.err4_crit_edge, label %if.then948

err5.err4_crit_edge:                              ; preds = %err5
  call void @__sanitizer_cov_trace_pc() #6
  br label %err4

if.then948:                                       ; preds = %err5
  call void @__sanitizer_cov_trace_pc() #6
  %call950 = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %86) #4
  %87 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fe, align 4
  tail call void @dvb_frontend_detach(ptr noundef %88) #4
  br label %err4

err4:                                             ; preds = %if.then948, %err5.err4_crit_edge, %do.end632, %do.body623.err4_crit_edge
  %result.1 = phi i32 [ %call620, %do.end632 ], [ %result.0, %if.then948 ], [ %result.0, %err5.err4_crit_edge ], [ %call620, %do.body623.err4_crit_edge ]
  %remove_frontend = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 26, i32 0, i32 11
  %89 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %remove_frontend, align 4
  %call958 = tail call i32 %90(ptr noundef %demux, ptr noundef %fe_mem) #4
  br label %err3

err3:                                             ; preds = %err4, %do.end551, %do.body542.err3_crit_edge
  %result.2 = phi i32 [ %call539, %do.end551 ], [ %result.1, %err4 ], [ %call539, %do.body542.err3_crit_edge ]
  %remove_frontend961 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 26, i32 0, i32 11
  %91 = ptrtoint ptr %remove_frontend961 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %remove_frontend961, align 4
  %call965 = tail call i32 %92(ptr noundef %demux, ptr noundef %fe_hw) #4
  br label %err2

err2:                                             ; preds = %err3, %do.end468, %do.body459.err2_crit_edge
  %result.3 = phi i32 [ %call456, %do.end468 ], [ %result.2, %err3 ], [ %call456, %do.body459.err2_crit_edge ]
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #4
  br label %err1

err1:                                             ; preds = %err2, %do.end387, %do.body378.err1_crit_edge
  %result.4 = phi i32 [ %call375, %do.end387 ], [ %result.3, %err2 ], [ %call375, %do.body378.err1_crit_edge ]
  tail call void @dvb_dmx_release(ptr noundef %demux) #4
  br label %err0

err0:                                             ; preds = %err1, %do.end230, %do.body221.err0_crit_edge
  %result.5 = phi i32 [ %call218, %do.end230 ], [ %result.4, %err1 ], [ %call218, %do.body221.err0_crit_edge ]
  %call969 = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adapter) #4
  br label %cleanup

cleanup:                                          ; preds = %err0, %if.end854.cleanup_crit_edge, %if.end695.cleanup_crit_edge, %do.end73, %do.body64.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.5, %err0 ], [ -19, %do.end73 ], [ 0, %if.end854.cleanup_crit_edge ], [ 0, %if.end695.cleanup_crit_edge ], [ -19, %do.body64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mantis_dvb_start_feed(ptr nocapture noundef readonly %dvbdmxfeed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  br i1 %switch, label %entry.do.end60_crit_edge, label %do.end

entry.do.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.239, i32 noundef %7) #7
  br label %do.end60

do.end60:                                         ; preds = %do.end, %entry.do.end60_crit_edge
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %frontend, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.body62, label %if.end134

do.body62:                                        ; preds = %do.end60
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %switch413 = icmp ult i32 %11, 4
  br i1 %switch413, label %do.body62.cleanup_crit_edge, label %do.end71

do.body62.cleanup_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end71:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  %num73 = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %num73 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num73, align 8
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.239, i32 noundef %13) #7
  br label %cleanup

if.end134:                                        ; preds = %do.end60
  %feeds = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 31
  %14 = ptrtoint ptr %feeds to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %feeds, align 8
  %inc = add i8 %15, 1
  store i8 %inc, ptr %feeds, align 8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %switch416 = icmp ult i32 %17, 4
  br i1 %switch416, label %if.end134.do.end223_crit_edge, label %do.end144

if.end134.do.end223_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end223

do.end144:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #6
  %num146 = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %num146 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num146, align 8
  %conv = zext i8 %inc to i32
  %call148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.239, i32 noundef %19, i32 noundef %conv) #7
  %20 = ptrtoint ptr %feeds to i32
  call void @__asan_load1_noabort(i32 %20)
  %.pr = load i8, ptr %feeds, align 8
  br label %do.end223

do.end223:                                        ; preds = %do.end144, %if.end134.do.end223_crit_edge
  %21 = phi i8 [ %inc, %if.end134.do.end223_crit_edge ], [ %.pr, %do.end144 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp226 = icmp eq i8 %21, 1
  br i1 %cmp226, label %do.body229, label %do.end223.if.end311_crit_edge

do.end223.if.end311_crit_edge:                    ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end311

do.body229:                                       ; preds = %do.end223
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %switch419 = icmp ult i32 %23, 4
  br i1 %switch419, label %do.body229.do.end310_crit_edge, label %do.end240

do.body229.do.end310_crit_edge:                   ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end310

do.end240:                                        ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #6
  %num242 = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %24 = ptrtoint ptr %num242 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num242, align 8
  %call243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.239, i32 noundef %25) #7
  br label %do.end310

do.end310:                                        ; preds = %do.end240, %do.body229.do.end310_crit_edge
  tail call void @mantis_dma_start(ptr noundef %3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !411
  %count.i = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 18, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #4
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #4, !srcloc !412
  br label %if.end311

if.end311:                                        ; preds = %do.end310, %do.end223.if.end311_crit_edge
  %27 = ptrtoint ptr %feeds to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %feeds, align 8
  %conv313 = zext i8 %28 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end311, %do.end71, %do.body62.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv313, %if.end311 ], [ -22, %do.end71 ], [ -22, %do.body62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mantis_dvb_stop_feed(ptr nocapture noundef readonly %dvbdmxfeed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  br i1 %switch, label %entry.do.end60_crit_edge, label %do.end

entry.do.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.293, ptr noundef nonnull @.str.294, i32 noundef %7) #7
  br label %do.end60

do.end60:                                         ; preds = %do.end, %entry.do.end60_crit_edge
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %frontend, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.body62, label %if.end134

do.body62:                                        ; preds = %do.end60
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %switch293 = icmp ult i32 %11, 4
  br i1 %switch293, label %do.body62.cleanup_crit_edge, label %do.end71

do.body62.cleanup_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end71:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  %num73 = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %num73 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num73, align 8
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.294, i32 noundef %13) #7
  br label %cleanup

if.end134:                                        ; preds = %do.end60
  %feeds = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 31
  %14 = ptrtoint ptr %feeds to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %feeds, align 8
  %dec = add i8 %15, -1
  store i8 %dec, ptr %feeds, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp136 = icmp eq i8 %dec, 0
  br i1 %cmp136, label %do.body139, label %if.end134.cleanup_crit_edge

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body139:                                       ; preds = %if.end134
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %switch296 = icmp ult i32 %17, 4
  br i1 %switch296, label %do.body139.do.end220_crit_edge, label %do.end150

do.body139.do.end220_crit_edge:                   ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end220

do.end150:                                        ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  %num152 = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %num152 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num152, align 8
  %call153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.294, i32 noundef %19) #7
  br label %do.end220

do.end220:                                        ; preds = %do.end150, %do.body139.do.end220_crit_edge
  %tasklet = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 18
  %count.i.i = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 18, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #4
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #4, !srcloc !408
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !409
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !410
  tail call void @mantis_dma_stop(ptr noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end220, %if.end134.cleanup_crit_edge, %do.end71, %do.body62.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end71 ], [ 0, %do.end220 ], [ 0, %if.end134.cleanup_crit_edge ], [ -22, %do.body62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_dma_xfer(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_dvb_exit(ptr noundef %mantis) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fe = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 25
  %0 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end69_crit_edge, label %if.then

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.then:                                          ; preds = %entry
  tail call void @mantis_frontend_soft_reset(ptr noundef %mantis) #4
  %hwconfig.i.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 32
  %2 = ptrtoint ptr %hwconfig.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwconfig.i.i, align 4
  %4 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch307.i.i = icmp ult i32 %5, 4
  br i1 %switch307.i.i, label %if.then.if.end65_crit_edge, label %do.end76.i.i

if.then.if.end65_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

do.end76.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %num78.i.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %6 = ptrtoint ptr %num78.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num78.i.i, align 8
  %call79.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef %7) #7
  br label %if.end65

if.end65:                                         ; preds = %do.end76.i.i, %if.then.if.end65_crit_edge
  %power147.i.i = getelementptr inbounds %struct.mantis_hwconfig, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %power147.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %power147.i.i, align 4
  %conv148.i.i = zext i8 %9 to i32
  tail call void @mantis_gpio_set_bits(ptr noundef %mantis, i32 noundef %conv148.i.i, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 100) #4
  %10 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fe, align 4
  %call67 = tail call i32 @dvb_unregister_frontend(ptr noundef %11) #4
  %12 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fe, align 4
  tail call void @dvb_frontend_detach(ptr noundef %13) #4
  br label %if.end69

if.end69:                                         ; preds = %if.end65, %entry.if.end69_crit_edge
  %tasklet = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 18
  tail call void @tasklet_kill(ptr noundef %tasklet) #4
  %dvbnet = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 30
  tail call void @dvb_net_release(ptr noundef %dvbnet) #4
  %demux = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 26
  %remove_frontend = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 26, i32 0, i32 11
  %14 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %remove_frontend, align 4
  %fe_mem = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 29
  %call72 = tail call i32 %15(ptr noundef %demux, ptr noundef %fe_mem) #4
  %16 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %remove_frontend, align 4
  %fe_hw = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 28
  %call78 = tail call i32 %17(ptr noundef %demux, ptr noundef %fe_hw) #4
  %dmxdev = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 27
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #4
  tail call void @dvb_dmx_release(ptr noundef %demux) #4
  %18 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %switch = icmp ult i32 %19, 4
  br i1 %switch, label %if.end69.do.end151_crit_edge, label %do.end89

if.end69.do.end151_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end151

do.end89:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  %num91 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %20 = ptrtoint ptr %num91 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num91, align 8
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.212, i32 noundef %21) #7
  br label %do.end151

do.end151:                                        ; preds = %do.end89, %if.end69.do.end151_crit_edge
  %dvb_adapter = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 24
  %call152 = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adapter) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_dma_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_dma_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 228)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 228)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !53, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !71, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !89, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !244, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !277, !278, !279, !280, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398}
!llvm.module.flags = !{!399, !400, !401, !402, !403, !404, !405, !406}
!llvm.ident = !{!407}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype383, !1, !"__UNIQUE_ID_adapter_nrtype383", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr384, !1, !"__UNIQUE_ID_adapter_nr384", i1 false, i1 false}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 37, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mantis_frontend_power._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @mantis_frontend_power._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mantis_frontend_power._entry.3, !5, !"_entry", i1 false, i1 false}
!12 = !{ptr @mantis_frontend_power._entry_ptr.5, !5, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !5, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mantis_frontend_power._entry.6, !5, !"_entry", i1 false, i1 false}
!15 = !{ptr @mantis_frontend_power._entry_ptr.8, !5, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !5, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mantis_frontend_power._entry.9, !5, !"_entry", i1 false, i1 false}
!18 = !{ptr @mantis_frontend_power._entry_ptr.11, !5, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @mantis_frontend_power._entry.12, !5, !"_entry", i1 false, i1 false}
!20 = !{ptr @mantis_frontend_power._entry_ptr.13, !5, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 45, i32 3}
!23 = !{ptr @mantis_frontend_power._entry.14, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mantis_frontend_power._entry_ptr.16, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.18, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mantis_frontend_power._entry.17, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @mantis_frontend_power._entry_ptr.19, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.21, !22, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mantis_frontend_power._entry.20, !22, !"_entry", i1 false, i1 false}
!30 = !{ptr @mantis_frontend_power._entry_ptr.22, !22, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.24, !22, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mantis_frontend_power._entry.23, !22, !"_entry", i1 false, i1 false}
!33 = !{ptr @mantis_frontend_power._entry_ptr.25, !22, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @mantis_frontend_power._entry.26, !22, !"_entry", i1 false, i1 false}
!35 = !{ptr @mantis_frontend_power._entry_ptr.27, !22, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.29, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 51, i32 3}
!38 = !{ptr @mantis_frontend_power._entry.28, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mantis_frontend_power._entry_ptr.30, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.32, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mantis_frontend_power._entry.31, !37, !"_entry", i1 false, i1 false}
!42 = !{ptr @mantis_frontend_power._entry_ptr.33, !37, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.35, !37, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mantis_frontend_power._entry.34, !37, !"_entry", i1 false, i1 false}
!45 = !{ptr @mantis_frontend_power._entry_ptr.36, !37, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.38, !37, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mantis_frontend_power._entry.37, !37, !"_entry", i1 false, i1 false}
!48 = !{ptr @mantis_frontend_power._entry_ptr.39, !37, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @mantis_frontend_power._entry.40, !37, !"_entry", i1 false, i1 false}
!50 = !{ptr @mantis_frontend_power._entry_ptr.41, !37, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @__ksymtab_mantis_frontend_power, !52, !"__ksymtab_mantis_frontend_power", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 57, i32 1}
!53 = !{ptr @.str.42, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 63, i32 2}
!55 = !{ptr @.str.43, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mantis_frontend_soft_reset._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @mantis_frontend_soft_reset._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.45, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mantis_frontend_soft_reset._entry.44, !54, !"_entry", i1 false, i1 false}
!60 = !{ptr @mantis_frontend_soft_reset._entry_ptr.46, !54, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.48, !54, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mantis_frontend_soft_reset._entry.47, !54, !"_entry", i1 false, i1 false}
!63 = !{ptr @mantis_frontend_soft_reset._entry_ptr.49, !54, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.51, !54, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mantis_frontend_soft_reset._entry.50, !54, !"_entry", i1 false, i1 false}
!66 = !{ptr @mantis_frontend_soft_reset._entry_ptr.52, !54, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @mantis_frontend_soft_reset._entry.53, !54, !"_entry", i1 false, i1 false}
!68 = !{ptr @mantis_frontend_soft_reset._entry_ptr.54, !54, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @__ksymtab_mantis_frontend_soft_reset, !70, !"__ksymtab_mantis_frontend_soft_reset", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 75, i32 1}
!71 = !{ptr @.str.55, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 140, i32 2}
!73 = !{ptr @.str.56, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mantis_dvb_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @mantis_dvb_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.58, !72, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @mantis_dvb_init._entry.57, !72, !"_entry", i1 false, i1 false}
!78 = !{ptr @mantis_dvb_init._entry_ptr.59, !72, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.61, !72, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mantis_dvb_init._entry.60, !72, !"_entry", i1 false, i1 false}
!81 = !{ptr @mantis_dvb_init._entry_ptr.62, !72, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.64, !72, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mantis_dvb_init._entry.63, !72, !"_entry", i1 false, i1 false}
!84 = !{ptr @mantis_dvb_init._entry_ptr.65, !72, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @mantis_dvb_init._entry.66, !72, !"_entry", i1 false, i1 false}
!86 = !{ptr @mantis_dvb_init._entry_ptr.67, !72, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.68, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 143, i32 11}
!89 = !{ptr @.str.70, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 150, i32 3}
!91 = !{ptr @mantis_dvb_init._entry.69, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @mantis_dvb_init._entry_ptr.71, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.73, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mantis_dvb_init._entry.72, !90, !"_entry", i1 false, i1 false}
!95 = !{ptr @mantis_dvb_init._entry_ptr.74, !90, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.76, !90, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mantis_dvb_init._entry.75, !90, !"_entry", i1 false, i1 false}
!98 = !{ptr @mantis_dvb_init._entry_ptr.77, !90, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.79, !90, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @mantis_dvb_init._entry.78, !90, !"_entry", i1 false, i1 false}
!101 = !{ptr @mantis_dvb_init._entry_ptr.80, !90, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @mantis_dvb_init._entry.81, !90, !"_entry", i1 false, i1 false}
!103 = !{ptr @mantis_dvb_init._entry_ptr.82, !90, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.84, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 166, i32 2}
!106 = !{ptr @mantis_dvb_init._entry.83, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mantis_dvb_init._entry_ptr.85, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.87, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @mantis_dvb_init._entry.86, !105, !"_entry", i1 false, i1 false}
!110 = !{ptr @mantis_dvb_init._entry_ptr.88, !105, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.90, !105, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mantis_dvb_init._entry.89, !105, !"_entry", i1 false, i1 false}
!113 = !{ptr @mantis_dvb_init._entry_ptr.91, !105, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.93, !105, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @mantis_dvb_init._entry.92, !105, !"_entry", i1 false, i1 false}
!116 = !{ptr @mantis_dvb_init._entry_ptr.94, !105, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @mantis_dvb_init._entry.95, !105, !"_entry", i1 false, i1 false}
!118 = !{ptr @mantis_dvb_init._entry_ptr.96, !105, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.98, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 169, i32 3}
!121 = !{ptr @mantis_dvb_init._entry.97, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @mantis_dvb_init._entry_ptr.99, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.101, !120, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @mantis_dvb_init._entry.100, !120, !"_entry", i1 false, i1 false}
!125 = !{ptr @mantis_dvb_init._entry_ptr.102, !120, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.104, !120, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @mantis_dvb_init._entry.103, !120, !"_entry", i1 false, i1 false}
!128 = !{ptr @mantis_dvb_init._entry_ptr.105, !120, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.107, !120, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @mantis_dvb_init._entry.106, !120, !"_entry", i1 false, i1 false}
!131 = !{ptr @mantis_dvb_init._entry_ptr.108, !120, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @mantis_dvb_init._entry.109, !120, !"_entry", i1 false, i1 false}
!133 = !{ptr @mantis_dvb_init._entry_ptr.110, !120, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.112, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 177, i32 2}
!136 = !{ptr @mantis_dvb_init._entry.111, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @mantis_dvb_init._entry_ptr.113, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.115, !135, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @mantis_dvb_init._entry.114, !135, !"_entry", i1 false, i1 false}
!140 = !{ptr @mantis_dvb_init._entry_ptr.116, !135, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.118, !135, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @mantis_dvb_init._entry.117, !135, !"_entry", i1 false, i1 false}
!143 = !{ptr @mantis_dvb_init._entry_ptr.119, !135, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.121, !135, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @mantis_dvb_init._entry.120, !135, !"_entry", i1 false, i1 false}
!146 = !{ptr @mantis_dvb_init._entry_ptr.122, !135, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @mantis_dvb_init._entry.123, !135, !"_entry", i1 false, i1 false}
!148 = !{ptr @mantis_dvb_init._entry_ptr.124, !135, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.126, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 182, i32 3}
!151 = !{ptr @mantis_dvb_init._entry.125, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @mantis_dvb_init._entry_ptr.127, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.129, !150, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @mantis_dvb_init._entry.128, !150, !"_entry", i1 false, i1 false}
!155 = !{ptr @mantis_dvb_init._entry_ptr.130, !150, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.132, !150, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @mantis_dvb_init._entry.131, !150, !"_entry", i1 false, i1 false}
!158 = !{ptr @mantis_dvb_init._entry_ptr.133, !150, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.135, !150, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @mantis_dvb_init._entry.134, !150, !"_entry", i1 false, i1 false}
!161 = !{ptr @mantis_dvb_init._entry_ptr.136, !150, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @mantis_dvb_init._entry.137, !150, !"_entry", i1 false, i1 false}
!163 = !{ptr @mantis_dvb_init._entry_ptr.138, !150, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @mantis_dvb_init._entry.139, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 190, i32 3}
!166 = !{ptr @mantis_dvb_init._entry_ptr.140, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @mantis_dvb_init._entry.141, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @mantis_dvb_init._entry_ptr.142, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @mantis_dvb_init._entry.143, !165, !"_entry", i1 false, i1 false}
!170 = !{ptr @mantis_dvb_init._entry_ptr.144, !165, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @mantis_dvb_init._entry.145, !165, !"_entry", i1 false, i1 false}
!172 = !{ptr @mantis_dvb_init._entry_ptr.146, !165, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @mantis_dvb_init._entry.147, !165, !"_entry", i1 false, i1 false}
!174 = !{ptr @mantis_dvb_init._entry_ptr.148, !165, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @mantis_dvb_init._entry.149, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 197, i32 3}
!177 = !{ptr @mantis_dvb_init._entry_ptr.150, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @mantis_dvb_init._entry.151, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @mantis_dvb_init._entry_ptr.152, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @mantis_dvb_init._entry.153, !176, !"_entry", i1 false, i1 false}
!181 = !{ptr @mantis_dvb_init._entry_ptr.154, !176, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @mantis_dvb_init._entry.155, !176, !"_entry", i1 false, i1 false}
!183 = !{ptr @mantis_dvb_init._entry_ptr.156, !176, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @mantis_dvb_init._entry.157, !176, !"_entry", i1 false, i1 false}
!185 = !{ptr @mantis_dvb_init._entry_ptr.158, !176, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @mantis_dvb_init._entry.159, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 203, i32 3}
!188 = !{ptr @mantis_dvb_init._entry_ptr.160, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @mantis_dvb_init._entry.161, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @mantis_dvb_init._entry_ptr.162, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @mantis_dvb_init._entry.163, !187, !"_entry", i1 false, i1 false}
!192 = !{ptr @mantis_dvb_init._entry_ptr.164, !187, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @mantis_dvb_init._entry.165, !187, !"_entry", i1 false, i1 false}
!194 = !{ptr @mantis_dvb_init._entry_ptr.166, !187, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @mantis_dvb_init._entry.167, !187, !"_entry", i1 false, i1 false}
!196 = !{ptr @mantis_dvb_init._entry_ptr.168, !187, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.170, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 213, i32 4}
!199 = !{ptr @mantis_dvb_init._entry.169, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @mantis_dvb_init._entry_ptr.171, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.173, !198, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @mantis_dvb_init._entry.172, !198, !"_entry", i1 false, i1 false}
!203 = !{ptr @mantis_dvb_init._entry_ptr.174, !198, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.176, !198, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @mantis_dvb_init._entry.175, !198, !"_entry", i1 false, i1 false}
!206 = !{ptr @mantis_dvb_init._entry_ptr.177, !198, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.179, !198, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @mantis_dvb_init._entry.178, !198, !"_entry", i1 false, i1 false}
!209 = !{ptr @mantis_dvb_init._entry_ptr.180, !198, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @mantis_dvb_init._entry.181, !198, !"_entry", i1 false, i1 false}
!211 = !{ptr @mantis_dvb_init._entry_ptr.182, !198, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.184, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 218, i32 5}
!214 = !{ptr @mantis_dvb_init._entry.183, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @mantis_dvb_init._entry_ptr.185, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.187, !213, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @mantis_dvb_init._entry.186, !213, !"_entry", i1 false, i1 false}
!218 = !{ptr @mantis_dvb_init._entry_ptr.188, !213, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.190, !213, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @mantis_dvb_init._entry.189, !213, !"_entry", i1 false, i1 false}
!221 = !{ptr @mantis_dvb_init._entry_ptr.191, !213, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.193, !213, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @mantis_dvb_init._entry.192, !213, !"_entry", i1 false, i1 false}
!224 = !{ptr @mantis_dvb_init._entry_ptr.194, !213, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @mantis_dvb_init._entry.195, !213, !"_entry", i1 false, i1 false}
!226 = !{ptr @mantis_dvb_init._entry_ptr.196, !213, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.198, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 223, i32 5}
!229 = !{ptr @mantis_dvb_init._entry.197, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @mantis_dvb_init._entry_ptr.199, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.201, !228, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @mantis_dvb_init._entry.200, !228, !"_entry", i1 false, i1 false}
!233 = !{ptr @mantis_dvb_init._entry_ptr.202, !228, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.204, !228, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @mantis_dvb_init._entry.203, !228, !"_entry", i1 false, i1 false}
!236 = !{ptr @mantis_dvb_init._entry_ptr.205, !228, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.207, !228, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @mantis_dvb_init._entry.206, !228, !"_entry", i1 false, i1 false}
!239 = !{ptr @mantis_dvb_init._entry_ptr.208, !228, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @mantis_dvb_init._entry.209, !228, !"_entry", i1 false, i1 false}
!241 = !{ptr @mantis_dvb_init._entry_ptr.210, !228, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @__ksymtab_mantis_dvb_init, !243, !"__ksymtab_mantis_dvb_init", i1 false, i1 false}
!243 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 261, i32 1}
!244 = !{ptr @.str.211, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 271, i32 4}
!246 = !{ptr @.str.212, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @mantis_dvb_exit._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @mantis_dvb_exit._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.214, !245, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @mantis_dvb_exit._entry.213, !245, !"_entry", i1 false, i1 false}
!251 = !{ptr @mantis_dvb_exit._entry_ptr.215, !245, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.217, !245, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @mantis_dvb_exit._entry.216, !245, !"_entry", i1 false, i1 false}
!254 = !{ptr @mantis_dvb_exit._entry_ptr.218, !245, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.220, !245, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @mantis_dvb_exit._entry.219, !245, !"_entry", i1 false, i1 false}
!257 = !{ptr @mantis_dvb_exit._entry_ptr.221, !245, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @mantis_dvb_exit._entry.222, !245, !"_entry", i1 false, i1 false}
!259 = !{ptr @mantis_dvb_exit._entry_ptr.223, !245, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.225, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 285, i32 2}
!262 = !{ptr @mantis_dvb_exit._entry.224, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @mantis_dvb_exit._entry_ptr.226, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.228, !261, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @mantis_dvb_exit._entry.227, !261, !"_entry", i1 false, i1 false}
!266 = !{ptr @mantis_dvb_exit._entry_ptr.229, !261, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.231, !261, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @mantis_dvb_exit._entry.230, !261, !"_entry", i1 false, i1 false}
!269 = !{ptr @mantis_dvb_exit._entry_ptr.232, !261, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.234, !261, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @mantis_dvb_exit._entry.233, !261, !"_entry", i1 false, i1 false}
!272 = !{ptr @mantis_dvb_exit._entry_ptr.235, !261, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @mantis_dvb_exit._entry.236, !261, !"_entry", i1 false, i1 false}
!274 = !{ptr @mantis_dvb_exit._entry_ptr.237, !261, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @__ksymtab_mantis_dvb_exit, !276, !"__ksymtab_mantis_dvb_exit", i1 false, i1 false}
!276 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 290, i32 1}
!277 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!278 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!279 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!280 = !{ptr @.str.238, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 96, i32 2}
!282 = !{ptr @.str.239, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @mantis_dvb_start_feed._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @mantis_dvb_start_feed._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.241, !281, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @mantis_dvb_start_feed._entry.240, !281, !"_entry", i1 false, i1 false}
!287 = !{ptr @mantis_dvb_start_feed._entry_ptr.242, !281, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.244, !281, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @mantis_dvb_start_feed._entry.243, !281, !"_entry", i1 false, i1 false}
!290 = !{ptr @mantis_dvb_start_feed._entry_ptr.245, !281, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.247, !281, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @mantis_dvb_start_feed._entry.246, !281, !"_entry", i1 false, i1 false}
!293 = !{ptr @mantis_dvb_start_feed._entry_ptr.248, !281, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @mantis_dvb_start_feed._entry.249, !281, !"_entry", i1 false, i1 false}
!295 = !{ptr @mantis_dvb_start_feed._entry_ptr.250, !281, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.252, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 98, i32 3}
!298 = !{ptr @mantis_dvb_start_feed._entry.251, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @mantis_dvb_start_feed._entry_ptr.253, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.255, !297, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @mantis_dvb_start_feed._entry.254, !297, !"_entry", i1 false, i1 false}
!302 = !{ptr @mantis_dvb_start_feed._entry_ptr.256, !297, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.258, !297, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @mantis_dvb_start_feed._entry.257, !297, !"_entry", i1 false, i1 false}
!305 = !{ptr @mantis_dvb_start_feed._entry_ptr.259, !297, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.261, !297, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @mantis_dvb_start_feed._entry.260, !297, !"_entry", i1 false, i1 false}
!308 = !{ptr @mantis_dvb_start_feed._entry_ptr.262, !297, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @mantis_dvb_start_feed._entry.263, !297, !"_entry", i1 false, i1 false}
!310 = !{ptr @mantis_dvb_start_feed._entry_ptr.264, !297, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.266, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 103, i32 2}
!313 = !{ptr @mantis_dvb_start_feed._entry.265, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @mantis_dvb_start_feed._entry_ptr.267, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.269, !312, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @mantis_dvb_start_feed._entry.268, !312, !"_entry", i1 false, i1 false}
!317 = !{ptr @mantis_dvb_start_feed._entry_ptr.270, !312, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.272, !312, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @mantis_dvb_start_feed._entry.271, !312, !"_entry", i1 false, i1 false}
!320 = !{ptr @mantis_dvb_start_feed._entry_ptr.273, !312, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.275, !312, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @mantis_dvb_start_feed._entry.274, !312, !"_entry", i1 false, i1 false}
!323 = !{ptr @mantis_dvb_start_feed._entry_ptr.276, !312, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @mantis_dvb_start_feed._entry.277, !312, !"_entry", i1 false, i1 false}
!325 = !{ptr @mantis_dvb_start_feed._entry_ptr.278, !312, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.280, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 106, i32 3}
!328 = !{ptr @mantis_dvb_start_feed._entry.279, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @mantis_dvb_start_feed._entry_ptr.281, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.283, !327, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @mantis_dvb_start_feed._entry.282, !327, !"_entry", i1 false, i1 false}
!332 = !{ptr @mantis_dvb_start_feed._entry_ptr.284, !327, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.286, !327, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @mantis_dvb_start_feed._entry.285, !327, !"_entry", i1 false, i1 false}
!335 = !{ptr @mantis_dvb_start_feed._entry_ptr.287, !327, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.289, !327, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @mantis_dvb_start_feed._entry.288, !327, !"_entry", i1 false, i1 false}
!338 = !{ptr @mantis_dvb_start_feed._entry_ptr.290, !327, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @mantis_dvb_start_feed._entry.291, !327, !"_entry", i1 false, i1 false}
!340 = !{ptr @mantis_dvb_start_feed._entry_ptr.292, !327, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.293, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 119, i32 2}
!343 = !{ptr @.str.294, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @mantis_dvb_stop_feed._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @mantis_dvb_stop_feed._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.296, !342, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @mantis_dvb_stop_feed._entry.295, !342, !"_entry", i1 false, i1 false}
!348 = !{ptr @mantis_dvb_stop_feed._entry_ptr.297, !342, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.299, !342, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @mantis_dvb_stop_feed._entry.298, !342, !"_entry", i1 false, i1 false}
!351 = !{ptr @mantis_dvb_stop_feed._entry_ptr.300, !342, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.302, !342, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @mantis_dvb_stop_feed._entry.301, !342, !"_entry", i1 false, i1 false}
!354 = !{ptr @mantis_dvb_stop_feed._entry_ptr.303, !342, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @mantis_dvb_stop_feed._entry.304, !342, !"_entry", i1 false, i1 false}
!356 = !{ptr @mantis_dvb_stop_feed._entry_ptr.305, !342, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @mantis_dvb_stop_feed._entry.306, !358, !"_entry", i1 false, i1 false}
!358 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 121, i32 3}
!359 = !{ptr @mantis_dvb_stop_feed._entry_ptr.307, !358, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @mantis_dvb_stop_feed._entry.308, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @mantis_dvb_stop_feed._entry_ptr.309, !358, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @mantis_dvb_stop_feed._entry.310, !358, !"_entry", i1 false, i1 false}
!363 = !{ptr @mantis_dvb_stop_feed._entry_ptr.311, !358, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @mantis_dvb_stop_feed._entry.312, !358, !"_entry", i1 false, i1 false}
!365 = !{ptr @mantis_dvb_stop_feed._entry_ptr.313, !358, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @mantis_dvb_stop_feed._entry.314, !358, !"_entry", i1 false, i1 false}
!367 = !{ptr @mantis_dvb_stop_feed._entry_ptr.315, !358, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.317, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 127, i32 3}
!370 = !{ptr @mantis_dvb_stop_feed._entry.316, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @mantis_dvb_stop_feed._entry_ptr.318, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.320, !369, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @mantis_dvb_stop_feed._entry.319, !369, !"_entry", i1 false, i1 false}
!374 = !{ptr @mantis_dvb_stop_feed._entry_ptr.321, !369, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.323, !369, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @mantis_dvb_stop_feed._entry.322, !369, !"_entry", i1 false, i1 false}
!377 = !{ptr @mantis_dvb_stop_feed._entry_ptr.324, !369, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.326, !369, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @mantis_dvb_stop_feed._entry.325, !369, !"_entry", i1 false, i1 false}
!380 = !{ptr @mantis_dvb_stop_feed._entry_ptr.327, !369, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @mantis_dvb_stop_feed._entry.328, !369, !"_entry", i1 false, i1 false}
!382 = !{ptr @mantis_dvb_stop_feed._entry_ptr.329, !369, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.330, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/media/pci/mantis/mantis_dvb.c", i32 84, i32 3}
!385 = !{ptr @.str.331, !384, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @mantis_frontend_shutdown._entry, !384, !"_entry", i1 false, i1 false}
!387 = !{ptr @mantis_frontend_shutdown._entry_ptr, !384, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.333, !384, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @mantis_frontend_shutdown._entry.332, !384, !"_entry", i1 false, i1 false}
!390 = !{ptr @mantis_frontend_shutdown._entry_ptr.334, !384, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.336, !384, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @mantis_frontend_shutdown._entry.335, !384, !"_entry", i1 false, i1 false}
!393 = !{ptr @mantis_frontend_shutdown._entry_ptr.337, !384, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.339, !384, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @mantis_frontend_shutdown._entry.338, !384, !"_entry", i1 false, i1 false}
!396 = !{ptr @mantis_frontend_shutdown._entry_ptr.340, !384, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @mantis_frontend_shutdown._entry.341, !384, !"_entry", i1 false, i1 false}
!398 = !{ptr @mantis_frontend_shutdown._entry_ptr.342, !384, !"_entry_ptr", i1 false, i1 false}
!399 = !{i32 1, !"wchar_size", i32 2}
!400 = !{i32 1, !"min_enum_size", i32 4}
!401 = !{i32 8, !"branch-target-enforcement", i32 0}
!402 = !{i32 8, !"sign-return-address", i32 0}
!403 = !{i32 8, !"sign-return-address-all", i32 0}
!404 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!405 = !{i32 7, !"uwtable", i32 1}
!406 = !{i32 7, !"frame-pointer", i32 2}
!407 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!408 = !{i64 2148214919, i64 2148214945, i64 2148214974, i64 2148215008, i64 2148215039, i64 2148215062}
!409 = !{i64 2152592213}
!410 = !{i64 2152592855}
!411 = !{i64 2152593202}
!412 = !{i64 2148217384, i64 2148217410, i64 2148217439, i64 2148217473, i64 2148217504, i64 2148217527}
