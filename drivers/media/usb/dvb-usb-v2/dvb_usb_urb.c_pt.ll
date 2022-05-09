; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/dvb_usb_urb.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/dvb_usb_urb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dvb_usbv2_generic_rw\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_usbv2_generic_rw\09\09\09\09"
module asm "\09.long\09__crc_dvb_usbv2_generic_rw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_usbv2_generic_rw:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_usbv2_generic_rw\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_usbv2_generic_rw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_usbv2_generic_write\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_usbv2_generic_write\09\09\09\09"
module asm "\09.long\09__crc_dvb_usbv2_generic_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_usbv2_generic_write:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_usbv2_generic_write\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_usbv2_generic_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_usbv2_generic_rw_locked\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_usbv2_generic_rw_locked\09\09\09\09"
module asm "\09.long\09__crc_dvb_usbv2_generic_rw_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_usbv2_generic_rw_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_usbv2_generic_rw_locked\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_usbv2_generic_rw_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_usbv2_generic_write_locked\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_usbv2_generic_write_locked\09\09\09\09"
module asm "\09.long\09__crc_dvb_usbv2_generic_write_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_usbv2_generic_write_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_usbv2_generic_write_locked\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_usbv2_generic_write_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_usb_device = type { ptr, ptr, ptr, i8, ptr, ptr, %struct.dvb_usb_rc, i32, %struct.mutex, %struct.mutex, %struct.i2c_adapter, [2 x %struct.dvb_usb_adapter], ptr, [64 x i8], %struct.delayed_work, ptr }
%struct.dvb_usb_rc = type { ptr, i64, ptr, ptr, i32, i32, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.dvb_usb_adapter = type { ptr, %struct.usb_data_stream, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i8, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.usb_data_stream_properties = type { i8, i8, i8, %union.anon.103 }
%union.anon.103 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_usb_device_properties = type { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_usb_adapter_properties = type { i8, i8, ptr, ptr, %struct.usb_data_stream_properties }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__kstrtab_dvb_usbv2_generic_rw = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_usbv2_generic_rw = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_usbv2_generic_rw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_usbv2_generic_rw to i32), ptr @__kstrtab_dvb_usbv2_generic_rw, ptr @__kstrtabns_dvb_usbv2_generic_rw }, section "___ksymtab+dvb_usbv2_generic_rw", align 4
@__kstrtab_dvb_usbv2_generic_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_usbv2_generic_write = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_usbv2_generic_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_usbv2_generic_write to i32), ptr @__kstrtab_dvb_usbv2_generic_write, ptr @__kstrtabns_dvb_usbv2_generic_write }, section "___ksymtab+dvb_usbv2_generic_write", align 4
@__kstrtab_dvb_usbv2_generic_rw_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_usbv2_generic_rw_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_usbv2_generic_rw_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_usbv2_generic_rw_locked to i32), ptr @__kstrtab_dvb_usbv2_generic_rw_locked, ptr @__kstrtabns_dvb_usbv2_generic_rw_locked }, section "___ksymtab+dvb_usbv2_generic_rw_locked", align 4
@__kstrtab_dvb_usbv2_generic_write_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_usbv2_generic_write_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_usbv2_generic_write_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_usbv2_generic_write_locked to i32), ptr @__kstrtab_dvb_usbv2_generic_write_locked, ptr @__kstrtabns_dvb_usbv2_generic_write_locked }, section "___ksymtab+dvb_usbv2_generic_write_locked", align 4
@dvb_usb_v2_generic_io.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dvb_usb_v2\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvb_usb_v2_generic_io\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/usb/dvb-usb-v2/dvb_usb_urb.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: failed=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@dvb_usb_v2_generic_io.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: >>> %*ph\0A\00", [18 x i8] zeroinitializer }, align 32
@dvb_usb_v2_generic_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 29, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: usb_bulk_msg() failed=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dvb_usb_v2_generic_io._entry_ptr = internal global ptr @dvb_usb_v2_generic_io._entry, section ".printk_index", align 4
@dvb_usb_v2_generic_io._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 34, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: usb_bulk_msg() write length=%d, actual=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_usb_v2_generic_io._entry_ptr.10 = internal global ptr @dvb_usb_v2_generic_io._entry.8, section ".printk_index", align 4
@dvb_usb_v2_generic_io._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 51, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: 2nd usb_bulk_msg() failed=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@dvb_usb_v2_generic_io._entry_ptr.13 = internal global ptr @dvb_usb_v2_generic_io._entry.11, section ".printk_index", align 4
@dvb_usb_v2_generic_io.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: <<< %*ph\0A\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 18, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 22, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 28, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 33, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 49, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [46 x i8] c"../drivers/media/usb/dvb-usb-v2/dvb_usb_urb.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 53, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab_dvb_usbv2_generic_rw, ptr @__ksymtab_dvb_usbv2_generic_rw_locked, ptr @__ksymtab_dvb_usbv2_generic_write, ptr @__ksymtab_dvb_usbv2_generic_write_locked, ptr @dvb_usb_v2_generic_io._entry, ptr @dvb_usb_v2_generic_io._entry.11, ptr @dvb_usb_v2_generic_io._entry.8, ptr @dvb_usb_v2_generic_io._entry_ptr, ptr @dvb_usb_v2_generic_io._entry_ptr.10, ptr @dvb_usb_v2_generic_io._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_v2_generic_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_v2_generic_io._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_v2_generic_io._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usbv2_generic_rw(ptr noundef %d, ptr noundef %wbuf, i16 noundef zeroext %wlen, ptr noundef %rbuf, i16 noundef zeroext %rlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex, i32 noundef 0) #4
  %call = tail call fastcc i32 @dvb_usb_v2_generic_io(ptr noundef %d, ptr noundef %wbuf, i16 noundef zeroext %wlen, ptr noundef %rbuf, i16 noundef zeroext %rlen)
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #4
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_usb_v2_generic_io(ptr nocapture noundef readonly %d, ptr noundef %wbuf, i16 noundef zeroext %wlen, ptr noundef %rbuf, i16 noundef zeroext %rlen) unnamed_addr #0 align 64 {
entry:
  %actual_length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length) #4
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_length, align 4, !annotation !43
  %tobool.not = icmp eq ptr %wbuf, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wlen)
  %tobool1.not = icmp eq i16 %wlen, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.do.body_crit_edge, label %lor.lhs.false2

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false2:                                   ; preds = %entry
  %1 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d, align 8
  %generic_bulk_ctrl_endpoint = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %generic_bulk_ctrl_endpoint to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %generic_bulk_ctrl_endpoint, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %lor.lhs.false2.do.body_crit_edge, label %lor.lhs.false4

