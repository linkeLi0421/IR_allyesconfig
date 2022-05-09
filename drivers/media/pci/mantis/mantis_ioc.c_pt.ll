; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/mantis_ioc.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/mantis_ioc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mantis_get_mac\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_get_mac\09\09\09\09"
module asm "\09.long\09__crc_mantis_get_mac\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_get_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_get_mac\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_get_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mantis_gpio_set_bits\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_gpio_set_bits\09\09\09\09"
module asm "\09.long\09__crc_mantis_gpio_set_bits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_gpio_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_gpio_set_bits\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_gpio_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mantis_stream_control\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_stream_control\09\09\09\09"
module asm "\09.long\09__crc_mantis_stream_control\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_stream_control:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_stream_control\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_stream_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mantis_pci = type { i32, i16, i16, i16, i16, i8, ptr, i32, ptr, i8, i8, i32, i32, i32, ptr, i32, ptr, i32, %struct.tasklet_struct, %struct.spinlock, %struct.i2c_adapter, i32, %struct.wait_queue_head, %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i8, ptr, i32, i32, [8 x i8], i32, i32, i32, i32, ptr, %struct.work_struct, ptr, [80 x i8], [80 x i8], ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon, i32 }
%struct.atomic_t = type { i32 }
%union.anon = type { ptr }
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

