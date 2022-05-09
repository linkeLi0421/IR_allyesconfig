; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/dvb-usb-urb.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/dvb-usb-urb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dvb_usb_generic_rw\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_usb_generic_rw\09\09\09\09"
module asm "\09.long\09__crc_dvb_usb_generic_rw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_usb_generic_rw:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_usb_generic_rw\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_usb_generic_rw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_usb_generic_write\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_usb_generic_write\09\09\09\09"
module asm "\09.long\09__crc_dvb_usb_generic_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_usb_generic_write:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_usb_generic_write\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_usb_generic_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.113, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
%struct.dvb_usb_adapter_properties = type { i32, ptr, i32, [3 x %struct.dvb_usb_adapter_fe_properties] }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.usb_data_stream_properties, i32 }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.110 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32 }
%struct.anon.113 = type { i32, %struct.dvb_rc_legacy, %struct.dvb_rc }
%struct.dvb_rc_legacy = type { ptr, i32, ptr, i32 }
%struct.dvb_rc = type { ptr, i64, i64, i32, ptr, ptr, ptr, i32, i8, i32 }
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dvb_usb_adapter = type { ptr, %struct.dvb_usb_adapter_properties, i32, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x %struct.dvb_usb_fe_adapter], i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_usb_fe_adapter = type { ptr, ptr, ptr, %struct.usb_data_stream, i32, i32, ptr }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i32, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@dvb_usb_generic_rw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 21, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013dvb-usb: endpoint for generic control not specified.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dvb_usb_generic_rw\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/dvb-usb/dvb-usb-urb.c\00", [56 x i8] zeroinitializer }, align 32
@dvb_usb_generic_rw._entry_ptr = internal global ptr @dvb_usb_generic_rw._entry, section ".printk_index", align 4
@dvb_usb_debug = external dso_local local_unnamed_addr global i32, align 4
@dvb_usb_generic_rw._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c">>> \00", [27 x i8] zeroinitializer }, align 32
@dvb_usb_generic_rw._entry_ptr.5 = internal global ptr @dvb_usb_generic_rw._entry.3, section ".printk_index", align 4
@dvb_usb_generic_rw._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@dvb_usb_generic_rw._entry_ptr.8 = internal global ptr @dvb_usb_generic_rw._entry.6, section ".printk_index", align 4
@dvb_usb_generic_rw._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@dvb_usb_generic_rw._entry_ptr.11 = internal global ptr @dvb_usb_generic_rw._entry.9, section ".printk_index", align 4
@dvb_usb_generic_rw._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013dvb-usb: bulk message failed: %d (%d/%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@dvb_usb_generic_rw._entry_ptr.14 = internal global ptr @dvb_usb_generic_rw._entry.12, section ".printk_index", align 4
@dvb_usb_generic_rw._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013dvb-usb: recv bulk message failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@dvb_usb_generic_rw._entry_ptr.17 = internal global ptr @dvb_usb_generic_rw._entry.15, section ".printk_index", align 4
@dvb_usb_generic_rw._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"<<< \00", [27 x i8] zeroinitializer }, align 32
@dvb_usb_generic_rw._entry_ptr.20 = internal global ptr @dvb_usb_generic_rw._entry.18, section ".printk_index", align 4
@dvb_usb_generic_rw._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_usb_generic_rw._entry_ptr.22 = internal global ptr @dvb_usb_generic_rw._entry.21, section ".printk_index", align 4
@dvb_usb_generic_rw._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_usb_generic_rw._entry_ptr.24 = internal global ptr @dvb_usb_generic_rw._entry.23, section ".printk_index", align 4
@__kstrtab_dvb_usb_generic_rw = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_usb_generic_rw = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_usb_generic_rw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_usb_generic_rw to i32), ptr @__kstrtab_dvb_usb_generic_rw, ptr @__kstrtabns_dvb_usb_generic_rw }, section "___ksymtab+dvb_usb_generic_rw", align 4
@__kstrtab_dvb_usb_generic_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_usb_generic_write = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_usb_generic_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_usb_generic_write to i32), ptr @__kstrtab_dvb_usb_generic_write, ptr @__kstrtabns_dvb_usb_generic_write }, section "___ksymtab+dvb_usb_generic_write", align 4
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 21, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 28, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 29, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 36, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 52, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 54, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private constant [43 x i8] c"../drivers/media/usb/dvb-usb/dvb-usb-urb.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 55, i32 4 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab_dvb_usb_generic_rw, ptr @__ksymtab_dvb_usb_generic_write, ptr @dvb_usb_generic_rw._entry, ptr @dvb_usb_generic_rw._entry.12, ptr @dvb_usb_generic_rw._entry.15, ptr @dvb_usb_generic_rw._entry.18, ptr @dvb_usb_generic_rw._entry.21, ptr @dvb_usb_generic_rw._entry.23, ptr @dvb_usb_generic_rw._entry.3, ptr @dvb_usb_generic_rw._entry.6, ptr @dvb_usb_generic_rw._entry.9, ptr @dvb_usb_generic_rw._entry_ptr, ptr @dvb_usb_generic_rw._entry_ptr.11, ptr @dvb_usb_generic_rw._entry_ptr.14, ptr @dvb_usb_generic_rw._entry_ptr.17, ptr @dvb_usb_generic_rw._entry_ptr.20, ptr @dvb_usb_generic_rw._entry_ptr.22, ptr @dvb_usb_generic_rw._entry_ptr.24, ptr @dvb_usb_generic_rw._entry_ptr.5, ptr @dvb_usb_generic_rw._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_generic_rw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_generic_rw._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_generic_rw._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_generic_rw._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_generic_rw._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_generic_rw._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_generic_rw._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_generic_rw._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_generic_rw._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %wbuf, i16 noundef zeroext %wlen, ptr noundef %rbuf, i16 noundef zeroext %rlen, i32 noundef %delay_ms) #0 align 64 {
entry:
  %actlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actlen) #5
  %0 = ptrtoint ptr %actlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %actlen, align 4
  %tobool.not = icmp eq ptr %d, null
  %cmp = icmp eq ptr %wbuf, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false1:                                   ; preds = %entry
  %conv = zext i16 %wlen to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wlen)
  %cmp2 = icmp eq i16 %wlen, 0
  br i1 %cmp2, label %lor.lhs.false1.cleanup_crit_edge, label %if.end

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %generic_bulk_ctrl_endpoint = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 15
  %1 = ptrtoint ptr %generic_bulk_ctrl_endpoint to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %generic_bulk_ctrl_endpoint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4 = icmp eq i32 %2, 0
  br i1 %cmp4, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6
  %call8 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body12:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %3 = load i32, ptr @dvb_usb_debug, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body12.do.body26.preheader_crit_edge, label %do.end17