lor.lhs.false2.do.body_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %generic_bulk_ctrl_endpoint_response = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %generic_bulk_ctrl_endpoint_response to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %generic_bulk_ctrl_endpoint_response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %lor.lhs.false4.do.body_crit_edge, label %do.body12

lor.lhs.false4.do.body_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false4.do.body_crit_edge, %lor.lhs.false2.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usb_v2_generic_io.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usb_v2_generic_io, %if.then10)) #4
          to label %cleanup [label %if.then10], !srcloc !44

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usb_v2_generic_io.__UNIQUE_ID_ddebug386, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef -22) #4
  br label %cleanup

do.body12:                                        ; preds = %lor.lhs.false4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usb_v2_generic_io.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usb_v2_generic_io, %if.then24)) #4
          to label %do.end29 [label %if.then24], !srcloc !44

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  %udev25 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %9 = ptrtoint ptr %udev25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev25, align 4
  %dev26 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  %conv = zext i16 %wlen to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usb_v2_generic_io.__UNIQUE_ID_ddebug387, ptr noundef %dev26, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %conv, ptr noundef nonnull %wbuf) #4
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %do.body12
  %udev30 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %11 = ptrtoint ptr %udev30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev30, align 4
  %13 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d, align 8
  %generic_bulk_ctrl_endpoint33 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %generic_bulk_ctrl_endpoint33 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %generic_bulk_ctrl_endpoint33, align 4
  %conv34 = zext i8 %16 to i32
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %12, align 8
  %shl.i = shl i32 %18, 8
  %shl1.i = shl nuw nsw i32 %conv34, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %conv36 = zext i16 %wlen to i32
  %call37 = call i32 @usb_bulk_msg(ptr noundef %12, i32 noundef %or, ptr noundef nonnull %wbuf, i32 noundef %conv36, ptr noundef nonnull %actual_length, i32 noundef 2000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %udev30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udev30, align 4
  %dev44 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef %call37) #7
  br label %cleanup

if.end45:                                         ; preds = %do.end29
  %21 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv36)
  %cmp.not = icmp eq i32 %22, %conv36
  br i1 %cmp.not, label %if.end55, label %do.end51

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %udev30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udev30, align 4
  %dev53 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef %conv36, i32 noundef %22) #7
  br label %cleanup

if.end55:                                         ; preds = %if.end45
  %tobool56.not = icmp eq ptr %rbuf, null
  br i1 %tobool56.not, label %if.end55.cleanup_crit_edge, label %land.lhs.true

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end55
  %conv57 = zext i16 %rlen to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rlen)
  %tobool58.not = icmp eq i16 %rlen, 0
  br i1 %tobool58.not, label %land.lhs.true.cleanup_crit_edge, label %if.then59

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then59:                                        ; preds = %land.lhs.true
  %25 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d, align 8
  %generic_bulk_ctrl_delay = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %generic_bulk_ctrl_delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %generic_bulk_ctrl_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool61.not = icmp eq i32 %28, 0
  br i1 %tobool61.not, label %if.then59.if.end67_crit_edge, label %if.then62