@mantis_get_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s (%d): ERROR: Mantis EEPROM read error <%d>\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mantis_get_mac\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/mantis/mantis_ioc.c\00", [58 x i8] zeroinitializer }, align 32
@mantis_get_mac._entry_ptr = internal global ptr @mantis_get_mac._entry, section ".printk_index", align 4
@mantis_get_mac._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015%s (%d): ERROR: Mantis EEPROM read error <%d>\0A\00", [47 x i8] zeroinitializer }, align 32
@mantis_get_mac._entry_ptr.5 = internal global ptr @mantis_get_mac._entry.3, section ".printk_index", align 4
@mantis_get_mac._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s (%d): ERROR: Mantis EEPROM read error <%d>\0A\00", [47 x i8] zeroinitializer }, align 32
@mantis_get_mac._entry_ptr.8 = internal global ptr @mantis_get_mac._entry.6, section ".printk_index", align 4
@mantis_get_mac._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s (%d): ERROR: Mantis EEPROM read error <%d>\0A\00", [47 x i8] zeroinitializer }, align 32
@mantis_get_mac._entry_ptr.11 = internal global ptr @mantis_get_mac._entry.9, section ".printk_index", align 4
@mantis_get_mac._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_get_mac._entry_ptr.13 = internal global ptr @mantis_get_mac._entry.12, section ".printk_index", align 4
@mantis_get_mac._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"    MAC Address=[%pM]\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_get_mac._entry_ptr.16 = internal global ptr @mantis_get_mac._entry.14, section ".printk_index", align 4
@__kstrtab_mantis_get_mac = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_get_mac = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_get_mac = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_get_mac to i32), ptr @__kstrtab_mantis_get_mac, ptr @__kstrtabns_mantis_get_mac }, section "___ksymtab_gpl+mantis_get_mac", align 4
@mantis_gpio_set_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s (%d): Set Bit <%d> to <%d>\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mantis_gpio_set_bits\00", [43 x i8] zeroinitializer }, align 32
@mantis_gpio_set_bits._entry_ptr = internal global ptr @mantis_gpio_set_bits._entry, section ".printk_index", align 4
@mantis_gpio_set_bits._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015%s (%d): Set Bit <%d> to <%d>\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_gpio_set_bits._entry_ptr.21 = internal global ptr @mantis_gpio_set_bits._entry.19, section ".printk_index", align 4
@mantis_gpio_set_bits._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s (%d): Set Bit <%d> to <%d>\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_gpio_set_bits._entry_ptr.24 = internal global ptr @mantis_gpio_set_bits._entry.22, section ".printk_index", align 4
@mantis_gpio_set_bits._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s (%d): Set Bit <%d> to <%d>\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_gpio_set_bits._entry_ptr.27 = internal global ptr @mantis_gpio_set_bits._entry.25, section ".printk_index", align 4
@mantis_gpio_set_bits._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_gpio_set_bits._entry_ptr.29 = internal global ptr @mantis_gpio_set_bits._entry.28, section ".printk_index", align 4
@mantis_gpio_set_bits._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.18, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s (%d): GPIO Value <%02x>\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_gpio_set_bits._entry_ptr.32 = internal global ptr @mantis_gpio_set_bits._entry.30, section ".printk_index", align 4
@mantis_gpio_set_bits._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.18, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015%s (%d): GPIO Value <%02x>\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_gpio_set_bits._entry_ptr.35 = internal global ptr @mantis_gpio_set_bits._entry.33, section ".printk_index", align 4
@mantis_gpio_set_bits._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.18, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s (%d): GPIO Value <%02x>\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_gpio_set_bits._entry_ptr.38 = internal global ptr @mantis_gpio_set_bits._entry.36, section ".printk_index", align 4
@mantis_gpio_set_bits._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.18, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s (%d): GPIO Value <%02x>\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_gpio_set_bits._entry_ptr.41 = internal global ptr @mantis_gpio_set_bits._entry.39, section ".printk_index", align 4
@mantis_gpio_set_bits._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.18, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_gpio_set_bits._entry_ptr.43 = internal global ptr @mantis_gpio_set_bits._entry.42, section ".printk_index", align 4
@__kstrtab_mantis_gpio_set_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_gpio_set_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_gpio_set_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_gpio_set_bits to i32), ptr @__kstrtab_mantis_gpio_set_bits, ptr @__kstrtabns_mantis_gpio_set_bits }, section "___ksymtab_gpl+mantis_gpio_set_bits", align 4
@mantis_stream_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s (%d): Set stream to HIF\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mantis_stream_control\00", [42 x i8] zeroinitializer }, align 32
@mantis_stream_control._entry_ptr = internal global ptr @mantis_stream_control._entry, section ".printk_index", align 4
@mantis_stream_control._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015%s (%d): Set stream to HIF\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_stream_control._entry_ptr.48 = internal global ptr @mantis_stream_control._entry.46, section ".printk_index", align 4
@mantis_stream_control._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s (%d): Set stream to HIF\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_stream_control._entry_ptr.51 = internal global ptr @mantis_stream_control._entry.49, section ".printk_index", align 4
@mantis_stream_control._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s (%d): Set stream to HIF\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_stream_control._entry_ptr.54 = internal global ptr @mantis_stream_control._entry.52, section ".printk_index", align 4
@mantis_stream_control._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_stream_control._entry_ptr.56 = internal global ptr @mantis_stream_control._entry.55, section ".printk_index", align 4
@mantis_stream_control._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.45, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s (%d): Set stream to CAM\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_stream_control._entry_ptr.59 = internal global ptr @mantis_stream_control._entry.57, section ".printk_index", align 4
@mantis_stream_control._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.45, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015%s (%d): Set stream to CAM\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_stream_control._entry_ptr.62 = internal global ptr @mantis_stream_control._entry.60, section ".printk_index", align 4
@mantis_stream_control._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.45, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s (%d): Set stream to CAM\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_stream_control._entry_ptr.65 = internal global ptr @mantis_stream_control._entry.63, section ".printk_index", align 4
@mantis_stream_control._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.45, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s (%d): Set stream to CAM\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_stream_control._entry_ptr.68 = internal global ptr @mantis_stream_control._entry.66, section ".printk_index", align 4
@mantis_stream_control._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.45, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_stream_control._entry_ptr.70 = internal global ptr @mantis_stream_control._entry.69, section ".printk_index", align 4
@mantis_stream_control._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.45, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s (%d): Unknown MODE <%02x>\0A\00", [32 x i8] zeroinitializer }, align 32
@mantis_stream_control._entry_ptr.73 = internal global ptr @mantis_stream_control._entry.71, section ".printk_index", align 4
@mantis_stream_control._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.45, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015%s (%d): Unknown MODE <%02x>\0A\00", [32 x i8] zeroinitializer }, align 32
@mantis_stream_control._entry_ptr.76 = internal global ptr @mantis_stream_control._entry.74, section ".printk_index", align 4
@mantis_stream_control._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.45, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s (%d): Unknown MODE <%02x>\0A\00", [32 x i8] zeroinitializer }, align 32
@mantis_stream_control._entry_ptr.79 = internal global ptr @mantis_stream_control._entry.77, section ".printk_index", align 4
@mantis_stream_control._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.45, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s (%d): Unknown MODE <%02x>\0A\00", [32 x i8] zeroinitializer }, align 32
@mantis_stream_control._entry_ptr.82 = internal global ptr @mantis_stream_control._entry.80, section ".printk_index", align 4
@mantis_stream_control._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.45, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_stream_control._entry_ptr.84 = internal global ptr @mantis_stream_control._entry.83, section ".printk_index", align 4
@__kstrtab_mantis_stream_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_stream_control = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_stream_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_stream_control to i32), ptr @__kstrtab_mantis_stream_control, ptr @__kstrtabns_mantis_stream_control }, section "___ksymtab_gpl+mantis_stream_control", align 4
@read_eeprom_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s (%d): ERROR: i2c read: < err=%i d0=0x%02x d1=0x%02x >\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read_eeprom_bytes\00", [46 x i8] zeroinitializer }, align 32
@read_eeprom_bytes._entry_ptr = internal global ptr @read_eeprom_bytes._entry, section ".printk_index", align 4
@read_eeprom_bytes._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015%s (%d): ERROR: i2c read: < err=%i d0=0x%02x d1=0x%02x >\0A\00", [36 x i8] zeroinitializer }, align 32
@read_eeprom_bytes._entry_ptr.89 = internal global ptr @read_eeprom_bytes._entry.87, section ".printk_index", align 4
@read_eeprom_bytes._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s (%d): ERROR: i2c read: < err=%i d0=0x%02x d1=0x%02x >\0A\00", [36 x i8] zeroinitializer }, align 32
@read_eeprom_bytes._entry_ptr.92 = internal global ptr @read_eeprom_bytes._entry.90, section ".printk_index", align 4
@read_eeprom_bytes._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.86, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s (%d): ERROR: i2c read: < err=%i d0=0x%02x d1=0x%02x >\0A\00", [36 x i8] zeroinitializer }, align 32
@read_eeprom_bytes._entry_ptr.95 = internal global ptr @read_eeprom_bytes._entry.93, section ".printk_index", align 4
@read_eeprom_bytes._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.86, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@read_eeprom_bytes._entry_ptr.97 = internal global ptr @read_eeprom_bytes._entry.96, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 55, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 60, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 71, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 78, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 91, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 99, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 106, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.306 = private constant [41 x i8] c"../drivers/media/pci/mantis/mantis_ioc.c\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 40, i32 3 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__ksymtab_mantis_get_mac, ptr @__ksymtab_mantis_gpio_set_bits, ptr @__ksymtab_mantis_stream_control, ptr @mantis_get_mac._entry, ptr @mantis_get_mac._entry.12, ptr @mantis_get_mac._entry.14, ptr @mantis_get_mac._entry.3, ptr @mantis_get_mac._entry.6, ptr @mantis_get_mac._entry.9, ptr @mantis_get_mac._entry_ptr, ptr @mantis_get_mac._entry_ptr.11, ptr @mantis_get_mac._entry_ptr.13, ptr @mantis_get_mac._entry_ptr.16, ptr @mantis_get_mac._entry_ptr.5, ptr @mantis_get_mac._entry_ptr.8, ptr @mantis_gpio_set_bits._entry, ptr @mantis_gpio_set_bits._entry.19, ptr @mantis_gpio_set_bits._entry.22, ptr @mantis_gpio_set_bits._entry.25, ptr @mantis_gpio_set_bits._entry.28, ptr @mantis_gpio_set_bits._entry.30, ptr @mantis_gpio_set_bits._entry.33, ptr @mantis_gpio_set_bits._entry.36, ptr @mantis_gpio_set_bits._entry.39, ptr @mantis_gpio_set_bits._entry.42, ptr @mantis_gpio_set_bits._entry_ptr, ptr @mantis_gpio_set_bits._entry_ptr.21, ptr @mantis_gpio_set_bits._entry_ptr.24, ptr @mantis_gpio_set_bits._entry_ptr.27, ptr @mantis_gpio_set_bits._entry_ptr.29, ptr @mantis_gpio_set_bits._entry_ptr.32, ptr @mantis_gpio_set_bits._entry_ptr.35, ptr @mantis_gpio_set_bits._entry_ptr.38, ptr @mantis_gpio_set_bits._entry_ptr.41, ptr @mantis_gpio_set_bits._entry_ptr.43, ptr @mantis_stream_control._entry, ptr @mantis_stream_control._entry.46, ptr @mantis_stream_control._entry.49, ptr @mantis_stream_control._entry.52, ptr @mantis_stream_control._entry.55, ptr @mantis_stream_control._entry.57, ptr @mantis_stream_control._entry.60, ptr @mantis_stream_control._entry.63, ptr @mantis_stream_control._entry.66, ptr @mantis_stream_control._entry.69, ptr @mantis_stream_control._entry.71, ptr @mantis_stream_control._entry.74, ptr @mantis_stream_control._entry.77, ptr @mantis_stream_control._entry.80, ptr @mantis_stream_control._entry.83, ptr @mantis_stream_control._entry_ptr, ptr @mantis_stream_control._entry_ptr.48, ptr @mantis_stream_control._entry_ptr.51, ptr @mantis_stream_control._entry_ptr.54, ptr @mantis_stream_control._entry_ptr.56, ptr @mantis_stream_control._entry_ptr.59, ptr @mantis_stream_control._entry_ptr.62, ptr @mantis_stream_control._entry_ptr.65, ptr @mantis_stream_control._entry_ptr.68, ptr @mantis_stream_control._entry_ptr.70, ptr @mantis_stream_control._entry_ptr.73, ptr @mantis_stream_control._entry_ptr.76, ptr @mantis_stream_control._entry_ptr.79, ptr @mantis_stream_control._entry_ptr.82, ptr @mantis_stream_control._entry_ptr.84, ptr @read_eeprom_bytes._entry, ptr @read_eeprom_bytes._entry.87, ptr @read_eeprom_bytes._entry.90, ptr @read_eeprom_bytes._entry.93, ptr @read_eeprom_bytes._entry.96, ptr @read_eeprom_bytes._entry_ptr, ptr @read_eeprom_bytes._entry_ptr.89, ptr @read_eeprom_bytes._entry_ptr.92, ptr @read_eeprom_bytes._entry_ptr.95, ptr @read_eeprom_bytes._entry_ptr.97, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.94], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_get_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_get_mac._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_get_mac._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_get_mac._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_get_mac._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_get_mac._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_gpio_set_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_gpio_set_bits._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_gpio_set_bits._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_gpio_set_bits._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_gpio_set_bits._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_gpio_set_bits._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_gpio_set_bits._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_gpio_set_bits._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_gpio_set_bits._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_gpio_set_bits._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_stream_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_stream_control._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_stream_control._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_stream_control._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_stream_control._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_stream_control._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_stream_control._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_stream_control._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_stream_control._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_stream_control._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_stream_control._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_stream_control._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_stream_control._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_stream_control._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_stream_control._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_eeprom_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_eeprom_bytes._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_eeprom_bytes._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_eeprom_bytes._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_eeprom_bytes._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_get_mac(ptr noundef %mantis) #0 align 64 {
entry:
  %buf.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %mac_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #5
  %0 = call ptr @memset(ptr %mac_addr, i32 0, i32 6)
  %adapter1.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #5
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 8, ptr %buf.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 80, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags.i, align 2
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %2, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %7 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf.i, ptr %buf2.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %8 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 80, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %9 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %10 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 6, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %11 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mac_addr, ptr %buf6.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %adapter1.i, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %do.body65