do.body12.do.body26.preheader_crit_edge:          ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26.preheader

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %do.body26.preheader

do.body26.preheader:                              ; preds = %do.end17, %do.body12.do.body26.preheader_crit_edge
  %umax = call i32 @llvm.umax.i32(i32 %conv, i32 1)
  br label %do.body26

do.body26:                                        ; preds = %for.inc.do.body26_crit_edge, %do.body26.preheader
  %loop_.0187 = phi i32 [ %inc, %for.inc.do.body26_crit_edge ], [ 0, %do.body26.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %4 = load i32, ptr @dvb_usb_debug, align 4
  %and27 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.for.inc_crit_edge, label %do.end32

do.body26.for.inc_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr i8, ptr %wbuf, i32 %loop_.0187
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv34 = zext i8 %6 to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv34) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end32, %do.body26.for.inc_crit_edge
  %inc = add nuw nsw i32 %loop_.0187, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.body39, label %for.inc.do.body26_crit_edge

for.inc.do.body26_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26

do.body39:                                        ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %7 = load i32, ptr @dvb_usb_debug, align 4
  %and40 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body39.do.end50_crit_edge, label %do.end45

do.body39.do.end50_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

do.end45:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  br label %do.end50

do.end50:                                         ; preds = %do.end45, %do.body39.do.end50_crit_edge
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %10 = ptrtoint ptr %generic_bulk_ctrl_endpoint to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %generic_bulk_ctrl_endpoint, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 8
  %shl.i = shl i32 %13, 8
  %shl1.i = shl i32 %11, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %call56 = call i32 @usb_bulk_msg(ptr noundef %9, i32 noundef %or, ptr noundef nonnull %wbuf, i32 noundef %conv, ptr noundef nonnull %actlen, i32 noundef 2000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  %14 = ptrtoint ptr %actlen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actlen, align 4
  br i1 %tobool57.not, label %if.end68, label %if.end68.thread

if.end68.thread:                                  ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #7
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call56, i32 noundef %conv, i32 noundef %15) #8
  br label %if.end147