if.then59.if.end67_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

if.then62:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %28, 20000
  call void @usleep_range_state(i32 noundef %28, i32 noundef %add, i32 noundef 2) #4
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.then59.if.end67_crit_edge
  %29 = ptrtoint ptr %udev30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udev30, align 4
  %31 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d, align 8
  %generic_bulk_ctrl_endpoint_response71 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %generic_bulk_ctrl_endpoint_response71 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %generic_bulk_ctrl_endpoint_response71, align 1
  %conv72 = zext i8 %34 to i32
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %30, align 8
  %shl.i143 = shl i32 %36, 8
  %shl1.i144 = shl nuw nsw i32 %conv72, 15
  %or.i145 = or i32 %shl1.i144, %shl.i143
  %or75 = or i32 %or.i145, -1073741696
  %call77 = call i32 @usb_bulk_msg(ptr noundef %30, i32 noundef %or75, ptr noundef nonnull %rbuf, i32 noundef %conv57, ptr noundef nonnull %actual_length, i32 noundef 2000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end67.do.body86_crit_edge, label %do.end82

if.end67.do.body86_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body86

do.end82:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %udev30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udev30, align 4
  %dev84 = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev84, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, i32 noundef %call77) #7
  br label %do.body86

do.body86:                                        ; preds = %do.end82, %if.end67.do.body86_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usb_v2_generic_io.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usb_v2_generic_io, %if.then98)) #4
          to label %cleanup [label %if.then98], !srcloc !44

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %udev30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %udev30, align 4
  %dev100 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  %41 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %actual_length, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usb_v2_generic_io.__UNIQUE_ID_ddebug388, ptr noundef %dev100, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef %42, ptr noundef nonnull %rbuf) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %do.body86, %land.lhs.true.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %do.end51, %do.end42, %if.then10, %do.body
  %retval.0 = phi i32 [ %call37, %do.end42 ], [ -5, %do.end51 ], [ -22, %if.then10 ], [ %call77, %if.then98 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ], [ -22, %do.body ], [ %call77, %do.body86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usbv2_generic_write(ptr noundef %d, ptr noundef %buf, i16 noundef zeroext %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex, i32 noundef 0) #4
  %call = tail call fastcc i32 @dvb_usb_v2_generic_io(ptr noundef %d, ptr noundef %buf, i16 noundef zeroext %len, ptr noundef null, i16 noundef zeroext 0)
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usbv2_generic_rw_locked(ptr nocapture noundef readonly %d, ptr noundef %wbuf, i16 noundef zeroext %wlen, ptr noundef %rbuf, i16 noundef zeroext %rlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dvb_usb_v2_generic_io(ptr noundef %d, ptr noundef %wbuf, i16 noundef zeroext %wlen, ptr noundef %rbuf, i16 noundef zeroext %rlen)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usbv2_generic_write_locked(ptr nocapture noundef readonly %d, ptr noundef %buf, i16 noundef zeroext %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dvb_usb_v2_generic_io(ptr noundef %d, ptr noundef %buf, i16 noundef zeroext %len, ptr noundef null, i16 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__ksymtab_dvb_usbv2_generic_rw, !1, !"__ksymtab_dvb_usbv2_generic_rw", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_urb.c", i32 71, i32 1}
!2 = !{ptr @__ksymtab_dvb_usbv2_generic_write, !3, !"__ksymtab_dvb_usbv2_generic_write", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_urb.c", i32 83, i32 1}
!4 = !{ptr @__ksymtab_dvb_usbv2_generic_rw_locked, !5, !"__ksymtab_dvb_usbv2_generic_rw_locked", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_urb.c", i32 90, i32 1}
!6 = !{ptr @__ksymtab_dvb_usbv2_generic_write_locked, !7, !"__ksymtab_dvb_usbv2_generic_write_locked", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_urb.c", i32 96, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_urb.c", i32 18, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @dvb_usb_v2_generic_io.__UNIQUE_ID_ddebug386, !9, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_urb.c", i32 22, i32 2}
!16 = !{ptr @dvb_usb_v2_generic_io.__UNIQUE_ID_ddebug387, !15, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_urb.c", i32 28, i32 3}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @dvb_usb_v2_generic_io._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @dvb_usb_v2_generic_io._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_urb.c", i32 33, i32 3}
!25 = !{ptr @dvb_usb_v2_generic_io._entry.8, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @dvb_usb_v2_generic_io._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_urb.c", i32 49, i32 4}
!29 = !{ptr @dvb_usb_v2_generic_io._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @dvb_usb_v2_generic_io._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_urb.c", i32 53, i32 3}
!33 = !{ptr @dvb_usb_v2_generic_io.__UNIQUE_ID_ddebug388, !32, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{i64 2148948847, i64 2148948852, i64 2148948865, i64 2148948909, i64 2148948943, i64 2148948964}