do.body.i:                                        ; preds = %entry
  %12 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp8.not.i = icmp eq i32 %13, 0
  br i1 %cmp8.not.i, label %do.body.thread, label %do.body

do.body.thread:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #5
  br label %cleanup

do.body:                                          ; preds = %do.body.i
  %num.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %14 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num.i, align 8
  %16 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mac_addr, align 1
  %conv15.i = zext i8 %17 to i32
  %arrayidx16.i = getelementptr inbounds i8, ptr %mac_addr, i32 1
  %18 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %19 to i32
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %15, i32 noundef %call.i, i32 noundef %conv15.i, i32 noundef %conv17.i) #8
  %20 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %mantis, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp1.not = icmp eq i32 %.pr, 0
  br i1 %cmp1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num.i, align 8
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %22, i32 noundef %call.i) #8
  br label %cleanup

do.body65:                                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #5
  %23 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp67.not = icmp eq i32 %24, 0
  br i1 %cmp67.not, label %do.body65.cleanup_crit_edge, label %do.end71

do.body65.cleanup_crit_edge:                      ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end71:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %mac_addr) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %do.body65.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %do.body.thread
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %do.end71 ], [ 0, %do.body65.cleanup_crit_edge ], [ %call.i, %do.body.cleanup_crit_edge ], [ %call.i, %do.body.thread ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mantis_gpio_set_bits(ptr noundef %mantis, i32 noundef %bitpos, i8 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch = icmp ult i32 %1, 4
  br i1 %switch, label %entry.do.end72_crit_edge, label %do.end

entry.do.end72_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end72

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 8
  %conv = zext i8 %value to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %3, i32 noundef %bitpos, i32 noundef %conv) #8
  br label %do.end72

do.end72:                                         ; preds = %do.end, %entry.do.end72_crit_edge
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 8
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 176
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !129
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value)
  %tobool.not = icmp eq i8 %value, 0
  %shl78 = shl nuw i32 1, %bitpos
  %neg = xor i32 %shl78, -1
  %and = and i32 %7, %neg
  %or = or i32 %7, %shl78
  %or.sink = select i1 %tobool.not, i32 %and, i32 %or
  %8 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 38
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.sink, ptr %8, align 8
  %10 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %switch245 = icmp ult i32 %11, 4
  br i1 %switch245, label %do.end72.do.body168_crit_edge, label %do.end92