if.end68:                                         ; preds = %do.end50
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv)
  %cmp66.not.not = icmp eq i32 %15, %conv
  br i1 %cmp66.not.not, label %land.lhs.true, label %if.end68.if.end147_crit_edge

if.end68.if.end147_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end147

land.lhs.true:                                    ; preds = %if.end68
  %tobool70.not = icmp eq ptr %rbuf, null
  br i1 %tobool70.not, label %land.lhs.true.if.end147_crit_edge, label %land.lhs.true71

land.lhs.true.if.end147_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end147

land.lhs.true71:                                  ; preds = %land.lhs.true
  %conv72 = zext i16 %rlen to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rlen)
  %tobool73.not = icmp eq i16 %rlen, 0
  br i1 %tobool73.not, label %land.lhs.true71.if.end147_crit_edge, label %if.then74

land.lhs.true71.if.end147_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end147

if.then74:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay_ms)
  %tobool75.not = icmp eq i32 %delay_ms, 0
  br i1 %tobool75.not, label %if.then74.if.end77_crit_edge, label %if.then76

if.then74.if.end77_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.then76:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef %delay_ms) #5
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.then74.if.end77_crit_edge
  %16 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev, align 4
  %generic_bulk_ctrl_endpoint_response = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 16
  %18 = ptrtoint ptr %generic_bulk_ctrl_endpoint_response to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %generic_bulk_ctrl_endpoint_response, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool81.not = icmp eq i32 %19, 0
  br i1 %tobool81.not, label %cond.false, label %if.end77.cond.end_crit_edge

if.end77.cond.end_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %generic_bulk_ctrl_endpoint to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %generic_bulk_ctrl_endpoint, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end77.cond.end_crit_edge
  %cond86 = phi i32 [ %21, %cond.false ], [ %19, %if.end77.cond.end_crit_edge ]
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %17, align 8
  %shl.i181 = shl i32 %23, 8
  %shl1.i182 = shl i32 %cond86, 15
  %or.i183 = or i32 %shl1.i182, %shl.i181
  %or89 = or i32 %or.i183, -1073741696
  %call91 = call i32 @usb_bulk_msg(ptr noundef %17, i32 noundef %or89, ptr noundef nonnull %rbuf, i32 noundef %conv72, ptr noundef nonnull %actlen, i32 noundef 2000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %do.body100, label %do.end96

do.end96:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call91) #8
  br label %if.end147

do.body100:                                       ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %24 = load i32, ptr @dvb_usb_debug, align 4
  %and101 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %do.body100.do.end111_crit_edge, label %do.end106

do.body100.do.end111_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end111

do.end106:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #7
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %do.end111

do.end111:                                        ; preds = %do.end106, %do.body100.do.end111_crit_edge
  %25 = ptrtoint ptr %actlen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %actlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp114189 = icmp sgt i32 %26, 0
  br i1 %cmp114189, label %do.end111.do.body117_crit_edge, label %do.end111.do.body134_crit_edge

do.end111.do.body134_crit_edge:                   ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body134

do.end111.do.body117_crit_edge:                   ; preds = %do.end111
  br label %do.body117

do.body117:                                       ; preds = %for.inc131.do.body117_crit_edge, %do.end111.do.body117_crit_edge
  %loop_112.0190 = phi i32 [ %inc132, %for.inc131.do.body117_crit_edge ], [ 0, %do.end111.do.body117_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %27 = load i32, ptr @dvb_usb_debug, align 4
  %and118 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %do.body117.for.inc131_crit_edge, label %do.end123

do.body117.for.inc131_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc131

do.end123:                                        ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx125 = getelementptr i8, ptr %rbuf, i32 %loop_112.0190
  %28 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx125, align 1
  %conv126 = zext i8 %29 to i32
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv126) #8
  br label %for.inc131

for.inc131:                                       ; preds = %do.end123, %do.body117.for.inc131_crit_edge
  %inc132 = add nuw nsw i32 %loop_112.0190, 1
  %30 = ptrtoint ptr %actlen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %actlen, align 4
  %cmp114 = icmp slt i32 %inc132, %31
  br i1 %cmp114, label %for.inc131.do.body117_crit_edge, label %for.inc131.do.body134_crit_edge

for.inc131.do.body134_crit_edge:                  ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body134

for.inc131.do.body117_crit_edge:                  ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body117

do.body134:                                       ; preds = %for.inc131.do.body134_crit_edge, %do.end111.do.body134_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %32 = load i32, ptr @dvb_usb_debug, align 4
  %and135 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %do.body134.if.end147_crit_edge, label %do.end140

do.body134.if.end147_crit_edge:                   ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end147

do.end140:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #7
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  br label %if.end147