do.end72.do.body168_crit_edge:                    ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body168

do.end92:                                         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #7
  %num94 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %12 = ptrtoint ptr %num94 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num94, align 8
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %8, align 8
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.18, i32 noundef %13, i32 noundef %15) #8
  br label %do.body168

do.body168:                                       ; preds = %do.end92, %do.end72.do.body168_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %8, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio, align 8
  %add.ptr173 = getelementptr i8, ptr %20, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr173, i32 %18) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio, align 8
  %add.ptr178 = getelementptr i8, ptr %22, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 0) #5, !srcloc !132
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_stream_control(ptr noundef readonly %mantis, i32 noundef %stream_ctl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 8
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !129
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %4 = zext i32 %stream_ctl to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %stream_ctl, label %do.body159 [
    i32 0, label %do.body
    i32 1, label %do.body75
  ]

do.body:                                          ; preds = %entry
  %5 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %switch = icmp ult i32 %6, 4
  br i1 %switch, label %do.body.do.end63_crit_edge, label %do.end

do.body.do.end63_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end63

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %7 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %8) #8
  br label %do.end63

do.end63:                                         ; preds = %do.end, %do.body.do.end63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %and = shl i32 %3, 24
  %9 = and i32 %and, -83886080
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 8
  %add.ptr68 = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %9) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %12 = or i32 %and, 67108864
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 8
  %add.ptr73 = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %12) #5, !srcloc !132
  br label %cleanup

do.body75:                                        ; preds = %entry
  %15 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %switch306 = icmp ult i32 %16, 4
  br i1 %switch306, label %do.body75.do.end146_crit_edge, label %do.end84

do.body75.do.end146_crit_edge:                    ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end146

do.end84:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  %num86 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %17 = ptrtoint ptr %num86 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num86, align 8
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.45, i32 noundef %18) #8
  br label %do.end146

do.end146:                                        ; preds = %do.end84, %do.body75.do.end146_crit_edge
  %or147 = or i32 %3, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or147)
  %20 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio, align 8
  %add.ptr152 = getelementptr i8, ptr %21, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 %19) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %and153 = shl i32 %3, 24
  %22 = and i32 %and153, -83886080
  %23 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio, align 8
  %add.ptr158 = getelementptr i8, ptr %24, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 %22) #5, !srcloc !132
  br label %cleanup

do.body159:                                       ; preds = %entry
  %25 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp161.not = icmp eq i32 %26, 0
  br i1 %cmp161.not, label %do.body159.cleanup_crit_edge, label %do.end168

do.body159.cleanup_crit_edge:                     ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end168:                                        ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #7
  %num170 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %27 = ptrtoint ptr %num170 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num170, align 8
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.45, i32 noundef %28, i32 noundef %stream_ctl) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end168, %do.body159.cleanup_crit_edge, %do.end146, %do.end63
  %retval.0 = phi i32 [ -1, %do.end168 ], [ 0, %do.end146 ], [ 0, %do.end63 ], [ -1, %do.body159.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !104, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/mantis_ioc.c", i32 55, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mantis_get_mac._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mantis_get_mac._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mantis_get_mac._entry.3, !1, !"_entry", i1 false, i1 false}
!8 = !{ptr @mantis_get_mac._entry_ptr.5, !1, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mantis_get_mac._entry.6, !1, !"_entry", i1 false, i1 false}
!11 = !{ptr @mantis_get_mac._entry_ptr.8, !1, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mantis_get_mac._entry.9, !1, !"_entry", i1 false, i1 false}
!14 = !{ptr @mantis_get_mac._entry_ptr.11, !1, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @mantis_get_mac._entry.12, !1, !"_entry", i1 false, i1 false}
!16 = !{ptr @mantis_get_mac._entry_ptr.13, !1, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.15, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/mantis/mantis_ioc.c", i32 60, i32 2}
!19 = !{ptr @mantis_get_mac._entry.14, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mantis_get_mac._entry_ptr.16, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_mantis_get_mac, !22, !"__ksymtab_mantis_get_mac", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/mantis/mantis_ioc.c", i32 64, i32 1}
!23 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/mantis/mantis_ioc.c", i32 71, i32 2}
!25 = !{ptr @.str.18, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mantis_gpio_set_bits._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @mantis_gpio_set_bits._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.20, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mantis_gpio_set_bits._entry.19, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @mantis_gpio_set_bits._entry_ptr.21, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.23, !24, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mantis_gpio_set_bits._entry.22, !24, !"_entry", i1 false, i1 false}
!33 = !{ptr @mantis_gpio_set_bits._entry_ptr.24, !24, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.26, !24, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mantis_gpio_set_bits._entry.25, !24, !"_entry", i1 false, i1 false}
!36 = !{ptr @mantis_gpio_set_bits._entry_ptr.27, !24, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @mantis_gpio_set_bits._entry.28, !24, !"_entry", i1 false, i1 false}
!38 = !{ptr @mantis_gpio_set_bits._entry_ptr.29, !24, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.31, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/mantis/mantis_ioc.c", i32 78, i32 2}
!41 = !{ptr @mantis_gpio_set_bits._entry.30, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mantis_gpio_set_bits._entry_ptr.32, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.34, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mantis_gpio_set_bits._entry.33, !40, !"_entry", i1 false, i1 false}
!45 = !{ptr @mantis_gpio_set_bits._entry_ptr.35, !40, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.37, !40, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mantis_gpio_set_bits._entry.36, !40, !"_entry", i1 false, i1 false}
!48 = !{ptr @mantis_gpio_set_bits._entry_ptr.38, !40, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.40, !40, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mantis_gpio_set_bits._entry.39, !40, !"_entry", i1 false, i1 false}
!51 = !{ptr @mantis_gpio_set_bits._entry_ptr.41, !40, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @mantis_gpio_set_bits._entry.42, !40, !"_entry", i1 false, i1 false}
!53 = !{ptr @mantis_gpio_set_bits._entry_ptr.43, !40, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @__ksymtab_mantis_gpio_set_bits, !55, !"__ksymtab_mantis_gpio_set_bits", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/mantis/mantis_ioc.c", i32 82, i32 1}
!56 = !{ptr @.str.44, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/mantis/mantis_ioc.c", i32 91, i32 3}
!58 = !{ptr @.str.45, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mantis_stream_control._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @mantis_stream_control._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.47, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mantis_stream_control._entry.46, !57, !"_entry", i1 false, i1 false}
!63 = !{ptr @mantis_stream_control._entry_ptr.48, !57, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.50, !57, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mantis_stream_control._entry.49, !57, !"_entry", i1 false, i1 false}
!66 = !{ptr @mantis_stream_control._entry_ptr.51, !57, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.53, !57, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mantis_stream_control._entry.52, !57, !"_entry", i1 false, i1 false}
!69 = !{ptr @mantis_stream_control._entry_ptr.54, !57, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @mantis_stream_control._entry.55, !57, !"_entry", i1 false, i1 false}
!71 = !{ptr @mantis_stream_control._entry_ptr.56, !57, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.58, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/mantis/mantis_ioc.c", i32 99, i32 3}
!74 = !{ptr @mantis_stream_control._entry.57, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mantis_stream_control._entry_ptr.59, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.61, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @mantis_stream_control._entry.60, !73, !"_entry", i1 false, i1 false}
!78 = !{ptr @mantis_stream_control._entry_ptr.62, !73, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.64, !73, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mantis_stream_control._entry.63, !73, !"_entry", i1 false, i1 false}
!81 = !{ptr @mantis_stream_control._entry_ptr.65, !73, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.67, !73, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mantis_stream_control._entry.66, !73, !"_entry", i1 false, i1 false}
!84 = !{ptr @mantis_stream_control._entry_ptr.68, !73, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @mantis_stream_control._entry.69, !73, !"_entry", i1 false, i1 false}
!86 = !{ptr @mantis_stream_control._entry_ptr.70, !73, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.72, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/mantis/mantis_ioc.c", i32 106, i32 3}
!89 = !{ptr @mantis_stream_control._entry.71, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @mantis_stream_control._entry_ptr.73, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.75, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @mantis_stream_control._entry.74, !88, !"_entry", i1 false, i1 false}
!93 = !{ptr @mantis_stream_control._entry_ptr.76, !88, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.78, !88, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @mantis_stream_control._entry.77, !88, !"_entry", i1 false, i1 false}
!96 = !{ptr @mantis_stream_control._entry_ptr.79, !88, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.81, !88, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @mantis_stream_control._entry.80, !88, !"_entry", i1 false, i1 false}
!99 = !{ptr @mantis_stream_control._entry_ptr.82, !88, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @mantis_stream_control._entry.83, !88, !"_entry", i1 false, i1 false}
!101 = !{ptr @mantis_stream_control._entry_ptr.84, !88, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @__ksymtab_mantis_stream_control, !103, !"__ksymtab_mantis_stream_control", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/mantis/mantis_ioc.c", i32 112, i32 1}
!104 = !{ptr @.str.85, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/mantis/mantis_ioc.c", i32 40, i32 3}
!106 = !{ptr @.str.86, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @read_eeprom_bytes._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @read_eeprom_bytes._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.88, !105, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @read_eeprom_bytes._entry.87, !105, !"_entry", i1 false, i1 false}
!111 = !{ptr @read_eeprom_bytes._entry_ptr.89, !105, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.91, !105, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @read_eeprom_bytes._entry.90, !105, !"_entry", i1 false, i1 false}
!114 = !{ptr @read_eeprom_bytes._entry_ptr.92, !105, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.94, !105, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @read_eeprom_bytes._entry.93, !105, !"_entry", i1 false, i1 false}
!117 = !{ptr @read_eeprom_bytes._entry_ptr.95, !105, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @read_eeprom_bytes._entry.96, !105, !"_entry", i1 false, i1 false}
!119 = !{ptr @read_eeprom_bytes._entry_ptr.97, !105, !"_entry_ptr", i1 false, i1 false}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 6824179}
!130 = !{i64 2157812432}
!131 = !{i64 2157823199}
!132 = !{i64 6823761}
!133 = !{i64 2157823794}
!134 = !{i64 2157826159}
!135 = !{i64 2157836580}
!136 = !{i64 2157837206}
!137 = !{i64 2157847834}
!138 = !{i64 2157848460}