if.end147:                                        ; preds = %do.end140, %do.body134.if.end147_crit_edge, %do.end96, %land.lhs.true71.if.end147_crit_edge, %land.lhs.true.if.end147_crit_edge, %if.end68.if.end147_crit_edge, %if.end68.thread
  %ret.1 = phi i32 [ -1, %if.end68.if.end147_crit_edge ], [ %call91, %do.end96 ], [ 0, %land.lhs.true71.if.end147_crit_edge ], [ 0, %land.lhs.true.if.end147_crit_edge ], [ 0, %do.end140 ], [ 0, %do.body134.if.end147_crit_edge ], [ %call56, %if.end68.thread ]
  call void @mutex_unlock(ptr noundef %usb_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end147, %if.end7.cleanup_crit_edge, %do.end, %lor.lhs.false1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.1, %if.end147 ], [ -22, %lor.lhs.false1.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actlen) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usb_generic_write(ptr noundef %d, ptr noundef %buf, i16 noundef zeroext %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %buf, i16 noundef zeroext %len, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usb_adapter_stream_init(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_frontends = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_frontends, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp59 = icmp sgt i32 %1, 0
  br i1 %cmp59, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %if.end23
  %inc = add nuw nsw i32 %i.060, 1
  %2 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_frontends, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.060 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %stream = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9, i32 %i.060, i32 3
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %stream, align 4
  %arrayidx3 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 1, i32 3, i32 %i.060
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx3, align 4
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %complete = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9, i32 %i.060, i32 3, i32 3
  %11 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dvb_usb_data_complete_204, ptr %complete, align 4
  br label %if.end23

if.else:                                          ; preds = %for.body
  %and11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %complete22 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9, i32 %i.060, i32 3, i32 3
  br i1 %tobool12.not, label %if.else18, label %if.then13

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %complete22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dvb_usb_data_complete_raw, ptr %complete22, align 4
  br label %if.end23

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %complete22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dvb_usb_data_complete, ptr %complete22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else18, %if.then13, %if.then
  %user_priv = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9, i32 %i.060, i32 3, i32 11
  %14 = ptrtoint ptr %user_priv to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %adap, ptr %user_priv, align 4
  %stream33 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 1, i32 3, i32 %i.060, i32 7
  %call = tail call i32 @usb_urb_init(ptr noundef %stream, ptr noundef %stream33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp34 = icmp slt i32 %call, 0
  br i1 %cmp34, label %if.end23.for.end_crit_edge, label %for.cond

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call, %if.end23.for.end_crit_edge ], [ %call, %for.cond.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dvb_usb_data_complete_204(ptr nocapture noundef readonly %stream, ptr noundef %buffer, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %user_priv = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 11
  %0 = ptrtoint ptr %user_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_priv, align 4
  %feedcount = getelementptr inbounds %struct.dvb_usb_adapter, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %feedcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %feedcount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.dvb_usb_adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %demux = getelementptr inbounds %struct.dvb_usb_adapter, ptr %1, i32 0, i32 7
  tail call void @dvb_dmx_swfilter_204(ptr noundef %demux, ptr noundef %buffer, i32 noundef %length) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dvb_usb_data_complete_raw(ptr nocapture noundef readonly %stream, ptr noundef %buffer, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %user_priv = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 11
  %0 = ptrtoint ptr %user_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_priv, align 4
  %feedcount = getelementptr inbounds %struct.dvb_usb_adapter, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %feedcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %feedcount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.dvb_usb_adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %demux = getelementptr inbounds %struct.dvb_usb_adapter, ptr %1, i32 0, i32 7
  tail call void @dvb_dmx_swfilter_raw(ptr noundef %demux, ptr noundef %buffer, i32 noundef %length) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dvb_usb_data_complete(ptr nocapture noundef readonly %stream, ptr noundef %buffer, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %user_priv = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 11
  %0 = ptrtoint ptr %user_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_priv, align 4
  %feedcount = getelementptr inbounds %struct.dvb_usb_adapter, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %feedcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %feedcount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.dvb_usb_adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %demux = getelementptr inbounds %struct.dvb_usb_adapter, ptr %1, i32 0, i32 7
  tail call void @dvb_dmx_swfilter(ptr noundef %demux, ptr noundef %buffer, i32 noundef %length) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usb_adapter_stream_exit(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_frontends = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_frontends, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %stream = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9, i32 %i.05, i32 3
  %call = tail call i32 @usb_urb_exit(ptr noundef %stream) #5
  %inc = add nuw nsw i32 %i.05, 1
  %2 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_frontends, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_204(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_raw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-urb.c", i32 21, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dvb_usb_generic_rw._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dvb_usb_generic_rw._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-urb.c", i32 28, i32 2}
!8 = !{ptr @dvb_usb_generic_rw._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @dvb_usb_generic_rw._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-urb.c", i32 29, i32 2}
!12 = !{ptr @dvb_usb_generic_rw._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @dvb_usb_generic_rw._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dvb_usb_generic_rw._entry.9, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @dvb_usb_generic_rw._entry_ptr.11, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-urb.c", i32 36, i32 3}
!19 = !{ptr @dvb_usb_generic_rw._entry.12, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @dvb_usb_generic_rw._entry_ptr.14, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-urb.c", i32 52, i32 4}
!23 = !{ptr @dvb_usb_generic_rw._entry.15, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @dvb_usb_generic_rw._entry_ptr.17, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-urb.c", i32 54, i32 4}
!27 = !{ptr @dvb_usb_generic_rw._entry.18, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @dvb_usb_generic_rw._entry_ptr.20, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @dvb_usb_generic_rw._entry.21, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-urb.c", i32 55, i32 4}
!31 = !{ptr @dvb_usb_generic_rw._entry_ptr.22, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @dvb_usb_generic_rw._entry.23, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @dvb_usb_generic_rw._entry_ptr.24, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__ksymtab_dvb_usb_generic_rw, !35, !"__ksymtab_dvb_usb_generic_rw", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-urb.c", i32 62, i32 1}
!36 = !{ptr @__ksymtab_dvb_usb_generic_write, !37, !"__ksymtab_dvb_usb_generic_write", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-urb.c", i32 68, i32 1}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
